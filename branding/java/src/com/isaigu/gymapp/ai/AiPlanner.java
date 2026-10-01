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

        // The client's state: a lower ceiling, longer pauses in tetanic work (AiPersonal).
        plan.personal = AiPersonal.of(in.focus, in.cond, in.today);
        if (plan.personal.phi < 1.0) {
            plan.phiMax *= plan.personal.phi;
            for (Phase ph : plan.phases) {
                ph.phiStart = Math.min(ph.phiStart, plan.phiMax);
                ph.phiEnd = Math.min(ph.phiEnd, plan.phiMax);
            }
        }
        if (plan.personal.offS > 0) {
            for (Phase ph : plan.phases) {
                if (ph.a.isTetanic() && ph.a.offS > 0) {
                    ph.a.offS += plan.personal.offS;
                }
                if (ph.b != null && ph.b.isTetanic() && ph.b.offS > 0) {
                    ph.b.offS += plan.personal.offS;
                }
            }
        }

        applyPause(plan, in);

        double[] fp = fatigueParams(in.fitness);
        plan.fMax = fp[0];
        plan.fRec = fp[1];
        plan.tauR = fp[2];
        plan.qPlanPauseOn = simulateDose(plan, true);
        plan.qPlanPauseOff = simulateDose(plan, false);
        plan.qPlan = plan.pauseOn ? plan.qPlanPauseOn : plan.qPlanPauseOff;
        plan.qCool = simulateDose(plan, false, PhaseId.COOLDOWN);
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
        boolean any = false;
        for (Phase ph : plan.phases) {
            setPause(ph, ph.a, in);
            any |= ph.a.hasActivePause();
            if (ph.b != null) {
                setPause(ph, ph.b, in);
                any |= ph.b.hasActivePause();
            }
        }
        plan.pauseAvailable = any;
        plan.pauseOn = any && in.pause != AiModel.PauseMode.PASSIVE;
    }

    private static void setPause(Phase ph, CycleSpec c, SessionInput in) {
        c.pauseHz = 0;
        c.pauseSigma = 0;
        // Always programmed where it helps; the on/off switch (setup or live) decides use.
        if (!AiModel.activePauseAllowed(in.goal) || c.offS < ACTIVE_PAUSE_MIN_OFF_S
                || ph.id == PhaseId.COOLDOWN || !autoActive(in.goal, ph, c)) {
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

    /**
     * w(f) = (f/85)^0.5 for tetanic work (§6.3); below 20 Hz the muscle relaxes between single twitches,
     * so the weight is linear (f/85) — a 5 Hz cool-down or a 2 Hz massage is not a contraction. [D]
     */
    public static double fatigueWeight(int hz) {
        double r = Math.max(0, hz) / 85.0;
        return hz >= 20 ? Math.sqrt(r) : r;
    }

    /** Continuous phases (warm-up, cool-down, massage, drainage) keep their fatigue peak below this share of F_max. */
    public static final double CONT_F_SHARE = 0.75;
    /** …but never go below this output just for that (a warm-up still has to be felt). [D] */
    public static final double CONT_FLOOR = 0.3;

    /**
     * Highest output of a continuous phase's cycle whose steady-state fatigue peak stays at CONT_F_SHARE · F_max.
     * A continuous phase has no blocks and no rests, so nothing else stops the fatigue: with the old model a
     * 4 s / 4 s warm-up at full strength settled at 2–3 × F_max and the main part started already "exhausted".
     * Steady state of f → (f + a)·d + p per cycle: peak = (a·d + p) / (1 − d) + a, all linear in the output ρ.
     */
    public static double continuousCap(double fMax, double tauR, CycleSpec c, int offS, boolean pause) {
        double a = fatigueWeight(c.hz) * c.onS;
        double d = Math.exp(-Math.max(1, offS) / Math.max(1.0, tauR));
        double p = pause && c.hasActivePause() ? fatigueWeight(c.pauseHz) * c.pauseSigma * offS : 0;
        double k = (a * d + p) / Math.max(1e-6, 1 - d) + a;
        double cap = k > 1e-9 ? CONT_F_SHARE * fMax / k : 1.0;
        return Math.max(CONT_FLOOR, cap);
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
        return simulateDose(plan, plan.pauseOn);
    }

    public static double simulateDose(Plan plan, boolean pauseOn) {
        return simulateDose(plan, pauseOn, null);
    }

    /** @param only just this phase (each phase starts fresh, so phases add up), or null for all */
    public static double simulateDose(Plan plan, boolean pauseOn, PhaseId only) {
        double q = 0;
        for (Phase ph : plan.phases) {
            if (only != null && ph.id != only) {
                continue;
            }
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
                if (ph.blockMode == BlockMode.FATIGUE_DRIVEN && blockT > 0) {
                    // the engine ends a block before the cycle that would cross F_max
                    double g = fatigueWeight(c.hz) * rho * c.onS
                            + (pauseOn && c.hasActivePause()
                            ? fatigueWeight(c.pauseHz) * rho * c.pauseSigma * deviceOffS(c.offS) : 0);
                    if (f + g > plan.fMax) {
                        rest = true;
                        restT = 0;
                        continue;
                    }
                }
                if (ph.blockMode == BlockMode.CONTINUOUS) {
                    rho = Math.min(rho, continuousCap(plan.fMax, plan.tauR, c, deviceOffS(c.offS), pauseOn));
                }
                q += cycleDose(c, rho);
                f += fatigueWeight(c.hz) * rho * c.onS;
                int off = deviceOffS(c.offS);
                f *= Math.exp(-off / plan.tauR);
                if (pauseOn && c.hasActivePause()) {
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
