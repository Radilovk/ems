package com.isaigu.gymapp.train.model;

import android.os.Handler;
import android.os.Looper;

import com.isaigu.gymapp.ai.AiRamp;
import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.widget.XemsGuard;

import java.util.WeakHashMap;

/**
 * Soft rise / fall of the impulse, done by the tablet: the suit ignores the ramp bytes of the
 * work-params PDU, so at the start of every ON phase the strength is sent in steps from low to
 * the set value (like quick + presses), and before the end of the ON phase in steps down.
 *
 * <p>Hooks (scripts/apply-soft-ramp.py): TrainItem.startPulse marks a new phase
 * ({@link #phase}); TrainItem.sendPulse sends the ON phase through {@link #sendDuration}.
 * Every step checks that the slot still runs, is connected and is in its ON phase, so nothing
 * reaches the suit after pause / stop. A step is skipped while the BLE queue is still busy
 * (no backlog that would delay the pause); the final full step is always sent. Any error →
 * the stock send.
 */
public final class SoftRamp {
    private static final long STEP_MS = 150L;
    private static final Handler main = new Handler(Looper.getMainLooper());

    /** Per slot: generation (a new phase cancels the steps of the old one) and "new ON phase". */
    private static final WeakHashMap<TrainItem, int[]> gen = new WeakHashMap<TrainItem, int[]>();
    private static final WeakHashMap<TrainItem, Boolean> fresh = new WeakHashMap<TrainItem, Boolean>();
    /** Per slot: current scale while a ramp runs (null = full strength). */
    private static final WeakHashMap<TrainItem, Double> scale = new WeakHashMap<TrainItem, Double>();

    private SoftRamp() {}

    /** Hook: TrainItem.startPulse, before its sendPulse — a phase (ON or pause) begins. */
    public static void phase(TrainItem item) {
        try {
            if (item == null || item.data == null) {
                return;
            }
            next(item);
            scale.remove(item);
            fresh.put(item, item.data.inStart ? Boolean.TRUE : Boolean.FALSE);
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
        try {
            boolean start = Boolean.TRUE.equals(fresh.remove(item));
            int[] ms = AiRamp.rampMs(b);
            if (start && ms[0] > 0 && b.strenth > 1) {
                rampUp(item, b, parts, workLength, ms[0]);
                if (ms[1] > 0 && b.pulsePause > 0 && b.pulseContinue > 0) {
                    long at = b.pulseContinue * 1000L - ms[1];
                    if (at > ms[0]) {
                        main.postDelayed(new Down(item, current(item), workLength, ms[1]), at);
                    }
                }
                return;
            }
            if (start && ms[1] > 0 && b.pulsePause > 0 && b.pulseContinue > 0) {
                long at = b.pulseContinue * 1000L - ms[1];
                if (at > 0) {
                    main.postDelayed(new Down(item, current(item), workLength, ms[1]), at);
                }
            }
            Double k = scale.get(item);
            if (k != null) {
                // + / − while a ramp runs: the ramp picks the new strength up at its next step
                sendScaled(item, b, parts, workLength, k);
                return;
            }
        } catch (Throwable t) {
            XemsGuard.report("SoftRamp.sendDuration", t);
        }
        s.sendDuration(b, parts, workLength);
    }

    // ================================================================ steps

    private static int next(TrainItem item) {
        int[] g = gen.get(item);
        if (g == null) {
            g = new int[1];
            gen.put(item, g);
        }
        return ++g[0];
    }

    private static int current(TrainItem item) {
        int[] g = gen.get(item);
        return g != null ? g[0] : 0;
    }

    private static void rampUp(TrainItem item, ProgramDataBean b, boolean[] parts, int workLength, int upMs) {
        int g = current(item);
        int n = (int) Math.max(2, Math.min(20, Math.round(upMs / (double) STEP_MS)));
        // first step now, from the stock send itself (the phase must reach the suit in any case)
        double f1 = 1 / (double) n;
        scale.put(item, f1);
        sendScaled(item, b, parts, workLength, f1);
        for (int k = 2; k <= n; k++) {
            long at = Math.round((k - 1) * upMs / (double) n);
            main.postDelayed(new Step(item, g, workLength, k / (double) n, k == n), at);
        }
    }

    /** The slot still runs, is connected, is in the same ON phase. */
    static boolean alive(TrainItem item, int g) {
        return item != null && item.data != null && item.data.start && item.data.connected && item.data.inStart
                && current(item) == g;
    }

    static void sendScaled(TrainItem item, ProgramDataBean b, boolean[] parts, int workLength, double f) {
        if (f >= 0.999) {
            item.sender.sendDuration(b, parts, workLength);
            return;
        }
        ProgramDataBean c = copy(b);
        c.strenth = Math.max(1, (int) Math.round(b.strenth * f));
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

    static final class Step implements Runnable {
        final TrainItem item;
        final int g;
        final int workLength;
        final double f;
        final boolean last;

        Step(TrainItem item, int g, int workLength, double f, boolean last) {
            this.item = item;
            this.g = g;
            this.workLength = workLength;
            this.f = f;
            this.last = last;
        }

        @Override
        public void run() {
            try {
                if (!alive(item, g)) {
                    return;
                }
                if (last) {
                    scale.remove(item);
                } else {
                    scale.put(item, f);
                    if (item.sender.isBusy()) {
                        return;                     // the link still sends the last step: skip this one
                    }
                }
                ProgramDataBean b = item.getTrainProgram().matchProgram();
                sendScaled(item, b, item.partsDisabled, workLength, f);
            } catch (Throwable t) {
                XemsGuard.report("SoftRamp.step", t);
            }
        }
    }

    /** Before the end of the ON phase: strength down in steps (the pause phase follows). */
    static final class Down implements Runnable {
        final TrainItem item;
        final int g;
        final int workLength;
        final int downMs;

        Down(TrainItem item, int g, int workLength, int downMs) {
            this.item = item;
            this.g = g;
            this.workLength = workLength;
            this.downMs = downMs;
        }

        @Override
        public void run() {
            if (!alive(item, g)) {
                return;
            }
            int n = (int) Math.max(2, Math.min(20, Math.round(downMs / (double) STEP_MS)));
            for (int k = 1; k <= n; k++) {
                final double f = 1.0 - k / (double) (n + 1);
                long at = Math.round((k - 1) * downMs / (double) n);
                main.postDelayed(new Step(item, g, workLength, f, false), at);
            }
        }
    }
}
