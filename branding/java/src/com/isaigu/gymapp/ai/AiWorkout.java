package com.isaigu.gymapp.ai;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * The AI's own workout (owner, 1.1.538 — docs/xems-ai-coach.md): not a template — the model writes the exercises
 * (dumbbells, kettlebell, free weight, mat, band, own body), described in words, no figures. For each block it picks
 * only the load kind; the impulse (Hz, µs, ON / OFF) comes from {@link #IMPULSE} by kind, the age limit and the
 * map's limits ({@link Workout.Block#clampAll}); the active part is capped at 20 min with its rests and a 10 min
 * passive recovery follows. Runs as a map ({@link MapRunner}): the card shows each exercise's name and how.
 * Pure Java.
 */
public final class AiWorkout {
    private AiWorkout() {}

    public static final String[] KINDS = {"warmup", "strength", "hypertrophy", "endurance", "power", "cardio", "core",
            "mobility"};
    public static final String[] KINDS_BG = {"загрявка", "сила", "мускулна маса", "издръжливост", "експлозивност",
            "кардио", "кор", "мобилност"};
    /** Per kind: Hz, µs, ON s, OFF s (EMS physiology: tetanic ≥ 20 Hz with rest ≥ 2/3 ON; low Hz for warm-up / mobility). */
    static final int[][] IMPULSE = {
            {7, 300, 5, 1},      // warmup: twitches, blood flow
            {85, 350, 4, 4},     // strength
            {70, 350, 5, 4},     // hypertrophy
            {50, 300, 6, 4},     // endurance
            {100, 300, 3, 4},    // power (≥ 100 Hz ⇒ ≤ 300 µs)
            {40, 300, 4, 3},     // cardio / metabolic
            {80, 350, 5, 4},     // core
            {10, 250, 5, 2},     // mobility
    };
    public static final String[] EQUIPMENT = {"body", "mat", "dumbbells", "kettlebell", "barbell", "band", "ball", "step"};
    public static final String[] EQUIPMENT_BG = {"собствено тяло", "постелка", "дъмбели", "пудовка", "щанга", "ластик",
            "топка", "степ"};
    public static final int ACTIVE_MAX_S = 1200;
    public static final int RECOVERY_S = 600;

    /** One exercise as the model wrote it. */
    public static final class Item {
        public String name;
        public String how = "";
        public String kind;
        public String equipment = "body";
        public int sets = 1;
        public int workS = 30;
        public int restS = 30;
    }

    public static final class Plan {
        public String title = "";
        public final List<Item> items = new ArrayList<Item>();
    }

    /** The {@code "coach"} object of the answer → the exercises (unknown kinds / empty names dropped). */
    public static Plan parse(String response) {
        Object root;
        try {
            root = new AiBrief.Json(response).value();
        } catch (RuntimeException e) {
            return null;
        }
        if (!(root instanceof Map) || !(((Map<?, ?>) root).get("coach") instanceof Map)) {
            return null;
        }
        Map<?, ?> m = (Map<?, ?>) ((Map<?, ?>) root).get("coach");
        Plan p = new Plan();
        p.title = str(m.get("title"), 60);
        if (m.get("blocks") instanceof List) {
            for (Object o : (List<?>) m.get("blocks")) {
                if (!(o instanceof Map) || p.items.size() >= 12) {
                    continue;
                }
                Map<?, ?> b = (Map<?, ?>) o;
                Item it = new Item();
                it.name = str(b.get("name"), 50);
                it.how = str(b.get("how"), 160);
                it.kind = AiCoach.indexOf(String.valueOf(b.get("kind")), KINDS) >= 0 ? String.valueOf(b.get("kind")) : null;
                String eq = String.valueOf(b.get("equipment"));
                it.equipment = AiCoach.indexOf(eq, EQUIPMENT) >= 0 ? eq : "body";
                it.sets = num(b.get("sets"), 1, 4, 1);
                it.workS = num(b.get("work_s"), 20, 45, 30);
                it.restS = num(b.get("rest_s"), 15, 90, 30);
                if (it.name.length() > 0 && it.kind != null) {
                    p.items.add(it);
                }
            }
        }
        return p.items.isEmpty() ? null : p;
    }

    /**
     * The exercises → a map: each set a block with the kind's impulse (age-limited), a rest block between sets and
     * exercises, the active part trimmed to 20 min (the last sets go first, every exercise keeps one), then 10 min of
     * passive recovery (low Hz, no exercise).
     */
    public static Workout toWorkout(Plan p, AutoModel.Input in) {
        List<Item> items = new ArrayList<Item>(p.items);
        int[] sets = new int[items.size()];
        for (int i = 0; i < items.size(); i++) {
            sets[i] = items.get(i).sets;
        }
        // trim: one set at a time from the exercise with the most sets (from the end), never below one
        while (activeSeconds(items, sets, in) > ACTIVE_MAX_S) {
            int best = -1;
            for (int i = items.size() - 1; i >= 0; i--) {
                if (sets[i] > 1 && (best < 0 || sets[i] > sets[best])) {
                    best = i;
                }
            }
            if (best < 0) {
                items.remove(items.size() - 2 >= 0 ? items.size() - 2 : 0);   // too many exercises: drop before the last
                sets = java.util.Arrays.copyOf(sets, items.size());
                for (int i = 0; i < items.size(); i++) {
                    sets[i] = Math.max(1, Math.min(sets[i], items.get(i).sets));
                }
                if (items.size() <= 1) {
                    break;
                }
                continue;
            }
            sets[best]--;
        }
        Workout w = new Workout();
        w.id = "ai:" + System.currentTimeMillis();
        w.name = p.title.length() > 0 ? p.title : AiText.t("AI тренировка", "AI workout");
        w.goal = in.goal == AutoModel.Goal.SLIM ? Workout.GOAL_FAT : Workout.GOAL_TONE;
        for (int i = 0; i < items.size(); i++) {
            Item it = items.get(i);
            for (int s = 0; s < sets[i]; s++) {
                if (!w.blocks.isEmpty()) {
                    w.blocks.add(rest(i > 0 && s == 0 ? items.get(i - 1).restS : it.restS));
                }
                w.blocks.add(block(it, in));
            }
        }
        // the passive recovery: 10 min of low frequency, no exercise (as Auto's)
        int left = RECOVERY_S;
        while (left > 0) {
            Workout.Block r = new Workout.Block(null, 1, 5, 250, 10, 2, 60);
            r.reps = Math.max(Workout.REPS_MIN, Math.min(Workout.REPS_MAX, left / (r.on + r.off)));
            r.label = AiText.t("Възстановяване", "Recovery");
            r.how = AiText.t("Легни спокойно, дишай бавно.", "Lie still, breathe slowly.");
            r.clampAll();
            w.blocks.add(r);
            left -= r.seconds();
        }
        return w;
    }

    static int activeSeconds(List<Item> items, int[] sets, AutoModel.Input in) {
        int t = 0;
        boolean first = true;
        for (int i = 0; i < items.size(); i++) {
            Workout.Block b = block(items.get(i), in);
            for (int s = 0; s < sets[i]; s++) {
                if (!first) {
                    t += clampRest(i > 0 && s == 0 ? items.get(i - 1).restS : items.get(i).restS);
                }
                t += b.seconds();
                first = false;
            }
        }
        return t;
    }

    static Workout.Block block(Item it, AutoModel.Input in) {
        int k = Math.max(0, AiCoach.indexOf(it.kind, KINDS));
        int[] im = IMPULSE[k];
        int hz = Math.min(im[0], SafeLimits.hzMax(in.age));
        int cyc = im[2] + Math.max(1, im[3]);
        int reps = Math.max(Workout.REPS_MIN, Math.round(it.workS / (float) cyc));
        Workout.Block b = new Workout.Block("free", reps, hz, im[1], im[2], im[3], 100);
        b.ex = null;                                  // no library figure: described only
        b.label = it.name;
        String eq = AiCoach.indexOf(it.equipment, EQUIPMENT) >= 0
                ? EQUIPMENT_BG[AiCoach.indexOf(it.equipment, EQUIPMENT)] : "";
        b.how = (it.how.length() > 0 ? it.how : "") + (eq.length() > 0 && !"body".equals(it.equipment)
                ? (it.how.length() > 0 ? " · " : "") + eq : "");
        b.hold = "core".equals(it.kind);
        b.lock = true;                                // the kind's impulse as set: the smart impulse leaves it
        b.clampAll();
        return b;
    }

    static Workout.Block rest(int s) {
        Workout.Block r = new Workout.Block(null, clampRest(s), 7, 300, 1, 0, 0);
        r.clampAll();
        return r;
    }

    static int clampRest(int s) {
        return Math.max(Workout.REST_MIN_S, Math.min(Workout.REST_MAX_S, s));
    }

    /** One line per exercise for the summary: "Румънска тяга · 3 × 30 s · сила · дъмбели". */
    public static List<String> lines(Plan p) {
        List<String> out = new ArrayList<String>();
        for (Item it : p.items) {
            int k = AiCoach.indexOf(it.kind, KINDS);
            int e = AiCoach.indexOf(it.equipment, EQUIPMENT);
            out.add(it.name + " · " + it.sets + " × " + it.workS + " s · " + (k >= 0 ? KINDS_BG[k] : it.kind)
                    + (e > 0 ? " · " + EQUIPMENT_BG[e] : ""));
        }
        return out;
    }

    private static String str(Object v, int max) {
        if (!(v instanceof String)) {
            return "";
        }
        String t = ((String) v).replaceAll("[\\u0000-\\u001f\\u007f]", " ").replaceAll("\\s+", " ").trim();
        return t.length() > max ? t.substring(0, max) : t;
    }

    private static int num(Object v, int lo, int hi, int def) {
        if (!(v instanceof Number)) {
            return def;
        }
        return (int) Math.max(lo, Math.min(hi, Math.round(((Number) v).doubleValue())));
    }
}
