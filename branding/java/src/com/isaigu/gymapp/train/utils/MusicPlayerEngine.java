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

    /** Envelope bucket size and sync poll interval (ms). */
    private static final int WINDOW_MS = 20;
    /** MediaPlayer position often lags audible output; compensate lookup. */
    private static final int SYNC_OFFSET_MS = 90;
    private static final int PCM_WINDOW_SAMPLES = 512;

    private final Handler handler = new Handler(Looper.getMainLooper());
    private SyncRunnable syncRunnable;
    private MediaPlayer player;
    private Listener listener;
    private int[] envelope;
    private int durationMs;
    private volatile boolean tracking;

    /** Decode file off the UI thread; call {@link #startPlayback} on the main thread. */
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
        int sampleRate = readIntFormat(format, MediaFormat.KEY_SAMPLE_RATE, 44100);
        int channelCount = readIntFormat(format, MediaFormat.KEY_CHANNEL_COUNT, 1);
        if (channelCount < 1) {
            channelCount = 1;
        }
        long durationUs = readLongFormat(format, MediaFormat.KEY_DURATION, 0L);

        String mime = format.getString(MediaFormat.KEY_MIME);
        MediaCodec codec = MediaCodec.createDecoderByType(mime);
        codec.configure(format, null, null, 0);
        codec.start();

        ArrayList<Integer> levels = new ArrayList<Integer>();
        short[] window = new short[PCM_WINDOW_SAMPLES];
        int windowFill = 0;
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
                        window[windowFill++] = (short) Math.sqrt((double) frameSumSq / channelCount);
                        if (windowFill >= window.length) {
                            levels.add(sampleWindowToLevel(window, windowFill));
                            windowFill = 0;
                        }
                    }
                }
                codec.releaseOutputBuffer(outIndex, false);
                if ((info.flags & MediaCodec.BUFFER_FLAG_END_OF_STREAM) != 0) {
                    outputDone = true;
                }
            }
        }

        if (windowFill > 0) {
            levels.add(sampleWindowToLevel(window, windowFill));
        }

        codec.stop();
        codec.release();
        extractor.release();

        return resampleToTimeline(levels, sampleRate, channelCount, durationUs);
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

    private static long readLongFormat(MediaFormat format, String key, long fallback) {
        if (format == null || !format.containsKey(key)) {
            return fallback;
        }
        try {
            return format.getLong(key);
        } catch (Throwable ignored) {
            return fallback;
        }
    }

    /** Map decoded PCM windows onto a fixed 20 ms timeline for playback lookup. */
    private static int[] resampleToTimeline(
            ArrayList<Integer> levels, int sampleRate, int channelCount, long durationUs) {
        if (levels == null || levels.isEmpty()) {
            return new int[]{0};
        }
        long durationMs = durationUs > 0L ? durationUs / 1000L : 0L;
        if (durationMs <= 0L) {
            double msPerRaw = (PCM_WINDOW_SAMPLES * 1000.0) / (sampleRate * Math.max(1, channelCount));
            durationMs = (long) Math.ceil(levels.size() * msPerRaw);
        }
        int buckets = (int) (durationMs / WINDOW_MS) + 1;
        if (buckets < 1) {
            buckets = 1;
        }
        int[] result = new int[buckets];
        double msPerRaw = durationMs / (double) levels.size();
        if (msPerRaw < 1.0) {
            msPerRaw = 1.0;
        }
        for (int i = 0; i < buckets; i++) {
            int ms = i * WINDOW_MS;
            int srcIdx = (int) (ms / msPerRaw);
            if (srcIdx >= levels.size()) {
                srcIdx = levels.size() - 1;
            }
            result[i] = levels.get(srcIdx);
        }
        return result;
    }

    private static int sampleWindowToLevel(short[] samples, int count) {
        if (samples == null || count <= 0) {
            return 0;
        }
        long sumSq = 0L;
        for (int i = 0; i < count; i++) {
            int sample = samples[i];
            sumSq += (long) sample * sample;
        }
        double rms = Math.sqrt((double) sumSq / count);
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
        durationMs = player.getDuration();
        if (durationMs <= 0) {
            durationMs = envelope.length * WINDOW_MS;
        }
        player.start();
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
        int duration = durationMs;
        if (duration <= 0 && player != null) {
            duration = player.getDuration();
        }
        if (duration > 0) {
            int maxIndex = envelope.length - 1;
            long index = (long) lookupMs * maxIndex / duration;
            if (index < 0L) {
                return 0;
            }
            if (index > maxIndex) {
                return maxIndex;
            }
            return (int) index;
        }
        return lookupMs / WINDOW_MS;
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
        durationMs = 0;
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
                int positionMs = target.player.getCurrentPosition();
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
