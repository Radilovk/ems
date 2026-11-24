package com.isaigu.gymapp.ai;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * What the tablet says aloud — natural Bulgarian sentences, never symbols (owner, 1.1.551: "no colons, no needless
 * signs — speak naturally"). The chat keeps its short form ("крака 28 % · сила 30"); the voice gets "Краката са на 28
 * процента. Силата е 30.". Anything else (the coach's own words) is only cleaned of symbols.
 */
public final class AiSpeak {
    private AiSpeak() {}

    /** The muscle / target words of the short form → the sentence's subject and its verb. */
    private static final String[][] SUBJECT = {
            {"крака", "Краката са"}, {"бедра", "Бедрата са"}, {"прасци", "Прасците са"}, {"седалище", "Седалището е"},
            {"корем", "Коремът е"}, {"ръце", "Ръцете са"}, {"гърди", "Гърдите са"}, {"гръб", "Гърбът е"},
            {"кръст", "Кръстът е"}, {"трапец", "Трапецът е"}, {"всички канали", "Всички канали са"}};
    private static final String[][] OBJECT = {
            {"крака", "краката"}, {"бедра", "бедрата"}, {"прасци", "прасците"}, {"седалище", "седалището"},
            {"корем", "корема"}, {"ръце", "ръцете"}, {"гърди", "гърдите"}, {"гръб", "гърба"}, {"кръст", "кръста"},
            {"трапец", "трапеца"}, {"всички канали", "всички канали"}};

    private static final Pattern CHANNEL = Pattern.compile("^(.+?) (\\d+) %$");
    private static final Pattern OFF = Pattern.compile("^(.+?) изкл\\.$");
    private static final Pattern SIGNED = Pattern.compile("^(импулс|пауза|Hz|почивки|дълбочина) ([+−-]?)(\\d+) ?(s|%)$");

    /** The short form of what was done (parts joined by " · ") → sentences. */
    public static String natural(String done) {
        if (done == null || done.trim().length() == 0) {
            return "";
        }
        if (!AiText.t("bg", "en").equals("bg")) {
            return clean(done.replace(" · ", ". "));
        }
        StringBuilder b = new StringBuilder();
        for (String part : done.split(" · ")) {
            String s = sentence(part.trim());
            if (s.length() > 0) {
                b.append(b.length() > 0 ? " " : "").append(s);
            }
        }
        return clean(b.toString());
    }

    static String sentence(String p) {
        if (p.length() == 0) {
            return "";
        }
        Matcher m = CHANNEL.matcher(p);
        if (m.matches()) {
            for (String[] s : SUBJECT) {
                if (s[0].equals(m.group(1))) {
                    return s[1] + " на " + m.group(2) + " процента.";
                }
            }
            if (m.group(1).equals("втори импулс")) {
                return "Вторият импулс е на " + m.group(2) + " процента от програмата.";
            }
        }
        m = OFF.matcher(p);
        if (m.matches()) {
            for (String[] s : OBJECT) {
                if (s[0].equals(m.group(1))) {
                    return "Изключих " + s[1] + ".";
                }
            }
        }
        m = SIGNED.matcher(p);
        if (m.matches()) {
            String what = m.group(1);
            boolean less = m.group(2).equals("−") || m.group(2).equals("-");
            String n = m.group(3);
            boolean zero = "0".equals(n);
            if ("импулс".equals(what)) {
                return zero ? "Импулсът е както е по програма." : "Импулсът е с " + seconds(n) + (less ? " по-къс." : " по-дълъг.");
            }
            if ("пауза".equals(what)) {
                return zero ? "Паузата между импулсите е по програма."
                        : "Паузата между импулсите е с " + seconds(n) + (less ? " по-къса." : " по-дълга.");
            }
            if ("Hz".equals(what)) {
                return zero ? "Честотата е по програма." : "Честотата е с " + n + " процента" + (less ? " по-ниска." : " по-висока.");
            }
            if ("почивки".equals(what)) {
                return zero ? "Почивките са по програма." : "Почивките са с " + n + " процента" + (less ? " по-кратки." : " по-дълги.");
            }
            if ("дълбочина".equals(what)) {
                return zero ? "Дълбочината на импулса е по програма."
                        : "Импулсът е с " + n + " процента" + (less ? " по-плитък." : " по-дълбок.");
            }
        }
        if (p.startsWith("сила ")) {
            return "Силата е " + p.substring(5).trim() + ".";
        }
        if (p.startsWith("остават ")) {
            return "Остават " + p.substring(8).replace(" мин", " минути").trim() + ".";
        }
        if (p.startsWith("пулс ")) {
            return "Пулсът е " + p.substring(5).trim() + " удара в минута.";
        }
        if (p.startsWith("край след ")) {
            return "Добре, приключваме след " + p.substring(10).replace(" мин", " минути").trim() + ".";
        }
        switch (p) {
            case "пауза": return "Пауза.";
            case "продължаваме": return "Продължаваме.";
            case "старт": return "Започваме.";
            case "тече": return "Тренировката тече.";
            case "на пауза е": return "Вече е на пауза.";
            case "следващото упражнение":
            case "следващото": return "Минаваме на следващото упражнение.";
            case "двоен импулс": return "Включих двойния импулс.";
            case "без двоен импулс": return "Изключих двойния импулс.";
            case "към възстановяване": return "Минаваме към възстановяване.";
            case "край на тренировката": return "Край на тренировката.";
            case "музика": return "Добре.";
            case "следваща песен": return "Следващата песен.";
            case "предишна песен": return "Предишната песен.";
            case "няма пулс": return "Не виждам пулс, гривната не е свързана.";
            default: break;
        }
        if (p.startsWith("почивка е")) {
            return "Сега е почивка. Кажи продължи, когато си готов.";
        }
        return clean(p) + ".";
    }

    private static String seconds(String n) {
        return "1".equals(n) ? "една секунда" : "2".equals(n) ? "две секунди" : n + " секунди";
    }

    /** No symbol is read out: colons, middots, arrows, quotes, brackets go; % and + become words. */
    public static String clean(String t) {
        if (t == null) {
            return "";
        }
        String s = t.replace("✓", "").replace("✦", "").replace("▶", "").replace("⏸", "").replace("⏭", "")
                .replace("→", ",").replace("·", ",").replace("•", ",").replace(":", ",").replace(";", ",")
                .replace("„", "").replace("“", "").replace("”", "").replace("\"", "").replace("«", "").replace("»", "")
                .replace("(", ", ").replace(")", ", ").replace("[", "").replace("]", "").replace("*", "").replace("#", "")
                .replace("_", " ").replace("/", " на ").replace(" — ", ", ").replace(" – ", ", ").replace("—", ", ");
        s = s.replaceAll("(\\d)\\s*%", "$1 процента").replace("%", " процента");
        s = s.replaceAll("\\+\\s*(\\d)", "плюс $1").replaceAll("[−]\\s*(\\d)", "минус $1");
        s = s.replaceAll("(\\d)\\s*Hz\\b", "$1 херца").replaceAll("(\\d)\\s*µs\\b", "$1 микросекунди")
                .replaceAll("(\\d) s\\b", "$1 секунди");
        s = s.replaceAll("\\s*,\\s*,+", ",").replaceAll("\\s+,", ",").replaceAll("\\s{2,}", " ").replaceAll("^[,\\s]+", "")
                .replaceAll("[,\\s]+$", "").trim();
        return s;
    }
}
