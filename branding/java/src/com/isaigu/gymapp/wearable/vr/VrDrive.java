package com.isaigu.gymapp.wearable.vr;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.widget.Toast;

import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.train.utils.MasterStrengthControl;
import com.isaigu.gymapp.train.utils.MusicSync;
import com.isaigu.gymapp.wearable.WearableBleDiagLog;
import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsLang;

/**
 * The game's haptic level ({@link VrPulses}) → the XEMS controller, the way MusicSync drives it: the trainer's strength on the MA slider
 * is the ceiling ({@link MasterStrengthControl#captureCeilingFromSlider}), the level goes through MusicSync's rise
 * limit (its smoothness), is mapped onto [floor, ceiling] ({@link MasterStrengthControl#scaleFromSound}) and only
 * the newest value is written, when the suit's command queue is empty
 * ({@link MasterStrengthControl#setMasterStrength} → row.onParamsChange → SoftRamp → SafeGuard.enforce).
 * Main thread; ticks every {@link #TICK_MS} ms while a headset is linked. While MusicSync runs it owns the strength
 * and VR waits. Manual mode: the row's program and the absolute limits at every send are the only limits; while
 * VR drives, traps / back / lower back / calf are off ({@link VrZones}).
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
    /** The trainer's floor while VR is not driving (music keeps its own); put back on release. */
    private static int savedFloor = -1;
    /** Live, for VrPanel: the game's level 0–100 and the strength sent (−1 = not driving). */
    private static volatile int liveLevel;
    private static volatile int liveApplied = -1;

    private VrDrive() {}

    static void setContext(Context c) {
        context = c != null ? c.getApplicationContext() : null;
        VrSettings.load(context);
    }

    /** VrPanel changed a setting (main thread): apply it at once if VR is driving a row. */
    static void onSettingsChanged() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            MAIN.post(new VrMainCall(VrMainCall.SETTINGS, false, null));
            return;
        }
        try {
            if (!driving) {
                return;
            }
            if (VrSettings.isPaused()) {
                release();
                return;
            }
            MasterStrengthControl.setFloorPercent(VrSettings.floorPercent());
            VrZones.reapply();
        } catch (Throwable t) {
            XemsGuard.report("VrDrive.settings", t);
        }
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
                com.isaigu.gymapp.widget.XemsNav.onVrLinked();   // first headset ever → "VR" tile onto the bar
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
        VrHapticRouter.PULSES.stop(VrWire.HAND_BOTH);
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
        if (VrSettings.isPaused() || item == null || item.data == null || !item.data.start) {
            if (driving) {
                release();
            }
            return;
        }
        if (!driving) {
            engage(item);
        }
        int level = Math.round(VrHapticRouter.PULSES.level(nowNs) * 100f);
        int applied = MasterStrengthControl.scaleFromSound(limitRise(level));
        liveLevel = level;
        liveApplied = applied;
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

    /** The slider's strength becomes the ceiling, MA mode, sync label — as MusicSync does on start; zones off. */
    private static void engage(TrainItem item) {
        MasterStrengthControl.captureCeilingFromSlider();
        savedFloor = MasterStrengthControl.getFloorPercent();
        MasterStrengthControl.setFloorPercent(VrSettings.floorPercent());
        MasterStrengthControl.setSyncActive(true);
        MasterStrengthControl.ensureMaMode();
        MasterStrengthControl.resetApplied();
        lastSent = -1;
        slewLevel = 0f;
        slewLastMs = 0L;
        driving = true;
        VrZones.engage(item);
    }

    /** Suit to 0 now; the row keeps the trainer's strength (the ceiling) for the next phase. */
    private static void release() {
        if (!driving) {
            return;
        }
        driving = false;
        VrZones.release();
        if (savedFloor >= 0) {
            MasterStrengthControl.setFloorPercent(savedFloor);
            savedFloor = -1;
        }
        liveLevel = 0;
        liveApplied = -1;
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
        int riseMs = VrSettings.smoothness() * RISE_TIME_MAX_MS / 100;
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

    /** The linked game's package ("" when none). */
    public static String appName() {
        return linked ? app : "";
    }

    public static String shortAppName() {
        return shortName(appName());
    }

    public static int liveLevel() {
        return driving ? liveLevel : 0;
    }

    public static int liveApplied() {
        return liveApplied;
    }

    /** Waiting because the music player drives the strength. */
    public static boolean isYieldedToMusic() {
        return linked && yieldedToMusic;
    }

    public static int hitsPassed() {
        return VrHapticRouter.passed;
    }

    public static int hitsDropped() {
        return VrHapticRouter.dropped;
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
