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

    public static void main(String[] args) {
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
                boolean changed = c.onCycle();
                if (!changed) {
                    cyclesIn[i]++;
                }
                nextCycle = t + (changed || c.block() == null ? 0 : b.on + Math.max(1, b.off));
                if (changed) {
                    nextCycle = t;                           // the new block's first impulse is this cycle
                    continue;
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
