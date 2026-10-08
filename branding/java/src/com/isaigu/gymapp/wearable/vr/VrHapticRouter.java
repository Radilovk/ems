package com.isaigu.gymapp.wearable.vr;

/**
 * The one {@link VrHapticSink}: VrTelemetryReceiver → {@link VrPulses} → {@link VrDrive} (MusicSync's way to the
 * controller) → row.onParamsChange → SoftRamp → wearable/SafeGuard.enforce (the owner's absolute limits).
 * Manual mode: no limits of its own. Receiver thread; must not block.
 */
public final class VrHapticRouter implements VrHapticSink {
    static final VrPulses PULSES = new VrPulses();

    @Override
    public void onVrHaptic(VrHapticEvent e) {
        PULSES.pulse(e.hand, e.amplitude, e.durationUs, e.isMinDuration(), e.isAppend(), e.eventTimeNs);
    }

    @Override
    public void onVrStop(int hand, int reason, long eventTimeNs) {
        PULSES.stop(hand);
    }

    @Override
    public void onVrLink(boolean up, String app) {
        if (!up) {
            PULSES.stop(VrWire.HAND_BOTH);
        }
        VrDrive.postLink(up, app);
    }
}
