package com.isaigu.gymapp.train.utils;

import java.util.Arrays;

/** Perceptual (log/dB) loudness mapping for music → impulse strength. */
public final class SoundEnvelopeMapper {
    private SoundEnvelopeMapper() {
    }

    /**
     * Map RMS to 0–100% on a logarithmic scale relative to {@code peakRms}.
     * Quiet passages keep texture; loud peaks use full range without hard clipping.
     */
    public static int rmsToPercent(double rms, double peakRms, int sensitivity) {
        if (rms <= 0.0 || peakRms <= 0.0) {
            return 0;
        }
        double ratio = rms / peakRms;
        if (ratio > 1.0) {
            ratio = 1.0;
        }
        double db = 20.0 * Math.log10(Math.max(ratio, 1.0e-6));
        double floorDb = -50.0 + (sensitivity / 100.0) * 22.0;
        if (db <= floorDb) {
            return 0;
        }
        double normalized = (db - floorDb) / (-floorDb);
        if (normalized < 0.0) {
            normalized = 0.0;
        } else if (normalized > 1.0) {
            normalized = 1.0;
        }
        normalized = Math.pow(normalized, 1.12);
        int level = (int) Math.round(normalized * 100.0);
        if (level < 0) {
            return 0;
        }
        if (level > 100) {
            return 100;
        }
        return level;
    }

    /** Robust peak: high percentile avoids one spike squashing the whole track. */
    public static double percentilePeak(float[] values, int count, double percentile) {
        if (values == null || count <= 0) {
            return 80.0;
        }
        float[] sorted = new float[count];
        int n = 0;
        for (int i = 0; i < count && i < values.length; i++) {
            if (values[i] > 0f) {
                sorted[n++] = values[i];
            }
        }
        if (n == 0) {
            return 80.0;
        }
        Arrays.sort(sorted, 0, n);
        int index = (int) Math.round((percentile / 100.0) * (n - 1));
        if (index < 0) {
            index = 0;
        }
        if (index >= n) {
            index = n - 1;
        }
        double peak = sorted[index];
        return peak < 80.0 ? 80.0 : peak;
    }
}
