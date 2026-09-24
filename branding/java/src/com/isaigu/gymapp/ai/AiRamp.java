package com.isaigu.gymapp.ai;

import com.isaigu.gymapp.bean.ProgramDataBean;

/**
 * Ramp bytes for the work-params PDU (device unit: 10 ms per step). The stock build forced
 * ramp 0 (scripts/remove-ramp.py); scripts/apply-ai-session.py routes both bytes through here:
 * <ul>
 *   <li>Smart Session running → its own ramp (spec G2);</li>
 *   <li>otherwise → the program's input / output ramp (inputRamp / outputRamp, ms), set per
 *       user or from the master settings, capped at {@link #MAX_MS} each and together at the
 *       impulse ON time (a ramp can not be longer than the impulse).</li>
 * </ul>
 * The device applies the ramp to the output as a whole, so with an active pause (double
 * impulse) both the work and the pause impulse rise and fall softly.
 */
public final class AiRamp {
    public static final int MAX_MS = 2000;

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

    /** Smart Session ramp only (0 when no session). */
    public static int inputByte() {
        return aiActive ? encode(rampUpMs) : 0;
    }

    public static int outputByte() {
        return aiActive ? encode(rampDownMs) : 0;
    }

    public static int inputByte(ProgramDataBean b) {
        if (aiActive || b == null) {
            return inputByte();
        }
        return inputByteMs(b.inputRamp, b.outputRamp, b.pulseContinue);
    }

    public static int outputByte(ProgramDataBean b) {
        if (aiActive || b == null) {
            return outputByte();
        }
        return outputByteMs(b.inputRamp, b.outputRamp, b.pulseContinue);
    }

    public static int inputByteMs(int upMs, int downMs, int onS) {
        if (aiActive) {
            return inputByte();
        }
        return encode(fit(upMs, downMs, onS)[0]);
    }

    public static int outputByteMs(int upMs, int downMs, int onS) {
        if (aiActive) {
            return outputByte();
        }
        return encode(fit(upMs, downMs, onS)[1]);
    }

    /** Each ramp ≤ 2 s; together ≤ the ON time (scaled down proportionally when longer). */
    static int[] fit(int upMs, int downMs, int onS) {
        int up = Math.max(0, Math.min(MAX_MS, upMs));
        int down = Math.max(0, Math.min(MAX_MS, downMs));
        int on = onS > 0 ? onS * 1000 : 0;
        if (on > 0 && up + down > on) {
            double k = on / (double) (up + down);
            up = (int) Math.floor(up * k);
            down = (int) Math.floor(down * k);
        }
        return new int[] {up, down};
    }

    private static int encode(int ms) {
        if (ms <= 0) {
            return 0;
        }
        return Math.min(255, (ms + 9) / 10);
    }
}
