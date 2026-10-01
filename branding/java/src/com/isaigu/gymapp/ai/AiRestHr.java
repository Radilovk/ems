package com.isaigu.gymapp.ai;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * §2 CALIB_REST_HR — resting HR, measured as long as its reliability needs: 10–45 s (median of the last stretch).
 * <ul>
 *   <li>noise: the median of n samples with spread σ is good to ±1 bpm when n ≥ (1.25·σ)² — so a calm, dense
 *       signal is done in 10 s, a noisy or sparse one needs longer;</li>
 *   <li>trend: HR still falling (or rising) faster than 3 bpm per 30 s means the body has not settled (just walked
 *       in, talking) — the window grows until the trend is flat;</li>
 *   <li>not rested in the last 10 minutes → at least 20 s.</li>
 * </ul>
 * At 45 s the best estimate is taken if it is fair (σ ≤ 4.5, trend ≤ 6 bpm / 30 s), else UNSTABLE (trainer accepts).
 * Samples are validated (30–220, ≤ 5 bpm/s jumps); a silent band (10 s) pauses the clock.
 */
public final class AiRestHr {
    public static final long MIN_MS = 10000L;
    public static final long MIN_NOT_RESTED_MS = 20000L;
    public static final long MAX_MS = 45000L;
    /** Window the result is taken from (the settled end of the measurement). */
    public static final long WINDOW_MS = 30000L;
    public static final long STALE_MS = 10000L;
    public static final double SIGMA_MAX = 3.0;
    /** bpm / s: 3 bpm in 30 s. */
    public static final double DRIFT_MAX = 0.1;
    public static final double SLOPE_MAX_BPM_PER_S = 5.0;

    public enum Status { WAITING, MEASURING, STALE, DONE, UNSTABLE }

    /** Why it still measures (for the screen). */
    public enum Reason { NONE, FEW, NOISY, DRIFT }

    private final List<long[]> samples = new ArrayList<long[]>();
    private long lastSampleMs = -1L;
    private int lastBpm = -1;
    /** Effective measuring time (stale gaps excluded). */
    private long measuredMs;
    private long lastTickMs = -1L;
    private final long minMs;
    private long targetMs;
    private Status status = Status.WAITING;
    private Reason reason = Reason.FEW;
    private int rejected;

    private int hrRest;
    private double sigma;
    private long dtHrMs;

    public AiRestHr(boolean restedLast10min) {
        minMs = restedLast10min ? MIN_MS : MIN_NOT_RESTED_MS;
        targetMs = MAX_MS;                                   // until the first samples say more
    }

    public Reason getReason() {
        return reason;
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

    /** Advance the clock; call ~1 Hz. */
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
        assess();
    }

    /** Reliability now → the time this measurement needs, and DONE / UNSTABLE when it is there. */
    private void assess() {
        List<long[]> w = recent(Math.max(minMs, Math.min(WINDOW_MS, measuredMs)));
        int n = w.size();
        long step = Math.max(500L, medianInterval());
        if (n < 4) {
            reason = Reason.FEW;
            targetMs = Math.min(MAX_MS, Math.max(minMs, measuredMs + (4 - n) * step));
            if (measuredMs >= MAX_MS) {
                status = Status.UNSTABLE;
            }
            return;
        }
        double sd = sdOf(w);
        double slope = Math.abs(slope(w));
        long need = (long) Math.ceil(Math.max(4, 1.5625 * sd * sd)) * step;   // n ≥ (1.25·σ)²
        long target = Math.max(minMs, need);
        boolean noisy = sd > SIGMA_MAX;
        boolean drift = slope > DRIFT_MAX;
        if (noisy || drift) {
            target = Math.max(target, measuredMs + 5000L);   // not settled: keep going
        }
        targetMs = Math.min(MAX_MS, target);
        reason = drift ? Reason.DRIFT : noisy ? Reason.NOISY : n * step < need ? Reason.FEW : Reason.NONE;
        if (measuredMs >= targetMs && !noisy && !drift) {
            take(w, sd);
            status = Status.DONE;
        } else if (measuredMs >= MAX_MS) {
            take(w, sd);
            status = sd <= 1.5 * SIGMA_MAX && slope <= 2 * DRIFT_MAX ? Status.DONE : Status.UNSTABLE;
        }
    }

    private void take(List<long[]> w, double sd) {
        List<Integer> v = new ArrayList<Integer>();
        for (int i = 0; i < w.size(); i++) {
            v.add((int) w.get(i)[1]);
        }
        hrRest = median(v);
        sigma = sd;
        dtHrMs = medianInterval();
    }

    /** Samples of the last spanMs. */
    private List<long[]> recent(long spanMs) {
        List<long[]> out = new ArrayList<long[]>();
        if (samples.isEmpty()) {
            return out;
        }
        long end = samples.get(samples.size() - 1)[0];
        for (int i = 0; i < samples.size(); i++) {
            if (samples.get(i)[0] >= end - spanMs) {
                out.add(samples.get(i));
            }
        }
        return out;
    }

    private static double sdOf(List<long[]> w) {
        List<Integer> v = new ArrayList<Integer>();
        for (int i = 0; i < w.size(); i++) {
            v.add((int) w.get(i)[1]);
        }
        return sd(v);
    }

    /** Least-squares trend, bpm per second. */
    static double slope(List<long[]> w) {
        int n = w.size();
        if (n < 2) {
            return 0;
        }
        double mt = 0;
        double mb = 0;
        for (int i = 0; i < n; i++) {
            mt += w.get(i)[0] / 1000.0;
            mb += w.get(i)[1];
        }
        mt /= n;
        mb /= n;
        double num = 0;
        double den = 0;
        for (int i = 0; i < n; i++) {
            double dt = w.get(i)[0] / 1000.0 - mt;
            num += dt * (w.get(i)[1] - mb);
            den += dt * dt;
        }
        return den > 1e-9 ? num / den : 0;
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
