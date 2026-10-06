package com.isaigu.gymapp.train.model;

import android.os.Handler;
import android.os.Looper;

import com.isaigu.gymapp.ai.AiRamp;
import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.widget.XemsGuard;

import java.util.WeakHashMap;

/**
 * Soft rise / fall of the impulse, done by the tablet: the suit ignores the ramp bytes of the work-params PDU, so
 * the strength is sent in small steps — at the start of a phase up from 1 to the set value, before its end down to 1.
 * Both impulses ramp (1.1.369): the main one in the ON phase, the second one (double impulses) in the pause phase,
 * each with the program's rise / fall (ai/AiRamp) fitted into its own phase. So a cycle goes main 1 → full → 1,
 * second 1 → its level → 1, main again — no jump at any edge.
 *
 * <p>The ramp follows the clock, not a fixed list of steps: a tick every {@link #TICK_MS} works out the value for
 * "now" and sends it only when it changed and the BLE queue is free — a busy link delays a step, never skips the
 * ramp into a jump (before 1.1.369 busy steps were dropped, so the rise came in a few big jumps).
 *
 * <p>The phase starts at the first send that belongs to it: the Smart Session / Auto / workout map (onPulseCycle)
 * can send the new ON phase before the startPulse hook — before 1.1.369 that send went out at full strength and
 * the rise only started after it. The startPulse hook within {@link #SAME_PHASE_MS} is the same phase.
 *
 * <p>Every phase and every ON-phase send first goes through wearable/SafeGuard (the absolute limits, 1.1.323).
 *
 * <p>Hooks (scripts/apply-soft-ramp.py): TrainItem.startPulse → {@link #phase}; TrainItem.sendPulse → {@link
 * #sendDuration} (ON) / {@link #sendPause} (pause). Every step checks that the slot still runs, is connected and is in
 * the same phase, so nothing reaches the suit after pause / stop. Any error → the stock send.
 */
public final class SoftRamp {
    private static final long TICK_MS = 50L;
    private static final long SAME_PHASE_MS = 500L;
    /**
     * A rise whose link stays busy longer than this stops its clock until the link is free: a bodytech suit being
     * programmed (~3 s after connect / stop, docs/xems-bodytech.md) would else let the rise run out unseen and the
     * first value after it would be the full strength. A normal step (up to ~10 bodytech frames) is shorter.
     */
    private static final long STALL_MS = 400L;
    private static final int MAX_MS = 3000;
    private static final Handler main = new Handler(Looper.getMainLooper());

    private static final WeakHashMap<TrainItem, Slot> slots = new WeakHashMap<TrainItem, Slot>();

    /** Per row: the current phase and its ramp. */
    static final class Slot {
        int gen;
        boolean known;
        boolean on;
        long beganAt;
        long lenMs;
        /** The ramps of this phase are not set up yet (done at its first send). */
        boolean fresh;
        /** A rise is allowed (not a continuous ON after ON, pause 0). */
        boolean upAllowed;
        boolean ramping;
        boolean rising;
        long rampAt;
        int rampMs;
        /** The fall is done: the phase stays at the floor until it ends. */
        boolean held;
        int lastSent = -1;
        /** Rise clock stop: when the link got busy (0 = free), the last tick, the clock is stopped. */
        long busySince;
        long lastTick;
        boolean stalled;
        /** The one running step of this row (a + / − during the ramp re-arms it, never adds a second one). */
        Tick ticker;
    }

    private SoftRamp() {}

    /** Hook: TrainItem.startPulse, before its sendPulse — a phase (ON or pause) begins. */
    public static void phase(TrainItem item) {
        try {
            if (item == null || item.data == null) {
                return;
            }
            com.isaigu.gymapp.wearable.SafeGuard.enforce(item);   // the absolute limits before every phase
            begin(item, item.data.inStart);
        } catch (Throwable t) {
            XemsGuard.report("SoftRamp.phase", t);
        }
    }

    /** Hook: the ON-phase send of TrainItem.sendPulse (phase start and every + / − in it). */
    public static void sendDuration(TrainItem item, ProgramDataBean b, boolean[] parts, int workLength) {
        CommandSender s = item != null ? item.sender : null;
        if (s == null) {
            return;
        }
        com.isaigu.gymapp.wearable.SafeGuard.enforce(item, b);      // never out of the limits, whoever set it
        try {
            Slot st = slots.get(item);
            if (st == null || !st.known || !st.on) {
                st = begin(item, true);                             // an early send of the new ON phase
            }
            long now = System.currentTimeMillis();
            if (st.fresh) {
                st.fresh = false;
                int[] ms = fit(AiRamp.rampMs(b), st.lenMs);
                if (ms[0] > 0 && b.strenth > 1 && st.upAllowed) {
                    startRamp(st, true, ms[0], now);
                }
                if (ms[1] > 0 && b.pulsePause > 0 && st.lenMs > 0) {
                    long at = st.lenMs - ms[1];
                    if (at >= ms[0]) {
                        main.postDelayed(new Fall(item, st.gen, ms[1]), Math.max(0L, at));
                    }
                }
            }
            if (st.ramping || st.held) {
                int v = level(b.strenth, frac(st, now));
                sendMain(item, b, parts, workLength, v);
                st.lastSent = v;
                if (st.ramping) {
                    kick(item, st, TICK_MS);
                }
                return;
            }
        } catch (Throwable t) {
            XemsGuard.report("SoftRamp.sendDuration", t);
        }
        s.sendDuration(b, parts, workLength);
    }

    /**
     * Hook: the pause-phase send of TrainItem.sendPulse (phase start and every change in it) — every mode. The
     * second impulse goes out only within the limits (wearable/SafeGuard.pause): none at strength 0, at most 10 Hz,
     * at most 1.5 × the main strength; otherwise a plain pause. It rises and falls like the main one.
     */
    public static void sendPause(TrainItem item, ProgramDataBean b, boolean[] parts, int workLength) {
        CommandSender s = item != null ? item.sender : null;
        if (s == null || b == null) {
            return;
        }
        int[] p = null;
        try {
            p = second(item, b);
            Slot st = slots.get(item);
            if (st == null || !st.known || st.on) {
                st = begin(item, false);                            // an early send of the new pause phase
            }
            if (p == null) {
                st.ramping = false;
                st.held = false;
            } else {
                long now = System.currentTimeMillis();
                if (st.fresh) {
                    st.fresh = false;
                    ProgramDataBean c = copy(b);
                    c.pulseContinue = b.pulsePause;                 // the program's ramp fitted into the pause
                    int[] ms = fit(AiRamp.rampMs(c), st.lenMs);
                    if (ms[0] > 0 && p[1] > 1) {
                        startRamp(st, true, ms[0], now);
                    }
                    if (ms[1] > 0 && b.pulseContinue > 0 && st.lenMs > 0) {
                        long at = st.lenMs - ms[1];
                        if (at >= ms[0]) {
                            main.postDelayed(new Fall(item, st.gen, ms[1]), Math.max(0L, at));
                        }
                    }
                }
                if (st.ramping || st.held) {
                    int v = level(p[1], frac(st, now));
                    s.sendActivePause(b, parts, workLength, p[0], v);
                    st.lastSent = v;
                    if (st.ramping) {
                        kick(item, st, TICK_MS);
                    }
                    return;
                }
            }
        } catch (Throwable t) {
            XemsGuard.report("SoftRamp.sendPause", t);
        }
        if (p != null) {
            s.sendActivePause(b, parts, workLength, p[0], p[1]);
        } else {
            s.sendPause(b, workLength);
        }
    }

    // ================================================================ phase

    /** A phase of this kind begins now — unless it began within {@link #SAME_PHASE_MS} (an early send). */
    private static Slot begin(TrainItem item, boolean on) {
        Slot st = slots.get(item);
        if (st == null) {
            st = new Slot();
            slots.put(item, st);
        }
        long now = System.currentTimeMillis();
        if (st.known && st.on == on && now - st.beganAt < SAME_PHASE_MS) {
            return st;
        }
        // a continuous impulse (pause 0) is ON after ON: no new rise, unless the row stood still in between
        boolean onAfterOn = st.known && st.on && on && now - st.beganAt <= st.lenMs + 1500L;
        st.gen++;
        st.known = true;
        st.on = on;
        st.beganAt = now;
        st.lenMs = phaseMs(item, on);
        st.fresh = true;
        st.upAllowed = !onAfterOn;
        st.ramping = false;
        st.held = false;
        st.lastSent = -1;
        return st;
    }

    private static long phaseMs(TrainItem item, boolean on) {
        int sec = item.data != null ? item.data.secondValue : 0;
        if (sec <= 0) {
            ProgramDataBean b = item.getTrainProgram().matchProgram();
            sec = on ? b.pulseContinue : b.pulsePause;
        }
        return Math.max(0, sec) * 1000L;
    }

    /** Each ramp ≤ 3 s; together ≤ the phase (a short phase loses the fall first). */
    static int[] fit(int[] ms, long lenMs) {
        int up = Math.max(0, Math.min(MAX_MS, ms[0]));
        int down = Math.max(0, Math.min(MAX_MS, ms[1]));
        if (lenMs > 0 && up + down > lenMs) {
            up = (int) Math.min(up, lenMs);
            down = (int) Math.max(0, lenMs - up);
        }
        return new int[] {up, down};
    }

    // ================================================================ ramp

    private static void startRamp(Slot st, boolean rising, int ms, long now) {
        st.ramping = true;
        st.rising = rising;
        st.rampAt = now;
        st.rampMs = Math.max(1, ms);
        st.held = false;
        st.busySince = 0;
        st.lastTick = now;
        st.stalled = false;
    }

    private static void kick(TrainItem item, Slot st, long delay) {
        if (st.ticker == null || st.ticker.g != st.gen) {
            st.ticker = new Tick(item, st.gen);
        }
        main.removeCallbacks(st.ticker);
        main.postDelayed(st.ticker, delay);
    }

    /** The share of the set strength for "now": 0 → 1 on the rise, 1 → 0 on the fall. */
    static double frac(Slot st, long now) {
        if (!st.ramping) {
            return st.held ? 0 : 1;
        }
        double t = (now - st.rampAt) / (double) st.rampMs;
        t = Math.max(0, Math.min(1, t));
        return st.rising ? t : 1 - t;
    }

    static int level(int full, double f) {
        if (f >= 0.999) {
            return full;
        }
        return Math.max(1, Math.min(full, (int) Math.round(full * f)));
    }

    /** The slot still runs, is connected, is in the same phase. */
    static boolean alive(TrainItem item, int g) {
        Slot st = item != null ? slots.get(item) : null;
        return st != null && st.gen == g && item.data != null && item.data.start && item.data.connected
                && item.data.inStart == st.on;
    }

    static int[] second(TrainItem item, ProgramDataBean b) {
        return com.isaigu.gymapp.wearable.SafeGuard.pause(b, com.isaigu.gymapp.wearable.SafeGuard.free2(item));
    }

    static void sendMain(TrainItem item, ProgramDataBean b, boolean[] parts, int workLength, int v) {
        if (v >= b.strenth) {
            item.sender.sendDuration(b, parts, workLength);
            return;
        }
        ProgramDataBean c = copy(b);
        c.strenth = v;
        item.sender.sendDuration(c, parts, workLength);
    }

    static ProgramDataBean copy(ProgramDataBean b) {
        ProgramDataBean c = new ProgramDataBean();
        c.activePause = b.activePause;
        c.hz = b.hz;
        c.inputRamp = b.inputRamp;
        c.massageCycle = b.massageCycle;
        c.outputRamp = b.outputRamp;
        c.pauseHz = b.pauseHz;
        c.pauseStrenthPercent = b.pauseStrenthPercent;
        c.pulseContinue = b.pulseContinue;
        c.pulsePause = b.pulsePause;
        c.pulseWidth = b.pulseWidth;
        c.strenth = b.strenth;
        c.workLength = b.workLength;
        c.strenthBean = b.strenthBean;
        return c;
    }

    /** One step of a running ramp: the value for now, sent when it changed and the link is free. */
    static final class Tick implements Runnable {
        final TrainItem item;
        final int g;

        Tick(TrainItem item, int g) {
            this.item = item;
            this.g = g;
        }

        @Override
        public void run() {
            try {
                if (!alive(item, g)) {
                    return;
                }
                Slot st = slots.get(item);
                if (!st.ramping) {
                    return;
                }
                long now = System.currentTimeMillis();
                long dt = now - st.lastTick;
                st.lastTick = now;
                boolean busy = item.sender.isBusy();
                if (!busy) {
                    st.busySince = 0;
                    st.stalled = false;
                } else if (st.busySince == 0) {
                    st.busySince = now;
                } else if (st.rising) {
                    if (st.stalled) {
                        st.rampAt += dt;                            // the clock still stands
                    } else if (now - st.busySince > STALL_MS) {
                        st.stalled = true;
                        st.rampAt += now - st.busySince;            // back to where the link got stuck
                    }
                }
                boolean done = now - st.rampAt >= st.rampMs;
                double f = frac(st, now);
                ProgramDataBean b = item.getTrainProgram().matchProgram();
                int[] p = null;
                int full;
                if (st.on) {
                    full = b.strenth;
                } else {
                    p = second(item, b);
                    if (p == null) {
                        st.ramping = false;                         // the second impulse went away: plain pause
                        return;
                    }
                    full = p[1];
                }
                int v = level(full, f);
                if (v != st.lastSent) {
                    if (busy) {
                        main.postDelayed(this, TICK_MS);            // the link still sends the last step: wait
                        return;
                    }
                    if (st.on) {
                        sendMain(item, b, item.partsDisabled, item.workLength, v);
                    } else {
                        item.sender.sendActivePause(b, item.partsDisabled, item.workLength, p[0], v);
                    }
                    st.lastSent = v;
                }
                if (done) {
                    st.ramping = false;
                    st.held = !st.rising;
                    return;
                }
                main.postDelayed(this, TICK_MS);
            } catch (Throwable t) {
                XemsGuard.report("SoftRamp.tick", t);
            }
        }
    }

    /** Before the end of the phase: the fall starts. */
    static final class Fall implements Runnable {
        final TrainItem item;
        final int g;
        final int downMs;

        Fall(TrainItem item, int g, int downMs) {
            this.item = item;
            this.g = g;
            this.downMs = downMs;
        }

        @Override
        public void run() {
            try {
                if (!alive(item, g)) {
                    return;
                }
                Slot st = slots.get(item);
                long now = System.currentTimeMillis();
                double f = frac(st, now);                           // a late rise (stopped clock): fall from here
                startRamp(st, false, downMs, now);
                st.rampAt = now - Math.round((1 - f) * downMs);
                kick(item, st, 0L);
            } catch (Throwable t) {
                XemsGuard.report("SoftRamp.fall", t);
            }
        }
    }
}
