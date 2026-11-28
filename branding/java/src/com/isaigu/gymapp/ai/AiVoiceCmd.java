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
            "back", "lower_back", "traps", "impulse", "pause", "frequency", "rest", "all_channels", "width", "second"};
    /** Channels per muscle target (PartStrenthBean.buwei − 1: chest 0, abs 1, front thigh 2, calf 3, arms 4, traps 5,
     *  back 6, lower back 7, glutes 8, back thigh 9). */
    static final int[][] CHANNELS = {{}, {2, 9, 3}, {2, 9}, {3}, {8}, {1}, {4}, {0}, {6}, {7}, {5}, {}, {}, {}, {},
            {0, 1, 2, 3, 4, 5, 6, 7, 8, 9}, {}, {}};
    public static final String[] TARGETS_BG = {"сила", "крака", "бедра", "прасци", "седалище", "корем", "ръце", "гърди",
            "гръб", "кръст", "трапец", "импулс", "пауза", "честота", "почивки", "всички канали", "дълбочина",
            "втори импулс"};

    public static final class Cmd {
        public final String target;
        /** up / down / off / on / set (to {@link #value}) */
        public final String dir;
        public final boolean small;
        /** "на 50 %", "до 30": the level asked for; −1 = a step. */
        public int value = -1;

        Cmd(String target, String dir, boolean small) {
            this.target = target;
            this.dir = dir;
            this.small = small;
        }

        Cmd(String target, int value) {
            this(target, "set", false);
            this.value = value;
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
        /** "приключи след 3 минути", "още 5 минути": the active part ends in this many minutes (action end_in). */
        public int minutes = -1;
        /** The verb read in this part and its "малко" (parse's own use). */
        String dir;
        boolean small;

        public boolean isEmpty() {
            return commands.isEmpty() && actions.isEmpty();
        }
    }

    /** How the recognizer may write the wake word (owner: "тренер"; the dictionary form is "треньор"). */
    static final String[] WAKE = {"тренер", "треньор", "трениор", "трейнър", "trainer", "trener",
            // the head of the phrase cut off or misheard by the cloud ear (stt_log 1.1.595: "Ренер увеличи всичко")
            "ренер", "реньор"};

    /** The most a spoken / AI command may raise a level, in points (owner, 1.1.596). */
    public static final int VOICE_MAX_UP = 10;

    /**
     * A command that is only a number is never a level (owner, 1.1.596: "Окей тренер, стоп" came back as "100" and set
     * the suit to 100). "сто" / "100" alone is the misheard "стоп": a pause, the safe side. Other bare numbers: nothing.
     */
    public static String bareNumber(String cmd) {
        String n = cmd == null ? "" : cmd.toLowerCase(Locale.ROOT).replaceAll("[^\\p{L}\\p{N}%]+", " ").trim();
        if (n.matches("(?:на |до )?(?:100|сто)(?: %| процента)?")) {
            return "пауза";
        }
        if (n.matches("(?:на |до )?\\d{1,3}(?: ?%| процента)?")) {
            return "";
        }
        return null;
    }

    /** "окей" / "okay" alone, with or without a wake word: the head of the wake phrase "окей тренер", no command. */
    public static boolean onlyWakeFragment(String text) {
        String n = text == null ? "" : text.toLowerCase(Locale.ROOT).replaceAll("[^\\p{L}\\p{N}]+", " ").trim();
        return n.equals("окей") || n.equals("окай") || n.equals("ок") || n.equals("okay") || n.equals("ok")
                || n.equals("окей тренер") || n.equals("окай тренер");
    }

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

    private static final String[][] UNITS = {{"едно", "1"}, {"единица", "1"}, {"един", "1"}, {"една", "1"}, {"едно", "1"}, {"два", "2"}, {"две", "2"},
            {"три", "3"}, {"четири", "4"}, {"пет", "5"}, {"шест", "6"}, {"седем", "7"}, {"осем", "8"}, {"девет", "9"}};
    private static final String[][] TEENS_TENS = {{"десет", "10"}, {"единадесет", "11"}, {"единайсет", "11"},
            {"дванадесет", "12"}, {"дванайсет", "12"}, {"тринадесет", "13"}, {"тринайсет", "13"},
            {"четиринадесет", "14"}, {"четиринайсет", "14"}, {"петнадесет", "15"}, {"петнайсет", "15"},
            {"шестнадесет", "16"}, {"шестнайсет", "16"}, {"седемнадесет", "17"}, {"седемнайсет", "17"},
            {"осемнадесет", "18"}, {"осемнайсет", "18"}, {"деветнадесет", "19"}, {"деветнайсет", "19"},
            {"двадесет", "20"}, {"двайсет", "20"}, {"тридесет", "30"}, {"трийсет", "30"}, {"четиридесет", "40"},
            {"четирийсет", "40"}, {"петдесет", "50"}, {"шестдесет", "60"}, {"седемдесет", "70"}, {"осемдесет", "80"},
            {"деветдесет", "90"}, {"сто", "100"}};

    /**
     * Numbers said in words become digits where a level or a step is meant (owner, 1.1.556: "увеличи с един процент"):
     * after "с / на / до" or before "процент"; "двадесет и пет" → 25. Elsewhere words stay words ("три клякания").
     */
    public static String numbers(String t) {
        String[] w = t.split(" ", -1);
        List<String> out = new ArrayList<String>();
        for (int i = 0; i < w.length; i++) {
            String n = num(w[i]);
            boolean ctx = n != null && ((i > 0 && ("с".equals(w[i - 1]) || "на".equals(w[i - 1]) || "до".equals(w[i - 1])
                    || in(w[i - 1], UP_WORDS) || in(w[i - 1], DOWN_WORDS)))
                    || (i + 1 < w.length && w[i + 1].startsWith("процент"))
                    || (i + 3 < w.length && "и".equals(w[i + 1]) && w[i + 3].startsWith("процент")));
            if (!ctx) {
                out.add(w[i]);
                continue;
            }
            int v = Integer.parseInt(n);
            // "двадесет и пет": tens + "и" + a unit
            if (v >= 20 && v % 10 == 0 && v < 100 && i + 2 < w.length && "и".equals(w[i + 1]) && unit(w[i + 2]) != null) {
                v += Integer.parseInt(unit(w[i + 2]));
                i += 2;
            }
            out.add(String.valueOf(v));
        }
        StringBuilder b = new StringBuilder();
        for (int i = 0; i < out.size(); i++) {
            if (i > 0) {
                b.append(' ');
            }
            b.append(out.get(i));
        }
        return b.toString();
    }

    private static boolean in(String x, String[] set) {
        for (String s : set) {
            if (s.equals(x)) {
                return true;
            }
        }
        return false;
    }

    private static String unit(String x) {
        for (String[] u : UNITS) {
            if (u[0].equals(x)) {
                return u[1];
            }
        }
        return null;
    }

    private static String num(String x) {
        String u = unit(x);
        if (u != null) {
            return u;
        }
        for (String[] u2 : TEENS_TENS) {
            if (u2[0].equals(x)) {
                return u2[1];
            }
        }
        return null;
    }

    /** Verbs of direction (and their synonyms) a number after which is a step: "увеличи 1", "свали 5". */
    static final String[] UP_WORDS = {"увеличи", "усили", "засили", "качи", "вдигни", "повиши", "повече", "по-силно",
            "по силно", "добави", "плюс"};
    static final String[] DOWN_WORDS = {"намали", "свали", "отслаби", "смъкни", "понижи", "снижи", "по-слабо", "по слабо",
            "по-малко", "по малко", "по-леко", "по леко", "махни", "минус"};

    /**
     * Could the server's command reader find a command here (1.1.565)? A verb of direction or of the controls, a body
     * part, a setting or a number. No → straight to the coach (the reader cost ~0.7 s for nothing).
     */
    public static boolean mayBeCommand(String text) {
        if (text == null) {
            return false;
        }
        String t = " " + text.toLowerCase(Locale.ROOT).replace('ѝ', 'и') + " ";
        if (has(t, UP_WORDS) || has(t, DOWN_WORDS) || hasMuscle(t) || t.matches(".*\\d.*")) {
            return true;
        }
        return has(t, "изключи", "включи", "махни", "спри", "пусни", "пауза", "стоп", "продължи", "смени", "прескочи",
                "следващ", "стига", "почини", "почивка", "хайде", "давай", "импулс", "честот", "пауз", "дълбо", "сила",
                "силно", "слабо", "леко", "двоен", "втори", "музик", "приключ", "край", "възстанов");
    }

    public static Result parse(String text) {
        Result all = new Result();
        if (text == null) {
            return all;
        }
        // "увеличи ръцете и намали дупето": each part with its own verb; a part with none takes the one before
        // ("увеличи ръцете и краката")
        String[] parts = (" " + numbers(text.toLowerCase(Locale.ROOT).replace('ѝ', 'и')) + " ")
                .split("\\s+и\\s+|\\s+а\\s+|,|;|\\s+после\\s+|\\s+също\\s+");
        String lastDir = null;
        boolean lastSmall = false;
        for (String part : parts) {
            if (part.trim().length() == 0) {
                continue;
            }
            Result r = parseOne(part, lastDir, lastSmall);
            if (r.dir != null && !"set".equals(r.dir)) {
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
            if (r.minutes >= 0) {
                all.minutes = r.minutes;
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
        // what the trainer asks to know: answered on the tablet at once, no AI (1.1.551)
        if (has(t, "колко остава", "колко време остава", "колко още", "колко минути остават", "колко минути още")) {
            r.actions.add("ask_time");
            return r;
        }
        if (has(t, " пулс")) {                                  // the word, not "импулс"
            r.actions.add("ask_hr");
            return r;
        }
        // the impulse now, how long it holds, why the tablet lowered it (1.1.565: answered at once, no AI)
        if (has(t, "каква е честотата", "на колко херца", "колко херца", "какъв е импулсът", "какви са параметрите",
                "колко още издържа", "колко издържа", "защо свали", "защо намали честотата", "защо падна честотата",
                "какво промени", "какво направи с честотата")) {
            r.actions.add("ask_mode");
            return r;
        }
        if (has(t, "колко е силата", "каква е силата", "на колко е силата", "на колко съм")) {
            r.actions.add("ask_strength");
            return r;
        }
        // the music (before pause / stop / next: "спри музиката" is no pause of the training)
        if (has(t, "музик", "песен", "песента", "парче")) {
            if (has(t, "следващ", "друга", "друго", "смени", "напред")) {
                r.actions.add("music_next");
            } else if (has(t, "предишн", "назад", "върни")) {
                r.actions.add("music_prev");
            } else {
                r.actions.add("music_toggle");
            }
            return r;
        }
        // the end of the active part: "приключи след 3 минути", "още 5 минути", "край след 2"
        java.util.regex.Matcher end = java.util.regex.Pattern
                .compile("(?:след|още|до|за)\\s*(\\d{1,2})\\s*(?:мин|минути|минута)?").matcher(t);
        if (end.find() && has(t, "минут", "приключи", "край", "свърши", "спри след")) {
            r.minutes = Math.max(0, Math.min(25, Integer.parseInt(end.group(1))));
            r.actions.add("end_in");
            return r;
        }
        // the double impulse first: "спри двойния импулс" is no pause, "пусни втория импулс" no resume (1.1.547);
        // its strength is a step, not off ("намали втория импулс", 1.1.551)
        if (has(t, "двоен", "двойн", "втори импулс", "втория импулс", "втори импулси", "активна пауза", "активната пауза")) {
            boolean up = has(t, "увеличи", "по-силно", "по силно", "усили", "засили", "качи", "вдигни", "повече");
            boolean down = has(t, "намали", "по-слабо", "по слабо", "по-леко", "по леко", "свали", "по-малко");
            if (up || down) {
                r.commands.add(new Cmd("second", up ? "up" : "down", has(t, "малко")));
                r.dir = null;
                return r;
            }
            boolean off = has(t, "спри", "изключи", "махни", "без ", "стоп", "премахни");
            r.actions.add(off ? "double_off" : "double_on");
            r.dir = null;
            return r;
        }
        // the impulse's depth (its width, µs): "по-дълбок импулс", "по-плитък"
        if (has(t, "дълбок", "дълбоко", "дълбочина", "плитък", "плитко", "повърхност", "по-широк", "по-тесен", "ширина")) {
            boolean deeper = has(t, "по-дълбок", "по дълбок", "по-дълбоко", "по дълбоко", "по-широк", "увеличи", "повече")
                    && !has(t, "плит", "повърхност", "тесен", "намали");
            r.commands.add(new Cmd("width", deeper ? "up" : "down", has(t, "малко")));
            r.dir = null;
            return r;
        }
        // an absolute level: "силата на 50", "краката до 30 процента", "сила 40" — set, not a step
        // "увеличи с 10": a step of 10 (up / down), not the level 10
        java.util.regex.Matcher by = java.util.regex.Pattern.compile("\\sс\\s*(\\d{1,3})(?=\\s|%)").matcher(t);
        Integer stepBy = by.find() ? Integer.valueOf(Integer.parseInt(by.group(1))) : null;
        // owner, 1.1.556: "увеличи 1" = "увеличи с 1" = "увеличи с 1 %" — a number after a verb of direction is a step
        // of that many points; only "на / до N" is a level ("намали 5" set the strength to 5 before)
        boolean upW = has(t, UP_WORDS);
        boolean downW = has(t, DOWN_WORDS);
        if (stepBy == null && (upW || downW)
                && !java.util.regex.Pattern.compile("(?:^|\\s)(?:на|до)\\s*\\d{1,3}").matcher(t).find()) {
            java.util.regex.Matcher bare = java.util.regex.Pattern.compile("(?:^|\\s)(\\d{1,3})(?=\\s|%|$)").matcher(t);
            if (bare.find()) {
                stepBy = Integer.valueOf(Integer.parseInt(bare.group(1)));
            }
        }
        java.util.regex.Matcher num = java.util.regex.Pattern.compile("(?:^|\\s)(?:на|до)?\\s*(\\d{1,3})\\s*(?:%|процента|процент)?(?=\\s|$)")
                .matcher(t);
        if (stepBy == null && num.find()) {
            int v = Math.max(0, Math.min(100, Integer.parseInt(num.group(1))));
            boolean any = false;
            for (int i = 1; i < WORDS.length; i++) {
                for (int j = 1; j < WORDS[i].length; j++) {
                    String tg = WORDS[i][0];
                    if (t.contains(WORDS[i][j]) && !contains(r, tg) && AiCoach.indexOf(tg, TARGETS) <= 10
                            && !("legs".equals(tg) && (contains(r, "thighs") || contains(r, "calves")))) {
                        r.commands.add(new Cmd(tg, v));
                        any = true;
                        break;
                    }
                }
            }
            if (!any && (has(t, "сила", "силата", "интензитет", "тока") || has(t, "увеличи", "намали", "вдигни", "свали", "качи", "дай"))) {
                r.commands.add(new Cmd("strength", v));
            }
            if (!r.commands.isEmpty()) {
                r.dir = "set";
                return r;
            }
        }
        boolean small = has(t, "малко", "леко ", "мъничко", "съвсем малко");
        String dir = has(t, "намали", "по-слабо", "по слабо", "по-малко", "по малко", "свали", "отслаби", "по-леко", "по леко",
                "смъкни", "понижи", "снижи", "минус")
                ? "down" : has(t, "увеличи", "по-силно", "по силно", "повече", "качи", "вдигни", "засили", "усили", "повиши", "плюс")
                ? "up" : has(t, "изключи", "махни", "без ") ? "off" : has(t, "включи", "добави") ? "on" : null;
        if (stepBy != null && upW != downW) {
            dir = upW ? "up" : "down";                         // "добави 5" / "махни 5": a step, not on / off
        }
        r.dir = dir;
        r.small = small;
        if (dir == null && inherited != null && hasMuscle(t)) {
            dir = inherited;                                   // "… и краката": the verb before (and its "малко")
            small = small || inheritedSmall;
        }
        // the impulse's / the pause's length
        // "по-дълъг импулс" (the singular has "ъ" before "г" — 1.1.549, found by tools/app-sim SimCoachAll)
        boolean longer = has(t, "по-дълг", "по дълг", "по-дълъг", "по дълъг", "удължи");
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
            // ...but a body place the tablet has no word for ("долната част на тялото", "отзад") is not the whole
            // suit: leave it to the AI reader (1.1.552)
            if (r.commands.isEmpty() && ("up".equals(dir) || "down".equals(dir))
                    && !has(t, "част", "тялото", "долн", "горн", "отзад", "отпред", "страна", "лява", "ляв ", "дясн")) {
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
        if (stepBy != null) {
            for (Cmd c : r.commands) {
                c.value = Math.max(1, Math.min(100, stepBy));     // the size of this step
            }
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
            read(m, r);
            r.coach = r.isEmpty() || Boolean.TRUE.equals(m.get("coach"));
        } catch (RuntimeException e) {
            r.coach = true;
        }
        return r;
    }

    /**
     * What the coach SAID it does, when it sent nothing (the real model, 1.1.552: "Намалям краката…" with no command —
     * the words and the suit disagreed). Only its own first-person verbs count ("намалявам", "увеличавам",
     * "усилвам"…), sentence by sentence — "вдигни ръцете над главата" is an exercise, never a command.
     */
    public static Result fromReply(String reply) {
        Result out = new Result();
        if (reply == null) {
            return out;
        }
        for (String sentence : reply.toLowerCase(Locale.ROOT).split("[.!?;]")) {
            String v = null;
            if (hedged(sentence)) {
                continue;                                         // "не намалявам", "мога да увелича", "ще увелича…"
            }
            for (String w : sentence.split("[\\s,]+")) {
                if (w.matches("намал(ям|явам|яваме|яме)|свал(ям|яме)|отслаб(вам|ваме)")) {
                    v = "намали";
                } else if (w.matches("увелич(авам|а|аваме|им)|усил(вам|ваме|я)|вдиг(ам|аме|на)|кач(вам|ваме)|засил(вам|ваме)")) {
                    v = "увеличи";
                }
                if (v != null) {
                    sentence = sentence.replace(w, v);
                    break;
                }
            }
            if (v == null) {
                continue;
            }
            Result r = parse(sentence);
            for (Cmd c : r.commands) {
                // a bare "strength" is only the strength when the sentence says so ("вдигам темпото" is not)
                if ("strength".equals(c.target) && !sentence.matches(".*(сил|тока|интензитет|импулс).*")) {
                    continue;
                }
                if (!contains(out, c.target) && out.commands.size() < 6) {
                    out.commands.add(c);
                }
            }
        }
        return out;
    }

    /** A negation, an offer, a condition or a future: what the coach does not do (yet) by saying it. */
    private static boolean hedged(String sentence) {
        for (String w : sentence.split("[\\s,]+")) {
            if (w.matches("не|няма|ако|мога|може|можем|бих|искаш|ще|нека|дали|когато|щом")) {
                return true;
            }
        }
        return false;
    }

    /** The coach's own {@code commands} (a channel, the impulse…; 1.1.552): the answer to its question, done. */
    public static Result fromCoach(Map<?, ?> m) {
        Result r = new Result();
        try {
            if (m != null) {
                read(m, r);
            }
        } catch (RuntimeException e) {
            r.commands.clear();
        }
        r.actions.clear();                               // the coach's actions go its own way (liveApply)
        return r;
    }

    private static void read(Map<?, ?> m, Result r) {
        {
            if (m.get("commands") instanceof List) {
                for (Object o : (List<?>) m.get("commands")) {
                    if (o instanceof Map) {
                        Object tg = ((Map<?, ?>) o).get("target");
                        Object d = ((Map<?, ?>) o).get("dir");
                        Object am = ((Map<?, ?>) o).get("amount");
                        int amount = am instanceof Number ? Math.max(0, Math.min(100, ((Number) am).intValue())) : -1;
                        if (tg instanceof String && AiCoach.indexOf((String) tg, TARGETS) >= 0 && d instanceof String
                                && AiCoach.indexOf((String) d, new String[] {"up", "down", "off", "on", "set"}) >= 0
                                && r.commands.size() < 6 && (!"set".equals(d) || amount >= 0)) {
                            // amount (1.1.556): points of the 0–100 scale — the step's size, or the level for "set"
                            Cmd c = "set".equals(d) ? new Cmd((String) tg, amount)
                                    : new Cmd((String) tg, (String) d, "small".equals(((Map<?, ?>) o).get("step")));
                            if (!"set".equals(d) && amount > 0 && ("up".equals(d) || "down".equals(d))) {
                                c.value = amount;
                            }
                            r.commands.add(c);
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
        }
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
