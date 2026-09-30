package com.isaigu.gymapp.wearable;

import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.train.model.TrainItem;

import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/**
 * The index buttons around the avatar (MA, Hz, 2nd-impulse MA, 2nd-impulse Hz):
 * <ul>
 *   <li>a selection clears itself 5 s after the last action with it (click, + / −, slider) — then + / − act
 *       on the selected muscle groups again;</li>
 *   <li>the second impulse (active pause) turns on from either of its buttons, Hz or MA, and always starts
 *       at the main impulse's strength. It belongs to the running mode (Основен, Кардио, Масаж each have their
 *       own, set in ⚙ too); Мускули has none.</li>
 * </ul>
 * Hooks: TrainPause{Hz,Ma}ValueClickListener.onClick (scripts/apply-train-index.py), SessionRecorder tick.
 */
public final class TrainIndex {
    static final long IDLE_MS = 5000L;
    static final int MUSCLE = 1;

    static final class State {
        long lastAction;
        int[] seen;
    }

    private static final Map<TrainItem, State> STATES = new WeakHashMap<TrainItem, State>();

    private TrainIndex() {}

    /** A click on the 2nd-impulse Hz (hz = true) or MA button. */
    public static void pauseClick(TrainItem it, boolean hz) {
        try {
            TrainProgram p = it != null ? it.getTrainProgram() : null;
            ProgramDataBean b = p != null ? p.matchProgram() : null;
            if (b == null) {
                return;
            }
            if (p.useType == MUSCLE) {
                b.activePause = false;                     // Мускули: no second impulse
                clear(it);
                return;
            }
            boolean selected = hz ? it.isPauseHzSelected() : it.isPauseMaSelected();
            if (!b.activePause) {
                b.activePause = true;                      // on from either button, at the main strength
                b.pauseStrenthPercent = Math.max(0, Math.min(100, b.strenth));
                select(it, hz);
            } else if (selected && hz) {
                b.activePause = false;                     // the selected Hz again: the second impulse off
                clear(it);
            } else if (selected) {
                clear(it);
            } else {
                select(it, hz);
            }
            touch(it);
            it.onParamsChange();                           // the suit gets the new impulse pattern now
        } catch (Throwable t) {
            WearableBleDiagLog.log("index", "pause click: " + t);
        }
    }

    private static void select(TrainItem it, boolean hz) {
        it.setMaSelected(false);
        it.setHzSelected(false);
        it.setPauseHzSelected(hz);
        it.setPauseMaSelected(!hz);
    }

    private static void clear(TrainItem it) {
        it.setMaSelected(false);
        it.setHzSelected(false);
        it.setPauseHzSelected(false);
        it.setPauseMaSelected(false);
    }

    static void touch(TrainItem it) {
        synchronized (STATES) {
            State s = STATES.get(it);
            if (s == null) {
                s = new State();
                STATES.put(it, s);
            }
            s.lastAction = System.currentTimeMillis();
            s.seen = snapshot(it);
        }
    }

    static int[] snapshot(TrainItem it) {
        TrainProgram p = it.getTrainProgram();
        ProgramDataBean b = p != null ? p.matchProgram() : null;
        ProgramDataBean m = b;
        return new int[] {
                it.isMaSelected() ? 1 : 0, it.isHzSelected() ? 1 : 0,
                it.isPauseMaSelected() ? 1 : 0, it.isPauseHzSelected() ? 1 : 0,
                b != null ? b.strenth : 0, b != null ? b.hz : 0,
                m != null ? m.pauseStrenthPercent : 0, m != null ? m.pauseHz : 0};
    }

    /** SessionRecorder, every second: any change is an action; 5 s without one clears the selection. */
    static void tick(List<TrainItem> items) {
        if (items == null) {
            return;
        }
        long now = System.currentTimeMillis();
        boolean assisted = ManualDefaults.assisted();
        for (int i = 0; i < items.size(); i++) {
            TrainItem it = items.get(i);
            if (it == null || it.isEmpty() || it.getTrainProgram() == null) {
                continue;
            }
            try {
                TrainProgram tp = it.getTrainProgram();
                if (!assisted && tp.useType == MUSCLE && tp.muscleTrainingProgramDataBean != null
                        && tp.muscleTrainingProgramDataBean.activePause) {
                    tp.muscleTrainingProgramDataBean.activePause = false;
                    it.setPauseHzSelected(false);
                    it.setPauseMaSelected(false);
                    it.onParamsChange();
                    it.xemsRefresh();
                }
                int[] cur = snapshot(it);
                boolean any = cur[0] + cur[1] + cur[2] + cur[3] > 0;
                State s;
                synchronized (STATES) {
                    s = STATES.get(it);
                    if (s == null) {
                        s = new State();
                        s.lastAction = now;
                        s.seen = cur;
                        STATES.put(it, s);
                        continue;
                    }
                }
                if (!java.util.Arrays.equals(cur, s.seen)) {
                    s.seen = cur;
                    s.lastAction = now;
                    continue;
                }
                if (any && !assisted && now - s.lastAction >= IDLE_MS) {
                    clear(it);
                    s.seen = snapshot(it);
                    s.lastAction = now;
                    it.xemsRefresh();
                }
            } catch (Throwable t) {
                WearableBleDiagLog.log("index", "tick: " + t);
            }
        }
    }
}
