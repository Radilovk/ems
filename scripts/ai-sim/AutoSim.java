import com.isaigu.gymapp.ai.AiModel;
import com.isaigu.gymapp.ai.AutoCatalog;
import com.isaigu.gymapp.ai.AutoCues;
import com.isaigu.gymapp.ai.AutoEngine;
import com.isaigu.gymapp.ai.AutoLimits;
import com.isaigu.gymapp.ai.AutoModel;
import com.isaigu.gymapp.ai.AutoPlanner;

import java.util.ArrayList;
import java.util.List;

/**
 * Offline checks of the automatic mode (docs/xems-auto-mode-spec.md): every program × goal ×
 * client profile is planned and run to the end; each cycle must pass the hard limits.
 * usage: scripts/ai-sim/run-auto.sh [-v]
 */
public final class AutoSim {
    private static int fails;
    private static int checks;
    private static boolean verbose;

    public static void main(String[] args) {
        verbose = args.length > 0 && "-v".equals(args[0]);
        int runs = 0;
        for (AutoModel.Goal g : AutoModel.Goal.values()) {
            for (AutoModel.Kind k : AutoModel.Kind.values()) {
                for (AutoCatalog.Program p : AutoCatalog.menu(g, k)) {
                    for (AutoModel.Input in : profiles()) {
                        in.goal = g;
                        in.kind = k;
                        in.programId = p.id;
                        if (AutoCatalog.blockReason(p, g, in) != null) {
                            continue;
                        }
                        runPlan(in, false);
                        runs++;
                    }
                }
            }
        }
        System.out.println("full runs: " + runs);
        blocks();
        zones();
        windows();
        hrCap();
        corridor();
        dose();
        pauseReentry();
        drainWave();
        cues();
        System.out.println((fails == 0 ? "OK" : "FAIL") + " — " + checks + " checks, " + fails + " failures");
        if (fails > 0) {
            System.exit(1);
        }
    }

    // ================================================================ profiles

    static List<AutoModel.Input> profiles() {
        List<AutoModel.Input> out = new ArrayList<AutoModel.Input>();
        out.add(input(AiModel.Sex.FEMALE, 32, 62, 168, AiModel.Fitness.MID, 10, 200));
        out.add(input(AiModel.Sex.MALE, 45, 95, 178, AiModel.Fitness.HIGH, 20, -1));
        out.add(input(AiModel.Sex.FEMALE, 29, 70, 165, AiModel.Fitness.LOW, 0, -1));      // first session
        out.add(input(AiModel.Sex.MALE, 66, 80, 172, AiModel.Fitness.MID, 5, 50));        // 60+, < 72 h
        AutoModel.Input solo = input(AiModel.Sex.FEMALE, 38, 110, 164, AiModel.Fitness.MID, 8, 120);
        solo.operator = AiModel.Operator.SELF;
        solo.intensity = AutoModel.Intensity.INTENSE;
        out.add(solo);
        AutoModel.Input pp = input(AiModel.Sex.FEMALE, 31, 68, 166, AiModel.Fitness.LOW, 2, -1);
        pp.extra.weeksSinceBirth = 14;
        pp.extra.cesarean = true;
        pp.extra.breastfeeding = true;
        pp.extra.diastasis = true;
        pp.intensity = AutoModel.Intensity.SOFT;
        out.add(pp);
        AutoModel.Input sens = input(AiModel.Sex.FEMALE, 52, 74, 160, AiModel.Fitness.MID, 12, 300);
        sens.variant = 1;
        sens.doublePulse = false;
        out.add(sens);
        return out;
    }

    static AutoModel.Input input(AiModel.Sex sex, int age, double kg, int cm, AiModel.Fitness f,
                                 int sessions, double hours) {
        AutoModel.Input in = new AutoModel.Input();
        in.sex = sex;
        in.age = age;
        in.weightKg = kg;
        in.heightCm = cm;
        in.fitness = f;
        in.sessions = sessions;
        in.hoursSinceActive = hours;
        return in;
    }

    // ================================================================ full run + invariants

    static AutoEngine runPlan(AutoModel.Input in, boolean quiet) {
        AutoModel.Plan plan = AutoPlanner.build(in, 68);
        String tag = in.programId + "/" + in.goal + "/" + in.sex + in.age + "/N" + in.sessions
                + (in.solo() ? "/SOLO" : "");
        int sum = 0;
        for (AutoModel.Phase ph : plan.phases) {
            sum += ph.durationS;
        }
        check(sum == plan.totalS, tag + ": phases add up to the total (" + sum + " vs " + plan.totalS + ")");
        check(plan.totalS <= AutoPlanner.maxSeconds(plan.program, in.goal, in), tag + ": total ≤ max");
        if (plan.program.isActive() && in.sessions == 0) {
            check(plan.totalS <= 720, tag + ": first active session ≤ 12 min");
            check(plan.phiMax <= 0.7 + 1e-9, tag + ": first session φ ≤ 0.7");
        }
        check(AutoLimits.balanced(plan.zones), tag + ": plan zones balanced");
        if (in.extra.breastfeeding) {
            check(plan.zones[AutoModel.CHEST] == 0 && plan.zoneLocked[AutoModel.CHEST], tag + ": chest off");
        }
        check(plan.hrCap <= plan.hrMax, tag + ": HR cap ≤ HR max");
        check(plan.qPlan > 0, tag + ": dose > 0");

        AutoEngine e = new AutoEngine(plan);
        long t = 1000000L;
        e.start(t);
        AutoModel.Step prev = null;
        int cycles = 0;
        int last = -1;
        while (e.getState() == AutoEngine.State.RUN && cycles < 5000) {
            AutoEngine.Cmd c = e.getCurrent();
            cycleChecks(tag, plan, e, c);
            int strength = AutoLimits.rowStrength(40, c.frac, 1.3, c.ceiling, last);
            check(strength <= Math.floor(40 * c.ceiling + 1e-9), tag + ": row strength ≤ envelope");
            check(last < 0 || strength <= last + AutoLimits.RAISE_PER_CYCLE, tag + ": raise ≤ 5 per cycle");
            last = strength;
            e.setUserScale(c.frac > 0 ? strength / (40 * c.frac) : 1);
            t += c.durationMs();
            e.tick(t - 1);
            e.onCycle(t);
            cycles++;
        }
        check(e.getState() == AutoEngine.State.DONE, tag + ": ends DONE (" + e.getState() + ")");
        check(Math.abs(e.getElapsedS() - plan.totalS) < 20, tag + ": ran the whole plan");
        if (verbose && !quiet) {
            System.out.println(tag + " T=" + plan.totalS + " φ=" + plan.phiMax + " E=" + plan.envMax
                    + " cap=" + plan.hrCap + " cycles=" + cycles + " dose=" + Math.round(100 * e.getDoseRatio()) + "%");
        }
        return e;
    }

    static void cycleChecks(String tag, AutoModel.Plan plan, AutoEngine e, AutoEngine.Cmd c) {
        AutoModel.Phase ph = plan.phases.get(c.phaseIndex);
        String at = tag + " " + ph.id + "#" + c.stepIndex;
        boolean passive = !plan.program.isActive();
        if (c.hz >= 20 && c.frac > 0) {
            int onMax = ph.wave ? 3 : passive || plan.input.solo() ? 4 : 6;
            check(c.onS <= onMax, at + ": L1 ON " + c.onS + " ≤ " + onMax);
            check(c.rampUpMs >= 300, at + ": L2 ramp ≥ 300 ms");
            if (!ph.wave) {
                AutoModel.Step next = ph.steps.size() > 1 ? ph.steps.get((c.stepIndex + 1) % ph.steps.size()) : null;
                int rest = c.offS + (next != null && next.hz < 20 ? next.durationS() : 0);
                check(passive ? rest >= c.onS : rest >= Math.ceil(0.66 * c.onS), at + ": L3 rest " + rest);
            }
        }
        check(c.hz >= 70 ? c.pwUs <= 400 : true, at + ": L4 pw ≤ 400 at ≥ 70 Hz");
        check(c.hz >= 100 ? c.pwUs <= 300 : true, at + ": L4 pw ≤ 300 at ≥ 100 Hz");
        check(c.pwUs >= 150 && c.pwUs <= 400, at + ": L5 pw in 150–400");
        check(plan.input.age < 60 || c.hz <= 85, at + ": 60+ ≤ 85 Hz");
        check(c.onS >= 1 && c.offS >= 1, at + ": device ON/OFF ≥ 1 s");
        check(c.frac <= plan.phiMax + 1e-9, at + ": frac ≤ φmax");
        check(c.ceiling >= c.frac - 1e-9, at + ": ceiling ≥ frac");
        check(c.ceiling <= plan.envMax * plan.phiMax + 1e-9, at + ": ceiling ≤ E·φmax");
        if (ph.isCooldown()) {
            check(c.ceiling <= 0.5 + 1e-9, at + ": cool-down ceiling ≤ 0.5");
        }
        if (c.pauseHz > 0) {
            check(plan.doublePulseAllowed, at + ": L12 double pulse only where allowed");
            check(!AutoCatalog.DRAIN.equals(plan.program.id) && !AutoCatalog.POWER.equals(plan.program.id),
                    at + ": L12 no double pulse in drain / power");
            check(!plan.input.solo() || c.pauseSigma <= 0.40 + 1e-9, at + ": SOLO pause ≤ 40 %");
        }
        if (!plan.program.isActive() && ph.hasTetanic() && !ph.wave) {
            check(c.frac <= 0.7 + 1e-9, at + ": passive tetanic φ ≤ 0.7");
        }
    }

    // ================================================================ focused scenarios

    static void blocks() {
        AutoModel.Input m = input(AiModel.Sex.MALE, 40, 80, 180, AiModel.Fitness.MID, 10, -1);
        check(AutoCatalog.blockReason(AutoCatalog.get(AutoCatalog.POSTPARTUM), AutoModel.Goal.HEALTH, m) != null,
                "postpartum: women only");
        AutoModel.Input f = input(AiModel.Sex.FEMALE, 30, 60, 165, AiModel.Fitness.MID, 3, -1);
        f.extra.weeksSinceBirth = 8;
        f.extra.cesarean = true;
        check(AutoCatalog.blockReason(AutoCatalog.get(AutoCatalog.POSTPARTUM), AutoModel.Goal.HEALTH, f) != null,
                "postpartum: cesarean < 12 weeks blocked");
        AutoModel.Input f0 = input(AiModel.Sex.FEMALE, 30, 60, 165, AiModel.Fitness.MID, 3, -1);
        check(AutoCatalog.blockReason(AutoCatalog.get(AutoCatalog.POSTPARTUM), AutoModel.Goal.HEALTH, f0, false) == null,
                "postpartum: selectable on the list before the weeks are asked");
        f.extra.cesarean = false;
        check(AutoCatalog.blockReason(AutoCatalog.get(AutoCatalog.POSTPARTUM), AutoModel.Goal.HEALTH, f) == null,
                "postpartum: 8 weeks vaginal allowed");
        AutoModel.Input r = input(AiModel.Sex.FEMALE, 30, 60, 165, AiModel.Fitness.MID, 3, 12);
        check(AutoCatalog.blockReason(AutoCatalog.get(AutoCatalog.GENERAL), AutoModel.Goal.TONE, r) != null,
                "< 24 h: active blocked");
        check(AutoCatalog.blockReason(AutoCatalog.get(AutoCatalog.RECOVERY), AutoModel.Goal.HEALTH, r) == null,
                "< 24 h: recovery allowed");
        check(AutoCatalog.blockReason(AutoCatalog.get(AutoCatalog.POWER), AutoModel.Goal.TONE, r) != null,
                "power: < 4 sessions blocked");
        AutoModel.Input thin = input(AiModel.Sex.FEMALE, 25, 45, 172, AiModel.Fitness.MID, 5, -1);
        check(AutoCatalog.blockReason(AutoCatalog.get(AutoCatalog.CARDIO), AutoModel.Goal.SLIM, thin) != null,
                "BMI < 18.5: slimming blocked");
        AutoModel.Input back = input(AiModel.Sex.MALE, 45, 85, 180, AiModel.Fitness.MID, 5, -1);
        back.extra.backRadiating = true;
        check(AutoCatalog.blockReason(AutoCatalog.get(AutoCatalog.BACK_PAIN), AutoModel.Goal.HEALTH, back) != null,
                "back red flag blocks back pain");
        AutoModel.Input old = input(AiModel.Sex.MALE, 72, 75, 170, AiModel.Fitness.MID, 5, -1);
        check(AutoCatalog.blockReason(AutoCatalog.get(AutoCatalog.GENERAL), AutoModel.Goal.TONE, old) != null,
                "70+: tone active blocked");
        check(AutoCatalog.blockReason(AutoCatalog.get(AutoCatalog.SENIOR), AutoModel.Goal.HEALTH, old) == null,
                "70+: senior allowed");
    }

    static void zones() {
        AutoModel.Input in = input(AiModel.Sex.FEMALE, 30, 60, 165, AiModel.Fitness.MID, 5, -1);
        in.programId = AutoCatalog.CORE;
        AutoModel.Plan plan = AutoPlanner.build(in, 70);
        int[] want = plan.zones.clone();
        want[AutoModel.ABS] = 100;
        want[AutoModel.LOWER_BACK] = 50;           // −40: clamped to −20 → 70 → abs ≤ 91
        int[] z = AutoLimits.clampZones(want, plan);
        check(z[AutoModel.LOWER_BACK] == 70, "zones: ±20 of the program (" + z[AutoModel.LOWER_BACK] + ")");
        check(z[AutoModel.ABS] <= 91, "zones: L7 abs ≤ 1.3 × lower back (" + z[AutoModel.ABS] + ")");
        want = plan.zones.clone();
        want[AutoModel.CHEST] = 75;
        want[AutoModel.BACK] = 55;
        z = AutoLimits.clampZones(want, plan);
        check(z[AutoModel.CHEST] <= 1.2 * z[AutoModel.BACK], "zones: L9 chest ≤ 1.2 × back");
        want = plan.zones.clone();
        want[AutoModel.FRONT_THIGH] = 80;
        want[AutoModel.BACK_THIGH] = 40;
        z = AutoLimits.clampZones(want, plan);
        check(z[AutoModel.FRONT_THIGH] <= z[AutoModel.BACK_THIGH] / 0.6 + 1e-9, "zones: L8 thighs");
        AutoModel.Input pp = input(AiModel.Sex.FEMALE, 30, 60, 165, AiModel.Fitness.MID, 2, -1);
        pp.programId = AutoCatalog.POSTPARTUM;
        pp.extra.weeksSinceBirth = 10;
        pp.extra.breastfeeding = true;
        pp.extra.diastasis = true;
        plan = AutoPlanner.build(pp, 70);
        want = plan.zones.clone();
        want[AutoModel.CHEST] = 30;
        want[AutoModel.ABS] = 60;
        z = AutoLimits.clampZones(want, plan);
        check(z[AutoModel.CHEST] == 0, "zones: L10 breastfeeding chest stays 0");
        check(z[AutoModel.ABS] <= 40, "zones: diastasis abs ≤ 40");
    }

    static void windows() {
        AutoModel.Input in = input(AiModel.Sex.MALE, 35, 80, 180, AiModel.Fitness.MID, 10, -1);
        in.programId = AutoCatalog.GENERAL;
        AutoModel.Plan plan = AutoPlanner.build(in, 70);
        AutoEngine e = new AutoEngine(plan);
        long t = 0;
        e.start(t);
        AutoEngine.Cmd c = e.userParams(120, 10, 1, 500, t);
        check(c.hz == plan.phases.get(0).steps.get(0).hz, "window: warm-up Hz fixed");
        while (!"MAIN".equals(e.phase().id)) {
            t += e.getCurrent().durationMs();
            e.tick(t - 1);
            e.onCycle(t);
        }
        c = e.userParams(120, 10, 1, 500, t);
        check(c.hz <= 94 && c.hz >= 76, "window: main Hz ±10 % (" + c.hz + ")");
        check(c.onS <= 5, "window: ON +1 s (" + c.onS + ")");
        check(c.offS >= Math.ceil(0.66 * c.onS), "window: OFF kept by L3 (" + c.offS + ")");
        check(c.pwUs <= 400, "window: pw ≤ 400 (" + c.pwUs + ")");
    }

    static void hrCap() {
        for (AiModel.Operator op : AiModel.Operator.values()) {
            AutoModel.Input in = input(AiModel.Sex.MALE, 40, 85, 180, AiModel.Fitness.MID, 10, -1);
            in.programId = AutoCatalog.GENERAL;
            in.operator = op;
            AutoModel.Plan plan = AutoPlanner.build(in, 65);
            AutoEngine e = new AutoEngine(plan);
            long t = 0;
            e.start(t);
            for (int i = 0; i < 60; i++) {
                t += 1000;
                e.onHr(t, plan.hrCap + 2);
                e.tick(t);
            }
            check(e.getState() == AutoEngine.State.HR_PAUSE, op + ": HR ≥ cap → pause");
            double el = e.getElapsedS();
            for (int i = 0; i < 15; i++) {
                t += 1000;
                e.onHr(t, plan.hrCap - 25);
                e.tick(t);
            }
            check(e.getElapsedS() == el && e.getState() == AutoEngine.State.HR_PAUSE,
                    op + ": plan clock stops in the HR pause");
            for (int i = 0; i < 25; i++) {
                t += 1000;
                e.onHr(t, plan.hrCap - 25);
                e.tick(t);
            }
            if (op == AiModel.Operator.SELF) {
                check(e.getState() == AutoEngine.State.HR_PAUSE && e.isResumeWaiting(),
                        "SOLO: resume waits for a tap");
                e.resume(t);
            }
            check(e.getState() == AutoEngine.State.RUN, op + ": resumed");
            check(e.getCurrent().frac <= 0.9 * plan.phiMax + 1e-9, op + ": softer after the HR pause");
        }
    }

    static void corridor() {
        AutoModel.Input in = input(AiModel.Sex.FEMALE, 35, 80, 165, AiModel.Fitness.MID, 10, -1);
        in.goal = AutoModel.Goal.SLIM;
        in.programId = AutoCatalog.CARDIO;
        AutoModel.Plan plan = AutoPlanner.build(in, 70);
        check(plan.hrUse == AutoModel.HrUse.CORRIDOR, "cardio: corridor");
        AutoEngine e = new AutoEngine(plan);
        long t = 0;
        e.start(t);
        int hi = plan.corridorHiHr();
        int maxExt = 0;
        for (int i = 0; i < 200 && e.getState() == AutoEngine.State.RUN; i++) {
            AutoEngine.Cmd c = e.getCurrent();
            t += c.durationMs();
            e.onHr(t - 500, Math.min(plan.hrCap - 3, hi + 8));
            e.tick(t - 1);
            e.onCycle(t);
            maxExt = Math.max(maxExt, e.getCorridorExt());
        }
        check(maxExt == 3, "corridor: pause +1 s per cycle up to +3 (" + maxExt + ")");
    }

    static void dose() {
        AutoModel.Input in = input(AiModel.Sex.MALE, 35, 80, 180, AiModel.Fitness.MID, 10, -1);
        in.programId = AutoCatalog.GENERAL;
        AutoModel.Plan plan = AutoPlanner.build(in, 70);
        AutoEngine e = new AutoEngine(plan);
        long t = 0;
        e.start(t);
        boolean ext = false;
        boolean lock = false;
        while (e.getState() == AutoEngine.State.RUN) {
            AutoEngine.Cmd c = e.getCurrent();
            e.setUserScale(1.25);
            t += c.durationMs();
            e.tick(t - 1);
            e.onCycle(t);
            ext |= e.getDoseExt() > 0;
            lock |= e.isRaiseLocked();
        }
        check(ext, "dose: over plan → longer pause");
        check(lock, "dose: far over plan → no more raising");
        check(e.getDoseRatio() <= 1.0 + 0.05, "dose: budget kept (" + e.getDoseRatio() + ")");
    }

    static void pauseReentry() {
        AutoModel.Input in = input(AiModel.Sex.MALE, 35, 80, 180, AiModel.Fitness.MID, 10, -1);
        in.programId = AutoCatalog.GENERAL;
        AutoModel.Plan plan = AutoPlanner.build(in, 70);
        AutoEngine e = new AutoEngine(plan);
        long t = 0;
        e.start(t);
        for (int i = 0; i < 60; i++) {
            AutoEngine.Cmd c = e.getCurrent();
            t += c.durationMs();
            e.tick(t - 1);
            e.onCycle(t);
        }
        double before = e.getCurrent().frac;
        e.userPause(t);
        t += 300000;
        e.tick(t);
        e.resume(t);
        check(e.getCurrent().frac <= before * 0.6 + 1e-9, "pause 5 min → first pulses at 60 % ("
                + e.getCurrent().frac + " vs " + before + ")");
    }

    static void drainWave() {
        AutoModel.Input in = input(AiModel.Sex.FEMALE, 40, 70, 165, AiModel.Fitness.MID, 10, -1);
        in.goal = AutoModel.Goal.HEALTH;
        in.kind = AutoModel.Kind.PASSIVE;
        in.programId = AutoCatalog.DRAIN;
        AutoModel.Plan plan = AutoPlanner.build(in, 70);
        AutoEngine e = new AutoEngine(plan);
        long t = 0;
        e.start(t);
        while (!"LEGS".equals(e.phase().id)) {
            t += e.getCurrent().durationMs();
            e.tick(t - 1);
            e.onCycle(t);
        }
        int[] order = {AutoModel.CALF, AutoModel.BACK_THIGH, AutoModel.GLUTES, AutoModel.ABS};
        for (int i = 0; i < order.length; i++) {
            AutoEngine.Cmd c = e.getCurrent();
            check(c.zones != null && c.zones[order[i]] == 100, "drain: wave step " + i + " at the right zone");
            if (i > 0) {
                check(c.zones[order[i - 1]] == 50, "drain: previous zone at 50 %");
            }
            check(c.zones[AutoModel.ARMS] == 0, "drain: arms silent in the leg wave");
            t += c.durationMs();
            e.tick(t - 1);
            e.onCycle(t);
        }
        check(e.getCurrent().frac == 0, "drain: refill pause after the wave");
    }

    /** Hint card texts: every phase of every program has a hint and both cues; "next" names the next phase. */
    static void cues() {
        for (AutoCatalog.Program p : AutoCatalog.all()) {
            AutoModel.Input in = input(AiModel.Sex.FEMALE, 35, 65, 168, AiModel.Fitness.MID, 10, -1);
            in.programId = p.id;
            in.kind = p.kind;
            in.extra.weeksSinceBirth = 20;
            AutoModel.Plan plan = AutoPlanner.build(in, 70);
            AutoEngine e = new AutoEngine(plan);
            long t = 0;
            e.start(t);
            int lastPhase = -1;
            while (e.getState() == AutoEngine.State.RUN) {
                AutoModel.Phase ph = e.phase();
                AutoEngine.Cmd c = e.getCurrent();
                if (e.getPhaseIndex() != lastPhase) {
                    lastPhase = e.getPhaseIndex();
                    check(AutoCues.phaseHint(plan, ph).length() > 0, p.id + " " + ph.id + ": phase hint");
                }
                check(AutoCues.onCue(plan, ph, c).length() > 0 && AutoCues.offCue(plan, ph, c).length() > 0,
                        p.id + " " + ph.id + ": cues");
                if (ph.wave && c.frac > 0) {
                    check(AutoCues.waveZones(c).length() > 0, p.id + ": wave step names its zones");
                }
                t += c.durationMs();
                e.tick(t - 1);
                e.onCycle(t);
            }
            String n = AutoCues.next(plan, 0, 10);
            check(plan.phases.size() < 2 || n.contains(plan.phases.get(1).nameBg), p.id + ": next names phase 2 (" + n + ")");
            check(AutoCues.next(plan, 0, 60).length() == 0, p.id + ": next is quiet 60 s before");
        }
    }

    static void check(boolean ok, String what) {
        checks++;
        if (!ok) {
            fails++;
            if (fails <= 40) {
                System.out.println("FAIL " + what);
            }
        }
    }
}
