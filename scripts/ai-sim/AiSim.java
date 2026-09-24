import com.isaigu.gymapp.ai.*;
import com.isaigu.gymapp.wearable.HrGuardCore;
import com.isaigu.gymapp.ai.AiModel.*;
import java.util.*;

/** Offline scenarios for the Smart Session engine. Exit code 1 on any invariant failure. */
public class AiSim {
    static int failures = 0;
    static void check(boolean ok, String what) { if (!ok) { failures++; System.out.println("  FAIL: " + what); } }
    /** ACTIVE rests: seconds the operator waits after "ready" before pressing continue. */
    static int continueAfterS = 5;
    /** Optional user pause: at plan second pauseAtS for pauseLenS (−1 = none). */
    static int pauseAtS = -1, pauseLenS = 0;
    static double minReentry = 1.0, idleWhileWaiting = 0;
    static int earlyContinueAccepted = 0, longOffActive = 0;

    /** gain = bpm per unit of output fraction at steady state; bandLossAtS < 0 = never. */
    static AiEngine run(String name, Goal goal, Mode mode, Operator op, double gain, int bandLossAtS,
                        int stopAtS, boolean print) {
        SessionInput in = new SessionInput();
        in.goal = goal; in.mode = mode; in.operator = op; in.age = 40; in.sex = Sex.MALE; in.fitness = Fitness.MID;
        int hrRest = 68;
        Profile prof = AiPlanner.derive(in, hrRest, 1.5, 3000);
        Plan plan = AiPlanner.build(in, prof);
        AiEngine e = new AiEngine(in, prof, plan);
        long t = 1_000_000L;
        e.start(t);
        double hr = hrRest; double load = 0;
        long nextCycle = t; long nextHr = t; AiEngine.CycleCmd cmd = null; long cycleStart = t;
        Random rnd = new Random(42);
        double maxFrac = 0; int silentDuringPause = 0, pauseTicks = 0;
        long checkpointAt = -1;
        Set<Integer> hzSeen = new TreeSet<>();
        long readySince = -1, pauseUntil = -1; boolean paused = false;
        minReentry = 1.0; idleWhileWaiting = 0; earlyContinueAccepted = 0; longOffActive = 0;
        for (int step = 0; step < 4 * 60 * 60 * 4; step++) {
            t += 250;
            long rel = (t - 1_000_000L) / 1000;
            if (stopAtS > 0 && rel == stopAtS) e.stop(t);
            if (t >= nextCycle && (e.getState() != AiEngine.State.DONE && e.getState() != AiEngine.State.STOPPED)) {
                cmd = e.onCycle(t); cycleStart = t;
                nextCycle = t + (cmd.onS + cmd.offS) * 1000L;
                if (cmd.frac > 0) {
                    hzSeen.add(cmd.hz);
                    check(cmd.frac <= plan.phiMax + 1e-9, name + " frac " + cmd.frac + " > phiMax");
                    check(cmd.offS >= 1, name + " offS < 1");
                    if (cmd.hz >= 20) {
                        if (mode == Mode.ACTIVE && cmd.offS > 4) longOffActive++;
                        check(cmd.onS <= 6, name + " tetanic on > 6 s");
                        check(cmd.rampUpMs >= 300 && cmd.rampUpMs <= 500, name + " ramp_up " + cmd.rampUpMs);
                    }
                }
                maxFrac = Math.max(maxFrac, cmd.frac);
            }
            boolean on = cmd != null && e.getState() == AiEngine.State.RUN && t - cycleStart < cmd.onS * 1000L;
            double target = hrRest + gain * (on ? cmd.frac : 0) * (cmd != null && cmd.hz >= 20 ? 1.0 : 0.3);
            load += (target - load) * (0.25 / (target > load ? 25.0 : 40.0));
            hr = load;
            if (t >= nextHr) {
                nextHr = t + 3000;
                boolean lost = bandLossAtS > 0 && rel >= bandLossAtS;
                if (!lost) e.onHr(t, (int) Math.round(hr + rnd.nextGaussian()));
            }
            double elapsedBefore = e.getElapsedPlanS();
            boolean waitingBefore = e.isRestReady();
            e.tick(t);
            if (waitingBefore && e.isRestReady()) idleWhileWaiting += e.getElapsedPlanS() - elapsedBefore;
            minReentry = Math.min(minReentry, e.getReentry());
            AiEngine.State s = e.getState();
            if (s == AiEngine.State.REST && !e.isRestReady() && e.continueBlock(t)) earlyContinueAccepted++;
            if (e.isRestReady()) {
                if (readySince < 0) readySince = t;
                if (t - readySince >= continueAfterS * 1000L) { e.continueBlock(t); readySince = -1; }
            } else readySince = -1;
            if (pauseAtS > 0 && !paused && rel >= pauseAtS && s == AiEngine.State.RUN) {
                e.userPause(t); paused = true; pauseUntil = t + pauseLenS * 1000L;
            }
            if (paused && pauseUntil > 0 && t >= pauseUntil && e.getState() == AiEngine.State.USER_PAUSE) {
                e.resume(t); pauseUntil = -1;
            }
            if (s == AiEngine.State.CHECKPOINT) {
                if (checkpointAt < 0) checkpointAt = t;
                if (t - checkpointAt > 5000) { e.answerCheckpoint(6, t); checkpointAt = -1; }
            }
            if (s == AiEngine.State.STIM_PAUSE) {
                pauseTicks++;
                if (e.getCurrentFrac() > 0) silentDuringPause++;
                if (e.canResume()) e.resume(t);
                if ("checkpoint".equals(e.getPauseReason())) e.answerCheckpoint(6, t);
            }
            if (s == AiEngine.State.DONE || s == AiEngine.State.STOPPED) break;
        }
        check(silentDuringPause == 0, name + " output during STIM_PAUSE");
        check(earlyContinueAccepted == 0, name + " continue accepted before the rest threshold");
        check(idleWhileWaiting < 1e-6, name + " plan clock ran while waiting for continue");
        check(mode != Mode.ACTIVE || longOffActive == 0, name + " ACTIVE tetanic pause > 4 s");
        System.out.printf("%-22s state=%-8s blocks=%2d maxFrac=%.2f q=%.0f/%.0f (plan %.0f) u=%.2f capHits=%d L1..u=%d/%d/%d/%d/%d corridor=%s hrr60=%s flags=%s hz=%s%n",
            name, e.getState(), e.getBlocks().size(), maxFrac, e.getQUsed()/1e6, e.getQBudget()/1e6, plan.qPlan/1e6, e.getU(), e.getCapHits(),
            e.getLCount(1), e.getLCount(2), e.getLCount(3), e.getLCount(4), e.getLCount(5),
            Double.isNaN(e.getCorridorShare()) ? "-" : String.format("%.0f%%", 100*e.getCorridorShare()),
            Double.isNaN(e.getHrr60()) ? "-" : String.format("%.0f", e.getHrr60()), e.getFlags(), hzSeen);
        if (print) for (String l : e.getLog()) System.out.println("    " + l);
        return e;
    }

    /**
     * Pulse module: 30 s calibration, then 20 min of a trainer program (85 Hz / 350 µs / 4:4 / 60 %),
     * HR = rest + gain · load (lag 25 s up, 40 s down) + drift 0.4 bpm/min.
     */
    static void guard(String name, double gain, int trainerUpper, boolean twitch, boolean print) {
        HrGuardCore g = new HrGuardCore();
        g.setMaxStepPct(10);
        if (trainerUpper > 0) g.setManualUpper(trainerUpper);
        long t = 0; double hr = 66, target; Random rnd = new Random(7);
        g.startCalibration(t);
        int baseS = 60, basePw = 350, baseHz = twitch ? 5 : 85;
        double maxHr = 0, minS = 1, maxS = 0, maxPw = 0, maxHz = 0; int holds = 0, firstLever = -1;
        String prev = ""; List<String> log = new ArrayList<>();
        for (int sec = 0; sec < 30 + 20 * 60 + 240; sec++) {
            t = sec * 1000L;
            boolean run = sec >= 40 && sec < 40 + 20 * 60;
            HrGuardCore.Stim st = new HrGuardCore.Stim();
            st.running = run; st.onS = 4; st.offS = 4;
            st.strength = (int) Math.round(baseS * g.getStrengthFactor());
            st.pwUs = (int) Math.round(basePw * g.getWidthFactor());
            st.hz = (int) Math.round(baseHz * g.getFreqFactor());
            double load = run ? (st.strength / 100.0) * (st.pwUs / 350.0) * Math.sqrt(st.hz / 85.0) * (twitch ? 0.3 : 1) : 0;
            target = 66 + gain * load + (run ? 0.4 * (sec - 40) / 60.0 : 0);
            hr += (target - hr) / (target > hr ? 25.0 : 40.0);
            if (sec % 3 == 0) g.onHr(t, (int) Math.round(hr + rnd.nextGaussian()), false);
            g.tick(t, st, true);
            if (sec == 35) check(!g.isCalibrating() && Math.abs(g.getRestHr() - 66) <= 2, name + " calibration 30 s → rest " + g.getRestHr());
            if (run) {
                maxHr = Math.max(maxHr, hr);
                minS = Math.min(minS, g.getStrengthFactor());
                check(g.getStrengthFactor() <= 1 && g.getWidthFactor() <= 1 && g.getFreqFactor() <= 1, name + " above trainer values");
                if (g.isHold()) { holds++; check(g.getStrengthFactor() == 0, name + " hold must be zero output"); }
            }
            maxS = Math.max(maxS, g.getStrengthFactor());
            String act = g.getLastAction();
            if (!act.equals(prev) || (g.getLastActionMs() == t && !act.isEmpty())) {
                if (g.getLastActionMs() == t) {
                    log.add(sec + "s " + act + String.format(Locale.US, " hr=%.0f fc=%.0f s=%.2f pw=%.2f hz=%.2f", g.getHr(), g.getForecast(), g.getStrengthFactor(), g.getWidthFactor(), g.getFreqFactor()));
                    if (firstLever < 0 && act.endsWith("_down")) firstLever = act.startsWith("strength") ? 0 : 1;
                }
                prev = act;
            }
        }
        long downs = log.stream().filter(x -> x.contains("_down")).count();
        long ups = log.stream().filter(x -> x.contains("restore")).count();
        System.out.printf("%-22s rest=%d upper=%d%s cap=%d maxHR=%.0f minS=%.2f downs=%d restores=%d holds=%ds kcal=%.0f%n",
            name, g.getRestHr(), g.getUpper(), g.isManualUpper() ? "(trainer)" : "(auto)", g.getCap(), maxHr, minS, downs, ups, holds, g.getKcal());
        check(firstLever <= 0, name + " first lever must be strength");
        check(maxHr <= g.getCap() + 10, name + " HR far above cap");
        check(g.getKcal() > 0, name + " kcal");
        if (print) log.forEach(x -> System.out.println("    " + x));
    }

    /** 20 min at 50 % HRR, then 60 s recovery + EPOC. Sanity bands from ACSM MET tables. */
    static Plan plan(Goal g, Mode m, PauseMode pm) {
        SessionInput in = new SessionInput();
        in.goal = g; in.mode = m; in.pause = pm; in.age = 40; in.sex = Sex.MALE; in.fitness = Fitness.MID;
        return AiPlanner.build(in, AiPlanner.derive(in, 68, 1.5, 3000));
    }

    /** Active pause: where it goes, its limits, and that it costs dose and energy. */
    static void pauseChecks() {
        for (Goal g : Goal.values()) {
            Mode m = AiModel.isAllowed(g, Mode.ACTIVE) ? Mode.ACTIVE : Mode.PASSIVE;
            Plan pa = plan(g, m, PauseMode.ACTIVE), pp = plan(g, m, PauseMode.PASSIVE), au = plan(g, m, PauseMode.AUTO);
            int active = 0;
            for (Phase ph : pa.phases) {
                for (CycleSpec c : new CycleSpec[] {ph.a, ph.b}) {
                    if (c == null || !c.hasActivePause()) continue;
                    active++;
                    check(g != Goal.DRAIN, g + " drainage must not get an active pause");
                    check(ph.id != PhaseId.COOLDOWN, g + " no active pause in cool-down");
                    check(c.pauseHz >= 1 && c.pauseHz <= 120 && c.pauseHz < c.hz, g + " pause Hz " + c.pauseHz + " vs work " + c.hz);
                    check(c.pauseSigma > 0 && c.pauseSigma <= 0.6, g + " pause strength " + c.pauseSigma);
                }
            }
            for (Phase ph : pp.phases) {
                check(!ph.a.hasActivePause() && (ph.b == null || !ph.b.hasActivePause()), g + " PASSIVE must have no active pause");
            }
            if (g != Goal.DRAIN) {
                check(active > 0, g + " ACTIVE must fill some pauses");
                // Fatigue-driven blocks rest earlier when the pause works too, so the session
                // dose stays close to the passive one instead of piling up.
                check(pa.qPlan >= 0.85 * pp.qPlan && pa.qPlan <= 1.35 * pp.qPlan,
                        g + " active dose " + pa.qPlan + " vs passive " + pp.qPlan);
                for (Phase ph : pa.phases) {
                    if (ph.a.hasActivePause()) {
                        check(AiPlanner.pauseDose(ph.a, 1.0, ph.a.offS) > 0, g + " pause dose per cycle");
                    }
                }
            }
            System.out.printf("PAUSE %-9s auto q=%.0f  passive q=%.0f  active q=%.0f  (%d cycle types active)%n",
                    g, au.qPlan / 1e6, pp.qPlan / 1e6, pa.qPlan / 1e6, active);
        }
        Plan tone = plan(Goal.TONE, Mode.ACTIVE, PauseMode.AUTO);
        for (Phase ph : tone.phases) {
            if (ph.id == PhaseId.MAIN) check(!ph.a.hasActivePause(), "TONE auto: strength part keeps the passive pause");
            if (ph.id == PhaseId.WARMUP) check(ph.a.hasActivePause(), "TONE auto: warm-up gets the active pause");
        }
        // Engine: commands carry the pause and the dose counts it.
        double[] q = new double[2];
        for (int k = 0; k < 2; k++) {
            SessionInput in = new SessionInput();
            in.goal = Goal.FAT; in.mode = Mode.ACTIVE; in.pause = k == 0 ? PauseMode.PASSIVE : PauseMode.ACTIVE;
            Profile prof = AiPlanner.derive(in, 68, 1.5, 3000);
            AiEngine e = new AiEngine(in, prof, AiPlanner.build(in, prof));
            long t = 1_000_000L; e.start(t); long next = t; boolean sawPause = false;
            for (int i = 0; i < 4 * 240; i++) {
                t += 250;
                if (t >= next) {
                    AiEngine.CycleCmd c = e.onCycle(t);
                    next = t + (c.onS + c.offS) * 1000L;
                    if (c.pauseHz > 0 && c.frac > 0) sawPause = true;
                }
                if (t % 3000 == 0) e.onHr(t, 90);
                e.tick(t);
            }
            q[k] = e.getQUsed();
            if (k == 1) check(sawPause, "FAT active: engine sends the active pause");
        }
        check(q[1] > q[0], "engine dose with active pause " + q[1] + " > passive " + q[0]);
        // Energy: the pause adds evoked O2 cost.
        AiEnergy.Stim on = new AiEnergy.Stim(); on.strengthPct = 60; on.hz = 85; on.pwUs = 350; on.onShare = 0.5;
        AiEnergy.Stim both = new AiEnergy.Stim(); both.strengthPct = 60; both.hz = 85; both.pwUs = 350; both.onShare = 0.5;
        both.pauseHz = 6; both.pauseStrengthPct = 27; both.pauseShare = 0.5;
        double v0 = AiEnergy.evokedVo2(on, 1.0), v1 = AiEnergy.evokedVo2(both, 1.0);
        System.out.printf("PAUSE energy: work only %.3f L/min, + active pause 6 Hz 45%% %.3f L/min%n", v0, v1);
        check(v1 > v0 && v1 < 1.5 * v0, "active pause adds a modest O2 cost");
    }

    static void energy(String name, Sex sex, int age, double w, Fitness fit, int rest, boolean med) {
        SessionInput in = new SessionInput();
        in.sex = sex; in.age = age; in.weightKg = w; in.fitness = fit;
        in.screening.hrLoweringMedication = med;
        Profile p = AiPlanner.derive(in, rest, 1.0, 3000);
        AiEnergy e = AiEnergy.forSession(in, p);
        long t = 0;
        double hr = rest + 0.5 * (p.hrMax - rest);
        for (int s = 0; s <= 1200; s++) { e.tick(t, hr, stim(null, 60, 85, 350, s % 8 < 4 ? 1 : 0)); t += 1000; }
        double atEnd = e.getKcal();
        for (int s = 0; s < 60; s++) { e.tick(t, rest + 10); t += 1000; }
        e.closeEpoc();
        double perMin = atEnd / 20.0;
        System.out.printf("%-26s VO2rest=%.2f VO2max=%.1f HRmax=%d  20 min: %.0f kcal (%.1f/min), +recovery %.0f, active %.0f%n",
            name, e.getVo2rest(), e.getVo2max(), p.hrMax, atEnd, perMin, e.getKcal() - atEnd, e.getActiveKcal());
        check(perMin > 3 && perMin < 15, name + " kcal/min out of the physiological range");
        check(e.getVo2rest() > 2.3 && e.getVo2rest() < 4.5, name + " VO2rest");
    }

    static AiEnergy.Stim stim(int[] ch, double strength, int hz, int pw, double on) {
        AiEnergy.Stim st = new AiEnergy.Stim();
        st.channels = ch; st.strengthPct = strength; st.hz = hz; st.pwUs = pw; st.onShare = on;
        st.toleratedCharge = new double[AiEnergy.CH_MASS.length];
        for (int i = 0; i < st.toleratedCharge.length; i++) {
            double c = ch != null ? ch[i] : 100;
            st.toleratedCharge[i] = c / 100.0 * (i == AiEnergy.ARMS ? AiEnergy.ARMS_SENT : 1) * 0.6;   // tolerated = 60 %
        }
        return st;
    }

    /** Channel model alone: 20 min, 4 s ON / 4 s OFF, HR flat at rest (passive). */
    static double channels(String name, int[] ch, double strength, int hz, int pw) {
        SessionInput in = new SessionInput(); in.weightKg = 80; in.age = 40;
        Profile p = AiPlanner.derive(in, 65, 1.0, 3000);
        AiEnergy e = AiEnergy.forSession(in, p);
        long t = 0;
        for (int s = 0; s <= 1200; s++) { e.tick(t, 65, stim(ch, strength, hz, pw, s % 8 < 4 ? 1 : 0)); t += 1000; }
        System.out.printf("%-34s evoked %.1f kcal / 20 min, total %.0f, active %.0f%n", name, e.getKcalEmsModel(), e.getKcal(), e.getActiveKcal());
        return e.getKcalEmsModel();
    }

    public static void main(String[] a) {
        boolean v = a.length > 0;
        AiEngine e;
        e = run("TONE normal", Goal.TONE, Mode.ACTIVE, Operator.TRAINER, 60, -1, -1, v);
        check(e.getState() == AiEngine.State.DONE, "TONE normal should finish");
        check(e.getBlocks().size() >= 3, "TONE normal should have blocks");
        e = run("TONE over-responder", Goal.TONE, Mode.ACTIVE, Operator.TRAINER, 260, -1, -1, v);
        check(e.getLCount(3) + e.getLCount(5) + e.getCapHits() > 0, "over-responder must trigger control");
        e = run("TONE band lost @300s", Goal.TONE, Mode.ACTIVE, Operator.TRAINER, 60, 300, -1, v);
        check(e.getFlags().contains("BAND_LOST"), "band loss must be flagged");
        e = run("TONE non-responder", Goal.TONE, Mode.ACTIVE, Operator.TRAINER, 2, -1, -1, v);
        check(e.getFlags().contains("NON_RESPONDER"), "non-responder must be flagged");
        e = run("TONE STOP @200s", Goal.TONE, Mode.ACTIVE, Operator.TRAINER, 60, -1, 200, v);
        check(e.getState() == AiEngine.State.STOPPED && e.getCurrentFrac() == 0, "STOP → zero");
        e = run("FAT active", Goal.FAT, Mode.ACTIVE, Operator.TRAINER, 70, -1, -1, v);
        check(e.getState() == AiEngine.State.DONE, "FAT should finish");
        e = run("FAT SOLO", Goal.FAT, Mode.ACTIVE, Operator.SELF, 70, -1, -1, v);
        check(e.getQUsed() <= e.getPlan().qBudget + 1, "SOLO budget = plan");
        e = run("MASSAGE passive", Goal.MASSAGE, Mode.PASSIVE, Operator.TRAINER, 20, -1, -1, v);
        e = run("DRAIN passive", Goal.DRAIN, Mode.PASSIVE, Operator.TRAINER, 10, -1, -1, v);
        e = run("CELLULITE passive", Goal.CELLULITE, Mode.PASSIVE, Operator.TRAINER, 20, -1, -1, v);
        for (int g : new int[] {170, 200, 230}) {
            e = run("TONE high-resp " + g, Goal.TONE, Mode.ACTIVE, Operator.TRAINER, g, -1, -1, v);
        }
        continueAfterS = 180;
        e = run("TONE wait 3 min/rest", Goal.TONE, Mode.ACTIVE, Operator.TRAINER, 60, -1, -1, v);
        check(e.getState() == AiEngine.State.DONE, "long waits still finish");
        check(minReentry < 0.9 && e.getTotalIdleS() > 0, "long wait → re-entry ramp");
        continueAfterS = 5;
        pauseAtS = 400; pauseLenS = 300;
        e = run("TONE user pause 5 min", Goal.TONE, Mode.ACTIVE, Operator.TRAINER, 60, -1, -1, v);
        check(minReentry <= 0.6 + 1e-9, "5 min pause → re-entry 0.6");
        pauseAtS = -1;
        // §2 resting HR: 30 s window.
        AiRestHr r = new AiRestHr(true);
        long t0 = 0; int n = 0;
        for (long t = 0; t <= 60000 && r.getStatus() != AiRestHr.Status.DONE; t += 1000) {
            if (t % 3000 == 0) r.onSample(t, 64 + (n++ % 3));
            r.tick(t);
            t0 = t;
        }
        System.out.printf("REST_HR 30 s             status=%s hr=%d sd=%.1f at %d s%n", r.getStatus(), r.getHrRest(), r.getSigma(), t0 / 1000);
        check(r.getStatus() == AiRestHr.Status.DONE && t0 <= 32000, "rest HR done in ~30 s");
        guard("PULSE normal", 40, 0, false, v);
        guard("PULSE high", 110, 0, false, v);
        guard("PULSE extreme", 200, 0, false, v);
        guard("PULSE trainer 150", 110, 150, false, v);
        guard("PULSE twitch 5 Hz", 110, 0, true, v);
        energy("M 40y 80kg MID rest 65", Sex.MALE, 40, 80, Fitness.MID, 65, false);
        energy("F 30y 60kg HIGH rest 55", Sex.FEMALE, 30, 60, Fitness.HIGH, 55, false);
        energy("M 60y 95kg LOW rest 78 med", Sex.MALE, 60, 95, Fitness.LOW, 78, true);
        int[] all = {100,100,100,100,100,100,100,100,100,100};
        int[] legs = {0,0,100,100,0,0,0,0,100,100};
        int[] arms = {0,0,0,0,100,0,0,0,0,0};
        double kAll = channels("all 10 channels, 60 %, 85 Hz", all, 60, 85, 350);
        double kLegs = channels("legs + glutes only", legs, 60, 85, 350);
        double kArms = channels("arms only (sent at 5 %)", arms, 60, 85, 350);
        double kHalf = channels("all, 30 % (half of tolerated)", all, 30, 85, 350);
        double kLow = channels("all, 60 %, 5 Hz (massage)", all, 60, 5, 250);
        check(kAll > kLegs && kLegs > kArms, "more / bigger muscles must cost more");
        check(kLegs > 0.5 * kAll, "legs + glutes hold most of the muscle mass");
        check(kHalf < kAll && kLow < kHalf, "lower strength / frequency must cost less");
        pauseChecks();
        System.out.println(failures == 0 ? "ALL CHECKS PASSED" : failures + " CHECK(S) FAILED");
        System.exit(failures == 0 ? 0 : 1);
    }
}
