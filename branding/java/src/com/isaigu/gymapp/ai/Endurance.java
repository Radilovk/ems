package com.isaigu.gymapp.ai;

/**
 * How long a mode can be held, and the AI training's only automatic safety step (owner, 1.1.562 — docs/xems-ems-
 * physiology.md §3.6). The critical-intensity model of muscle work (Monod & Scherrer 1965; for intermittent
 * isometric contractions Burnley 2009): under the critical intensity the muscle reaches a steady state and holds;
 * above it a finite reserve W′ is spent, time to the limit t = W′ / (I − 1). The reserve comes back exponentially
 * (Skiba's W′bal), faster at rest than while working under the critical intensity.
 * <ul>
 * <li><b>Intensity</b> I of a mode = its steady fatigue peak (SafeLimits.peak: Hz, impulse, the pause between
 *     impulses, the 2nd impulse, this client's τ) over this client's F_max, × the depth (pulse width: deeper fibres
 *     recruited, √(µs/350), 0.85–1.15 — an assumption [D]). I ≤ 1: held the whole session, nothing changes.</li>
 * <li><b>The step</b>: only when the mode can hold less than {@link #HORIZON_S} more — −{@link #STEP_HZ} Hz, at most one
 *     a {@link #DWELL_S}, never under the critical frequency (where it holds) nor 20 Hz. Never the strength, never the
 *     pause between impulses.</li>
 * <li><b>After a pause</b>: the reserve recovered by its length; the restart frequency is the highest (up to the
 *     planned one) that can still hold {@link #HORIZON_S}.</li>
 * </ul>
 * Calibrated on practice [D]: the standard WB-EMS 85 Hz 6 s / 4 s holds ~17 min for an average client (MID), longer
 * for a trained one; 4 s / 4 s is under the critical intensity for MID and HIGH. Pure Java (scripts/ai-sim tests it).
 */
public final class Endurance {
    /** W′: seconds the reserve lasts at twice the critical intensity (I = 2). */
    public static final double RESERVE_S = 200;
    /** A step when the mode can hold less than this. */
    public static final double HORIZON_S = 120;
    /** At least this long at a frequency before the next step. */
    public static final double DWELL_S = 60;
    public static final int STEP_HZ = 5;
    /** The heart at its ceiling: a step without waiting the full dwell. */
    public static final double HR_DWELL_S = 30;
    /** Recovery of the reserve (time constants): working under the critical intensity, and at rest. */
    public static final double TAU_WORK_S = 300;
    public static final double TAU_REST_S = 120;
    public static final int FLOOR_HZ = 20;

    private final double fMax;
    private final double tau;
    /** 1 = full, 0 = spent (it may go a little below while the steps catch up). */
    private double reserve = 1;
    private int cut;
    private double sinceStep = 1e9;
    private String last = "";
    /** The last step: for the heart (else the time the mode could still hold, s). */
    public boolean lastByHeart;
    public double lastHoldS;

    public Endurance(AiModel.Fitness fitness) {
        double[] fp = AiPlanner.fatigueParams(fitness != null ? fitness : AiModel.Fitness.MID);
        fMax = fp[0];
        tau = fp[2];
    }

    /** Hz taken off the planned frequency now. */
    public int cut() {
        return cut;
    }

    public double reserve() {
        return reserve;
    }

    /** What the last decision was (the diag log). */
    public String last() {
        return last;
    }

    static double depth(int pwUs) {
        double d = Math.sqrt(Math.max(50, pwUs) / 350.0);
        return Math.max(0.85, Math.min(1.15, d));
    }

    /** The mode's intensity over the critical one (≤ 1 = it holds). */
    public double intensity(int hz, int onS, int offS, int pauseHz, double pauseSigma, int pwUs) {
        if (hz < SafeLimits.TETANIC_HZ || fMax <= 0) {
            return 0;
        }
        return SafeLimits.peak(hz, Math.max(1, onS), Math.max(1, offS), pauseHz, pauseSigma, tau) * depth(pwUs) / fMax;
    }

    /** Seconds the mode can still be held from the reserve now (∞ when it holds). */
    public double holdS(int hz, int onS, int offS, int pauseHz, double pauseSigma, int pwUs) {
        double i = intensity(hz, onS, offS, pauseHz, pauseSigma, pwUs);
        return i <= 1 ? Double.POSITIVE_INFINITY : Math.max(0, reserve) * RESERVE_S / (i - 1);
    }

    /** The highest frequency ≤ hz at which the mode holds the whole session (the steps stop there). */
    public int criticalHz(int hz, int onS, int offS, int pauseHz, double pauseSigma, int pwUs) {
        for (int h = hz; h > FLOOR_HZ; h--) {
            if (intensity(h, onS, offS, pauseHz, pauseSigma, pwUs) <= 1) {
                return h;
            }
        }
        return FLOOR_HZ;
    }

    /**
     * One cycle was worked at {@code hz} (already with the cut) for {@code dtS}: the reserve moves, and a step is taken
     * when needed. Returns true when a step was taken. {@code hrHigh}: the heart at its ceiling.
     */
    public boolean work(int hz, int onS, int offS, int pauseHz, double pauseSigma, int pwUs, double dtS, boolean hrHigh) {
        if (dtS <= 0) {
            return false;
        }
        double i = intensity(hz, onS, offS, pauseHz, pauseSigma, pwUs);
        if (i > 1) {
            reserve -= (i - 1) * dtS / RESERVE_S;
        } else {
            reserve += (1 - reserve) * (1 - Math.exp(-dtS / TAU_WORK_S));
        }
        reserve = Math.max(-0.5, Math.min(1, reserve));
        sinceStep += dtS;
        if (hz < SafeLimits.TETANIC_HZ) {
            return false;
        }
        double hold = i > 1 ? Math.max(0, reserve) * RESERVE_S / (i - 1) : Double.POSITIVE_INFINITY;
        int floor = Math.max(FLOOR_HZ, criticalHz(hz, onS, offS, pauseHz, pauseSigma, pwUs));
        boolean byTime = hold < HORIZON_S && sinceStep >= DWELL_S;
        boolean byHeart = hrHigh && sinceStep >= HR_DWELL_S;
        if ((byTime || byHeart) && hz - STEP_HZ >= (byHeart ? FLOOR_HZ : floor)) {
            cut += STEP_HZ;
            sinceStep = 0;
            lastByHeart = byHeart && !byTime;
            lastHoldS = hold;
            last = (byHeart ? "heart at its ceiling" : "holds " + Math.round(hold) + " s more") + " at " + hz + " Hz "
                    + onS + "/" + offS + " s (I " + Math.round(i * 100) + " %, reserve " + Math.round(reserve * 100)
                    + " %) → −" + STEP_HZ + " Hz";
            return true;
        }
        return false;
    }

    /** A pause (or a rest block) of {@code dtS}: the reserve comes back. */
    public void rest(double dtS) {
        if (dtS > 0) {
            reserve += (1 - reserve) * (1 - Math.exp(-dtS / TAU_REST_S));
            reserve = Math.min(1, reserve);
        }
    }

    /**
     * After a pause: the highest frequency, up to the planned one ({@code hzNow} + the cut), that can still hold
     * HORIZON_S — the cut never grows here.
     */
    public void restart(int hzNow, int onS, int offS, int pauseHz, double pauseSigma, int pwUs) {
        if (cut <= 0) {
            return;
        }
        int planned = hzNow + cut;
        for (int c = 0; c <= cut; c += STEP_HZ) {
            int h = planned - c;
            if (holdS(h, onS, offS, pauseHz, pauseSigma, pwUs) >= HORIZON_S) {
                last = "after the pause: reserve " + Math.round(reserve * 100) + " % → " + h + " Hz (cut " + cut + " → "
                        + c + ")";
                cut = c;
                sinceStep = 0;
                return;
            }
        }
    }
}
