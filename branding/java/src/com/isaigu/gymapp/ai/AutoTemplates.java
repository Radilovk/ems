package com.isaigu.gymapp.ai;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * The exercises of an automatic session (pure Java; data in {@link AutoTemplateData}, from branding/exercises/).
 * The automatic mode keeps its own parameters (Hz, µs, strength, pulse); this only says which exercise the client
 * does now: the warm-up and the main part are a row of stations, one exercise for whole cycles, then the next.
 * <ul>
 *   <li>Level 1–3 comes from the profile and from how the last sessions of this program went — the client is never
 *       asked: the first active session is level 1; three good ones in a row (done ≥ 90 %, strength not taken down
 *       ≥ 10 %, pulse not on the ceiling) → one up; a bad last one (stopped before 70 %, strength down ≥ 15 %,
 *       pulse on the ceiling) → one down.</li>
 *   <li>The client's state swaps exercises (knees, back, neck, diastasis, after birth, osteoporosis, joints; BMI ≥ 30
 *       60+ and the senior program count as joints: no impact); each focus zone adds one station (at most two).</li>
 *   <li>The warm-up is two light moves the main part does not repeat.</li>
 * </ul>
 * docs/xems-exercise-templates.md; the review pages were built from the same data.
 */
public final class AutoTemplates {
    private AutoTemplates() {}

    /** How a past automatic session of a program went (stored per client and program). */
    public static final class Outcome {
        public int level;
        /** Worked share of the planned time (0–1). */
        public double done;
        /** Strength taken down by the person, share (0 = none). */
        public double cut;
        /** The pulse reached the ceiling. */
        public boolean hrOver;

        public Outcome(int level, double done, double cut, boolean hrOver) {
            this.level = level;
            this.done = done;
            this.cut = cut;
            this.hrOver = hrOver;
        }

        boolean good() {
            return done >= 0.9 && cut < 0.10 && !hrOver;
        }

        boolean bad() {
            return done < 0.7 || cut >= 0.15 || hrOver;
        }
    }

    /** The exercises of one session: per phase of the plan, null where the phase has none. */
    public static final class Script {
        public final String programId;
        public final int level;
        public final String[][] phase;

        Script(String programId, int level, String[][] phase) {
            this.programId = programId;
            this.level = level;
            this.phase = phase;
        }

        /** The exercise at {@code elapsedS} into phase {@code index}; call it with the elapsed time at the start
         *  of the running cycle, so the exercise changes on a cycle boundary only. */
        public At at(int index, double elapsedS, int durationS) {
            if (index < 0 || index >= phase.length || phase[index] == null || phase[index].length == 0) {
                return null;
            }
            String[] list = phase[index];
            int n = list.length;
            double per = Math.max(1, durationS) / (double) n;
            int k = Math.max(0, Math.min(n - 1, (int) Math.floor(elapsedS / per)));
            At a = new At();
            a.id = list[k];
            a.index = k;
            a.count = n;
            a.remainingS = Math.max(0, (k + 1) * per - elapsedS);
            a.next = k + 1 < n ? list[k + 1] : null;
            return a;
        }
    }

    /** The current exercise, the one after it, and how long the current one still runs. */
    public static final class At {
        public String id;
        public String next;
        public int index;
        public int count;
        public double remainingS;
    }

    static int ex(String id) {
        for (int i = 0; i < AutoTemplateData.IDS.length; i++) {
            if (AutoTemplateData.IDS[i].equals(id)) {
                return i;
            }
        }
        return -1;
    }

    /** The exercise's name in the app language. */
    public static String name(String id) {
        int i = ex(id);
        return i < 0 ? "" : AiText.t(AutoTemplateData.BG[i], AutoTemplateData.EN[i]);
    }

    public static boolean has(String programId) {
        return prog(programId) >= 0;
    }

    static int prog(String id) {
        for (int i = 0; i < AutoTemplateData.PROGRAMS.length; i++) {
            if (AutoTemplateData.PROGRAMS[i].equals(id)) {
                return i;
            }
        }
        return -1;
    }

    /** The states that change exercises for this client (the form's plus what the profile implies). */
    static Set<String> states(AutoModel.Input in) {
        Set<String> s = new HashSet<String>();
        if (in.cond != null) {
            s.addAll(in.cond);
        }
        if (in.extra != null) {
            if (in.extra.diastasis) {
                s.add("diastasis");
            }
            if (in.sex == AiModel.Sex.FEMALE && in.extra.weeksSinceBirth > 0) {
                s.add("postpartum");
            }
        }
        if (in.bmi() >= 30 || in.age >= 60 || AutoCatalog.SENIOR.equals(in.programId)) {
            s.add("joints");                  // no impact
        }
        return s;
    }

    /** Level 1–3: profile + the last outcomes of this program (oldest first). */
    public static int level(AutoModel.Input in, String programId, List<Outcome> past) {
        int p = prog(programId);
        int lv = in.fitness == AiModel.Fitness.LOW ? 1 : in.fitness == AiModel.Fitness.HIGH ? 3 : 2;
        if (in.sessions < 3 || in.hoursSinceActive < 0) {
            lv = 1;                            // the first active sessions always start easy
        } else if (past == null || past.isEmpty()) {
            lv = Math.min(lv, in.sessions < 10 ? 2 : 3);
        } else {
            Outcome last = past.get(past.size() - 1);
            lv = last.level;
            int n = past.size();
            if (last.bad()) {
                lv--;
            } else if (n >= 3 && past.get(n - 1).good() && past.get(n - 2).good() && past.get(n - 3).good()) {
                lv++;
            }
        }
        Set<String> st = states(in);
        if (st.contains("sensitive") || st.contains("stress") || st.contains("sleep")) {
            lv--;
        }
        if (AutoCatalog.SENIOR.equals(programId) || st.contains("osteo") || st.contains("postpartum")) {
            lv = Math.min(lv, 2);
        }
        lv = Math.max(1, Math.min(3, lv));
        while (p >= 0 && lv < 3 && AutoTemplateData.STATIONS[p][lv - 1] == null) {
            lv++;                              // Power has no level 1
        }
        return lv;
    }

    /** The main-part stations: the level's list, the states' swaps, the focus zones' extra stations. */
    static List<String> stations(String programId, int level, Set<String> states, Set<String> focus, Set<String> bad) {
        String[] base = AutoTemplateData.STATIONS[prog(programId)][level - 1];
        List<String> instead = new ArrayList<String>();
        for (int c = 0; c < AutoTemplateData.COND.length; c++) {
            if (states.contains(AutoTemplateData.COND[c])) {
                for (String x : AutoTemplateData.AVOID[c]) {
                    bad.add(x);
                }
                for (String x : AutoTemplateData.INSTEAD[c]) {
                    instead.add(x);
                }
            }
        }
        List<String> out = new ArrayList<String>();
        for (String s : base) {
            if (!bad.contains(s)) {
                out.add(s);
                continue;
            }
            for (String r : instead) {
                if (!bad.contains(r) && !out.contains(r) && !contains(base, r)) {
                    out.add(r);
                    break;
                }
            }
        }
        int added = 0;
        for (int f = 0; f < AutoTemplateData.FOCUS.length && added < 2; f++) {
            if (focus == null || !focus.contains(AutoTemplateData.FOCUS[f])) {
                continue;
            }
            for (String r : AutoTemplateData.FOCUS_EX[f]) {
                if (!bad.contains(r) && !out.contains(r)) {
                    out.add(r);
                    added++;
                    break;
                }
            }
        }
        if (!AutoCatalog.POWER.equals(programId) && !AutoCatalog.CARDIO.equals(programId)) {
            sortByPosition(out);              // standing → bench → floor: the client is not up and down
        }
        return out;
    }

    private static int rank(String id) {
        int i = ex(id);
        String p = i < 0 ? "stand" : AutoTemplateData.POS[i];
        return "stand".equals(p) ? 0 : "machine".equals(p) ? 1 : "bench".equals(p) ? 2 : 3;
    }

    /** Stable insertion sort by position. */
    static void sortByPosition(List<String> list) {
        for (int i = 1; i < list.size(); i++) {
            String x = list.get(i);
            int j = i - 1;
            while (j >= 0 && rank(list.get(j)) > rank(x)) {
                list.set(j + 1, list.get(j));
                j--;
            }
            list.set(j + 1, x);
        }
    }

    private static final String[] LIGHT = {"bodyweight-squat", "lateral-lunge", "glute-bridge", "step-down",
            "banded-lat-pulldown", "side-lying-hip-abduction", "fire-hydrant", "donkey-kick", "superman",
            "incline-push-up"};

    /** Two light warm-up moves the main part does not repeat (one if the states leave only one). */
    static List<String> warmup(int level, List<String> main, Set<String> bad) {
        List<String> pool = new ArrayList<String>();
        if (level > 1) {
            pool.add("jumping-jack");
            pool.add("forward-lunge");
        }
        for (String s : LIGHT) {
            pool.add(s);
        }
        List<String> out = new ArrayList<String>();
        for (String s : pool) {
            if (out.size() < 2 && !bad.contains(s) && !main.contains(s)) {
                out.add(s);
            }
        }
        for (String s : pool) {
            if (out.size() < 2 && !bad.contains(s) && !out.contains(s)) {
                out.add(s);
            }
        }
        return out;
    }

    /** The session's exercises for a plan, or null when the program has none (passive programs). */
    public static Script script(AutoModel.Plan plan, List<Outcome> past) {
        if (plan == null || plan.program == null || plan.input == null || !has(plan.program.id)) {
            return null;
        }
        AutoModel.Input in = plan.input;
        String id = plan.program.id;
        int lv = level(in, id, past);
        Set<String> st = states(in);
        Set<String> focus = new HashSet<String>();
        if (in.focus != null) {
            focus.addAll(in.focus);
        }
        if (in.sex == AiModel.Sex.FEMALE && in.extra != null && in.extra.breastfeeding) {
            focus.remove("chest");
        }
        if (st.contains("desk") && focus.isEmpty()) {
            focus.add("back");
            focus.add("glutes");
        }
        Set<String> bad = new HashSet<String>();
        List<String> main = stations(id, lv, st, focus, bad);
        List<String> warm = warmup(lv, main, bad);
        String[][] ph = new String[plan.phases.size()][];
        for (int i = 0; i < ph.length; i++) {
            String pid = plan.phases.get(i).id;
            if ("WARMUP".equals(pid)) {
                ph[i] = warm.toArray(new String[0]);
            } else if ("MAIN".equals(pid) || "METABOLIC".equals(pid)) {
                ph[i] = main.toArray(new String[0]);
            }
        }
        return new Script(id, lv, ph);
    }

    private static boolean contains(String[] a, String s) {
        for (String x : a) {
            if (x.equals(s)) {
                return true;
            }
        }
        return false;
    }
}
