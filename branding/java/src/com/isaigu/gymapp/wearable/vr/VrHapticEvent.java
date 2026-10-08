package com.isaigu.gymapp.wearable.vr;

/** One xrApplyHapticFeedback call from the game, already time-mapped to this tablet's clock. */
public final class VrHapticEvent {
    /** {@link VrWire#HAND_LEFT} / RIGHT / BOTH / UNKNOWN. */
    public final int hand;
    /** 0..1 as the game requested (PCM / envelope: peak). */
    public final float amplitude;
    /** 0 with {@link VrWire#HF_MIN_DURATION}; 0xFFFFFFFF (as unsigned) = infinite. */
    public final long durationUs;
    /** 0 with {@link VrWire#HF_FREQ_UNSPEC}. */
    public final float frequencyHz;
    /** {@link VrWire}.HF_* bits. */
    public final int flags;
    public final int seq;
    /** When the game made the call, in {@link System#nanoTime()} of this tablet; receive time when unsynced. */
    public final long eventTimeNs;
    /** Quest call -> tablet receive, ns; -1 until the clock is synced. */
    public final long latencyNs;
    /** Package name of the game. */
    public final String app;

    VrHapticEvent(int hand, float amplitude, long durationUs, float frequencyHz, int flags, int seq,
                  long eventTimeNs, long latencyNs, String app) {
        this.hand = hand;
        this.amplitude = amplitude;
        this.durationUs = durationUs;
        this.frequencyHz = frequencyHz;
        this.flags = flags;
        this.seq = seq;
        this.eventTimeNs = eventTimeNs;
        this.latencyNs = latencyNs;
        this.app = app;
    }

    public boolean isAppend() {
        return (flags & VrWire.HF_APPEND) != 0;
    }

    public boolean isMinDuration() {
        return (flags & VrWire.HF_MIN_DURATION) != 0;
    }

    /** Pulse end in the tablet clock; for min-duration pulses uses {@code minPulseUs}. */
    public long endTimeNs(long minPulseUs) {
        long us = isMinDuration() ? minPulseUs : durationUs;
        return eventTimeNs + us * 1000L;
    }

    @Override
    public String toString() {
        return "VrHaptic{hand=" + hand + " amp=" + amplitude + " dur=" + durationUs + "us f=" + frequencyHz
                + " flags=0x" + Integer.toHexString(flags) + " seq=" + seq + " lat=" + latencyNs + "ns}";
    }
}
