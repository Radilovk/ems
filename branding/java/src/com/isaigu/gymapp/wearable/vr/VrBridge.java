package com.isaigu.gymapp.wearable.vr;

import android.content.Context;

import com.isaigu.gymapp.wearable.WearableBleDiagLog;
import com.isaigu.gymapp.widget.XemsGuard;

/**
 * Lifecycle of the Quest 3 haptic bridge (vr-bridge/): listening while the training screen is open
 * (wearable/NotifyWearableBridge attach / detach), pulses off on a full training stop.
 */
public final class VrBridge {
    private static VrTelemetryReceiver receiver;
    /** The Mastogo panel is open: the receiver stays up even when the training screen closes (owner's test). */
    private static boolean held;
    private static boolean trainingOpen;

    private VrBridge() {}

    /** Mastogo panel open: listen for the headset (zone hits) even without a training screen. */
    public static synchronized void hold(Context context) {
        held = true;
        attach(context);
    }

    public static synchronized void unhold() {
        held = false;
        if (!trainingOpen) {
            detach();
        }
    }

    public static synchronized void attach(Context context) {
        trainingOpen = trainingOpen || !held;
        if (receiver != null || context == null) {
            return;
        }
        try {
            VrDrive.setContext(context);
            VrTelemetryReceiver r = new VrTelemetryReceiver(context, new VrHapticRouter());
            r.setControl(new VrControl());              // the game's own impulse dock (XEMS Studio)
            r.setZoneSink(new VrZoneRouter());          // zone hits from the bHaptics listener (bhaptics-spy/)
            r.start();
            receiver = r;
            WearableBleDiagLog.log("vr", "listening udp " + VrWire.PORT);
        } catch (Throwable t) {
            XemsGuard.report("VrBridge.attach", t);
        }
    }

    public static synchronized void detach() {
        trainingOpen = false;
        if (held) {
            return;
        }
        VrTelemetryReceiver r = receiver;
        receiver = null;
        if (r == null) {
            return;
        }
        try {
            r.stop();                                   // a linked headset → onVrLink(false) → suit to 0
        } catch (Throwable t) {
            XemsGuard.report("VrBridge.detach", t);
        }
    }

    public static void onTrainingStopped() {
        try {
            VrDrive.onTrainingStopped();
        } catch (Throwable t) {
            XemsGuard.report("VrBridge.onTrainingStopped", t);
        }
    }

    public static synchronized boolean isListening() {
        return receiver != null;
    }
}
