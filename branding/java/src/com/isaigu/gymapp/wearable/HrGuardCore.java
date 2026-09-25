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
 * recommended automatically, HR_up = HR_rest + 0.65 · (180 − HR_rest) clamped to 130…160 (150 before
 * calibration): the average level above which EMS work turns mostly anaerobic — with the dose, the
 * risk zone for muscle breakdown. A value the trainer types has priority. Cap = HR_up + 12 → output 0.
 *
 * <p><b>Decision</b> (every second). HR lags the load by ~20 s, so it acts on the forecast
 * HR + slope·20 s, not on the current value:
 * <ol>
 *   <li>HR ≥ cap → hold (output 0) until HR ≤ HR_up − 10;</li>
 *   <li>forecast > HR_up → one step down, then ~15 s for the HR to react (one impulse cycle
    when the forecast reaches the cap). The lever:
 *     strength (to 70 %) → pulse width (≥ 250 µs, to 70 %) → frequency (tetanic > 50 Hz, to 70 %)
 *     → strength (to 40 %). A lever that did not bend the HR curve twice in a row is skipped.
 *     Step = 3 % + 1 % per bpm over, up to the trainer's step; ×1.5 after 15 min (drift),
 *     ×0.5 for twitch programs (&lt; 20 Hz, HR is not driven by the impulses);</li>
 *   <li>HR ≤ HR_up − 8 and not rising for 20 s → give back in reverse order, +3 % per 10 s,
 *     never above the trainer's values.</li>
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
    public static final double S_SOFT_FLOOR = 0.70;
    public static final double S_FLOOR = 0.40;
    public static final double PW_FLOOR = 0.70;
    public static final int PW_MIN_US = 250;
    public static final double HZ_FLOOR = 0.70;
    public static final int HZ_MIN_TETANIC = 50;
    public static final double RESTORE_STEP = 0.03;
    public static final long RESTORE_EVERY_MS = 10000L;
    public static final long CALM_MS = 20000L;
    public static final long MIN_ACT_GAP_MS = 6000L;
    public static final long SETTLE_MS = 15000L;
    public static final long EFFECT_CHECK_MS = 20000L;
    public static final long DRIFT_AFTER_MS = 15 * 60000L;

    public enum Lever { STRENGTH, WIDTH, FREQ }

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
    private AiRestHr calib;
    private int hrRest = -1;
    private int manualUpper = -1;
    private int maxStepPct = 10;

    private double sF = 1.0;
    private double pwF = 1.0;
    private double hzF = 1.0;
    private boolean hold;
    private double sBeforeHold = 1.0;
    private long nextActMs;
    private long calmSinceMs = -1L;
    private long nextRestoreMs;
    private long runStartMs = -1L;
    private final int[] noEffect = new int[3];
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
     * maximum HR for the upper limit and a personal energy model. null = no client data.
     * Starts the kcal count again.
     */
    public void setPerson(com.isaigu.gymapp.ai.AiModel.SessionInput person) {
        if (person == null) {
            hrMax = POP_HR_MAX;
            energy = new AiEnergy();
        } else {
            hrMax = com.isaigu.gymapp.ai.AiPlanner.hrMax(person.sex, person.age);
            energy = AiEnergy.forSession(person, null);
        }
        energy.setHeart(hrRest, hrMax);
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
        forecast = hr > 0 ? hr + Math.max(0, slope) * LAG_S : -1;
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
                sF = Math.min(sBeforeHold, S_SOFT_FLOOR);
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
        if (forecast > upper && nowMs >= nextActMs) {
            calmSinceMs = -1L;
            return stepDown(nowMs, stim, hr, upper);
        }
        boolean calm = hr <= upper - 8 && slope <= 0.02;
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

    private boolean stepDown(long nowMs, Stim stim, double hr, int upper) {
        double over = forecast - upper;
        double step = Math.min(maxStepPct / 100.0, 0.03 + 0.01 * over);
        if (runStartMs > 0 && nowMs - runStartMs > DRIFT_AFTER_MS) {
            step *= 1.5;
        }
        boolean twitch = stim.hz > 0 && stim.hz < 20;
        if (twitch) {
            step *= 0.5;
        }
        Lever lever = chooseLever(stim, twitch);
        if (lever == null) {
            return false;
        }
        pendingLever = lever;
        pendingSlope = slope;
        pendingCheckMs = nowMs + EFFECT_CHECK_MS;
        // Give the HR time to feel the step (it lags ~20 s); only a forecast at the cap hurries.
        nextActMs = nowMs + (forecast >= getCap() ? cycleMs(stim) : Math.max(cycleMs(stim), SETTLE_MS));
        switch (lever) {
            case WIDTH:
                pwF = Math.max(PW_FLOOR, pwF - step);
                action("width_down", nowMs);
                break;
            case FREQ:
                hzF = Math.max(HZ_FLOOR, hzF - step);
                action("freq_down", nowMs);
                break;
            default:
                double floor = sF > S_SOFT_FLOOR + 1e-9 ? S_SOFT_FLOOR : S_FLOOR;
                sF = Math.max(floor, sF - step);
                action("strength_down", nowMs);
                break;
        }
        return true;
    }

    private Lever chooseLever(Stim stim, boolean twitch) {
        boolean sSoft = sF > S_SOFT_FLOOR + 1e-9 && noEffect[0] < 2;
        boolean width = !twitch && stim.pwUs >= PW_MIN_US && pwF > PW_FLOOR + 1e-9 && noEffect[1] < 2;
        boolean freq = !twitch && stim.hz > HZ_MIN_TETANIC && hzF > HZ_FLOOR + 1e-9 && noEffect[2] < 2;
        if (sSoft) {
            return Lever.STRENGTH;
        }
        if (width) {
            return Lever.WIDTH;
        }
        if (freq) {
            return Lever.FREQ;
        }
        if (sF > S_FLOOR + 1e-9) {
            return Lever.STRENGTH;
        }
        return null;
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

    private boolean stepUp(long nowMs) {
        if (sF < S_SOFT_FLOOR - 1e-9) {
            sF = Math.min(S_SOFT_FLOOR, sF + RESTORE_STEP);
        } else if (hzF < 1.0) {
            hzF = Math.min(1.0, hzF + RESTORE_STEP);
        } else if (pwF < 1.0) {
            pwF = Math.min(1.0, pwF + RESTORE_STEP);
        } else if (sF < 1.0) {
            sF = Math.min(1.0, sF + RESTORE_STEP);
        } else {
            return false;
        }
        action("restore", nowMs);
        return true;
    }

    /** Trainer changed a value by hand: it becomes the new base, that lever starts from 100 %. */
    public void onTrainerChange(Lever lever) {
        if (lever == Lever.STRENGTH) {
            sF = 1.0;
            hold = false;
        } else if (lever == Lever.WIDTH) {
            pwF = 1.0;
        } else {
            hzF = 1.0;
        }
        noEffect[lever.ordinal()] = 0;
    }

    public void resetFactors() {
        sF = 1.0;
        pwF = 1.0;
        hzF = 1.0;
        hold = false;
        pendingLever = null;
        calmSinceMs = -1L;
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
            double q = ch / 100.0 * (i == AiEnergy.ARMS ? AiEnergy.ARMS_SENT : 1.0)
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
                + "s_factor,pw_factor,hz_factor,hold,action,kcal";
    }

    public String csvRow(long nowMs, Stim s) {
        return String.format(Locale.US, "%d,%.1f,%.3f,%.1f,%d,%d,%d,%d,%d,%d,%d,%d,%d,%.2f,%.2f,%.2f,%d,%s,%.1f",
                nowMs, filter.getHrS(), slope, forecast, hrRest, getUpper(), getCap(),
                s != null ? s.hz : 0, s != null ? s.pwUs : 0, s != null ? s.onS : 0, s != null ? s.offS : 0,
                s != null ? s.strength : 0, s != null && s.activePause ? 1 : 0,
                getStrengthFactor(), pwF, hzF, hold ? 1 : 0, lastAction, energy.getKcal());
    }
}
