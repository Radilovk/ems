package com.isaigu.gymapp.wearable.vr;

import com.isaigu.gymapp.wearable.SafeGuard;

/**
 * The one {@link VrHapticSink}: VrTelemetryReceiver → wearable/SafeGuard (fatigue τ = 30 s, 6 s continuous cap)
 * → {@link VrDrive} (MusicSync's way to the controller). Nothing here writes to the suit: events only reach the
 * guard, and the drive asks the guard for the level on its own tick, so no path skips SafeGuard.
 * Receiver thread; must not block.
 */
public final class VrHapticRouter implements VrHapticSink {
    @Override
    public void onVrHaptic(VrHapticEvent e) {
        SafeGuard.vrPulse(e);
    }

    @Override
    public void onVrStop(int hand, int reason, long eventTimeNs) {
        SafeGuard.vrStop(hand);
    }

    @Override
    public void onVrLink(boolean up, String app) {
        if (!up) {
            SafeGuard.vrStop(VrWire.HAND_BOTH);
        }
        VrDrive.postLink(up, app);
    }
}
