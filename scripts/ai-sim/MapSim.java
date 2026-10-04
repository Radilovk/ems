import com.isaigu.gymapp.ai.AiModel;
import com.isaigu.gymapp.ai.AutoModel;
import com.isaigu.gymapp.ai.MapClock;
import com.isaigu.gymapp.ai.MapDynamics;
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

    static AutoModel.Step stepOf(Workout.Block b) {
        AutoModel.Step s = new AutoModel.Step(b.hz, b.pw, Math.max(1, b.on), Math.max(1, b.off));
        s.pauseHz = b.dbl ? b.hz2 : 0;
        s.pauseSigma = b.dbl ? b.str2 / 100.0 : 0;
        s.rampUpMs = b.rampIn;
        return s;
    }

    /** Owner (1.1.324): the smart impulse in every ready workout — an approach per set, glide, longer rests. */
    static void dynamics() {
        java.util.Set<String> names = new java.util.HashSet<String>();
        int sets = 0, falling = 0, extended = 0;
        for (Workout m : Workout.presets()) {
            if (m.isPassive()) {
                continue;
            }
            MapDynamics d = new MapDynamics(AiModel.Fitness.MID, 8, 35, 185);
            double t = 0;
            String prev = null;
            for (Workout.Block b : m.blocks) {
                if (b.isRest()) {
                    int need = d.restS(b.reps);
                    check(need >= b.reps && need <= Math.max(b.reps, MapDynamics.REST_MAX_S), m.id + ": rest " + need);
                    extended += need > b.reps ? 1 : 0;
                    d.advance(need, false, false, 0, 0, 0, 0);
                    t += need;
                    continue;
                }
                AutoModel.Step drawn = stepOf(b);
                String pat = b.pat != null ? b.pat : b.ex != null ? Workout.patternOf(b.ex) : null;
                int mv = com.isaigu.gymapp.ai.AutoDynamics.move(pat, b.hold);
                String nm = b.hasExercise() ? d.startSet(drawn, mv, b.lock, t / Math.max(1, m.totalSeconds()), -1) : "";
                if (!b.hasExercise()) {
                    d.startPlain(drawn, b.lock);
                }
                if (nm.length() > 0) {
                    names.add(nm);
                    check(!nm.equals(prev) || nm.equals("Както е нарисуван"), m.id + ": not the same approach twice");
                    prev = nm;
                    sets++;
                }
                int first = -1, last = -1;
                for (int r = 0; r < b.reps; r++) {
                    AutoModel.Step s = d.cycle(drawn, true);
                    if (first < 0) {
                        first = s.hz;
                    }
                    last = s.hz;
                    check(mv != com.isaigu.gymapp.ai.AutoDynamics.MOVE_CARDIO || s.hz < 70,
                            m.id + ": a cardio / jump exercise never gets strength (" + s.hz + ")");
                    check((mv != com.isaigu.gymapp.ai.AutoDynamics.MOVE_STRETCH && b.hz >= 20) || s.hz == b.hz,
                            m.id + ": stretching / twitches keep the drawn impulse");
                    check(!b.lock || (s.hz == b.hz && s.offS == Math.max(1, b.off)), m.id + ": 🔒 exactly as drawn");
                    check(s.pwUs >= drawn.pwUs, m.id + ": depth never below the drawn");
                    d.advance(s.onS, true, true, s.hz, s.pauseHz, s.pauseSigma, b.rel / 100.0);
                    d.advance(Math.max(1, s.offS), true, false, s.hz, s.pauseHz, s.pauseSigma, b.rel / 100.0);
                    t += s.onS + Math.max(1, s.offS);
                }
                if (b.reps > 3 && first >= 50 && last < first) {
                    falling++;
                }
            }
        }
        check(names.size() >= 4, "dynamics: the ready workouts use ≥ 4 approaches (" + names + ")");
        check(falling >= sets / 3, "dynamics: the frequency falls inside the sets (" + falling + " / " + sets + ")");
        // a tired muscle → a drawn short rest is extended
        MapDynamics d = new MapDynamics(AiModel.Fitness.LOW, 8, 35, 185);
        for (int i = 0; i < 12; i++) {
            d.advance(6, true, true, 100, 0, 0, 1);
            d.advance(2, true, false, 100, 0, 0, 1);
        }
        check(d.restS(10) > 10, "dynamics: tired → the drawn 10 s rest is longer (" + d.restS(10) + ")");
        check(new MapDynamics(AiModel.Fitness.MID, 8, 35, 185).restS(30) == 30, "dynamics: fresh → the drawn rest");
    }

    /**
     * Every exercise of the library (also the ones added later, branding/exercises/library.json): its movement is
     * classified, and its approaches fit it (1.1.326).
     */
    static void library() {
        String root = System.getProperty("xems.root", ".");
        String txt;
        try {
            txt = new String(java.nio.file.Files.readAllBytes(java.nio.file.Paths.get(root,
                    "branding/exercises/library.json")), "UTF-8");
        } catch (Exception e) {
            check(false, "library.json readable: " + e);
            return;
        }
        java.util.regex.Pattern typeP = java.util.regex.Pattern.compile("\"type\":\"([^\"]*)\"");
        java.util.regex.Pattern patP = java.util.regex.Pattern.compile("\"pat\":\"([^\"]*)\"");
        String[] parts = txt.split("\\{\"id\":\"");
        int n = 0;
        for (int k = 1; k < parts.length; k++) {
            String chunk = parts[k];
            String id = chunk.substring(0, chunk.indexOf('"'));
            java.util.regex.Matcher tm = typeP.matcher(chunk);
            java.util.regex.Matcher pm = patP.matcher(chunk);
            String type = tm.find() ? tm.group(1) : "";
            String pat = pm.find() ? pm.group(1) : "";
            boolean hold = "duration".equals(type);
            int mv = com.isaigu.gymapp.ai.AutoDynamics.move(pat, hold);
            n++;
            check(mv != com.isaigu.gymapp.ai.AutoDynamics.MOVE_UNKNOWN, id + ": its movement '" + pat
                    + "' is classified (AutoDynamics.move / STRENGTH_PATS / isSmall)");
            Workout.Block b = Workout.forExercise(id, pat, hold);
            AutoModel.Step drawn = stepOf(b);
            for (int age : new int[] {35, 66}) {
                for (int sessions : new int[] {0, 8}) {
                    com.isaigu.gymapp.ai.AutoDynamics.Approach[] l =
                            com.isaigu.gymapp.ai.AutoDynamics.forMap(drawn, mv, sessions, age);
                    String at = id + " (" + pat + ") age " + age + " N" + sessions;
                    if (mv == com.isaigu.gymapp.ai.AutoDynamics.MOVE_STRETCH) {
                        check(l == null, at + ": stretching stays as drawn");
                        continue;
                    }
                    for (int i = 1; l != null && i < l.length; i++) {
                        check(mv != com.isaigu.gymapp.ai.AutoDynamics.MOVE_CARDIO || l[i].hz < 70, at + ": cardio — no strength");
                        check(mv != com.isaigu.gymapp.ai.AutoDynamics.MOVE_HOLD || l[i].hz < 95, at + ": hold — no 100 Hz");
                        check(mv != com.isaigu.gymapp.ai.AutoDynamics.MOVE_SMALL || !"pure".equals(l[i].id), at + ": small — no pure strength");
                        check(age < 60 || l[i].hz <= 85, at + ": 60+ — nothing over 85 Hz");
                        check(sessions >= 3 || l[i].hz < 95, at + ": first trainings — no 100 Hz");
                    }
                }
            }
            // 🔒: exactly as drawn
            MapDynamics d = new MapDynamics(AiModel.Fitness.MID, 8, 35, 185);
            d.startSet(drawn, mv, true, 0.5, -1);
            AutoModel.Step s = d.cycle(drawn, true);
            check(s.hz == drawn.hz && s.onS == drawn.onS && s.offS == drawn.offS && s.pwUs == drawn.pwUs, id + ": 🔒 as drawn");
        }
        check(n >= 300, "library: every exercise checked (" + n + ")");
    }

    public static void main(String[] args) {
        impulseSettings();
        dynamics();
        library();
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
