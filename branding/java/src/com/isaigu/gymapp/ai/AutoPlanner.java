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
    /**
     * Owner (1.1.532): the active part is about 20 min with its recommended rests; when the body needs longer pauses
     * (the HR holds a rest or pauses the impulses) it may stretch, but never past 25 min — the absolute ceiling with
     * every rest. The passive recovery (10 min) comes after: at most 35 min in all.
     */
    public static final int ACTIVE_CEILING_S = 1500;
    public static final int STRETCH_MAX_S = 300;

    /** How far this plan's active part may stretch for HR-imposed pauses (≤ 5 min, never past 25 min). */
    public static int stretchS(Plan plan) {
        return plan == null ? 0 : Math.max(0, Math.min(STRETCH_MAX_S, ACTIVE_CEILING_S - plan.activeS));
    }

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

        // ---- strength (owner, 1.1.526): the strength — overall and per zone — is the trainer's / the client's alone,
        // it is that individual. A body program sets the impulse, the pause, the rate, the depth (pulse width), the
        // rhythm and which muscles work, never how strong: it runs at the calibration and every ± of the person
        // goes through. What the evidence says about the dose stays as advice for the trainer (the notes below and
        // the CR-10 target), not as a cap. Since 2026-11-25 the face too: no program factor on the strength.
        boolean face = AutoCatalog.isFace(p);
        double phiMax = 1.0;
        if (in.sessions == 0) {
            phiMax = 0.7;
        } else if (in.sessions <= 2) {
            phiMax = 0.8;
        } else if (in.sessions <= 7) {
            phiMax = 0.9;
        }
        if (in.age >= 60) {
            phiMax -= 0.1;
            plan.note("60+ г.: по-дълги паузи", "60+: longer pauses");
        }
        // little muscle without a weigh-in: the BMI < 18.5 proxy. The scale never moves the strength (owner,
        // 1.1.458: strength is what the person feels) — its little muscle and readiness lengthen the pause below.
        if (!in.measured && in.bmi() > 0 && in.bmi() < 18.5) {
            phiMax -= 0.1;
        }
        boolean recent = p.isActive() && in.hoursSinceActive >= 0 && in.hoursSinceActive < 72;
        if (recent) {
            phiMax *= 0.8;
            plan.note("Под 72 ч от последната активна: по-кратко", "Under 72 h since the last active: shorter");
        }
        // the scale: rest in the pause, not less current — swelling / less water this morning (+1 / +2 s),
        // little muscle (+1 s)
        int scaleOff = 0;
        if (p.isActive() && in.readiness < 0.99) {
            scaleOff = in.readiness < 0.8 ? 2 : 1;
            plan.note("Кантарът: не е възстановен — +" + scaleOff + " s пауза",
                    "Scale: not recovered — +" + scaleOff + " s pause");
        }
        if (in.measured && in.muscleLow) {
            scaleOff += 1;
            plan.note("Кантарът: малко мускули — +1 s пауза", "Scale: little muscle — +1 s pause");
        }
        if (in.solo()) {
            phiMax = Math.min(phiMax, 0.9);
        }
        // The client's focus zones and state (AiPersonal): ceiling, pauses, onset, zones.
        AiPersonal.Effect pe = AiPersonal.of(in.focus, in.cond, in.today);
        phiMax *= pe.phi;
        plan.phiMax = 1.0;                        // the strength is the person's, face too (owner, 2026-11-25)

        // ---- envelope ceiling (how far above the calibration a person may go) — the face only
        double env = p.envMax;
        if (in.sessions < 3) {
            env = Math.min(env, 1.0);
        }
        if (in.solo()) {
            env = Math.min(env, 1.1);
        }
        plan.envMax = 1.0;

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
            // no program moves the strength, face included (owner, 2026-11-25): every phase at the person's level
            ph.phiStart = 1.0;
            ph.phiEnd = 1.0;
            ph.envStart = 1.0;
            ph.envEnd = 1.0;
            if (ph.envEnd == AutoCatalog.ENV_MAX) {
                ph.envEnd = plan.envMax;
            }
            ph.envStart = Math.min(ph.envStart, plan.envMax);
            ph.envEnd = Math.max(ph.envStart, Math.min(ph.envEnd, plan.envMax));
            for (int i = 0; i < ph.steps.size(); i++) {
                Step s = ph.steps.get(i);
                if (s.isTetanic() && s.sigma > 0 && !ph.wave) {
                    s.offS = Math.max(1, s.offS + offShift);
                    if (in.age >= 60) {
                        s.offS += 2;
                        s.rampUpMs += 200;
                    }
                    s.offS += pe.offS + scaleOff;
                    s.rampUpMs += pe.rampUpMs;
                }
            }
            for (int i = 0; i < ph.steps.size(); i++) {
                Step st = ph.steps.get(i);
                if (st.pauseHz > 0 && st.pauseSigma > 0) {
                    st.pauseSigma = 1.0;        // the 2nd impulse starts at the main strength: its pause counts it so
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
            plan.note("Мек: +1 s пауза", "Soft: +1 s pause");
        } else if (in.intensity == Intensity.INTENSE) {
            plan.note("Интензивен: −1 s пауза",
                    "Intense: −1 s pause");
        }

        // ---- zones (owner, 2026-11-25, every program and procedure): the program says only WHICH channels work —
        // on (100) or off and locked; never a preset strength or a ratio between channels: that is the person's alone.
        for (int i = 0; i < CHANNELS; i++) {
            boolean on = p.zones[i] > 0;
            plan.zones[i] = on ? 100 : 0;
            plan.zoneMax[i] = 100;
            plan.zoneLocked[i] = !on;
        }
        plan.zoneDelta = 100;
        for (int i = 0; i < pe.notesBg.size(); i++) {
            String bg = pe.notesBg.get(i);
            String en = pe.notesEn.get(i);
            if (!bg.startsWith("Диастаза")) {
                plan.note(face ? bg : "Препоръка · " + bg, face ? en : "Advice · " + en);
            }
        }
        if (!face && in.zoneForce != null) {
            // the AI brief's channel on / off from the trainer's text (1.1.534) — on / off only
            for (int i = 0; i < Math.min(CHANNELS, in.zoneForce.length); i++) {
                if (in.zoneForce[i] >= 0) {
                    plan.zones[i] = in.zoneForce[i] > 0 ? 100 : 0;
                }
            }
        }
        if (in.extra.breastfeeding) {
            plan.zones[CHEST] = 0;
            plan.zoneLocked[CHEST] = true;
            plan.note("Кърмене: гърдите са изключени", "Breastfeeding: chest channel off");
        }
        if (face) {
            plan.note("Лице: работят само местата на програмата (букса F1–F10)",
                    "Face: only the program's sites work (connector F1–F10)");
        }
        boolean diastasis = !face && (pe.zoneMax[ABS] < 100 || (AutoCatalog.POSTPARTUM.equals(p.id) && in.extra.diastasis));
        if (diastasis) {
            // a medical bound as a channel off, not as a share: the abs stay off and locked
            plan.zones[ABS] = 0;
            plan.zoneLocked[ABS] = true;
            plan.note("Диастаза: коремът е изключен", "Diastasis: abs channel off");
        }

        for (int i = 0; i < CHANNELS; i++) {
            plan.zones[i] = Math.min(plan.zones[i], plan.zoneMax[i]);   // the plan shows what the output gets
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
