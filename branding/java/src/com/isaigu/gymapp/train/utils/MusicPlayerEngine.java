package com.isaigu.gymapp.train.utils;

import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;

/**
 * Decode audio file to RMS envelope, play via MediaPlayer, drive sync from playback position.
 */
public final class MusicPlayerEngine {
    public interface Listener {
        void onWaveformLevel(int soundPercent);

        void onPlaybackEnded();

        void onError();
    }

    /** Envelope bucket size (ms) — 10 ms for sharper transients. */
    private static final int WINDOW_MS = 10;
    /** Sync poll interval (ms). */
    private static final int SYNC_POLL_MS = 8;
    /** MediaPlayer output latency compensation (ms). */
    private static final int SYNC_OFFSET_MS = 18;
    private static final int PCM_WINDOW_FRAMES = 128;

    private final Handler handler = new Handler(Looper.getMainLooper());
    private SyncRunnable syncRunnable;
    private MediaPlayer player;
    private Listener listener;
    private int[] envelope;
    private volatile boolean tracking;

    /**
     * Decode file off the UI thread. Envelope buckets are stamped from decoder PTS
     * so playback lookup stays aligned for the whole track (no duration drift).
     */
    public static int[] buildEnvelope(Context context, Uri uri, int sensitivity) throws Exception {
        MediaExtractor extractor = new MediaExtractor();
        extractor.setDataSource(context, uri, null);
        int trackIndex = -1;
        for (int i = 0; i < extractor.getTrackCount(); i++) {
            MediaFormat format = extractor.getTrackFormat(i);
            String mime = format.getString(MediaFormat.KEY_MIME);
            if (mime != null && mime.startsWith("audio/")) {
                trackIndex = i;
                break;
            }
        }
        if (trackIndex < 0) {
            extractor.release();
            return null;
        }
        extractor.selectTrack(trackIndex);
        MediaFormat format = extractor.getTrackFormat(trackIndex);
        int channelCount = readIntFormat(format, MediaFormat.KEY_CHANNEL_COUNT, 1);
        if (channelCount < 1) {
            channelCount = 1;
        }

        String mime = format.getString(MediaFormat.KEY_MIME);
        MediaCodec codec = MediaCodec.createDecoderByType(mime);
        codec.configure(format, null, null, 0);
        codec.start();

        ArrayList<Integer> timeline = new ArrayList<Integer>();
        ArrayList<Double> rawRms = new ArrayList<Double>();
        long framesInWindow = 0L;
        long windowSumSq = 0L;
        long lastPtsUs = 0L;
        MediaCodec.BufferInfo info = new MediaCodec.BufferInfo();
        boolean inputDone = false;
        boolean outputDone = false;

        while (!outputDone) {
            if (!inputDone) {
                int inIndex = codec.dequeueInputBuffer(10000L);
                if (inIndex >= 0) {
                    ByteBuffer buffer = codec.getInputBuffer(inIndex);
                    if (buffer == null) {
                        buffer = codec.getInputBuffers()[inIndex];
                    }
                    int sampleSize = extractor.readSampleData(buffer, 0);
                    if (sampleSize < 0) {
                        codec.queueInputBuffer(inIndex, 0, 0, 0L, MediaCodec.BUFFER_FLAG_END_OF_STREAM);
                        inputDone = true;
                    } else {
                        codec.queueInputBuffer(inIndex, 0, sampleSize, extractor.getSampleTime(), 0);
                        extractor.advance();
                    }
                }
            }

            int outIndex = codec.dequeueOutputBuffer(info, 10000L);
            if (outIndex == MediaCodec.INFO_TRY_AGAIN_LATER) {
                continue;
            }
            if (outIndex == MediaCodec.INFO_OUTPUT_FORMAT_CHANGED
                    || outIndex == MediaCodec.INFO_OUTPUT_BUFFERS_CHANGED) {
                continue;
            }
            if (outIndex >= 0) {
                if (info.size > 0) {
                    lastPtsUs = info.presentationTimeUs;
                }
                ByteBuffer out = codec.getOutputBuffer(outIndex);
                if (out == null) {
                    out = codec.getOutputBuffers()[outIndex];
                }
                if (info.size > 0 && out != null) {
                    out.position(info.offset);
                    out.limit(info.offset + info.size);
                    ByteBuffer slice = out.slice().order(ByteOrder.LITTLE_ENDIAN);
                    int frameBytes = channelCount * 2;
                    while (slice.remaining() >= frameBytes) {
                        long frameSumSq = 0L;
                        for (int ch = 0; ch < channelCount; ch++) {
                            int sample = slice.getShort();
                            frameSumSq += (long) sample * sample;
                        }
                        windowSumSq += frameSumSq;
                        framesInWindow++;
                        if (framesInWindow >= PCM_WINDOW_FRAMES) {
                            double rms = windowRms(windowSumSq, framesInWindow);
                            writeBucket(timeline, rawRms, lastPtsUs, rms);
                            framesInWindow = 0L;
                            windowSumSq = 0L;
                        }
                    }
                }
                codec.releaseOutputBuffer(outIndex, false);
                if ((info.flags & MediaCodec.BUFFER_FLAG_END_OF_STREAM) != 0) {
                    outputDone = true;
                }
            }
        }

        if (framesInWindow > 0L) {
            double rms = windowRms(windowSumSq, framesInWindow);
            writeBucket(timeline, rawRms, lastPtsUs, rms);
        }

        codec.stop();
        codec.release();
        extractor.release();

        if (timeline.isEmpty()) {
            return new int[]{0};
        }
        SoundEnvelopeMapper.fillPercentLevels(timeline, rawRms, sensitivity);
        int[] result = new int[timeline.size()];
        for (int i = 0; i < timeline.size(); i++) {
            result[i] = timeline.get(i);
        }
        return result;
    }

    private static void writeBucket(
            ArrayList<Integer> timeline,
            ArrayList<Double> rawRms,
            long ptsUs,
            double rms) {
        int bucketIndex = ptsToBucketIndex(ptsUs);
        if (bucketIndex < 0) {
            bucketIndex = 0;
        }
        while (timeline.size() <= bucketIndex) {
            timeline.add(0);
            rawRms.add(0.0);
        }
        double existing = rawRms.get(bucketIndex);
        if (rms > existing) {
            rawRms.set(bucketIndex, rms);
        }
    }

    private static int ptsToBucketIndex(long ptsUs) {
        if (ptsUs < 0L) {
            ptsUs = 0L;
        }
        long ptsMs = ptsUs / 1000L;
        return (int) (ptsMs / WINDOW_MS);
    }

    private static int readIntFormat(MediaFormat format, String key, int fallback) {
        if (format == null || !format.containsKey(key)) {
            return fallback;
        }
        try {
            return format.getInteger(key);
        } catch (Throwable ignored) {
            return fallback;
        }
    }

    private static double windowRms(long sumSq, long frames) {
        if (frames <= 0L) {
            return 0.0;
        }
        return Math.sqrt((double) sumSq / frames);
    }

    public void startPlayback(Context context, Uri uri, int[] preparedEnvelope, Listener callback)
            throws Exception {
        release();
        listener = callback;
        envelope = preparedEnvelope;
        if (envelope == null || envelope.length == 0) {
            throw new IllegalStateException("empty envelope");
        }
        player = new MediaPlayer();
        player.setDataSource(context, uri);
        player.setOnCompletionListener(new CompletionHandler(this));
        player.setOnErrorListener(new ErrorHandler(this));
        player.prepare();
        player.start();
        tracking = true;
        syncRunnable = new SyncRunnable(this);
        handler.post(syncRunnable);
    }

    void dispatchLevel(int soundPercent) {
        if (!tracking || player == null || envelope == null || listener == null) {
            return;
        }
        try {
            if (!player.isPlaying()) {
                return;
            }
            listener.onWaveformLevel(soundPercent);
        } catch (Throwable ignored) {
        }
    }

    int resolveEnvelopeLevel(int positionMs) {
        if (envelope == null || envelope.length == 0) {
            return 0;
        }
        int lookupMs = positionMs + SYNC_OFFSET_MS;
        if (lookupMs < 0) {
            lookupMs = 0;
        }
        int index = lookupMs / WINDOW_MS;
        if (index >= envelope.length) {
            return envelope[envelope.length - 1];
        }
        int frac = lookupMs % WINDOW_MS;
        if (frac == 0 || index >= envelope.length - 1) {
            return envelope[index];
        }
        int current = envelope[index];
        int next = envelope[index + 1];
        return current + (next - current) * frac / WINDOW_MS;
    }

    int resolvePlaybackPositionMs() {
        if (player == null) {
            return 0;
        }
        try {
            int pos = player.getCurrentPosition();
            return pos < 0 ? 0 : pos;
        } catch (Throwable ignored) {
            return 0;
        }
    }

    void dispatchEnded() {
        tracking = false;
        if (syncRunnable != null) {
            handler.removeCallbacks(syncRunnable);
        }
        if (listener != null) {
            listener.onPlaybackEnded();
        }
    }

    void dispatchError() {
        tracking = false;
        if (syncRunnable != null) {
            handler.removeCallbacks(syncRunnable);
        }
        if (listener != null) {
            listener.onError();
        }
    }

    public void release() {
        tracking = false;
        if (syncRunnable != null) {
            handler.removeCallbacks(syncRunnable);
            syncRunnable = null;
        }
        if (player != null) {
            try {
                if (player.isPlaying()) {
                    player.stop();
                }
            } catch (Throwable ignored) {
            }
            try {
                player.release();
            } catch (Throwable ignored) {
            }
            player = null;
        }
        envelope = null;
        listener = null;
    }

    static final class SyncRunnable implements Runnable {
        private final MusicPlayerEngine engine;

        SyncRunnable(MusicPlayerEngine engine) {
            this.engine = engine;
        }

        @Override
        public void run() {
            MusicPlayerEngine target = engine;
            if (!target.tracking || target.player == null || target.envelope == null) {
                return;
            }
            try {
                int positionMs = target.resolvePlaybackPositionMs();
                target.dispatchLevel(target.resolveEnvelopeLevel(positionMs));
            } catch (Throwable ignored) {
            }
            if (target.tracking) {
                target.handler.postDelayed(this, SYNC_POLL_MS);
            }
        }
    }

    static final class CompletionHandler implements MediaPlayer.OnCompletionListener {
        private final MusicPlayerEngine engine;

        CompletionHandler(MusicPlayerEngine engine) {
            this.engine = engine;
        }

        @Override
        public void onCompletion(MediaPlayer mp) {
            engine.dispatchEnded();
        }
    }

    static final class ErrorHandler implements MediaPlayer.OnErrorListener {
        private final MusicPlayerEngine engine;

        ErrorHandler(MusicPlayerEngine engine) {
            this.engine = engine;
        }

        @Override
        public boolean onError(MediaPlayer mp, int what, int extra) {
            engine.dispatchError();
            return true;
        }
    }
}
