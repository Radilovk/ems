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
 * docs/xems-exercise-templates.md
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
        if (blocky(ph)) {
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
