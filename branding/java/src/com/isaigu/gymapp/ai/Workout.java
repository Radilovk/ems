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
            return b;
        }

        /** Keep every value in range (after editing). */
        public void clampAll() {
            hz = clamp(hz, HZ_MIN, HZ_MAX);
            pw = clamp(pw, PW_MIN, PW_MAX);
            on = clamp(on, 1, ON_MAX);
            off = clamp(off, 0, OFF_MAX);
            rel = clamp(rel, 0, 100);
            reps = isRest() ? clamp(reps, REST_MIN_S, REST_MAX_S) : clamp(reps, REPS_MIN, REPS_MAX);
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
        String p = pat != null ? pat : "";
        if (hold || "core_static".equals(p)) {
            return new Block(ex, 5, 70, 300, 6, 4, 100);
        }
        if ("cardio".equals(p) || "plyo".equals(p)) {
            return new Block(ex, 8, 40, 300, 3, 3, 85);
        }
        if ("stretch".equals(p)) {
            return new Block(ex, 6, 10, 250, 6, 2, 60);
        }
        if (isSmall(p)) {
            return new Block(ex, 8, 85, 300, 4, 4, 100);
        }
        return new Block(ex, 8, 85, 350, 4, 4, 100);
    }

    static boolean isSmall(String p) {
        return "biceps".equals(p) || "triceps".equals(p) || "lat_raise".equals(p) || "rear_delt".equals(p)
                || "front_raise".equals(p) || "fly".equals(p) || "shrug".equals(p) || "forearm".equals(p)
                || "calf".equals(p) || "abductor".equals(p) || "adductor".equals(p) || "knee_flex".equals(p)
                || "knee_ext".equals(p) || "pullover".equals(p) || "core_flex".equals(p) || "core_rot".equals(p)
                || "core_hip".equals(p) || "back_ext".equals(p);
    }

    /** A rest between sets: no current, 30 s. */
    public static Block rest() {
        return new Block(null, 30, 85, 350, 4, 4, 0);
    }

    /** A clean block: active programs — strength impulse; passive — a relaxing low-frequency one. */
    public Block clean() {
        return isPassive() ? new Block(null, 30, 7, 350, 5, 1, 100) : new Block(null, 8, 85, 350, 4, 4, 100);
    }

    /** Built-in exercise pattern (null for library-only ones; the UI passes the library's). */
    static String patternOf(String ex) {
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
            if (AutoCatalog.GLUTES_LEGS.equals(id)) {
                w.focus.add("glutes");
            } else if (AutoCatalog.CORE.equals(id)) {
                w.focus.add("abs");
            } else if (AutoCatalog.BACK_ACTIVE.equals(id)) {
                w.focus.add("back");
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
                for (AutoModel.Phase ph : plan.phases) {
                    int n = Math.max(1, ph.steps.size());
                    for (AutoModel.Step s : ph.steps) {
                        int cyc = Math.max(1, s.onS + s.offS);
                        Block b = new Block(null, Math.max(REPS_MIN, ph.durationS / n / cyc), s.hz, s.pwUs,
                                Math.max(1, s.onS), s.offS, (int) Math.round(Math.max(0.3, Math.min(1.0, s.sigma)) * 100));
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
