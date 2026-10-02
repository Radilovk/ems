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
    /**
     * REST: the automatic pause after an exercise (owner, 1.1.270): the impulses stop, the next set starts only by
     * hand, and not before the rest the fatigue model asks for ({@link #getRestLeftS}). COUNTDOWN: every start
     * waits 3 s (three short beeps and a long one as the impulse starts — AutoSession plays them).
     */
    public enum State { READY, RUN, USER_PAUSE, HR_PAUSE, REST, COUNTDOWN, DONE, STOPPED }

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

    /** One exercise (station) = whole impulse cycles adding up to 30–40 s of work (owner, 1.1.270). */
    public static final int STATION_MIN_S = 30;
    public static final int STATION_MAX_S = 40;
    /** A station cut short by a phase change still gets its rest when it ran this long. */
    public static final int STATION_REST_FROM_S = 10;
    /** Rest after an exercise: floor (tetanic / twitch work), ceiling. [D] */
    public static final int REST_FLOOR_TETANIC_S = 15;
    public static final int REST_FLOOR_S = 8;
    public static final int REST_MAX_S = 120;
    /** A rest this long starts the next set a little softer (muscles cooled down). */
    public static final int REST_SOFT_FROM_S = 180;
    public static final long COUNTDOWN_MS = 3000L;
    /** Next set only when the HR is this far under the ceiling (or inside the corridor). */
    public static final int REST_HR_BELOW_CAP = 15;

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
    private boolean doseStopped;
    private double userScale = 1.0;
    private double userScaleMax = 1.0;

    // exercises: sets of 30–40 s with a rest after each (phases that have exercises)
    private boolean[] stationPhases;
    private int stationPhase = -1;
    private int stationIndex;
    private double stationS;
    private int stationsDone;
    private Cmd counted;
    private int restMinS;
    private long restStartMs;
    private boolean restBeforeCooldown;
    private int restCount;
    private double restSumS;

    // muscle fatigue per suit channel (docs/xems-ems-physiology.md §3, docs/xems-auto-mode-spec.md §12):
    // dF_k/dt = (w(f)·ρ·z_k + e·m_k) − F_k/τ in the impulse, (w(f_p)·ρ·σ_p·z_k + 0.3·e·m_k) − F_k/τ in the pause,
    // −F_k/τ at rest. z_k = the zone's share, m_k = the exercise's work on the channel (0…1), e = EX_LOAD.
    // Decides the shortest rest (the most tired zone) and paints the body heat map and the timeline.
    private final double fMax;
    private final double fRec;
    private final double tauR;
    private final double[] chF = new double[AutoModel.CHANNELS];
    private long chFMs;
    /** The cycle the channel values integrate from chFMs (null = decaying: rest / pause). */
    private Cmd chCmd;
    /** What actually goes out on the lead row now (AutoSession, every tick): ρ = strength / calibration and the
     *  zones as set — manual +/−, −10 % / +5 %, the ceilings, zone moves. −1 / null = the plan's values. */
    private double liveRho = -1;
    private int[] liveZones;
    private AutoTemplates.Script script;
    // session clock: impulses + the waits the program imposes (rest minimum, countdown, HR pause) — a longer
    // wait for ▶ and a manual pause do not count (owner, 1.1.271)
    private double imposedS;
    private final List<float[]> trace = new ArrayList<float[]>();

    // countdown before every start
    private long goMs;
    private State countFrom = State.READY;
    private int manualStops;
    private int hrEndedSets;
    /** Work in the set that just ended (⏭ right after a start = 0). */
    private double lastSetS = STATION_MAX_S;

    private long startMs;
    private long endMs;
    private final List<String> log = new ArrayList<String>();

    public AutoEngine(Plan plan) {
        this.plan = plan;
        this.doublePulse = plan.doublePulseAllowed && plan.input.doublePulse;
        double[] fp = AiPlanner.fatigueParams(plan.input.fitness);
        fMax = fp[0];
        fRec = fp[1];
        tauR = fp[2];
    }

    /**
     * The phases with exercises (true = run as sets of 30–40 s with a rest after each). Without it the
     * phases run continuously (passive programs, the tests of the plain clock).
     */
    public void setStations(boolean[] phases) {
        stationPhases = phases != null ? phases.clone() : null;
    }

    /** The session's exercises: the phases that have them run as sets, the set's muscles load the heat map. */
    public void setScript(AutoTemplates.Script sc) {
        script = sc;
        stationPhases = stationPhases(plan, sc);
    }

    /** Phases run as exercise sets: the active program's phases with exercises (not the recovery, not a wave). */
    public static boolean[] stationPhases(Plan p, AutoTemplates.Script sc) {
        boolean[] out = new boolean[p.phases.size()];
        if (sc == null || !p.program.isActive()) {
            return out;
        }
        for (int i = 0; i < out.length; i++) {
            out[i] = !p.phases.get(i).isCooldown() && !p.phases.get(i).wave && i < sc.phase.length
                    && sc.phase[i] != null && sc.phase[i].length > 0;
        }
        return out;
    }

    public boolean isStationPhase(int idx) {
        return stationPhases != null && idx >= 0 && idx < stationPhases.length && stationPhases[idx];
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

    /** Start with the 3 s countdown: the impulses begin at {@code goAt} (≥ now + 3 s). */
    public void startAt(long now, long goAt) {
        startMs = now;
        lastTickMs = now;
        phaseIndex = 0;
        stepIndex = 0;
        elapsedS = 0;
        log(now, "start " + plan.program.id + " T=" + plan.totalS + "s active=" + plan.activeS + "s φmax="
                + fmt(plan.phiMax) + " E=" + fmt(plan.envMax) + " cap=" + plan.hrCap);
        countdown(now, goAt, State.READY);
    }

    private void countdown(long now, long goAt, State from) {
        countFrom = from;
        goMs = Math.max(now + COUNTDOWN_MS, goAt);
        state = State.COUNTDOWN;
        log(now, "countdown from " + from + " → " + Math.round((goMs - now) / 1000.0) + "s");
    }

    /** Countdown over: the impulses start (one cycle now). */
    private void go(long now) {
        State from = countFrom;
        settle(now);
        if (from != State.READY) {
            double pauseS = Math.max(0, (now - pauseStartMs) / 1000.0);
            totalPauseS += pauseS;
            imposedS += imposedOf(from, pauseS);
            if (from == State.REST) {
                restSumS += pauseS;
                restCount++;
                if (pauseS >= REST_SOFT_FROM_S) {
                    reentry = Math.min(reentry, 0.9);
                }
            } else {
                // Muscles and heart cooled down: first pulses softer, +0.1 per cycle back to 1 (AI §5).
                reentry = pauseS >= 30 ? clamp(1.0 - pauseS / 600.0, 0.6, 0.9) : Math.min(reentry, 1.0);
                if (from == State.HR_PAUSE) {
                    reentry = Math.min(reentry, 0.8);
                }
            }
            log(now, "go after " + Math.round(pauseS) + "s (" + from + ") r=" + fmt(reentry) + " F=" + fmt(peakF()));
        } else {
            log(now, "go");
        }
        state = State.RUN;
        resumeNeedsConfirm = false;
        lastTickMs = now;
        nextCycle(now);
    }

    /**
     * ▶ Start pressed (after an exercise, a pause, the HR pause that waits for a tap): true = the countdown runs
     * and the impulses begin at {@code goAt} (≥ now + 3 s). False = not yet: {@link #getRestLeftS} /
     * {@link #isRestHrHigh} say why.
     */
    public boolean requestGo(long now, long goAt) {
        if (state == State.REST) {
            if (getRestLeftS(now) > 0 || isRestHrHigh(now)) {
                return false;
            }
        } else if (!canResume()) {
            return false;
        }
        countdown(now, goAt, state);
        return true;
    }

    /**
     * ■ STOP (owner, 1.1.270): never ends the session at once. In the active part it moves to the passive
     * recovery (cool-down, its own 10 min) and waits for ▶; in the recovery it ends. Returns true when ended.
     */
    public boolean stopPress(long now) {
        if (state == State.DONE || state == State.STOPPED) {
            return true;
        }
        Phase ph = phase();
        int cool = cooldownIndex();
        boolean inRecovery = ph != null && ph.isCooldown();
        if (cool < 0 || inRecovery || state == State.READY) {
            manualStops++;
            stop(now);
            return true;
        }
        manualStops++;
        log(now, "stop pressed → recovery");
        enterRecoveryRest(now, cool);
        return false;
    }

    public int getManualStops() {
        return manualStops;
    }

    /** The active part is over (or stopped): straight to the cool-down's start, waiting for ▶. */
    private void enterRecoveryRest(long now, int cool) {
        boolean paused = state == State.USER_PAUSE || state == State.HR_PAUSE || state == State.REST
                || state == State.COUNTDOWN;
        if (phaseIndex != cool) {
            jumpTo(cool, now);
        }
        stationPhase = cool;
        stationS = 0;
        counted = current;
        settle(now);
        if (!paused) {
            pauseStartMs = now;
        }
        state = State.REST;
        restStartMs = now;
        restMinS = 0;
        restBeforeCooldown = true;
        traceRest(now);
    }

    private int cooldownIndex() {
        for (int i = plan.phases.size() - 1; i >= 0; i--) {
            if (plan.phases.get(i).isCooldown()) {
                return i;
            }
        }
        return -1;
    }

    public void stop(long now) {
        if (state != State.DONE) {
            state = State.STOPPED;
            endMs = now;
            log(now, "stop");
        }
    }

    /** Pause pressed during the countdown: back to where it came from (the start → a plain pause). */
    public void cancelCountdown(long now) {
        if (state != State.COUNTDOWN) {
            return;
        }
        State from = countFrom;
        if (from == State.READY) {
            state = State.USER_PAUSE;
            pauseStartMs = now;
        } else {
            state = from;
            if (from == State.HR_PAUSE) {
                resumeNeedsConfirm = true;
            }
        }
        log(now, "countdown cancelled → " + state);
    }

    public void userPause(long now) {
        if (state == State.RUN) {
            settle(now);
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
        settle(now);
        double pauseS = (now - pauseStartMs) / 1000.0;
        totalPauseS += pauseS;
        imposedS += imposedOf(state, pauseS);
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
        int idx = cooldownIndex();
        if (idx < 0) {
            idx = plan.phases.size() - 1;      // no cool-down: the last (calmest) phase
        }
        if (idx < 0 || idx <= phaseIndex) {
            return;
        }
        jumpTo(idx, now);
        log(now, "skip → cool-down");
        if (state == State.RUN) {
            nextCycle(now);
        }
    }

    /** The plan clock jumps to the start of phase {@code idx}. */
    private void jumpTo(int idx, long now) {
        double t = 0;
        for (int i = 0; i < idx; i++) {
            t += plan.phases.get(i).durationS;
        }
        elapsedS = Math.max(elapsedS, t);
        enterPhase(idx, now);
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
        rebase(now);
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
        settle(now);
        Cmd c = build(ph, current.stepIndex, now);
        c.startMs = current.startMs;
        current = c;
        if (state == State.RUN) {
            chCmd = c;
            chFMs = now;
        }
        return c;
    }

    /** Extra pause the engine adds now (corridor + dose), on top of the program's OFF. */
    public int getOffExtension() {
        return corridorExt + doseExt;
    }

    /** Highest of the rows' own factors (strength / (calibration × plan)) — for the dose. */
    public void setUserScale(double s) {
        if (Math.abs(s - userScale) > 0.005 && liveRho < 0) {
            rebase(lastTickMs);
        }
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
        if (state == State.COUNTDOWN && now >= goMs - 800) {
            go(now);                           // the device's own impulse starts: begin with it
            return state == State.RUN ? current : null;
        }
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
        if (state == State.COUNTDOWN) {
            lastTickMs = now;
            if (now >= goMs) {
                go(now);
            }
            return;
        }
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
                    resumeNeedsConfirm = true;
                    if (!plan.input.solo()) {          // SOLO: a person confirms
                        countdown(now, now + COUNTDOWN_MS, State.HR_PAUSE);
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
            settle(now);
            state = State.HR_PAUSE;
            pauseStartMs = now;
            hrOkSinceMs = 0;
            capHits++;
            trace.add(new float[] {(float) getSessionS(now), (float) elapsedS, 0f, (float) getFatigueShare(), phaseIndex,
                    Math.max(0, getHr(now)), TRACE_HR_PAUSE});
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
        // A set is never cut by the next exercise phase: that change waits for the set's end (the rest).
        // The recovery is not waited for: the active part never passes its 20 min.
        if (idx != phaseIndex && !(isStationPhase(phaseIndex) && !plan.phases.get(idx).isCooldown())) {
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
        // the finished cycle (once): station time, fatigue, dose
        boolean fresh = current != null && current != counted;
        if (fresh) {
            counted = current;
            if (current.phaseIndex == stationPhase) {
                stationS += current.durationMs() / 1000.0;
            }
            settle(now);
            if (current.base != null && current.frac > 0) {
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
        }
        if (qUsed >= plan.qBudget && !ph.isCooldown() && plan.qBudget > 0 && cooldownIndex() > phaseIndex) {
            log(now, "dose budget reached → cool-down");
            doseStopped = true;
            jumpTo(cooldownIndex(), now);
            ph = phase();
        }
        // exercises: a set ends after 30–40 s of work, or with its phase → the automatic pause
        if (stationPhase != phaseIndex) {
            boolean cutShort = isStationPhase(stationPhase) && stationS >= STATION_REST_FROM_S;
            boolean toRecovery = ph.isCooldown() && isStationPhase(stationPhase) && stationS > 0;
            int prev = stationPhase;
            stationPhase = phaseIndex;
            stationIndex = 0;
            if (prev >= 0 && (cutShort || toRecovery)) {
                stationS = 0;
                enterRest(now, ph.isCooldown());
                return null;
            }
            stationS = 0;
        } else if (isStationPhase(phaseIndex) && stationS >= STATION_MIN_S) {
            stationS = 0;
            stationIndex++;
            enterRest(now, false);
            return null;
        } else if (isStationPhase(phaseIndex) && stationS >= STATION_REST_FROM_S && hrNearCap(now)) {
            // the heart nears its ceiling: end the set now and rest, rather than run into the HR stop (L11)
            log(now, "HR " + hr + " near cap " + plan.hrCap + " → set ends early");
            stationS = 0;
            stationIndex++;
            hrEndedSets++;
            enterRest(now, false);
            return null;
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
        if (isStationPhase(phaseIndex) && stationS > 0 && stationS + c.durationMs() / 1000.0 > STATION_MAX_S
                && stationS >= STATION_MIN_S - c.durationMs() / 1000.0) {
            stationS = 0;                      // one more cycle would pass 40 s: the set ends here
            stationIndex++;
            enterRest(now, false);
            return null;
        }
        c.startMs = now;
        settle(now);
        current = c;
        chCmd = c;
        chFMs = now;
        trace.add(new float[] {(float) getSessionS(now), (float) elapsedS, (float) cycleLoad(c), (float) getFatigueShare(),
                phaseIndex, Math.max(0, getHr(now)), TRACE_CYCLE});
        if (trace.size() > 4000) {
            trace.remove(0);
        }
        stepIndex++;
        if (reentry < 1.0) {
            reentry = Math.min(1.0, reentry + 0.1);
        }
        return c;
    }

    /**
     * The automatic pause after an exercise. Shortest rest = the time the fatigue model needs to bring the
     * muscle back to F_rec (F_max / 3, the level the Smart Session starts a block from): t = τ·ln(F / F_rec),
     * τ from the phosphocreatine recovery (LOW 50 s, MID 40 s, HIGH 30 s); at least 15 s after tetanic work
     * (≥ 20 Hz), 8 s after twitches; at most 2 min. Before the recovery part: no minimum.
     */
    private void enterRest(long now, boolean beforeCooldown) {
        if (!beforeCooldown) {
            int idx = phaseAt(elapsedS);
            int cool = cooldownIndex();
            if (cool >= 0 && (idx == cool || plan.activeS - elapsedS < STATION_MIN_S / 2.0)) {
                beforeCooldown = true;         // no room for another set: the recovery is next
                if (phaseIndex != cool) {
                    jumpTo(cool, now);
                }
                stationPhase = cool;
                stationIndex = 0;
            } else if (idx != phaseIndex) {
                enterPhase(idx, now);          // the phase change the set waited for
                stationPhase = idx;
                stationIndex = 0;
            }
        }
        settle(now);
        state = State.REST;
        pauseStartMs = now;
        restStartMs = now;
        restBeforeCooldown = beforeCooldown;
        stationsDone++;
        traceRest(now);
        if (beforeCooldown) {
            restMinS = 0;
        } else {
            boolean tet = current != null && current.hz >= 20;
            double f = peakF();
            double t = f > fRec ? tauR * Math.log(f / fRec) : 0;
            // a set skipped right after its start (⏭) did no work: only the fatigue decides, no floor
            int floor = lastSetS < STATION_REST_FROM_S ? 0 : tet ? REST_FLOOR_TETANIC_S : REST_FLOOR_S;
            restMinS = (int) Math.round(clamp(Math.max(floor, t), floor, REST_MAX_S));
            lastSetS = STATION_MAX_S;
        }
        log(now, "set done → rest ≥ " + restMinS + "s F=" + fmt(peakF()) + "/" + fmt(fMax));
    }

    /** Share of a full channel the exercise's own movement adds in the impulse (30 % of it in the pause). [D] */
    public static final double EX_LOAD = 0.25;

    /** The exercise of the running set (or the next one in a rest); null outside the sets. */
    public String getExercise() {
        if (script == null || !isStationPhase(phaseIndex) || phaseIndex >= script.phase.length) {
            return null;
        }
        String[] l = script.phase[phaseIndex];
        return l == null || l.length == 0 ? null : l[stationIndex % l.length];
    }

    /** {@link #getNextExercise} when the recovery comes next instead of another set. */
    public static final String NEXT_RECOVERY = "";

    /**
     * What comes after the running set: the next exercise of this phase, the first one of the next phase when the
     * set ends past the phase boundary, {@link #NEXT_RECOVERY} when the active part ends with it, null outside sets.
     * Shown in the set's last seconds so the client can get ready.
     */
    public String getNextExercise() {
        if (script == null || !isStationPhase(phaseIndex) || state == State.REST) {
            return null;
        }
        double end = elapsedS + Math.max(0, getSetTargetS() - stationS);
        int cool = cooldownIndex();
        int idx = phaseAt(end);
        if (cool >= 0 && (idx >= cool || plan.activeS - end < STATION_MIN_S / 2.0)) {
            return NEXT_RECOVERY;
        }
        if (idx != phaseIndex) {
            return isStationPhase(idx) && idx < script.phase.length && script.phase[idx] != null
                    && script.phase[idx].length > 0 ? script.phase[idx][0] : null;
        }
        String[] l = script.phase[phaseIndex];
        return l == null || l.length == 0 ? null : l[(stationIndex + 1) % l.length];
    }

    /** Seconds left in the running set (0 outside a set). */
    public double getSetLeftS() {
        return state == State.RUN && isStationPhase(phaseIndex) ? Math.max(0, getSetTargetS() - getStationS()) : 0;
    }

    /** Load rates of one cycle per channel: [0] in the impulse, [1] in the pause (units of F per second · τ⁻¹). */
    private double[][] rates(Cmd c) {
        double[][] g = new double[2][AutoModel.CHANNELS];
        if (c == null || c.frac <= 0) {
            return g;
        }
        double rho = liveRho >= 0 && c == current ? liveRho : c.frac * Math.max(0.1, userScale);
        double w = AiPlanner.fatigueWeight(c.hz);
        double wp = doublePulse && c.pauseHz > 0 ? AiPlanner.fatigueWeight(c.pauseHz) * c.pauseSigma : 0;
        int[] z = liveZones != null && c == current ? liveZones : c.zones != null ? c.zones : plan.zones;
        int[] m = null;
        if (c.phaseIndex == stationPhase && isStationPhase(c.phaseIndex)) {
            String ex = getExercise();
            int ix = ex != null ? AutoTemplates.index(ex) : -1;
            m = ix >= 0 ? AutoTemplates.muscles(ix) : null;
        }
        for (int k = 0; k < AutoModel.CHANNELS; k++) {
            double zk = z != null && k < z.length ? Math.max(0, z[k]) / 100.0 : 1.0;
            double mk = m != null && k < m.length ? Math.max(0, m[k]) / 100.0 : 0;
            g[0][k] = w * rho * zk + EX_LOAD * mk;
            g[1][k] = wp * rho * zk + 0.3 * EX_LOAD * mk;
        }
        return g;
    }

    /**
     * F of channel k at {@code now} (no state change): from chFMs along the running cycle's impulse / pause
     * (chFMs may be anywhere inside it — a change mid-cycle re-bases there), then decay.
     */
    private double fAt(int k, long now, double[][] g) {
        double f = chF[k];
        if (now <= chFMs) {
            return f;
        }
        if (chCmd == null || g == null) {
            return f * Math.exp(-(now - chFMs) / 1000.0 / tauR);
        }
        double on = Math.max(0, chCmd.onS);
        double dur = chCmd.durationMs() / 1000.0;
        double pos = (chFMs - chCmd.startMs) / 1000.0;
        double end = (now - chCmd.startMs) / 1000.0;
        if (pos < on && end > pos) {
            double e = Math.exp(-(Math.min(end, on) - pos) / tauR);
            f = f * e + g[0][k] * tauR * (1 - e);
            pos = Math.min(end, on);
        }
        if (pos < dur && end > pos) {
            double e = Math.exp(-(Math.min(end, dur) - pos) / tauR);
            f = f * e + g[1][k] * tauR * (1 - e);
            pos = Math.min(end, dur);
        }
        if (end > pos) {
            f *= Math.exp(-(end - pos) / tauR);
        }
        return f;
    }

    /** A setting changed mid-cycle: integrate up to now with the old one, go on with the new one. */
    private void rebase(long now) {
        settle(now);
        if (state == State.RUN && current != null) {
            chCmd = current;
            chFMs = now;
        }
    }

    /**
     * The lead row's real output now (AutoSession, every tick): its strength / calibration and its zones.
     * Every change re-bases the fatigue model, so the rests, the heat map and the timeline follow what the
     * person really gets, not only the plan.
     */
    public void setLive(double rho, int[] zones, long now) {
        boolean same = Math.abs(rho - liveRho) < 0.005
                && (zones == null ? liveZones == null : liveZones != null && java.util.Arrays.equals(zones, liveZones));
        if (same) {
            return;
        }
        rebase(now);
        liveRho = rho;
        liveZones = zones != null ? zones.clone() : null;
    }

    /** The zones the lead row really has (null = the plan's). */
    public int[] getLiveZones() {
        return liveZones;
    }

    public double getLiveRho() {
        return liveRho;
    }

    /** Brings the channel values to {@code now} (before any change of state or cycle). */
    private void settle(long now) {
        double[][] g = chCmd != null ? rates(chCmd) : null;
        for (int k = 0; k < chF.length; k++) {
            chF[k] = fAt(k, now, g);
        }
        chFMs = now;
        chCmd = null;
    }

    private double peakF() {
        double m = 0;
        for (double f : chF) {
            m = Math.max(m, f);
        }
        return m;
    }

    /** Live load of each channel, F_k / F_max (1 = the limit of a hard set; the body heat map). */
    public double[] getChannelLoad(long now) {
        double[][] g = chCmd != null ? rates(chCmd) : null;
        double[] out = new double[chF.length];
        for (int k = 0; k < out.length; k++) {
            out[k] = fMax > 0 ? fAt(k, now, g) / fMax : 0;
        }
        return out;
    }

    /**
     * The heart's share of its allowed range now: (HR − HR_rest) / (HR_cap − HR_rest) — 1 at the ceiling where the
     * output stops (L11). −1 without a fresh HR or when the program does not use it.
     */
    public double getCardioLoad(long now) {
        int h = getHr(now);
        if (h <= 0 || plan.hrUse == HrUse.NONE || plan.hrCap <= plan.hrRest) {
            return -1;
        }
        return clamp((h - plan.hrRest) / (double) (plan.hrCap - plan.hrRest), 0, 1.25);
    }

    /**
     * System load (the triangle): the higher of the local (most tired muscle zone, F / F_max) and the central
     * (heart, {@link #getCardioLoad}) strain — whichever is nearer its limit decides the rest and the set's end.
     */
    public double getSystemLoad(long now) {
        return Math.max(getPeakLoad(now), getCardioLoad(now));
    }

    /** True when the heart, not a muscle, is nearer its limit now. */
    public boolean isCardioLimiting(long now) {
        return getCardioLoad(now) > getPeakLoad(now);
    }

    /** The most loaded channel now (the peak bar). */
    public double getPeakLoad(long now) {
        double m = 0;
        for (double v : getChannelLoad(now)) {
            m = Math.max(m, v);
        }
        return m;
    }

    /**
     * Intensity of one cycle for the timeline: the stimulus per second the program asks for,
     * ρ·(w(f)·on + w(f_p)·σ_p·off) / (on + off) — 0.5 for 85 Hz 4 / 4 at the full calibration.
     */
    public double cycleLoad(Cmd c) {
        if (c == null || c.frac <= 0) {
            return 0;
        }
        double rho = liveRho >= 0 && c == current ? liveRho : c.frac * Math.max(0.1, userScale);
        double on = Math.max(1, c.onS);
        double off = Math.max(1, c.offS);
        double p = doublePulse && c.pauseHz > 0 ? AiPlanner.fatigueWeight(c.pauseHz) * c.pauseSigma * off : 0;
        return rho * (AiPlanner.fatigueWeight(c.hz) * on + p) / (on + off);
    }

    private void traceRest(long now) {
        trace.add(new float[] {(float) getSessionS(now), (float) elapsedS, 0f, (float) getFatigueShare(), phaseIndex,
                Math.max(0, getHr(now)), TRACE_REST});
    }

    /** Kinds of a trace sample (index 6). */
    public static final float TRACE_CYCLE = 0f;
    public static final float TRACE_REST = 1f;
    /** The output stopped because the HR reached the ceiling (always a critical pause on the timeline). */
    public static final float TRACE_HR_PAUSE = 2f;
    /**
     * A rest this long is a critical pause on the timeline (deep and wide); the usual rests between sets (≈ 15–35 s,
     * the phosphocreatine refill) are smoothed into the profile. 45 s ≈ the floor of a rest the fatigue model asks
     * only after a hard, accumulated load (τ·ln(F / F_rec) with F ≥ 3 F_rec at τ 40 s). [D]
     */
    public static final int CRITICAL_PAUSE_S = 45;

    /**
     * Samples so far: {session s, impulse s, cycle load, peak load, phase, HR (0 = none), kind} at each cycle start,
     * rest start and HR pause.
     */
    public List<float[]> getTrace() {
        return trace;
    }

    /** The part of a wait the program imposed: the rest minimum + the countdown, the whole HR pause. */
    private double imposedOf(State from, double pauseS) {
        if (from == State.REST) {
            return Math.min(pauseS, restMinS + COUNTDOWN_MS / 1000.0);
        }
        if (from == State.HR_PAUSE) {
            return pauseS;
        }
        return Math.min(pauseS, COUNTDOWN_MS / 1000.0);
    }

    /**
     * Training time (owner, 1.1.271): the impulses plus the waits the program imposes; the time a person
     * takes beyond the rest minimum before ▶, and a manual pause, are not counted.
     */
    public double getSessionS(long now) {
        double s = elapsedS + imposedS;
        if (state == State.REST || state == State.HR_PAUSE || state == State.USER_PAUSE
                || (state == State.COUNTDOWN && countFrom != State.READY)) {
            State from = state == State.COUNTDOWN ? countFrom : state;
            s += imposedOf(from, Math.max(0, (now - pauseStartMs) / 1000.0));
        }
        return s;
    }

    /** Planned length of one set now: whole cycles making 30–40 s (as {@link #nextCycle} ends them). */
    public double getSetTargetS() {
        double d = current != null ? current.durationMs() / 1000.0 : 8;
        int n = (int) Math.ceil(STATION_MIN_S / d);
        if (n * d > STATION_MAX_S && n > 1) {
            n--;
        }
        return n * d;
    }

    /** Impulses in the set: {this one (1-based), all}. */
    public int[] getSetImpulses() {
        double d = current != null ? current.durationMs() / 1000.0 : 8;
        int all = (int) Math.round(getSetTargetS() / d);
        int done = (int) Math.round(stationS / d) + (state == State.RUN ? 1 : 0);
        return new int[] {Math.max(1, Math.min(all, done)), all};
    }

    /**
     * ⏭ Next (owner, 1.1.271): in a set — it ends now (the rest still follows the fatigue); in the rest — the next
     * exercise instead of the one shown; in a phase without sets — on to the next phase (the recovery is reached,
     * never skipped). Returns true when something changed.
     */
    public boolean next(long now) {
        Phase ph = phase();
        if (ph == null || ph.isCooldown() || state == State.DONE || state == State.STOPPED) {
            return false;
        }
        if (state == State.RUN && isStationPhase(phaseIndex)) {
            settle(now);
            if (current != null && current != counted && current.phaseIndex == stationPhase) {
                stationS += Math.min(current.durationMs(), Math.max(0, now - current.startMs)) / 1000.0;
                counted = current;
            }
            lastSetS = stationS;
            stationS = 0;
            stationIndex++;
            log(now, "next → set ended early");
            enterRest(now, false);
            return true;
        }
        if (state == State.REST && !restBeforeCooldown && isStationPhase(phaseIndex)) {
            stationIndex++;
            log(now, "next → exercise " + getExercise());
            return true;
        }
        if (state == State.RUN) {
            int idx = phaseIndex + 1;
            if (idx < plan.phases.size() && plan.phases.get(idx).isCooldown()) {
                log(now, "next → recovery");
                enterRecoveryRest(now, idx);
                return true;
            }
            if (idx < plan.phases.size()) {
                jumpTo(idx, now);
                log(now, "next → phase " + phase().id);
                return true;
            }
        }
        return false;
    }

    /** The whole session planned ahead (no HR, ▶ pressed as soon as allowed): the timeline's profile. */
    public static final class Forecast {
        /** Per point: session s, impulse s, load, peak load (as {@link #getTrace}). */
        public final List<float[]> points = new ArrayList<float[]>();
        /** Session second where each phase begins. */
        public double[] phaseStartS;
        public double totalS;
        public double maxLoad;

        /** Session time in the forecast when {@code impulseS} of impulses are done. */
        public double sessionAt(double impulseS) {
            float[] prev = null;
            for (float[] p : points) {
                if (p[1] >= impulseS) {
                    if (prev == null || p[1] <= prev[1]) {
                        return p[0];
                    }
                    return prev[0] + (p[0] - prev[0]) * (impulseS - prev[1]) / (p[1] - prev[1]);
                }
                prev = p;
            }
            return totalS;
        }
    }

    public static Forecast forecast(Plan plan, AutoTemplates.Script sc, boolean doublePulse) {
        return forecast(plan, sc, doublePulse, 1.0);
    }

    /** As above, with the person's strength factor (actual ρ / planned, e.g. after −10 %) for every cycle. */
    public static Forecast forecast(Plan plan, AutoTemplates.Script sc, boolean doublePulse, double scale) {
        Forecast f = new Forecast();
        AutoEngine e = new AutoEngine(plan);
        e.userScale = Math.max(0.1, scale);
        e.setScript(sc);
        e.setDoublePulse(doublePulse, 0);
        long t = 0;
        e.startAt(t, t);
        t = e.getGoMs();
        e.tick(t);
        f.phaseStartS = new double[plan.phases.size()];
        java.util.Arrays.fill(f.phaseStartS, -1);
        f.phaseStartS[0] = 0;
        int guard = 0;
        while (e.getState() != State.DONE && e.getState() != State.STOPPED && guard++ < 8000) {
            if (f.phaseStartS[e.phaseIndex] < 0) {
                f.phaseStartS[e.phaseIndex] = e.getSessionS(t);
            }
            if (e.getState() == State.REST) {
                t += e.getRestMinS() * 1000L;
                e.requestGo(t, t);
                t = e.getGoMs();
                e.tick(t);
                continue;
            }
            if (e.getState() != State.RUN || e.current == null) {
                break;
            }
            t += e.current.durationMs();
            e.tick(t - 1);
            e.onCycle(t);
        }
        f.points.addAll(e.trace);
        f.totalS = e.getSessionS(t);
        for (int i = 1; i < f.phaseStartS.length; i++) {
            if (f.phaseStartS[i] < 0) {
                f.phaseStartS[i] = f.totalS;
            }
        }
        for (float[] p : f.points) {
            f.maxLoad = Math.max(f.maxLoad, p[2]);
        }
        return f;
    }

    /** Seconds until ▶ is allowed after an exercise (0 = now). */
    public int getRestLeftS(long now) {
        if (state != State.REST) {
            return 0;
        }
        return (int) Math.max(0, Math.ceil(restMinS - (now - restStartMs) / 1000.0));
    }

    public int getRestMinS() {
        return restMinS;
    }

    public double getRestS(long now) {
        return state == State.REST ? (now - restStartMs) / 1000.0 : 0;
    }

    /** The HR is still too high for the next set (≥ cap − 15, or above the corridor). */
    public boolean isRestHrHigh(long now) {
        if (state != State.REST || restBeforeCooldown || plan.hrUse == HrUse.NONE) {
            return false;
        }
        int h = getHr(now);
        if (h <= 0) {
            return false;
        }
        int lim = plan.hrCap - REST_HR_BELOW_CAP;
        if (plan.hrUse == HrUse.CORRIDOR && plan.corridorHiHr() > 0) {
            lim = Math.min(lim, plan.corridorHiHr());
        }
        return h > lim;
    }

    /** A set ends early when the HR comes this close to the ceiling. */
    public static final int SET_END_HR_BELOW_CAP = 5;

    private boolean hrNearCap(long now) {
        int h = getHr(now);
        return plan.hrUse != HrUse.NONE && h > 0 && h >= plan.hrCap - SET_END_HR_BELOW_CAP;
    }

    public int getHrEndedSets() {
        return hrEndedSets;
    }

    /** The HR the next set waits for (see {@link #isRestHrHigh}). */
    public int getRestHrLimit() {
        int lim = plan.hrCap - REST_HR_BELOW_CAP;
        if (plan.hrUse == HrUse.CORRIDOR && plan.corridorHiHr() > 0) {
            lim = Math.min(lim, plan.corridorHiHr());
        }
        return lim;
    }

    public boolean isRestBeforeCooldown() {
        return state == State.REST && restBeforeCooldown;
    }

    /** The exercise of the running phase: 0, 1, 2 … (in a rest: the next one). */
    public int getStationIndex() {
        return stationIndex;
    }

    /** Work done in the running set, seconds. */
    public double getStationS() {
        return stationS + (state == State.RUN && current != null && current != counted && current.phaseIndex == stationPhase
                ? Math.min(current.durationMs() / 1000.0, (lastTickMs - current.startMs) / 1000.0) : 0);
    }

    public int getStationsDone() {
        return stationsDone;
    }

    public double getFatigueShare() {
        return fMax > 0 ? peakF() / fMax : 0;
    }

    public int getRestCount() {
        return restCount;
    }

    public double getRestAvgS() {
        return restCount > 0 ? restSumS / restCount : 0;
    }

    /** When the countdown ends (the impulses begin). */
    public long getGoMs() {
        return goMs;
    }

    public int getCountdownLeftS(long now) {
        return state == State.COUNTDOWN ? (int) Math.max(0, Math.ceil((goMs - now) / 1000.0)) : 0;
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

    /** The dose budget ended the main work early (straight to the cool-down). */
    public boolean isDoseStopped() {
        return doseStopped;
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
