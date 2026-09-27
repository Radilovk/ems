package com.isaigu.gymapp.ai;

import com.isaigu.gymapp.ai.AutoModel.HrUse;
import com.isaigu.gymapp.ai.AutoModel.Phase;
import com.isaigu.gymapp.ai.AutoModel.Plan;
import com.isaigu.gymapp.ai.AutoModel.Step;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/**
 * Automatic mode runtime (spec §4, §7, §8): walks the plan cycle by cycle and gives each cycle's
 * parameters, planned strength factor and strength ceiling. Open loop — the heart rate only
 * stops the output at the ceiling (L11) and, in corridor programs, lengthens the pause.
 * Pure Java: time comes in as milliseconds, nothing here touches Android.
 */
public final class AutoEngine {
    public enum State { READY, RUN, USER_PAUSE, HR_PAUSE, DONE, STOPPED }

    /** One cycle as it goes to the rows. */
    public static final class Cmd {
        public int hz;
        public int pwUs;
        public int onS;
        public int offS;
        public int rampUpMs;
        public int rampDownMs;
        /** Planned strength factor against each row's calibration. */
        public double frac;
        /** Highest factor a person may set against the calibration now. */
        public double ceiling;
        /** Channel % for a wave step, or null = the plan zones with each row's offsets. */
        public int[] zones;
        public int pauseHz;
        public double pauseSigma;
        public int phaseIndex;
        public int stepIndex;
        public long startMs;
        /** The program's own step (before the person's window changes). */
        public Step base;
        /** Phase factor and envelope at this moment, and step σ × re-entry (for other rows). */
        public double phi;
        public double env;
        public double scale;

        public int durationMs() {
            return (onS + Math.max(1, offS)) * 1000;
        }
    }

    private static final long HR_STALE_MS = 10000L;
    private static final long HR_RESUME_HOLD_MS = 20000L;
    private static final long FALLBACK_SLACK_MS = 1500L;

    private final Plan plan;
    private State state = State.READY;

    private double elapsedS;
    private long lastTickMs;
    private int phaseIndex;
    private int stepIndex;
    private Cmd current;

    // person's changes inside the phase window (reset with each phase)
    private int userHz = -1;
    private int userOn = -1;
    private int userOff = -1;
    private int userPw = -1;
    private boolean doublePulse;

    // heart rate
    private int hr = -1;
    private long hrMs;
    private int hrMaxSeen;
    private double hrSum;
    private int hrCount;
    private long hrOkSinceMs;
    private int corridorExt;
    private double inCorridorS;
    private double hrKnownS;
    private int capHits;
    private boolean resumeNeedsConfirm;

    // pause / re-entry
    private long pauseStartMs;
    private double reentry = 1.0;
    private double totalPauseS;

    // dose
    private double qUsed;
    private double qPlanned;
    private int doseExt;
    private boolean raiseLocked;
    private double userScale = 1.0;
    private double userScaleMax = 1.0;

    private long startMs;
    private long endMs;
    private final List<String> log = new ArrayList<String>();

    public AutoEngine(Plan plan) {
        this.plan = plan;
        this.doublePulse = plan.doublePulseAllowed && plan.input.doublePulse;
    }

    // ================================================================ control

    public void start(long now) {
        startMs = now;
        lastTickMs = now;
        state = State.RUN;
        phaseIndex = 0;
        stepIndex = 0;
        elapsedS = 0;
        log(now, "start " + plan.program.id + " T=" + plan.totalS + "s φmax=" + fmt(plan.phiMax)
                + " E=" + fmt(plan.envMax) + " cap=" + plan.hrCap);
        nextCycle(now);
    }

    public void stop(long now) {
        if (state != State.DONE) {
            state = State.STOPPED;
            endMs = now;
            log(now, "stop");
        }
    }

    public void userPause(long now) {
        if (state == State.RUN) {
            state = State.USER_PAUSE;
            pauseStartMs = now;
            log(now, "pause");
        }
    }

    public boolean canResume() {
        return state == State.USER_PAUSE || (state == State.HR_PAUSE && resumeNeedsConfirm);
    }

    public void resume(long now) {
        if (!canResume()) {
            return;
        }
        double pauseS = (now - pauseStartMs) / 1000.0;
        totalPauseS += pauseS;
        // Muscles and heart cooled down: first pulses softer, +0.1 per cycle back to 1 (AI §5).
        reentry = pauseS >= 30 ? clamp(1.0 - pauseS / 600.0, 0.6, 0.9) : Math.min(reentry, 1.0);
        if (state == State.HR_PAUSE) {
            reentry = Math.min(reentry, 0.8);
        }
        state = State.RUN;
        resumeNeedsConfirm = false;
        lastTickMs = now;
        log(now, "resume after " + Math.round(pauseS) + "s r=" + fmt(reentry));
        nextCycle(now);
    }

    /** Straight to the cool-down (never past it). */
    public void skipToCooldown(long now) {
        int idx = -1;
        for (int i = 0; i < plan.phases.size(); i++) {
            if (plan.phases.get(i).isCooldown()) {
                idx = i;
            }
        }
        if (idx < 0) {
            idx = plan.phases.size() - 1;      // no cool-down: the last (calmest) phase
        }
        if (idx < 0 || idx <= phaseIndex) {
            return;
        }
        double t = 0;
        for (int i = 0; i < idx; i++) {
            t += plan.phases.get(i).durationS;
        }
        elapsedS = t;
        enterPhase(idx, now);
        log(now, "skip → cool-down");
        if (state == State.RUN) {
            nextCycle(now);
        }
    }

    public boolean isDoublePulseAvailable() {
        if (!plan.doublePulseAllowed) {
            return false;
        }
        for (int i = phaseIndex; i < plan.phases.size(); i++) {
            for (Step s : plan.phases.get(i).steps) {
                if (s.pauseHz > 0) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean isDoublePulseOn() {
        return doublePulse;
    }

    public void setDoublePulse(boolean on, long now) {
        if (!plan.doublePulseAllowed) {
            return;
        }
        doublePulse = on;
        log(now, "double pulse " + (on ? "on" : "off"));
    }

    /**
     * A person moved Hz / ON / OFF / width on the main screen (−1 = that one did not change):
     * kept for this phase, inside the window and L1–L6. OFF is the program's pause, without the
     * corridor / dose extension. Returns the cycle as it will be sent.
     */
    public Cmd userParams(int hz, int on, int off, int pw, long now) {
        Phase ph = phase();
        if (ph == null || current == null || current.base == null) {
            return current;
        }
        Step b = current.base;
        if (hz > 0) {
            userHz = ph.window.hz ? AutoLimits.windowHz(ph.window, b.hz, hz) : -1;
        }
        if (on > 0) {
            userOn = ph.window.on ? AutoLimits.windowOn(ph.window, b.onS, on) : -1;
        }
        if (off > 0) {
            userOff = ph.window.off ? AutoLimits.windowOff(ph.window, b.offS, off) : -1;
        }
        if (pw > 0) {
            userPw = ph.window.pw ? AutoLimits.windowPw(ph.window, b.pwUs, pw) : -1;
        }
        Cmd c = refresh(now);
        log(now, "user params hz=" + c.hz + " on=" + c.onS + " off=" + c.offS + " pw=" + c.pwUs);
        return c;
    }

    /** The running cycle again with the current settings (same start). */
    public Cmd refresh(long now) {
        Phase ph = phase();
        if (ph == null || current == null) {
            return current;
        }
        Cmd c = build(ph, current.stepIndex, now);
        c.startMs = current.startMs;
        current = c;
        return c;
    }

    /** Extra pause the engine adds now (corridor + dose), on top of the program's OFF. */
    public int getOffExtension() {
        return corridorExt + doseExt;
    }

    /** Highest of the rows' own factors (strength / (calibration × plan)) — for the dose. */
    public void setUserScale(double s) {
        userScale = Math.max(0, s);
        userScaleMax = Math.max(userScaleMax, userScale);
    }

    public void onHr(long now, int bpm) {
        if (bpm < 30 || bpm > 220) {
            return;
        }
        hr = bpm;
        hrMs = now;
        hrMaxSeen = Math.max(hrMaxSeen, bpm);
        hrSum += bpm;
        hrCount++;
    }

    // ================================================================ clock

    /** The device starts an ON phase: the next cycle (a double hook inside a cycle is ignored). */
    public Cmd onCycle(long now) {
        if (state != State.RUN) {
            return null;
        }
        if (current != null && now - current.startMs < current.durationMs() - 700) {
            return current;
        }
        tick(now);
        if (state != State.RUN) {
            return null;
        }
        return nextCycle(now);
    }

    public void tick(long now) {
        double dt = Math.max(0, (now - lastTickMs) / 1000.0);
        lastTickMs = now;
        boolean fresh = hr > 0 && now - hrMs <= HR_STALE_MS;
        if (fresh && state == State.RUN) {
            hrKnownS += dt;
            if (plan.hrUse == HrUse.CORRIDOR && inCorridor()) {
                inCorridorS += dt;
            }
        }
        if (state == State.HR_PAUSE) {
            int resumeAt = Math.min(plan.hrCap - 10, plan.corridorHiHr() > 0 ? plan.corridorHiHr() : 999);
            if (fresh && hr <= resumeAt) {
                if (hrOkSinceMs == 0) {
                    hrOkSinceMs = now;
                } else if (now - hrOkSinceMs >= HR_RESUME_HOLD_MS) {
                    if (plan.input.solo()) {
                        resumeNeedsConfirm = true;     // SOLO: a person confirms
                    } else {
                        resumeNeedsConfirm = true;
                        resume(now);
                    }
                }
            } else {
                hrOkSinceMs = 0;
            }
            return;
        }
        if (state != State.RUN) {
            return;
        }
        // L11: heart rate at the ceiling → the output stops.
        if (plan.hrUse != HrUse.NONE && fresh && hr >= plan.hrCap) {
            state = State.HR_PAUSE;
            pauseStartMs = now;
            hrOkSinceMs = 0;
            capHits++;
            log(now, "HR " + hr + " ≥ cap " + plan.hrCap + " → pause");
            return;
        }
        elapsedS += dt;
        if (elapsedS >= plan.totalS) {
            state = State.DONE;
            endMs = now;
            log(now, "done");
            return;
        }
        int idx = phaseAt(elapsedS);
        if (idx != phaseIndex) {
            enterPhase(idx, now);
        }
        // Engine clock: the device hook did not come → the next cycle anyway.
        if (current != null && now - current.startMs >= current.durationMs() + FALLBACK_SLACK_MS) {
            nextCycle(now);
        }
    }

    private void enterPhase(int idx, long now) {
        phaseIndex = idx;
        stepIndex = 0;
        userHz = userOn = userOff = userPw = -1;
        corridorExt = 0;
        log(now, "phase " + phase().id);
    }

    private Cmd nextCycle(long now) {
        Phase ph = phase();
        if (ph == null) {
            return null;
        }
        // dose of the finished cycle
        if (current != null && current.base != null && current.frac > 0) {
            boolean pause = doublePulse && current.pauseHz > 0;
            qUsed += AutoPlanner.cycleDose(current.base, current.frac * userScale, pause);
            qPlanned += AutoPlanner.cycleDose(current.base, current.frac / Math.max(0.01, reentry), pause);
            double ratio = qPlanned > 0 ? qUsed / qPlanned : 0;
            if (ratio > 1.1) {
                doseExt = Math.min(doseExt + 1, Math.max(1, current.base.offS / 2));
            } else if (ratio < 1.05 && doseExt > 0) {
                doseExt--;
            }
            raiseLocked = ratio > 1.2;
        }
        if (qUsed >= plan.qBudget && !ph.isCooldown() && plan.qBudget > 0) {
            log(now, "dose budget reached → cool-down");
            skipToCooldown(now);
            ph = phase();
        }
        // corridor: above → longer pause, back below → shorter again
        if (plan.hrUse == HrUse.CORRIDOR && hr > 0 && now - hrMs <= HR_STALE_MS && !ph.isCooldown()
                && !"WARMUP".equals(ph.id)) {
            int hi = plan.corridorHiHr();
            if (hr > hi) {
                corridorExt = Math.min(corridorExt + 1, 3);
            } else if (hr < hi - 5 && corridorExt > 0) {
                corridorExt--;
            }
        }
        Cmd c = build(ph, stepIndex, now);
        c.startMs = now;
        current = c;
        stepIndex++;
        if (reentry < 1.0) {
            reentry = Math.min(1.0, reentry + 0.1);
        }
        return c;
    }

    private Cmd build(Phase ph, int step, long now) {
        Step base = ph.steps.get(step % ph.steps.size());
        Step next = ph.steps.size() > 1 ? ph.steps.get((step + 1) % ph.steps.size()) : null;
        Step s = base.copy();
        if (userHz > 0) {
            s.hz = userHz;
        }
        if (userOn > 0) {
            s.onS = userOn;
        }
        if (userOff > 0) {
            s.offS = userOff;
        }
        if (userPw > 0) {
            s.pwUs = userPw;
        }
        s.offS += corridorExt + doseExt;
        s = AutoLimits.clampStep(s, next, plan, ph);
        double p = ph.durationS > 0 ? phaseElapsed() / ph.durationS : 0;
        Cmd c = new Cmd();
        c.base = base;
        c.hz = s.hz;
        c.pwUs = s.pwUs;
        c.onS = s.onS;
        c.offS = s.offS;
        c.rampUpMs = s.rampUpMs;
        c.rampDownMs = s.rampDownMs;
        c.zones = s.zones;
        c.phaseIndex = phaseIndex;
        c.stepIndex = step;
        c.phi = ph.phiAt(p);
        c.env = ph.envAt(p);
        c.scale = s.sigma * reentry;
        double phi = Math.min(plan.phiMax, c.phi);
        c.frac = phi * s.sigma * reentry;
        double env = Math.min(plan.envMax, ph.envAt(p)) * plan.phiMax * s.sigma * reentry;
        c.ceiling = raiseLocked ? Math.min(Math.max(c.frac, env), c.frac * Math.max(1.0, userScale))
                : Math.max(c.frac, env);
        if (doublePulse && s.pauseHz > 0 && s.pauseSigma > 0) {
            c.pauseHz = s.pauseHz;
            c.pauseSigma = s.pauseSigma * (plan.input.solo() ? Math.min(1, 0.40 / s.pauseSigma) : 1);
        }
        return c;
    }

    /** A row with its own limits (φ max, E max from its client's plan) on this cycle. */
    public static double rowFrac(Cmd c, double rowPhiMax) {
        return c == null ? 0 : Math.min(rowPhiMax, c.phi) * c.scale;
    }

    public double rowCeiling(Cmd c, double rowPhiMax, double rowEnvMax) {
        if (c == null) {
            return 0;
        }
        double f = rowFrac(c, rowPhiMax);
        double env = Math.max(f, Math.min(rowEnvMax, c.env) * rowPhiMax * c.scale);
        return raiseLocked ? Math.min(env, f * Math.max(1.0, userScale)) : env;
    }

    private int phaseAt(double t) {
        double acc = 0;
        for (int i = 0; i < plan.phases.size(); i++) {
            acc += plan.phases.get(i).durationS;
            if (t < acc) {
                return i;
            }
        }
        return plan.phases.size() - 1;
    }

    private boolean inCorridor() {
        int lo = plan.corridorLoHr();
        int hi = plan.corridorHiHr();
        return hr >= lo && hr <= hi;
    }

    // ================================================================ read

    public State getState() {
        return state;
    }

    public Plan getPlan() {
        return plan;
    }

    public Phase phase() {
        return phaseIndex < plan.phases.size() ? plan.phases.get(phaseIndex) : null;
    }

    public int getPhaseIndex() {
        return phaseIndex;
    }

    public double getElapsedS() {
        return elapsedS;
    }

    public double getRemainingS() {
        return Math.max(0, plan.totalS - elapsedS);
    }

    public double phaseElapsed() {
        double acc = 0;
        for (int i = 0; i < phaseIndex; i++) {
            acc += plan.phases.get(i).durationS;
        }
        return Math.max(0, elapsedS - acc);
    }

    public double phaseRemainingS() {
        Phase ph = phase();
        return ph != null ? Math.max(0, ph.durationS - phaseElapsed()) : 0;
    }

    public Cmd getCurrent() {
        return current;
    }

    public int getHr(long now) {
        return hr > 0 && now - hrMs <= HR_STALE_MS ? hr : -1;
    }

    public int getHrMaxSeen() {
        return hrMaxSeen;
    }

    public int getHrAvg() {
        return hrCount > 0 ? (int) Math.round(hrSum / hrCount) : -1;
    }

    public int getCapHits() {
        return capHits;
    }

    public int getCorridorExt() {
        return corridorExt;
    }

    public int getDoseExt() {
        return doseExt;
    }

    public double getCorridorShare() {
        return hrKnownS > 0 ? inCorridorS / hrKnownS : -1;
    }

    public double getDoseRatio() {
        return plan.qBudget > 0 ? qUsed / plan.qBudget : 0;
    }

    public boolean isRaiseLocked() {
        return raiseLocked;
    }

    public double getReentry() {
        return reentry;
    }

    public double getUserScaleMax() {
        return userScaleMax;
    }

    public double getTotalPauseS() {
        return totalPauseS;
    }

    public long getStartMs() {
        return startMs;
    }

    public long getEndMs() {
        return endMs;
    }

    public boolean isResumeWaiting() {
        return state == State.HR_PAUSE && resumeNeedsConfirm;
    }

    public List<String> getLog() {
        return log;
    }

    private void log(long now, String s) {
        long t = startMs > 0 ? (now - startMs) / 1000 : 0;
        log.add(String.format(Locale.US, "%02d:%02d %s", t / 60, t % 60, s));
        if (log.size() > 400) {
            log.remove(0);
        }
    }

    private static String fmt(double v) {
        return String.format(Locale.US, "%.2f", v);
    }

    private static double clamp(double v, double lo, double hi) {
        return v < lo ? lo : v > hi ? hi : v;
    }
}
