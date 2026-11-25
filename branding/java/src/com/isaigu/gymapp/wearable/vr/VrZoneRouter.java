package com.isaigu.gymapp.wearable.vr;

import com.isaigu.gymapp.wearable.mastogo.MastogoScreen;

/**
 * Zone hits (the bHaptics listener on the headset → VrTelemetryReceiver) → what the player's body should feel:
 * (1) the suit: the channels of {@link VrZoneMap} contract for the hit's length — the whole-suit level runs through
 * {@link VrHapticRouter#PULSES} like every VR haptic (so the row's program, the ceiling and the absolute limits all
 * apply) while {@link VrDrive} lets only those channels through ({@link #focusAt}); (2) the Mastogo unit (on the
 * shoulder) gives its УДАР for every hit taken — test mode, owner 2026-11-25: "every single hit to us".
 * Receiver thread writes, the drive's main-thread tick reads. Pure state + two calls out.
 */
public final class VrZoneRouter implements VrZoneSink {
    /** The Mastogo link takes ~4 beats a second (docs/xems-mastogo.md): hits closer than this share one. */
    static final long MASTOGO_GAP_NS = 250000000L;

    private static final VrZoneFocus FOCUS = new VrZoneFocus(VrSettings.CHANNELS);
    /** Hits taken since the link came up (VrPanel / the log read them). */
    static volatile int taken;
    private long lastMastogoNs;

    @Override
    public void onVrZoneHit(VrZoneHit h) {
        if (!VrZoneMap.taken(h.region)) {
            return;
        }
        int level = h.maxLevel();
        if (level <= 0) {
            return;
        }
        taken++;
        long now = System.nanoTime();
        int mask = VrZoneMap.channels(h.region, h.levels);
        if (mask != 0) {
            long dur = Math.max(VrPulses.MIN_PULSE_NS, h.durationMs * 1000000L);
            FOCUS.add(mask, now + dur);
            VrHapticRouter.PULSES.pulse(VrWire.HAND_BOTH, level / 100f, dur / 1000L, false, false, now);
        }
        if (now - lastMastogoNs >= MASTOGO_GAP_NS) {
            lastMastogoNs = now;
            MastogoScreen.vrHit();
        }
    }

    /** Channels with a zone hit still running at {@code nowNs} (bit = partsDisabled index); 0 = none. */
    static int focusAt(long nowNs) {
        return FOCUS.at(nowNs);
    }

    static void reset() {
        FOCUS.clear();
        taken = 0;
    }
}
