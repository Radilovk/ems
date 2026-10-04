package com.isaigu.gymapp.ai;

import com.isaigu.gymapp.ai.AutoModel.Step;

/**
 * The smart impulse of a drawn workout (Програми → ▶ Авто, owner 1.1.324 — docs/xems-workouts.md "Impulse in
 * motion"): the same logic as the automatic mode (ai/AutoDynamics, physiology §3.5), automatically in every ready
 * template and every workout with exercises. Procedures (passive maps) are left exactly as drawn. Pure Java.
 * <ul>
 *   <li>The approaches follow the exercise's movement (library pattern), not the drawn frequency; a 🔒 block stays
 *       exactly as drawn (its fatigue still counts).</li>
 *   <li>The muscles' fatigue runs the whole time, per suit channel as in the automatic mode (physiology §3.1,
 *       auto spec "Формули", the leader's fitness, 1.1.327): the impulse on every channel plus the exercise's own work
 *       on its muscles (library {@code mus}, {@link AutoEngine#EX_LOAD}) — squats after squats pile up in the legs,
 *       a chest exercise between them lets the legs' own part go down. Rest and approach follow the most tired
 *       channel, like Auto.</li>
 *   <li>Every exercise block (a set) gets its approach when it starts — fresh / tired, the stage of the workout,
 *       the heart rate, the approaches already used, the training count; the drawn impulse is one of them.</li>
 *   <li>Every impulse (one repetition) glides with the fatigue: frequency down, pause up, depth a little up at the end.</li>
 *   <li>A drawn rest is the minimum: when the muscle is not back to F_rec it is extended (at most to 2 min).</li>
 * </ul>
 * The repetitions stay as drawn (one impulse = one repetition).
 */
public final class MapDynamics {
    public static final int REST_MAX_S = 120;

    private final double fMax;
    private final double fRec;
    private final double tau;
    private final int sessions;
    private final int age;
    private final int hrCap;
    /** F per suit channel. */
    private final double[] fk = new double[AutoModel.CHANNELS];
    /** The running exercise's work per channel 0–100 (null = none: plain stimulation, rest). */
    private int[] mus;
    private int setN;
    private int prev = -1;
    private int prev2 = -1;
    private final int[] used = new int[8];
    private AutoDynamics.Approach[] list;
    private int idx = -1;
    private int lastHz = -1;
    private boolean fresh;

    /** @param hrMax the leader's HR max (≤ 0 = unknown: the heart rate is not used) */
    public MapDynamics(AiModel.Fitness fitness, int sessions, int age, int hrMax) {
        double[] fp = AiPlanner.fatigueParams(fitness != null ? fitness : AiModel.Fitness.MID);
        this.fMax = fp[0];
        this.fRec = fp[1];
        this.tau = fp[2];
        this.sessions = Math.max(0, sessions);
        this.age = age;
        this.hrCap = hrMax > 0 ? (int) Math.round(hrMax * 0.85) : 0;
    }

    /** The exercise of the block that starts (its muscles per channel, 0–100; null = no exercise). */
    public void setMuscles(int[] m) {
        mus = m;
    }

    /**
     * Time passes: {@code on} = the impulse runs; else the pause (with its second impulse) or a rest (stopped).
     * Per channel: dF_k/dt = w(f)·ρ + e·m_k − F_k/τ in the impulse, w(f_p)·ρ·σ_p + 0.3·e·m_k − F_k/τ in the pause,
     * −F_k/τ at rest (every channel gets the drawn strength: z_k = 1).
     */
    public void advance(double dtS, boolean running, boolean on, int hz, int pauseHz, double pauseSigma, double rho) {
        if (dtS <= 0) {
            return;
        }
        double e = Math.exp(-dtS / tau);
        double g = 0;
        double ex = 0;
        if (running && on) {
            g = AiPlanner.fatigueWeight(hz) * rho;
            ex = AutoEngine.EX_LOAD;
        } else if (running) {
            g = pauseHz > 0 ? AiPlanner.fatigueWeight(pauseHz) * pauseSigma * rho : 0;
            ex = 0.3 * AutoEngine.EX_LOAD;
        }
        for (int k = 0; k < fk.length; k++) {
            double mk = mus != null && k < mus.length ? Math.max(0, mus[k]) / 100.0 : 0;
            fk[k] = fk[k] * e + (g + ex * mk) * tau * (1 - e);
        }
    }

    /** The most tired channel, F / F_max. */
    public double fatigue() {
        return fMax > 0 ? peak() / fMax : 0;
    }

    /** Live load of each channel, F_k / F_max. */
    public double[] channelLoad() {
        double[] out = new double[fk.length];
        for (int k = 0; k < out.length; k++) {
            out[k] = fMax > 0 ? fk[k] / fMax : 0;
        }
        return out;
    }

    private double peak() {
        double m = 0;
        for (double v : fk) {
            m = Math.max(m, v);
        }
        return m;
    }

    /**
     * A set (exercise block) starts: its approach. {@code progress} 0…1 of the workout, {@code hr} the leader's
     * pulse (≤ 0 = none). Returns the approach's name ("" = the drawn impulse stays without approaches).
     */
    public String startSet(Step drawn, int move, boolean lock, double progress, int hr) {
        list = lock ? null : AutoDynamics.forMap(drawn, move, sessions, age);
        fresh = true;
        if (list == null) {
            idx = -1;
            return "";
        }
        AutoDynamics.Ctx x = new AutoDynamics.Ctx();
        x.fresh = 1 - Math.min(1, fatigue());
        x.progress = Math.max(0, Math.min(1, progress));
        x.hrHigh = hrCap > 0 && hr >= hrCap - 5;
        x.sessions = sessions;
        x.set = setN;
        x.used = used;
        // the indexes of the previous approaches by id (each block has its own list)
        x.prev = indexOf(prev);
        x.prev2 = indexOf(prev2);
        idx = Math.min(list.length - 1, AutoDynamics.pick(list, x));
        prev2 = prev;
        prev = key(list[idx]);
        int k = key(list[idx]);
        if (k >= 0 && k < used.length) {
            used[k]++;
        }
        setN++;
        return list[idx].id.equals(AutoDynamics.BASE) ? AiText.t("Както е нарисуван", "As drawn") : list[idx].name();
    }

    /** A plain block (no exercise): the drawn impulse, gliding only (🔒 = exactly as drawn). */
    public void startPlain(Step drawn, boolean lock) {
        list = !lock && drawn != null && drawn.isTetanic() ? new AutoDynamics.Approach[] {AutoDynamics.baseOf(drawn)} : null;
        idx = list != null ? 0 : -1;
        fresh = true;
    }

    /** One impulse (repetition) of the running block: the step to send now. */
    public Step cycle(Step drawn, boolean pauseOk) {
        if (drawn == null) {
            return null;
        }
        Step s = idx >= 0 && list != null
                ? AutoDynamics.apply(drawn, list[idx], AutoDynamics.glide(fatigue()), pauseOk) : drawn.copy();
        s.rampUpMs = AutoDynamics.ramp(s.rampUpMs, lastHz, s.hz, fresh);
        fresh = false;
        lastHz = s.hz;
        return s;
    }

    /** A rest block starts: how long it must last (s) — the drawn one, longer when the muscle is not back yet. */
    public int restS(int drawnS) {
        double f = peak();
        double t = f > fRec ? tau * Math.log(f / fRec) : 0;
        return (int) Math.round(Math.max(drawnS, Math.min(REST_MAX_S, t)));
    }

    /** Ids of the catalogue's approaches as small numbers (the drawn one = 0) for the variety memory. */
    private static int key(AutoDynamics.Approach a) {
        AutoDynamics.Approach[] all = {null, AutoDynamics.STRENGTH_PAUSE, AutoDynamics.PURE, AutoDynamics.VOLUME,
            AutoDynamics.METABOLIC, AutoDynamics.TONE, AutoDynamics.LIGHT_VOLUME};
        if (a == null || AutoDynamics.BASE.equals(a.id)) {
            return 0;
        }
        for (int i = 1; i < all.length; i++) {
            if (all[i] == a) {
                return i;
            }
        }
        return 7;
    }

    private int indexOf(int k) {
        for (int i = 0; list != null && i < list.length; i++) {
            if (key(list[i]) == k) {
                return i;
            }
        }
        return -1;
    }
}
