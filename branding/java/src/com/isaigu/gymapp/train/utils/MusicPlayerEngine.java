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

    private static final int WINDOW_MS = 20;

    private final Handler handler = new Handler(Looper.getMainLooper());
    private SyncRunnable syncRunnable;
    private MediaPlayer player;
    private Listener listener;
    private int[] envelope;
    private volatile boolean tracking;

    public void start(Context context, Uri uri, Listener callback) throws Exception {
        release();
        listener = callback;
        envelope = buildEnvelope(context, uri);
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

    private static int[] buildEnvelope(Context context, Uri uri) throws Exception {
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
        String mime = format.getString(MediaFormat.KEY_MIME);
        MediaCodec codec = MediaCodec.createDecoderByType(mime);
        codec.configure(format, null, null, 0);
        codec.start();

        ArrayList<Integer> levels = new ArrayList<Integer>();
        short[] window = new short[512];
        int windowFill = 0;
        MediaCodec.BufferInfo info = new MediaCodec.BufferInfo();
        boolean inputDone = false;
        boolean outputDone = false;

        while (!outputDone) {
            if (!inputDone) {
                int inIndex = codec.dequeueInputBuffer(5000L);
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

            int outIndex = codec.dequeueOutputBuffer(info, 5000L);
            if (outIndex >= 0) {
                ByteBuffer out = codec.getOutputBuffer(outIndex);
                if (out == null) {
                    out = codec.getOutputBuffers()[outIndex];
                }
                if (info.size > 0 && out != null) {
                    out.position(info.offset);
                    out.limit(info.offset + info.size);
                    ByteBuffer slice = out.slice().order(ByteOrder.LITTLE_ENDIAN);
                    while (slice.remaining() >= 2) {
                        window[windowFill++] = slice.getShort();
                        if (windowFill >= window.length) {
                            levels.add(MusicSync.waveformToSoundPercent(window, windowFill));
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
            levels.add(MusicSync.waveformToSoundPercent(window, windowFill));
        }

        codec.stop();
        codec.release();
        extractor.release();

        if (levels.isEmpty()) {
            return new int[]{0};
        }
        int[] result = new int[levels.size()];
        for (int i = 0; i < levels.size(); i++) {
            result[i] = levels.get(i);
        }
        return result;
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
                int positionMs = target.player.getCurrentPosition();
                target.dispatchLevel(positionMs / WINDOW_MS);
            } catch (Throwable ignored) {
            }
            if (target.tracking) {
                target.handler.postDelayed(this, 16L);
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
