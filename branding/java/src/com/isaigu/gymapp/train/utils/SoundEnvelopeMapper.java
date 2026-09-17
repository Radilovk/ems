package com.isaigu.gymapp.train.utils;

import java.util.ArrayList;
import java.util.Collections;

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
    public static double percentilePeak(ArrayList<Double> values, double percentile) {
        if (values == null || values.isEmpty()) {
            return 80.0;
        }
        ArrayList<Double> sorted = new ArrayList<Double>();
        for (int i = 0; i < values.size(); i++) {
            double v = values.get(i);
            if (v > 0.0) {
                sorted.add(v);
            }
        }
        if (sorted.isEmpty()) {
            return 80.0;
        }
        Collections.sort(sorted);
        int index = (int) Math.round((percentile / 100.0) * (sorted.size() - 1));
        if (index < 0) {
            index = 0;
        }
        if (index >= sorted.size()) {
            index = sorted.size() - 1;
        }
        double peak = sorted.get(index);
        if (peak < 80.0) {
            peak = 80.0;
        }
        return peak;
    }

    public static void fillPercentLevels(
            ArrayList<Integer> timeline,
            ArrayList<Double> rawRms,
            int sensitivity) {
        double peak = percentilePeak(rawRms, 96.0);
        for (int i = 0; i < timeline.size(); i++) {
            timeline.set(i, rmsToPercent(rawRms.get(i), peak, sensitivity));
        }
    }
}
