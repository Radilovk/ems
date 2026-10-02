package com.isaigu.gymapp.wearable;

import com.isaigu.gymapp.ai.AiEnergy;
import com.isaigu.gymapp.ai.AiHrFilter;
import com.isaigu.gymapp.ai.AiRestHr;

import java.util.ArrayDeque;
import java.util.Locale;

/**
 * Pulse module: heart-rate driven control of the impulse output, without any extra input.
 * Pure Java (tested by scripts/ai-sim). {@link HrGuard} drives it from the device.
 *
 * <p><b>Limits.</b> ↻ runs a 30 s resting calibration → lower limit HR_rest. The upper limit is
 * recommended automatically, HR_up = HR_rest + 0.65 · (HR_max − HR_rest) clamped to 130…160 (150 before
 * calibration): the average level above which EMS work turns mostly anaerobic — with the dose, the
 * risk zone for muscle breakdown. A value the trainer types has priority. Cap = HR_up + 12 → output 0.
 *
 * <p><b>Zone hold</b> (every second, docs/xems-pulse-control.md). The aim is to keep the HR just under
 * HR_up (target = HR_up − 3), not to wait for the limit. HR lags the load (τ ≈ 20 s, longer when unfit or
 * older), so the decision uses the forecast HR + slope·τ:
 * <ol>
 *   <li>HR ≥ cap → hold (output 0) until HR ≤ HR_up − 10;</li>
 *   <li>approach zone from HR_up − margin (15 % of HR_up, ≥ 15 bpm; wider for low fitness, 60+, HR
 *     medication): the HR may only glide to the target, slope ≤ (target − HR) / 40 s. Steeper, or a forecast
 *     over the target → one rung down the ladder, then ~15 s for the HR to react (one cycle when urgent);</li>
 *   <li>the ladder depends on what the program is ({@link #ladder}): tetanic (≥ 50 Hz) keeps the frequency
 *     to the end — strength first, then the double impulse, the pause, the impulse time; below 50 Hz the
 *     frequency (oxygen cost ∝ f/(f+25)) goes first. A lever that did not bend the HR curve twice is skipped;</li>
 *   <li>forecast well under the target and not rising for 20 s → the last step is given back (reverse order,
 *     +3 % per 10 s), never above the trainer's values.</li>
 * </ol>
 */
public final class HrGuardCore {
    public static final int CALIB_MS = 30000;
    public static final int UPPER_DEFAULT = 150;
    public static final int UPPER_MIN = 130;
    public static final int UPPER_MAX = 160;
    public static final int POP_HR_MAX = 180;
    public static final double UPPER_SHARE = 0.65;
    public static final int CAP_OVER = 12;
    public static final double LAG_S = 20.0;
    public static final double SLOPE_WINDOW_S = 30.0;
    /** Approach zone: starts this share of HR_up below it (≥ MARGIN_MIN bpm). */
    public static final double MARGIN_SHARE = 0.15;
    public static final int MARGIN_MIN = 15;
    public static final int MARGIN_MAX = 30;
    /** The HR is held this far under HR_up. */
    public static final int HOLD_BELOW = 3;
    /** Inside the zone the HR may close the gap to the target with this time constant (no overshoot). */
    public static final double GLIDE_S = 40.0;
    public static final double SLOPE_TOL = 0.03;
    /** Give back only when the forecast is this far under the target. */
    public static final int RESTORE_GAP = 6;
    public static final double S_SOFT_FLOOR = 0.70;
    public static final double S_FLOOR = 0.40;
    public static final double PW_FLOOR = 0.70;
    public static final int PW_MIN_US = 250;
    public static final double HZ_FLOOR = 0.70;
    public static final int HZ_MIN_TETANIC = 50;
    /** Frequency bands a cut never crosses: a fused contraction stays fused (≥ 20 Hz), twitches stay ≥ 2 Hz. */
    public static final int HZ_FUSION = 20;
    public static final int HZ_TWITCH_MIN = 2;
    public static final double PAUSE_STEP = 0.25;
    public static final int ON_MIN_S = 2;
    public static final int OFF_MAX_ADD_S = 8;
    public static final double RESTORE_STEP = 0.03;
    public static final long RESTORE_EVERY_MS = 10000L;
    public static final long CALM_MS = 20000L;
    public static final long MIN_ACT_GAP_MS = 6000L;
    public static final long SETTLE_MS = 15000L;
    public static final long EFFECT_CHECK_MS = 20000L;
    public static final long DRIFT_AFTER_MS = 15 * 60000L;

    /** STRENGTH, WIDTH (µs), FREQ (Hz), PAUSE (double impulse strength → off), OFF (+1 s), ON (−1 s). */
    public enum Lever { STRENGTH, WIDTH, FREQ, PAUSE, OFF, ON }

    /** What the running program is, by its frequency — decides the order of the levers. */
    public enum Kind { TETANIC, FUSED, TWITCH }

    /** One rung of the ladder: move {@code lever} as far as {@code limit} (factor; OFF / ON: × the base time). */
    public static final class Rung {
        public final Lever lever;
        public final double limit;

        Rung(Lever lever, double limit) {
            this.lever = lever;
            this.limit = limit;
        }
    }

    /** Current impulse parameters of the running program (trainer's values × guard factors). */
    public static final class Stim {
        public boolean running;
        public int hz;
        public int pwUs;
        public int onS;
        public int offS;
        public int strength;
        public boolean activePause;
        /** Active pause: absolute strength % and frequency (TrainItem sends them on the same channels). */
        public int pauseStrength;
        public int pauseHz;
        /** The trainer's values (0 = take the current one): the ladder's limits are measured from them. */
        public int baseHz;
        public int baseOnS;
        public int baseOffS;
        public boolean basePause;
        /** PartStrenthBean.buwei and TrainItem.partsDisabled of the row. */
        public int[] channels;
        public boolean[] disabled;
    }

    /** Session peak charge per channel = the level the person tolerated (energy model). */
    private final double[] peakCharge = new double[AiEnergy.CH_MASS.length];

    private final AiHrFilter filter = new AiHrFilter();
    private final ArrayDeque<double[]> recent = new ArrayDeque<double[]>();
    private AiEnergy energy = new AiEnergy();
    /** The client's predicted maximum HR (sex, age), else the population value. */
    private int hrMax = POP_HR_MAX;
    /** Client: approach margin share and HR lag (fitness, age, HR medication). */
    private double marginShare = MARGIN_SHARE;
    private double lagS = LAG_S;
    private AiRestHr calib;
    private int hrRest = -1;
    private int manualUpper = -1;
    private int maxStepPct = 10;

    private double sF = 1.0;
    private double pwF = 1.0;
    private double hzF = 1.0;
    /** Double impulse strength factor (0 = switched off), extra pause and shorter impulse in seconds. */
    private double pauseF = 1.0;
    private int offAdd;
    private int onCut;
    private boolean hold;
    private double sBeforeHold = 1.0;
    private long nextActMs;
    private long calmSinceMs = -1L;
    private long nextRestoreMs;
    private long runStartMs = -1L;
    private final int[] noEffect = new int[Lever.values().length];
    /** Steps taken, newest last: given back in reverse order. {lever ordinal, amount}. */
    private final ArrayDeque<double[]> steps = new ArrayDeque<double[]>();
    private Lever pendingLever;
    private double pendingSlope;
    private long pendingCheckMs = -1L;
    private String lastAction = "";
    private long lastActionMs;
    private double slope;
    private double forecast = -1;

    // ================================================================ configuration

    public void setManualUpper(int bpm) {
        manualUpper = bpm >= 80 && bpm <= 220 ? bpm : -1;
    }

    public void setMaxStepPct(int pct) {
        maxStepPct = Math.max(2, Math.min(20, pct));
    }

    public void setRestHr(int bpm) {
        hrRest = bpm >= 35 && bpm <= 120 ? bpm : -1;
        energy.setHeart(hrRest, hrMax);
    }

    /**
     * The client in the slot (sex, age, weight, fitness from the client record): personal
     * maximum HR for the upper limit, the approach margin and HR lag, and a personal energy model.
     * null = no client data. Starts the kcal count again.
     */
    public void setPerson(com.isaigu.gymapp.ai.AiModel.SessionInput person) {
        if (person == null) {
            hrMax = POP_HR_MAX;
            energy = new AiEnergy();
            marginShare = MARGIN_SHARE;
            lagS = LAG_S;
        } else {
            hrMax = com.isaigu.gymapp.ai.AiPlanner.hrMax(person.sex, person.age);
            energy = AiEnergy.forSession(person, null);
            boolean meds = person.screening != null && person.screening.hrLoweringMedication;
            marginShare = personMargin(person.fitness, person.age, meds);
            lagS = personLag(person.fitness, person.age);
        }
        energy.setHeart(hrRest, hrMax);
    }

    /**
     * Approach margin as a share of HR_up. HR kinetics are slower and the heart has less reserve when unfit
     * or older → start earlier; HR-lowering medication hides the load in the HR → start earlier [D].
     */
    public static double personMargin(com.isaigu.gymapp.ai.AiModel.Fitness fitness, int age, boolean meds) {
        double m = MARGIN_SHARE;
        if (fitness == com.isaigu.gymapp.ai.AiModel.Fitness.LOW) {
            m += 0.03;
        } else if (fitness == com.isaigu.gymapp.ai.AiModel.Fitness.HIGH) {
            m -= 0.02;
        }
        if (age >= 60) {
            m += 0.02;
        }
        if (meds) {
            m += 0.03;
        }
        return m;
    }

    /** HR response time constant: ~20 s, longer when unfit or 60+, shorter when trained [D]. */
    public static double personLag(com.isaigu.gymapp.ai.AiModel.Fitness fitness, int age) {
        double l = LAG_S;
        if (fitness == com.isaigu.gymapp.ai.AiModel.Fitness.LOW) {
            l += 5;
        } else if (fitness == com.isaigu.gymapp.ai.AiModel.Fitness.HIGH) {
            l -= 3;
        }
        if (age >= 60) {
            l += 5;
        }
        return Math.max(15, Math.min(30, l));
    }

    public int getHrMax() {
        return hrMax;
    }

    /** Recommended upper limit from the resting HR (no other input). */
    public static int autoUpper(int rest) {
        return autoUpper(rest, POP_HR_MAX);
    }

    /** Recommended upper limit from the resting HR and a (personal) maximum HR. */
    public static int autoUpper(int rest, int max) {
        if (rest <= 0) {
            if (max == POP_HR_MAX) {
                return UPPER_DEFAULT;
            }
            rest = AiEnergy.DEFAULT_HR_REST;         // personal max, typical resting HR
        }
        int u = (int) Math.round(rest + UPPER_SHARE * (max - rest));
        return Math.max(UPPER_MIN, Math.min(UPPER_MAX, u));
    }

    public int getAutoUpper() {
        return autoUpper(hrRest, hrMax);
    }

    /** Trainer's value wins; otherwise the recommended one. */
    public int getUpper() {
        return manualUpper > 0 ? manualUpper : getAutoUpper();
    }

    public int getCap() {
        return Math.min(200, getUpper() + CAP_OVER);
    }

    /** Where the approach zone starts: control begins here, before the limit. */
    public int getZoneStart() {
        int u = getUpper();
        int m = (int) Math.round(marginShare * u);
        return u - Math.max(MARGIN_MIN, Math.min(MARGIN_MAX, m));
    }

    /** The HR the module holds: just under the upper limit. */
    public int getTarget() {
        return getUpper() - HOLD_BELOW;
    }

    public boolean isManualUpper() {
        return manualUpper > 0;
    }

    // ================================================================ calibration

    public void startCalibration(long nowMs) {
        calib = new AiRestHr(true);
        calib.tick(nowMs);
    }

    public boolean isCalibrating() {
        return calib != null;
    }

    public double getCalibProgress() {
        return calib == null ? 0 : Math.min(1.0, calib.getMeasuredMs() / (double) calib.getTargetMs());
    }

    public long getCalibLeftMs() {
        return calib == null ? 0 : Math.max(0, calib.getTargetMs() - calib.getMeasuredMs());
    }

    public int getRestHr() {
        return hrRest;
    }

    // ================================================================ inputs

    public void onHr(long tMs, int bpm, boolean stimOn) {
        if (calib != null) {
            calib.onSample(tMs, bpm);
        }
        if (filter.onSample(tMs, bpm, stimOn)) {
            recent.addLast(new double[] {tMs / 1000.0, filter.getHrS()});
            while (!recent.isEmpty() && recent.peekFirst()[0] < tMs / 1000.0 - SLOPE_WINDOW_S) {
                recent.removeFirst();
            }
        }
    }

    /**
     * One control step (~1 Hz). Returns true when the factors changed.
     */
    public boolean tick(long nowMs, Stim stim, boolean control) {
        tickCalibration(nowMs);
        double hr = hrFresh(nowMs) ? filter.getHrS() : -1;
        energy.tick(nowMs, hr, energyStim(stim));
        slope = computeSlope();
        forecast = hr > 0 ? hr + Math.max(0, slope) * lagS : -1;
        if (stim == null || !stim.running || !control) {
            runStartMs = -1L;
            return false;
        }
        if (runStartMs < 0) {
            runStartMs = nowMs;
        }
        if (hr <= 0) {
            return false;                     // no fresh HR → keep the current factors
        }
        checkEffect(nowMs);
        int upper = getUpper();
        if (hold) {
            if (hr <= upper - 10) {
                hold = false;
                double soft = Math.min(sBeforeHold, S_SOFT_FLOOR);
                if (sBeforeHold > soft + 1e-9) {
                    steps.addLast(new double[] {Lever.STRENGTH.ordinal(), sBeforeHold - soft});
                }
                sF = soft;
                nextActMs = nowMs + cycleMs(stim);
                action("resume", nowMs);
                return true;
            }
            return false;
        }
        if (hr >= getCap()) {
            hold = true;
            sBeforeHold = sF;
            action("cap", nowMs);
            return true;
        }
        int target = getTarget();
        int zone = getZoneStart();
        boolean inZone = hr >= zone || forecast >= zone;
        if (inZone && nowMs >= nextActMs) {
            // glide: the HR may close the gap to the target only with time constant GLIDE_S
            double allowed = Math.max(0, target - hr) / GLIDE_S;
            double over = forecast - target;
            boolean steep = hr >= zone && slope > allowed + SLOPE_TOL;
            if (over > 0 || steep) {
                calmSinceMs = -1L;
                double urgency = Math.max(over, (slope - allowed) * lagS);
                return stepDown(nowMs, stim, Math.max(0, urgency));
            }
        }
        boolean calm = forecast <= target - RESTORE_GAP && slope <= 0.02;
        if (!calm) {
            calmSinceMs = -1L;
            return false;
        }
        if (calmSinceMs < 0) {
            calmSinceMs = nowMs;
        }
        if (nowMs - calmSinceMs >= CALM_MS && nowMs >= nextRestoreMs) {
            nextRestoreMs = nowMs + RESTORE_EVERY_MS;
            return stepUp(nowMs);
        }
        return false;
    }

    private void tickCalibration(long nowMs) {
        if (calib == null) {
            return;
        }
        calib.tick(nowMs);
        if (calib.getStatus() == AiRestHr.Status.UNSTABLE) {
            calib.acceptUnstable();
        }
        if (calib.getStatus() == AiRestHr.Status.DONE) {
            setRestHr(calib.getHrRest());
            action("calibrated", nowMs);
            calib = null;
        }
    }

    /** What the program is: by the trainer's frequency. */
    public static Kind kindOf(Stim s) {
        int hz = s.baseHz > 0 ? s.baseHz : s.hz;
        if (hz >= HZ_MIN_TETANIC) {
            return Kind.TETANIC;
        }
        return hz >= HZ_FUSION ? Kind.FUSED : Kind.TWITCH;
    }

    /**
     * The order of the levers (docs/xems-pulse-control.md, docs/xems-ems-physiology.md):
     * <ul>
     *   <li>TETANIC (strength work): above fusion the oxygen cost hardly depends on the frequency, the HR follows
     *     force × time under tension (pressor reflex) → a light strength trim, then the double impulse (it takes
     *     away the recovery between contractions), then a longer pause and a shorter impulse; width and
     *     frequency (kept fused) late; deep strength cuts last.</li>
     *   <li>FUSED / TWITCH (endurance, metabolic, massage): the cost per second rises with the frequency
     *     (f/(f+25)) → the frequency first (never across 20 Hz / under 2 Hz), then the same order.</li>
     * </ul>
     */
    public static Rung[] ladder(Kind kind) {
        Rung[] rest = {
                new Rung(Lever.PAUSE, 0.5), new Rung(Lever.PAUSE, 0.0),
                new Rung(Lever.OFF, 1.5), new Rung(Lever.ON, 0.75), new Rung(Lever.WIDTH, 0.8)};
        java.util.List<Rung> l = new java.util.ArrayList<Rung>();
        if (kind == Kind.TETANIC) {
            l.add(new Rung(Lever.STRENGTH, 0.85));
            java.util.Collections.addAll(l, rest);
            l.add(new Rung(Lever.FREQ, 0.75));
        } else {
            l.add(new Rung(Lever.FREQ, 0.8));
            l.add(new Rung(Lever.STRENGTH, 0.85));
            java.util.Collections.addAll(l, rest);
            l.add(new Rung(Lever.FREQ, HZ_FLOOR));
        }
        l.add(new Rung(Lever.STRENGTH, S_SOFT_FLOOR - 0.1));
        l.add(new Rung(Lever.OFF, 2.0));
        l.add(new Rung(Lever.STRENGTH, S_FLOOR));
        return l.toArray(new Rung[0]);
    }

    private boolean stepDown(long nowMs, Stim stim, double urgency) {
        double step = Math.min(maxStepPct / 100.0, 0.03 + 0.01 * urgency);
        if (runStartMs > 0 && nowMs - runStartMs > DRIFT_AFTER_MS) {
            step *= 1.5;                       // the HR drifts up with time at the same load
        }
        // Urgent: the forecast reaches the upper limit → two rungs at once, at the cap → three.
        int rungs = 1 + (forecast >= getUpper() ? 1 : 0) + (forecast >= getCap() ? 1 : 0);
        Rung r = null;
        for (int i = 0; i < rungs; i++) {
            Rung n = nextRung(stim);
            if (n == null) {
                break;
            }
            double moved = move(n, stim, step, nowMs);
            if (moved <= 0) {
                break;
            }
            steps.addLast(new double[] {n.lever.ordinal(), moved});
            if (r == null) {
                r = n;
            }
        }
        if (r == null) {
            return false;
        }
        pendingLever = r.lever;
        pendingSlope = slope;
        pendingCheckMs = nowMs + EFFECT_CHECK_MS;
        // Give the HR time to feel the step (it lags); a forecast at the upper limit hurries.
        nextActMs = nowMs + (forecast >= getUpper() ? cycleMs(stim) : Math.max(cycleMs(stim), SETTLE_MS));
        return true;
    }

    /** The first rung whose lever can still move (and has not failed twice). */
    private Rung nextRung(Stim stim) {
        for (Rung r : ladder(kindOf(stim))) {
            if (noEffect[r.lever.ordinal()] < 2 && room(r, stim) > 1e-9) {
                return r;
            }
        }
        for (Rung r : ladder(kindOf(stim))) {          // every lever failed: strength still works on the output
            if (r.lever == Lever.STRENGTH && room(r, stim) > 1e-9) {
                return r;
            }
        }
        return null;
    }

    /** How far the lever may still go on this rung (factor, or seconds for OFF / ON). */
    private double room(Rung r, Stim s) {
        switch (r.lever) {
            case STRENGTH:
                return sF - r.limit;
            case WIDTH:
                return s.pwUs >= PW_MIN_US || pwF < 1.0 ? pwF - Math.max(PW_FLOOR, r.limit) : 0;
            case FREQ:
                return hzF - Math.max(r.limit, hzMinFactor(s));
            case PAUSE:
                return (s.basePause || s.activePause) && (s.baseOffS > 0 || s.offS > 0) ? pauseF - r.limit : 0;
            case OFF: {
                int base = baseOff(s);
                int max = Math.min(OFF_MAX_ADD_S, Math.max(2, (int) Math.ceil(base * (r.limit - 1.0))));
                return max - offAdd;
            }
            default: {
                int base = baseOn(s);
                int minOn = Math.max(ON_MIN_S, (int) Math.ceil(base * r.limit));
                return base - onCut - minOn;
            }
        }
    }

    /** Applies one increment of the rung; returns the amount moved. */
    private double move(Rung r, Stim s, double step, long nowMs) {
        double room = room(r, s);
        double d;
        switch (r.lever) {
            case STRENGTH:
                d = Math.min(step, room);
                sF -= d;
                action("strength_down", nowMs);
                break;
            case WIDTH:
                d = Math.min(step, room);
                pwF -= d;
                action("width_down", nowMs);
                break;
            case FREQ:
                d = Math.min(step, room);
                hzF -= d;
                action("freq_down", nowMs);
                break;
            case PAUSE:
                d = Math.min(PAUSE_STEP, room);
                pauseF -= d;
                if (pauseF < 0.2) {
                    d += pauseF;
                    pauseF = 0;
                }
                action(pauseF <= 0 ? "pause_off" : "pause_down", nowMs);
                break;
            case OFF:
                d = Math.min(1, room);
                offAdd += (int) d;
                action("off_up", nowMs);
                break;
            default:
                d = Math.min(1, room);
                onCut += (int) d;
                action("on_down", nowMs);
                break;
        }
        return d;
    }

    /** Lowest frequency factor: a fused program stays ≥ 20 Hz, twitches ≥ 2 Hz. */
    private double hzMinFactor(Stim s) {
        int base = s.baseHz > 0 ? s.baseHz : (int) Math.round(s.hz / Math.max(0.1, hzF));
        if (base <= 0) {
            return 1.0;
        }
        int min = base >= HZ_FUSION ? HZ_FUSION : HZ_TWITCH_MIN;
        return Math.min(1.0, min / (double) base);
    }

    private int baseOn(Stim s) {
        return s.baseOnS > 0 ? s.baseOnS : s.onS + onCut;
    }

    private int baseOff(Stim s) {
        return s.baseOffS > 0 ? s.baseOffS : Math.max(0, s.offS - offAdd);
    }

    /** Did the last step bend the HR curve? Two misses → that lever is skipped. */
    private void checkEffect(long nowMs) {
        if (pendingLever == null || nowMs < pendingCheckMs) {
            return;
        }
        int i = pendingLever.ordinal();
        if (slope < pendingSlope - 0.05 || slope <= 0) {
            noEffect[i] = 0;
        } else {
            noEffect[i]++;
        }
        pendingLever = null;
    }

    /** Gives back the newest step (reverse order of the ladder); continuous levers +3 % at a time. */
    private boolean stepUp(long nowMs) {
        double[] top = steps.peekLast();
        if (top == null) {
            return false;
        }
        Lever lever = Lever.values()[(int) top[0]];
        double d = top[1];
        switch (lever) {
            case STRENGTH:
            case WIDTH:
            case FREQ:
                d = Math.min(RESTORE_STEP, top[1]);
                if (lever == Lever.STRENGTH) {
                    sF = Math.min(1.0, sF + d);
                } else if (lever == Lever.WIDTH) {
                    pwF = Math.min(1.0, pwF + d);
                } else {
                    hzF = Math.min(1.0, hzF + d);
                }
                break;
            case PAUSE:
                pauseF = Math.min(1.0, pauseF + d);
                break;
            case OFF:
                offAdd = Math.max(0, offAdd - (int) Math.round(d));
                break;
            default:
                onCut = Math.max(0, onCut - (int) Math.round(d));
                break;
        }
        top[1] -= d;
        if (top[1] <= 1e-9) {
            steps.removeLast();
        }
        action("restore", nowMs);
        return true;
    }

    /** Trainer changed a value by hand: it becomes the new base, that lever starts from 100 %. */
    public void onTrainerChange(Lever lever) {
        switch (lever) {
            case STRENGTH:
                sF = 1.0;
                hold = false;
                break;
            case WIDTH:
                pwF = 1.0;
                break;
            case FREQ:
                hzF = 1.0;
                break;
            case PAUSE:
                pauseF = 1.0;
                break;
            case OFF:
                offAdd = 0;
                break;
            default:
                onCut = 0;
                break;
        }
        noEffect[lever.ordinal()] = 0;
        java.util.Iterator<double[]> it = steps.iterator();
        while (it.hasNext()) {
            if ((int) it.next()[0] == lever.ordinal()) {
                it.remove();
            }
        }
    }

    public void resetFactors() {
        sF = 1.0;
        pwF = 1.0;
        hzF = 1.0;
        pauseF = 1.0;
        offAdd = 0;
        onCut = 0;
        hold = false;
        pendingLever = null;
        calmSinceMs = -1L;
        steps.clear();
        for (int i = 0; i < noEffect.length; i++) {
            noEffect[i] = 0;
        }
    }

    public void resetEnergy() {
        energy.reset();
        java.util.Arrays.fill(peakCharge, 0);
    }

    /** Channel-aware stimulation for the energy model, averaged over the impulse cycle. */
    private AiEnergy.Stim energyStim(Stim s) {
        if (s == null || !s.running || s.strength <= 0) {
            return null;
        }
        AiEnergy.Stim e = new AiEnergy.Stim();
        e.channels = s.channels;
        e.disabled = s.disabled;
        e.strengthPct = s.strength;
        e.hz = s.hz;
        e.pwUs = s.pwUs > 0 ? s.pwUs : 350;
        int on = Math.max(1, s.onS);
        int off = Math.max(0, s.offS);
        e.onShare = on / (double) (on + off);
        if (s.activePause && off > 0) {
            e.pauseStrengthPct = s.pauseStrength;
            e.pauseHz = s.pauseHz;
            e.pauseShare = off / (double) (on + off);
        }
        for (int i = 0; i < peakCharge.length; i++) {
            double ch = s.channels != null ? (i < s.channels.length ? s.channels[i] : 0) : 100;
            double q = ch / 100.0 * (i == AiEnergy.ARMS ? AiEnergy.armsSent(e.pwUs) : AiEnergy.channelSent(i, e.pwUs))
                    * Math.max(s.strength, s.activePause ? s.pauseStrength : 0) / 100.0 * e.pwUs / 350.0;
            peakCharge[i] = Math.max(peakCharge[i], q);
        }
        e.toleratedCharge = peakCharge.clone();
        return e;
    }

    /** Share of time with impulses: ON / (ON + OFF); 1 with active pause (impulse ↔ impulse). */
    static double duty(Stim s) {
        if (s.activePause) {
            return 1.0;
        }
        int on = Math.max(1, s.onS);
        return on / (double) (on + Math.max(0, s.offS));
    }

    private static long cycleMs(Stim s) {
        return Math.max(MIN_ACT_GAP_MS, (Math.max(1, s.onS) + Math.max(1, s.offS)) * 1000L);
    }

    private boolean hrFresh(long nowMs) {
        return filter.getHrS() > 0 && filter.ageMs(nowMs) < 10000L;
    }

    private double computeSlope() {
        int n = recent.size();
        if (n < 4) {
            return 0;
        }
        double mx = 0;
        double my = 0;
        for (double[] p : recent) {
            mx += p[0];
            my += p[1];
        }
        mx /= n;
        my /= n;
        double sxx = 0;
        double sxy = 0;
        for (double[] p : recent) {
            sxx += (p[0] - mx) * (p[0] - mx);
            sxy += (p[0] - mx) * (p[1] - my);
        }
        return sxx > 0 ? sxy / sxx : 0;
    }

    private void action(String code, long nowMs) {
        lastAction = code;
        lastActionMs = nowMs;
    }

    // ================================================================ outputs

    public double getStrengthFactor() {
        return hold ? 0 : sF;
    }

    public double getWidthFactor() {
        return pwF;
    }

    public double getFreqFactor() {
        return hzF;
    }

    /** Double impulse strength factor; 0 = the double impulse is switched off. */
    public double getPauseFactor() {
        return pauseF;
    }

    /** Seconds added to the trainer's pause. */
    public int getOffAdd() {
        return offAdd;
    }

    /** Seconds taken from the trainer's impulse time. */
    public int getOnCut() {
        return onCut;
    }

    public boolean isHold() {
        return hold;
    }

    public double getHr() {
        return filter.getHrS();
    }

    public double getSlope() {
        return slope;
    }

    public double getForecast() {
        return forecast;
    }

    public String getLastAction() {
        return lastAction;
    }

    public long getLastActionMs() {
        return lastActionMs;
    }

    public double getKcal() {
        return energy.getKcal();
    }

    public String csvHeader() {
        return "t_ms,hr,slope,forecast,rest,upper,cap,hz,pw_us,on_s,off_s,strength,active_pause,"
                + "s_factor,pw_factor,hz_factor,pause_factor,on_cut,off_add,zone,target,hold,action,kcal";
    }

    public String csvRow(long nowMs, Stim s) {
        return String.format(Locale.US, "%d,%.1f,%.3f,%.1f,%d,%d,%d,%d,%d,%d,%d,%d,%d,%.2f,%.2f,%.2f,%.2f,%d,%d,%d,%d,%d,%s,%.1f",
                nowMs, filter.getHrS(), slope, forecast, hrRest, getUpper(), getCap(),
                s != null ? s.hz : 0, s != null ? s.pwUs : 0, s != null ? s.onS : 0, s != null ? s.offS : 0,
                s != null ? s.strength : 0, s != null && s.activePause ? 1 : 0,
                getStrengthFactor(), pwF, hzF, pauseF, onCut, offAdd, getZoneStart(), getTarget(), hold ? 1 : 0, lastAction, energy.getKcal());
    }
}
