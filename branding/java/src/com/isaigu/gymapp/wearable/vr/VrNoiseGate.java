package com.isaigu.gymapp.wearable.vr;

/**
 * Which game haptics become an impulse (owner, 1.1.397): UI clicks, hovers and background rumble are dropped,
 * hits pass. Three sensitivity presets (owner, 1.1.402, chosen in VrPanel → {@link VrSettings}):
 * <ul>
 * <li>amplitude &lt; min amplitude → dropped, whatever the length (clicks and weak rumble);</li>
 * <li>shorter than min duration → dropped unless it is at least the hit amplitude (a punch or a slice can be a
 *     20–30 ms full-strength buzz). "Runtime shortest" (XR_MIN_HAPTIC_DURATION) counts as 0 ms;</li>
 * <li>a PCM append chunk continues a pulse that already passed, so only the amplitude rule applies to it.</li>
 * </ul>
 * NORMAL = the 1.1.397 values ({@link #MIN_AMPLITUDE}, {@link #MIN_DURATION_US}, {@link #HIT_AMPLITUDE}).
 */
public final class VrNoiseGate {
    public static final float MIN_AMPLITUDE = 0.4f;
    public static final long MIN_DURATION_US = 35000L;
    public static final float HIT_AMPLITUDE = 0.7f;

    /** Only strong hits · normal · everything but the faintest buzz. */
    public static final int STRONG = 0;
    public static final int NORMAL = 1;
    public static final int ALL = 2;
    static final float[] AMP = {0.6f, MIN_AMPLITUDE, 0.12f};
    static final long[] DUR = {50000L, MIN_DURATION_US, 0L};
    static final float[] HIT = {0.85f, HIT_AMPLITUDE, 0.12f};

    private static volatile int preset = NORMAL;

    private VrNoiseGate() {}

    public static void setPreset(int p) {
        preset = p < STRONG || p > ALL ? NORMAL : p;
    }

    public static int preset() {
        return preset;
    }

    /** The NORMAL preset (pure; host tests). */
    public static boolean passes(float amplitude, long durationUs, boolean minDuration, boolean append) {
        return passes(amplitude, durationUs, minDuration, append, NORMAL);
    }

    public static boolean passes(float amplitude, long durationUs, boolean minDuration, boolean append, int p) {
        if (!(amplitude >= AMP[p])) {
            return false;
        }
        if (append) {
            return true;
        }
        long us = minDuration ? 0L : durationUs;
        return us >= DUR[p] || amplitude >= HIT[p];
    }

    /** The trainer's current preset. */
    public static boolean passes(VrHapticEvent e) {
        return passes(e.amplitude, e.durationUs, e.isMinDuration(), e.isAppend(), preset);
    }
}
