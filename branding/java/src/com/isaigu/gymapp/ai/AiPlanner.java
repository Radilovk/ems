package com.isaigu.gymapp.ai;

import com.isaigu.gymapp.ai.AiModel.BlockMode;
import com.isaigu.gymapp.ai.AiModel.CycleSpec;
import com.isaigu.gymapp.ai.AiModel.Fitness;
import com.isaigu.gymapp.ai.AiModel.Goal;
import com.isaigu.gymapp.ai.AiModel.Mode;
import com.isaigu.gymapp.ai.AiModel.Operator;
import com.isaigu.gymapp.ai.AiModel.Phase;
import com.isaigu.gymapp.ai.AiModel.PhaseId;
import com.isaigu.gymapp.ai.AiModel.Plan;
import com.isaigu.gymapp.ai.AiModel.Profile;
import com.isaigu.gymapp.ai.AiModel.SessionInput;
import com.isaigu.gymapp.ai.AiModel.Sex;

/** §2.1, §3 (DERIVE) and §4, §6 (PLAN): deterministic plan from the session input. */
public final class AiPlanner {
    /** c_rate = 1 up to this sample interval. Band 8 streams every ~3.0 s (±0.1 s jitter). [D] */
    public static final long DT_FULL_MS = 3200L;
    public static final long DT_SAFETY_ONLY_MS = 10000L;
    public static final double BUDGET_BETA = 0.10;
    public static final double T_BLOCK_MAX_S = 180.0;
    public static final double T_REST_MIN_S = 20.0;
    public static final double T_REST_MAX_S = 120.0;

    private AiPlanner() {}

    // ------------------------------------------------------------------ DERIVE (§3)

    public static int hrMax(Sex sex, int age) {
        return sex == Sex.FEMALE
                ? (int) Math.round(206 - 0.88 * age)      // R12
                : (int) Math.round(208 - 0.7 * age);      // R11
    }

    /**
     * @param hrRest  measured resting HR, or ≤0 when no band (then HR is not used at all)
     * @param dtHrMs  measured median sample interval
     */
    public static Profile derive(SessionInput in, int hrRest, double sigmaRest, long dtHrMs) {
        Profile p = new Profile();
        p.hrMax = hrMax(in.sex, in.age);
        p.hrAvailable = hrRest > 0;
        p.hrRest = hrRest > 0 ? hrRest : 0;
        p.sigmaRest = sigmaRest;
        p.dtHrMs = dtHrMs;
        p.hrr = Math.max(1, p.hrMax - p.hrRest);

        double xLo = Double.NaN;
        double xHi;
        double xCap;
        boolean passive = in.mode == Mode.PASSIVE;
        if (in.goal == Goal.TONE) {
            xHi = passive ? 0.45 : 0.70;
            xCap = passive ? 0.60 : 0.85;
        } else if (in.goal == Goal.FAT) {
            xLo = passive ? 0.25 : 0.40;                 // R14 for ACTIVE
            xHi = passive ? 0.45 : 0.59;                 // R14 for ACTIVE
            xCap = passive ? 0.60 : 0.80;
        } else {
            xHi = 0.30;
            xCap = 0.45;
        }
        double dx = in.fitness == Fitness.LOW ? -0.05 : in.fitness == Fitness.HIGH ? 0.05 : 0.0;
        if (in.age >= 60) {
            dx -= 0.05;
        }
        xHi += dx;
        xCap += dx;
        if (!Double.isNaN(xLo)) {
            xLo += dx;
        }
        if (in.operator == Operator.SELF) {
            xCap -= 0.05;                                // §5.1
        }
        p.xLo = xLo;
        p.xHi = xHi;
        p.xCap = xCap;
        p.xRec = xHi - 0.10;

        int cap = Math.min(p.hrAt(xCap), p.hrMax);
        if (in.hrCapOverride != null && in.hrCapOverride > 0) {
            // TRAINER may set any cap ≤ HR_max; SELF may only lower it.
            cap = in.operator == Operator.SELF
                    ? Math.min(cap, in.hrCapOverride)
                    : Math.min(p.hrMax, in.hrCapOverride);
        }
        p.hrCap = cap;

        if (!p.hrAvailable) {
            p.cRate = 0.0;
            p.safetyOnly = true;
            p.flags.add("NO_BAND");
        } else if (dtHrMs > DT_SAFETY_ONLY_MS) {
            p.cRate = 0.0;
            p.safetyOnly = true;
            p.flags.add("HR_SLOW");
        } else if (dtHrMs > DT_FULL_MS) {
            p.cRate = 0.5;
        } else {
            p.cRate = 1.0;
        }
        p.cMed = in.screening != null && in.screening.hrLoweringMedication ? 0.3 : 1.0;
        if (passive || in.goal == Goal.MASSAGE || in.goal == Goal.DRAIN || in.goal == Goal.CELLULITE) {
            p.safetyOnly = true;                         // §8 passive programs
        }
        if (p.hrAvailable && p.hrRest >= 100) {
            p.flags.add("FLAG_TACHY");                   // R13
        }
        if (p.hrAvailable && p.hrRest < 40) {
            p.flags.add("FLAG_BRADY");
        }
        return p;
    }

    // ------------------------------------------------------------------ PLAN (§4)

    public static int defaultSeconds(Goal goal) {
        return goal == Goal.FAT ? 1800 : 1200;
    }

    public static int clampSeconds(Goal goal, int seconds) {
        if (goal == Goal.TONE) {
            return Math.max(600, Math.min(1200, seconds));   // R1: ≤ 20 min
        }
        if (goal == Goal.FAT) {
            return Math.max(1800, Math.min(2400, seconds));  // R1: 30–40 min
        }
        return Math.max(600, Math.min(1800, seconds));       // [D]
    }

    public static Plan build(SessionInput in, Profile profile) {
        Plan plan = new Plan();
        boolean passive = in.mode == Mode.PASSIVE;
        boolean self = in.operator == Operator.SELF;
        int total = clampSeconds(in.goal,
                in.totalSeconds != null ? in.totalSeconds : defaultSeconds(in.goal));
        plan.totalS = total;
        plan.phiMax = self ? 0.9 : 1.0;

        switch (in.goal) {
            case TONE:
                addPhase(plan, PhaseId.WARMUP, 0.15, total, 0.6, 1.0, BlockMode.CONTINUOUS,
                        new CycleSpec(85, 350, 4, 4, 1.0), null);
                addPhase(plan, PhaseId.MAIN, 0.75, total, 1.0, 1.0, BlockMode.FATIGUE_DRIVEN,
                        new CycleSpec(85, 350, 6, 4, 1.0), null);
                addPhase(plan, PhaseId.COOLDOWN, 0.10, total, 0.5, 0.5, BlockMode.CONTINUOUS,
                        new CycleSpec(5, 250, 10, 0, 1.0), null);
                plan.cr10Lo = passive ? 4 : 6;
                plan.cr10Hi = passive ? 5 : 7;
                break;
            case FAT:
                addPhase(plan, PhaseId.WARMUP, 0.10, total, 0.6, 0.9, BlockMode.CONTINUOUS,
                        new CycleSpec(85, 350, 4, 4, 1.0), null);
                addPhase(plan, PhaseId.MAIN, 0.40, total, 0.9, 0.9, BlockMode.FATIGUE_DRIVEN,
                        new CycleSpec(85, 350, 4, 4, 1.0), null);
                addPhase(plan, PhaseId.METABOLIC, 0.40, total, 0.8, 0.8, BlockMode.FATIGUE_DRIVEN,
                        new CycleSpec(85, 350, 4, 0, 1.0), new CycleSpec(6, 350, 4, 0, 0.7)); // R7
                addPhase(plan, PhaseId.COOLDOWN, 0.10, total, 0.5, 0.5, BlockMode.CONTINUOUS,
                        new CycleSpec(5, 250, 10, 0, 1.0), null);
                plan.cr10Lo = passive ? 4 : 5;
                plan.cr10Hi = passive ? 5 : 6;
                break;
            case MASSAGE:
                addPhase(plan, PhaseId.WARMUP, 0.15, total, 0.5, 0.8, BlockMode.CONTINUOUS,
                        new CycleSpec(3, 250, 10, 2, 1.0), null);
                addPhase(plan, PhaseId.MAIN, 0.75, total, 0.8, 0.8, BlockMode.CONTINUOUS,
                        new CycleSpec(2, 250, 10, 2, 1.0), new CycleSpec(8, 250, 10, 2, 1.0));
                addPhase(plan, PhaseId.COOLDOWN, 0.10, total, 0.5, 0.5, BlockMode.CONTINUOUS,
                        new CycleSpec(2, 250, 10, 0, 1.0), null);
                plan.cr10Lo = 3;
                plan.cr10Hi = 4;
                break;
            case DRAIN:
                // Channel wave (§4.3) is not possible — XEMS drives all channels together.
                addPhase(plan, PhaseId.WARMUP, 0.15, total, 0.5, 0.8, BlockMode.CONTINUOUS,
                        new CycleSpec(1, 300, 3, 5, 1.0), null);
                addPhase(plan, PhaseId.MAIN, 0.75, total, 0.8, 0.8, BlockMode.CONTINUOUS,
                        new CycleSpec(1, 300, 3, 5, 1.0), null);                             // R9
                addPhase(plan, PhaseId.COOLDOWN, 0.10, total, 0.5, 0.5, BlockMode.CONTINUOUS,
                        new CycleSpec(1, 300, 3, 5, 1.0), null);
                plan.cr10Lo = 3;
                plan.cr10Hi = 4;
                break;
            case CELLULITE:
            default:
                addPhase(plan, PhaseId.MAIN, 0.45, total, 0.6, 0.6, BlockMode.FATIGUE_DRIVEN,
                        new CycleSpec(85, 350, 4, 6, 1.0), null);
                addPhase(plan, PhaseId.MAIN, 0.45, total, 0.8, 0.8, BlockMode.CONTINUOUS,
                        new CycleSpec(1, 300, 3, 5, 1.0), null);
                addPhase(plan, PhaseId.COOLDOWN, 0.10, total, 0.5, 0.5, BlockMode.CONTINUOUS,
                        new CycleSpec(3, 250, 10, 0, 1.0), null);
                plan.cr10Lo = 3;
                plan.cr10Hi = 4;
                break;
        }

        // §4.4 PASSIVE limits and §5.1 SOLO limits for tetanic segments.
        for (Phase ph : plan.phases) {
            limitCycle(ph, ph.a, passive, self);
            if (ph.b != null) {
                limitCycle(ph, ph.b, passive, self);
            }
            if (passive && ph.a.isTetanic()) {
                ph.phiStart = Math.min(ph.phiStart, 0.7);
                ph.phiEnd = Math.min(ph.phiEnd, 0.7);
            }
            ph.phiStart = Math.min(ph.phiStart, plan.phiMax);
            ph.phiEnd = Math.min(ph.phiEnd, plan.phiMax);
        }

        applyPause(plan, in);

        double[] fp = fatigueParams(in.fitness);
        plan.fMax = fp[0];
        plan.fRec = fp[1];
        plan.tauR = fp[2];
        plan.qPlan = simulateDose(plan);
        plan.qBudget = plan.qPlan * (1.0 + (self ? 0.0 : BUDGET_BETA));
        return plan;
    }

    // ------------------------------------------------------------------ active pause

    /** Shortest pause worth filling: shorter ones are only the device's minimum gap. */
    public static final int ACTIVE_PAUSE_MIN_OFF_S = 2;

    /**
     * Fill the OFF time of the cycles with a weak low-frequency impulse where it helps:
     * <ul>
     *   <li>work at ≥ 20 Hz (tetanus) → 6 Hz twitches ("muscle pump": blood flow and
     *       metabolite wash-out while the muscle stays engaged); 8 Hz for cellulite
     *       (vibration-like tissue stimulus);</li>
     *   <li>work at low frequency (massage) → a slower rhythm (about a third of the work
     *       frequency, ≥ 1 Hz): kneading ↔ slow tapping;</li>
     *   <li>strength 40–60 % of the work strength (below it for passive mode and SOLO);</li>
     *   <li>never for drainage and never in cool-down (continuous cycles have no pause).</li>
     * </ul>
     * AUTO: warm-up of TONE, warm-up + main of FAT, the tetanic part of CELLULITE, MASSAGE.
     * The main strength phase of TONE keeps the passive pause for full recovery between sets.
     */
    static void applyPause(Plan plan, SessionInput in) {
        for (Phase ph : plan.phases) {
            setPause(ph, ph.a, in);
            if (ph.b != null) {
                setPause(ph, ph.b, in);
            }
        }
    }

    private static void setPause(Phase ph, CycleSpec c, SessionInput in) {
        c.pauseHz = 0;
        c.pauseSigma = 0;
        if (!AiModel.activePauseAllowed(in.goal) || c.offS < ACTIVE_PAUSE_MIN_OFF_S
                || ph.id == PhaseId.COOLDOWN || in.pause == AiModel.PauseMode.PASSIVE) {
            return;
        }
        if (in.pause == AiModel.PauseMode.AUTO && !autoActive(in.goal, ph, c)) {
            return;
        }
        boolean tetanic = c.isTetanic();
        c.pauseHz = tetanic ? (in.goal == Goal.CELLULITE ? 8 : 6) : Math.max(1, Math.round(c.hz / 3f));
        if (!tetanic && c.pauseHz >= c.hz) {
            c.pauseHz = 0;                                   // 1 Hz work: nothing slower to add
            return;
        }
        double s;
        if (!tetanic) {
            s = 0.6;
        } else if (in.goal == Goal.CELLULITE) {
            s = 0.5;
        } else if (in.goal == Goal.FAT) {
            s = 0.45;
        } else {
            s = 0.4;
        }
        if (in.mode == Mode.PASSIVE) {
            s *= 0.85;
        }
        if (in.operator == Operator.SELF) {
            s = Math.min(s, 0.4);
        }
        c.pauseSigma = s;
    }

    private static boolean autoActive(Goal goal, Phase ph, CycleSpec c) {
        switch (goal) {
            case TONE:
                return ph.id == PhaseId.WARMUP;
            case FAT:
                return ph.id == PhaseId.WARMUP || ph.id == PhaseId.MAIN;
            case CELLULITE:
                return c.isTetanic();
            case MASSAGE:
                return true;
            default:
                return false;
        }
    }

    /** Dose of the active pause over {@code offS} seconds (0 when the pause is passive). */
    public static double pauseDose(CycleSpec c, double rho, int offS) {
        if (!c.hasActivePause()) {
            return 0;
        }
        return 2.0 * rho * c.pauseSigma * c.pwUs * c.pauseHz * offS;
    }

    private static void limitCycle(Phase ph, CycleSpec c, boolean passive, boolean self) {
        if (!c.isTetanic()) {
            return;
        }
        int onMax = (passive || self) ? 4 : 6;           // G1, §4.4, §5.1
        c.onS = Math.min(c.onS, onMax);
        if (passive && ph.b == null) {
            c.offS = Math.max(c.offS, c.onS);            // §4.4 t_off_min = t_on
        }
    }

    private static void addPhase(Plan plan, PhaseId id, double share, int total, double phi0,
            double phi1, BlockMode mode, CycleSpec a, CycleSpec b) {
        Phase ph = new Phase();
        ph.id = id;
        ph.durationS = (int) Math.round(share * total);
        ph.phiStart = phi0;
        ph.phiEnd = phi1;
        ph.blockMode = mode;
        ph.a = a;
        ph.b = b;
        // §8.5: R_ref per exercise class — METABOLIC (A↔B) responds per dose unlike MAIN.
        ph.exerciseClass = id == PhaseId.METABOLIC ? "METABOLIC" : "FULL";
        plan.phases.add(ph);
    }

    /** §6.3 by fitness: {F_max, F_rec, τ_r}. [D] */
    public static double[] fatigueParams(Fitness f) {
        if (f == Fitness.LOW) {
            return new double[] {12, 4, 40};
        }
        if (f == Fitness.HIGH) {
            return new double[] {18, 6, 22};
        }
        return new double[] {15, 5, 30};
    }

    /** w(f) = (f/85)^0.5 (§6.3). */
    public static double fatigueWeight(int hz) {
        return Math.sqrt(Math.max(0, hz) / 85.0);
    }

    /** Relative dose of one ON period: ρ·pw·f·t, ×2 for biphasic (§6.2). */
    public static double cycleDose(CycleSpec c, double rho) {
        return 2.0 * rho * c.pwUs * c.hz * c.onS;
    }

    /** Device needs a non-zero pause; "continuous" maps to 1 s. */
    public static int deviceOffS(int offS) {
        return Math.max(1, offS);
    }

    /**
     * Q_plan: run the plan at u = 1 through the same cycle / fatigue / rest rules the engine uses.
     */
    public static double simulateDose(Plan plan) {
        double q = 0;
        for (Phase ph : plan.phases) {
            double t = 0;
            double f = 0;
            boolean useB = false;
            boolean rest = false;
            double restT = 0;
            double blockT = 0;
            while (t < ph.durationS) {
                if (rest) {
                    f *= Math.exp(-1.0 / plan.tauR);
                    t += 1;
                    restT += 1;
                    if ((f <= plan.fRec && restT >= T_REST_MIN_S) || restT >= T_REST_MAX_S) {
                        rest = false;
                        blockT = 0;
                    }
                    continue;
                }
                CycleSpec c = (ph.b != null && useB) ? ph.b : ph.a;
                double rho = ph.phiAt(t / Math.max(1.0, ph.durationS)) * c.sigma;
                q += cycleDose(c, rho);
                f += fatigueWeight(c.hz) * rho * c.onS;
                int off = deviceOffS(c.offS);
                f *= Math.exp(-off / plan.tauR);
                if (c.hasActivePause()) {
                    q += pauseDose(c, rho, off);
                    f += fatigueWeight(c.pauseHz) * rho * c.pauseSigma * off;
                }
                double dur = c.onS + off;
                t += dur;
                blockT += dur;
                if (ph.b != null) {
                    useB = !useB;
                }
                if (ph.blockMode == BlockMode.FATIGUE_DRIVEN
                        && (f >= plan.fMax || blockT >= T_BLOCK_MAX_S)) {
                    rest = true;
                    restT = 0;
                }
            }
        }
        return q;
    }
}
