package com.isaigu.gymapp.wearable.vr;

/**
 * The impulse a hit taken in VR is felt with, handed to train.model.SoftRamp (no dependencies, so the ramp's compile
 * does not drag the VR classes in): frequency and depth (pulse width) while a zone hit still runs, 0 = the row's own.
 */
public final class VrHitParams {
    private VrHitParams() {}

    static volatile int hz;
    static volatile int width;
    static volatile long untilNs;

    /** Frequency to send now, 0 = the row's own. */
    public static int hzNow() {
        return System.nanoTime() < untilNs ? hz : 0;
    }

    /** Depth (pulse width, µs) to send now, 0 = the row's own. */
    public static int widthNow() {
        return System.nanoTime() < untilNs ? width : 0;
    }
}
