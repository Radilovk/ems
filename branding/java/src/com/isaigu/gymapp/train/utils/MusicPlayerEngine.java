package com.isaigu.gymapp.train.utils;

import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaPlayer;
import android.media.audiofx.Visualizer;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;

/**
 * Decode audio file to RMS envelope, play via MediaPlayer.
 * Sync: Visualizer on output session (primary) or position+computed latency (fallback).
 */
public final class MusicPlayerEngine {
    public interface Listener {
        /** MediaPlayer buffered and playback has started. */
        void onPlaybackReady();

        void onWaveformLevel(int soundPercent);

        void onPlaybackEnded();

        void onError();
    }

    public static final class EnvelopeResult {
        public final int[] levels;
        public final double referencePeakRms;

        EnvelopeResult(int[] levels, double referencePeakRms) {
            this.levels = levels;
            this.referencePeakRms = referencePeakRms;
        }
    }

    /** Envelope bucket size (ms) for fallback position lookup. */
    private static final int WINDOW_MS = 20;
    /** Fallback poll interval when Visualizer is unavailable. */
    private static final int SYNC_POLL_MS = 16;
    private static final int PCM_WINDOW_FRAMES = 256;

    private final Handler handler = new Handler(Looper.getMainLooper());
    private SyncRunnable syncRunnable;
    private MediaPlayer player;
    private Visualizer visualizer;
    private MusicUriSource uriSource;
    private Listener listener;
    private int[] envelope;
    private int sensitivity = 20;
    private double referencePeakRms = 80.0;
    private int playbackOffsetMs = 40;
    private volatile boolean tracking;
    private volatile boolean visualizerActive;
    private volatile boolean visualizerAllowed;

    public static EnvelopeResult buildEnvelope(Context context, Uri uri, int sensitivity)
            throws Exception {
        MusicUriSource source = MusicUriSource.open(context, uri);
        try {
            MediaExtractor extractor = new MediaExtractor();
            source.setExtractorDataSource(extractor, context, uri);
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
            int sampleRate = readIntFormat(format, MediaFormat.KEY_SAMPLE_RATE, 44100);
            if (sampleRate < 8000) {
                sampleRate = 44100;
            }

            String mime = format.getString(MediaFormat.KEY_MIME);
            MediaCodec codec = MediaCodec.createDecoderByType(mime);
            codec.configure(format, null, null, 0);
            codec.start();

            ArrayList<Integer> timeline = new ArrayList<Integer>();
            ArrayList<Double> rawRms = new ArrayList<Double>();
            long framesInWindow = 0L;
            long windowSumSq = 0L;
            long decodedFrames = 0L;
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
                            codec.queueInputBuffer(
                                    inIndex, 0, 0, 0L, MediaCodec.BUFFER_FLAG_END_OF_STREAM);
                            inputDone = true;
                        } else {
                            codec.queueInputBuffer(
                                    inIndex, 0, sampleSize, extractor.getSampleTime(), 0);
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
                            windowSumSq += frameSumSq;
                            framesInWindow++;
                            decodedFrames++;
                            if (framesInWindow >= PCM_WINDOW_FRAMES) {
                                long ptsUs = (decodedFrames * 1000000L) / sampleRate;
                                double rms = windowRms(windowSumSq, framesInWindow);
                                writeBucket(timeline, rawRms, ptsUs, rms);
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
                long ptsUs = (decodedFrames * 1000000L) / sampleRate;
                double rms = windowRms(windowSumSq, framesInWindow);
                writeBucket(timeline, rawRms, ptsUs, rms);
            }

            codec.stop();
            codec.release();
            extractor.release();

            if (timeline.isEmpty()) {
                return new EnvelopeResult(new int[]{0}, 80.0);
            }

            double peak = SoundEnvelopeMapper.percentilePeak(rawRms, 96.0);
            SoundEnvelopeMapper.fillPercentLevels(timeline, rawRms, sensitivity);
            int[] result = new int[timeline.size()];
            for (int i = 0; i < timeline.size(); i++) {
                result[i] = timeline.get(i);
            }
            return new EnvelopeResult(result, peak);
        } finally {
            source.close();
        }
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

    public void setMappingParams(int sensitivityValue, double peakRms) {
        sensitivity = sensitivityValue;
        if (peakRms > 0.0) {
            referencePeakRms = peakRms;
        }
    }

    public void setVisualizerAllowed(boolean allowed) {
        visualizerAllowed = allowed;
    }

    public boolean isVisualizerActive() {
        return visualizerActive;
    }

    /** Keep 4-arg signature to avoid dex register bugs on older ART. */
    public void startPlayback(
            Context context,
            Uri uri,
            int[] preparedEnvelope,
            Listener callback) throws Exception {
        release();
        listener = callback;
        envelope = preparedEnvelope;
        playbackOffsetMs = AudioOutputLatency.estimatePlaybackOffsetMs(context);
        if (envelope == null || envelope.length == 0) {
            throw new IllegalStateException("empty envelope");
        }

        uriSource = MusicUriSource.open(context, uri);
        player = new MediaPlayer();
        uriSource.setPlayerDataSource(player, context, uri);
        player.setOnCompletionListener(new CompletionHandler(this));
        player.setOnErrorListener(new ErrorHandler(this));
        player.setOnPreparedListener(new PreparedHandler(this));
        player.prepareAsync();
    }

    void onPrepared(MediaPlayer mediaPlayer) {
        if (!tracking && mediaPlayer != null) {
            try {
                mediaPlayer.start();
                tracking = true;
                if (visualizerAllowed) {
                    visualizerActive = attachVisualizer(mediaPlayer);
                }
                if (!visualizerActive) {
                    syncRunnable = new SyncRunnable(this);
                    handler.post(syncRunnable);
                }
                if (listener != null) {
                    listener.onPlaybackReady();
                }
            } catch (Throwable t) {
                MusicDiagLog.logError("player_start", t);
                dispatchError();
            }
        }
    }

    private boolean attachVisualizer(MediaPlayer mediaPlayer) {
        if (mediaPlayer == null) {
            return false;
        }
        try {
            int sessionId = mediaPlayer.getAudioSessionId();
            if (sessionId <= 0) {
                return false;
            }
            int[] range = Visualizer.getCaptureSizeRange();
            Visualizer viz = new Visualizer(sessionId);
            viz.setCaptureSize(range[1]);
            int captureRate = Visualizer.getMaxCaptureRate();
            if (captureRate <= 0) {
                captureRate = 20000;
            } else {
                captureRate = captureRate / 2;
            }
            viz.setDataCaptureListener(new WaveformCapture(this), captureRate, true, false);
            viz.setEnabled(true);
            visualizer = viz;
            MusicDiagLog.log("player_viz", "session=" + sessionId + " rate=" + captureRate);
            return true;
        } catch (Throwable t) {
            MusicDiagLog.logError("player_viz", t);
            releaseVisualizer();
            return false;
        }
    }

    void onVisualizerWaveform(byte[] waveform) {
        if (!tracking || listener == null || !isPlaying()) {
            return;
        }
        listener.onWaveformLevel(waveformToPercent(waveform));
    }

    private int waveformToPercent(byte[] waveform) {
        if (waveform == null || waveform.length == 0) {
            return 0;
        }
        long sumSq = 0L;
        for (int i = 0; i < waveform.length; i++) {
            int sample = waveform[i] + 128;
            sumSq += (long) sample * sample;
        }
        double rms = Math.sqrt((double) sumSq / waveform.length);
        return SoundEnvelopeMapper.rmsToPercent(rms, referencePeakRms, sensitivity);
    }

    private boolean isPlaying() {
        if (player == null) {
            return false;
        }
        try {
            return player.isPlaying();
        } catch (Throwable ignored) {
            return false;
        }
    }

    void dispatchLevel(int index) {
        if (!tracking || player == null || envelope == null || listener == null || visualizerActive) {
            return;
        }
        try {
            if (!isPlaying()) {
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
        int lookupMs = positionMs + playbackOffsetMs;
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
        try {
            int pos = player.getCurrentPosition();
            return pos < 0 ? 0 : pos;
        } catch (Throwable ignored) {
            return 0;
        }
    }

    void dispatchEnded() {
        tracking = false;
        releaseVisualizer();
        if (syncRunnable != null) {
            handler.removeCallbacks(syncRunnable);
        }
        if (listener != null) {
            listener.onPlaybackEnded();
        }
    }

    void dispatchError() {
        tracking = false;
        releaseVisualizer();
        if (syncRunnable != null) {
            handler.removeCallbacks(syncRunnable);
        }
        if (listener != null) {
            listener.onError();
        }
    }

    private void releaseVisualizer() {
        visualizerActive = false;
        Visualizer viz = visualizer;
        visualizer = null;
        if (viz == null) {
            return;
        }
        try {
            viz.setEnabled(false);
        } catch (Throwable ignored) {
        }
        try {
            viz.release();
        } catch (Throwable ignored) {
        }
    }

    public void release() {
        tracking = false;
        releaseVisualizer();
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
        if (uriSource != null) {
            uriSource.close();
            uriSource = null;
        }
        envelope = null;
        listener = null;
    }

    static final class WaveformCapture implements Visualizer.OnDataCaptureListener {
        private final MusicPlayerEngine engine;

        WaveformCapture(MusicPlayerEngine engine) {
            this.engine = engine;
        }

        @Override
        public void onWaveFormDataCapture(Visualizer visualizer, byte[] waveform, int samplingRate) {
            engine.onVisualizerWaveform(waveform);
        }

        @Override
        public void onFftDataCapture(Visualizer visualizer, byte[] fft, int samplingRate) {
        }
    }

    static final class PreparedHandler implements MediaPlayer.OnPreparedListener {
        private final MusicPlayerEngine engine;

        PreparedHandler(MusicPlayerEngine engine) {
            this.engine = engine;
        }

        @Override
        public void onPrepared(MediaPlayer mp) {
            engine.onPrepared(mp);
        }
    }

    static final class SyncRunnable implements Runnable {
        private final MusicPlayerEngine engine;

        SyncRunnable(MusicPlayerEngine engine) {
            this.engine = engine;
        }

        @Override
        public void run() {
            MusicPlayerEngine target = engine;
            if (!target.tracking || target.player == null || target.envelope == null
                    || target.visualizerActive) {
                return;
            }
            try {
                int positionMs = target.resolvePlaybackPositionMs();
                target.dispatchLevel(target.resolveEnvelopeIndex(positionMs));
            } catch (Throwable ignored) {
            }
            if (target.tracking && !target.visualizerActive) {
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
            MusicDiagLog.log("player_error", "what=" + what + " extra=" + extra);
            engine.dispatchError();
            return true;
        }
    }
}
