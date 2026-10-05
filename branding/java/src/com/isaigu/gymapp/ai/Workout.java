package com.isaigu.gymapp.ai;

import java.util.ArrayList;
import java.util.List;

/**
 * A workout is an impulse map: a line of blocks. For active workouts a block is one set of an exercise with its own
 * impulse (Hz, µs, impulse / pause seconds, strength share) and length in repetitions (one impulse = one repetition);
 * a rest block is a pause (no current, or a light active pause); a block without an exercise is plain stimulation
 * (the passive procedures are only those). The map is drawn as a timeline (ImpulseMapView): colour = frequency,
 * height = pulse width, width = time.
 * <ul>
 *   <li><b>By the map</b> (MapRunner): every block exactly as drawn — the trainer holds the strength.</li>
 *   <li><b>With AI</b> (AiExercises.forWorkout): the exercise blocks in order; the AI keeps strength, rests and the
 *       impulse timing, the block's Hz / µs are used only when gentler than the AI's plan.</li>
 * </ul>
 * Pure Java (WorkoutStore does the JSON). docs/xems-workouts.md
 */
public final class Workout {
    public static final String GOAL_TONE = "tone";
    public static final String GOAL_FAT = "fat";
    /** A passive procedure: blocks without exercises, run by the map only. */
    public static final String GOAL_PASSIVE = "passive";

    public static final int REPS_MIN = 3;
    public static final int REPS_MAX = 40;
    public static final int REST_MIN_S = 10;
    public static final int REST_MAX_S = 180;
    public static final int HZ_MIN = 1;
    public static final int HZ_MAX = 120;
    public static final int PW_MIN = 100;
    public static final int PW_MAX = 400;
    public static final int ON_MAX = 10;
    public static final int OFF_MAX = 10;
    /** The suit's ramp range (ms, ProgramDataBean.inputRamp / outputRamp). */
    public static final int RAMP_MAX_MS = 3000;
    public static final int RAMP_STEP_MS = 100;
    /** With the AI's rests one repetition takes ≈ 24 s of session time (AiExSim measures it); warm-up + cool-down
     *  ≈ 6 min. */
    static final int REP_S = 24;
    static final int FRAME_S = 6 * 60;

    /** One block of the map. */
    public static final class Block {
        /** Exercise id; null = plain stimulation or rest. */
        public String ex;
        /** Repetitions = impulse cycles; for a rest block: seconds. */
        public int reps;
        public int hz;
        public int pw;
        public int on;
        public int off;
        /** Strength share of the trainer's strength, %; 0 = rest (no current). */
        public int rel;
        /** Double impulse: the OFF time carries a second impulse (the suit's active pause) instead of silence. */
        public boolean dbl;
        /** The second impulse: its frequency and its strength as % of the first (the suit has one pulse width). */
        public int hz2 = 7;
        public int str2 = 45;
        /** Ramp of every impulse, ms: rising at its start, falling at its end (0 = sharp). */
        public int rampIn = 500;
        public int rampOut = 500;
        /** The exercise's movement (library pattern: squat, cardio, stretch…; null = look it up) and hold
         *  (plank, wall sit) — what the smart impulse picks its approaches by (owner, 1.1.326). */
        public String pat;
        public boolean hold;
        /** 🔒 exactly as drawn: the smart impulse leaves this block alone (owner, 1.1.326). */
        public boolean lock;

        public Block() {}

        public Block(String ex, int reps, int hz, int pw, int on, int off, int rel) {
            this.ex = ex;
            this.hz = clamp(hz, HZ_MIN, HZ_MAX);
            this.pw = clamp(pw, PW_MIN, PW_MAX);
            this.on = clamp(on, 1, ON_MAX);
            this.off = clamp(off, 0, OFF_MAX);
            this.rel = clamp(rel, 0, 100);
            this.reps = isRest() ? clamp(reps, REST_MIN_S, REST_MAX_S) : clamp(reps, REPS_MIN, REPS_MAX);
        }

        public boolean isRest() {
            return rel <= 0;
        }

        public boolean hasExercise() {
            return ex != null && !isRest();
        }

        /** Seconds on the timeline. */
        public int seconds() {
            return isRest() ? reps : reps * (on + Math.max(off, 1));      // the device pauses ≥ 1 s
        }

        public Block copy() {
            Block b = new Block();
            b.ex = ex;
            b.reps = reps;
            b.hz = hz;
            b.pw = pw;
            b.on = on;
            b.off = off;
            b.rel = rel;
            b.dbl = dbl;
            b.hz2 = hz2;
            b.str2 = str2;
            b.rampIn = rampIn;
            b.rampOut = rampOut;
            b.pat = pat;
            b.hold = hold;
            b.lock = lock;
            return b;
        }

        /** The second impulse's time, s (its OFF part; the device keeps ≥ 1 s). */
        public int off2() {
            return Math.max(1, off);
        }

        /** Keep every value in range (after editing). */
        public void clampAll() {
            hz = clamp(hz, HZ_MIN, HZ_MAX);
            pw = clamp(pw, PW_MIN, PW_MAX);
            on = clamp(on, 1, ON_MAX);
            off = clamp(off, 0, OFF_MAX);
            rel = clamp(rel, 0, 100);
            reps = isRest() ? clamp(reps, REST_MIN_S, REST_MAX_S) : clamp(reps, REPS_MIN, REPS_MAX);
            hz2 = clamp(hz2, HZ_MIN, SafeLimits.PAUSE_HZ_MAX);     // the 2nd impulse is for relaxing: ≤ 10 Hz
            str2 = clamp(str2, 5, 100);
            rampIn = clamp(Math.round(rampIn / (float) RAMP_STEP_MS) * RAMP_STEP_MS, 0, RAMP_MAX_MS);
            rampOut = clamp(Math.round(rampOut / (float) RAMP_STEP_MS) * RAMP_STEP_MS, 0, RAMP_MAX_MS);
            if (dbl && off < 1) {
                off = 1;                                       // a second impulse needs its own time
            }
        }
    }

    public String id;
    public String name = "";
    public String goal = GOAL_TONE;
    /** Focus zones (the client form's keys: abs, glutes, legs, arms, back, chest). */
    public final List<String> focus = new ArrayList<String>();
    public final List<Block> blocks = new ArrayList<Block>();
    /** A ready program: shown in the list, not editable, copied to change. */
    public boolean preset;
    /** Who a ready program is for: "m" men, "f" women, null everyone (AutoCatalog maleOnly / femaleOnly). */
    public String sex;
    /**
     * Classifiers for the automatic mode's filter (owner, 1.1.336), marked when the map is made: the goals it serves
     * ({@link AutoModel.Goal} names: TONE, SLIM, HEALTH — empty = from its exercises) and the difficulty 1 easy /
     * 2 medium / 3 hard (0 = not marked, counts as medium). Active or passive is the map itself ({@link #isPassive});
     * who it is for is {@link #sex}; the trained zones are {@link #focus} / {@link #derivedFocus}.
     */
    public final java.util.Set<String> goals = new java.util.LinkedHashSet<String>();
    public int level;
    public long updatedAt;

    static int clamp(int v, int lo, int hi) {
        return Math.max(lo, Math.min(hi, v));
    }

    public boolean isPassive() {
        return GOAL_PASSIVE.equals(goal);
    }

    public Workout copy(String newId, String newName) {
        Workout w = new Workout();
        w.id = newId;
        w.name = newName;
        w.goal = goal;
        w.sex = sex;
        w.level = level;
        w.goals.addAll(goals);
        w.focus.addAll(focus);
        for (Block b : blocks) {
            w.blocks.add(b.copy());
        }
        w.updatedAt = System.currentTimeMillis();
        return w;
    }

    // ------------------------------------------------------------------ starting parameters

    /**
     * A new exercise block with the starting impulse for its movement (design values, edited freely):
     * big-muscle strength 85 Hz / 350 µs / 4+4 s; small muscles 85 Hz / 300 µs; holds 70 Hz / 300 µs / 6+4 s;
     * cardio and jumps 40 Hz / 300 µs / 3+3 s at 85 %; stretching 10 Hz / 250 µs / 6+2 s at 60 %.
     */
    public static Block forExercise(String ex, String pat, boolean hold) {
        return forExercise(ex, pat, hold, null);
    }

    /** {@link #forExercise} in the admin's picker group ({@code zone}, null = the library's): the group decides
     *  the movement (1.1.327, {@link AutoDynamics#patIn}); the block keeps the library pattern. */
    public static Block forExercise(String ex, String pat, boolean hold, String zone) {
        int m = AutoDynamics.move(pat, hold, zone);
        Block b = forExercise0(ex, m, AutoDynamics.patIn(pat, zone));
        b.pat = pat;
        b.hold = m == AutoDynamics.MOVE_HOLD;
        return b;
    }

    private static Block forExercise0(String ex, int m, String pat) {
        String p = pat != null ? pat : "";
        if (m == AutoDynamics.MOVE_HOLD) {
            return new Block(ex, 5, 70, 300, 6, 4, 100);
        }
        if (m == AutoDynamics.MOVE_CARDIO) {
            Block b = new Block(ex, 8, 40, 300, 3, 3, 85);
            b.rampIn = 300;                                    // quick moves: a short rise
            b.rampOut = 300;
            return b;
        }
        if (m == AutoDynamics.MOVE_STRETCH) {
            Block b = new Block(ex, 6, 10, 250, 6, 2, 60);
            b.rampIn = 1000;                                   // stretching: a slow rise
            b.rampOut = 1000;
            return b;
        }
        if (isSmall(p)) {
            return new Block(ex, 8, 85, 300, 4, 4, 100);
        }
        return new Block(ex, 8, 85, 350, 4, 4, 100);
    }

    public static boolean isSmall(String p) {
        return AutoDynamics.isSmall(p);
    }

    /** A rest between sets: no current, 30 s. */
    public static Block rest() {
        return new Block(null, 30, 85, 350, 4, 4, 0);
    }

    /** The rest after a set: about ¾ of the set's time (work : rest ≈ 4 : 3), 20–60 s in 5 s steps. */
    public static Block restAfter(Block set) {
        Block r = rest();
        if (set != null && !set.isRest()) {
            r.reps = clamp(Math.round(set.seconds() * 0.75f / 5f) * 5, 20, 60);
        }
        return r;
    }

    /** Suit channel → the client form's focus zone (chest, abs, legs, calves, arms, shoulders, back, lower back,
     *  glutes, back thigh). */
    private static final String[] ZONE_OF_CHANNEL = {"chest", "abs", "legs", "legs", "arms", "arms", "back", "back",
            "glutes", "legs"};

    /**
     * What the workout trains, from its exercises (their muscles × repetitions): the zones with at least a quarter
     * of the top one's work, at most three — used as the AI's focus, the name and the card; nobody picks them.
     */
    public List<String> derivedFocus() {
        java.util.Map<String, Double> load = new java.util.LinkedHashMap<String, Double>();
        for (Block b : blocks) {
            int[] m = b.hasExercise() ? AutoTemplates.muscles(AutoTemplates.index(b.ex)) : null;
            if (m == null) {
                continue;
            }
            for (int ch = 0; ch < m.length && ch < ZONE_OF_CHANNEL.length; ch++) {
                String z = ZONE_OF_CHANNEL[ch];
                Double v = load.get(z);
                load.put(z, (v != null ? v : 0) + m[ch] * (double) b.reps);
            }
        }
        double top = 0;
        for (double v : load.values()) {
            top = Math.max(top, v);
        }
        List<String> out = new ArrayList<String>();
        while (out.size() < 3 && top > 0) {
            String best = null;
            double bv = 0;
            for (java.util.Map.Entry<String, Double> e : load.entrySet()) {
                if (!out.contains(e.getKey()) && e.getValue() > bv) {
                    best = e.getKey();
                    bv = e.getValue();
                }
            }
            if (best == null || bv < 0.25 * top) {
                break;
            }
            out.add(best);
        }
        return out;
    }

    /** Mostly cardio / jumps (by repetitions) → fat loss; else toning. Passive stays passive. */
    public String suggestedGoal() {
        if (isPassive()) {
            return GOAL_PASSIVE;
        }
        int cardio = 0;
        int all = 0;
        for (Block b : blocks) {
            if (!b.hasExercise()) {
                continue;
            }
            all += b.reps;
            String p = patternOf(b.ex);
            if ("cardio".equals(p) || "plyo".equals(p) || b.hz <= 50) {
                cardio += b.reps;
            }
        }
        return all > 0 && cardio * 2 > all ? GOAL_FAT : GOAL_TONE;
    }

    /** The goals this map serves: the marked ones; unmarked — an exercise map by its exercises (cardio → slimming,
     *  else toning), a procedure fits every goal. */
    public java.util.Set<AutoModel.Goal> effectiveGoals() {
        java.util.Set<AutoModel.Goal> out = new java.util.LinkedHashSet<AutoModel.Goal>();
        for (String g : goals) {
            try {
                out.add(AutoModel.Goal.valueOf(g));
            } catch (IllegalArgumentException ignored) {
            }
        }
        if (out.isEmpty()) {
            if (isPassive()) {
                out.addAll(java.util.Arrays.asList(AutoModel.Goal.values()));
            } else {
                out.add(GOAL_FAT.equals(suggestedGoal()) ? AutoModel.Goal.SLIM : AutoModel.Goal.TONE);
            }
        }
        return out;
    }

    /** 1 easy · 2 medium · 3 hard (unmarked = medium). */
    public int effectiveLevel() {
        return level >= 1 && level <= 3 ? level : 2;
    }

    /** Shown in the automatic mode's menu for this goal and kind (active / passive). */
    public boolean fits(AutoModel.Goal g, AutoModel.Kind kind) {
        return isPassive() == (kind == AutoModel.Kind.PASSIVE) && effectiveGoals().contains(g);
    }

    /** A clean block: active programs — strength impulse; passive — a relaxing low-frequency one. */
    public Block clean() {
        return isPassive() ? new Block(null, 30, 7, 350, 5, 1, 100) : new Block(null, 8, 85, 350, 4, 4, 100);
    }

    /** Built-in exercise pattern (null for library-only ones; the UI passes the library's). */
    public static String patternOf(String ex) {
        int i = AutoTemplates.ex(ex);
        return i >= 0 ? AutoTemplateData.PAT[i] : null;
    }

    // ------------------------------------------------------------------ the timeline

    public int totalSeconds() {
        int s = 0;
        for (Block b : blocks) {
            s += b.seconds();
        }
        return s;
    }

    /** Where a block starts on the timeline (s). */
    public int startOf(int index) {
        int s = 0;
        for (int i = 0; i < index && i < blocks.size(); i++) {
            s += blocks.get(i).seconds();
        }
        return s;
    }

    /** The block at second t of the map (−1 after the end). */
    public int blockAt(double t) {
        double s = 0;
        for (int i = 0; i < blocks.size(); i++) {
            s += blocks.get(i).seconds();
            if (t < s) {
                return i;
            }
        }
        return -1;
    }

    /** Exercise blocks (the sets). */
    public int exerciseBlocks() {
        int n = 0;
        for (Block b : blocks) {
            if (b.hasExercise()) {
                n++;
            }
        }
        return n;
    }

    public int distinctExercises() {
        List<String> seen = new ArrayList<String>();
        for (Block b : blocks) {
            if (b.hasExercise() && !seen.contains(b.ex)) {
                seen.add(b.ex);
            }
        }
        return seen.size();
    }

    /**
     * The sets for the AI, in map order: {block index, set number of this exercise, sets of it in the map}. Rest
     * and plain-stimulation blocks are left out — the AI rests by itself.
     */
    public int[][] sequence() {
        List<int[]> out = new ArrayList<int[]>();
        for (int i = 0; i < blocks.size(); i++) {
            Block b = blocks.get(i);
            if (!b.hasExercise()) {
                continue;
            }
            int n = 0;
            int total = 0;
            for (int k = 0; k < blocks.size(); k++) {
                if (blocks.get(k).hasExercise() && b.ex.equals(blocks.get(k).ex)) {
                    total++;
                    if (k <= i) {
                        n++;
                    }
                }
            }
            out.add(new int[] {i, n, total});
        }
        return out.toArray(new int[0][]);
    }

    /** Minutes as drawn (by the map). */
    public int mapMinutes() {
        return Math.max(1, (int) Math.round(totalSeconds() / 60.0));
    }

    /** About how long it takes with the AI (minutes): its rests stretch the sets. */
    public int aiMinutes() {
        int s = FRAME_S;
        for (Block b : blocks) {
            if (b.hasExercise()) {
                s += b.reps * REP_S;
            }
        }
        return Math.max(1, (int) Math.round(s / 60.0));
    }

    /** The minutes to show: the map's for passive procedures, the AI's otherwise. */
    public int minutes() {
        return isPassive() ? mapMinutes() : aiMinutes();
    }

    /** The AI goal this workout runs with (passive procedures do not run with the AI). */
    public AiModel.Goal aiGoal() {
        return GOAL_FAT.equals(goal) ? AiModel.Goal.FAT : AiModel.Goal.TONE;
    }

    public int sessionMinutes() {
        return AiPlanner.defaultSeconds(aiGoal()) / 60;
    }

    /** Longer than one AI session: the sets that fit are done. */
    public boolean longerThanSession() {
        return !isPassive() && aiMinutes() > sessionMinutes() + 2;
    }

    /** Move a block (drag on the line). */
    public void move(int from, int to) {
        if (from < 0 || from >= blocks.size() || to < 0 || to >= blocks.size() || from == to) {
            return;
        }
        Block b = blocks.remove(from);
        blocks.add(to, b);
    }

    // ------------------------------------------------------------------ the ready programs

    /**
     * The automatic mode's programs as ready maps. Active: the template stations (level 2), one set each with a
     * 30 s rest between, repetitions sized so the round fits one AI session. Passive: the automatic passive plans
     * for a standard client, phase by phase, their steps as blocks.
     */
    static String audience(AutoCatalog.Program p) {
        return p == null ? null : p.maleOnly ? "m" : p.femaleOnly ? "f" : null;
    }

    /** A ready map carries its program's classifiers: the goals whose menu lists it, and its difficulty. */
    private static void classify(Workout w, AutoCatalog.Program prog) {
        if (prog == null) {
            return;
        }
        w.level = prog.level;
        for (AutoModel.Goal g : AutoModel.Goal.values()) {
            if (AutoCatalog.menu(g, prog.kind).contains(prog)) {
                w.goals.add(g.name());
            }
        }
    }

    public static List<Workout> presets() {
        List<Workout> out = new ArrayList<Workout>();
        for (int p = 0; p < AutoTemplateData.PROGRAMS.length; p++) {
            String id = AutoTemplateData.PROGRAMS[p];
            String[] st = AutoTemplateData.STATIONS[p][1] != null ? AutoTemplateData.STATIONS[p][1]
                    : AutoTemplateData.STATIONS[p][2];
            if (st == null) {
                continue;
            }
            Workout w = new Workout();
            w.id = "preset:" + id;
            AutoCatalog.Program prog = AutoCatalog.get(id);
            w.name = prog != null ? prog.name() : id;
            w.goal = AutoCatalog.CARDIO.equals(id) ? GOAL_FAT : GOAL_TONE;
            w.sex = audience(prog);
            classify(w, prog);
            if (AutoCatalog.GLUTES_LEGS.equals(id)) {
                w.focus.add("glutes");
            } else if (AutoCatalog.CORE.equals(id)) {
                w.focus.add("abs");
            } else if (AutoCatalog.BACK_ACTIVE.equals(id)) {
                w.focus.add("back");
            } else if (AutoCatalog.UPPER.equals(id)) {
                w.focus.add("chest");
                w.focus.add("arms");
            }
            int budget = (w.sessionMinutes() * 60 - FRAME_S) / REP_S;          // repetitions one session holds
            int reps = clamp(budget / st.length, REPS_MIN, 8);
            for (int k = 0; k < st.length; k++) {
                String ex = st[k];
                boolean hold = "plank".equals(ex) || "side-plank".equals(ex) || AutoTemplates.MACHINE.equals(ex);
                Block b = forExercise(ex, patternOf(ex), hold);
                b.reps = hold ? Math.max(REPS_MIN, reps - 2) : reps;
                if (k > 0) {
                    w.blocks.add(rest());
                }
                w.blocks.add(b);
            }
            w.preset = true;
            out.add(w);
        }
        for (AutoCatalog.Program prog : AutoCatalog.all()) {
            if (prog.isActive()) {
                continue;
            }
            try {
                AutoModel.Input in = new AutoModel.Input();
                in.sex = prog.femaleOnly ? AiModel.Sex.FEMALE : in.sex;
                in.kind = prog.kind;
                in.programId = prog.id;
                in.goal = AutoModel.Goal.values()[0];
                for (AutoModel.Goal g : AutoModel.Goal.values()) {
                    if (!AutoCatalog.menu(g, prog.kind).isEmpty() && AutoCatalog.menu(g, prog.kind).contains(prog)) {
                        in.goal = g;
                        break;
                    }
                }
                AutoModel.Plan plan = AutoPlanner.build(in, 68);
                if (plan == null || plan.program == null || !prog.id.equals(plan.program.id)) {
                    continue;
                }
                Workout w = new Workout();
                w.id = "preset:" + prog.id;
                w.name = prog.name();
                w.goal = GOAL_PASSIVE;
                w.sex = audience(prog);
                classify(w, prog);
                for (AutoModel.Phase ph : plan.phases) {
                    int n = Math.max(1, ph.steps.size());
                    for (AutoModel.Step s : ph.steps) {
                        int cyc = Math.max(1, s.onS + s.offS);
                        Block b = new Block(null, Math.max(REPS_MIN, ph.durationS / n / cyc), s.hz, s.pwUs,
                                Math.max(1, s.onS), s.offS, (int) Math.round(Math.max(0.3, Math.min(1.0, s.sigma)) * 100));
                        b.dbl = s.pauseHz > 0 && s.pauseSigma > 0;     // the program's active pause
                        if (b.dbl) {
                            b.hz2 = s.pauseHz;
                            b.str2 = (int) Math.round(s.pauseSigma * 100);
                        }
                        if (s.rampUpMs > 0) {
                            b.rampIn = s.rampUpMs;
                        }
                        if (s.rampDownMs > 0) {
                            b.rampOut = s.rampDownMs;
                        }
                        b.clampAll();
                        w.blocks.add(b);
                    }
                }
                if (!w.blocks.isEmpty()) {
                    w.preset = true;
                    out.add(w);
                }
            } catch (RuntimeException ignored) {
                // a passive program the standard client cannot have (postpartum for a man…) — not offered
            }
        }
        return out;
    }
}
