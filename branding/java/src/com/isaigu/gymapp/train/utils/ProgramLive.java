package com.isaigu.gymapp.train.utils;

import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.train.model.TrainItem;

import java.util.Map;
import java.util.WeakHashMap;

/**
 * Hook: TrainItem.setTrainProgram (scripts/apply-live-settings.py) — the parameters saved from ⚙ Master (the
 * right panel) or a row's gear. The vendor reset the row there: the training stopped, the time started again
 * and the mode (useType) went back to the default. Now, in manual mode:
 * <ul>
 *   <li>the mode stays what it was before the settings were opened;</li>
 *   <li>a training in progress (running, or paused part-way) goes on with the new parameters: the time done
 *       stays, a new length only moves the end.</li>
 * </ul>
 * AI / automatic sessions and loading another client's program keep the vendor reset.
 * ⚙ Master replaces the row's program before calling here ({@link #stash} keeps the one it had), so a new
 * length moves the end there too. The row's gear opens while the training runs; its live strength stays.
 * The hand changes and the master base go to {@link com.isaigu.gymapp.wearable.ProgramFit}.
 */
public final class ProgramLive {
    /** Plan change (s) per row, for the session recorder (its "back to the planned time" = end test). */
    private static final Map<TrainItem, Integer> PLAN_DELTA = new WeakHashMap<TrainItem, Integer>();

    /** ⚙ Master: the program each row had before OperationUtil.settingAllUser replaced it. */
    private static final Map<Object, TrainProgram> MASTER = new WeakHashMap<Object, TrainProgram>();

    private ProgramLive() {}

    /** Hook: OperationUtil.lambda$settingAllUser$0, right after the row got the master's copy. */
    public static void stash(Object wrapper, TrainProgram before) {
        if (wrapper != null && before != null) {
            synchronized (MASTER) {
                MASTER.put(wrapper, before);
            }
        }
    }

    /**
     * Hook: start of TrainItem.setTrainProgram. The program the row had (the master's stash when there is
     * one); a running row keeps its live strength; hand edits / the master base go to ProgramFit.
     */
    public static TrainProgram before(TrainItem it, TrainProgram old, TrainProgram now) {
        try {
            TrainProgram was = old;
            boolean master = false;
            if (it != null && it.data != null) {
                synchronized (MASTER) {
                    TrainProgram s = MASTER.remove(it.data);
                    if (s != null) {
                        was = s;
                        master = true;
                    }
                }
            }
            if (was == null || now == null || was == now || !sameClient(was, now) || !manual()) {
                return was;
            }
            if (it.data.start) {
                for (int k = 0; k < 4; k++) {
                    ProgramDataBean a = bean(was, k);
                    ProgramDataBean b = bean(now, k);
                    if (a != null && b != null) {
                        b.strenth = a.strenth;
                        b.pauseStrenthPercent = a.pauseStrenthPercent;
                    }
                }
            }
            if (master) {
                com.isaigu.gymapp.wearable.ProgramFit.onMaster(it, was, now);
            } else {
                com.isaigu.gymapp.wearable.ProgramFit.onEdit(it, was, now);
            }
            return was;
        } catch (Throwable t) {
            return old;
        }
    }

    static boolean sameClient(TrainProgram old, TrainProgram now) {
        return old == now || old.userId != null && old.userId.equals(now.userId);
    }

    /** The mode to keep: the one before the settings (same client), else what the new program says. */
    public static int keepMode(TrainProgram old, TrainProgram now) {
        if (now == null) {
            return 0;
        }
        if (old == null || !sameClient(old, now)) {
            return now.useType;
        }
        return old.useType;
    }

    /**
     * The row's new remaining time (s) when its training is in progress and goes on, else −1 (reset as before).
     * Sets the kept mode on the new program.
     */
    public static int liveRemaining(TrainItem it, TrainProgram old, TrainProgram now, int mode) {
        try {
            if (it == null || it.data == null || old == null || now == null || !sameClient(old, now) || !manual()) {
                return -1;
            }
            now.useType = mode;
            int oldTotal = total(old, mode);
            int newTotal = total(now, mode);
            int left = it.workLength;
            boolean running = it.data.start;
            boolean partWay = left > 0 && oldTotal > 0 && left < oldTotal;
            if (!running && !partWay) {
                return -1;                              // not started or already over: a clean reset
            }
            if (old == now || oldTotal <= 0 || newTotal <= 0) {
                return Math.max(1, left);               // edited in place: the time stays
            }
            int done = Math.max(0, oldTotal - left);
            if (newTotal != oldTotal) {
                synchronized (PLAN_DELTA) {
                    Integer d = PLAN_DELTA.get(it);
                    PLAN_DELTA.put(it, (d != null ? d : 0) + newTotal - oldTotal);
                }
            }
            return Math.max(1, newTotal - done);
        } catch (Throwable t) {
            return -1;
        }
    }

    /** For the session recorder: the planned time moved by this much (s) since the last call. */
    public static int takePlanDelta(TrainItem it) {
        synchronized (PLAN_DELTA) {
            Integer d = PLAN_DELTA.remove(it);
            return d != null ? d : 0;
        }
    }

    static int total(TrainProgram p, int mode) {
        ProgramDataBean b = bean(p, mode);
        return b != null ? b.workLength : 0;
    }

    static ProgramDataBean bean(TrainProgram p, int mode) {
        return mode == 1 ? p.muscleTrainingProgramDataBean
                : mode == 2 ? p.aerobicTrainingProgramDataBean
                : mode == 3 ? p.massageModeProgramDataBean : p.programDataBean;
    }

    /** Manual training: no AI or automatic session is running. */
    static boolean manual() {
        try {
            if (com.isaigu.gymapp.ai.AiSession.getStage() != com.isaigu.gymapp.ai.AiSession.Stage.IDLE) {
                return false;
            }
            return com.isaigu.gymapp.ai.AutoSession.getStage() == com.isaigu.gymapp.ai.AutoSession.Stage.IDLE;
        } catch (Throwable t) {
            return true;
        }
    }
}
