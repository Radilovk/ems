package com.isaigu.gymapp.wearable.vr;

/**
 * Quest ↔ tablet monotonic clock offset from PING/PONG. Min-RTT filter over the last {@link #WINDOW}
 * samples: the sample with the smallest round trip has the least queueing asymmetry. Single-threaded.
 */
final class VrClockSync {
    static final int WINDOW = 16;

    private final long[] offset = new long[WINDOW];
    private final long[] rtt = new long[WINDOW];
    private int count;
    private int next;
    private long bestOffset;
    private long bestRtt = Long.MAX_VALUE;

    void reset() {
        count = 0;
        next = 0;
        bestRtt = Long.MAX_VALUE;
    }

    /** t0/t3 tablet clock, t1/t2 quest clock. Returns false for an impossible sample. */
    boolean add(long t0, long t1, long t2, long t3) {
        long r = (t3 - t0) - (t2 - t1);
        if (r < 0 || t3 < t0) return false;
        offset[next] = ((t1 - t0) + (t2 - t3)) / 2;
        rtt[next] = r;
        next = (next + 1) % WINDOW;
        if (count < WINDOW) count++;
        long br = Long.MAX_VALUE;
        long bo = 0;
        for (int i = 0; i < count; i++) {
            if (rtt[i] < br) {
                br = rtt[i];
                bo = offset[i];
            }
        }
        bestRtt = br;
        bestOffset = bo;
        return true;
    }

    boolean synced() {
        return count > 0;
    }

    /** quest − tablet, ns. */
    long offsetNs() {
        return bestOffset;
    }

    long rttNs() {
        return bestRtt;
    }

    long toTablet(long questNs) {
        return questNs - bestOffset;
    }
}
