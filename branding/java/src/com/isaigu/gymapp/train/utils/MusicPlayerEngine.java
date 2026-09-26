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
import java.util.Arrays;

/**
 * Decode audio file to loudness + rhythm envelopes, play via MediaPlayer, drive sync from
 * playback position.
 */
public final class MusicPlayerEngine {
    public interface Listener {
        void onWaveformLevel(int soundPercent);

        /** Bass (0) … treble (100) balance of the same moment, called right before the level. */
        void onTone(int tonePercent);

        void onPlaybackEnded();

        void onError();
    }

    /** Envelope bucket size (ms). */
    private static final int WINDOW_MS = 20;
    /** Sync poll interval (ms). */
    private static final int SYNC_POLL_MS = 16;

    private final Handler handler = new Handler(Looper.getMainLooper());
    private SyncRunnable syncRunnable;
    private MediaPlayer player;
    private Listener listener;
    private Envelope envelope;
    private volatile boolean tracking;

    /**
     * Pre-analysed track: raw loudness per bucket + rhythm (onset) curve 0..1 + tone 0..1
     * (0 = bass-heavy, 1 = treble-heavy, spread over the track's own range).
     * {@code toneSpanDb} / {@code toneMedianDb} keep the absolute treble-minus-bass
     * balance, because {@code tone} itself is stretched to this track's own range.
     */
    public static final class Envelope {
        final float[] loudRms;
        final float[] rhythm;
        final float[] tone;
        final int length;
        final double peakRms;
        /** 90th − 10th percentile of treble-minus-bass, dB. Near 0 = the tone barely moves. */
        final double toneSpanDb;
        /** Median treble-minus-bass, dB. Negative = the track is bassy. */
        final double toneMedianDb;

        Envelope(float[] loudRms, float[] rhythm, float[] tone, int length, double peakRms,
                double toneSpanDb, double toneMedianDb) {
            this.loudRms = loudRms;
            this.rhythm = rhythm;
            this.tone = tone;
            this.length = length;
            this.peakRms = peakRms;
            this.toneSpanDb = toneSpanDb;
            this.toneMedianDb = toneMedianDb;
        }
    }

    /**
     * Decode file off the UI thread. Every PCM frame is stamped with its own time
     * (buffer PTS + frame offset), so 20 ms buckets are dense and aligned for the whole
     * track. Loudness stays raw so sensitivity can be changed live during playback.
     */
    public static Envelope buildEnvelope(Context context, Uri uri) throws Exception {
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
        int channelCount = Math.max(1, readIntFormat(format, MediaFormat.KEY_CHANNEL_COUNT, 1));
        int sampleRate = readIntFormat(format, MediaFormat.KEY_SAMPLE_RATE, 44100);

        String mime = format.getString(MediaFormat.KEY_MIME);
        MediaCodec codec = MediaCodec.createDecoderByType(mime);
        codec.configure(format, null, null, 0);
        codec.start();

        EnvelopeBuilder builder = new EnvelopeBuilder(sampleRate);
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
            if (outIndex == MediaCodec.INFO_TRY_AGAIN_LATER
                    || outIndex == MediaCodec.INFO_OUTPUT_BUFFERS_CHANGED) {
                continue;
            }
            if (outIndex == MediaCodec.INFO_OUTPUT_FORMAT_CHANGED) {
                MediaFormat outFormat = codec.getOutputFormat();
                channelCount = Math.max(1,
                        readIntFormat(outFormat, MediaFormat.KEY_CHANNEL_COUNT, channelCount));
                sampleRate = readIntFormat(outFormat, MediaFormat.KEY_SAMPLE_RATE, sampleRate);
                builder.setSampleRate(sampleRate);
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
                    long frameIndex = 0L;
                    while (slice.remaining() >= frameBytes) {
                        int sum = 0;
                        for (int ch = 0; ch < channelCount; ch++) {
                            sum += slice.getShort();
                        }
                        builder.addFrame(info.presentationTimeUs, frameIndex++, sum / channelCount);
                    }
                }
                codec.releaseOutputBuffer(outIndex, false);
                if ((info.flags & MediaCodec.BUFFER_FLAG_END_OF_STREAM) != 0) {
                    outputDone = true;
                }
            }
        }

        codec.stop();
        codec.release();
        extractor.release();
        return builder.finish();
    }

    /**
     * Streams mono PCM into 20 ms buckets: full-band RMS and bass (~150 Hz, 2-pole) energy.
     * {@link #finish()} turns bass/full-band energy jumps into a decaying onset curve.
     */
    static final class EnvelopeBuilder {
        private static final double BASS_CUTOFF_HZ = 150.0;
        /** Above this is "treble" (vocals, cymbals, hi-hats) for the tone curve. */
        private static final double TREBLE_CUTOFF_HZ = 2500.0;
        /** Tone smoothing: centred over ±3 buckets (±60 ms) — no delay, the track is pre-analysed. */
        private static final int TONE_HALF_WINDOW = 3;
        /** Slow reference for onset detection: EMA per bucket (~90 ms time constant). */
        private static final double ONSET_SLOW_ALPHA = 0.2;
        private static final double BAND_BASS = 0.45;
        private static final double BAND_MID = 0.40;
        private static final double BAND_HIGH = 0.15;
        /** Strong-hit memory per 20 ms bucket (~1 s to adapt to a new part of the song). */
        private static final double STRONG_DECAY = 0.97;
        /** Onsets below this fraction of the track's strong hits are ignored. */
        private static final float ONSET_GATE = 0.15f;
        /** Hit decay per 20 ms bucket, so a beat has body instead of a 20 ms spike. */
        private static final float ONSET_DECAY = 0.72f;

        private int sampleRate;
        private double bassAlpha;
        private double trebleAlpha;
        private double lp1;
        private double lp2;
        private double lpT;
        private double sumTreble;
        private double sumMid;
        private float[] treble = new float[4096];
        private float[] mid = new float[4096];
        /** Absolute treble-minus-bass spread and centre, filled by {@link #toneCurve}. */
        private double toneSpanDb;
        private double toneMedianDb;
        private int bucket = -1;
        private double sumSq;
        private double sumBass;
        private int frames;
        private float[] loud = new float[4096];
        private float[] bass = new float[4096];
        private int count;

        EnvelopeBuilder(int sampleRate) {
            setSampleRate(sampleRate);
        }

        void setSampleRate(int rate) {
            sampleRate = rate >= 8000 ? rate : 44100;
            bassAlpha = 1.0 - Math.exp(-2.0 * Math.PI * BASS_CUTOFF_HZ / sampleRate);
            trebleAlpha = 1.0 - Math.exp(-2.0 * Math.PI * TREBLE_CUTOFF_HZ / sampleRate);
        }

        void addFrame(long bufferPtsUs, long frameIndex, int sample) {
            long ptsUs = bufferPtsUs + frameIndex * 1000000L / sampleRate;
            int index = ptsUs <= 0L ? 0 : (int) (ptsUs / (WINDOW_MS * 1000L));
            if (index != bucket) {
                flush();
                bucket = index;
            }
            lp1 += bassAlpha * (sample - lp1);
            lp2 += bassAlpha * (lp1 - lp2);
            sumSq += (double) sample * sample;
            sumBass += lp2 * lp2;
            lpT += trebleAlpha * (sample - lpT);
            double high = sample - lpT;
            sumTreble += high * high;
            double m = lpT - lp2;                          // 150 Hz … 2.5 kHz: guitars, snare body, voice
            sumMid += m * m;
            frames++;
        }

        private void flush() {
            if (bucket < 0 || frames == 0) {
                return;
            }
            ensureCapacity(bucket + 1);
            float rms = (float) Math.sqrt(sumSq / frames);
            float bassEnergy = (float) (sumBass / frames);
            float trebleEnergy = (float) (sumTreble / frames);
            float midEnergy = (float) (sumMid / frames);
            // Fill decoder gaps with the previous bucket so the curve never drops to 0.
            for (int i = count; i < bucket; i++) {
                loud[i] = count > 0 ? loud[count - 1] : rms;
                bass[i] = count > 0 ? bass[count - 1] : bassEnergy;
                treble[i] = count > 0 ? treble[count - 1] : trebleEnergy;
                mid[i] = count > 0 ? mid[count - 1] : midEnergy;
            }
            if (bucket >= count || rms > loud[bucket]) {
                loud[bucket] = rms;
                bass[bucket] = bassEnergy;
                treble[bucket] = trebleEnergy;
                mid[bucket] = midEnergy;
            }
            if (bucket + 1 > count) {
                count = bucket + 1;
            }
            sumSq = 0.0;
            sumBass = 0.0;
            sumTreble = 0.0;
            sumMid = 0.0;
            frames = 0;
        }

        private void ensureCapacity(int size) {
            if (size <= loud.length) {
                return;
            }
            int next = Math.max(size, loud.length * 2);
            loud = Arrays.copyOf(loud, next);
            bass = Arrays.copyOf(bass, next);
            treble = Arrays.copyOf(treble, next);
            mid = Arrays.copyOf(mid, next);
        }

        Envelope finish() {
            flush();
            if (count == 0) {
                return new Envelope(new float[]{0f}, new float[]{0f}, new float[]{0.5f}, 1, 80.0, 0.0, 0.0);
            }
            // Onsets per band (bass / mids / highs), each against its own slow level: a sustained
            // voice raises the mids' level but not their jumps, so guitar / drum hits stay visible.
            float[] flux = new float[count];
            double slowBass = energyDb(bass[0]);
            double slowMid = energyDb(mid[0]);
            double slowHigh = energyDb(treble[0]);
            for (int i = 0; i < count; i++) {
                double bassDb = energyDb(bass[i]);
                double midDb = energyDb(mid[i]);
                double highDb = energyDb(treble[i]);
                double value = BAND_BASS * Math.max(0.0, bassDb - slowBass)
                        + BAND_MID * Math.max(0.0, midDb - slowMid)
                        + BAND_HIGH * Math.max(0.0, highDb - slowHigh);
                flux[i] = (float) value;
                slowBass += ONSET_SLOW_ALPHA * (bassDb - slowBass);
                slowMid += ONSET_SLOW_ALPHA * (midDb - slowMid);
                slowHigh += ONSET_SLOW_ALPHA * (highDb - slowHigh);
            }
            // "Strong hit" follows the music (~2 s memory) instead of one value for the whole
            // track: a dense part (voice + band) keeps its beat as clear as the intro.
            double global = Math.max(1.0, percentileOfPositive(flux, count, 95.0));
            float[] rhythm = new float[count];
            float held = 0f;
            double follow = global;
            for (int i = 0; i < count; i++) {
                follow = Math.max(flux[i], follow * STRONG_DECAY);
                double strong = Math.max(0.5, Math.max(follow, global * 0.08));
                float onset = (float) Math.min(1.0, flux[i] / strong);
                if (onset < ONSET_GATE) {
                    onset = 0f;
                }
                held = Math.max(onset, held * ONSET_DECAY);
                rhythm[i] = held;
            }
            double peak = SoundEnvelopeMapper.percentilePeak(loud, count, 96.0);
            float[] tone = toneCurve(peak);
            return new Envelope(loud, rhythm, tone, count, peak, toneSpanDb, toneMedianDb);
        }

        /**
         * Treble-vs-bass balance per bucket (dB difference), spread over this track's own
         * range (10th … 90th percentile of the audible buckets → 0 … 1) and smoothed without
         * delay. Quiet buckets keep the last tone (no jumps in the gaps).
         */
        private float[] toneCurve(double peak) {
            float[] diff = new float[count];
            boolean[] audible = new boolean[count];
            double gate = peak * 0.05;
            float[] sample = new float[count];
            int n = 0;
            for (int i = 0; i < count; i++) {
                diff[i] = (float) (energyDb(treble[i]) - energyDb(bass[i]));
                audible[i] = loud[i] > gate;
                if (audible[i]) {
                    sample[n++] = diff[i];
                }
            }
            float[] tone = new float[count];
            if (n < 10) {
                toneSpanDb = 0.0;
                toneMedianDb = 0.0;
                Arrays.fill(tone, 0.5f);
                return tone;
            }
            Arrays.sort(sample, 0, n);
            float lo = sample[(int) Math.round(0.10 * (n - 1))];
            float hi = sample[(int) Math.round(0.90 * (n - 1))];
            toneSpanDb = Math.max(0f, hi - lo);
            toneMedianDb = sample[n / 2];
            float span = Math.max(1f, hi - lo);
            float last = 0.5f;
            float[] raw = new float[count];
            for (int i = 0; i < count; i++) {
                if (audible[i]) {
                    last = Math.max(0f, Math.min(1f, (diff[i] - lo) / span));
                }
                raw[i] = last;
            }
            for (int i = 0; i < count; i++) {
                float sum = 0f;
                int k = 0;
                for (int j = Math.max(0, i - TONE_HALF_WINDOW); j <= Math.min(count - 1, i + TONE_HALF_WINDOW); j++) {
                    sum += raw[j];
                    k++;
                }
                tone[i] = sum / k;
            }
            return tone;
        }

        private static double percentileOfPositive(float[] values, int count, double percentile) {
            float[] sorted = new float[count];
            int n = 0;
            for (int i = 0; i < count; i++) {
                if (values[i] > 0f) {
                    sorted[n++] = values[i];
                }
            }
            if (n == 0) {
                return 0.0;
            }
            Arrays.sort(sorted, 0, n);
            int index = (int) Math.round((percentile / 100.0) * (n - 1));
            return sorted[Math.max(0, Math.min(n - 1, index))];
        }

        private static double energyDb(double energy) {
            return 10.0 * Math.log10(energy + 1.0);
        }
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

    public void startPlayback(Context context, Uri uri, Envelope preparedEnvelope, Listener callback)
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
            // Section settings (including sensitivity) before this bucket is mapped.
            MusicSync.followAutoTune(index * WINDOW_MS);
            // Mapped at play time: sensitivity and rhythm mix apply live.
            int loud = SoundEnvelopeMapper.rmsToPercent(
                    envelope.loudRms[index], envelope.peakRms, MusicSync.getSensitivity());
            int rhythm = Math.round(envelope.rhythm[index] * 100f);
            listener.onTone(envelope.tone != null ? Math.round(envelope.tone[index] * 100f) : 50);
            listener.onWaveformLevel(MusicSync.mixLevels(loud, rhythm));
        } catch (Throwable ignored) {
        }
    }

    int resolveEnvelopeIndex(int positionMs) {
        if (envelope == null || envelope.length == 0) {
            return 0;
        }
        // getCurrentPosition() tracks the presented (heard) frame; look ahead by the
        // measured BLE send→ACK time so the impulse lands with that audio.
        int lookupMs = positionMs + MusicSync.getPlayerLeadMs();
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

    public int getDurationMs() {
        if (player == null) {
            return 0;
        }
        try {
            int duration = player.getDuration();
            return duration < 0 ? 0 : duration;
        } catch (Throwable ignored) {
            return 0;
        }
    }

    public boolean isPlaying() {
        if (player == null) {
            return false;
        }
        try {
            return player.isPlaying();
        } catch (Throwable ignored) {
            return false;
        }
    }

    public void seekTo(int positionMs) {
        if (player == null) {
            return;
        }
        try {
            int duration = getDurationMs();
            int target = positionMs;
            if (target < 0) {
                target = 0;
            }
            if (duration > 0 && target > duration) {
                target = duration;
            }
            player.seekTo(target);
        } catch (Throwable ignored) {
        }
    }

    public void pausePlayback() {
        if (player == null) {
            return;
        }
        try {
            if (player.isPlaying()) {
                player.pause();
            }
        } catch (Throwable ignored) {
        }
    }

    public void resumePlayback() {
        if (player == null) {
            return;
        }
        try {
            if (!player.isPlaying()) {
                player.start();
            }
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
        private long nextPollUptimeMs;

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
            if (!target.tracking) {
                return;
            }
            long now = SystemClock.uptimeMillis();
            if (nextPollUptimeMs <= 0L) {
                nextPollUptimeMs = now;
            }
            nextPollUptimeMs += SYNC_POLL_MS;
            if (nextPollUptimeMs < now) {
                nextPollUptimeMs = now;
            }
            long delay = nextPollUptimeMs - now;
            if (delay < 1L) {
                delay = 1L;
            }
            target.handler.postDelayed(this, delay);
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
