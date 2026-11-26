package com.isaigu.gymapp.train.utils;

/** Simulator stub: the default arms factor by pulse width (no licence feature on the JVM). */
public final class ChannelStrengthScale {
    private ChannelStrengthScale() {}

    public static float armsFactor(int pwUs) {
        float d = 5f + (pwUs - 150) * 5f / 250f;          // the default D = 10 (÷10 at 400 µs, ÷5 at 150 µs)
        return 1f / (d < 1f ? 1f : d);
    }

    public static float balance(int ch, int pwUs) {
        return 1f;
    }

    /** The calves go out at half of their slider (the default calf divider ÷2). */
    public static float sentShare(int ch) {
        return ch == 3 ? 0.5f : 1f;
    }
}
