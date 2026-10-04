package com.isaigu.gymapp.ai;

import com.isaigu.gymapp.ai.AutoModel.Phase;
import com.isaigu.gymapp.ai.AutoModel.Plan;
import com.isaigu.gymapp.ai.AutoModel.Step;
import com.isaigu.gymapp.ai.AutoModel.Window;

import static com.isaigu.gymapp.ai.AutoModel.ABS;
import static com.isaigu.gymapp.ai.AutoModel.BACK;
import static com.isaigu.gymapp.ai.AutoModel.BACK_THIGH;
import static com.isaigu.gymapp.ai.AutoModel.CHANNELS;
import static com.isaigu.gymapp.ai.AutoModel.CHEST;
import static com.isaigu.gymapp.ai.AutoModel.FRONT_THIGH;
import static com.isaigu.gymapp.ai.AutoModel.LOWER_BACK;

/**
 * Hard limits of the automatic mode (spec §4.1 L1–L10, §4.2 windows). Every cycle and every
 * manual change goes through here; nothing reaches the suit without passing these.
 */
public final class AutoLimits {
    private AutoLimits() {}

    public static final int ON_MAX_ACTIVE = 6;
    public static final int ON_MAX_PASSIVE = 4;
    public static final int ON_MAX_WAVE = 3;
    public static final int RAMP_MIN_TETANIC_MS = 300;
    public static final int PW_MIN = 150;
    public static final int PW_MAX = 400;
    /** Strength units a person may add per cycle (G3). */
    public static final int RAISE_PER_CYCLE = 5;

    /** L1: longest ON of a tetanic step (f ≥ 20 Hz). */
    public static int onMax(Plan plan, Phase ph) {
        if (ph != null && ph.wave) {
            return ON_MAX_WAVE;
        }
        boolean passive = plan.program != null && !plan.program.isActive();
        if (passive || (plan.input != null && plan.input.solo())) {
            return ON_MAX_PASSIVE;
        }
        return ON_MAX_ACTIVE;
    }

    /** L4 / L5: pulse width range for a frequency. */
    public static int pwMax(int hz) {
        if (hz >= 100) {
            return 300;
        }
        return PW_MAX;
    }

    /** Highest frequency for the client (age ≥ 60 → 85 Hz). */
    public static int hzMax(Plan plan) {
        return age(plan) >= 60 ? 85 : 120;
    }

    /**
     * L1–L6 on one step; {@code next} is the step that follows (a non-tetanic step after a
     * tetanic one counts as its rest, as in the 85 ↔ 6 Hz alternation).
     */
    /** The age the limits use: the questionnaire's, or an older client on the rows (one cycle goes to all). */
    static int age(Plan plan) {
        return Math.max(plan.input != null ? plan.input.age : -1, plan.limitAge);
    }

    public static Step clampStep(Step s, Step next, Plan plan, Phase ph) {
        Step c = s.copy();
        c.hz = clamp(c.hz, 1, hzMax(plan));
        c.pwUs = clamp(c.pwUs, PW_MIN, pwMax(c.hz));
        c.onS = Math.max(1, c.onS);
        c.offS = Math.max(1, c.offS);
        if (c.isTetanic() && c.sigma > 0) {
            c.onS = Math.min(c.onS, onMax(plan, ph));
            c.rampUpMs = Math.max(RAMP_MIN_TETANIC_MS, c.rampUpMs);
            int rest = c.offS + (next != null && !next.isTetanic() ? next.durationS() : 0);
            boolean passive = plan.program != null && !plan.program.isActive();
            int need = ph != null && ph.wave ? 1
                    : passive ? c.onS : (int) Math.ceil(0.66 * c.onS);
            if (rest < need) {
                c.offS += need - rest;
            }
        }
        if (c.pauseHz > 0) {
            c.pauseHz = clamp(c.pauseHz, 1, 10);
            c.pauseSigma = Math.max(0, Math.min(0.6, c.pauseSigma));
        }
        // the absolute limits of every mode (SafeLimits, 1.1.323) — what the suit's guard would enforce anyway
        int[] v = SafeLimits.cycle(c.hz, c.pwUs, c.onS, c.offS, c.pauseHz, c.pauseSigma, c.rampUpMs, age(plan));
        c.hz = v[SafeLimits.HZ];
        c.pwUs = v[SafeLimits.PW];
        c.onS = v[SafeLimits.ON];
        c.offS = v[SafeLimits.OFF];
        c.rampUpMs = c.isTetanic() ? Math.max(c.rampUpMs, v[SafeLimits.RAMP]) : c.rampUpMs;
        if (v[SafeLimits.AP] == 0) {
            c.pauseHz = 0;
            c.pauseSigma = 0;
        } else {
            c.pauseHz = v[SafeLimits.PHZ];
        }
        return c;
    }

    /**
     * §4.2: the person's value for one parameter, kept inside the phase window around the
     * program's value. Returns the allowed value.
     */
    public static int windowHz(Window w, int base, int wanted) {
        if (w == null || !w.hz) {
            return base;
        }
        int d = Math.max(1, (int) Math.round(base * w.hzShare));
        return clamp(wanted, base - d, base + d);
    }

    public static int windowOn(Window w, int base, int wanted) {
        if (w == null || !w.on) {
            return base;
        }
        return clamp(wanted, Math.max(1, base - w.onMinus), base + w.onPlus);
    }

    public static int windowOff(Window w, int base, int wanted) {
        if (w == null || !w.off) {
            return base;
        }
        return clamp(wanted, Math.max(1, base - w.offMinus), base + w.offPlus);
    }

    public static int windowPw(Window w, int base, int wanted) {
        if (w == null || !w.pw) {
            return base;
        }
        return clamp(wanted, base - w.pwDelta, base + w.pwDelta);
    }

    /**
     * Zones a person set, brought back into the limits (owner, 1.1.286 — every channel is the trainer's to set):
     * down freely to 0, up at most +zoneDelta over the step's own value and the per-zone maximum; locks hold;
     * every channel on its own — never tied to another (owner, 1.1.290: the electrodes are independent).
     */
    public static int[] clampZones(int[] wanted, Plan plan) {
        return clampZones(wanted, plan.zones, plan);
    }

    /** As above against {@code base} — the zones the running step asks for (a wave, an even step, the plan). */
    public static int[] clampZones(int[] wanted, int[] base, Plan plan) {
        int[] z = new int[CHANNELS];
        for (int i = 0; i < CHANNELS; i++) {
            int b = base != null && i < base.length ? base[i] : plan.zones[i];
            int v = wanted != null && i < wanted.length ? wanted[i] : b;
            if (plan.zoneLocked[i]) {
                v = Math.min(b, plan.zones[i]);
            } else {
                v = Math.min(v, b + plan.zoneDelta);
            }
            z[i] = clamp(v, 0, Math.min(100, plan.zoneMax[i]));
        }
        return z;
    }

    /**
     * One row's strength for a cycle: what the plan wants for this person (calibration × plan
     * factor × the person's own factor), never above the envelope, and never more than
     * {@link #RAISE_PER_CYCLE} above the last cycle.
     */
    public static int rowStrength(int cal, double frac, double user, double ceiling, int last) {
        if (cal <= 0 || frac <= 0) {
            return 0;
        }
        int want = (int) Math.round(cal * frac * user);
        int cap = (int) Math.floor(cal * ceiling + 1e-9);
        int v = Math.min(want, cap);
        if (last >= 0 && v > last + RAISE_PER_CYCLE) {
            v = last + RAISE_PER_CYCLE;
        }
        return clamp(v, 0, 100);
    }

    static int clamp(int v, int lo, int hi) {
        return v < lo ? lo : v > hi ? hi : v;
    }
}
