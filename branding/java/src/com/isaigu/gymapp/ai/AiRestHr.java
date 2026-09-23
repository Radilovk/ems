package com.isaigu.gymapp.ai;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * §2 CALIB_REST_HR — resting HR over a 30 s window (median / SD of the whole window),
 * with sample validation, stale handling and up to two 15 s extensions.
 */
public final class AiRestHr {
    public static final long WINDOW_MS = 30000L;
    public static final long EXTEND_MS = 15000L;
    public static final int MAX_EXTENSIONS = 2;
    public static final long STALE_MS = 10000L;
    public static final double SIGMA_MAX = 3.0;
    public static final double SLOPE_MAX_BPM_PER_S = 5.0;

    public enum Status { WAITING, MEASURING, STALE, DONE, UNSTABLE }

    private final List<long[]> samples = new ArrayList<long[]>();
    private long lastSampleMs = -1L;
    private int lastBpm = -1;
    /** Effective measuring time (stale gaps excluded). */
    private long measuredMs;
    private long lastTickMs = -1L;
    private long targetMs;
    private int extensions;
    private Status status = Status.WAITING;
    private int rejected;

    private int hrRest;
    private double sigma;
    private long dtHrMs;

    public AiRestHr(boolean restedLast10min) {
        // Not rested → start with one extension already applied (§1.2 restedLast10min).
        targetMs = WINDOW_MS + (restedLast10min ? 0L : EXTEND_MS);
    }

    public Status getStatus() {
        return status;
    }

    public long getMeasuredMs() {
        return measuredMs;
    }

    public long getTargetMs() {
        return targetMs;
    }

    public int getLastBpm() {
        return lastBpm;
    }

    public int getRejected() {
        return rejected;
    }

    public int getHrRest() {
        return hrRest;
    }

    public double getSigma() {
        return sigma;
    }

    public long getDtHrMs() {
        return dtHrMs;
    }

    /** Current median of the last 30 s (for live display), or -1. */
    public int liveMedian() {
        List<Integer> w = lastWindow(WINDOW_MS);
        return w.isEmpty() ? -1 : median(w);
    }

    public void onSample(long tMs, int bpm) {
        if (status == Status.DONE || status == Status.UNSTABLE) {
            return;
        }
        if (bpm < 30 || bpm > 220) {
            rejected++;
            return;
        }
        if (lastSampleMs > 0 && lastBpm > 0) {
            double dtS = Math.max(0.001, (tMs - lastSampleMs) / 1000.0);
            if (Math.abs(bpm - lastBpm) / dtS > SLOPE_MAX_BPM_PER_S) {
                rejected++;
                lastSampleMs = tMs;
                lastBpm = bpm;
                return;
            }
        }
        samples.add(new long[] {tMs, bpm});
        lastSampleMs = tMs;
        lastBpm = bpm;
        if (status == Status.WAITING || status == Status.STALE) {
            status = Status.MEASURING;
        }
    }

    /** Advance the window clock; call ~1 Hz. */
    public void tick(long nowMs) {
        if (status == Status.DONE || status == Status.UNSTABLE) {
            return;
        }
        if (lastTickMs < 0) {
            lastTickMs = nowMs;
            return;
        }
        long dt = nowMs - lastTickMs;
        lastTickMs = nowMs;
        if (status == Status.WAITING) {
            return;
        }
        if (lastSampleMs < 0 || nowMs - lastSampleMs > STALE_MS) {
            status = Status.STALE;
            return;
        }
        status = Status.MEASURING;
        measuredMs += dt;
        if (measuredMs >= targetMs) {
            finish(nowMs);
        }
    }

    private void finish(long nowMs) {
        List<Integer> w = lastWindow(WINDOW_MS);
        if (w.size() < 3) {
            return;
        }
        hrRest = median(w);
        sigma = sd(w);
        dtHrMs = medianInterval();
        if (sigma <= SIGMA_MAX) {
            status = Status.DONE;
            return;
        }
        if (extensions < MAX_EXTENSIONS) {
            extensions++;
            targetMs += EXTEND_MS;
            return;
        }
        status = Status.UNSTABLE;
    }

    /** Operator accepts an unstable result (WARN_UNSTABLE). */
    public void acceptUnstable() {
        if (status == Status.UNSTABLE) {
            status = Status.DONE;
        }
    }

    private List<Integer> lastWindow(long spanMs) {
        List<Integer> out = new ArrayList<Integer>();
        if (samples.isEmpty()) {
            return out;
        }
        long end = samples.get(samples.size() - 1)[0];
        for (int i = 0; i < samples.size(); i++) {
            if (samples.get(i)[0] >= end - spanMs) {
                out.add((int) samples.get(i)[1]);
            }
        }
        return out;
    }

    private long medianInterval() {
        List<Integer> d = new ArrayList<Integer>();
        for (int i = 1; i < samples.size(); i++) {
            d.add((int) (samples.get(i)[0] - samples.get(i - 1)[0]));
        }
        return d.isEmpty() ? 0L : median(d);
    }

    static int median(List<Integer> values) {
        List<Integer> c = new ArrayList<Integer>(values);
        Collections.sort(c);
        int n = c.size();
        if (n == 0) {
            return 0;
        }
        return n % 2 == 1 ? c.get(n / 2) : (int) Math.round((c.get(n / 2 - 1) + c.get(n / 2)) / 2.0);
    }

    static double sd(List<Integer> values) {
        if (values.size() < 2) {
            return 0.0;
        }
        double m = 0;
        for (int v : values) {
            m += v;
        }
        m /= values.size();
        double s = 0;
        for (int v : values) {
            s += (v - m) * (v - m);
        }
        return Math.sqrt(s / (values.size() - 1));
    }
}
