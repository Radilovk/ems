package com.isaigu.gymapp.ai;

import com.isaigu.gymapp.bean.ProgramDataBean;

/**
 * The soft rise / fall of the impulse (ms) for the tablet's own ramp (train.model.SoftRamp) — the only ramp: the
 * suit ignores the PDU ramp bytes, which stay 0 (scripts/remove-ramp.py). The values:
 * <ul>
 *   <li>Smart Session / Auto running → its own ramp ({@link #set});</li>
 *   <li>otherwise → the program's input / output ramp (inputRamp / outputRamp, ms, 0–3 s in the parameters
 *       dialog, dialog/RampSetting), each ≤ {@link #MAX_MS}, together ≤ the impulse ON time.</li>
 * </ul>
 * SoftRamp ramps both impulses: the main one in the ON phase, the second one in the pause (fitted into it).
 */
public final class AiRamp {
    public static final int MAX_MS = 3000;

    private static volatile boolean aiActive;
    private static volatile int rampUpMs;
    private static volatile int rampDownMs;

    private AiRamp() {}

    public static void set(int upMs, int downMs) {
        aiActive = true;
        rampUpMs = Math.max(0, upMs);
        rampDownMs = Math.max(0, downMs);
    }

    public static void clear() {
        aiActive = false;
        rampUpMs = 0;
        rampDownMs = 0;
    }

    /**
     * Rise / fall in ms for the tablet's own ramp (train.model.SoftRamp): the Smart Session's
     * when it runs, else the program's — each ≤ 3 s, together ≤ the ON time.
     */
    public static int[] rampMs(ProgramDataBean b) {
        if (aiActive) {
            return new int[] {Math.min(MAX_MS, rampUpMs), Math.min(MAX_MS, rampDownMs)};
        }
        if (b == null) {
            return new int[] {0, 0};
        }
        return fit(b.inputRamp, b.outputRamp, b.pulseContinue);
    }

    /**
     * Each ramp ≤ 3 s; together ≤ the ON time. A short impulse loses the fall first, so the soft rise (the
     * safety one, ≥ 0.3 s for a fused impulse — SafeLimits) keeps its length (before 1.1.331 both shrank).
     */
    static int[] fit(int upMs, int downMs, int onS) {
        int up = Math.max(0, Math.min(MAX_MS, upMs));
        int down = Math.max(0, Math.min(MAX_MS, downMs));
        int on = onS > 0 ? onS * 1000 : 0;
        if (on > 0 && up + down > on) {
            up = Math.min(up, on);
            down = Math.max(0, on - up);
        }
        return new int[] {up, down};
    }
}
