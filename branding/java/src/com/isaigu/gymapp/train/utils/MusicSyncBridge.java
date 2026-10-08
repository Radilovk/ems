package com.isaigu.gymapp.train.utils;

import android.app.Activity;

import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.wearable.vr.VrDrive;

/** Hooks from patched training UI into music sync. */
public class MusicSyncBridge {
    public static boolean attachManager(Activity activity) {
        return activity != null;
    }

    public static boolean isSyncRunning() {
        return MusicSync.isRunning();
    }

    /** Block index / muscle / manual master-slider edits while sync (music or VR) drives strength. */
    public static boolean shouldBlockManualControls() {
        return MusicSync.isRunning() || VrDrive.isDriving();
    }

    /**
     * Intercept master +/− when MA index is selected during sync.
     * @return true if handled (skip addStrenth)
     */
    public static boolean onMaStrengthDelta(TrainItem item, int delta) {
        if (!MusicSync.isRunning() && VrDrive.isDriving() && MusicSync.isTargetItem(item) && delta != 0) {
            MasterStrengthControl.adjustCeiling(delta);   // VR: +/− moves the ceiling, the next tick scales to it
            MasterStrengthControl.refreshSyncLabel();
            return true;
        }
        if (!MusicSync.isRunning() || !MusicSync.isTargetItem(item)) {
            return false;
        }
        return MusicSync.adjustCeiling(delta);
    }
}
