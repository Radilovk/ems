package com.isaigu.gymapp.wearable.vr;

/**
 * The one {@link VrHapticSink}: VrTelemetryReceiver → {@link VrNoiseGate} → {@link VrPulses} → {@link VrDrive}
 * (MusicSync's way to the controller) → row.onParamsChange → SoftRamp → wearable/SafeGuard.enforce (the owner's
 * absolute limits).
 * Manual mode: no limits of its own. Receiver thread; must not block.
 */
public final class VrHapticRouter implements VrHapticSink {
    static final VrPulses PULSES = new VrPulses();
    /** Since the headset linked: haptics that became an impulse / that the gate dropped (VrPanel shows them). */
    static volatile int passed;
    static volatile int dropped;

    @Override
    public void onVrHaptic(VrHapticEvent e) {
        if (!VrNoiseGate.passes(e)) {
            dropped++;                                  // receiver thread is the only writer
            return;                                     // UI click / hover / weak rumble: no impulse
        }
        passed++;
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
        } else {
            passed = 0;
            dropped = 0;
        }
        VrDrive.postLink(up, app);
    }
}
