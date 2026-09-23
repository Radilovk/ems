package com.isaigu.gymapp.ai;

import com.isaigu.gymapp.ai.AiModel.BlockMode;
import com.isaigu.gymapp.ai.AiModel.CycleSpec;
import com.isaigu.gymapp.ai.AiModel.Goal;
import com.isaigu.gymapp.ai.AiModel.Operator;
import com.isaigu.gymapp.ai.AiModel.Phase;
import com.isaigu.gymapp.ai.AiModel.PhaseId;
import com.isaigu.gymapp.ai.AiModel.Plan;
import com.isaigu.gymapp.ai.AiModel.Profile;
import com.isaigu.gymapp.ai.AiModel.SessionInput;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * XEMS Smart Session runtime (spec §5–§10). Pure Java, driven by:
 * <ul>
 *   <li>{@link #onCycle(long)} — device enters an ON phase; returns what to send for it;</li>
 *   <li>{@link #tick(long)} — ~4 Hz clock for guards, rests, pauses and integration;</li>
 *   <li>{@link #onHr(long, int)} — band sample.</li>
 * </ul>
 * Decision hierarchy: A safety guards → B human STOP/REDUCE → C arbiter min(plan, fatigue, HR)
 * → D plan. Nothing ever raises output above the plan.
 */
public final class AiEngine {

    public enum State { READY, RUN, REST, CHECKPOINT, STIM_PAUSE, USER_PAUSE, RECOVERY, DONE, STOPPED }

    /** What the driver sends to the device for the ON period that is starting. */
    public static final class CycleCmd {
        public int hz;
        public int pwUs;
        public int onS;
        public int offS;
        /** Output as a fraction of the calibrated ceiling (0 = silent cycle). */
        public double frac;
        public int rampUpMs;
        public int rampDownMs;
        public boolean segmentB;
    }

    /** Per-block report row (§10). */
    public static final class BlockStat {
        public int index;
        public PhaseId phase;
        public long startMs;
        public double tBlockS;
        public double tRestS;
        public double q;
        public double fEnd;
        public double dHr;
        public double r;
        public double d;
        public double tauHr;
        public double v;
    }

    public static final long TICK_EXPECT_MS = 250L;
    public static final long STALE_HR_MS = 10000L;           // G8
    public static final long BAND_LOSS_SOFT_MS = 30000L;     // G12
    public static final long BAND_LOSS_HARD_MS = 120000L;    // G12
    public static final long RESUME_HOLD_MS = 30000L;        // G7 / §5.1
    public static final long CHECKPOINT_TIMEOUT_MS = 15000L; // §5.1
    public static final long RECOVERY_MS = 60000L;           // §10 HRR_60
    public static final double U_MIN = 0.6;
    public static final double REDUCE_STEP = 0.10;           // G13

    private final SessionInput in;
    private final Profile prof;
    private final Plan plan;
    private final AiHrFilter hr = new AiHrFilter();

    private State state = State.READY;
    private State resumeState = State.RUN;
    private String pauseReason = "";
    private long lastTickMs = -1L;
    private long startMs;
    private long endMs;

    // plan position
    private int phaseIdx;
    private double phaseElapsedS;
    private boolean useB;

    // current cycle (for tick integration)
    private long cycleStartMs = -1L;
    private CycleCmd current;
    private CycleSpec currentSpec;
    private long lastCycleMs = -1L;

    // fatigue / dose
    private double fatigue;
    private double qUsed;
    private double qBudget;
    private boolean budgetHalved;

    // multipliers (arbiter inputs)
    private double u = 1.0;          // HR controller
    private double uUser = 1.0;      // G13
    private double phiScale = 1.0;   // after rest_max
    private double ceilingScale = 1.0; // CR10 checkpoints
    private double phiCapBand = 1.0; // G12

    // controller state
    private double sigmaB = -1;
    private double offFactor = 1.0;
    private boolean ctrlActive;
    private int zeroCycles;
    private int highCycles;
    private double fMaxEff;
    private double tRestMinS = AiPlanner.T_REST_MIN_S;
    private double cResp = 1.0;
    private boolean frozen;
    private int highDStreak;
    private final int[] lCount = new int[6]; // L1..L4 at 1..4, u at 5

    // block bookkeeping
    private boolean inBlock;
    private long blockStartMs;
    private double blockStartHr = -1;
    private double blockMaxHr = -1;
    private double blockQ;
    private double blockMaxX = -10;
    private int mainBlocks;
    private double sessionMaxX = -10;
    private long restStartMs;
    private final List<double[]> restHr = new ArrayList<double[]>();
    private final Map<String, Double> rRef = new HashMap<String, Double>();
    private final Map<String, Double> tauRef = new HashMap<String, Double>();
    private final List<BlockStat> blocks = new ArrayList<BlockStat>();

    // guards
    private long stimPauseRecoverSinceMs = -1L;
    private boolean canResume;
    private long checkpointSinceMs;
    private final boolean[] checkpointDone = new boolean[3];
    private final List<String> flags = new ArrayList<String>();
    private int capHits;

    // time-in-corridor
    private double corridorInS;
    private double corridorTotalS;

    // recovery (HRR_60)
    private double hrAtEnd = -1;
    private double hrr60 = Double.NaN;

    // UI
    private String lastAction = "start";
    private long lastActionMs;
    private final List<String> log = new ArrayList<String>();

    public AiEngine(SessionInput input, Profile profile, Plan plan) {
        this.in = input;
        this.prof = profile;
        this.plan = plan;
        this.qBudget = plan.qBudget;
        this.fMaxEff = plan.fMax;
        this.flags.addAll(profile.flags);
    }

    // ================================================================= commands

    public void start(long nowMs) {
        if (state != State.READY) {
            return;
        }
        startMs = nowMs;
        lastTickMs = nowMs;
        state = State.RUN;
        phaseIdx = 0;
        phaseElapsedS = 0;
        if (prof.hrAvailable) {
            hr.seed(prof.hrRest, nowMs);
        }
        action("phase:" + phase().id, nowMs);
    }

    /** G10 — output to zero within one tick; session ends as "stopped". */
    public void stop(long nowMs) {
        if (state == State.DONE || state == State.STOPPED) {
            return;
        }
        endMs = nowMs;
        state = State.STOPPED;
        action("stop", nowMs);
    }

    /** G13 — reduce all channels by 0.10, no automatic return. */
    public void reduce(long nowMs) {
        uUser = Math.max(0.1, uUser - REDUCE_STEP);
        action("reduce", nowMs);
    }

    public void userPause(long nowMs) {
        if (state == State.RUN || state == State.REST) {
            resumeState = state;
            state = State.USER_PAUSE;
            action("user_pause", nowMs);
        }
    }

    /** Resume from USER_PAUSE, or confirm a STIM_PAUSE once {@link #canResume()} is true. */
    public void resume(long nowMs) {
        if (state == State.USER_PAUSE) {
            state = resumeState;
            action("resume", nowMs);
        } else if (state == State.STIM_PAUSE && canResume) {
            state = State.REST;          // re-enter through a rest so fatigue/HR are checked
            restStartMs = nowMs;
            restHr.clear();
            canResume = false;
            stimPauseRecoverSinceMs = -1L;
            action("resume", nowMs);
        }
    }

    /** Checkpoint answer (§9): CR10 0..10 for the whole body. */
    public void answerCheckpoint(int cr10, long nowMs) {
        if (state != State.CHECKPOINT && !(state == State.STIM_PAUSE && "checkpoint".equals(pauseReason))) {
            return;
        }
        if (cr10 > plan.cr10Hi) {
            ceilingScale = Math.max(0.5, ceilingScale * (1.0 - 0.07 * (cr10 - plan.cr10Hi)));
            action("cr10_down", nowMs);
        } else if (cr10 < plan.cr10Lo && in.operator == Operator.TRAINER) {
            // Trainer may restore towards the calibrated ceiling, never above it.
            ceilingScale = Math.min(1.0, ceilingScale * 1.05);
            action("cr10_up", nowMs);
        } else {
            action("cr10_ok", nowMs);
        }
        state = resumeState;
        pauseReason = "";
    }

    // ================================================================= inputs

    public void onHr(long tMs, int bpm) {
        boolean stimOn = isStimOnAt(tMs);
        hr.onSample(tMs, bpm, stimOn);
        if (state == State.REST && hr.getHrS() > 0) {
            restHr.add(new double[] {(tMs - restStartMs) / 1000.0, hr.getHrS()});
        }
    }

    private boolean isStimOnAt(long tMs) {
        if (current == null || cycleStartMs < 0 || current.frac <= 0) {
            return false;
        }
        long t = tMs - cycleStartMs;
        return t >= 0 && t < current.onS * 1000L;
    }

    /**
     * Device is entering an ON phase. Returns the command for it (never null).
     */
    public CycleCmd onCycle(long nowMs) {
        lastCycleMs = nowMs;
        if (state != State.RUN) {
            return silent(nowMs);
        }
        Phase ph = phase();
        // Phase change happens at cycle boundaries (block finishes its current cycle).
        if (phaseElapsedS >= ph.durationS) {
            if (!advancePhase(nowMs)) {
                return silent(nowMs);
            }
            ph = phase();
        }
        if (ph.blockMode == BlockMode.FATIGUE_DRIVEN) {
            if (!inBlock) {
                beginBlock(nowMs);
            } else if (fatigue >= fMaxEff
                    || (nowMs - blockStartMs) / 1000.0 >= AiPlanner.T_BLOCK_MAX_S) {
                endBlock(nowMs);
                return silent(nowMs);
            }
        }
        if (checkCheckpoint(ph, nowMs)) {
            return silent(nowMs);
        }
        controlPerCycle(ph, nowMs);

        CycleSpec spec = (ph.b != null && useB) ? ph.b : ph.a;
        if (ph.b != null) {
            useB = !useB;
        }
        CycleCmd c = new CycleCmd();
        c.hz = spec.hz;                                    // G5: plan frequency only
        c.pwUs = spec.pwUs;
        c.onS = spec.onS;
        c.segmentB = ph.b != null && spec == ph.b;
        double sigma = c.segmentB ? currentSigmaB(ph) : spec.sigma;
        int off = spec.offS;
        if (spec.isTetanic() && offFactor > 1.0 && isControlPhase(ph)) {
            off = (int) Math.ceil(Math.max(spec.offS, 1) * offFactor);   // L3
        }
        c.offS = AiPlanner.deviceOffS(off);
        c.frac = arbiter(ph, sigma);
        applyRamps(c, spec);

        // G6 dose budget: never start a cycle that would exceed it; go to cool-down instead.
        double dose = AiPlanner.cycleDose(spec, c.frac);
        if (ph.id != PhaseId.COOLDOWN && qUsed + dose > qBudget) {
            flags.add("BUDGET");
            action("budget_cooldown", nowMs);
            jumpToCooldown(nowMs);
            return onCycle(nowMs);
        }
        current = c;
        currentSpec = spec;
        cycleStartMs = nowMs;
        return c;
    }

    // ================================================================= clock

    public void tick(long nowMs) {
        if (lastTickMs < 0) {
            lastTickMs = nowMs;
        }
        double dtS = Math.max(0, Math.min(2000, nowMs - lastTickMs)) / 1000.0;
        lastTickMs = nowMs;
        if (state == State.READY || state == State.DONE || state == State.STOPPED) {
            return;
        }
        if (state == State.RECOVERY) {
            tickRecovery(nowMs);
            return;
        }
        integrate(nowMs, dtS);
        guards(nowMs, dtS);

        if (state == State.RUN || state == State.REST) {
            phaseElapsedS += dtS;
            trackCorridor(dtS);
        }
        if (state == State.REST) {
            tickRest(nowMs);
            if (phaseElapsedS >= phase().durationS) {
                // Rest runs into the phase end: continue with the next phase.
                state = State.RUN;
                inBlock = false;
            }
        }
        if (state == State.CHECKPOINT && in.operator == Operator.SELF
                && nowMs - checkpointSinceMs > CHECKPOINT_TIMEOUT_MS) {
            state = State.STIM_PAUSE;                      // §5.1 no answer → pause
            pauseReason = "checkpoint";
            action("checkpoint_timeout", nowMs);
        }
        // Fallback clock: if the device hook is silent, drive cycles ourselves.
        if (state == State.RUN && lastCycleMs > 0 && current != null) {
            long expected = (current.onS + current.offS) * 1000L + 1500L;
            if (nowMs - lastCycleMs > expected) {
                onCycle(nowMs);
            }
        }
    }

    private void integrate(long nowMs, double dtS) {
        boolean on = state == State.RUN && isStimOnAt(nowMs) && currentSpec != null;
        if (on) {
            double rho = current.frac;
            fatigue += AiPlanner.fatigueWeight(currentSpec.hz) * rho * dtS;
            double dq = 2.0 * rho * currentSpec.pwUs * currentSpec.hz * dtS;
            qUsed += dq;
            if (inBlock) {
                blockQ += dq;
            }
        } else {
            fatigue *= Math.exp(-dtS / plan.tauR);
        }
    }

    private void guards(long nowMs, double dtS) {
        long hrAge = hr.ageMs(nowMs);
        frozen = hrAge > STALE_HR_MS;                                    // G8
        double hrS = hr.getHrS();
        if (inBlock && hrS > 0 && !frozen) {
            blockMaxHr = Math.max(blockMaxHr, hrS);
            blockMaxX = Math.max(blockMaxX, prof.xOf(hrS));
            sessionMaxX = Math.max(sessionMaxX, prof.xOf(hrS));
        }
        // G12 band loss (only when the session started with a working band).
        if (prof.hrAvailable && isControlPhase(phase())
                && (state == State.RUN || state == State.REST)) {
            if (hrAge > BAND_LOSS_HARD_MS) {
                flags.add("BAND_LOST");
                action("band_lost_cooldown", nowMs);
                jumpToCooldown(nowMs);
            } else if (hrAge > BAND_LOSS_SOFT_MS && phiCapBand > 0.8) {
                phiCapBand = 0.8;
                action("band_lost_soft", nowMs);
            }
        }
        if (!frozen && phiCapBand < 1.0 && hrAge < STALE_HR_MS) {
            phiCapBand = 1.0;
        }
        // G7 HR cap — needs a valid, fresh value.
        if (prof.hrAvailable && !frozen && hrS >= prof.hrCap
                && (state == State.RUN || state == State.REST || state == State.CHECKPOINT)) {
            resumeState = State.REST;
            state = State.STIM_PAUSE;
            pauseReason = "hr_cap";
            canResume = false;
            stimPauseRecoverSinceMs = -1L;
            capHits++;
            action("hr_cap", nowMs);
        }
        if (state == State.STIM_PAUSE) {
            if ("hr_cap".equals(pauseReason)) {
                if (!frozen && hrS > 0 && hrS <= prof.hrAt(prof.xRec)) {
                    if (stimPauseRecoverSinceMs < 0) {
                        stimPauseRecoverSinceMs = nowMs;
                    }
                    if (nowMs - stimPauseRecoverSinceMs >= RESUME_HOLD_MS && !canResume) {
                        canResume = true;
                        action("can_resume", nowMs);
                    }
                } else {
                    stimPauseRecoverSinceMs = -1L;
                }
            }
        }
    }

    // ================================================================= rest / blocks

    private void beginBlock(long nowMs) {
        inBlock = true;
        blockStartMs = nowMs;
        blockQ = 0;
        double hrS = hr.getHrS();
        blockStartHr = hrS;
        blockMaxHr = hrS;
        blockMaxX = hrS > 0 ? prof.xOf(hrS) : -10;
    }

    private void endBlock(long nowMs) {
        inBlock = false;
        Phase ph = phase();
        BlockStat b = new BlockStat();
        b.index = blocks.size() + 1;
        b.phase = ph.id;
        b.startMs = blockStartMs;
        b.tBlockS = (nowMs - blockStartMs) / 1000.0;
        b.q = blockQ;
        b.fEnd = fatigue;
        b.dHr = (blockStartHr > 0 && blockMaxHr > 0) ? blockMaxHr - blockStartHr : Double.NaN;
        if (b.q > 0 && !Double.isNaN(b.dHr)) {
            b.r = b.dHr / (b.q / 1e6);
            String cls = ph.exerciseClass;
            Double ref = rRef.get(cls);
            if (ref == null && isControlPhase(ph) && b.r > 0) {
                rRef.put(cls, b.r);
                ref = b.r;
            }
            b.d = ref != null && ref > 0 ? b.r / ref : Double.NaN;
        } else {
            b.r = Double.NaN;
            b.d = Double.NaN;
        }
        blocks.add(b);
        if (isControlPhase(ph)) {
            mainBlocks++;
            blockLevelControl(b, nowMs);
        }
        state = State.REST;
        restStartMs = nowMs;
        restHr.clear();
        action("rest", nowMs);
    }

    private void tickRest(long nowMs) {
        double restS = (nowMs - restStartMs) / 1000.0;
        boolean hrOk = true;
        if (useHrControl() && !frozen && hr.getHrS() > 0) {
            hrOk = prof.xOf(hr.getHrS()) <= prof.xRec;               // L2
        }
        boolean ready = fatigue <= plan.fRec && hrOk && restS >= tRestMinS;
        boolean timeout = restS >= AiPlanner.T_REST_MAX_S;
        if (!ready && !timeout) {
            return;
        }
        if (!ready) {
            phiScale *= 0.9;                                          // §6.4
            action("rest_timeout", nowMs);
        }
        closeRestStats(restS, nowMs);
        state = State.RUN;
    }

    private void closeRestStats(double restS, long nowMs) {
        if (blocks.isEmpty()) {
            return;
        }
        BlockStat b = blocks.get(blocks.size() - 1);
        b.tRestS = restS;
        b.tauHr = fitTau();
        if (!Double.isNaN(b.tauHr) && b.tauHr > 0) {
            String cls = phaseOfBlock(b).exerciseClass;
            Double ref = tauRef.get(cls);
            if (ref == null) {
                tauRef.put(cls, b.tauHr);
                ref = b.tauHr;
            }
            b.v = b.tauHr / ref;
            boolean nearTop = blockMaxX >= prof.xHi - 0.10;
            if (useHrControl() && nearTop && b.v > 1.3) {
                tRestMinS *= 1.3;                                     // L2
                lCount[2]++;
            }
            if (useHrControl() && nearTop && b.v > 1.5) {
                l1(nowMs);
            }
        } else {
            b.v = Double.NaN;
        }
    }

    /** τ of HR decay in rest: ln((HR−HR_rest)/(HR_0−HR_rest)) = −t/τ, least squares through 0. */
    private double fitTau() {
        if (restHr.size() < 5 || prof.hrRest <= 0) {
            return Double.NaN;
        }
        double h0 = restHr.get(0)[1] - prof.hrRest;
        if (h0 < 10) {
            return Double.NaN;
        }
        double sxx = 0;
        double sxy = 0;
        for (double[] p : restHr) {
            double d = p[1] - prof.hrRest;
            if (d <= 0.5) {
                continue;
            }
            double y = Math.log(d / h0);
            sxx += p[0] * p[0];
            sxy += p[0] * y;
        }
        if (sxx <= 0 || sxy >= 0) {
            return Double.NaN;
        }
        return -sxx / sxy;
    }

    private Phase phaseOfBlock(BlockStat b) {
        for (Phase ph : plan.phases) {
            if (ph.id == b.phase) {
                return ph;
            }
        }
        return phase();
    }

    private void blockLevelControl(BlockStat b, long nowMs) {
        // NON_RESPONDER (§8.4) after the first two MAIN blocks.
        if (mainBlocks == 2 && prof.hrAvailable && !prof.safetyOnly
                && sessionMaxX < 0.10 && qUsed >= 0.25 * plan.qPlan) {
            cResp = 0;
            flags.add("NON_RESPONDER");
            action("non_responder", nowMs);
        }
        if (!useHrControl()) {
            return;
        }
        // [D] D_j / V_j only matter when the block came near the top of the corridor.
        boolean nearTop = blockMaxX >= prof.xHi - 0.10;
        if (!Double.isNaN(b.d) && nearTop) {
            fMaxEff = plan.fMax * (1.0 - 0.5 * Math.max(0, b.d - 1.0));  // L2
            if (b.d > 1.05) {
                lCount[2]++;
                action("l2_shorter_blocks", nowMs);
            }
            if (b.d > 1.4) {
                highDStreak++;
            } else {
                highDStreak = 0;
            }
            if (highDStreak >= 2) {
                l1(nowMs);
            }
        }
        // Below the corridor (FAT): shorter rests, more of segment B. Never +mA, never +Hz.
        if (!Double.isNaN(prof.xLo) && blockMaxX > -5 && blockMaxX < prof.xLo) {
            tRestMinS = Math.max(AiPlanner.T_REST_MIN_S, 0.8 * tRestMinS);
            Phase ph = phase();
            if (ph.b != null) {
                sigmaB = Math.min(ph.b.sigma, currentSigmaB(ph) + 0.05);
            }
            action("below_corridor", nowMs);
        }
    }

    private void l1(long nowMs) {
        lCount[1]++;
        if (!budgetHalved) {
            qBudget = qUsed + 0.5 * (qBudget - qUsed);
            budgetHalved = true;
            action("l1_budget", nowMs);
        } else {
            action("l1_cooldown", nowMs);
            jumpToCooldown(nowMs);
        }
        highDStreak = 0;
    }

    // ================================================================= per-cycle control (§8.2)

    private void controlPerCycle(Phase ph, long nowMs) {
        if (!useHrControl() || !isControlPhase(ph) || frozen || hr.getHrS() <= 0) {
            return;
        }
        double x = prof.xOf(hr.getHrS());
        double eHi = Math.max(0, x - prof.xHi);
        if (eHi > 0.02) {
            ctrlActive = true;
            zeroCycles = 0;
        } else if (eHi == 0) {
            zeroCycles++;
            if (zeroCycles >= 2) {
                ctrlActive = false;
            }
        }
        if (prof.cRate < 1.0) {
            return;          // c_rate 0.5: block-level decisions only (L1/L2)
        }
        double newOff = ctrlActive ? clamp(1 + 4 * eHi, 1.0, 2.5) : 1.0;    // L3
        if (newOff > offFactor + 1e-9) {
            lCount[3]++;
            action("l3_longer_pause", nowMs);
        }
        offFactor = newOff;
        if (ph.b != null) {                                                  // L4
            double base = ph.b.sigma;
            double s = ctrlActive ? clamp(base * (1 - 3 * eHi), 0, base) : currentSigmaB(ph);
            if (s < currentSigmaB(ph) - 1e-9) {
                lCount[4]++;
                action("l4_softer_b", nowMs);
            }
            sigmaB = s;
        }
        if (eHi > 0.10) {                                                    // u (MAIN only)
            highCycles++;
            if (highCycles >= 2 && ph.id == PhaseId.MAIN && u > U_MIN) {
                u = Math.max(U_MIN, u - 0.05);
                lCount[5]++;
                action("u_down", nowMs);
            }
        } else {
            highCycles = 0;
            if (eHi == 0 && u < 1.0) {
                u = Math.min(1.0, u + 0.02);
            }
        }
    }

    private double currentSigmaB(Phase ph) {
        if (ph.b == null) {
            return 1.0;
        }
        if (sigmaB < 0) {
            sigmaB = ph.b.sigma;
        }
        return sigmaB;
    }

    /** Level C: min(plan, fatigue, HR) with the HR term weighted by c_HR (§0). */
    private double arbiter(Phase ph, double sigma) {
        double progress = ph.durationS > 0 ? phaseElapsedS / ph.durationS : 1.0;
        double phi = Math.min(ph.phiAt(progress) * phiScale, plan.phiMax);   // G4
        if (isControlPhase(ph)) {
            phi = Math.min(phi, phiCapBand);                                 // G12
        }
        double dPlan = phi * sigma * ceilingScale;
        double dHr = dPlan * u;
        double c = cHr();
        double withHr = dPlan - c * (dPlan - dHr);
        double out = Math.min(dPlan, withHr) * uUser;                        // B: human reduce
        return clamp(out, 0, plan.phiMax);
    }

    public double cHr() {
        if (!useHrControl()) {
            return 0;
        }
        long now = lastTickMs;
        double fresh = hr.ageMs(now) <= 2 * Math.max(1000L, prof.dtHrMs) ? 1 : 0;
        return prof.cRate * fresh * hr.validShare() * cResp * prof.cMed;
    }

    private boolean useHrControl() {
        return prof.hrAvailable && !prof.safetyOnly && cResp > 0 && prof.cRate > 0;
    }

    private boolean isControlPhase(Phase ph) {
        return ph.id == PhaseId.MAIN || ph.id == PhaseId.METABOLIC;
    }

    private void applyRamps(CycleCmd c, CycleSpec spec) {
        if (in.goal == Goal.DRAIN || (in.goal == Goal.CELLULITE && !spec.isTetanic())) {
            c.rampUpMs = 1000;
            c.rampDownMs = 500;
        } else if (spec.isTetanic()) {
            c.rampUpMs = 400;                                               // G2: 0.3–0.5 s
            c.rampDownMs = 300;
        } else {
            c.rampUpMs = 0;
            c.rampDownMs = 0;
        }
        int maxTotal = Math.max(0, c.onS * 1000 - 200);
        if (c.rampUpMs + c.rampDownMs > maxTotal) {
            c.rampDownMs = Math.max(0, maxTotal - c.rampUpMs);
        }
    }

    // ================================================================= checkpoints (§9)

    private boolean checkCheckpoint(Phase ph, long nowMs) {
        if (!isControlPhase(ph)) {
            return false;
        }
        int mainIdx = firstIndexOf(PhaseId.MAIN);
        int lastFatigue = lastFatigueDrivenIndex();
        int slot = -1;
        if (phaseIdx == mainIdx && !checkpointDone[0]) {
            slot = 0;                                               // start of MAIN
        } else if (phaseIdx == mainIdx && !checkpointDone[1]
                && phaseElapsedS >= 0.5 * ph.durationS) {
            slot = 1;                                               // 50 % of MAIN
        } else if (phaseIdx == lastFatigue && !checkpointDone[2]
                && phaseElapsedS >= 0.85 * ph.durationS) {
            slot = 2;                                               // before the last block
        }
        if (slot < 0) {
            return false;
        }
        checkpointDone[slot] = true;
        resumeState = State.RUN;
        state = State.CHECKPOINT;
        checkpointSinceMs = nowMs;
        action("checkpoint", nowMs);
        return true;
    }

    private int firstIndexOf(PhaseId id) {
        for (int i = 0; i < plan.phases.size(); i++) {
            if (plan.phases.get(i).id == id) {
                return i;
            }
        }
        return -1;
    }

    private int lastFatigueDrivenIndex() {
        for (int i = plan.phases.size() - 1; i >= 0; i--) {
            if (plan.phases.get(i).blockMode == BlockMode.FATIGUE_DRIVEN) {
                return i;
            }
        }
        return -1;
    }

    // ================================================================= phases / end

    private boolean advancePhase(long nowMs) {
        if (inBlock) {
            endBlockSilently(nowMs);
        }
        phaseIdx++;
        phaseElapsedS = 0;
        useB = false;
        offFactor = 1.0;
        sigmaB = -1;
        if (phaseIdx >= plan.phases.size()) {
            finish(nowMs);
            return false;
        }
        action("phase:" + phase().id, nowMs);
        return true;
    }

    private void endBlockSilently(long nowMs) {
        inBlock = false;
    }

    private void jumpToCooldown(long nowMs) {
        int cd = firstIndexOf(PhaseId.COOLDOWN);
        if (cd < 0) {
            finish(nowMs);
            return;
        }
        if (phaseIdx >= cd) {
            return;
        }
        inBlock = false;
        phaseIdx = cd;
        phaseElapsedS = 0;
        useB = false;
        offFactor = 1.0;
        if (state == State.REST || state == State.CHECKPOINT) {
            state = State.RUN;
        }
        action("phase:" + PhaseId.COOLDOWN, nowMs);
    }

    private void finish(long nowMs) {
        endMs = nowMs;
        hrAtEnd = hr.getHrS();
        state = prof.hrAvailable ? State.RECOVERY : State.DONE;
        action("done", nowMs);
    }

    private void tickRecovery(long nowMs) {
        if (nowMs - endMs >= RECOVERY_MS) {
            if (hrAtEnd > 0 && hr.getHrS() > 0 && hr.ageMs(nowMs) < STALE_HR_MS) {
                hrr60 = hrAtEnd - hr.getHrS();
            }
            state = State.DONE;
        }
    }

    private void trackCorridor(double dtS) {
        if (!prof.hrAvailable || !isControlPhase(phase()) || frozen || hr.getHrS() <= 0) {
            return;
        }
        double x = prof.xOf(hr.getHrS());
        corridorTotalS += dtS;
        boolean inside = x <= prof.xHi && (Double.isNaN(prof.xLo) || x >= prof.xLo);
        if (inside) {
            corridorInS += dtS;
        }
    }

    private CycleCmd silent(long nowMs) {
        CycleCmd c = new CycleCmd();
        CycleSpec spec = phaseIdx < plan.phases.size() ? phase().a : plan.phases.get(0).a;
        c.hz = spec.hz;
        c.pwUs = spec.pwUs;
        c.onS = spec.onS;
        c.offS = AiPlanner.deviceOffS(spec.offS);
        c.frac = 0;
        current = c;
        currentSpec = spec;
        cycleStartMs = nowMs;
        return c;
    }

    private void action(String code, long nowMs) {
        lastAction = code;
        lastActionMs = nowMs;
        log.add((startMs > 0 ? (nowMs - startMs) / 1000 : 0) + "s " + code);
        if (log.size() > 200) {
            log.remove(0);
        }
    }

    private static double clamp(double v, double lo, double hi) {
        return Math.max(lo, Math.min(hi, v));
    }

    // ================================================================= snapshot for UI / report

    public State getState() {
        return state;
    }

    public String getPauseReason() {
        return pauseReason;
    }

    public boolean canResume() {
        return canResume || state == State.USER_PAUSE;
    }

    public Phase phase() {
        return plan.phases.get(Math.min(phaseIdx, plan.phases.size() - 1));
    }

    public int getPhaseIndex() {
        return phaseIdx;
    }

    public double getPhaseElapsedS() {
        return phaseElapsedS;
    }

    public double getElapsedPlanS() {
        double s = 0;
        for (int i = 0; i < Math.min(phaseIdx, plan.phases.size()); i++) {
            s += plan.phases.get(i).durationS;
        }
        return s + Math.min(phaseElapsedS, phase().durationS);
    }

    public double getHrS() {
        return hr.getHrS();
    }

    public long getHrAgeMs(long nowMs) {
        return hr.ageMs(nowMs);
    }

    public double getX() {
        return hr.getHrS() > 0 ? prof.xOf(hr.getHrS()) : Double.NaN;
    }

    public double getFatigue() {
        return fatigue;
    }

    public double getFatigueMax() {
        return fMaxEff;
    }

    public double getQUsed() {
        return qUsed;
    }

    public double getQBudget() {
        return qBudget;
    }

    public double getU() {
        return u;
    }

    public double getUUser() {
        return uUser;
    }

    public double getCeilingScale() {
        return ceilingScale;
    }

    public double getCurrentFrac() {
        return current != null && state == State.RUN ? current.frac : 0;
    }

    public CycleCmd getCurrentCycle() {
        return current;
    }

    public boolean isStimOn(long nowMs) {
        return state == State.RUN && isStimOnAt(nowMs);
    }

    public String getLastAction() {
        return lastAction;
    }

    public long getLastActionMs() {
        return lastActionMs;
    }

    public List<String> getLog() {
        return log;
    }

    public List<BlockStat> getBlocks() {
        return blocks;
    }

    public List<String> getFlags() {
        return flags;
    }

    public int getLCount(int level) {
        return level >= 1 && level <= 5 ? lCount[level] : 0;
    }

    public int getCapHits() {
        return capHits;
    }

    public double getCorridorShare() {
        return corridorTotalS > 0 ? corridorInS / corridorTotalS : Double.NaN;
    }

    public double getSessionMaxX() {
        return sessionMaxX;
    }

    public double getHrr60() {
        return hrr60;
    }

    public long getRecoveryRemainingMs(long nowMs) {
        return state == State.RECOVERY ? Math.max(0, RECOVERY_MS - (nowMs - endMs)) : 0;
    }

    public long getStartMs() {
        return startMs;
    }

    public long getEndMs() {
        return endMs;
    }

    public boolean isInBlock() {
        return inBlock;
    }

    public boolean isFrozen() {
        return frozen;
    }

    public AiHrFilter getHrFilter() {
        return hr;
    }

    public Plan getPlan() {
        return plan;
    }

    public Profile getProfile() {
        return prof;
    }

    public SessionInput getInput() {
        return in;
    }
}
