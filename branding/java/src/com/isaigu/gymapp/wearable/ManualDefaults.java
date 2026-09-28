package com.isaigu.gymapp.wearable;

import android.content.Context;

import com.isaigu.gymapp.ai.AiModel;
import com.isaigu.gymapp.ai.AiPersonal;
import com.isaigu.gymapp.ai.AiProfile;
import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.bean.TrainUser;
import com.isaigu.gymapp.train.model.TrainItem;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * The manual mode's starting values: a client who comes into a training slot and has no settings of
 * their own yet (no NextPlan snapshot) gets the standard set for all four programs (Основен, Мускули,
 * Кардио, Масаж), computed for them — fitness, age, goal, focus zones and state (AiPersonal).
 * Frequency, pulse width, impulse / pause, work time, soft rise and the zones; never the strength.
 * No UI: it simply is what the slot shows. Returning clients keep their own settings.
 */
public final class ManualDefaults {
    /** {hz, µs, on s, off s, work min, ramp ms}: main, muscle, cardio, massage. */
    static final int[][] STANDARD = {
            {85, 350, 4, 4, 20, 500}, {90, 350, 6, 4, 20, 500}, {30, 350, 8, 2, 20, 500}, {5, 300, 10, 2, 20, 0}};

    /** Slot → the client last seen there (applied once per arrival). */
    private static final Map<Integer, Long> SEEN = new HashMap<Integer, Long>();
    private static boolean primed;

    private ManualDefaults() {}

    /** SessionRecorder.tick, every second. */
    static void tick(Context c, List<TrainItem> items) {
        if (items == null) {
            return;
        }
        try {
            for (int i = 0; i < items.size(); i++) {
                TrainItem it = items.get(i);
                boolean has = it != null && !it.isEmpty() && it.data != null && it.data.trainUser != null;
                Long was = SEEN.get(i);
                if (!has) {
                    SEEN.remove(i);
                    continue;
                }
                TrainUser u = it.data.trainUser;
                if (was != null && was == u.id) {
                    continue;
                }
                SEEN.put(i, u.id);
                // The slots already filled when the app starts are the trainer's as they were.
                if (primed && !it.data.start && !assisted()) {
                    applyTo(c, it, u);
                }
            }
            primed = true;
        } catch (Throwable t) {
            WearableBleDiagLog.log("manual", "defaults: " + t);
        }
    }

    private static boolean assisted() {
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
        TrainProgram p = it.getTrainProgram();
        AiProfile prof = AiProfile.of(u);
        if (p == null || prof == null) {
            return;
        }
        int[][] v = forClient(prof);
        AiPersonal.Effect e = prof.personal();
        ProgramDataBean[] beans = {p.programDataBean, p.muscleTrainingProgramDataBean,
                p.aerobicTrainingProgramDataBean, p.massageModeProgramDataBean};
        for (int k = 0; k < beans.length; k++) {
            ProgramDataBean b = beans[k];
            if (b == null) {
                continue;
            }
            b.hz = v[k][0];
            b.pulseWidth = v[k][1];
            b.pulseContinue = v[k][2];
            b.pulsePause = v[k][3];
            b.workLength = v[k][4] * 60;
            b.inputRamp = v[k][5];
            b.outputRamp = v[k][5];
            if (!e.isEmpty() && b.strenthBean != null && b.strenthBean.buwei != null) {
                int[] z = e.apply(b.strenthBean.buwei);
                for (int i = 0; i < Math.min(z.length, b.strenthBean.buwei.length); i++) {
                    b.strenthBean.buwei[i] = z[i];
                }
            }
        }
        try {
            it.onParamsChange();
        } catch (Throwable ignored) {
        }
        WearableBleDiagLog.log("manual", "standard for user " + u.id + " (" + prof.fitness + ", " + prof.age
                + ", " + prof.goal + ", " + prof.cond + ")");
    }

    /** The standard set, shaped by the client. */
    static int[][] forClient(AiProfile p) {
        int[][] v = new int[STANDARD.length][];
        for (int k = 0; k < v.length; k++) {
            v[k] = STANDARD[k].clone();
        }
        AiPersonal.Effect e = p.personal();
        boolean low = p.fitness == AiModel.Fitness.LOW;
        boolean high = p.fitness == AiModel.Fitness.HIGH;
        boolean older = p.age != null && p.age >= 60;
        for (int k = 0; k < 3; k++) {                     // the tetanic programs
            if (low) {
                v[k][1] -= 50;
                v[k][3] += k < 2 ? 1 : 0;
            }
            if (older) {
                v[k][1] -= 25;
                v[k][3] += k < 2 ? 1 : 0;
            }
            v[k][3] += e.offS;
            if (e.rampUpMs > 0) {
                v[k][5] = Math.min(1500, ((v[k][5] + e.rampUpMs + 499) / 500) * 500);
            }
        }
        if (high && !older) {
            v[0][2] = 6;                                   // main: longer sets
            v[1][1] = 400;                                 // muscle: deeper impulse
        }
        if (e.rampUpMs > 0) {
            v[3][5] = 500;                                 // massage: a soft onset for the sensitive
        }
        if (p.goal == AiModel.Goal.FAT) {
            v[0][4] = 25;
            v[2][4] = 25;
        } else if (p.goal == AiModel.Goal.DRAIN) {
            v[3][0] = 3;
            v[3][4] = 25;
        } else if (p.goal == AiModel.Goal.MASSAGE) {
            v[3][4] = 25;
        }
        return v;
    }
}
