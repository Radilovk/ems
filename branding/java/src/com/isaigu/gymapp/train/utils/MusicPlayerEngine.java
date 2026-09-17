package com.isaigu.gymapp.train.utils;

import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;

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

    /** Envelope bucket size and sync poll interval (ms). */
    private static final int WINDOW_MS = 20;
    /** Small fixed output latency compensation for MediaPlayer. */
    private static final int SYNC_OFFSET_MS = 50;
    private static final int PCM_WINDOW_FRAMES = 256;

    private final Handler handler = new Handler(Looper.getMainLooper());
    private SyncRunnable syncRunnable;
    private MediaPlayer player;
    private Listener listener;
    private int[] envelope;
    private long syncAnchorWallMs;
    private volatile boolean tracking;

    /**
     * Decode file off the UI thread. Envelope buckets are stamped from decoder PTS
     * so playback lookup stays aligned for the whole track (no duration drift).
     */
    public static int[] buildEnvelope(Context context, Uri uri) throws Exception {
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
                            int level = frameRmsToLevel(windowSumSq, framesInWindow);
                            writeBucket(timeline, lastPtsUs, level);
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
            int level = frameRmsToLevel(windowSumSq, framesInWindow);
            writeBucket(timeline, lastPtsUs, level);
        }

        codec.stop();
        codec.release();
        extractor.release();

        if (timeline.isEmpty()) {
            return new int[]{0};
        }
        fillTimelineGaps(timeline);
        int[] result = new int[timeline.size()];
        for (int i = 0; i < timeline.size(); i++) {
            result[i] = timeline.get(i);
        }
        return result;
    }

    private static void writeBucket(ArrayList<Integer> timeline, long ptsUs, int level) {
        int bucketIndex = ptsToBucketIndex(ptsUs);
        if (bucketIndex < 0) {
            bucketIndex = 0;
        }
        while (timeline.size() <= bucketIndex) {
            timeline.add(0);
        }
        int existing = timeline.get(bucketIndex);
        if (level > existing) {
            timeline.set(bucketIndex, level);
        }
    }

    private static void fillTimelineGaps(ArrayList<Integer> timeline) {
        int last = 0;
        for (int i = 0; i < timeline.size(); i++) {
            int value = timeline.get(i);
            if (value > 0) {
                last = value;
            } else if (last > 0) {
                timeline.set(i, last);
            }
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

    private static int frameRmsToLevel(long sumSq, long frames) {
        if (frames <= 0L) {
            return 0;
        }
        double rms = Math.sqrt((double) sumSq / frames);
        int level = (int) Math.round((rms / 8000.0) * 100.0);
        if (level < 0) {
            return 0;
        }
        if (level > 100) {
            return 100;
        }
        return level;
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
        syncAnchorWallMs = SystemClock.elapsedRealtime();
        tracking = true;
        syncRunnable = new SyncRunnable(this);
        handler.post(syncRunnable);
    }

    void dispatchLevel(int index) {
        if (!tracking || player == null || envelope == null || listener == null) {
            return;
        }
        try {
            if (!player.isPlaying()) {
                return;
            }
            if (index < 0) {
                index = 0;
            }
            if (index >= envelope.length) {
                index = envelope.length - 1;
            }
            listener.onWaveformLevel(envelope[index]);
        } catch (Throwable ignored) {
        }
    }

    int resolveEnvelopeIndex(int positionMs) {
        if (envelope == null || envelope.length == 0) {
            return 0;
        }
        int lookupMs = positionMs + SYNC_OFFSET_MS;
        if (lookupMs < 0) {
            lookupMs = 0;
        }
        int index = lookupMs / WINDOW_MS;
        if (index >= envelope.length) {
            return envelope.length - 1;
        }
        return index;
    }

    int resolvePlaybackPositionMs() {
        if (player == null) {
            return 0;
        }
        int playerPos = 0;
        try {
            playerPos = player.getCurrentPosition();
        } catch (Throwable ignored) {
        }
        long wallPos = SystemClock.elapsedRealtime() - syncAnchorWallMs;
        if (wallPos < 0L) {
            wallPos = 0L;
        }
        int blended = (int) ((wallPos + playerPos) / 2L);
        if (blended < 0) {
            return 0;
        }
        return blended;
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
        syncAnchorWallMs = 0L;
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
                target.dispatchLevel(target.resolveEnvelopeIndex(positionMs));
            } catch (Throwable ignored) {
            }
            if (target.tracking) {
                target.handler.postDelayed(this, WINDOW_MS);
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
