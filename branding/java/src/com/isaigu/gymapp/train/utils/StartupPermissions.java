package com.isaigu.gymapp.train.utils;

import android.app.Activity;

/**
 * No runtime permission prompts — app targets API 22 so dangerous permissions are
 * granted at install time (single accept on APK install). Intentionally empty.
 */
public final class StartupPermissions {

    private StartupPermissions() {
    }

    public static void requestAllIfNeeded(Activity activity) {
        // Install-time grant mode (targetSdk 22): do not call requestPermissions().
    }
}
