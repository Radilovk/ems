package com.isaigu.gymapp.ai;

/**
 * Ramp bytes for the work-params PDU (spec G2). The stock build forces ramp 0
 * (scripts/remove-ramp.py); scripts/apply-ai-session.py routes both ramp bytes through
 * here, so a ramp is sent only while a Smart Session runs. Device unit: 10 ms per step.
 */
public final class AiRamp {
    private static volatile int rampUpMs;
    private static volatile int rampDownMs;

    private AiRamp() {}

    public static void set(int upMs, int downMs) {
        rampUpMs = Math.max(0, upMs);
        rampDownMs = Math.max(0, downMs);
    }

    public static void clear() {
        rampUpMs = 0;
        rampDownMs = 0;
    }

    public static int inputByte() {
        return encode(rampUpMs);
    }

    public static int outputByte() {
        return encode(rampDownMs);
    }

    private static int encode(int ms) {
        if (ms <= 0) {
            return 0;
        }
        return Math.min(255, (ms + 9) / 10);
    }
}
