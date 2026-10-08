package com.isaigu.gymapp.wearable.vr;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.widget.Toast;

import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.train.utils.MasterStrengthControl;
import com.isaigu.gymapp.train.utils.MusicSync;
import com.isaigu.gymapp.wearable.SafeGuard;
import com.isaigu.gymapp.wearable.WearableBleDiagLog;
import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsLang;

/**
 * SafeGuard's VR level → the XEMS controller, the way MusicSync drives it: the trainer's strength on the MA slider
 * is the ceiling ({@link MasterStrengthControl#captureCeilingFromSlider}), the level goes through MusicSync's rise
 * limit (its smoothness), is mapped onto [floor, ceiling] ({@link MasterStrengthControl#scaleFromSound}) and only
 * the newest value is written, when the suit's command queue is empty
 * ({@link MasterStrengthControl#setMasterStrength} → row.onParamsChange → SoftRamp → SafeGuard.enforce).
 * Main thread; ticks every {@link #TICK_MS} ms while a headset is linked. While MusicSync runs it owns the strength
 * and VR waits.
 */
public final class VrDrive {
    static final long TICK_MS = 10L;
    private static final long UI_INTERVAL_MS = 80L;
    private static final int RISE_TIME_MAX_MS = 600;   // = MusicSync

    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static final VrMainCall TICK = new VrMainCall(VrMainCall.TICK, false, null);

    private static Context context;
    private static boolean linked;
    private static boolean driving;
    private static boolean yieldedToMusic;
    private static String app = "";
    private static int lastSent = -1;
    private static long lastUiMs;
    private static float slewLevel;
    private static long slewLastMs;

    private VrDrive() {}

    static void setContext(Context c) {
        context = c != null ? c.getApplicationContext() : null;
    }

    /** Receiver thread → main. */
    static void postLink(boolean up, String appName) {
        MAIN.post(new VrMainCall(VrMainCall.LINK, up, appName));
    }

    static void link(boolean up, String appName) {
        try {
            if (up == linked) {
                return;
            }
            linked = up;
            app = appName != null ? appName : "";
            WearableBleDiagLog.log("vr", (up ? "link up " : "link down ") + app);
            if (up) {
                MAIN.removeCallbacks(TICK);
                MAIN.post(TICK);
                toast(XemsLang.tr("VR е свързан: ", "VR connected: ") + shortName(app));
            } else {
                MAIN.removeCallbacks(TICK);
                release();
                toast(XemsLang.tr("VR връзката спря", "VR disconnected"));
            }
        } catch (Throwable t) {
            XemsGuard.report("VrDrive.link", t);
        }
    }

    /** Training stopped by the trainer: pulses off now; the link (and the fatigue) stay. */
    public static void onTrainingStopped() {
        SafeGuard.vrStop(VrWire.HAND_BOTH);
        if (driving) {
            release();
        }
    }

    static void tick() {
        if (!linked) {
            return;
        }
        try {
            step();
        } catch (Throwable t) {
            XemsGuard.report("VrDrive.tick", t);
        }
        MAIN.postDelayed(TICK, TICK_MS);
    }

    private static void step() {
        long nowNs = System.nanoTime();
        TrainItem item = MasterStrengthControl.getTarget();
        if (MusicSync.isRunning()) {
            SafeGuard.vrLevel(null, nowNs);              // nothing sent; the fatigue keeps recovering
            if (driving) {
                release();
            }
            if (!yieldedToMusic) {
                yieldedToMusic = true;
                toast(XemsLang.tr("VR чака — музиката управлява силата", "VR waits — music drives the strength"));
            }
            return;
        }
        yieldedToMusic = false;
        int level = SafeGuard.vrLevel(item, nowNs);       // fatigue τ = 30 s + 6 s cap, 0 when the row is not running
        if (item == null || item.data == null || !item.data.start) {
            if (driving) {
                release();
            }
            return;
        }
        if (!driving) {
            engage();
        }
        int applied = MasterStrengthControl.scaleFromSound(limitRise(level));
        if (applied == lastSent || item.isSenderBusy()) {
            return;                                     // newest value wins on the next tick
        }
        long nowMs = SystemClock.elapsedRealtime();
        boolean ui = nowMs - lastUiMs >= UI_INTERVAL_MS;
        if (ui) {
            lastUiMs = nowMs;
        }
        MasterStrengthControl.setMasterStrength(applied, ui, true);
        lastSent = applied;
    }

    /** The slider's strength becomes the ceiling, MA mode, sync label — as MusicSync does on start. */
    private static void engage() {
        MasterStrengthControl.captureCeilingFromSlider();
        MasterStrengthControl.setSyncActive(true);
        MasterStrengthControl.ensureMaMode();
        MasterStrengthControl.resetApplied();
        lastSent = -1;
        slewLevel = 0f;
        slewLastMs = 0L;
        driving = true;
    }

    /** Suit to 0 now; the row keeps the trainer's strength (the ceiling) for the next phase. */
    private static void release() {
        if (!driving) {
            return;
        }
        driving = false;
        int ceiling = MasterStrengthControl.getCeiling();
        MasterStrengthControl.sendImpulseLevel(0);
        MasterStrengthControl.setSyncActive(false);
        MasterStrengthControl.resetApplied();
        MasterStrengthControl.setMasterStrength(ceiling, true, false);
        lastSent = -1;
        slewLevel = 0f;
    }

    /** MusicSync.limitRise: rise limited by the smoothness setting, falls pass at once (hits cut off cleanly). */
    private static int limitRise(int level) {
        long now = SystemClock.elapsedRealtime();
        long dt = slewLastMs == 0L ? TICK_MS : now - slewLastMs;
        slewLastMs = now;
        int riseMs = MusicSync.getSmoothness() * RISE_TIME_MAX_MS / 100;
        if (riseMs > 0 && level > slewLevel) {
            slewLevel = Math.min(level, slewLevel + 100f * Math.max(1L, dt) / riseMs);
        } else {
            slewLevel = level;
        }
        int limited = Math.round(slewLevel);
        return level > 0 && limited < 1 ? 1 : limited;
    }

    public static boolean isLinked() {
        return linked;
    }

    public static boolean isDriving() {
        return driving;
    }

    private static String shortName(String pkg) {
        int dot = pkg.lastIndexOf('.');
        return dot >= 0 && dot < pkg.length() - 1 ? pkg.substring(dot + 1) : pkg;
    }

    private static void toast(String text) {
        Context c = context;
        if (c != null) {
            Toast.makeText(c, text, Toast.LENGTH_SHORT).show();
        }
    }
}
