import com.isaigu.gymapp.ai.AiModel;
import com.isaigu.gymapp.ai.AutoCatalog;
import com.isaigu.gymapp.ai.AutoCues;
import com.isaigu.gymapp.ai.AutoDynamics;
import com.isaigu.gymapp.ai.AutoEngine;
import com.isaigu.gymapp.ai.AutoLimits;
import com.isaigu.gymapp.ai.AutoModel;
import com.isaigu.gymapp.ai.AutoPlanner;
import com.isaigu.gymapp.ai.AutoTemplates;
import com.isaigu.gymapp.ai.SafeLimits;

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
        bySex();
        classifiers();
        todayStates();
        blocks();
        zones();
        passiveTexts();
        windows();
        hrCap();
        corridor();
        dose();
        pauseReentry();
        drainWave();
        cues();
        setsAndStops();
        dynamics();
        liveModel();
        totalLoad();
        liveForecast();
        scenarios();
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
        check(plan.activeS <= AutoPlanner.maxSeconds(plan.program, in.goal, in), tag + ": active ≤ max");
        check(plan.activeS <= AutoPlanner.ACTIVE_MAX_S, tag + ": active part ≤ 20 min (" + plan.activeS + ")");
        check(plan.recoveryS == AutoPlanner.RECOVERY_S, tag + ": passive recovery = 10 min (" + plan.recoveryS + ")");
        check(plan.totalS == plan.activeS + plan.recoveryS, tag + ": total = active + recovery");
        check(plan.phases.get(plan.phases.size() - 1).isCooldown(), tag + ": the recovery is last");
        if (plan.program.isActive() && in.sessions == 0) {
            check(plan.activeS <= 720, tag + ": first active session ≤ 12 min");
            check(plan.phiMax <= 0.7 + 1e-9, tag + ": first session φ ≤ 0.7");
        }
        if (in.extra.breastfeeding) {
            check(plan.zones[AutoModel.CHEST] == 0 && plan.zoneLocked[AutoModel.CHEST], tag + ": chest off");
        }
        check(plan.hrCap <= plan.hrMax, tag + ": HR cap ≤ HR max");
        check(plan.qPlan > 0, tag + ": dose > 0");

        AutoEngine e = new AutoEngine(plan);
        AutoTemplates.Script sc = AutoTemplates.script(plan, null);
        boolean[] sp = AutoEngine.stationPhases(plan, sc);
        e.setScript(sc);
        long t = 1000000L;
        e.startAt(t, t);
        check(e.getState() == AutoEngine.State.COUNTDOWN && e.getGoMs() - t == AutoEngine.COUNTDOWN_MS,
                tag + ": every start counts down 3 s");
        t = e.getGoMs();
        e.tick(t);
        AutoModel.Step prev = null;
        int cycles = 0;
        int last = -1;
        double setWork = 0;
        double lastCycle = 0;
        int shortSets = 0;
        int sets = 0;
        while ((e.getState() == AutoEngine.State.RUN || e.getState() == AutoEngine.State.REST) && cycles < 5000) {
            if (e.getState() == AutoEngine.State.REST) {
                boolean recovery = e.isRestBeforeCooldown();
                check(setWork <= AutoEngine.STATION_MAX_S + 1e-9, tag + ": a set ≤ 40 s (" + setWork + ")");
                if (setWork < AutoEngine.STATION_MIN_S && setWork + lastCycle <= AutoEngine.STATION_MAX_S) {
                    shortSets++;
                    if (verbose) {
                        System.out.println("  short set " + tag + " " + setWork + "s phase " + e.getPhaseIndex()
                                + " el=" + Math.round(e.getElapsedS()));
                        List<String> lg = e.getLog();
                        for (int k = Math.max(0, lg.size() - 8); k < lg.size(); k++) {
                            System.out.println("      " + lg.get(k));
                        }
                    }
                }
                sets++;
                int min = e.getRestMinS();
                check(recovery ? min == 0 : min >= AutoEngine.REST_FLOOR_S && min <= AutoEngine.REST_MAX_S,
                        tag + ": rest " + min + " s in its bounds");
                if (min > 0) {
                    check(!e.requestGo(t + 1000, t + 1000) && e.getState() == AutoEngine.State.REST,
                            tag + ": ▶ too early does not start");
                }
                t += min * 1000L;
                check(e.requestGo(t, t) && e.getState() == AutoEngine.State.COUNTDOWN, tag + ": ▶ after the rest counts down");
                t = e.getGoMs();
                e.tick(t);
                check(e.getState() == AutoEngine.State.RUN, tag + ": runs after the countdown");
                setWork = 0;
                continue;
            }
            AutoEngine.Cmd c = e.getCurrent();
            for (double v : e.getChannelLoad(t + 1000)) {
                check(v >= 0 && v < 2.0, tag + ": zone load in range (" + v + ")");
            }
            if (e.isStationPhase(c.phaseIndex)) {
                setWork += c.durationMs() / 1000.0;
            }
            lastCycle = c.durationMs() / 1000.0;
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
        int stationPhases = 0;
        for (boolean b : sp) {
            stationPhases += b ? 1 : 0;
        }
        check(shortSets <= 1, tag + ": a set under 30 s only at the end of the active part (" + shortSets + ")");
        check(stationPhases == 0 || sets >= 3, tag + ": several sets (" + sets + ")");
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
        check(c.hz < 20 || c.offS >= SafeLimits.minOff(c.hz, c.onS, c.pauseHz, c.pauseSigma),
                at + ": absolute limit — pause " + c.offS + " s at " + c.hz + " Hz · " + c.onS + " s");
        check(c.pauseHz <= SafeLimits.PAUSE_HZ_MAX && (c.pauseHz == 0 || c.pauseHz < c.hz),
                at + ": absolute limit — second impulse ≤ 10 Hz, under the main");
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
        want[AutoModel.LOWER_BACK] = 50;           // −40: down is free (1.1.286)
        int[] z = AutoLimits.clampZones(want, plan);
        check(z[AutoModel.LOWER_BACK] == 50, "zones: a channel goes down freely (" + z[AutoModel.LOWER_BACK] + ")");
        check(z[AutoModel.ABS] == Math.min(Math.min(100, plan.zoneMax[AutoModel.ABS]), plan.zones[AutoModel.ABS] + plan.zoneDelta),
                "zones: abs is not tied to the lower back (1.1.290, independent electrodes) (" + z[AutoModel.ABS] + ")");
        want = plan.zones.clone();
        want[AutoModel.CALF] = 0;
        want[AutoModel.GLUTES] = plan.zones[AutoModel.GLUTES] + 40;
        z = AutoLimits.clampZones(want, plan);
        check(z[AutoModel.CALF] == 0, "zones: a channel can be switched off");
        check(z[AutoModel.GLUTES] <= plan.zones[AutoModel.GLUTES] + plan.zoneDelta, "zones: up at most +zoneDelta");
        int[] wave = new int[AutoModel.CHANNELS];
        java.util.Arrays.fill(wave, 60);
        want = wave.clone();
        want[AutoModel.CALF] = 30;
        z = AutoLimits.clampZones(want, wave, plan);
        check(z[AutoModel.CALF] == 30, "zones: a wave / even step can be lowered per channel");
        want = plan.zones.clone();
        want[AutoModel.CHEST] = 75;
        want[AutoModel.BACK] = 55;
        z = AutoLimits.clampZones(want, plan);
        check(z[AutoModel.BACK] == 55, "zones: the back moves on its own");
        want = plan.zones.clone();
        want[AutoModel.FRONT_THIGH] = 80;
        want[AutoModel.BACK_THIGH] = 40;
        z = AutoLimits.clampZones(want, plan);
        check(z[AutoModel.BACK_THIGH] == 40 && z[AutoModel.FRONT_THIGH] >= Math.min(80, plan.zones[AutoModel.FRONT_THIGH]),
                "zones: the thighs are independent");
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

    /** Owner (1.1.287): a passive session says the goal of every phase and what the current does. */
    static void passiveTexts() {
        String[] ids = {AutoCatalog.CELLULITE, AutoCatalog.DRAIN, AutoCatalog.PASSIVE_METABOLIC, AutoCatalog.BACK_PAIN,
                AutoCatalog.POSTPARTUM, AutoCatalog.RECOVERY};
        for (String id : ids) {
            AutoModel.Input in = input(AiModel.Sex.FEMALE, 35, 62, 166, AiModel.Fitness.MID, 6, -1);
            in.programId = id;
            if (AutoCatalog.POSTPARTUM.equals(id)) {
                in.extra.weeksSinceBirth = 12;
            }
            AutoModel.Plan plan = AutoPlanner.build(in, 70);
            for (AutoModel.Phase ph : plan.phases) {
                String g = AutoCues.phaseGoal(plan, ph);
                check(g != null && g.length() > 10, id + "/" + ph.id + ": the goal is said");
                AutoEngine.Cmd c = new AutoEngine.Cmd();
                c.hz = ph.steps.isEmpty() ? 5 : ph.steps.get(0).hz;
                c.frac = 0.5;
                String e = AutoCues.effect(ph, c, false);
                check(e != null && e.length() > 10, id + "/" + ph.id + ": the effect is said");
            }
        }
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

    /** Men never get the women's programs (cellulite, glutes & thighs, postpartum), women never the men's; every
     *  goal × kind still has a program for both. */
    /** Cards (owner, 1.1.336): every program has a level 1–3; its three times add up to the plan and the recovery is 10 min. */
    static void classifiers() {
        for (AutoModel.Goal g : AutoModel.Goal.values()) {
            for (AutoModel.Kind k : AutoModel.Kind.values()) {
                for (AutoCatalog.Program p : AutoCatalog.menu(g, k)) {
                    check(p.level >= 1 && p.level <= 3, p.id + ": level " + p.level);
                    AutoModel.Input in = new AutoModel.Input();
                    in.goal = g;
                    in.kind = k;
                    in.programId = p.id;
                    in.sessions = 10;
                    in.sex = p.maleOnly ? AiModel.Sex.MALE : AiModel.Sex.FEMALE;
                    int[] t = AutoCatalog.times(p, g, in);
                    check(t[2] == AutoPlanner.RECOVERY_S, p.id + ": recovery " + t[2]);
                    check(t[0] + t[1] == AutoPlanner.maxSeconds(p, g, in), p.id + "/" + g + ": warm " + t[0] + " + main " + t[1]
                            + " ≠ " + AutoPlanner.maxSeconds(p, g, in));
                    check(t[0] > 0 && t[0] < t[1], p.id + ": warm-up " + t[0] + " main " + t[1]);
                    // the plan itself is the programme's: no chosen minutes, no soft / intense
                    AutoModel.Plan plan = AutoPlanner.build(in, 68);
                    check(plan.activeS == t[0] + t[1], p.id + ": plan " + plan.activeS);
                }
            }
        }
        check(AutoCatalog.get(AutoCatalog.CARDIO).level == 3 && AutoCatalog.get(AutoCatalog.DRAIN).level == 1
                && AutoCatalog.get(AutoCatalog.GENERAL).level == 2, "levels");
    }

    static void bySex() {
        for (AutoModel.Goal g : AutoModel.Goal.values()) {
            for (AutoModel.Kind k : AutoModel.Kind.values()) {
                for (AiModel.Sex sex : AiModel.Sex.values()) {
                    AutoModel.Input in = new AutoModel.Input();
                    in.sex = sex;
                    in.age = 35;
                    in.sessions = 10;
                    in.goal = g;
                    in.kind = k;
                    int shown = 0;
                    for (AutoCatalog.Program p : AutoCatalog.menu(g, k)) {
                        if (AutoCatalog.blockReason(p, g, in, false) != null) {
                            continue;
                        }
                        shown++;
                        boolean women = AutoCatalog.CELLULITE.equals(p.id) || AutoCatalog.GLUTES_LEGS.equals(p.id)
                                || AutoCatalog.POSTPARTUM.equals(p.id);
                        boolean men = AutoCatalog.MASS.equals(p.id) || AutoCatalog.UPPER.equals(p.id);
                        check(!(sex == AiModel.Sex.MALE && women), "man offered " + p.id);
                        check(!(sex == AiModel.Sex.FEMALE && men), "woman offered " + p.id);
                    }
                    if (!AutoCatalog.menu(g, k).isEmpty()) {
                        check(shown > 0, sex + " has no program for " + g + "/" + k);
                    }
                    AutoCatalog.Program rec = AutoCatalog.recommended(g, k, in);
                    check(AutoCatalog.blockReason(rec, g, in, false) == null || shown == 0,
                            sex + " recommended a blocked " + rec.id);
                }
            }
        }
    }

    /** How the client is today: each state softens the plan (lower ceiling or longer pause), never blocks it. */
    static void todayStates() {
        AutoModel.Input base = new AutoModel.Input();
        base.sex = AiModel.Sex.FEMALE;
        base.age = 35;
        base.heightCm = 168;
        base.weightKg = 64;
        base.sessions = 10;
        base.goal = AutoModel.Goal.TONE;
        base.kind = AutoModel.Kind.ACTIVE;
        base.programId = AutoCatalog.GENERAL;
        AutoModel.Plan p0 = AutoPlanner.build(base, 70);
        for (String k : com.isaigu.gymapp.ai.AiPersonal.TODAY) {
            AutoModel.Input in = new AutoModel.Input();
            in.sex = base.sex;
            in.age = base.age;
            in.heightCm = base.heightCm;
            in.weightKg = base.weightKg;
            in.sessions = base.sessions;
            in.goal = base.goal;
            in.kind = base.kind;
            in.programId = base.programId;
            in.today.add(k);
            AutoModel.Plan p = AutoPlanner.build(in, 70);
            check(p != null && p.program != null, "today " + k + " still plans");
            check(p != null && p.phiMax <= p0.phiMax + 1e-9, "today " + k + " never raises the ceiling");
            check(p != null && p.phiMax < p0.phiMax - 1e-9, "today " + k + " lowers the ceiling");
        }
        check(com.isaigu.gymapp.ai.AiPersonal.periodApplies(AiModel.Sex.FEMALE, 30, new java.util.HashSet<String>()),
                "period offered to a woman of 30");
        check(!com.isaigu.gymapp.ai.AiPersonal.periodApplies(AiModel.Sex.MALE, 30, null), "no period for a man");
        java.util.Set<String> meno = new java.util.HashSet<String>();
        meno.add("menopause");
        check(!com.isaigu.gymapp.ai.AiPersonal.periodApplies(AiModel.Sex.FEMALE, 50, meno), "no period after menopause");
        check(!com.isaigu.gymapp.ai.AiPersonal.periodApplies(AiModel.Sex.FEMALE, 62, null), "no period at 62");
    }

    /** As AutoSession.stationPhases: the active program's phases with exercises run as sets. */
    static boolean[] stationPhases(AutoModel.Plan plan) {
        AutoTemplates.Script sc = AutoTemplates.script(plan, null);
        boolean[] out = new boolean[plan.phases.size()];
        if (sc == null || !plan.program.isActive()) {
            return out;
        }
        for (int i = 0; i < out.length; i++) {
            out[i] = !plan.phases.get(i).isCooldown() && !plan.phases.get(i).wave && i < sc.phase.length
                    && sc.phase[i] != null && sc.phase[i].length > 0;
        }
        return out;
    }

    /** Owner (1.1.270): sets of 30–40 s, the rest by the fatigue model, ▶ with a countdown, two stops to end. */
    static void setsAndStops() {
        AutoModel.Input in = input(AiModel.Sex.FEMALE, 35, 65, 168, AiModel.Fitness.MID, 8, 200);
        in.goal = AutoModel.Goal.TONE;
        in.kind = AutoModel.Kind.ACTIVE;
        in.programId = AutoCatalog.GENERAL;
        AutoModel.Plan plan = AutoPlanner.build(in, 68);
        check(plan.activeS == 1200 && plan.recoveryS == 600, "general: 20 min active + 10 min recovery");
        // one stop in the work → recovery, waiting for ▶; never the end
        AutoEngine e = new AutoEngine(plan);
        e.setStations(stationPhases(plan));
        long t = 0;
        e.startAt(t, t);
        t = e.getGoMs();
        e.tick(t);
        int guard = 0;
        while (e.getStationsDone() < 3 && guard++ < 200) {
            if (e.getState() == AutoEngine.State.REST) {
                t += e.getRestMinS() * 1000L;
                e.requestGo(t, t);
                t = e.getGoMs();
                e.tick(t);
                continue;
            }
            t += e.getCurrent().durationMs();
            e.tick(t - 1);
            e.onCycle(t);
        }
        if (e.getState() == AutoEngine.State.REST) {
            t += e.getRestMinS() * 1000L;
            e.requestGo(t, t);
            t = e.getGoMs();
            e.tick(t);
        }
        check(e.getState() == AutoEngine.State.RUN, "general: running sets");
        double before = e.getElapsedS();
        check(!e.stopPress(t), "stop #1 does not end the session");
        check(e.getState() == AutoEngine.State.REST && e.isRestBeforeCooldown() && e.phase().isCooldown(),
                "stop #1 → the recovery, waiting for ▶ (" + e.getState() + ")");
        check(e.getRestLeftS(t) == 0, "the recovery may start at once");
        check(e.getRemainingS() == plan.recoveryS, "the recovery keeps its 10 min (" + e.getRemainingS() + ")");
        check(before < plan.activeS, "stopped inside the active part");
        e.onHr(t, plan.hrCap - 2);
        check(!e.isRestHrHigh(t), "the recovery does not wait for the HR");
        check(e.requestGo(t, t), "▶ starts the recovery");
        t = e.getGoMs();
        e.tick(t);
        check(e.getState() == AutoEngine.State.RUN && e.phase().isCooldown(), "recovery runs");
        check(e.stopPress(t) && e.getState() == AutoEngine.State.STOPPED, "stop #2 ends");
        check(e.getManualStops() == 2, "two stops");

        // stop right after the first stop's rest (no ▶ in between) = the second stop → end
        AutoEngine f = new AutoEngine(plan);
        f.setStations(stationPhases(plan));
        f.startAt(0, 0);
        f.tick(f.getGoMs());
        check(!f.stopPress(4000) && f.stopPress(5000), "stop, stop (recovery not started) → end");

        // the HR holds the next set; ▶ early says why
        AutoEngine g = new AutoEngine(plan);
        g.setStations(stationPhases(plan));
        t = 0;
        g.startAt(t, t);
        t = g.getGoMs();
        g.tick(t);
        while (g.getState() == AutoEngine.State.RUN && guard++ < 400) {
            t += g.getCurrent().durationMs();
            g.tick(t - 1);
            g.onCycle(t);
        }
        check(g.getState() == AutoEngine.State.REST && !g.isRestBeforeCooldown(), "warm-up set → rest");
        check(g.getRestLeftS(t) > 0 && !g.requestGo(t, t), "▶ before the rest → no start");
        t += g.getRestMinS() * 1000L;
        g.onHr(t, plan.hrCap - 3);
        check(g.isRestHrHigh(t) && !g.requestGo(t, t), "HR near the cap → no start");
        g.onHr(t, plan.hrCap - 30);
        check(!g.isRestHrHigh(t) && g.requestGo(t, t), "HR down → ▶ starts");
        check(g.getGoMs() - t >= AutoEngine.COUNTDOWN_MS, "countdown ≥ 3 s");
        g.cancelCountdown(t + 500);
        check(g.getState() == AutoEngine.State.REST, "cancelled countdown → back to the rest");

        // the rest grows with the fatigue: low fitness, intense → longer than the floor somewhere
        int longest = 0;
        for (AiModel.Fitness fit : AiModel.Fitness.values()) {
            AutoModel.Input x = input(AiModel.Sex.MALE, 30, 85, 182, fit, 12, 200);
            x.goal = AutoModel.Goal.TONE;
            x.kind = AutoModel.Kind.ACTIVE;
            x.programId = AutoCatalog.MASS;
            x.intensity = AutoModel.Intensity.INTENSE;
            AutoModel.Plan mp = AutoPlanner.build(x, 60);
            AutoEngine m = new AutoEngine(mp);
            m.setStations(stationPhases(mp));
            t = 0;
            m.startAt(t, t);
            t = m.getGoMs();
            m.tick(t);
            int n = 0;
            int mx = 0;
            while (m.getState() != AutoEngine.State.DONE && n++ < 3000) {
                if (m.getState() == AutoEngine.State.REST) {
                    mx = Math.max(mx, m.getRestMinS());
                    t += m.getRestMinS() * 1000L;
                    m.requestGo(t, t);
                    t = m.getGoMs();
                    m.tick(t);
                    continue;
                }
                m.setUserScale(1.0);
                t += m.getCurrent().durationMs();
                m.tick(t - 1);
                m.onCycle(t);
            }
            check(m.getState() == AutoEngine.State.DONE, "mass " + fit + ": ends DONE");
            check(m.getElapsedS() <= mp.totalS + 15, "mass " + fit + ": impulse time ≤ plan");
            longest = Math.max(longest, mx);
            if (verbose) {
                System.out.println("  mass " + fit + ": sets=" + m.getStationsDone() + " rest max=" + mx
                        + " avg=" + Math.round(m.getRestAvgS()) + " wall=" + (t / 60000) + " min");
            }
        }
        check(longest > AutoEngine.REST_FLOOR_TETANIC_S, "the fatigue model lengthens the rest (" + longest + ")");
    }

    /** Engine at the 3rd cycle of the first main-part set, mid-impulse; t[0] = that time. */
    static AutoEngine mainSet(AutoModel.Plan plan, AutoTemplates.Script sc, long[] t, double budget) {
        AutoEngine e = new AutoEngine(plan);
        e.setScript(sc);
        e.setDoseBudget(budget);
        long tt = 0;
        e.startAt(tt, tt);
        tt = e.getGoMs();
        e.tick(tt);
        int cyc = 0;
        int guard = 0;
        while (guard++ < 800) {
            if (e.getState() == AutoEngine.State.REST) {
                tt += e.getRestMinS() * 1000L;
                e.requestGo(tt, tt);
                tt = e.getGoMs();
                e.tick(tt);
                continue;
            }
            if (!"WARMUP".equals(e.phase().id) && ++cyc >= 3) {
                break;
            }
            tt += e.getCurrent().durationMs();
            e.tick(tt - 1);
            e.onCycle(tt);
        }
        tt += Math.max(1, e.getCurrent().onS) * 500L;
        e.tick(tt);
        t[0] = tt;
        return e;
    }

    static AutoModel.Plan legs(AutoModel.Input in) {
        in.goal = AutoModel.Goal.TONE;
        in.kind = AutoModel.Kind.ACTIVE;
        in.programId = AutoCatalog.GLUTES_LEGS;
        return AutoPlanner.build(in, 66);
    }

    /** Owner (1.1.283): the total load takes every input — impulse, pulse width, exercise, HR, the client. */
    static void totalLoad() {
        long[] t = new long[1];
        AutoModel.Plan base = legs(input(AiModel.Sex.MALE, 35, 82, 180, AiModel.Fitness.MID, 8, 200));
        AutoTemplates.Script sc = AutoTemplates.script(base, null);
        AutoEngine.Forecast f = AutoEngine.forecast(base, sc, false);
        check(f.dose > 0, "the plan holds work (" + f.dose + ")");
        AutoEngine e = mainSet(base, sc, t, f.dose);
        double v = e.getMetabolicLoad(t[0]);
        check(v > 0.05 && v < 1.0, "oxygen share in a main set is a plausible part of the reserve (" + v + ")");
        double d = e.getDoseLoad(t[0]);
        check(d > 0.02 && d < 0.6, "dose early in the main part (" + d + ")");
        double l = e.getSystemLoad(t[0]);
        double m = e.getMuscularLoad(t[0]);
        check(Math.abs(l - (1 - (1 - m) * (1 - v)) * (1 + 0.15 * d)) < 1e-9,
                "total = muscles OR oxygen (1 − (1−M)(1−V)), × (1 + 0.15·dose) without a pulse");
        check(l >= Math.max(m, v) - 1e-9, "a light part never dilutes the harder one (" + l + " vs M " + m + ")");

        // owner (1.1.285): the passive recovery never reads higher than the work; a main set is clearly loaded
        double[] sum = new double[base.phases.size()];
        int[] cnt = new int[sum.length];
        for (float[] p : f.points) {
            if (p[6] == AutoEngine.TRACE_CYCLE && p[2] > 0) {
                sum[(int) p[4]] += p[2];
                cnt[(int) p[4]]++;
            }
        }
        double work = 0;
        double rec = -1;
        StringBuilder ph = new StringBuilder();
        for (int i = 0; i < sum.length; i++) {
            double avg = cnt[i] > 0 ? sum[i] / cnt[i] : 0;
            ph.append(String.format(" %s=%.2f", base.phases.get(i).id, avg));
            if (base.phases.get(i).isCooldown()) {
                rec = avg;
            } else {
                work = Math.max(work, avg);
            }
        }
        check(rec < 0 || rec < 0.75 * work, "recovery below the work on the timeline (" + ph + ")");
        check(l > 0.45, "a main set reads as real work, not blue (" + l + ")");
        AutoEngine half = mainSet(base, sc, t, f.dose);
        AutoEngine all = mainSet(base, sc, t, f.dose);
        int[] z = base.zones.clone();
        for (int k = 0; k < 5; k++) {
            z[k] = 0;
        }
        half.setLive(0.9, z, t[0]);
        all.setLive(0.9, base.zones, t[0]);
        long tz = t[0] + 8000;
        check(half.getSystemLoad(tz) < all.getSystemLoad(tz) - 0.01, "fewer zones on → lower total ("
                + half.getSystemLoad(tz) + " vs " + all.getSystemLoad(tz) + ")");
        // owner (1.1.287): each zone's colour reaches its target (1) exactly at the end of the plan, not before
        {
            AutoEngine run = new AutoEngine(base);
            run.setScript(sc);
            run.setZoneBudget(f.zoneDose, f.zoneExDose);
            long tt = 0;
            run.startAt(tt, tt);
            tt = run.getGoMs();
            run.tick(tt);
            double halfMax = 0;
            boolean halfSeen = false;
            int g2 = 0;
            while (run.getState() != AutoEngine.State.DONE && run.getState() != AutoEngine.State.STOPPED && g2++ < 8000) {
                if (!halfSeen && run.getSessionS(tt) > f.totalS / 2) {
                    halfSeen = true;
                    double[] hp = run.getZoneProgress(tt);
                    for (int k = 0; k < hp.length; k++) {
                        halfMax = Math.max(halfMax, hp[k]);
                    }
                }
                if (run.getState() == AutoEngine.State.REST) {
                    tt += run.getRestMinS() * 1000L;
                    run.requestGo(tt, tt);
                    tt = run.getGoMs();
                    run.tick(tt);
                    continue;
                }
                if (run.getState() != AutoEngine.State.RUN || run.getCurrent() == null) {
                    break;
                }
                tt += run.getCurrent().durationMs();
                run.tick(tt - 1);
                run.onCycle(tt);
            }
            double[] endP = run.getZoneProgress(tt);
            double hi = -9;
            for (int k = 0; k < AutoModel.CHANNELS; k++) {
                hi = Math.max(hi, endP[k]);
            }
            check(hi > 0.95 && hi < 1.06, "the session's main zone reaches full colour at the end (" + hi + ")");
            // owner (1.1.338): a channel that is on counts in full whatever its strength — the zones of the program
            // end alike; only the exercises (and a channel at 0) make a difference
            check(Math.abs(endP[AutoModel.GLUTES] - endP[AutoModel.CHEST]) < 0.1, "zones on end alike (glutes "
                    + endP[AutoModel.GLUTES] + " vs chest " + endP[AutoModel.CHEST] + ")");
            check(halfSeen && halfMax < 0.9, "half way no zone is at its target yet (" + halfMax + ")");
            // owner (1.1.313): every zone the program is for ends at its optimum (1), the others below it
            double topB = 0;
            for (int k = 0; k < AutoModel.CHANNELS; k++) {
                topB = Math.max(topB, f.zoneDose[k]);
            }
            for (int k = 0; k < AutoModel.CHANNELS; k++) {
                if (f.zoneDose[k] >= 0.5 * topB) {
                    check(Math.abs(endP[k] - 1) < 0.06, "zone " + k + " the program is for ends optimal (" + endP[k] + ")");
                } else {
                    check(endP[k] < 1, "zone " + k + " the program barely loads stays under (" + endP[k] + ")");
                }
            }
            // the deltoid: no channel, the exercises' shoulder work only, measured against their top zone
            check(f.zoneDose[AutoEngine.DELTOID] == f.zoneExDose[AutoEngine.DELTOID], "the deltoid gets no current");
            check(endP.length == AutoEngine.ZONES && endP[AutoEngine.DELTOID] < 1.03, "the deltoid ends at most optimal ("
                    + endP[AutoEngine.DELTOID] + ")");
        }
        // owner (1.1.313): the zones the running set works pulse; nothing in a rest
        {
            AutoEngine run = new AutoEngine(base);
            run.setScript(sc);
            long tt = 0;
            run.startAt(tt, tt);
            tt = run.getGoMs();
            run.tick(tt);
            boolean seenRun = false;
            boolean seenRest = false;
            int g3 = 0;
            while (run.getState() != AutoEngine.State.DONE && run.getState() != AutoEngine.State.STOPPED && g3++ < 8000) {
                boolean[] act = run.getZoneActive(tt + 500);
                int n = 0;
                for (boolean b : act) {
                    n += b ? 1 : 0;
                }
                if (run.getState() == AutoEngine.State.REST) {
                    seenRest = true;
                    check(n == 0, "no zone pulses in a rest");
                    tt += run.getRestMinS() * 1000L;
                    run.requestGo(tt, tt);
                    tt = run.getGoMs();
                    run.tick(tt);
                    continue;
                }
                if (run.getState() != AutoEngine.State.RUN || run.getCurrent() == null) {
                    break;
                }
                seenRun = true;
                check(n > 0, "a running cycle makes at least one zone pulse");
                tt += run.getCurrent().durationMs();
                run.tick(tt - 1);
                run.onCycle(tt);
            }
            check(seenRun && seenRest, "the pulse test saw sets and rests");
        }
        // owner (1.1.290): a channel at 0 → that zone gets only the exercise's work → paler than with the EMS on
        {
            AutoEngine on = mainSet(base, sc, t, f.dose);
            AutoEngine off0 = mainSet(base, sc, t, f.dose);
            on.setZoneBudget(f.zoneDose, f.zoneExDose);
            off0.setZoneBudget(f.zoneDose, f.zoneExDose);
            int[] zz = base.zones.clone();
            zz[AutoModel.GLUTES] = 0;
            on.setLive(0.9, base.zones, t[0]);
            off0.setLive(0.9, zz, t[0]);
            long tg = t[0] + 3000;
            double pOn = on.getZoneProgress(tg)[AutoModel.GLUTES] - on.getZoneProgress(t[0])[AutoModel.GLUTES];
            double pOff = off0.getZoneProgress(tg)[AutoModel.GLUTES] - off0.getZoneProgress(t[0])[AutoModel.GLUTES];
            check(pOff < pOn && pOff >= 0, "glutes at 0 fill slower (exercise only) than with the EMS on (" + pOff + " < " + pOn + ")");
        }
        // owner (1.1.288): a channel moved up or down changes nothing in the load — only 0 takes it out
        AutoEngine moved = mainSet(base, sc, t, f.dose);
        AutoEngine asIs = mainSet(base, sc, t, f.dose);
        int[] mz = base.zones.clone();
        for (int k = 0; k < mz.length; k++) {
            mz[k] = mz[k] > 0 ? Math.max(1, mz[k] / 3) : 0;
        }
        moved.setLive(0.9, mz, t[0]);
        asIs.setLive(0.9, base.zones, t[0]);
        long tm = t[0] + 8000;
        check(Math.abs(moved.getSystemLoad(tm) - asIs.getSystemLoad(tm)) < 1e-9
                && Math.abs(moved.getChannelLoad(tm)[AutoModel.GLUTES] - asIs.getChannelLoad(tm)[AutoModel.GLUTES]) < 1e-9,
                "channels at a third of the recommendation → the same load (sensitivity, not work)");
        // the client: fat (same weight, shorter → higher BMI) insulates → less reached → less oxygen
        AutoModel.Plan fat = legs(input(AiModel.Sex.MALE, 35, 82, 160, AiModel.Fitness.MID, 8, 200));
        AutoEngine ef = mainSet(fat, AutoTemplates.script(fat, null), t, f.dose);
        check(ef.getMetabolicLoad(t[0]) < v, "more body fat → the current reaches less muscle");
        // fitness: the same work is a larger share of a smaller reserve
        AutoModel.Plan low = legs(input(AiModel.Sex.MALE, 35, 82, 180, AiModel.Fitness.LOW, 8, 200));
        AutoTemplates.Script scl = AutoTemplates.script(low, null);
        AutoEngine el = mainSet(low, scl, t, AutoEngine.forecast(low, scl, false).dose);
        AutoModel.Plan high = legs(input(AiModel.Sex.MALE, 35, 82, 180, AiModel.Fitness.HIGH, 8, 200));
        AutoTemplates.Script sch = AutoTemplates.script(high, null);
        AutoEngine eh = mainSet(high, sch, t, AutoEngine.forecast(high, sch, false).dose);
        // stronger output → the muscles and the oxygen rise
        AutoEngine e0 = mainSet(base, sc, t, f.dose);
        AutoEngine e1 = mainSet(base, sc, t, f.dose);
        e0.setLive(0.6, null, t[0]);
        e1.setLive(0.9, null, t[0]);
        long ts = t[0] + 3000;
        check(e1.getMetabolicLoad(ts) > e0.getMetabolicLoad(ts) && e1.getMuscularLoad(ts) > e0.getMuscularLoad(ts)
                && e1.getSystemLoad(ts) > e0.getSystemLoad(ts), "+strength → more muscle load, oxygen and total");
        // in the rest the oxygen part decays (τ 40 s) and the dose holds
        AutoEngine r = mainSet(base, sc, t, f.dose);
        int guard = 0;
        long tr = t[0];
        while (r.getState() == AutoEngine.State.RUN && guard++ < 50) {
            tr += r.getCurrent().durationMs();
            r.tick(tr - 1);
            r.onCycle(tr);
        }
        check(r.getState() == AutoEngine.State.REST, "set → rest");
        double v0 = r.getMetabolicLoad(tr);
        double d0 = r.getDoseLoad(tr);
        check(r.getMetabolicLoad(tr + 40000) < v0 * 0.45, "oxygen part falls in the rest (e⁻¹ in 40 s)");
        check(Math.abs(r.getDoseLoad(tr + 40000) - d0) < 1e-9, "the work done does not fall in the rest");
        // the whole session: the dose reaches ≈ the plan
        AutoEngine w = new AutoEngine(base);
        w.setScript(sc);
        w.setDoseBudget(f.dose);
        long tw = 0;
        w.startAt(tw, tw);
        tw = w.getGoMs();
        w.tick(tw);
        guard = 0;
        while (w.getState() != AutoEngine.State.DONE && guard++ < 8000) {
            if (w.getState() == AutoEngine.State.REST) {
                tw += w.getRestMinS() * 1000L;
                w.requestGo(tw, tw);
                tw = w.getGoMs();
                w.tick(tw);
                continue;
            }
            tw += w.getCurrent().durationMs();
            w.tick(tw - 1);
            w.onCycle(tw);
        }
        check(Math.abs(w.getDoseLoad(tw) - 1) < 0.02, "the planned session ends at dose ≈ 1 (" + w.getDoseLoad(tw) + ")");
        if (verbose) {
            System.out.println("  total load: M=" + m + " V=" + v + " D=" + d + " L=" + l
                    + " | fat V=" + ef.getMetabolicLoad(t[0]) + " | LOW V=" + el.getMetabolicLoad(t[0])
                    + " HIGH V=" + eh.getMetabolicLoad(t[0]));
        }
    }

    static double meanHr(AutoEngine.Forecast f) {
        double s = 0;
        int n = 0;
        for (float[] p : f.points) {
            if (p[5] > 0) {
                s += p[5];
                n++;
            }
        }
        return n > 0 ? s / n : 0;
    }

    static double peakOf(AutoEngine.Forecast f) {
        double m = 0;
        for (float[] p : f.points) {
            m = Math.max(m, p[2]);
        }
        return m;
    }

    /**
     * Owner (1.1.322): the impulse moves during Auto — another approach per set (from fatigue, HR, dose and the
     * training count), the frequency glides down with the fatigue inside a set, the recovery runs in sectors.
     */
    static void dynamics() {
        AutoModel.Input in = input(AiModel.Sex.MALE, 35, 82, 180, AiModel.Fitness.MID, 8, 200);
        in.goal = AutoModel.Goal.TONE;
        in.kind = AutoModel.Kind.ACTIVE;
        in.programId = AutoCatalog.GENERAL;
        AutoModel.Plan plan = AutoPlanner.build(in, 68);
        AutoEngine e = new AutoEngine(plan);
        AutoTemplates.Script sc = AutoTemplates.script(plan, null);
        e.setScript(sc);
        long t = 1000000L;
        e.startAt(t, t);
        t = e.getGoMs();
        e.tick(t);
        java.util.Set<String> names = new java.util.HashSet<String>();
        java.util.Set<Integer> sectors = new java.util.HashSet<Integer>();
        String prevName = null;
        int repeats = 0, setsSeen = 0, glides = 0, rampsOnJump = 0, jumps = 0;
        int firstHz = -1, lastHz = -1;
        int guard = 0;
        while ((e.getState() == AutoEngine.State.RUN || e.getState() == AutoEngine.State.REST) && guard++ < 5000) {
            if (e.getState() == AutoEngine.State.REST) {
                if (firstHz > 0 && lastHz > 0 && lastHz < firstHz) {
                    glides++;
                }
                firstHz = lastHz = -1;
                t += Math.max(1, e.getRestMinS()) * 1000L;
                e.requestGo(t, t);
                t = e.getGoMs();
                e.tick(t);
                continue;
            }
            AutoEngine.Cmd c = e.getCurrent();
            String nm = e.getImpulseName();
            AutoModel.Phase ph = plan.phases.get(c.phaseIndex);
            if (e.isStationPhase(c.phaseIndex) && nm.length() > 0) {
                if (firstHz < 0) {
                    setsSeen++;
                    names.add(nm);
                    if (nm.equals(prevName)) {
                        repeats++;
                    }
                    prevName = nm;
                    firstHz = c.hz;
                }
                lastHz = c.hz;
            }
            if (ph.isCooldown() && nm.length() > 0) {
                sectors.add(nm.hashCode());
            }
            t += c.durationMs();
            e.tick(t - 1);
            AutoEngine.Cmd n = e.onCycle(t);
            if (n != null && c != null && Math.abs(n.hz - c.hz) >= 10) {
                jumps++;
                if (n.rampUpMs >= 600) {
                    rampsOnJump++;
                }
            }
        }
        check(e.getState() == AutoEngine.State.DONE, "dynamics: the session ends");
        check(names.size() >= 4, "dynamics: at least 4 different approaches in one training (" + names + ")");
        check(repeats == 0, "dynamics: never the same approach twice in a row (" + repeats + ")");
        check(glides >= setsSeen / 2, "dynamics: the frequency falls inside most sets (" + glides + " / " + setsSeen + ")");
        check(sectors.size() >= 3, "dynamics: the recovery runs in ≥ 3 sectors (" + sectors.size() + ")");
        check(jumps == 0 || rampsOnJump == jumps, "dynamics: every jump ≥ 10 Hz has a soft rise (" + rampsOnJump + " / "
                + jumps + ")");
        // another training → another order
        AutoModel.Input in2 = input(AiModel.Sex.MALE, 35, 82, 180, AiModel.Fitness.MID, 9, 200);
        in2.goal = in.goal;
        in2.kind = in.kind;
        in2.programId = in.programId;
        AutoModel.Plan p2 = AutoPlanner.build(in2, 68);
        AutoModel.Phase main = null;
        for (AutoModel.Phase ph : plan.phases) {
            if ("MAIN".equals(ph.id)) {
                main = ph;
            }
        }
        AutoDynamics.Approach[] l1 = AutoDynamics.approaches(plan, main);
        AutoDynamics.Ctx x = new AutoDynamics.Ctx();
        x.fresh = 0.6;
        x.sessions = 8;
        int a8 = AutoDynamics.pick(l1, x);
        x.sessions = 9;
        int a9 = AutoDynamics.pick(l1, x);
        check(p2 != null && a8 != a9, "dynamics: the next training starts with another approach");
        // fresh muscle → hard work; tired → light; high pulse → light
        x.sessions = 8;
        x.fresh = 1.0;
        int hard = AutoDynamics.pick(l1, x);
        x.fresh = 0.1;
        int light = AutoDynamics.pick(l1, x);
        check(l1[hard].cls > l1[light].cls, "dynamics: fresh → harder approach than tired (" + l1[hard].id + " / "
                + l1[light].id + ")");
        x.fresh = 0.8;
        x.hrHigh = true;
        check(l1[AutoDynamics.pick(l1, x)].cls <= 1, "dynamics: HR near the cap → a light approach");
        // the glide: frequency down, pause up, depth never down
        AutoModel.Step st = l1[0] != null ? main.steps.get(0) : null;
        AutoModel.Step g0 = AutoDynamics.apply(st, AutoDynamics.STRENGTH_PAUSE, 0, true);
        AutoModel.Step g1 = AutoDynamics.apply(st, AutoDynamics.STRENGTH_PAUSE, 1, true);
        check(g1.hz < g0.hz && g1.offS > g0.offS && g1.pwUs >= g0.pwUs, "dynamics: tired → lower Hz, longer pause, depth "
                + "not lower (" + g0.hz + "→" + g1.hz + " Hz, " + g0.pwUs + "→" + g1.pwUs + " µs)");
        check(g1.onS < g0.onS && g1.pauseHz == 7, "dynamics: tired → the second impulse takes more of the cycle");
        check(AutoDynamics.apply(st, AutoDynamics.STRENGTH_PAUSE, 0, false).pauseHz == 0,
                "dynamics: no second impulse where the program does not allow it");
        // "Само шаблон" (1.1.325): the same sets, rests and approaches, no exercise
        AutoModel.Input fi = input(AiModel.Sex.MALE, 35, 82, 180, AiModel.Fitness.MID, 8, 200);
        fi.goal = in.goal;
        fi.kind = in.kind;
        fi.programId = in.programId;
        fi.exercises = false;
        AutoModel.Plan fp = AutoPlanner.build(fi, 68);
        AutoEngine fe = new AutoEngine(fp);
        fe.setScript(AutoTemplates.script(fp, null));
        long ft = 1000000L;
        fe.startAt(ft, ft);
        ft = fe.getGoMs();
        fe.tick(ft);
        int fSets = 0, fNamed = 0;
        java.util.Set<String> fApproaches = new java.util.HashSet<String>();
        int fg = 0;
        while ((fe.getState() == AutoEngine.State.RUN || fe.getState() == AutoEngine.State.REST) && fg++ < 5000) {
            if (fe.getState() == AutoEngine.State.REST) {
                fSets++;
                ft += Math.max(1, fe.getRestMinS()) * 1000L;
                fe.requestGo(ft, ft);
                ft = fe.getGoMs();
                fe.tick(ft);
                continue;
            }
            if (fe.getExercise() != null || (fe.getNextExercise() != null && fe.getNextExercise().length() > 0)) {
                fNamed++;
            }
            if (fe.isStationPhase(fe.getPhaseIndex()) && fe.getImpulseName().length() > 0) {
                fApproaches.add(fe.getImpulseName());
            }
            AutoEngine.Cmd fc = fe.getCurrent();
            ft += fc.durationMs();
            fe.tick(ft - 1);
            fe.onCycle(ft);
        }
        check(fe.getState() == AutoEngine.State.DONE && fSets > 10, "template only: sets with rests (" + fSets + ")");
        check(fNamed == 0, "template only: no exercise named (" + fNamed + ")");
        check(fApproaches.size() >= 4, "template only: the approaches still change set by set (" + fApproaches + ")");

        // every template in the catalogue (also the ones added later): a declared impulse class, approaches inside
        // the class, no 100 Hz for 60+ / the first trainings, power keeps OFF ≥ 2·ON, the frequency glides (1.1.326)
        for (AutoCatalog.Program prog : AutoCatalog.all()) {
            if (!prog.isActive()) {
                continue;
            }
            check(prog.impulse != null, prog.id + ": an active template declares its impulse class (strength / power / "
                    + "cardio / gentle) — AutoCatalog p.impulse");
            String cls = AutoDynamics.impulseClass(prog);
            for (AutoModel.Input pi : profiles()) {
                pi.programId = prog.id;
                pi.kind = AutoModel.Kind.ACTIVE;
                for (AutoModel.Goal g : AutoModel.Goal.values()) {
                    if (!AutoCatalog.menu(g, AutoModel.Kind.ACTIVE).contains(prog)) {
                        continue;
                    }
                    pi.goal = g;
                    if (AutoCatalog.blockReason(prog, g, pi) != null) {
                        continue;
                    }
                    AutoModel.Plan pl = AutoPlanner.build(pi, 68);
                    for (AutoModel.Phase ph : pl.phases) {
                        AutoDynamics.Approach[] l = AutoDynamics.approaches(pl, ph);
                        for (int i = 1; l != null && i < l.length; i++) {
                            String at = prog.id + "/" + ph.id + "/" + l[i].id + " age " + pi.age + " N" + pi.sessions;
                            check(!AutoDynamics.GENTLE.equals(cls) || l[i].hz <= 85, at + ": gentle — no approach over 85 Hz");
                            check((pi.age < 60 && pi.sessions >= 3) || AutoDynamics.POWER.equals(cls) || l[i].hz < 95,
                                    at + ": 60+ / first trainings — no 100 Hz approach");
                            check(!AutoDynamics.POWER.equals(cls) || l[i].off >= 2 * l[i].on, at + ": power keeps OFF ≥ 2·ON");
                            check(!AutoDynamics.POWER.equals(cls) || l[i].pauseHz == 0, at + ": power — no second impulse");
                        }
                    }
                }
            }
            // the frequency glides inside the sets (a mid-fitness man, after the adaptation)
            AutoModel.Input gi = input(AiModel.Sex.MALE, 35, 82, 180, AiModel.Fitness.MID, 8, 200);
            gi.programId = prog.id;
            gi.kind = AutoModel.Kind.ACTIVE;
            for (AutoModel.Goal g : AutoModel.Goal.values()) {
                if (AutoCatalog.menu(g, AutoModel.Kind.ACTIVE).contains(prog)) {
                    gi.goal = g;
                    break;
                }
            }
            if (gi.goal == null || AutoCatalog.blockReason(prog, gi.goal, gi) != null) {
                continue;
            }
            AutoModel.Plan gp = AutoPlanner.build(gi, 68);
            AutoEngine ge = new AutoEngine(gp);
            ge.setScript(AutoTemplates.script(gp, null));
            long gt = 1000000L;
            ge.startAt(gt, gt);
            gt = ge.getGoMs();
            ge.tick(gt);
            int gSets = 0, gFall = 0, first = -1, last = -1, gGuard = 0;
            while ((ge.getState() == AutoEngine.State.RUN || ge.getState() == AutoEngine.State.REST) && gGuard++ < 5000) {
                if (ge.getState() == AutoEngine.State.REST) {
                    if (first >= 50) {
                        gSets++;
                        gFall += last < first ? 1 : 0;
                    }
                    first = last = -1;
                    gt += Math.max(1, ge.getRestMinS()) * 1000L;
                    ge.requestGo(gt, gt);
                    gt = ge.getGoMs();
                    ge.tick(gt);
                    continue;
                }
                AutoEngine.Cmd gc = ge.getCurrent();
                if (ge.isStationPhase(gc.phaseIndex) && gc.frac > 0) {
                    if (first < 0) {
                        first = gc.hz;
                    }
                    last = gc.hz;
                }
                gt += gc.durationMs();
                ge.tick(gt - 1);
                ge.onCycle(gt);
            }
            check(gSets == 0 || gFall * 3 >= gSets, prog.id + ": the frequency glides down in the sets (" + gFall + " / "
                    + gSets + ")");
        }

        // gentle programs and the first trainings: no 100 Hz approach
        AutoModel.Input s60 = input(AiModel.Sex.FEMALE, 66, 70, 165, AiModel.Fitness.MID, 10, 200);
        s60.goal = AutoModel.Goal.HEALTH;
        s60.kind = AutoModel.Kind.ACTIVE;
        s60.programId = AutoCatalog.SENIOR;
        AutoModel.Plan ps = AutoPlanner.build(s60, 68);
        for (AutoModel.Phase ph : ps.phases) {
            AutoDynamics.Approach[] l = AutoDynamics.approaches(ps, ph);
            for (int i = 0; l != null && i < l.length; i++) {
                check(l[i].hz <= 85, "dynamics: 50+ program — no approach over 85 Hz (" + l[i].id + ")");
            }
        }
    }

    /** Owner (1.1.284): the timeline's future runs on from the live state — strength, HR — within Auto's bounds. */
    static void liveForecast() {
        long[] t = new long[1];
        AutoModel.Plan plan = legs(input(AiModel.Sex.MALE, 35, 82, 180, AiModel.Fitness.MID, 8, 200));
        check(plan.hrUse != AutoModel.HrUse.NONE, "legs: the program uses the HR");
        AutoTemplates.Script sc = AutoTemplates.script(plan, null);
        AutoEngine.Forecast p0 = AutoEngine.forecast(plan, sc, false);
        AutoEngine e = mainSet(plan, sc, t, p0.dose);
        double now = e.getSessionS(t[0]);
        AutoEngine.Forecast f = e.forecastFrom(t[0]);
        check(f != null && Math.abs(f.fromS - now) < 1e-6 && f.totalS > now, "live forecast runs on from now");
        check(Math.abs(f.totalS - p0.totalS) < 120, "unchanged output → the end the plan had (" + Math.round(f.totalS)
                + " vs " + Math.round(p0.totalS) + ")");
        float[] last = f.points.get(f.points.size() - 1);
        check(last[1] <= plan.totalS + 1, "forecast impulses ≤ the plan (20 min active + its recovery)");
        check(Math.abs(f.leftS(now, e.getElapsedS()) - (f.totalS - now)) < 1e-6, "time left on the live clock");
        check(e.getState() == AutoEngine.State.RUN && e.getSessionS(t[0]) == now, "the forecast does not touch the run");

        // stronger current now → higher peaks ahead, and not an earlier end
        AutoEngine s1 = mainSet(plan, sc, t, p0.dose);
        AutoEngine s2 = mainSet(plan, sc, t, p0.dose);
        s1.setLive(0.6, null, t[0]);
        s2.setLive(1.0, null, t[0]);
        AutoEngine.Forecast fs1 = s1.forecastFrom(t[0] + 1000);
        AutoEngine.Forecast fs2 = s2.forecastFrom(t[0] + 1000);
        check(peakOf(fs2) > peakOf(fs1), "+strength → higher peaks on the timeline (" + peakOf(fs1) + " → " + peakOf(fs2) + ")");
        check(fs2.totalS >= fs1.totalS - 1, "+strength → the end does not come earlier (longer rests)");

        // a high pulse now → this set ends early in the forecast, the HR ahead is higher; a pulse that stays high
        // (the learned response) → the rests wait for it and the end moves later
        AutoEngine h1 = mainSet(plan, sc, t, p0.dose);
        AutoEngine h2 = mainSet(plan, sc, t, p0.dose);
        long th = t[0];
        for (int i = 0; i < 40; i++) {
            th += 1000;
            h1.onHr(th, plan.hrRest + 40);
            h2.onHr(th, plan.hrCap - 2);
            h1.tick(th);
            h2.tick(th);
        }
        AutoEngine.Forecast fh1 = h1.forecastFrom(th);
        AutoEngine.Forecast fh2 = h2.forecastFrom(th);
        check(fh2.points.get(0)[6] != AutoEngine.TRACE_CYCLE || h2.getState() != AutoEngine.State.RUN,
                "HR at the cap → the running set ends in the forecast");
        check(meanHr(fh2) > meanHr(fh1) + 10, "higher HR now → higher HR ahead (" + Math.round(meanHr(fh1)) + " → "
                + Math.round(meanHr(fh2)) + ")");
        // since 1.1.322 a high pulse also turns the next sets to lighter approaches (AutoDynamics), which shortens
        // their rests: the end no longer has to come later, only not much earlier
        check(fh2.totalS >= fh1.totalS - 60, "a pulse that stays high → the forecast does not end much earlier ("
                + Math.round(fh1.totalS) + " → " + Math.round(fh2.totalS) + ")");
        float[] lh = fh2.points.get(fh2.points.size() - 1);
        check(lh[1] <= plan.totalS + 1, "…the impulses still keep the plan's bounds");
        boolean hrLine = false;
        for (float[] q : fh2.points) {
            hrLine |= q[5] > 0;
        }
        check(hrLine, "the forecast carries the predicted HR");

        // the heart's response is learned from real samples
        AutoEngine g = mainSet(plan, sc, t, p0.dose);
        double g0 = g.getHrGain();
        long tg = t[0];
        for (int i = 0; i < 20; i++) {
            tg += 1000;
            g.onHr(tg, plan.hrCap - 8);
            g.tick(tg);
        }
        check(g.getHrGain() > g0, "a client whose HR runs high → a larger learned gain (" + g0 + " → " + g.getHrGain() + ")");
        long n0 = System.nanoTime();
        for (int i = 0; i < 20; i++) {
            e.forecastFrom(t[0]);
        }
        double ms = (System.nanoTime() - n0) / 20e6;
        check(ms < 60, "a live forecast is cheap (" + ms + " ms on the JVM)");
        if (verbose) {
            System.out.println("  live forecast " + Math.round(ms) + " ms: plan end " + Math.round(p0.totalS) + " s, live " + Math.round(f.totalS)
                    + " s; peaks " + peakOf(fs1) + " → " + peakOf(fs2) + "; HR end " + Math.round(fh1.totalS) + " → "
                    + Math.round(fh2.totalS));
        }
    }

    /** Owner (1.1.271): the live board's numbers — session clock, forecast, zone loads, ⏭ Next. */
    static void liveModel() {
        AutoModel.Input in = input(AiModel.Sex.MALE, 35, 82, 180, AiModel.Fitness.MID, 8, 200);
        in.goal = AutoModel.Goal.TONE;
        in.kind = AutoModel.Kind.ACTIVE;
        in.programId = AutoCatalog.GLUTES_LEGS;
        AutoModel.Plan plan = AutoPlanner.build(in, 66);
        AutoTemplates.Script sc = AutoTemplates.script(plan, null);
        AutoEngine.Forecast f = AutoEngine.forecast(plan, sc, false);
        check(f.points.size() > 50 && f.maxLoad > 0, "forecast has a profile (" + f.points.size() + ")");
        check(f.totalS > plan.totalS + 60 && f.totalS < plan.totalS + 1800,
                "forecast = impulses + the imposed rests (" + Math.round(f.totalS) + " vs " + plan.totalS + ")");
        for (int i = 1; i < f.phaseStartS.length; i++) {
            check(f.phaseStartS[i] > f.phaseStartS[i - 1], "phases in order on the timeline");
        }
        check(Math.abs(f.sessionAt(0)) < 1 && f.sessionAt(1e9) == f.totalS, "forecast lookup ends");

        AutoEngine e = new AutoEngine(plan);
        e.setScript(sc);
        long t = 0;
        e.startAt(t, t);
        t = e.getGoMs();
        e.tick(t);
        int guard = 0;
        // to the first rest in the main part (legs work: front thigh / glutes must glow)
        while (guard++ < 600 && !(e.getState() == AutoEngine.State.REST && !"WARMUP".equals(e.phase().id))) {
            if (e.getState() == AutoEngine.State.REST) {
                t += e.getRestMinS() * 1000L;
                e.requestGo(t, t);
                t = e.getGoMs();
                e.tick(t);
                continue;
            }
            t += e.getCurrent().durationMs();
            e.tick(t - 1);
            e.onCycle(t);
        }
        check(e.getState() == AutoEngine.State.REST, "reached a main-part rest");
        // the "next" shown in a set's last seconds is the exercise the next set really has
        {
            AutoEngine q = new AutoEngine(plan);
            q.setScript(sc);
            long tq = 0;
            q.startAt(tq, tq);
            tq = q.getGoMs();
            q.tick(tq);
            int ok = 0;
            int bad = 0;
            String promised = null;
            for (int i = 0; i < 2500 && q.getState() != AutoEngine.State.DONE; i++) {
                if (q.getState() == AutoEngine.State.RUN) {
                    String nx = q.getNextExercise();
                    if (nx != null) {
                        promised = nx;
                    }
                }
                if (q.getState() == AutoEngine.State.REST && promised != null) {
                    String real = q.isRestBeforeCooldown() ? AutoEngine.NEXT_RECOVERY : q.getExercise();
                    if (promised.equals(real)) {
                        ok++;
                    } else {
                        bad++;
                    }
                    promised = null;
                }
                step(q, new long[] {tq}, 0);
                tq = q.getState() == AutoEngine.State.RUN && q.getCurrent() != null ? q.getCurrent().startMs : tq + 1000;
            }
            check(ok > 10 && bad == 0, "next exercise announced = the one that comes (" + ok + " ok, " + bad + " wrong)");
        }
        double[] load = e.getChannelLoad(t);
        check(load[AutoModel.GLUTES] > load[AutoModel.CHEST] && load[AutoModel.GLUTES] > 0.2,
                "glutes program loads the glutes more than the chest (" + load[AutoModel.GLUTES] + " / " + load[AutoModel.CHEST] + ")");
        check(e.getPeakLoad(t + 60000) < e.getPeakLoad(t), "the load decays in the rest");
        // owner (1.1.290): the clock counts every wait in full (the timeline shows the pause as long as it lasts)
        double s0 = e.getSessionS(t);
        int min = e.getRestMinS();
        long late = t + (min + 40) * 1000L;
        check(Math.abs(e.getSessionS(late) - (s0 + min + 40)) < 0.01, "the clock counts the whole rest ("
                + (e.getSessionS(late) - s0) + ")");
        String before = e.getExercise();
        AutoEngine.Forecast fBefore = e.forecastFrom(late);
        double el0 = e.getElapsedS();
        double setT = e.getSetTargetS();
        check(e.next(late) && !before.equals(e.getExercise()), "⏭ in the rest: the next exercise");
        check(Math.abs(e.getElapsedS() - el0 - setT) < 1e-6 && Math.abs(e.getSkippedS() - setT) < 1e-6,
                "⏭ in the rest skips the coming set: its time is cut from the session (" + setT + " s)");
        {
            AutoEngine.Forecast f0 = e.forecastFrom(late);
            check(fBefore.totalS - f0.totalS > 0.7 * setT, "⏭ makes the session shorter (" + Math.round(fBefore.totalS)
                    + " → " + Math.round(f0.totalS) + " s)");
            check(Math.abs((f0.totalS - f0.phaseStartS[f0.phaseStartS.length - 1])
                    - (fBefore.totalS - fBefore.phaseStartS[fBefore.phaseStartS.length - 1])) < 15,
                    "the recovery keeps its length after a skip");
        }
        e.requestGo(late, late);
        t = e.getGoMs();
        e.tick(t);
        double s1 = e.getSessionS(t);
        check(Math.abs(s1 - (s0 + min + 40 + 3)) < 0.6, "after ▶ the clock went on from the rest + countdown, the skipped set not on it ("
                + (s1 - s0) + ")");
        int[] imp = e.getSetImpulses();
        check(imp[0] == 1 && imp[1] >= 3 && imp[1] * e.getCurrent().durationMs() / 1000.0 <= AutoEngine.STATION_MAX_S,
                "set impulses " + imp[0] + " / " + imp[1]);
        for (int i = 0; i < 2 && e.getState() == AutoEngine.State.RUN; i++) {
            t += e.getCurrent().durationMs();
            e.tick(t - 1);
            e.onCycle(t);
        }
        t += 1000;
        e.tick(t);
        check(e.getState() == AutoEngine.State.RUN && e.next(t) && e.getState() == AutoEngine.State.REST
                && e.getRestMinS() >= AutoEngine.REST_FLOOR_TETANIC_S,
                "⏭ in a set: the set ends, the rest still follows the fatigue");
        // user pause is not training time
        e.requestGo(t + e.getRestMinS() * 1000L, 0);
        t = e.getGoMs();
        e.tick(t);
        e.userPause(t);
        double p0 = e.getSessionS(t);
        check(Math.abs(e.getSessionS(t + 120000) - p0 - 120) < 0.01, "a manual pause counts as it lasts");
        check(e.getTrace().get(e.getTrace().size() - 1)[6] == AutoEngine.TRACE_REST, "the pause is on the timeline");
        double l0 = e.getSystemLoad(t);
        e.traceTick(t + 60000);
        float[] lp = e.getTrace().get(e.getTrace().size() - 1);
        check(lp[2] < l0 && lp[2] > 0, "in the pause the timeline falls with the load (" + l0 + " → " + lp[2] + ")");
        // in the recovery Next does nothing
        e.stopPress(t);
        e.requestGo(t, t);
        t = e.getGoMs();
        e.tick(t);
        check(e.phase().isCooldown() && !e.next(t), "⏭ never skips the recovery");

        // with a pulse: the heart counts in the system load and ends a set before the HR stop
        AutoEngine h = new AutoEngine(plan);
        h.setScript(sc);
        t = 0;
        h.startAt(t, t);
        t = h.getGoMs();
        h.tick(t);
        check(h.getCardioLoad(t) < 0, "no HR → no cardio load");
        h.onHr(t, plan.hrRest + (plan.hrCap - plan.hrRest) / 2);
        check(Math.abs(h.getCardioLoad(t) - 0.5) < 0.05, "cardio load = %HR range to the cap");
        double m0 = h.getMuscularLoad(t);
        double x0 = h.getCentralLoad(t);
        check(Math.abs(m0 - (0.5 * h.getPeakLoad(t) + 0.5 * h.getMuscleMeanLoad(t))) < 1e-12, "M = ½ peak + ½ body mean");
        check(Math.abs(x0 - (0.6 * h.getCardioLoad(t) + 0.4 * h.getMetabolicLoad(t))) < 1e-12,
                "central = 0.6·HR share + 0.4·oxygen model with a pulse");
        check(h.getDoseLoad(t) < 0, "no plan budget → no dose part");
        check(Math.abs(h.getSystemLoad(t) - (1 - (1 - m0) * (1 - x0))) < 1e-9
                && h.getSystemLoad(t) >= Math.max(m0, x0) - 1e-9 && h.getSystemLoad(t) <= 1.0 + 1e-9,
                "total load = either system at its limit is the limit (≥ the higher part)");
        check(h.getMuscleMeanLoad(t) <= h.getPeakLoad(t) + 1e-9, "whole-body mean ≤ the peak zone");
        for (int i = 0; i < 2 && h.getState() == AutoEngine.State.RUN; i++) {
            t += h.getCurrent().durationMs();
            h.onHr(t, plan.hrCap - 3);
            h.tick(t - 1);
            h.onCycle(t);
        }
        check(h.getState() == AutoEngine.State.REST && h.getHrEndedSets() == 1, "HR near the cap → the set ends early, rest");
        check(h.isRestHrHigh(t), "…and the next set waits for the HR");
    }

    // ================================================================ practical situations (audit, 1.1.271)

    static AutoEngine fresh(AutoModel.Plan plan, AutoTemplates.Script sc, long[] t) {
        AutoEngine e = new AutoEngine(plan);
        e.setScript(sc);
        e.startAt(t[0], t[0]);
        t[0] = e.getGoMs();
        e.tick(t[0]);
        return e;
    }

    /** One cycle with the device hook; rests are taken at their minimum + extra seconds. */
    static void step(AutoEngine e, long[] t, int extraRestS) {
        if (e.getState() == AutoEngine.State.REST) {
            t[0] += (e.getRestMinS() + extraRestS) * 1000L;
            e.requestGo(t[0], t[0]);
            t[0] = e.getGoMs();
            e.tick(t[0]);
            return;
        }
        if (e.getState() == AutoEngine.State.COUNTDOWN) {
            t[0] = e.getGoMs();
            e.tick(t[0]);
            return;
        }
        t[0] += e.getCurrent().durationMs();
        e.tick(t[0] - 1);
        e.onCycle(t[0]);
    }

    static void toMainSet(AutoEngine e, long[] t) {
        int g = 0;
        while (g++ < 400 && !(e.getState() == AutoEngine.State.RUN && "MAIN".equals(e.phase().id)
                && e.getStationS() == 0)) {
            step(e, t, 0);
        }
    }

    static void scenarios() {
        AutoModel.Input in = input(AiModel.Sex.FEMALE, 42, 68, 166, AiModel.Fitness.MID, 10, 200);
        in.goal = AutoModel.Goal.TONE;
        in.kind = AutoModel.Kind.ACTIVE;
        in.programId = AutoCatalog.GENERAL;
        AutoModel.Plan plan = AutoPlanner.build(in, 66);
        AutoTemplates.Script sc = AutoTemplates.script(plan, null);
        double frac;

        // S1 · the trainer takes the strength down 30 % in the middle of a set → less load, shorter rest, shorter forecast
        long[] t = {0};
        AutoEngine a = fresh(plan, sc, t);
        toMainSet(a, t);
        AutoEngine b = fresh(plan, sc, new long[] {0});
        long[] tb = {0};
        b = fresh(plan, sc, tb);
        toMainSet(b, tb);
        frac = a.getCurrent().frac;
        for (int i = 0; i < 6 && a.getState() == AutoEngine.State.RUN; i++) {
            a.setLive(frac * 0.7, null, t[0]);
            b.setLive(frac, null, tb[0]);
            step(a, t, 0);
            step(b, tb, 0);
        }
        check(a.getState() == AutoEngine.State.REST && b.getState() == AutoEngine.State.REST, "S1 both sets ended");
        check(a.getPeakLoad(t[0]) < b.getPeakLoad(tb[0]), "S1 −30 % strength → lower zone load");
        check(a.getRestMinS() <= b.getRestMinS(), "S1 −30 % strength → rest not longer");
        AutoEngine.Forecast f1 = AutoEngine.forecast(plan, sc, false, 1.0);
        AutoEngine.Forecast f07 = AutoEngine.forecast(plan, sc, false, 0.7);
        AutoEngine.Forecast f12 = AutoEngine.forecast(plan, sc, false, 1.2);
        // weaker → shorter rests; stronger → longer rests, but the dose budget (§3.4) may end the work earlier
        check(f07.totalS < f1.totalS && f12.maxLoad > f1.maxLoad, "S1 forecast follows the strength ("
                + Math.round(f07.totalS / 60) + " / " + Math.round(f1.totalS / 60) + " / " + Math.round(f12.totalS / 60) + " min)");
        if (verbose) {
            System.out.println("  S1 rest " + a.getRestMinS() + " vs " + b.getRestMinS() + " s; forecast 0.7/1/1.2 = "
                    + Math.round(f07.totalS / 60) + "/" + Math.round(f1.totalS / 60) + "/" + Math.round(f12.totalS / 60) + " min");
        }

        // S2 · a zone switched off mid-set → that zone stops loading at once
        t[0] = 0;
        AutoEngine z = fresh(plan, sc, t);
        toMainSet(z, t);
        step(z, t, 0);
        double before = z.getChannelLoad(t[0])[AutoModel.CHEST];
        int[] zones = plan.zones.clone();
        zones[AutoModel.CHEST] = 0;
        z.setLive(z.getCurrent().frac, zones, t[0]);
        step(z, t, 0);
        check(z.getChannelLoad(t[0])[AutoModel.CHEST] < before, "S2 a zone set to 0 % → its load falls");

        // S3 · the double impulse switched on mid-cycle → the pause loads too (only where the program has it)
        AutoModel.Input sl = input(AiModel.Sex.FEMALE, 42, 68, 166, AiModel.Fitness.MID, 10, 200);
        sl.goal = AutoModel.Goal.SLIM;
        sl.kind = AutoModel.Kind.ACTIVE;
        sl.programId = AutoCatalog.GENERAL;
        AutoModel.Plan sp = AutoPlanner.build(sl, 66);
        AutoTemplates.Script ss = AutoTemplates.script(sp, null);
        t[0] = 0;
        AutoEngine d0 = fresh(sp, ss, t);
        d0.setDoublePulse(false, t[0]);
        toMainSet(d0, t);
        long[] t2 = {0};
        AutoEngine d1 = fresh(sp, ss, t2);
        d1.setDoublePulse(false, t2[0]);
        toMainSet(d1, t2);
        d1.setDoublePulse(true, t2[0]);
        d1.refresh(t2[0]);
        for (int i = 0; i < 3; i++) {
            step(d0, t, 0);
            step(d1, t2, 0);
        }
        check(!sp.doublePulseAllowed || d1.getPeakLoad(t2[0]) > d0.getPeakLoad(t[0]), "S3 double impulse on → more load");

        // S4 · manual pause 2 min in the middle of a set → the set goes on where it was; the pause is not training time
        t[0] = 0;
        AutoEngine p = fresh(plan, sc, t);
        toMainSet(p, t);
        step(p, t, 0);
        double setBefore = p.getStationS();
        double clk = p.getSessionS(t[0]);
        p.userPause(t[0]);
        t[0] += 120000;
        check(p.requestGo(t[0], t[0]), "S4 ▶ after a pause");
        t[0] = p.getGoMs();
        p.tick(t[0]);
        check(p.getStationS() >= setBefore - 1e-9 && p.getState() == AutoEngine.State.RUN, "S4 the set continues");
        check(Math.abs(p.getSessionS(t[0]) - clk - 123) < 0.6, "S4 the 2 min pause (+ 3 s countdown) is on the clock ("
                + (p.getSessionS(t[0]) - clk) + ")");

        // S5 · the HR jumps straight over the cap mid-cycle → output stops (L11); comes down → counts down by itself
        AutoModel.Plan hp = AutoPlanner.build(in, 66);
        t[0] = 0;
        AutoEngine h = fresh(hp, sc, t);
        toMainSet(h, t);
        h.onHr(t[0] + 500, hp.hrCap + 2);
        h.tick(t[0] + 1000);
        check(h.getState() == AutoEngine.State.HR_PAUSE, "S5 HR over the cap → HR pause");
        float[] lastT = h.getTrace().get(h.getTrace().size() - 1);
        check(lastT.length > 6 && lastT[6] == AutoEngine.TRACE_HR_PAUSE,
                "S5 the HR stop is marked on the timeline (a critical pause)");
        long tt = t[0] + 1000;
        for (int i = 0; i < 40; i++) {
            tt += 1000;
            h.onHr(tt, hp.hrCap - 20);
            h.tick(tt);
        }
        check(h.getState() == AutoEngine.State.COUNTDOWN || h.getState() == AutoEngine.State.RUN,
                "S5 HR down 20 s → countdown by itself (" + h.getState() + ")");
        check(h.getSessionS(tt) > 0, "S5 clock");

        // S6 · the band drops in the rest (no fresh HR) → ▶ follows the fatigue only, the tile shows ♥ —
        t[0] = 0;
        AutoEngine n = fresh(hp, sc, t);
        toMainSet(n, t);
        while (n.getState() == AutoEngine.State.RUN) {
            n.onHr(t[0], hp.hrCap - 6);
            step(n, t, 0);
        }
        check(n.isRestHrHigh(t[0]), "S6 high HR holds the next set");
        long late = t[0] + 15000;
        check(!n.isRestHrHigh(late) && n.getHr(late) < 0, "S6 band silent 15 s → no HR gate (known: fatigue only)");

        // S7 · STOP during the countdown → recovery (waiting for ▶); STOP again → end
        t[0] = 0;
        AutoEngine c7 = fresh(plan, sc, t);
        toMainSet(c7, t);
        c7.userPause(t[0]);
        c7.requestGo(t[0], t[0]);
        check(c7.getState() == AutoEngine.State.COUNTDOWN, "S7 counting down");
        check(!c7.stopPress(t[0] + 1000) && c7.isRestBeforeCooldown(), "S7 stop in the countdown → recovery");
        check(c7.stopPress(t[0] + 2000), "S7 second stop → end");

        // S8 · ⏭ right after a set starts → no 15 s floor (no work was done); ⏭ in the rest walks the exercises
        t[0] = 0;
        AutoEngine k = fresh(plan, sc, t);
        toMainSet(k, t);
        k.next(t[0] + 500);
        check(k.getState() == AutoEngine.State.REST && k.getRestMinS() < AutoEngine.REST_FLOOR_TETANIC_S,
                "S8 ⏭ at the set start → rest only by fatigue (" + k.getRestMinS() + " s)");
        java.util.Set<String> seen = new java.util.HashSet<String>();
        for (int i = 0; i < 12; i++) {
            seen.add(k.getExercise());
            k.next(t[0] + 600 + i);
        }
        check(seen.size() >= 3, "S8 ⏭ in the rest goes through the exercises (" + seen.size() + ")");

        // S9 · natural end: 20 min of impulses → recovery waits ▶ → 10 min → DONE; impulses never pass 20 min
        t[0] = 0;
        AutoEngine full = fresh(plan, sc, t);
        int g = 0;
        double maxActive = 0;
        while (full.getState() != AutoEngine.State.DONE && g++ < 8000) {
            if (!full.phase().isCooldown()) {
                maxActive = Math.max(maxActive, full.getElapsedS());
            }
            step(full, t, 5);
        }
        check(full.getState() == AutoEngine.State.DONE, "S9 ends by itself");
        check(maxActive <= plan.activeS + 1e-6, "S9 impulses of the active part ≤ 20 min (" + maxActive + ")");
        double counted = full.getSessionS(t[0]);
        AutoEngine.Forecast fc = AutoEngine.forecast(plan, sc, false);
        check(counted >= fc.totalS - 61, "S9 the clock holds the plan and every extra wait ("
                + Math.round(counted) + " vs " + Math.round(fc.totalS) + ")");
        if (verbose) {
            System.out.println("  S9 sets " + full.getStationsDone() + " · clock " + Math.round(counted / 60) + " min · wall "
                    + Math.round(t[0] / 60000.0) + " min");
        }

        // S10 · Hz / impulse changed in the phase window mid-cycle → load follows the new cycle at once
        t[0] = 0;
        AutoEngine w = fresh(plan, sc, t);
        toMainSet(w, t);
        AutoEngine.Cmd c9 = w.getCurrent();
        AutoEngine.Cmd c10 = w.userParams(-1, c9.onS + 1, -1, -1, t[0] + 500);
        // since 1.1.323 a longer impulse may also lengthen the pause (SafeLimits): the cycle follows both at once
        check(w.getCurrent() == c10 && c10.onS > c9.onS && c10.offS >= SafeLimits.minOff(c10.hz, c10.onS,
                c10.pauseHz, c10.pauseSigma), "S10 longer impulse → the cycle follows, the pause stays safe");
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
