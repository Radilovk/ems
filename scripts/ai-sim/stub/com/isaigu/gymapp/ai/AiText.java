package com.isaigu.gymapp.ai;

/** JVM stub of AiText for the offline automatic-mode test (the real one reads the app language). */
final class AiText {
    private AiText() {}

    static String t(String bg, String en) {
        return bg;
    }

    static String mmss(double seconds) {
        int s = (int) Math.max(0, Math.round(seconds));
        return String.format(java.util.Locale.US, "%d:%02d", s / 60, s % 60);
    }
}
