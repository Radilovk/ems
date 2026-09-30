package com.isaigu.gymapp.ai;

import java.util.List;

/**
 * The exercises of a Smart Session (pure Java; the stations come from {@link AutoTemplates}).
 * <ul>
 *   <li>Fatigue-driven phases: one exercise per work block — the rest between blocks is where the client changes;
 *       the rest card already shows the next one.</li>
 *   <li>Continuous phases (warm-up, …): the stations split the phase time; read at the start of each cycle, so the
 *       exercise changes on a cycle boundary only.</li>
 *   <li>Tired (muscle fatigue ≥ 85 % of the limit, pulse above the corridor, or the client took strength down):
 *       the station goes to an easier exercise for the same muscle and stays there until the next station.</li>
 *   <li>The outcome (worked share, strength taken down, pulse ceiling) sets the next session's level.</li>
 * </ul>
 * With a workout (the "Тренировки" screen) the main part follows it instead, set by set, one impulse = one
 * repetition. The AI's fatigue model keeps a work block to ~4–6 impulses, so a longer set is a rest-pause set: when
 * the block ends before the repetitions are done, the short rest is followed by the same exercise until they are;
 * then the engine is told to rest ({@link AiEngine#endSet}) and the next set comes. Fatigue and the pulse still
 * decide every rest — a set never makes a block longer. After the last set the list starts again (round 2).
 * docs/xems-exercise-templates.md, docs/xems-workouts.md
 */
public final class AiExercises {
    public static final double TIRED_FATIGUE = 0.85;

    private final AutoTemplates.Script script;
    private String current;
    private String next;
    private int stationKey = -1;
    private boolean easier;
    private long cycleStartMs;
    private int onS = 4;
    private int offS = 4;
    private double minUser = 1;
    private boolean hrPause;
    /** The workout run (null: the template stations). */
    private Workout workout;
    private int[][] seq;
    private int setIndex = -1;
    private int repsDone;
    /** The set's repetitions are done; the next block starts the next set. */
    private boolean setComplete;
    private int blocksAtComplete;

    AiExercises(AutoTemplates.Script script) {
        this.script = script;
    }

    /** Null when the session has no exercises (passive goals). */
    public static AiExercises build(AiModel.SessionInput in, int heightCm, AiModel.Plan plan, int sessions,
            double hoursSinceActive, List<AutoTemplates.Outcome> past) {
        if (in == null || plan == null) {
            return null;
        }
        String prog = AutoTemplates.programForAi(in.goal, in.mode, in.age);
        if (prog == null) {
            return null;
        }
        AutoModel.Input a = new AutoModel.Input();
        a.programId = prog;
        a.sex = in.sex;
        a.age = in.age;
        a.weightKg = in.weightKg;
        a.heightCm = heightCm;
        a.fitness = in.fitness;
        a.sessions = sessions;
        a.hoursSinceActive = hoursSinceActive;
        a.focus = new java.util.HashSet<String>(in.focus);
        a.cond = new java.util.HashSet<String>(in.cond);
        a.extra.diastasis = in.cond.contains("diastasis");
        String[] ids = new String[plan.phases.size()];
        for (int i = 0; i < ids.length; i++) {
            ids[i] = plan.phases.get(i).id.name();
        }
        AutoTemplates.Script s = AutoTemplates.scriptFor(prog, a, ids, past);
        return s != null ? new AiExercises(s) : null;
    }

    /** The exercises of a workout, with the template's warm-up for this client (states rule out the same moves). */
    public static AiExercises forWorkout(Workout w, AiModel.SessionInput in, int heightCm, AiModel.Plan plan,
            int sessions, double hoursSinceActive) {
        if (w == null || w.items.isEmpty() || in == null || plan == null || in.mode != AiModel.Mode.ACTIVE) {
            return null;
        }
        AiExercises base = build(in, heightCm, plan, sessions, hoursSinceActive, null);
        AutoTemplates.Script t = base != null ? base.script : null;
        java.util.Set<String> avoid = t != null ? t.avoid : new java.util.HashSet<String>();
        List<String> main = new java.util.ArrayList<String>();
        Workout run = w.copy(w.id, w.name);
        for (Workout.Item it : run.items) {
            it.ex = AutoTemplates.safer(it.ex, avoid);        // the client's state rules it out: a safe swap
            if (!main.contains(it.ex)) {
                main.add(it.ex);
            }
        }
        String[][] ph = new String[plan.phases.size()][];
        for (int i = 0; i < ph.length; i++) {
            AiModel.PhaseId id = plan.phases.get(i).id;
            if (id == AiModel.PhaseId.WARMUP) {
                ph[i] = t != null && t.phase[i] != null ? t.phase[i]
                        : AutoTemplates.warmup(1, main, avoid).toArray(new String[0]);
            } else if (id == AiModel.PhaseId.MAIN || id == AiModel.PhaseId.METABOLIC) {
                ph[i] = main.toArray(new String[0]);
            }
        }
        AiExercises x = new AiExercises(new AutoTemplates.Script("workout", t != null ? t.level : 1, ph, avoid));
        x.workout = run;
        x.seq = run.sequence();
        return x;
    }

    public Workout getWorkout() {
        return workout;
    }

    /** Workout: the set now (item index, set number from 1), or null before the main part. */
    public int[] set() {
        return workout != null && setIndex >= 0 ? seq[setIndex % seq.length] : null;
    }

    /** Workout, in a rest: true = the set is done (the next one follows), false = a short rest inside the set. */
    public boolean isSetComplete() {
        return setComplete;
    }

    /** Workout: which set of the session this is (0-based, counts on past the end for round 2), −1 before. */
    public int getSetIndex() {
        return setIndex;
    }

    public int getRepsDone() {
        return repsDone;
    }

    public int getRepsTarget() {
        int[] s = set();
        return s != null ? workout.items.get(s[0]).reps : 0;
    }

    /** 1 for the first pass through the workout, 2 when it runs again. */
    public int getRound() {
        if (workout != null && setComplete && setIndex >= 0) {
            return setIndex / seq.length + 1;
        }
        return workout != null && setIndex >= 0 ? setIndex / seq.length + 1 : 1;
    }

    private static int blocksAll(AiEngine e) {
        int n = 0;
        for (AiEngine.BlockStat b : e.getBlocks()) {
            if (b.phase == AiModel.PhaseId.MAIN || b.phase == AiModel.PhaseId.METABOLIC) {
                n++;
            }
        }
        return n;
    }

    public AutoTemplates.Script getScript() {
        return script;
    }

    private String[] list(AiEngine e) {
        int i = e.getPhaseIndex();
        return i >= 0 && i < script.phase.length ? script.phase[i] : null;
    }

    private static int blocksIn(AiEngine e, AiModel.PhaseId id) {
        int n = 0;
        for (AiEngine.BlockStat b : e.getBlocks()) {
            if (b.phase == id) {
                n++;
            }
        }
        return n;
    }

    private static boolean blocky(AiModel.Phase ph) {
        return ph != null && ph.blockMode == AiModel.BlockMode.FATIGUE_DRIVEN;
    }

    static boolean tired(AiEngine e) {
        if (e.getFatigue() >= TIRED_FATIGUE * Math.max(1e-6, e.getFatigueMax())) {
            return true;
        }
        if (e.getUUser() < 0.999) {
            return true;
        }
        AiModel.Profile p = e.getProfile();
        double hr = e.getHrS();
        return p != null && p.hrAvailable && !p.safetyOnly && hr > 0 && p.xOf(hr) > p.xHi;
    }

    /** A device cycle starts: pick this cycle's exercise. */
    public void onCycle(long now, AiEngine e, AiEngine.CycleCmd c) {
        if (e == null || c == null || c.frac <= 0) {
            return;
        }
        cycleStartMs = now;
        onS = Math.max(1, c.onS);
        offS = Math.max(0, c.offS);
        String[] l = list(e);
        AiModel.Phase ph = e.phase();
        if (l == null || l.length == 0 || ph == null) {
            current = null;
            return;
        }
        if (workout != null && blocky(ph)) {
            if (setIndex < 0) {
                setIndex = 0;
                repsDone = 0;
            } else if (setComplete && blocksAll(e) > blocksAtComplete) {
                setIndex++;                                    // the rest after a done set is over: the next set
                repsDone = 0;
                setComplete = false;
            }
            int[] s = seq[setIndex % seq.length];
            String ex = workout.items.get(s[0]).ex;
            int key = 1_000_000 + setIndex;
            if (key != stationKey) {
                stationKey = key;
                easier = false;
            }
            if (tired(e)) {
                easier = true;
            }
            current = easier ? AutoTemplates.easier(ex, script.avoid) : ex;
            if (!setComplete) {
                repsDone++;                                   // this impulse is one repetition
                if (repsDone >= workout.items.get(s[0]).reps) {
                    setComplete = true;
                    blocksAtComplete = blocksAll(e);
                    e.endSet();                               // the next cycle rests
                }
            }
            return;
        }
        int k;
        if (blocky(ph)) {
            k = blocksIn(e, ph.id) % l.length;
        } else {
            AutoTemplates.At a = script.at(e.getPhaseIndex(), e.getPhaseElapsedS(), ph.durationS);
            k = a != null ? a.index : 0;
        }
        int key = e.getPhaseIndex() * 1000 + k + (blocky(ph) ? 100 * blocksIn(e, ph.id) : 0);
        if (key != stationKey) {
            stationKey = key;
            easier = false;
        }
        if (tired(e)) {
            easier = true;
        }
        current = easier ? AutoTemplates.easier(l[k], script.avoid) : l[k];
    }

    /** Every tick: the next exercise to announce, and what the outcome needs. */
    public void tick(long now, AiEngine e) {
        if (e == null) {
            return;
        }
        AiEngine.State st = e.getState();
        minUser = Math.min(minUser, e.getUUser());
        if (st == AiEngine.State.STIM_PAUSE) {
            hrPause = true;
        }
        next = null;
        String[] l = list(e);
        AiModel.Phase ph = e.phase();
        if (l == null || l.length == 0 || ph == null) {
            if (st != AiEngine.State.RUN) {
                current = null;
            }
            return;
        }
        if (workout != null && blocky(ph)) {
            if (st == AiEngine.State.REST && setIndex >= 0) {
                // a done set: the next set's exercise; a short rest inside a set: the same one again
                int k = setComplete ? setIndex + 1 : setIndex;
                next = workout.items.get(seq[k % seq.length][0]).ex;
            }
        } else if (blocky(ph)) {
            if (st == AiEngine.State.REST) {
                next = l[blocksIn(e, ph.id) % l.length];     // the next block's exercise
            }
        } else if (st == AiEngine.State.RUN) {
            double ago = Math.max(0, (now - cycleStartMs) / 1000.0);
            AutoTemplates.At a = script.at(e.getPhaseIndex(), Math.max(0, e.getPhaseElapsedS() - ago), ph.durationS);
            if (a != null && a.next != null && a.remainingS - ago <= AutoCues.NEXT_AHEAD_S) {
                next = a.next;
            }
        }
    }

    /** The exercise now (null outside work: rest, pauses, phases without exercises). */
    public String current(AiEngine e) {
        return e != null && e.getState() == AiEngine.State.RUN ? current : null;
    }

    public String next() {
        return next;
    }

    public boolean isEasier() {
        return easier;
    }

    public long getCycleStartMs() {
        return cycleStartMs;
    }

    public int getOnS() {
        return onS;
    }

    public int getOffS() {
        return offS;
    }

    /** How the session went, for the next session's level. */
    public AutoTemplates.Outcome outcome(AiEngine e) {
        double done = e.getPlan() != null && e.getPlan().totalS > 0
                ? Math.min(1, e.getElapsedPlanS() / e.getPlan().totalS) : 0;
        return new AutoTemplates.Outcome(script.level, done, Math.max(0, 1 - minUser), hrPause);
    }
}
