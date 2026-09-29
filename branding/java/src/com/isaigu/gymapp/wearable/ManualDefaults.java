package com.isaigu.gymapp.wearable;

import android.content.Context;

import com.isaigu.gymapp.bean.TrainUser;
import com.isaigu.gymapp.train.model.TrainItem;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * The manual mode's starting values: a client who comes into a training slot and has no settings of
 * their own yet (no NextPlan snapshot) gets the slot's SAVED program ("Test" or any other) with their own
 * corrections — fitness, age, goal, focus zones and state ({@link ProgramFit}); with personalisation off,
 * the saved program exactly. Never the strength. Returning clients keep their own settings.
 */
public final class ManualDefaults {
    /** Slot → the client last seen there (applied once per arrival). */
    /** Slot → "client|program" last seen there (applied once per arrival / program change). */
    private static final Map<Integer, String> SEEN = new HashMap<Integer, String>();
    private static boolean primed;

    private ManualDefaults() {}

    /** SessionRecorder.tick, every second. */
    static void tick(Context c, List<TrainItem> items) {
        if (items == null) {
            return;
        }
        ClientPrograms.init(c);
        try {
            for (int i = 0; i < items.size(); i++) {
                TrainItem it = items.get(i);
                boolean has = it != null && !it.isEmpty() && it.data != null && it.data.trainUser != null;
                String was = SEEN.get(i);
                if (!has) {
                    SEEN.remove(i);
                    continue;
                }
                TrainUser u = it.data.trainUser;
                String name = it.getTrainProgram() != null ? it.getTrainProgram().name : "";
                String now = u.id + "|" + name;
                if (now.equals(was)) {
                    continue;
                }
                boolean newClient = was == null || !was.startsWith(u.id + "|");
                SEEN.put(i, now);
                if (it.data.start || assisted()) {
                    continue;
                }
                // The client's own settings for this program (diskette / ⚙) come first.
                if (ClientPrograms.applyTo(it, u)) {
                    continue;
                }
                // The slots already filled when the app starts are the trainer's as they were.
                if (primed && newClient) {
                    applyTo(c, it, u);
                }
            }
            primed = true;
        } catch (Throwable t) {
            WearableBleDiagLog.log("manual", "defaults: " + t);
        }
        ProgramFit.tick(c, items);
    }

    static boolean assisted() {
        try {
            return com.isaigu.gymapp.ai.AiSession.getStage() != com.isaigu.gymapp.ai.AiSession.Stage.IDLE
                    || com.isaigu.gymapp.ai.AutoSession.getStage() != com.isaigu.gymapp.ai.AutoSession.Stage.IDLE;
        } catch (Throwable t) {
            return false;
        }
    }

    static void applyTo(Context c, TrainItem it, TrainUser u) {
        if (c == null || NextPlan.load(c, u.id) != null) {
            return;                                        // a returning client keeps their settings
        }
        ProgramFit.applyTo(c, it, u);
    }
}
