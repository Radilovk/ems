package com.isaigu.gymapp.train.utils;

/** Simulator stub: the default arms factor by pulse width (no licence feature on the JVM). */
public final class ChannelStrengthScale {
    private ChannelStrengthScale() {}

    public static float armsFactor(int pwUs) {
        float d = 2.5f + (pwUs - 150) * 2.5f / 250f;      // the default D = 5 (÷5 at 400 µs, ÷2.5 at 150 µs; 1.1.585)
        return 1f / (d < 1f ? 1f : d);
    }

    public static float balance(int ch, int pwUs) {
        return 1f;
    }

    /** The calves' share of their slider (the real class's CALF_FACTOR: 1 since 1.1.585). */
    public static float sentShare(int ch) {
        return 1f;
    }
}
