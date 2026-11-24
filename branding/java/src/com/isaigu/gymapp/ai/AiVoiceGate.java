package com.isaigu.gymapp.ai;

import java.util.Locale;

/**
 * What heard speech may cost an AI call (owner, 1.1.554: "extremely economical in requests and AI"). The tablet's own
 * command reader has already had its turn; this decides only whether the rest goes to the server:
 * <ul>
 * <li><b>noise</b> ("ъъ", "хм", a letter or two) — never;</li>
 * <li><b>filler</b> ("добре", "благодаря", "да", "ок") — only as the answer to the AI's own question;</li>
 * <li><b>the window after the tablet's answer</b> (no "тренер" said) — a question, an answer, or a real sentence
 *     (3+ words); a stray word from the room stays on the tablet;</li>
 * <li><b>a repeat</b> of the same words within 15 s (the recognizer heard it twice, the trainer said it again
 *     before the answer came) — never;</li>
 * <li><b>at most 8 a minute</b> — a TV or a radio in the hall never runs up the bill.</li>
 * </ul>
 * Pure Java (no Android): tested on the JVM (scripts/voice-sim/GateSim.java).
 */
public final class AiVoiceGate {
    private AiVoiceGate() {}

    static final long REPEAT_MS = 15000;
    static final long WINDOW_MS = 60000;
    static final int PER_MINUTE = 8;

    private static final String[] NOISE = {"ъ", "ъъ", "ъм", "ъмм", "хм", "хмм", "мм", "ммм", "аха", "а", "е", "и",
            "о", "у", "ами", "ей", "абе", "uh", "um", "hm", "hmm", "ah", "eh"};
    private static final String[] FILLER = {"добре", "ок", "окей", "ясно", "благодаря", "мерси", "супер", "браво",
            "хубаво", "чудесно", "да", "не", "ага", "чао", "здрасти", "здравей", "моля", "точно", "така", "разбрах",
            "тренер", "ok", "okay", "thanks", "thank", "you", "yes", "no", "good", "fine", "great", "right"};

    private static String last = "";
    private static long lastAt = -REPEAT_MS;
    private static final long[] sent = new long[PER_MINUTE];
    private static int sentIdx;
    /** Why the last phrase stayed on the tablet ("" = it passed) — the diag log and the tests. */
    static String why = "";

    /** May these words go to the AI? Counts the call when they may. question: AiVoiceCmd.isQuestion(text). */
    public static synchronized boolean pass(String text, boolean followUp, boolean answer, boolean question) {
        return pass(text, followUp, answer, question, System.currentTimeMillis());
    }

    static synchronized boolean pass(String text, boolean followUp, boolean answer, boolean question, long now) {
        String n = norm(text);
        String[] w = n.length() == 0 ? new String[0] : n.split(" ");
        int letters = n.replace(" ", "").length();
        if ((letters < 3 && !(answer && allFiller(w))) || all(w, NOISE)) {
            return no("noise", text);
        }
        if (!answer && allFiller(w)) {
            return no("filler", text);
        }
        if (followUp && !answer && !question && w.length < 3) {
            return no("stray", text);
        }
        if (n.equals(last) && now - lastAt < REPEAT_MS) {
            return no("repeat", text);
        }
        long oldest = sent[sentIdx];
        if (oldest != 0 && now - oldest < WINDOW_MS) {
            return no("rate", text);
        }
        sent[sentIdx] = now;
        sentIdx = (sentIdx + 1) % PER_MINUTE;
        last = n;
        lastAt = now;
        why = "";
        return true;
    }

    /** A fresh start (tests; a new session). */
    static synchronized void reset() {
        last = "";
        lastAt = -REPEAT_MS;
        for (int i = 0; i < PER_MINUTE; i++) {
            sent[i] = 0;
        }
        sentIdx = 0;
        why = "";
    }

    private static boolean no(String reason, String text) {
        why = reason;
        try {
            com.isaigu.gymapp.wearable.WearableBleDiagLog.log("ai-gate", reason + " \"" + text + "\"");
        } catch (Throwable ignored) {
            // the JVM tests have no diag log
        }
        return false;
    }

    static String norm(String text) {
        if (text == null) {
            return "";
        }
        String t = text.toLowerCase(Locale.ROOT).replace('ѝ', 'и');
        StringBuilder b = new StringBuilder(t.length());
        boolean sp = true;
        for (int i = 0; i < t.length(); i++) {
            char ch = t.charAt(i);
            if (Character.isLetterOrDigit(ch)) {
                b.append(ch);
                sp = false;
            } else if (!sp) {
                b.append(' ');
                sp = true;
            }
        }
        return b.toString().trim();
    }

    private static boolean all(String[] w, String[] set) {
        if (w.length == 0) {
            return true;
        }
        for (String x : w) {
            if (!in(x, set)) {
                return false;
            }
        }
        return true;
    }

    private static boolean allFiller(String[] w) {
        if (w.length == 0) {
            return true;
        }
        for (String x : w) {
            if (!in(x, FILLER) && !in(x, NOISE)) {
                return false;
            }
        }
        return true;
    }

    private static boolean in(String x, String[] set) {
        for (String s : set) {
            if (s.equals(x)) {
                return true;
            }
        }
        return false;
    }
}
