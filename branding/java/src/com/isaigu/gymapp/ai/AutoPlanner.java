package com.isaigu.gymapp.ai;

import com.isaigu.gymapp.ai.AutoCatalog.Program;
import com.isaigu.gymapp.ai.AutoModel.Goal;
import com.isaigu.gymapp.ai.AutoModel.HrUse;
import com.isaigu.gymapp.ai.AutoModel.Input;
import com.isaigu.gymapp.ai.AutoModel.Intensity;
import com.isaigu.gymapp.ai.AutoModel.Phase;
import com.isaigu.gymapp.ai.AutoModel.Plan;
import com.isaigu.gymapp.ai.AutoModel.Step;

import java.util.List;

import static com.isaigu.gymapp.ai.AutoModel.ABS;
import static com.isaigu.gymapp.ai.AutoModel.CHANNELS;
import static com.isaigu.gymapp.ai.AutoModel.CHEST;

/**
 * Program + client → plan with its hard limits (spec §3 modifiers, §3.3 strength envelope,
 * §3.4 dose, §5 zones). Deterministic: the same answers give the same plan.
 */
public final class AutoPlanner {
    private AutoPlanner() {}

    public static final int MIN_SECONDS = 600;
    /**
     * Owner (1.1.270): the active part collects at most 20 min of impulses (the pauses between exercises do not
     * count); the passive recovery after it is a fixed 10 min on top. Both are set before the start.
     */
    public static final int ACTIVE_MAX_S = 1200;
    public static final int RECOVERY_S = 600;

    /** Longest active part this client may have in this program (after adaptation / recovery), ≤ 20 min. */
    public static int maxSeconds(Program p, Goal goal, Input in) {
        int t = Math.min(ACTIVE_MAX_S, AutoCatalog.baseSeconds(p, goal, in));
        if (AutoCatalog.SENIOR.equals(p.id) && in.sessions < 3) {
            t = Math.min(t, 900);
        }
        if (p.isActive()) {
            if (in.sessions == 0) {
                t = Math.min(t, 720);
            } else if (in.sessions <= 2) {
                t = Math.min(t, 900);
            }
            if (in.hoursSinceActive >= 0 && in.hoursSinceActive < 72) {
                t = (int) Math.round(t * 0.8);
            }
        } else if (in.sessions == 0) {
            t = Math.min(t, 900);
        }
        return Math.max(MIN_SECONDS, t);
    }

    public static int clampSeconds(Program p, Goal goal, Input in, int seconds) {
        int max = maxSeconds(p, goal, in);
        return Math.max(Math.min(MIN_SECONDS, max), Math.min(max, seconds));
    }

    /** "Intense" only for active programs after the adaptation, under 65, with a trainer (spec §2). */
    public static boolean intenseAllowed(Program p, Input in) {
        return p != null && p.isActive() && in.sessions >= 3 && in.age < 65 && !in.solo();
    }

    /** hrRest ≤ 0 → not measured (70 is assumed and the plan says so). */
    public static Plan build(Input in, int hrRest) {
        Program p = AutoCatalog.get(in.programId);
        if (p == null) {
            p = AutoCatalog.menu(in.goal, in.kind).get(0);
            in.programId = p.id;
        }
        Plan plan = new Plan();
        plan.program = p;
        plan.input = in;
        int max = maxSeconds(p, in.goal, in);
        plan.activeS = in.totalSeconds != null ? clampSeconds(p, in.goal, in, in.totalSeconds) : max;
        if (plan.activeS < Math.min(ACTIVE_MAX_S, AutoCatalog.baseSeconds(p, in.goal, in))) {
            plan.note("Времето е съкратено: адаптация / възстановяване",
                    "Shortened: adaptation / recovery");
        }

        // ---- strength factor ceiling
        double phiMax = 1.0;
        if (in.sessions == 0) {
            phiMax = 0.7;
            plan.note("Първа сесия: до 70 % от калибрирането", "First session: up to 70 % of the calibration");
        } else if (in.sessions <= 2) {
            phiMax = 0.8;
            plan.note("Сесия " + (in.sessions + 1) + ": до 80 %", "Session " + (in.sessions + 1) + ": up to 80 %");
        } else if (in.sessions <= 7) {
            phiMax = 0.9;
        }
        if (in.age >= 60) {
            phiMax -= 0.1;
            plan.note("60+ г.: −10 % сила, по-дълги паузи", "60+: −10 % strength, longer pauses");
        }
        // little muscle → a gentler ceiling: measured on the scale when there is a measurement (an athletic low
        // BMI is not fragile), else the BMI < 18.5 proxy
        if (in.measured ? in.muscleLow : in.bmi() > 0 && in.bmi() < 18.5) {
            phiMax -= 0.1;
            if (in.measured) {
                plan.note("Кантарът: малко мускули — −10 % сила", "Scale: little muscle — −10 % strength");
            }
        }
        // recovery: the time rule (< 72 h since the last active) and the scale this morning measure the same thing —
        // the stronger of the two applies, never both (1.1.311-ai; NextPlan.recommend does the same)
        boolean recent = p.isActive() && in.hoursSinceActive >= 0 && in.hoursSinceActive < 72;
        boolean scaleCut = p.isActive() && in.readiness < 0.99;
        if (scaleCut && (!recent || in.readiness < 0.8)) {
            // the scale this morning: swelling / less water against the client's own baseline (wearable/scale)
            phiMax *= in.readiness;
            int pct = (int) Math.round((1 - in.readiness) * 100);
            plan.note("Кантарът: не е възстановен — −" + pct + " %", "Scale: not recovered — −" + pct + " %");
        } else if (recent) {
            phiMax *= 0.8;
            plan.note("Под 72 ч от последната активна: −20 %", "Under 72 h since the last active: −20 %");
        }
        if (in.solo()) {
            phiMax = Math.min(phiMax, 0.9);
        }
        // The client's focus zones and state (AiPersonal): ceiling, pauses, onset, zones.
        AiPersonal.Effect pe = AiPersonal.of(AiPersonal.withScaleFocus(in.focus, in.scaleFocus), in.cond, in.today);
        phiMax *= pe.phi;
        plan.phiMax = Math.max(0.4, Math.min(1.0, phiMax));

        // ---- envelope ceiling (how far above the calibration a person may go)
        double env = p.envMax;
        if (in.sessions < 3) {
            env = Math.min(env, 1.0);
        }
        if (in.solo()) {
            env = Math.min(env, 1.1);
        }
        plan.envMax = env;

        // ---- phases
        List<Phase> phases = AutoCatalog.phases(p, in.goal, in, plan.activeS);
        plan.totalS = 0;
        plan.recoveryS = 0;
        for (Phase ph : phases) {
            plan.totalS += ph.durationS;
            if (ph.isCooldown()) {
                plan.recoveryS += ph.durationS;
            }
        }
        if (in.intensity == Intensity.INTENSE && !intenseAllowed(p, in)) {
            in.intensity = Intensity.STANDARD;
        }
        double k = in.intensity == Intensity.SOFT ? 0.85 : in.intensity == Intensity.INTENSE ? 1.1 : 1.0;
        int offShift = in.intensity == Intensity.SOFT ? 1 : in.intensity == Intensity.INTENSE ? -1 : 0;
        for (Phase ph : phases) {
            if (!ph.isCooldown()) {
                ph.phiStart *= k;
                ph.phiEnd *= k;
            }
            if (ph.envEnd == AutoCatalog.ENV_MAX) {
                ph.envEnd = plan.envMax;
            }
            ph.envStart = Math.min(ph.envStart, plan.envMax);
            ph.envEnd = Math.max(ph.envStart, Math.min(ph.envEnd, plan.envMax));
            // passive tetanic work stays low (§4.4 of the AI spec)
            if (!p.isActive() && ph.hasTetanic() && !ph.wave) {
                ph.phiStart = Math.min(ph.phiStart, 0.7);
                ph.phiEnd = Math.min(ph.phiEnd, 0.7);
            }
            for (int i = 0; i < ph.steps.size(); i++) {
                Step s = ph.steps.get(i);
                if (s.isTetanic() && s.sigma > 0 && !ph.wave) {
                    s.offS = Math.max(1, s.offS + offShift);
                    if (in.age >= 60) {
                        s.offS += 2;
                        s.rampUpMs += 200;
                    }
                    s.offS += pe.offS;
                    s.rampUpMs += pe.rampUpMs;
                }
            }
            for (int i = 0; i < ph.steps.size(); i++) {
                Step next = ph.steps.get((i + 1) % ph.steps.size());
                ph.steps.set(i, AutoLimits.clampStep(ph.steps.get(i), ph.steps.size() > 1 ? next : null,
                        plan, ph));
            }
        }
        plan.phases.addAll(phases);
        if (in.intensity == Intensity.SOFT) {
            plan.note("Мек: −15 % сила, +1 s пауза", "Soft: −15 % strength, +1 s pause");
        } else if (in.intensity == Intensity.INTENSE) {
            plan.note("Интензивен: +10 % (до тавана), −1 s пауза", "Intense: +10 % (to the ceiling), −1 s pause");
        }

        // ---- zones
        int[] pz = pe.apply(p.zones);
        for (int i = 0; i < CHANNELS; i++) {
            plan.zones[i] = pz[i];
            plan.zoneMax[i] = pe.zoneMax[i];
        }
        for (int i = 0; i < pe.notesBg.size(); i++) {
            plan.note(pe.notesBg.get(i), pe.notesEn.get(i));
        }
        if (in.extra.breastfeeding) {
            plan.zones[CHEST] = 0;
            plan.zoneLocked[CHEST] = true;
            plan.note("Кърмене: гърдите са изключени", "Breastfeeding: chest channel off");
        }
        if (AutoCatalog.POSTPARTUM.equals(p.id) && in.extra.diastasis) {
            plan.zones[ABS] = Math.min(plan.zones[ABS], 40);
            plan.zoneMax[ABS] = 40;
            plan.zoneLocked[ABS] = in.sessions < 6;
            if (!in.cond.contains("diastasis")) {
                plan.note("Диастаза: коремът до 40 %", "Diastasis: abs up to 40 %");
            }
        }

        // ---- CR10 target
        plan.cr10Lo = p.cr10Lo;
        plan.cr10Hi = p.cr10Hi;
        if (in.sessions == 0) {
            plan.cr10Lo = Math.max(2, plan.cr10Lo - 1);
            plan.cr10Hi = Math.max(plan.cr10Lo, plan.cr10Hi - 1);
        }

        // ---- heart rate
        plan.hrUse = AutoCatalog.hrUse(p, in.goal);
        plan.hrMax = AiPlanner.hrMax(in.sex, in.age);
        plan.hrRestMeasured = hrRest > 0;
        plan.hrRest = hrRest > 0 ? hrRest : 70;
        double dx = in.fitness == AiModel.Fitness.LOW ? -0.05 : in.fitness == AiModel.Fitness.HIGH ? 0.05 : 0;
        double xCap = p.xCap + dx + (in.age >= 60 ? -0.05 : 0) + (in.solo() ? -0.05 : 0);
        plan.xCap = xCap;
        plan.hrCap = Math.min(plan.hrAt(xCap), plan.hrMax);
        if (plan.hrUse == HrUse.CORRIDOR) {
            double[] c = AutoCatalog.corridor(p);
            plan.xLo = c[0];
            plan.xHi = c[1] + dx + (in.age >= 60 ? -0.05 : 0);
            if (goalSlimBmi(in)) {
                plan.xHi -= 0.05;
            }
        }

        // ---- double impulse
        plan.doublePulseAllowed = p.doublePulse
                && !(AutoCatalog.POSTPARTUM.equals(p.id) && in.sessions < 4);

        // ---- dose
        plan.qPlan = simulateDose(plan);
        plan.qBudget = plan.qPlan * 1.1;
        return plan;
    }

    /** Obese on a fat-loss goal: by the scale's fat mass when measured (BMI ≥ 30 from muscle is not), else BMI. */
    private static boolean goalSlimBmi(Input in) {
        return in.goal == Goal.SLIM && (in.measured ? in.fatObese : in.bmi() >= 30);
    }

    /** Dose of the whole plan with the planned factors (relative units, as in the AI §6.2). */
    public static double simulateDose(Plan plan) {
        double q = 0;
        for (Phase ph : plan.phases) {
            if (ph.steps.isEmpty()) {
                continue;
            }
            int t = 0;
            int i = 0;
            while (t < ph.durationS) {
                Step s = ph.steps.get(i % ph.steps.size());
                double frac = Math.min(plan.phiMax, ph.phiAt((double) t / ph.durationS)) * s.sigma;
                q += cycleDose(s, frac, plan.input.doublePulse && plan.doublePulseAllowed);
                t += s.durationS();
                i++;
            }
        }
        return q;
    }

    /** One cycle: ρ·pw·f·t ×2 (biphasic) for ON, plus the double impulse in the pause. */
    public static double cycleDose(Step s, double frac, boolean pause) {
        double q = 2.0 * frac * s.pwUs * s.hz * s.onS;
        if (pause && s.pauseHz > 0 && s.pauseSigma > 0) {
            q += 2.0 * frac * s.pauseSigma * s.pwUs * s.pauseHz * Math.max(1, s.offS);
        }
        return q;
    }
}
