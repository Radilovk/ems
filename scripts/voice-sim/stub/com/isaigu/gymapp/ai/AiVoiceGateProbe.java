package com.isaigu.gymapp.ai;

/** Opens AiVoiceGate's package-private test hooks to GateSim. */
public final class AiVoiceGateProbe {
    private AiVoiceGateProbe() {}

    public static boolean pass(String text, boolean followUp, boolean answer, long now) {
        boolean q = text.trim().endsWith("?") || text.startsWith("какво") || text.startsWith("как ");
        return AiVoiceGate.pass(text, followUp, answer, q, now);
    }

    public static String why() {
        return AiVoiceGate.why;
    }

    public static void reset() {
        AiVoiceGate.reset();
    }
}
