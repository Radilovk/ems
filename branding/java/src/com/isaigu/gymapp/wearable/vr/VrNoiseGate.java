package com.isaigu.gymapp.wearable.vr;

/**
 * Which game haptics become an impulse (owner, 1.1.397): UI clicks, hovers and background rumble are dropped,
 * hits pass. Pure, no state.
 * <ul>
 * <li>amplitude &lt; {@link #MIN_AMPLITUDE} → dropped, whatever the length (clicks and weak rumble);</li>
 * <li>shorter than {@link #MIN_DURATION_US} → dropped unless it is at least {@link #HIT_AMPLITUDE} (a punch or a
 *     slice can be a 20–30 ms full-strength buzz). "Runtime shortest" (XR_MIN_HAPTIC_DURATION) counts as 0 ms;</li>
 * <li>a PCM append chunk continues a pulse that already passed, so only the amplitude rule applies to it.</li>
 * </ul>
 */
public final class VrNoiseGate {
    public static final float MIN_AMPLITUDE = 0.4f;
    public static final long MIN_DURATION_US = 35000L;
    public static final float HIT_AMPLITUDE = 0.7f;

    private VrNoiseGate() {}

    public static boolean passes(float amplitude, long durationUs, boolean minDuration, boolean append) {
        if (!(amplitude >= MIN_AMPLITUDE)) {
            return false;
        }
        if (append) {
            return true;
        }
        long us = minDuration ? 0L : durationUs;
        return us >= MIN_DURATION_US || amplitude >= HIT_AMPLITUDE;
    }

    public static boolean passes(VrHapticEvent e) {
        return passes(e.amplitude, e.durationUs, e.isMinDuration(), e.isAppend());
    }
}
