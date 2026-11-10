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

    /** Slot → the client (TrainUser.id) of the last program set / seen there. */
    private static final Map<TrainItem, Long> CLIENT = new WeakHashMap<TrainItem, Long>();
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
            if (clientChanged(it)) {
                // Another client in the slot (next client, ▶ quick start): a clean start, never an "edit"
                // (TrainProgram.userId is the trainer's, so the programs alone cannot tell).
                synchronized (MASTER) {
                    if (it != null && it.data != null) {
                        MASTER.remove(it.data);
                    }
                }
                if (now != null && now != old) {
                    com.isaigu.gymapp.dialog.ActivePauseStorage.save(now);
                }
                return null;                            // keepMode → the new program's, liveRemaining → reset
            }
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
            if (now != null && was != now) {
                // The new program's own 2nd impulse wins over the stored overlay (applied right after).
                com.isaigu.gymapp.dialog.ActivePauseStorage.save(now);
            }
            if (was == null || now == null || was == now || !sameClient(was, now) || !manual()) {
                return was;
            }
            if (it.data.start) {
                for (int k = 0; k < 4; k++) {
                    ProgramDataBean a = bean(was, k);
                    ProgramDataBean b = bean(now, k);
                    if (a != null && b != null) {
                        b.strenth = a.strenth;          // the live strength stays; the 2nd impulse is a setting
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

    /** Remembers the slot's client; true when it is another one than last time (unknown before = false). */
    static boolean clientChanged(TrainItem it) {
        if (it == null || it.data == null || it.data.trainUser == null) {
            return false;
        }
        Long now = Long.valueOf(it.data.trainUser.id);
        synchronized (CLIENT) {
            Long was = CLIENT.put(it, now);
            return was != null && !was.equals(now);
        }
    }

    /**
     * Every second (ProgramFit.tick): the slot's client as it is now. A load (next client, ▶) sets the
     * client and then the program in one go on the main thread, so before() still sees the previous one.
     */
    public static void seen(TrainItem it) {
        if (it != null && it.data != null && it.data.trainUser != null) {
            synchronized (CLIENT) {
                CLIENT.put(it, Long.valueOf(it.data.trainUser.id));
            }
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

    // ================================================================ a mode change = a new stage (1.1.493)

    /** Set by {@link PartStrength#modeCarry} (start of TrainItem.setUserType): the training is under way. */
    private static final Map<TrainItem, Boolean> STAGE = new WeakHashMap<TrainItem, Boolean>();

    static void noteStage(TrainItem it, boolean underWay) {
        if (it == null) {
            return;
        }
        synchronized (STAGE) {
            STAGE.put(it, Boolean.valueOf(underWay));
        }
    }

    /** Running, or paused part-way through the time of the mode {@code from}. */
    static boolean underWay(TrainItem it, ProgramDataBean from) {
        if (it == null || it.data == null) {
            return false;
        }
        if (it.data.start) {
            return true;
        }
        int left = it.workLength;
        return from != null && left > 0 && left < from.workLength;
    }

    /**
     * Hook: TrainItem.setUserType, in place of the vendor stop() (scripts/apply-mode-stages.py). Owner (1.1.493):
     * Основен → Мускули → Кардио → Масаж in a training are stages of the same training, not new ones — the run goes
     * on (running) or stays paused, the session record goes on, only ■ or the end of the time ends the training.
     * The clock: the new mode's own full time in the manual mode ({@link #stageClock}, 1.1.508). True = keep the time and go on in the new mode (the smali restarts the pulse with the new mode's
     * times); false = not started yet: the vendor stop and the new mode's full time.
     */
    public static boolean stageLive(TrainItem it) {
        Boolean b;
        synchronized (STAGE) {
            b = STAGE.remove(it);
        }
        return b != null && b.booleanValue();
    }

    /** Per row: {seconds of the old mode left undone, the new mode's full time} of the last stage(s), for the recorder. */
    private static final Map<TrainItem, int[]> STAGE_CLOCK = new WeakHashMap<TrainItem, int[]>();

    /**
     * Hook: TrainItem.setUserType, a stage of a manual training (scripts/apply-mode-stages.py), after the pulse restart.
     * Owner (1.1.508): every mode has its own clock — Основен with 2:00 left → Масаж starts the massage's full time,
     * it does not finish the 2:00. The training itself goes on (no stop, the same session record). Sets the row's time
     * to the new mode's full length; returns the new countdown (ms) when the row runs, else 0 (paused: ▶ starts it).
     * AI / automatic sessions keep one clock across their modes (they time their own stages).
     */
    public static long stageClock(TrainItem it) {
        try {
            if (it == null || it.data == null || !manual()) {
                return 0L;
            }
            TrainProgram p = it.getTrainProgram();
            ProgramDataBean b = p != null ? p.matchProgram() : null;
            if (b == null || b.workLength <= 0) {
                return 0L;
            }
            int left = Math.max(0, it.workLength);
            synchronized (STAGE_CLOCK) {
                int[] was = STAGE_CLOCK.get(it);
                // Two changes before the recorder's next second: the middle mode's time came and went.
                int cut = was != null ? Math.max(0, was[0] + left - was[1]) : left;
                STAGE_CLOCK.put(it, new int[] {cut, b.workLength});
            }
            it.workLength = b.workLength;
            synchronized (CLOCK) {
                CLOCK.remove(it);                       // the new countdown starts from whole seconds
            }
            return it.data.start ? b.workLength * 1000L : 0L;
        } catch (Throwable t) {
            return 0L;
        }
    }

    /** For the session recorder: {old mode's seconds not done, new mode's full time} since the last call, or null. */
    public static int[] takeStage(TrainItem it) {
        synchronized (STAGE_CLOCK) {
            return STAGE_CLOCK.remove(it);
        }
    }

    // ================================================================ the training clock (1.1.493)

    /** Per row: the exact milliseconds left at the last tick of the training countdown, and the second it showed. */
    private static final Map<TrainItem, long[]> CLOCK = new WeakHashMap<TrainItem, long[]>();

    /**
     * Hook: TrainItem$1.onTick (the training countdown, every 100 ms). The vendor cut the milliseconds left down to
     * whole seconds: each ❚❚ / ▶ (and every vendor stop / start) lost up to 1.1 s and the clock showed 19:59 the moment
     * a 20:00 training began. Now the second shown is rounded up (20:00 → 19:59 after one real second, 0:01 is the
     * last one) and the exact rest is kept for the restart ({@link #workMs}).
     */
    public static int tickWork(TrainItem it, long ms) {
        long left = Math.max(0L, ms);
        int sec = (int) ((left + 999L) / 1000L);
        if (it != null) {
            synchronized (CLOCK) {
                CLOCK.put(it, new long[] {left, sec});
            }
        }
        return sec;
    }

    /**
     * Hook: TrainItem.start, the length of the new training countdown (ms). The exact rest when the row's time is
     * still the one the last tick showed (a pause, a stage), else the row's whole seconds (a new training, a new
     * length set by ⚙, the AI / automatic session).
     */
    public static long workMs(TrainItem it) {
        int sec = it != null ? it.workLength : 0;
        long[] c;
        synchronized (CLOCK) {
            c = it != null ? CLOCK.get(it) : null;
        }
        if (c != null && c[1] == sec && c[0] > 0L) {
            return c[0];
        }
        return sec * 1000L;
    }

    // ================================================================ the impulse / pause phases on the real clock

    /** Per row: when the running ON / pause phase is due to end (SystemClock.elapsedRealtime, ms). */
    private static final Map<TrainItem, long[]> PHASE_DUE = new WeakHashMap<TrainItem, long[]>();
    /** A phase that begins this late (or less) after the planned end of the one before is the next one on schedule. */
    static final long ON_TIME_MS = 1500L;

    /**
     * Hook: TrainItem.startPulse, the length of the phase that starts now (ms; the vendor took {@code sec} × 1000).
     * Every phase used to start when the previous one's callback ran (+ the AI / Auto / map work and the BLE send
     * in it), so each ON / pause boundary added a few to a few hundred ms and the cycles — which the automatic
     * modes, the workout maps and the Smart Session count — ran slower than the clock (owner, 1.1.494). Now a phase
     * that follows the previous one on schedule ends at the previous one's planned end + its length: the lateness
     * of one boundary is taken from the next phase, nothing adds up. A first phase, a restart or a resume after ❚❚
     * starts a fresh schedule.
     */
    public static long phaseMs(TrainItem it, int sec) {
        long len = Math.max(0, sec) * 1000L;
        long now = android.os.SystemClock.elapsedRealtime();
        if (it == null) {
            return len;
        }
        synchronized (PHASE_DUE) {
            long[] due = PHASE_DUE.get(it);
            long late = due != null ? now - due[0] : -1;
            if (due != null && late >= 0 && late <= ON_TIME_MS && it.data != null && it.data.start) {
                long ms = Math.max(len / 2, len - late);   // an impulse is never cut below half its length
                due[0] = now + ms;
                return ms;
            }
            PHASE_DUE.put(it, new long[] {now + len});
            return len;
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
