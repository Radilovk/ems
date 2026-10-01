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
    /** Warm-up frequency of the strength goals (TONE, FAT). */
    public static final int WARMUP_HZ = 7;

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
                // Warm-up: 7 Hz single twitches, almost continuous — blood flow and warmth, next to no fatigue
                // (the WB-EMS warm-up); the strength part starts with fresh muscles. [D]
                addPhase(plan, PhaseId.WARMUP, 0.15, total, 0.6, 0.9, BlockMode.CONTINUOUS,
                        new CycleSpec(WARMUP_HZ, 350, 10, 0, 1.0), null);
                addPhase(plan, PhaseId.MAIN, 0.75, total, 1.0, 1.0, BlockMode.FATIGUE_DRIVEN,
                        new CycleSpec(85, 350, 6, 4, 1.0), null);
                addPhase(plan, PhaseId.COOLDOWN, 0.10, total, 0.5, 0.5, BlockMode.CONTINUOUS,
                        new CycleSpec(5, 250, 10, 0, 1.0), null);
                plan.cr10Lo = passive ? 4 : 6;
                plan.cr10Hi = passive ? 5 : 7;
                break;
            case FAT:
                addPhase(plan, PhaseId.WARMUP, 0.10, total, 0.6, 0.9, BlockMode.CONTINUOUS,
                        new CycleSpec(WARMUP_HZ, 350, 10, 0, 1.0), null);
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
                return false;                       // 7 Hz warm-up has no pause; the strength part keeps full rest
            case FAT:
                return ph.id == PhaseId.MAIN;
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
        // τ_r from the phosphocreatine recovery half-time (untrained ~35 s, trained ~21 s): τ = t½ / ln 2.
        // The muscle recovers all the time, in the impulse too, so F settles: the classic WB-EMS 4 s / 4 s at
        // 85 Hz and the calibrated strength peaks at τ / (1 + e^(−4/τ)). F_max is that peak × the tolerance
        // of the fitness level: MID holds 4 / 4 just at the edge (20 min, the standard session), LOW needs rests
        // already there, HIGH holds a bit more (6 / 4 with long blocks). F_rec = F_max / 3. [D]
        double tau = f == Fitness.LOW ? 50 : f == Fitness.HIGH ? 30 : 40;
        double k = f == Fitness.LOW ? 0.8 : f == Fitness.HIGH ? 1.15 : 1.0;
        double fMax = k * tau / (1 + Math.exp(-4.0 / tau));
        return new double[] {fMax, fMax / 3, tau};
    }

    /** Force–frequency curve: half of the tetanic force at F50_HZ, slope FF_N (human quadriceps, NMES). [E:R4,R5] */
    static final double F50_HZ = 15.0;
    static final double FF_N = 2.5;

    static double forceShare(int hz) {
        double x = Math.pow(Math.max(0, hz), FF_N);
        return x / (x + Math.pow(F50_HZ, FF_N));
    }

    /**
     * w(f) — how fast the impulse tires the muscle at full calibrated strength, 1.0 at 85 Hz (§6.3).
     * The force the frequency produces (the force–frequency curve: single twitches below ~10 Hz, the muscle relaxes
     * between them; a fused contraction from ~20–30 Hz) times an extra share for high frequencies (synchronous
     * firing of the same motor units, conduction failure). 7 Hz ≈ 0.10, 20 Hz ≈ 0.53, 50 Hz ≈ 0.86. [D]
     */
    /**
     * Contraction strength the frequency gives, against 85 Hz (the force–frequency curve): 1 Hz ≈ 0, 7 Hz ≈ 0.13,
     * 20 Hz ≈ 0.68, 50 Hz ≈ 0.97. What "muscle work" means in the session record and the report. [E:R4,R5]
     */
    public static double forceWeight(int hz) {
        return forceShare(hz) / forceShare(85);
    }

    public static double fatigueWeight(int hz) {
        return forceShare(hz) * (0.7 + 0.3 * Math.max(0, hz) / 85.0) / forceShare(85);
    }

    /** Continuous phases (warm-up, cool-down, massage, drainage) keep their fatigue peak below this share of F_max. */
    public static final double CONT_F_SHARE = 0.75;
    /** …but never go below this output just for that (a warm-up still has to be felt). [D] */
    public static final double CONT_FLOOR = 0.3;

    /** Fatigue at the end of an impulse of onS seconds at output rho, starting from f (§6.3). */
    public static double afterOn(double f, CycleSpec c, double rho, double tauR) {
        double e = Math.exp(-c.onS / tauR);
        return f * e + fatigueWeight(c.hz) * rho * tauR * (1 - e);
    }

    /** Fatigue at the end of the pause (offS s; the active pause keeps a light load on). */
    public static double afterOff(double f, CycleSpec c, double rho, int offS, boolean pause, double tauR) {
        double e = Math.exp(-offS / tauR);
        double g = pause && c.hasActivePause() ? fatigueWeight(c.pauseHz) * rho * c.pauseSigma * tauR : 0;
        return f * e + g * (1 - e);
    }

    /**
     * Highest output of a continuous phase's cycle whose steady-state fatigue peak stays at CONT_F_SHARE · F_max.
     * A continuous phase has no blocks and no rests, so only the output can keep it below the block limit.
     * Steady state of one cycle (all terms linear in ρ): f0 = (G·(1−E1)·E2 + P·(1−E2)) / (1 − E1·E2),
     * peak = f0·E1 + G·(1−E1), with G = w·ρ·τ, P = w_p·ρ·σ_p·τ, E1 = e^(−on/τ), E2 = e^(−off/τ).
     */
    public static double continuousCap(double fMax, double tauR, CycleSpec c, int offS, boolean pause) {
        double e1 = Math.exp(-c.onS / tauR);
        double e2 = Math.exp(-Math.max(1, offS) / tauR);
        double g = fatigueWeight(c.hz) * tauR;
        double p = pause && c.hasActivePause() ? fatigueWeight(c.pauseHz) * c.pauseSigma * tauR : 0;
        double f0 = (g * (1 - e1) * e2 + p * (1 - e2)) / Math.max(1e-9, 1 - e1 * e2);
        double peak = Math.max(f0 * e1 + g * (1 - e1), f0);
        double cap = peak > 1e-9 ? CONT_F_SHARE * fMax / peak : 1.0;
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
                int off = deviceOffS(c.offS);
                if (ph.blockMode == BlockMode.CONTINUOUS) {
                    rho = Math.min(rho, continuousCap(plan.fMax, plan.tauR, c, off, pauseOn));
                }
                double peak = afterOn(f, c, rho, plan.tauR);
                double end = afterOff(peak, c, rho, off, pauseOn, plan.tauR);
                if (ph.blockMode == BlockMode.FATIGUE_DRIVEN && blockT > 0 && Math.max(peak, end) > plan.fMax) {
                    rest = true;                                  // the engine ends a block before crossing F_max
                    restT = 0;
                    continue;
                }
                q += cycleDose(c, rho);
                f = end;
                if (pauseOn && c.hasActivePause()) {
                    q += pauseDose(c, rho, off);
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
