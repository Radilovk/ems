package com.isaigu.gymapp.train.utils;

import java.util.Arrays;

/**
 * Picks music-sync settings from a track's own envelope so the impulse follows
 * how the body reads it: separate hits versus a held wave, quiet parts still
 * felt, and bass-heavy moments on a lower impulse frequency than bright ones.
 * No network. One result per 4 s section, lightly smoothed so a drop and a
 * breakdown do not share one number, while playback slews between them.
 */
public final class MusicAutoTune {
    /** Section length. Playback moves toward that section's settings. */
    public static final int WINDOW_MS = 4000;
    private static final int BUCKET_MS = 20;

    /** Onset crossing that counts as a hit the muscle can separate. */
    private static final float HIT_LEVEL = 0.40f;
    /** Hits closer than this are one contraction, not two. */
    private static final int HIT_GAP_BUCKETS = 7;
    /** Rhythm below this, while the sound is still up, is sustain (a pad). */
    private static final float SUSTAIN_RHYTHM = 0.12f;

    private static final int HZ_LO = 8;
    private static final int HZ_HI = 96;

    private MusicAutoTune() {
    }

    /** Settings for one moment. {@code hzBass} is always the lower frequency. */
    public static final class Snapshot {
        public final int sensitivity;
        public final int rhythmMix;
        public final int floor;
        public final int smoothness;
        public final int hzBass;
        public final int hzTreble;

        Snapshot(int sensitivity, int rhythmMix, int floor, int smoothness, int hzBass, int hzTreble) {
            this.sensitivity = sensitivity;
            this.rhythmMix = rhythmMix;
            this.floor = floor;
            this.smoothness = smoothness;
            this.hzBass = hzBass;
            this.hzTreble = hzTreble;
        }
    }

    /** Per-section settings. Hz ends are for the whole track. */
    public static final class Curve {
        private final Snapshot[] windows;

        Curve(Snapshot[] windows) {
            this.windows = windows;
        }

        public int size() {
            return windows.length;
        }

        public Snapshot at(int positionMs) {
            if (windows.length == 0) {
                return neutral(0.0, 0.0);
            }
            int index = positionMs / WINDOW_MS;
            if (index < 0) {
                index = 0;
            }
            if (index >= windows.length) {
                index = windows.length - 1;
            }
            return windows[index];
        }
    }

    /**
     * @param toneSpanDb   90th − 10th percentile of treble-minus-bass, in dB.
     *                     Small means the track barely moves in tone, so the two
     *                     impulse frequencies stay together.
     * @param toneMedianDb median treble-minus-bass. Negative is a bassy track,
     *                     so both frequencies sit lower.
     */
    public static Curve analyze(float[] loud, float[] rhythm, float[] tone, int length,
            double toneSpanDb, double toneMedianDb) {
        int n = usableLength(loud, rhythm, length);
        int[] hz = hzEnds(toneSpanDb, toneMedianDb);
        if (n < 10) {
            Snapshot one = neutral(toneSpanDb, toneMedianDb);
            return new Curve(new Snapshot[] {one});
        }
        double peak = percentile(loud, 0, n, 96.0);
        if (peak < 1.0e-4) {
            return new Curve(new Snapshot[] {neutral(toneSpanDb, toneMedianDb)});
        }
        int buckets = WINDOW_MS / BUCKET_MS;
        int sections = (n + buckets - 1) / buckets;
        if (sections > 1 && n - (sections - 1) * buckets < buckets / 2) {
            sections--;
        }
        Snapshot[] raw = new Snapshot[sections];
        for (int s = 0; s < sections; s++) {
            int from = s * buckets;
            int to = s == sections - 1 ? n : Math.min(n, from + buckets);
            raw[s] = section(loud, rhythm, from, to, peak, hz[0], hz[1]);
        }
        return new Curve(smooth(raw, hz[0], hz[1]));
    }

    private static Snapshot section(float[] loud, float[] rhythm, int from, int to, double peak,
            int hzBass, int hzTreble) {
        double p20 = percentile(loud, from, to, 20.0);
        double p50 = percentile(loud, from, to, 50.0);
        double p95 = percentile(loud, from, to, 95.0);
        int sensitivity = sensitivityFor(p20, peak);
        // A break: keep the held squeeze low so the next entrance can be a hit.
        if (p95 < peak * 0.08) {
            return new Snapshot(sensitivity, 50, 12, 18, hzBass, hzTreble);
        }
        double seconds = Math.max(0.4, (to - from) * BUCKET_MS / 1000.0);
        double density = countHits(rhythm, from, to) / seconds;
        double punch = clamp01((density - 0.45) / 2.0);
        double crestDb = 0.0;
        if (p50 > 1.0e-6 && p95 > p50) {
            crestDb = 20.0 * Math.log10(p95 / p50);
        }
        double crestN = clamp01((crestDb - 3.0) / 10.0);
        double sustain = sustainShare(loud, rhythm, from, to, peak);
        double rhythmN = clamp01(0.78 * punch + 0.22 * crestN);
        rhythmN = clamp01(rhythmN * (1.0 - 0.50 * sustain));

        int rhythmMix = clamp(iround(16 + rhythmN * 72), 15, 90);
        int floor = clamp(iround(38 - rhythmN * 28), 8, 40);
        int smoothness = clamp(iround(66 - rhythmN * 62), 0, 70);
        // Flat, compressed music chatters on every syllable unless the rise is slower.
        if (crestN < 0.20 && punch < 0.45) {
            smoothness = clamp(smoothness + 8, 0, 70);
        }
        // A quiet part of a loud track should stay a light hold, not the floor of the chorus.
        if (peak > 0.0 && p95 > 0.0) {
            double presence = p95 / peak;
            if (presence < 0.35) {
                double quiet = clamp01((0.35 - presence) / 0.35);
                floor = clamp(iround(floor * (1.0 - quiet) + 10.0 * quiet), 8, 40);
                smoothness = clamp(smoothness + iround(12.0 * quiet), 0, 70);
            }
        }
        return new Snapshot(sensitivity, rhythmMix, floor, smoothness, hzBass, hzTreble);
    }

    /**
     * Place the p20 of this section near the bottom of the felt scale, so a quiet
     * verse is not gated out and a crushed master still drops its noise floor.
     * Matches {@link SoundEnvelopeMapper}: floorDb = −50 + sensitivity/100·22.
     */
    private static int sensitivityFor(double p20, double peak) {
        if (p20 <= 0.0 || peak <= 0.0) {
            return 20;
        }
        double db20 = 20.0 * Math.log10(Math.max(p20 / peak, 1.0e-6));
        double n = Math.pow(0.12, 1.0 / 1.12);
        double floorDb = db20 / (1.0 - n);
        if (floorDb < -50.0) {
            floorDb = -50.0;
        } else if (floorDb > -28.0) {
            floorDb = -28.0;
        }
        return clamp(iround((floorDb + 50.0) / 22.0 * 100.0), 0, 100);
    }

    /**
     * Bass-heavy audio sits on the lower impulse frequency. The number is the
     * felt rate (about 8–96 Hz), not a copy of the audio frequency.
     * A track that barely changes tone keeps the two ends together.
     */
    static int[] hzEnds(double toneSpanDb, double toneMedianDb) {
        double movement = clamp01((toneSpanDb - 1.5) / 6.5);
        double median = toneMedianDb;
        if (median < -14.0) {
            median = -14.0;
        } else if (median > 10.0) {
            median = 10.0;
        }
        double center = 40.0 + median * 2.2;
        if (center < 14.0) {
            center = 14.0;
        } else if (center > 72.0) {
            center = 72.0;
        }
        if (movement < 0.12) {
            int mid = clamp(iround(center), HZ_LO, HZ_HI);
            return new int[] {mid, mid};
        }
        double half = movement * 24.0;
        int bass = clamp(iround(center - half), HZ_LO, 80);
        int treble = clamp(iround(center + half), HZ_LO, HZ_HI);
        if (treble < bass) {
            int swap = bass;
            bass = treble;
            treble = swap;
        }
        if (treble - bass < 8) {
            int mid = (bass + treble) / 2;
            bass = clamp(mid - 4, HZ_LO, HZ_HI);
            treble = clamp(mid + 4, HZ_LO, HZ_HI);
        }
        return new int[] {bass, treble};
    }

    private static Snapshot[] smooth(Snapshot[] raw, int hzBass, int hzTreble) {
        int n = raw.length;
        Snapshot[] out = new Snapshot[n];
        for (int i = 0; i < n; i++) {
            int p = i == 0 ? i : i - 1;
            int q = i == n - 1 ? i : i + 1;
            out[i] = new Snapshot(
                    blend(raw[p].sensitivity, raw[i].sensitivity, raw[q].sensitivity),
                    blend(raw[p].rhythmMix, raw[i].rhythmMix, raw[q].rhythmMix),
                    blend(raw[p].floor, raw[i].floor, raw[q].floor),
                    blend(raw[p].smoothness, raw[i].smoothness, raw[q].smoothness),
                    hzBass,
                    hzTreble);
        }
        return out;
    }

    /** 20% / 60% / 20% so one odd bar does not yank the muscle, a real section still does. */
    private static int blend(int prev, int cur, int next) {
        return clamp(iround(0.20 * prev + 0.60 * cur + 0.20 * next), 0, 100);
    }

    private static Snapshot neutral(double toneSpanDb, double toneMedianDb) {
        int[] hz = hzEnds(toneSpanDb, toneMedianDb);
        return new Snapshot(20, 45, 22, 28, hz[0], hz[1]);
    }

    private static int countHits(float[] rhythm, int from, int to) {
        if (rhythm == null) {
            return 0;
        }
        int hits = 0;
        int last = -1000;
        int start = Math.max(from, 1);
        // A hit that opens the buffer has no earlier bucket inside the range.
        if (from == 0 && rhythm.length > 0 && rhythm[0] >= HIT_LEVEL) {
            hits++;
            last = 0;
        }
        for (int i = start; i < to && i < rhythm.length; i++) {
            if (i - last < HIT_GAP_BUCKETS) {
                continue;
            }
            if (rhythm[i] >= HIT_LEVEL && rhythm[i - 1] < HIT_LEVEL) {
                hits++;
                last = i;
            }
        }
        return hits;
    }

    /** Share of the loud buckets that are not a hit: a pad, a voice, a held chord. */
    private static double sustainShare(float[] loud, float[] rhythm, int from, int to, double peak) {
        if (loud == null || rhythm == null || peak <= 0.0) {
            return 0.0;
        }
        double gate = peak * 0.25;
        int audible = 0;
        int held = 0;
        int end = Math.min(to, Math.min(loud.length, rhythm.length));
        for (int i = from; i < end; i++) {
            if (loud[i] <= gate) {
                continue;
            }
            audible++;
            if (rhythm[i] < SUSTAIN_RHYTHM) {
                held++;
            }
        }
        if (audible == 0) {
            return 0.0;
        }
        return held / (double) audible;
    }

    private static double percentile(float[] values, int from, int to, double p) {
        if (values == null || to <= from) {
            return 0.0;
        }
        int end = Math.min(to, values.length);
        float[] sorted = new float[Math.max(0, end - from)];
        int n = 0;
        for (int i = from; i < end; i++) {
            if (values[i] > 0f) {
                sorted[n++] = values[i];
            }
        }
        if (n == 0) {
            return 0.0;
        }
        Arrays.sort(sorted, 0, n);
        int index = (int) Math.round((p / 100.0) * (n - 1));
        if (index < 0) {
            index = 0;
        }
        if (index >= n) {
            index = n - 1;
        }
        return sorted[index];
    }

    private static int usableLength(float[] loud, float[] rhythm, int length) {
        int n = length;
        if (loud != null && n > loud.length) {
            n = loud.length;
        }
        if (rhythm != null && n > rhythm.length) {
            n = rhythm.length;
        }
        if (loud == null || rhythm == null || n < 0) {
            return 0;
        }
        return n;
    }

    private static int iround(double value) {
        return (int) Math.round(value);
    }

    private static int clamp(int value, int lo, int hi) {
        if (value < lo) {
            return lo;
        }
        if (value > hi) {
            return hi;
        }
        return value;
    }

    private static double clamp01(double value) {
        if (value < 0.0) {
            return 0.0;
        }
        if (value > 1.0) {
            return 1.0;
        }
        return value;
    }
}
