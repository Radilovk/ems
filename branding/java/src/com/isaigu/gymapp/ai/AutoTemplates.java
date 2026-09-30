package com.isaigu.gymapp.ai;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * The exercises of an automatic session (pure Java; data in {@link AutoTemplateData}, from branding/exercises/).
 * The session keeps its own parameters (Hz, µs, strength, pulse); this only says which exercise the client
 * does: the warm-up and the main part are a row of stations, one exercise for whole cycles, then the next.
 * <ul>
 *   <li>Level 1–3 comes from the profile and from how the last sessions of this program went — the client is never
 *       asked: the first active session is level 1; three good ones in a row (done ≥ 90 %, strength not taken down
 *       ≥ 10 %, pulse not on the ceiling) → one up; a bad last one (stopped before 70 %, strength down ≥ 15 %,
 *       pulse on the ceiling) → one down.</li>
 *   <li>The client's state swaps exercises (knees, back, neck, diastasis, after birth, osteoporosis, joints; BMI ≥ 30
 *       60+ and the senior program count as joints: no impact); each focus zone adds one station (at most two).</li>
 *   <li>The warm-up is two light moves the main part does not repeat.</li>
 * </ul>
 * Used by the Smart Session (AI), which follows the stations cycle by cycle ({@link AiExercises}); the automatic
 * mode only shows them as an example. docs/xems-exercise-templates.md.
 */
public final class AutoTemplates {
    private AutoTemplates() {}

    /** The cardio-machine exercise and what stands in for it when the studio has none (the first one allowed). */
    public static final String MACHINE = "elliptical";
    private static final String[] NO_MACHINE = {"jumping-jack", "step-down", "lateral-lunge", "bodyweight-squat",
            "forward-lunge", "dumbbell-sumo-squat", "goblet-squat", "banded-lat-pulldown", "glute-bridge"};
    /** No cardio machine in the studio (AutoHistory.cardioMachine, set before a script is built). */
    public static volatile boolean noCardioMachine;

    /** The program's stations use the cardio machine at some level (then the AI plan asks whether there is one). */
    public static boolean usesMachine(String programId) {
        int p = prog(programId);
        if (p < 0) {
            return false;
        }
        for (String[] lv : AutoTemplateData.STATIONS[p]) {
            if (lv != null && contains(lv, MACHINE)) {
                return true;
            }
        }
        return false;
    }

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
        /** Exercises the client's states rule out (an easier swap never picks one). */
        public final Set<String> avoid;

        Script(String programId, int level, String[][] phase, Set<String> avoid) {
            this.programId = programId;
            this.level = level;
            this.phase = phase;
            this.avoid = avoid;
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

    // ---- the library beyond the 40 built-in exercises (ExerciseLibrary registers what the admin enabled) ----
    /** Library exercises get indexes from here on (the session record stores index + 1). */
    public static final int LIB_BASE = 1000;
    private static final List<String> LIB_IDS = new ArrayList<String>();
    private static final java.util.Map<String, Integer> LIB_INDEX = new java.util.HashMap<String, Integer>();
    private static final List<String[]> LIB_TEXT = new ArrayList<String[]>();   // bg, en, pos
    private static final List<Double> LIB_MET = new ArrayList<Double>();
    private static final List<int[]> LIB_MUS = new ArrayList<int[]>();

    /** A library exercise the tablet knows (name, position, cost, muscles); built-in ids are ignored. */
    public static synchronized void register(String id, String bg, String en, String pos, double met, int[] mus) {
        if (id == null || ex(id) >= 0 || LIB_INDEX.containsKey(id) || mus == null || mus.length != 10) {
            return;
        }
        LIB_INDEX.put(id, LIB_IDS.size());
        LIB_IDS.add(id);
        LIB_TEXT.add(new String[] {bg, en, pos});
        LIB_MET.add(met);
        LIB_MUS.add(mus);
    }

    public static synchronized boolean known(String id) {
        return ex(id) >= 0 || LIB_INDEX.containsKey(id);
    }

    private static synchronized int lib(String id) {
        Integer k = id != null ? LIB_INDEX.get(id) : null;
        return k != null ? k : -1;
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
        if (i >= 0) {
            return AiText.t(AutoTemplateData.BG[i], AutoTemplateData.EN[i]);
        }
        int k = lib(id);
        return k < 0 ? "" : AiText.t(LIB_TEXT.get(k)[0], LIB_TEXT.get(k)[1]);
    }

    /** Index of the exercise in the table (the session record stores index + 1), −1 when unknown. */
    public static int index(String id) {
        if (id == null) {
            return -1;
        }
        int i = ex(id);
        if (i >= 0) {
            return i;
        }
        int k = lib(id);
        return k < 0 ? -1 : LIB_BASE + k;
    }

    public static synchronized String idAt(int index) {
        if (index >= LIB_BASE) {
            return index - LIB_BASE < LIB_IDS.size() ? LIB_IDS.get(index - LIB_BASE) : null;
        }
        return index >= 0 && index < AutoTemplateData.IDS.length ? AutoTemplateData.IDS[index] : null;
    }

    /** MET of the movement itself (0 when unknown). */
    public static synchronized double met(int index) {
        if (index >= LIB_BASE) {
            return index - LIB_BASE < LIB_MET.size() ? LIB_MET.get(index - LIB_BASE) : 0;
        }
        return index >= 0 && index < AutoTemplateData.MET.length ? AutoTemplateData.MET[index] : 0;
    }

    /** How much the movement works each suit channel, 0–100 (100 = main muscle); null when unknown. */
    public static synchronized int[] muscles(int index) {
        if (index >= LIB_BASE) {
            return index - LIB_BASE < LIB_MUS.size() ? LIB_MUS.get(index - LIB_BASE) : null;
        }
        return index >= 0 && index < AutoTemplateData.MUS.length ? AutoTemplateData.MUS[index] : null;
    }

    /** stand / machine / bench / floor. */
    public static String position(String id) {
        int i = ex(id);
        if (i >= 0) {
            return AutoTemplateData.POS[i];
        }
        int k = lib(id);
        return k < 0 ? "stand" : LIB_TEXT.get(k)[2];
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

    /** The exercises this client's states rule out (knees, back, diastasis, after birth, joints — 60+, BMI ≥ 30 …). */
    public static Set<String> avoidFor(AutoModel.Input in) {
        Set<String> st = states(in);
        Set<String> bad = new HashSet<String>();
        for (int c = 0; c < AutoTemplateData.COND.length; c++) {
            if (st.contains(AutoTemplateData.COND[c])) {
                for (String x : AutoTemplateData.AVOID[c]) {
                    bad.add(x);
                }
            }
        }
        if (noCardioMachine) {
            bad.add(MACHINE);
        }
        return bad;
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
        if (noCardioMachine) {
            bad.add(MACHINE);
        }
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
            for (String r : MACHINE.equals(s) ? NO_MACHINE : instead.toArray(new String[0])) {
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
        String p = position(id);
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

    /** The session's exercises for an automatic plan, or null when the program has none (passive programs). */
    public static Script script(AutoModel.Plan plan, List<Outcome> past) {
        if (plan == null || plan.program == null || plan.input == null || !has(plan.program.id)) {
            return null;
        }
        String[] ids = new String[plan.phases.size()];
        for (int i = 0; i < ids.length; i++) {
            ids[i] = plan.phases.get(i).id;
        }
        return scriptFor(plan.program.id, plan.input, ids, past);
    }

    /** The session's exercises for phases named WARMUP / MAIN / METABOLIC / … (the AI plan uses the same ids). */
    public static Script scriptFor(String id, AutoModel.Input in, String[] phaseIds, List<Outcome> past) {
        if (in == null || phaseIds == null || !has(id)) {
            return null;
        }
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
        String[][] ph = new String[phaseIds.length][];
        for (int i = 0; i < ph.length; i++) {
            String pid = phaseIds[i];
            if ("WARMUP".equals(pid)) {
                ph[i] = warm.toArray(new String[0]);
            } else if ("MAIN".equals(pid) || "METABOLIC".equals(pid)) {
                ph[i] = main.toArray(new String[0]);
            }
        }
        return new Script(id, lv, ph, bad);
    }

    private static int mainChannel(int[] m) {
        int best = 0;
        for (int k = 1; k < m.length; k++) {
            if (m[k] > m[best]) {
                best = k;
            }
        }
        return best;
    }

    /**
     * An easier exercise for the same main muscle: the next lower cost (MET) among the built-in ones that the
     * client's states allow and that keeps the position (no getting down to the floor mid-set) when one exists; the
     * exercise itself when none. Works for library exercises too (their muscles and cost pick the swap).
     */
    public static String easier(String id, Set<String> avoid) {
        int ix = index(id);
        int[] mus = muscles(ix);
        if (mus == null) {
            return id;
        }
        int ch = mainChannel(mus);
        double met = met(ix);
        String pos = position(id);
        int best = -1;
        for (int pass = 0; pass < 2 && best < 0; pass++) {
            for (int k = 0; k < AutoTemplateData.IDS.length; k++) {
                if (AutoTemplateData.IDS[k].equals(id) || mainChannel(AutoTemplateData.MUS[k]) != ch
                        || AutoTemplateData.MET[k] >= met
                        || (avoid != null && avoid.contains(AutoTemplateData.IDS[k]))
                        || (pass == 0 && !AutoTemplateData.POS[k].equals(pos))) {
                    continue;
                }
                if (best < 0 || AutoTemplateData.MET[k] > AutoTemplateData.MET[best]) {
                    best = k;
                }
            }
        }
        return best < 0 ? id : AutoTemplateData.IDS[best];
    }

    /**
     * The client's state rules the exercise out: an easier one for the same muscle, else the allowed one closest in
     * cost for that muscle, else a glute bridge (allowed by every state). The exercise itself when it is allowed.
     */
    public static String safer(String id, Set<String> avoid) {
        if (avoid == null || !avoid.contains(id)) {
            return id;
        }
        String r = easier(id, avoid);
        if (!avoid.contains(r)) {
            return r;
        }
        int ix = index(id);
        int[] mus = muscles(ix);
        double met = met(ix);
        int ch = mus != null ? mainChannel(mus) : -1;
        int best = -1;
        for (int k = 0; k < AutoTemplateData.IDS.length; k++) {
            if (avoid.contains(AutoTemplateData.IDS[k]) || mainChannel(AutoTemplateData.MUS[k]) != ch) {
                continue;
            }
            if (best < 0 || Math.abs(AutoTemplateData.MET[k] - met) < Math.abs(AutoTemplateData.MET[best] - met)) {
                best = k;
            }
        }
        return best >= 0 ? AutoTemplateData.IDS[best] : "glute-bridge";
    }

    /** The AI goal and the client → the template program: fat burning → cardio; 65+ → senior; else general
     *  (the focus zones add their own stations). Null for passive sessions. */
    public static String programForAi(AiModel.Goal goal, AiModel.Mode mode, int age) {
        if (mode != AiModel.Mode.ACTIVE || (goal != AiModel.Goal.TONE && goal != AiModel.Goal.FAT)) {
            return null;
        }
        if (age >= 65) {
            return AutoCatalog.SENIOR;
        }
        return goal == AiModel.Goal.FAT ? AutoCatalog.CARDIO : AutoCatalog.GENERAL;
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
