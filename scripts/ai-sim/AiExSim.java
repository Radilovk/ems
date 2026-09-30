import com.isaigu.gymapp.ai.AiEngine;
import com.isaigu.gymapp.ai.AiExercises;
import com.isaigu.gymapp.ai.AiModel.*;
import com.isaigu.gymapp.ai.AiPlanner;
import com.isaigu.gymapp.ai.AutoTemplates;
import com.isaigu.gymapp.ai.AiModel;
import com.isaigu.gymapp.ai.Workout;

import java.util.ArrayList;
import java.util.List;

/** Offline test of the Smart Session's exercises (AiExercises over AiEngine): whole sessions, synthetic pulse. */
public final class AiExSim {
    private static int checks;
    private static int fails;

    static void check(boolean ok, String what) {
        checks++;
        if (!ok && ++fails <= 30) {
            System.out.println("FAIL " + what);
        }
    }

    public static void main(String[] args) {
        boolean verbose = args.length > 0 && args[0].equals("-v");
        String[][] conds = {{}, {"knees"}, {"diastasis"}, {"back"}};
        String[][] focus = {{}, {"glutes"}, {"abs", "arms"}};
        int sessions = 0;
        for (Goal g : new Goal[] {Goal.TONE, Goal.FAT}) {
            for (Fitness f : Fitness.values()) {
                for (int age : new int[] {30, 70}) {
                    for (String[] c : conds) {
                        for (String[] fo : focus) {
                            for (double gain : new double[] {40, 110}) {
                                run(g, f, age, c, fo, gain, verbose && c.length == 0 && fo.length == 0 && f == Fitness.MID);
                                sessions++;
                            }
                        }
                    }
                }
            }
        }
        for (Goal g : new Goal[] {Goal.MASSAGE, Goal.DRAIN, Goal.CELLULITE}) {
            SessionInput in = new SessionInput();
            in.goal = g;
            in.mode = Mode.PASSIVE;
            Profile p = AiPlanner.derive(in, 68, 1.5, 3000);
            check(AiExercises.build(in, 170, AiPlanner.build(in, p), 20, 72, null) == null, g + ": passive, no exercises");
        }
        // workouts: the ready programs and a custom one (a registered library exercise among them)
        AutoTemplates.register("wall-sit", "Стол до стена", "Wall Sit", "stand", 3.0, new int[] {0, 0, 100, 30, 0, 0, 0, 0, 60, 30});
        java.util.List<Workout> ws = new java.util.ArrayList<Workout>(Workout.presets());
        Workout mine = new Workout();
        mine.id = "w1";
        mine.name = "mine";
        mine.goal = Workout.GOAL_FAT;
        mine.items.add(new Workout.Item("jump-squat", 2, 10));
        mine.items.add(new Workout.Item("wall-sit", 3, 6));
        mine.items.add(new Workout.Item("knee-push-up", 4, 15));
        ws.add(mine);
        for (Workout w : Workout.presets()) {
            check(!w.longerThanSession(), w.id + ": a ready program fits one session (" + w.minutes() + " of "
                    + w.sessionMinutes() + " min)");
        }
        int wsRuns = 0;
        for (Workout w : ws) {
            for (String[] c : new String[][] {{}, {"knees"}}) {
                for (double gain : new double[] {40, 90}) {
                    runWorkout(w, c, gain, verbose && c.length == 0 && gain < 50);
                    wsRuns++;
                }
            }
        }
        sessions += wsRuns;
        System.out.println((fails == 0 ? "OK" : "FAIL") + " — AI exercises: " + sessions + " sessions, " + checks
                + " checks, " + fails + " failures");
        if (fails > 0) {
            System.exit(1);
        }
    }

    /** A workout under the real engine: sets in order, each collects exactly its repetitions (rest-pause when the
     *  AI's block is shorter), never an impulse more; forbidden exercises never appear. */
    static void runWorkout(Workout w, String[] cond, double gain, boolean print) {
        SessionInput in = new SessionInput();
        in.goal = w.aiGoal();
        in.mode = Mode.ACTIVE;
        in.fitness = Fitness.MID;
        in.age = 35;
        in.sex = Sex.FEMALE;
        for (String c : cond) {
            in.cond.add(c);
        }
        String tag = "workout " + w.id + " " + String.join("+", cond) + " g" + (int) gain;
        int hrRest = 68;
        Profile prof = AiPlanner.derive(in, hrRest, 1.5, 3000);
        Plan plan = AiPlanner.build(in, prof);
        AiExercises x = AiExercises.forWorkout(w, in, 168, plan, 12, 72);
        check(x != null, tag + ": built");
        if (x == null) {
            return;
        }
        Workout run = x.getWorkout();
        int[][] seq = run.sequence();
        AiEngine e = new AiEngine(in, prof, plan);
        long t = 1_000_000L;
        e.start(t);
        double load = hrRest;
        long nextCycle = t;
        AiEngine.CycleCmd cmd = null;
        long cycleStart = t;
        java.util.Map<Integer, Integer> perSet = new java.util.TreeMap<Integer, Integer>();
        int restsInSet = 0;
        int rests = 0;
        int restsNamed = 0;
        boolean wasRest = false;
        for (int step = 0; step < 4 * 60 * 60 * 3; step++) {
            t += 250;
            AiEngine.State st = e.getState();
            if (st == AiEngine.State.DONE || st == AiEngine.State.STOPPED || st == AiEngine.State.RECOVERY) {
                break;
            }
            if (t >= nextCycle) {
                cmd = e.onCycle(t);
                cycleStart = t;
                nextCycle = t + (cmd.onS + cmd.offS) * 1000L;
                x.onCycle(t, e, cmd);
                String cur = x.current(e);
                AiModel.Phase ph = e.phase();
                if (cur != null && ph != null && ph.blockMode == BlockMode.FATIGUE_DRIVEN && cmd.frac > 0) {
                    int k = x.getSetIndex();
                    perSet.put(k, perSet.containsKey(k) ? perSet.get(k) + 1 : 1);
                    String want = run.items.get(seq[k % seq.length][0]).ex;
                    check(cur.equals(want) || cur.equals(AutoTemplates.easier(want, x.getScript().avoid)),
                            tag + ": set " + k + " is " + cur + ", want " + want);
                    check(!x.getScript().avoid.contains(cur), tag + ": forbidden " + cur);
                }
            }
            boolean on = cmd != null && e.getState() == AiEngine.State.RUN && t - cycleStart < cmd.onS * 1000L;
            double target = hrRest + gain * (on ? cmd.frac : 0) * (cmd != null && cmd.hz >= 20 ? 1.0 : 0.3);
            load += (target - load) * (0.25 / (target > load ? 25.0 : 40.0));
            if (t % 3000 == 0) {
                e.onHr(t, (int) Math.round(load));
            }
            e.tick(t);
            x.tick(t, e);
            boolean rest = e.getState() == AiEngine.State.REST;
            if (rest && !wasRest) {
                if (!x.isSetComplete()) {
                    restsInSet++;
                }
                if (x.next() != null) {
                    restsNamed++;
                }
                rests++;
            }
            wasRest = rest;
            if (e.isRestReady()) {
                e.continueBlock(t);
            }
            if (e.getState() == AiEngine.State.CHECKPOINT) {
                e.answerCheckpoint(5, t);
            }
        }
        int last = -1;
        for (int k : perSet.keySet()) {
            last = Math.max(last, k);
        }
        int full = 0;
        for (java.util.Map.Entry<Integer, Integer> en : perSet.entrySet()) {
            int k = en.getKey();
            int target = run.items.get(seq[k % seq.length][0]).reps;
            check(en.getValue() <= target, tag + ": set " + k + " got " + en.getValue() + " > " + target);
            if (k < last) {
                check(en.getValue() == target, tag + ": set " + k + " stopped at " + en.getValue() + "/" + target);
            }
            if (en.getValue() == target) {
                full++;
            }
        }
        check(full >= Math.min(3, seq.length), tag + ": full sets " + full);
        check(rests - restsNamed <= 1, tag + ": rests naming the next exercise " + restsNamed + "/" + rests);
        if (print) {
            StringBuilder b = new StringBuilder();
            for (int k = 0; k <= Math.min(last, 8); k++) {
                int[] s = seq[k % seq.length];
                b.append(run.items.get(s[0]).ex).append(' ').append(s[1]).append(':').append(perSet.get(k)).append("  ");
            }
            System.out.println(tag + ": " + (last + 1) + " sets (" + full + " full), rest-pauses " + restsInSet + " — " + b);
        }
    }

    static void run(Goal goal, Fitness fit, int age, String[] cond, String[] focus, double gain, boolean print) {
        SessionInput in = new SessionInput();
        in.goal = goal;
        in.mode = Mode.ACTIVE;
        in.fitness = fit;
        in.age = age;
        in.sex = Sex.FEMALE;
        in.weightKg = 70;
        for (String c : cond) {
            in.cond.add(c);
        }
        for (String f : focus) {
            in.focus.add(f);
        }
        String tag = goal + " " + fit + " " + age + " " + String.join("+", cond) + " [" + String.join(",", focus) + "] g" + (int) gain;
        int hrRest = 68;
        Profile prof = AiPlanner.derive(in, hrRest, 1.5, 3000);
        Plan plan = AiPlanner.build(in, prof);
        AiExercises x = AiExercises.build(in, 168, plan, 12, 72, null);
        check(x != null, tag + ": exercises built");
        if (x == null) {
            return;
        }
        AutoTemplates.Script sc = x.getScript();
        AiEngine e = new AiEngine(in, prof, plan);
        long t = 1_000_000L;
        e.start(t);
        double load = hrRest;
        long nextCycle = t;
        AiEngine.CycleCmd cmd = null;
        long cycleStart = t;
        String lastAtCycle = null;
        List<String> seen = new ArrayList<String>();
        int restWithNext = 0;
        int rests = 0;
        int easierSeen = 0;
        boolean inRest = false;
        for (int step = 0; step < 4 * 60 * 60 * 3; step++) {
            t += 250;
            AiEngine.State st = e.getState();
            if (st == AiEngine.State.DONE || st == AiEngine.State.STOPPED || st == AiEngine.State.RECOVERY) {
                break;
            }
            if (t >= nextCycle) {
                cmd = e.onCycle(t);
                cycleStart = t;
                nextCycle = t + (cmd.onS + cmd.offS) * 1000L;
                x.onCycle(t, e, cmd);
                lastAtCycle = x.current(e);
                String cur = lastAtCycle;
                if (cur != null) {
                    if (seen.isEmpty() || !seen.get(seen.size() - 1).equals(cur)) {
                        seen.add(cur);
                    }
                    check(!sc.avoid.contains(cur), tag + ": forbidden " + cur);
                    if (x.isEasier()) {
                        easierSeen++;
                    }
                }
            }
            boolean on = cmd != null && e.getState() == AiEngine.State.RUN && t - cycleStart < cmd.onS * 1000L;
            double target = hrRest + gain * (on ? cmd.frac : 0) * (cmd != null && cmd.hz >= 20 ? 1.0 : 0.3);
            load += (target - load) * (0.25 / (target > load ? 25.0 : 40.0));
            if (t % 3000 == 0) {
                e.onHr(t, (int) Math.round(load));
            }
            e.tick(t);
            x.tick(t, e);
            if (e.isRestReady()) {
                e.continueBlock(t);
            }
            if (e.getState() == AiEngine.State.CHECKPOINT) {
                e.answerCheckpoint(5, t);
            }
            st = e.getState();
            // between cycle starts the exercise does not change
            if (st == AiEngine.State.RUN && lastAtCycle != null) {
                check(lastAtCycle.equals(x.current(e)), tag + ": changed mid-cycle");
            }
            if (st == AiEngine.State.REST && !inRest) {
                rests++;
                inRest = true;
                if (x.next() != null) {
                    restWithNext++;
                }
            }
            if (st != AiEngine.State.REST) {
                inRest = false;
            }
        }
        AutoTemplates.Outcome o = x.outcome(e);
        check(o.done >= 0 && o.done <= 1, tag + ": worked share " + o.done);
        if (gain < 100) {                          // a pulse this steep ends the session early (the engine's call)
            check(o.done > 0.5, tag + ": worked share " + o.done);
            check(seen.size() >= 3, tag + ": several exercises in a session (" + seen.size() + ")");
        }
        check(rests == restWithNext, tag + ": every rest shows the next exercise (" + restWithNext + "/" + rests + ")");
        if (print) {
            System.out.println(tag + " L" + sc.level + " rests " + rests + " easier cycles " + easierSeen + ": "
                    + String.join(" → ", seen));
        }
    }
}
