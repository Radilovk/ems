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

    static void reset() {
        lastPhase = null;
        lastExercise = null;
        done = false;
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
                say(AiText.t("Край. Браво — пий вода и се раздвижи леко.", "The end. Well done — drink some water."));
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
                say(AiText.t("Възстановяване — мускулите се отпускат, импулсът е лек.",
                        "Recovery — the muscles let go, the impulse is light."));
            } else {
                say((first ? "" : AiText.t("Основна част: ", "Main part: ")) + ph.nameBg + ".");
            }
        }
        String ex = e.getExercise();
        if (ex != null && !ex.equals(lastExercise)) {
            boolean first = lastExercise == null;
            lastExercise = ex;
            String n = AutoTemplates.name(ex);
            if (n != null && n.length() > 0) {
                say((first ? AiText.t("Упражнение: ", "Exercise: ") : AiText.t("Следва: ", "Next: ")) + n + ".");
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
                say(AiText.t("Край. Браво — пий вода и се раздвижи леко.", "The end. Well done — drink some water."));
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
            say((first ? AiText.t("Започваме: ", "We start: ") : AiText.t("Следва: ", "Next: ")) + n
                    + (sets > 1 ? ", " + sets + AiText.t(" серии.", " sets.") : "."));
        }
    }

    /** The AI's workout ended (stopped or done): its last word. */
    static void end() {
        if (!done) {
            done = true;
            say(AiText.t("Край. Браво — пий вода и се раздвижи леко.", "The end. Well done — drink some water."));
        }
    }

    private static void say(String text) {
        com.isaigu.gymapp.wearable.WearableBleDiagLog.log("ai-train", "announce: " + text);
        WakeListener.announce(text);
    }
}
