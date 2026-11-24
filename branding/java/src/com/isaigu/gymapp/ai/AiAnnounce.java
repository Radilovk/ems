package com.isaigu.gymapp.ai;

/**
 * The AI training says its steps aloud (owner, 1.1.548): the warm-up, the main part, each new exercise, the recovery,
 * the end — in the tablet's own voice, one short sentence, never over the trainer (WakeListener.announce waits its
 * turn). No "тренер" / "тренировка" in the words: they must not wake the spotter.
 */
public final class AiAnnounce {
    private AiAnnounce() {}

    private static String lastPhase;
    private static String lastExercise;
    private static boolean done;
    private static boolean mainSaid;

    static void reset() {
        lastPhase = null;
        lastExercise = null;
        done = false;
        mainSaid = false;
    }

    /** AutoSession's tick in an AI training. */
    static void auto(AutoEngine e) {
        if (e == null) {
            return;
        }
        AutoEngine.State st = e.getState();
        if (st == AutoEngine.State.DONE || st == AutoEngine.State.STOPPED) {
            if (!done) {
                done = true;
                say(AiText.t("Край. Браво. Пий вода и се раздвижи леко.", "That is the end. Well done. Drink some water."));
            }
            return;
        }
        if (st != AutoEngine.State.RUN) {
            return;
        }
        AutoModel.Phase ph = e.phase();
        String id = ph != null ? ph.id + ":" + e.getPhaseIndex() : null;
        if (id != null && !id.equals(lastPhase)) {
            boolean first = lastPhase == null;
            lastPhase = id;
            lastExercise = null;
            if ("WARMUP".equals(ph.id)) {
                say(AiText.t("Започваме със загрявка.", "We start with the warm-up."));
            } else if (ph.isCooldown()) {
                say(AiText.t("Сега възстановяване. Импулсът е лек, мускулите се отпускат.",
                        "Now the recovery. The impulse is light, the muscles let go."));
            } else {
                say(!mainSaid ? AiText.t("Започва основната част.", "The main part begins.")
                        : AiText.t("Следващата част е ", "The next part is ") + lower(ph.nameBg) + ".");
                mainSaid = true;
            }
        }
        String ex = e.getExercise();
        if (ex != null && !ex.equals(lastExercise)) {
            boolean first = lastExercise == null;
            lastExercise = ex;
            String n = AutoTemplates.name(ex);
            if (n != null && n.length() > 0) {
                say((first ? AiText.t("Първото упражнение е ", "The first exercise is ")
                        : AiText.t("Следващото упражнение е ", "The next exercise is ")) + lower(n) + ".");
            }
        }
    }

    /** MapRunner's tick for the AI's own workout. */
    static void map() {
        Workout w = MapRunner.map();
        MapClock k = MapRunner.clock();
        if (w == null || k == null || MapRunner.isWaiting()) {
            return;
        }
        if (k.isDone()) {
            if (!done) {
                done = true;
                say(AiText.t("Край. Браво. Пий вода и се раздвижи леко.", "That is the end. Well done. Drink some water."));
            }
            return;
        }
        Workout.Block b = k.block();
        if (b == null || AiMapBoard.isBreak(b)) {
            return;
        }
        String n = AiMapBoard.label(b);
        if (!n.equals(lastExercise)) {
            boolean first = lastExercise == null;
            lastExercise = n;
            int sets = 0;
            for (Workout.Block y : w.blocks) {
                if (!AiMapBoard.isBreak(y) && n.equals(AiMapBoard.label(y))) {
                    sets++;
                }
            }
            say((first ? AiText.t("Започваме с ", "We start with ") : AiText.t("Следва ", "Next comes "))
                    + lower(n) + (sets > 1 ? AiText.t(", " + count(sets) + " серии.", ", " + sets + " sets.") : "."));
        }
    }

    /** The AI's workout ended (stopped or done): its last word. */
    static void end() {
        if (!done) {
            done = true;
            say(AiText.t("Край. Браво. Пий вода и се раздвижи леко.", "That is the end. Well done. Drink some water."));
        }
    }

    /** "Клек без тежест" in the middle of a sentence: "клек без тежест" (a name like "Румънска тяга" too). */
    static String lower(String n) {
        return n == null || n.length() < 2 ? n : Character.toLowerCase(n.charAt(0)) + n.substring(1);
    }

    static String count(int n) {
        String[] w = {"нула", "една", "две", "три", "четири", "пет", "шест", "седем", "осем", "девет", "десет"};
        return n >= 0 && n < w.length ? w[n] : String.valueOf(n);
    }

    private static void say(String text) {
        com.isaigu.gymapp.wearable.WearableBleDiagLog.log("ai-train", "announce: " + text);
        WakeListener.announce(text);
    }
}
