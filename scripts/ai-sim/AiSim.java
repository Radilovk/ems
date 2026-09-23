import com.isaigu.gymapp.ai.*;
import com.isaigu.gymapp.ai.AiModel.*;
import java.util.*;

/** Offline scenarios for the Smart Session engine. Exit code 1 on any invariant failure. */
public class AiSim {
    static int failures = 0;
    static void check(boolean ok, String what) { if (!ok) { failures++; System.out.println("  FAIL: " + what); } }

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
            e.tick(t);
            AiEngine.State s = e.getState();
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
        System.out.printf("%-22s state=%-8s blocks=%2d maxFrac=%.2f q=%.0f/%.0f (plan %.0f) u=%.2f capHits=%d L1..u=%d/%d/%d/%d/%d corridor=%s hrr60=%s flags=%s hz=%s%n",
            name, e.getState(), e.getBlocks().size(), maxFrac, e.getQUsed()/1e6, e.getQBudget()/1e6, plan.qPlan/1e6, e.getU(), e.getCapHits(),
            e.getLCount(1), e.getLCount(2), e.getLCount(3), e.getLCount(4), e.getLCount(5),
            Double.isNaN(e.getCorridorShare()) ? "-" : String.format("%.0f%%", 100*e.getCorridorShare()),
            Double.isNaN(e.getHrr60()) ? "-" : String.format("%.0f", e.getHrr60()), e.getFlags(), hzSeen);
        if (print) for (String l : e.getLog()) System.out.println("    " + l);
        return e;
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
        System.out.println(failures == 0 ? "ALL CHECKS PASSED" : failures + " CHECK(S) FAILED");
        System.exit(failures == 0 ? 0 : 1);
    }
}
