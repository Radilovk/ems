package com.isaigu.gymapp.ai;

import java.util.ArrayList;
import java.util.List;

/**
 * A workout: exercises in order, each with sets and repetitions, tied to a goal (and optionally focus zones).
 * Built in the "Тренировки" screen or one of the ready programs (presets, read-only; "copy" makes an editable one).
 * Run by the Smart Session: one repetition = one impulse; a set longer than the AI's work block (~4–6 impulses)
 * becomes a rest-pause set (short rest, same exercise, until its repetitions are done); the AI's rest separates the
 * sets. Fatigue and the pulse decide every rest, a set never makes a block longer. Pure Java (WorkoutStore does the JSON).
 * docs/xems-workouts.md
 */
public final class Workout {
    public static final String GOAL_TONE = "tone";
    public static final String GOAL_FAT = "fat";
    public static final int SETS_MIN = 1;
    public static final int SETS_MAX = 8;
    public static final int REPS_MIN = 3;
    public static final int REPS_MAX = 30;
    /** With the AI's rests (work blocks of ~4–6 impulses, then rest until the muscle recovers) one repetition takes
     *  ≈ 24 s of session time (AiExSim measures it); warm-up + cool-down ≈ 6 min. */
    static final int REP_S = 24;
    static final int FRAME_S = 6 * 60;

    public static final class Item {
        public String ex;
        public int sets;
        public int reps;

        public Item(String ex, int sets, int reps) {
            this.ex = ex;
            this.sets = clamp(sets, SETS_MIN, SETS_MAX);
            this.reps = clamp(reps, REPS_MIN, REPS_MAX);
        }

        public Item copy() {
            return new Item(ex, sets, reps);
        }
    }

    public String id;
    public String name = "";
    public String goal = GOAL_TONE;
    /** Focus zones (the client form's keys: abs, glutes, legs, arms, back, chest). */
    public final List<String> focus = new ArrayList<String>();
    public final List<Item> items = new ArrayList<Item>();
    /** A ready program: shown in the list, not editable, copied to change. */
    public boolean preset;
    public long updatedAt;

    static int clamp(int v, int lo, int hi) {
        return Math.max(lo, Math.min(hi, v));
    }

    public Workout copy(String newId, String newName) {
        Workout w = new Workout();
        w.id = newId;
        w.name = newName;
        w.goal = goal;
        w.focus.addAll(focus);
        for (Item i : items) {
            w.items.add(i.copy());
        }
        w.updatedAt = System.currentTimeMillis();
        return w;
    }

    public int totalSets() {
        int n = 0;
        for (Item i : items) {
            n += i.sets;
        }
        return n;
    }

    /** About how long it takes with the AI (minutes, rounded). */
    public int minutes() {
        int s = FRAME_S;
        for (Item i : items) {
            s += i.sets * i.reps * REP_S;
        }
        return Math.max(1, (int) Math.round(s / 60.0));
    }

    /** One AI session's length for this goal (tone 20 min, fat loss 30 min). */
    public int sessionMinutes() {
        return AiPlanner.defaultSeconds(aiGoal()) / 60;
    }

    /** Longer than one AI session: the rounds that fit are done (every exercise at least once when round 1 fits). */
    public boolean longerThanSession() {
        return minutes() > sessionMinutes() + 2;
    }

    /** The AI goal this workout runs with. */
    public AiModel.Goal aiGoal() {
        return GOAL_FAT.equals(goal) ? AiModel.Goal.FAT : AiModel.Goal.TONE;
    }

    /**
     * The sets in running order, in rounds (a circuit, the usual EMS way): round 1 = set 1 of every exercise, round
     * 2 = set 2 of those with two or more, … — so each exercise comes early even when the session ends before the
     * last round. Set k of the session is sequence()[k] (item index, set number from 1).
     */
    public int[][] sequence() {
        List<int[]> out = new ArrayList<int[]>();
        int rounds = 0;
        for (Item i : items) {
            rounds = Math.max(rounds, i.sets);
        }
        for (int s = 1; s <= rounds; s++) {
            for (int i = 0; i < items.size(); i++) {
                if (items.get(i).sets >= s) {
                    out.add(new int[] {i, s});
                }
            }
        }
        return out.toArray(new int[0][]);
    }

    /** Move an exercise (drag in the editor). */
    public void move(int from, int to) {
        if (from < 0 || from >= items.size() || to < 0 || to >= items.size() || from == to) {
            return;
        }
        Item it = items.remove(from);
        items.add(to, it);
    }

    // ------------------------------------------------------------------ the ready programs

    /**
     * The template programs of the automatic mode as ready workouts (level 2 stations): one round, the repetitions
     * sized so the whole round fits one AI session (3–8 each; holds a little fewer).
     * Names come from the automatic catalog; cardio burns fat, the others tone.
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
            for (String ex : st) {
                boolean hold = "plank".equals(ex) || "side-plank".equals(ex) || AutoTemplates.MACHINE.equals(ex);
                w.items.add(new Item(ex, 1, hold ? Math.max(REPS_MIN, reps - 2) : reps));
            }
            w.preset = true;
            out.add(w);
        }
        return out;
    }
}
