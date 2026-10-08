package com.isaigu.gymapp.wearable.vr;

/**
 * VR haptics → one safe output level (0..1 of the trainer's set strength). Owned by wearable/SafeGuard, which is
 * the only caller; not thread-safe on its own (SafeGuard locks it).
 *
 * <p>Fatigue (docs/xems-ems-physiology.md §3): {@code dF/dt = w·ρ − F/τ}, τ = 30 s, w = 1 (85 Hz, conservative),
 * ρ = the output actually sent. Integrated exactly per tick. F_max = 18.4 (§3.3, τ 30 s); above
 * {@link #SOFT_START}·F_max the output is scaled down to {@link #SOFT_FLOOR} at F_max; at F_max it is cut to 0
 * until F has fallen to F_rec = F_max / 3.
 *
 * <p>Continuous impulse: output with no gap ≥ {@link #CONT_GAP_NS} for {@link #CONT_MAX_NS} (6 s) → forced rest
 * {@link #CAP_REST_NS} (6 s / 4 s, §3.3). Every pulse lasts at least {@link #MIN_PULSE_NS} (a shorter one is not
 * felt as a contraction) and at most 6 s (an infinite haptic is cut there anyway).
 */
public final class VrFatigue {
    public static final double TAU_S = 30.0;
    public static final double F_MAX = 18.4;
    public static final double F_REC = F_MAX / 3.0;
    public static final double SOFT_START = 0.6;
    public static final float SOFT_FLOOR = 0.3f;
    public static final long CONT_MAX_NS = 6000000000L;
    public static final long CONT_GAP_NS = 1000000000L;
    public static final long CAP_REST_NS = 4000000000L;
    public static final long MIN_PULSE_NS = 120000000L;

    private final long[] endNs = new long[2];   // [0] left, [1] right
    private final float[] amp = new float[2];
    private double f;
    private long lastNs;
    private float lastOut;
    private boolean locked;
    private long onSinceNs = -1L;
    private long lastOnNs;
    private long restUntilNs;

    /** One game haptic. {@code hand}: VrWire.HAND_*; UNKNOWN counts as both. Amplitude 0 = stop that hand. */
    public void pulse(int hand, float amplitude, long durationUs, boolean minDuration, boolean append, long tNs) {
        long dur = minDuration ? MIN_PULSE_NS : durationUs * 1000L;
        if (durationUs < 0 || dur < 0 || dur > CONT_MAX_NS) {
            dur = CONT_MAX_NS;          // XR_INFINITE_DURATION / 0xFFFFFFFF µs
        } else if (dur < MIN_PULSE_NS) {
            dur = MIN_PULSE_NS;
        }
        float a = amplitude > 0f ? Math.min(amplitude, 1f) : 0f;
        for (int h = 0; h < 2; h++) {
            if (!covers(hand, h)) {
                continue;
            }
            if (a == 0f) {
                endNs[h] = 0L;
                amp[h] = 0f;
            } else if (append && endNs[h] > tNs) {
                endNs[h] = Math.min(endNs[h] + dur, tNs + CONT_MAX_NS);
                amp[h] = a;
            } else {
                endNs[h] = tNs + dur;
                amp[h] = a;
            }
        }
    }

    public void stop(int hand) {
        for (int h = 0; h < 2; h++) {
            if (covers(hand, h)) {
                endNs[h] = 0L;
                amp[h] = 0f;
            }
        }
    }

    /** Pulses off; the fatigue (and a running forced rest) stay — the body does not forget. */
    public void stopAll() {
        stop(VrWire.HAND_BOTH);
        onSinceNs = -1L;
    }

    /**
     * Guarded output 0..1 at {@code nowNs}; integrates the fatigue with the previous output first.
     * {@code open} false (row not running / VR not driving) → 0, fatigue keeps recovering.
     */
    public float level(long nowNs, boolean open) {
        integrate(nowNs);
        float requested = 0f;
        if (open) {
            for (int h = 0; h < 2; h++) {
                if (nowNs < endNs[h] && amp[h] > requested) {
                    requested = amp[h];
                }
            }
        }
        double load = f / F_MAX;
        if (load >= 1.0) {
            locked = true;
        } else if (locked && f <= F_REC) {
            locked = false;
        }
        float out = 0f;
        if (requested > 0f && !locked && nowNs >= restUntilNs) {
            float scale = load <= SOFT_START ? 1f
                    : (float) (1.0 - (1.0 - SOFT_FLOOR) * (load - SOFT_START) / (1.0 - SOFT_START));
            out = requested * scale;
        }
        if (out > 0f) {
            if (onSinceNs < 0L || nowNs - lastOnNs >= CONT_GAP_NS) {
                onSinceNs = nowNs;
            }
            lastOnNs = nowNs;
            if (nowNs - onSinceNs >= CONT_MAX_NS) {
                restUntilNs = nowNs + CAP_REST_NS;
                onSinceNs = -1L;
                out = 0f;
            }
        }
        lastOut = out;
        return out;
    }

    private void integrate(long nowNs) {
        if (lastNs != 0L && nowNs > lastNs) {
            double dt = (nowNs - lastNs) / 1e9;
            double e = Math.exp(-dt / TAU_S);
            f = f * e + lastOut * TAU_S * (1.0 - e);   // exact for a constant output over dt
        }
        lastNs = nowNs;
    }

    /** F / F_max (1 = limit). */
    public double load() {
        return f / F_MAX;
    }

    public boolean isLocked() {
        return locked;
    }

    public boolean isCapResting(long nowNs) {
        return nowNs < restUntilNs;
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
