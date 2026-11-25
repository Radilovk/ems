package com.isaigu.gymapp.wearable.vr;

/**
 * Which suit channels a zone hit still holds at a moment: per channel the time its last hit ends. The receiver
 * thread adds, the drive's main-thread tick reads. Pure Java (host-tested).
 */
final class VrZoneFocus {
    private final long[] endNs;

    VrZoneFocus(int channels) {
        endNs = new long[channels];
    }

    /** Channels in {@code mask} (bit = partsDisabled index) run until {@code untilNs}. */
    void add(int mask, long untilNs) {
        synchronized (endNs) {
            for (int c = 0; c < endNs.length; c++) {
                if ((mask & (1 << c)) != 0 && untilNs > endNs[c]) {
                    endNs[c] = untilNs;
                }
            }
        }
    }

    /** The channels whose hit has not ended at {@code nowNs}. */
    int at(long nowNs) {
        int m = 0;
        synchronized (endNs) {
            for (int c = 0; c < endNs.length; c++) {
                if (endNs[c] > nowNs) {
                    m |= 1 << c;
                }
            }
        }
        return m;
    }

    void clear() {
        synchronized (endNs) {
            for (int c = 0; c < endNs.length; c++) {
                endNs[c] = 0L;
            }
        }
    }
}
