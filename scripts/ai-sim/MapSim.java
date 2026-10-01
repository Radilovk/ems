import com.isaigu.gymapp.ai.MapClock;
import com.isaigu.gymapp.ai.Workout;

/** MapClock (the "By the map" runner's clock) over every ready map and a drawn one: exact cycles per block, rest
 *  seconds, monotonic position, the time fallback when the cycle hook is silent. */
public final class MapSim {
    private static int checks;
    private static int fails;

    static void check(boolean ok, String what) {
        checks++;
        if (!ok && ++fails <= 20) {
            System.out.println("FAIL " + what);
        }
    }

    /** The block's impulse settings: double impulse, second impulse, ramps — copied, kept in range. */
    static void impulseSettings() {
        Workout.Block b = Workout.forExercise("bodyweight-squat", "squat", false);
        check(b.rampIn == 500 && b.rampOut == 500 && !b.dbl, "exercise block default ramps 0.5 s, single impulse");
        b.dbl = true;
        b.off = 0;
        b.hz2 = 500;
        b.str2 = 0;
        b.rampIn = 3549;
        b.rampOut = -20;
        b.clampAll();
        check(b.off >= 1, "a double impulse keeps its second impulse ≥ 1 s");
        check(b.hz2 == Workout.HZ_MAX && b.str2 == 5, "second impulse Hz / strength clamped");
        check(b.rampIn == Workout.RAMP_MAX_MS && b.rampOut == 0, "ramps clamped to 0–3 s in 0.1 s steps");
        Workout.Block k = b.copy();
        check(k.dbl && k.hz2 == b.hz2 && k.str2 == b.str2 && k.rampIn == b.rampIn && k.rampOut == b.rampOut,
                "copy keeps the impulse settings");
        boolean anyDouble = false;
        for (Workout w : Workout.presets()) {
            for (Workout.Block x : w.blocks) {
                anyDouble |= x.dbl;
                check(!x.dbl || (x.hz2 >= 1 && x.str2 >= 5 && x.off >= 1), "preset double impulse valid: " + w.id);
                check(x.rampIn >= 0 && x.rampIn <= Workout.RAMP_MAX_MS, "preset ramp in range: " + w.id);
            }
        }
        check(anyDouble, "a passive program's active pause becomes a double impulse");
    }

    public static void main(String[] args) {
        impulseSettings();
        java.util.List<Workout> maps = new java.util.ArrayList<Workout>(Workout.presets());
        Workout w = new Workout();
        w.id = "drawn";
        w.blocks.add(Workout.forExercise("bodyweight-squat", "squat", false));
        w.blocks.add(Workout.rest());
        w.blocks.add(w.clean());
        Workout.Block hold = Workout.forExercise("plank", "core_static", true);
        w.blocks.add(hold);
        Workout.Block zeroOff = new Workout.Block(null, 10, 7, 350, 5, 0, 100);
        w.blocks.add(zeroOff);
        maps.add(w);
        for (Workout m : maps) {
            run(m, true);
            run(m, false);
        }
        // what the backend decides without asking: zones, goal, rest length
        for (Workout m : Workout.presets()) {
            if (m.isPassive()) {
                check(m.derivedFocus().isEmpty() && Workout.GOAL_PASSIVE.equals(m.suggestedGoal()), m.id + ": passive");
                continue;
            }
            check(!m.derivedFocus().isEmpty() && m.derivedFocus().size() <= 3, m.id + ": zones " + m.derivedFocus());

        }
        Workout glutes = null;
        for (Workout m : Workout.presets()) {
            if (m.id.equals("preset:glutes")) {
                glutes = m;
            }
        }
        check(glutes != null && glutes.derivedFocus().get(0).equals("glutes"), "glutes map trains glutes first: "
                + (glutes != null ? glutes.derivedFocus() : null));
        Workout jumps = new Workout();
        jumps.blocks.add(Workout.forExercise("jumping-jack", "cardio", false));
        jumps.blocks.add(Workout.forExercise("jump-squat", "plyo", false));
        jumps.blocks.add(Workout.forExercise("goblet-squat", "squat", false));
        check(Workout.GOAL_FAT.equals(jumps.suggestedGoal()), "mostly jumps → fat loss");
        Workout strong = new Workout();
        strong.blocks.add(Workout.forExercise("goblet-squat", "squat", false));
        strong.blocks.add(Workout.forExercise("glute-bridge", "glute", false));
        check(Workout.GOAL_TONE.equals(strong.suggestedGoal()), "strength moves → toning");
        Workout.Block set = Workout.forExercise("bodyweight-squat", "squat", false);
        int r = Workout.restAfter(set).reps;
        check(r >= 20 && r <= 60 && r % 5 == 0, "rest after a set " + r + " s for " + set.seconds() + " s");
        System.out.println((fails == 0 ? "OK" : "FAIL") + " — maps: " + maps.size() + " × 2 runs, " + checks + " checks, "
                + fails + " failures");
        if (fails > 0) {
            System.exit(1);
        }
    }

    /** hook = the device reports every impulse; else only time moves the map. */
    static void run(Workout m, boolean hook) {
        MapClock c = new MapClock(m);
        double t = 0;
        double nextCycle = 0;
        int[] cyclesIn = new int[m.blocks.size()];
        double[] secsIn = new double[m.blocks.size()];
        double lastPos = -1;
        int guard = 0;
        while (!c.isDone() && guard++ < 400000) {
            int i = c.getIndex();
            Workout.Block b = c.block();
            if (hook && !b.isRest() && t >= nextCycle) {
                c.onCycle();                                 // this impulse runs with the block the clock is on now
                Workout.Block now = c.block();
                if (now != null && !now.isRest()) {
                    cyclesIn[c.getIndex()]++;
                    nextCycle = t + now.on + Math.max(1, now.off);
                }
            }
            if (c.tick(0.25)) {
                nextCycle = t + 0.25;
            }
            if (i < secsIn.length) {
                secsIn[i] += 0.25;
            }
            t += 0.25;
            double p = c.position();
            check(p + 1e-6 >= lastPos || c.getIndex() != i, m.id + ": position moves forward");
            lastPos = p;
        }
        check(c.isDone(), m.id + (hook ? " hook" : " time") + ": the map ends");
        for (int i = 0; i < m.blocks.size(); i++) {
            Workout.Block b = m.blocks.get(i);
            if (b.isRest()) {
                check(Math.abs(secsIn[i] - b.reps) <= 0.5, m.id + ": rest " + i + " lasted " + secsIn[i] + " of " + b.reps);
            } else if (hook) {
                check(cyclesIn[i] == b.reps, m.id + ": block " + i + " got " + cyclesIn[i] + " impulses of " + b.reps);
            } else {
                check(Math.abs(secsIn[i] - (b.seconds() + 3)) <= 0.5, m.id + ": time fallback " + i + " " + secsIn[i]);
            }
        }
        if (hook) {
            double off = Math.abs(t - m.totalSeconds());
            check(off <= 1 + m.blocks.size() * 1.0, m.id + ": total " + t + " s vs map " + m.totalSeconds());
        }
    }
}
