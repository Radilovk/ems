package com.isaigu.gymapp.wearable.vr;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;

import com.isaigu.gymapp.train.utils.MasterStrengthControl;
import com.isaigu.gymapp.wearable.WearableBleDiagLog;
import com.isaigu.gymapp.widget.XemsGuard;

import java.nio.ByteBuffer;

/**
 * The impulse dock of XEMS Studio (owner, 2026-10: "a dock for the impulses, channels, strength"): the game's
 * "Костюм" page and wrist dock send CTRL packets on the receiver's port; the tablet applies each as the trainer's
 * own {@link VrPanel} would and answers with a STATE. {@link VrTelemetryReceiver} accepts them only from the paired
 * headset's address. Ops: the game drives the strength or not (pause), the trainer's strength (the ceiling, only while
 * VR drives — never the manual strength), weakest hit (floor %), which hits pass (gate preset), rise (smoothness),
 * resting channels, defaults. The owner's absolute limits stay on every send (SafeGuard.enforce). Main thread for the
 * changes; no lambdas or anonymous classes (dx).
 */
public final class VrControl implements VrControlSink {
    /** Largest strength step one CTRL may ask for. */
    static final int STRENGTH_STEP_MAX = 5;

    private static final Handler MAIN = new Handler(Looper.getMainLooper());

    @Override
    public void onVrControl(int op, int arg, int value) {
        if (op != VrWire.CTRL_QUERY) {
            MAIN.post(new Apply(op, arg, value));
        }
    }

    @Override
    public void fillState(ByteBuffer b, int off) {
        boolean driving = VrDrive.isDriving();
        int flags = 0;
        if (VrDrive.isLinked()) {
            flags |= VrWire.ST_LINKED;
        }
        if (driving) {
            flags |= VrWire.ST_DRIVING;
        }
        if (VrSettings.isPaused()) {
            flags |= VrWire.ST_PAUSED;
        }
        if (VrDrive.isYieldedToMusic()) {
            flags |= VrWire.ST_MUSIC;
        }
        b.put(off, (byte) flags);
        b.put(off + 1, (byte) VrSettings.sensitivity());
        b.put(off + 2, (byte) VrSettings.smoothIndex());
        b.put(off + 3, (byte) VrSettings.floorPercent());
        b.putShort(off + 4, (short) VrSettings.restMask());
        b.put(off + 6, (byte) Math.max(0, Math.min(100, VrDrive.liveLevel())));
        int applied = driving ? VrDrive.liveApplied() : -1;
        b.put(off + 7, (byte) Math.max(-1, Math.min(100, applied)));
        b.putInt(off + 8, driving ? MasterStrengthControl.getCeiling() : -1);
        b.putInt(off + 12, VrDrive.hitsPassed());
        b.putInt(off + 16, VrDrive.hitsDropped());
        b.putInt(off + 20, 0);
    }

    /** One control, on the main thread. */
    static void apply(int op, int arg, int value) {
        Context c = VrDrive.context();
        switch (op) {
            case VrWire.CTRL_PAUSE:
                VrSettings.setPaused(c, arg != 0);
                break;
            case VrWire.CTRL_STRENGTH:
                if (VrDrive.isDriving() && value != 0) {   // the ceiling the game's hits are scaled to, as MA +/−
                    int d = Math.max(-STRENGTH_STEP_MAX, Math.min(STRENGTH_STEP_MAX, value));
                    MasterStrengthControl.adjustCeiling(d);
                    MasterStrengthControl.refreshSyncLabel();
                }
                break;
            case VrWire.CTRL_FLOOR:
                VrSettings.setFloorPercent(c, value);
                break;
            case VrWire.CTRL_SENS:
                VrSettings.setSensitivity(c, arg);
                break;
            case VrWire.CTRL_SMOOTH:
                VrSettings.setSmoothIndex(c, arg);
                break;
            case VrWire.CTRL_REST:
                if (arg < VrSettings.CHANNELS) {
                    VrSettings.setRests(c, arg, value != 0);
                }
                break;
            case VrWire.CTRL_RESET:
                VrSettings.reset(c);
                break;
            default:
                return;
        }
        WearableBleDiagLog.log("vr", "dock " + op + " " + arg + " " + value);
        VrPanel.onRemoteChange();
    }

    /** Main-thread hop (named, dx-safe). */
    static final class Apply implements Runnable {
        private final int op;
        private final int arg;
        private final int value;

        Apply(int op, int arg, int value) {
            this.op = op;
            this.arg = arg;
            this.value = value;
        }

        @Override
        public void run() {
            try {
                apply(op, arg, value);
            } catch (Throwable t) {
                XemsGuard.report("VrControl", t);
            }
        }
    }
}
