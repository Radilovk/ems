package com.isaigu.gymapp.wearable.vr;

/**
 * Where VR telemetry leaves the network layer: SafeGuard (fatigue model, 6 s continuous-pulse cap) and
 * MusicSync sit behind this. Called on the receiver thread (urgent priority) in arrival order — keep it
 * non-blocking: map, clamp, post to the BLE writer and return.
 */
public interface VrHapticSink {
    /** A haptic pulse the game requested. Stale (> maxStaleMs), duplicate and reordered packets never arrive here. */
    void onVrHaptic(VrHapticEvent e);

    /** Stop the hand(s) now. {@code reason}: {@link VrWire#SR_APP}, SR_UNFOCUS (menu / headset off), SR_SHUTDOWN. */
    void onVrStop(int hand, int reason, long eventTimeNs);

    /** Link up (HELLO from a new game session) or down (silence > link timeout). Down ⇒ treat as stop-all. */
    void onVrLink(boolean up, String app);
}
