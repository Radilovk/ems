package com.isaigu.gymapp.ai;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/**
 * Spoken commands during an AI training (owner, 1.1.539): "намали краката", "увеличи малко ръцете", "по-дълга пауза",
 * "пауза", "прескочи". Read here first (instant, no network); what this does not read goes to the server's cheapest
 * model (kind "command"), and what is no command at all (pain, a question) to the coach. Pure Java.
 *
 * <p>The step is relative to the value now: ~10 % ("малко": ~5 %), never less than 1 — legs at 50 → ±5, arms at 4 → ±1
 * ({@link #step}).
 */
public final class AiVoiceCmd {
    private AiVoiceCmd() {}

    public static final String[] TARGETS = {"strength", "legs", "thighs", "calves", "glutes", "abs", "arms", "chest",
            "back", "lower_back", "traps", "impulse", "pause", "frequency", "rest", "all_channels"};
    /** Channels per muscle target (PartStrenthBean.buwei − 1: chest 0, abs 1, front thigh 2, calf 3, arms 4, traps 5,
     *  back 6, lower back 7, glutes 8, back thigh 9). */
    static final int[][] CHANNELS = {{}, {2, 9, 3}, {2, 9}, {3}, {8}, {1}, {4}, {0}, {6}, {7}, {5}, {}, {}, {}, {},
            {0, 1, 2, 3, 4, 5, 6, 7, 8, 9}};
    public static final String[] TARGETS_BG = {"сила", "крака", "бедра", "прасци", "седалище", "корем", "ръце", "гърди",
            "гръб", "кръст", "трапец", "импулс", "пауза", "честота", "почивки", "всички канали"};

    public static final class Cmd {
        public final String target;
        /** up / down / off / on */
        public final String dir;
        public final boolean small;

        Cmd(String target, String dir, boolean small) {
            this.target = target;
            this.dir = dir;
            this.small = small;
        }

        public int[] channels() {
            int i = AiCoach.indexOf(target, TARGETS);
            return i >= 0 ? CHANNELS[i] : new int[0];
        }

        public boolean isMuscle() {
            return channels().length > 0;
        }
    }

    public static final class Result {
        public final List<Cmd> commands = new ArrayList<Cmd>();
        public final List<String> actions = new ArrayList<String>();
        /** The server said: not a command — ask the coach. */
        public boolean coach;
        /** The verb read in this part and its "малко" (parse's own use). */
        String dir;
        boolean small;

        public boolean isEmpty() {
            return commands.isEmpty() && actions.isEmpty();
        }
    }

    /** How the recognizer may write the wake word (owner: "тренер"; the dictionary form is "треньор"). */
    static final String[] WAKE = {"тренер", "треньор", "трениор", "трейнър", "trainer", "trener"};

    /**
     * The words after the wake word ("Тренер, увеличи краката" → "увеличи краката"), "" = the wake word alone,
     * null = no wake word in the phrase.
     */
    public static String afterWake(String text) {
        if (text == null) {
            return null;
        }
        String t = text.toLowerCase(Locale.ROOT);
        int best = -1;
        int len = 0;
        for (String w : WAKE) {
            int i = t.indexOf(w);
            if (i >= 0 && (best < 0 || i < best)) {
                best = i;
                len = w.length();
            }
        }
        if (best < 0) {
            return null;
        }
        int end = best + len;
        while (end < t.length() && Character.isLetter(t.charAt(end))) {
            end++;                                            // "тренера", "треньорът"
        }
        return text.substring(end).replaceAll("^[\\s,.:!-]+", "").trim();
    }

    /** The step for a value now: ~10 % (small ~5 %), at least 1. */
    public static int step(int value, boolean small) {
        return Math.max(1, (int) Math.round(Math.abs(value) * (small ? 0.05 : 0.10)));
    }

    // ================================================================ the tablet's own reading

    private static final String[][] WORDS = {
            {"strength", "силата", "тока", "интензитет", "импулсите", "импулса", "всичко"},
            {"legs", "крака", "краката", "крачет"},
            {"thighs", "бедра", "бедрата", "бедро"},
            {"calves", "прасец", "прасци", "прасеца", "прасците"},
            {"glutes", "седалищ", "дупе", "задник", "задни части", "глутеус"},
            {"abs", "корем", "корема"},
            {"arms", "ръце", "ръцете", "ръка", "ръката", "бицепс", "трицепс"},
            {"chest", "гърди", "гърдите", "гръден"},
            {"back", "гръб", "гърба", "гърбът"},
            {"lower_back", "кръст", "кръста"},
            {"traps", "трапец", "рамен", "раменете"},
            {"frequency", "честота", "херц"},
            {"rest", "почивк"},
            {"all_channels", "всички канали"},
    };

    /** "колко повторения…", "какво упражнение…", "…?" — a question for the coach, not a command. */
    public static boolean isQuestion(String text) {
        if (text == null) {
            return false;
        }
        String t = " " + text.toLowerCase(java.util.Locale.ROOT).trim() + " ";
        if (t.trim().endsWith("?")) {
            return true;
        }
        String[] q = {" колко ", " какво ", " кое ", " кои ", " коя ", " кой ", " как ", " защо ", " кога ", " може ли ",
                " препоръч", " предложи", " дай ми ", " какви ", " what ", " how ", " which ", " why "};
        for (String w : q) {
            if (t.contains(w)) {
                return true;
            }
        }
        return false;
    }

    public static Result parse(String text) {
        Result all = new Result();
        if (text == null) {
            return all;
        }
        // "увеличи ръцете и намали дупето": each part with its own verb; a part with none takes the one before
        // ("увеличи ръцете и краката")
        String[] parts = (" " + text.toLowerCase(Locale.ROOT).replace('ѝ', 'и') + " ")
                .split("\\s+и\\s+|\\s+а\\s+|,|;|\\s+после\\s+|\\s+също\\s+");
        String lastDir = null;
        boolean lastSmall = false;
        for (String part : parts) {
            if (part.trim().length() == 0) {
                continue;
            }
            Result r = parseOne(part, lastDir, lastSmall);
            if (r.dir != null) {
                lastDir = r.dir;
                lastSmall = r.small;
            }
            for (Cmd c : r.commands) {
                if (!contains(all, c.target)) {
                    all.commands.add(c);
                }
            }
            for (String a : r.actions) {
                if (!all.actions.contains(a)) {
                    all.actions.add(a);
                }
            }
        }
        if (all.actions.contains("double_on") || all.actions.contains("double_off")) {
            all.commands.clear();
        }
        return all;
    }

    private static Result parseOne(String text, String inherited, boolean inheritedSmall) {
        Result r = new Result();
        String t = " " + text.toLowerCase(Locale.ROOT).replace('ѝ', 'и').replaceAll("[,.!?;]", " ") + " ";
        boolean small = has(t, "малко", "леко ", "мъничко", "съвсем малко");
        String dir = has(t, "намали", "по-слабо", "по слабо", "по-малко", "по малко", "свали", "отслаби", "по-леко", "по леко")
                ? "down" : has(t, "увеличи", "по-силно", "по силно", "повече", "качи", "вдигни", "засили", "усили")
                ? "up" : has(t, "изключи", "махни", "без ") ? "off" : has(t, "включи", "добави") ? "on" : null;
        r.dir = dir;
        r.small = small;
        if (dir == null && inherited != null && hasMuscle(t)) {
            dir = inherited;                                   // "… и краката": the verb before (and its "малко")
            small = small || inheritedSmall;
        }
        // the impulse's / the pause's length
        boolean longer = has(t, "по-дълг", "по дълг", "удължи");
        boolean shorter = has(t, "по-къс", "по къс", "по-кратк", "по кратк", "скъси");
        if ((longer || shorter) && has(t, "пауз")) {
            r.commands.add(new Cmd("pause", longer ? "up" : "down", small));
        }
        if ((longer || shorter) && has(t, "импулс") && !has(t, "пауз")) {
            r.commands.add(new Cmd("impulse", longer ? "up" : "down", small));
        }
        if ((longer || shorter) && has(t, "почивк")) {
            r.commands.add(new Cmd("rest", longer ? "up" : "down", small));
        }
        if (dir != null && r.commands.isEmpty()) {
            boolean muscle = false;
            for (int i = 1; i < WORDS.length; i++) {
                for (int j = 1; j < WORDS[i].length; j++) {
                    if (t.contains(WORDS[i][j]) && !contains(r, WORDS[i][0])) {
                        if ("legs".equals(WORDS[i][0]) && (contains(r, "thighs") || contains(r, "calves"))) {
                            continue;
                        }
                        r.commands.add(new Cmd(WORDS[i][0], dir, small));
                        muscle |= AiCoach.indexOf(WORDS[i][0], TARGETS) <= 10;
                        break;
                    }
                }
            }
            // "по-силно" / "намали импулсите" with no muscle: the overall strength
            if (r.commands.isEmpty() && ("up".equals(dir) || "down".equals(dir))) {
                r.commands.add(new Cmd("strength", dir, small));
            }
        }
        if (dir == null && !longer && !shorter) {
            if (has(t, " пауза ", " спри ", "почивка ")) r.actions.add("pause");
            if (has(t, "продължи", "пусни", " старт", "започни", "започваме", "давай")) r.actions.add("resume");
            if (has(t, " стоп ", "край ", "приключи")) r.actions.add("stop");
        }
        if (has(t, "прескочи", "следващо", "следващото")) r.actions.add("skip");
        if (has(t, "възстановяване", "приключи активната")) r.actions.add("to_recovery");
        if (has(t, "двоен импулс", "втори импулс")) {
            r.actions.add("off".equals(dir) || "down".equals(dir) ? "double_off" : "double_on");
            r.commands.clear();
        }
        return r;
    }

    private static boolean hasMuscle(String t) {
        for (int i = 1; i < WORDS.length; i++) {
            for (int j = 1; j < WORDS[i].length; j++) {
                if (t.contains(WORDS[i][j])) {
                    return true;
                }
            }
        }
        return false;
    }

    /** The server's {@code {"ok":true,"command":{commands,actions,coach}}}. */
    public static Result parseServer(String response) {
        Result r = new Result();
        try {
            Object root = new AiBrief.Json(response).value();
            Map<?, ?> m = root instanceof Map && ((Map<?, ?>) root).get("command") instanceof Map
                    ? (Map<?, ?>) ((Map<?, ?>) root).get("command") : null;
            if (m == null) {
                r.coach = true;
                return r;
            }
            if (m.get("commands") instanceof List) {
                for (Object o : (List<?>) m.get("commands")) {
                    if (o instanceof Map) {
                        Object tg = ((Map<?, ?>) o).get("target");
                        Object d = ((Map<?, ?>) o).get("dir");
                        if (tg instanceof String && AiCoach.indexOf((String) tg, TARGETS) >= 0 && d instanceof String
                                && AiCoach.indexOf((String) d, new String[] {"up", "down", "off", "on"}) >= 0
                                && r.commands.size() < 6) {
                            r.commands.add(new Cmd((String) tg, (String) d, "small".equals(((Map<?, ?>) o).get("step"))));
                        }
                    }
                }
            }
            if (m.get("actions") instanceof List) {
                for (Object o : (List<?>) m.get("actions")) {
                    if (o instanceof String && AiCoach.indexOf((String) o, new String[] {"pause", "resume", "skip",
                            "to_recovery", "double_on", "double_off", "stop"}) >= 0 && r.actions.size() < 3) {
                        r.actions.add((String) o);
                    }
                }
            }
            r.coach = r.isEmpty() || Boolean.TRUE.equals(m.get("coach"));
        } catch (RuntimeException e) {
            r.coach = true;
        }
        return r;
    }

    public static String name(String target) {
        int i = AiCoach.indexOf(target, TARGETS);
        return i >= 0 ? TARGETS_BG[i] : target;
    }

    private static boolean contains(Result r, String target) {
        for (Cmd c : r.commands) {
            if (c.target.equals(target)) {
                return true;
            }
        }
        return false;
    }

    private static boolean has(String t, String... words) {
        for (String w : words) {
            if (t.contains(w)) {
                return true;
            }
        }
        return false;
    }
}
