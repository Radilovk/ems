package com.isaigu.gymapp.wearable;

import android.content.Context;

import com.isaigu.gymapp.bean.TrainUser;
import com.isaigu.gymapp.train.model.TrainItem;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * The manual mode's starting values: a client who comes into a training slot gets their own saved settings for
 * that program (diskette / ⚙, {@link ClientPrograms}); otherwise the row's program exactly as it is. No automatic
 * adaptation (owner, 1.1.323) — the only automatic thing is the absolute limits at every send (SafeGuard).
 */
public final class ManualDefaults {
    /** Slot → "client|program" last seen there (applied once per arrival / program change). */
    private static final Map<Integer, String> SEEN = new HashMap<Integer, String>();

    private ManualDefaults() {}

    /** SessionRecorder.tick, every second. */
    static void tick(Context c, List<TrainItem> items) {
        if (items == null) {
            return;
        }
        ClientPrograms.init(c);
        SecondParts.tick(c, items);
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
                SEEN.put(i, now);
                if (it.data.start || assisted()) {
                    continue;
                }
                // The client's own settings for this program (diskette / ⚙) come first.
                if (ClientPrograms.applyTo(it, u)) {
                    continue;
                }
                // Otherwise the row keeps the program as it is: no automatic adaptation in the manual mode
                // (owner, 1.1.323) — only the absolute limits (SafeGuard) at every send.
            }
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
}
