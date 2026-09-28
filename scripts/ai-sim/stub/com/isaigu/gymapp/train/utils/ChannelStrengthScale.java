package com.isaigu.gymapp.train.utils;

/** Simulator stub: the default arms factor by pulse width (no licence feature on the JVM). */
public final class ChannelStrengthScale {
    private ChannelStrengthScale() {}

    public static float armsFactor(int pwUs) {
        float d = 5f + (pwUs - 150) * 5f / 250f;
        return 1f / (d < 1f ? 1f : d);
    }
}
