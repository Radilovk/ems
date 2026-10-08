package com.isaigu.gymapp.wearable.vr;

/**
 * The game's haptics as one level 0..1 (share of the trainer's strength): per hand, the pulse's amplitude until it
 * ends. No limits of its own — manual mode: the row's program (on / pause as the trainer set it) and the absolute
 * limits at every send (wearable/SafeGuard.enforce, ai/SafeLimits) decide what the suit may get.
 * A pulse shorter than {@link #MIN_PULSE_NS} is stretched to it (a shorter one is not felt as a contraction).
 * Thread-safe: the receiver thread writes, the drive's main-thread tick reads.
 */
public final class VrPulses {
    public static final long MIN_PULSE_NS = 120000000L;

    private final long[] endNs = new long[2];   // [0] left, [1] right
    private final float[] amp = new float[2];

    /** One game haptic. {@code hand}: VrWire.HAND_*; UNKNOWN counts as both. Amplitude 0 = stop that hand. */
    public synchronized void pulse(int hand, float amplitude, long durationUs, boolean minDuration, boolean append,
                                   long tNs) {
        long dur;
        if (minDuration) {
            dur = MIN_PULSE_NS;
        } else if (durationUs >= 0xFFFFFFFFL) {
            dur = Long.MAX_VALUE / 4;   // XR_INFINITE_DURATION: until the game stops it
        } else {
            dur = Math.max(MIN_PULSE_NS, durationUs * 1000L);
        }
        float a = amplitude > 0f ? Math.min(amplitude, 1f) : 0f;
        for (int h = 0; h < 2; h++) {
            if (!covers(hand, h)) {
                continue;
            }
            if (a == 0f) {
                endNs[h] = 0L;
                amp[h] = 0f;
            } else {
                long from = append && endNs[h] > tNs ? endNs[h] : tNs;
                endNs[h] = from + dur;
                amp[h] = a;
            }
        }
    }

    public synchronized void stop(int hand) {
        for (int h = 0; h < 2; h++) {
            if (covers(hand, h)) {
                endNs[h] = 0L;
                amp[h] = 0f;
            }
        }
    }

    /** The strongest running pulse at {@code nowNs}, 0 when none. */
    public synchronized float level(long nowNs) {
        float out = 0f;
        for (int h = 0; h < 2; h++) {
            if (nowNs < endNs[h] && amp[h] > out) {
                out = amp[h];
            }
        }
        return out;
    }

    private static boolean covers(int hand, int h) {
        if (hand == VrWire.HAND_LEFT) {
            return h == 0;
        }
        if (hand == VrWire.HAND_RIGHT) {
            return h == 1;
        }
        return true;
    }
}
