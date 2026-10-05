package com.isaigu.gymapp.ai;

import com.isaigu.gymapp.train.utils.MasterStrengthControl;
import com.isaigu.gymapp.train.utils.MusicSync;

/**
 * Who drives the impulse of the rows right now (1.1.331): one answer for every mode, so two writers never fight
 * over the same strength. An engine starts only when nobody else holds the output, and the pulse module writes only
 * in the manual mode (the trainer's hands). Before 1.1.331 each mode had its own copy of this check, only at its
 * start, and music / the pulse module checked nobody.
 */
public final class OutputOwner {
    public static final String AI = "ai";
    public static final String AUTO = "auto";
    public static final String MAP = "map";
    public static final String MUSIC = "music";

    private OutputOwner() {}

    /** The engine that holds the output, null = the trainer (manual mode). */
    public static String holder() {
        try {
            if (AutoSession.isActive() || AutoSession.ownsOutput()) {
                return AUTO;
            }
            if (AiSession.getStage() != AiSession.Stage.IDLE || AiSession.ownsOutput()) {
                return AI;
            }
            if (MapRunner.isRunning()) {
                return MAP;
            }
        } catch (Throwable ignored) {
        }
        try {
            if (MusicSync.isRunning() || MasterStrengthControl.isSyncActive()) {
                return MUSIC;
            }
        } catch (Throwable ignored) {
        }
        return null;
    }

    /**
     * True while an engine actually drives the strength (AI / Auto stimulating, a map running, music sync on) —
     * the pulse module keeps its hands off. An AI / Auto card only open (setup) does not count.
     */
    public static boolean engineDrives() {
        try {
            if (AiSession.ownsOutput() || MapRunner.isRunning()) {
                return true;
            }
        } catch (Throwable ignored) {
        }
        try {
            return MusicSync.isRunning() || MasterStrengthControl.isSyncActive();
        } catch (Throwable ignored) {
            return false;
        }
    }

    /** Why {@code who} may not start now (another engine holds the output), or null. */
    public static String conflict(String who) {
        String h = holder();
        if (h == null || h.equals(who)) {
            return null;
        }
        String bg;
        String en;
        if (AUTO.equals(h)) {
            bg = "Първо затвори Авто.";
            en = "Close Auto first.";
        } else if (AI.equals(h)) {
            bg = "Първо затвори AI сесията.";
            en = "Close the AI session first.";
        } else if (MAP.equals(h)) {
            bg = "Първо спри картата от Тренировки.";
            en = "Stop the Workouts map first.";
        } else {
            bg = "Първо спри музикалния синхрон: той държи силата.";
            en = "Stop music sync first: it holds the strength.";
        }
        return AiText.t(bg, en);
    }
}
