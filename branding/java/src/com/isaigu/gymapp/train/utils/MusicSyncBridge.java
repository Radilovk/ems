package com.isaigu.gymapp.train.utils;

import android.app.Activity;

/** Kept for compatibility; strength is applied via CommandUtil PDU hook. */
public class MusicSyncBridge {
    public static boolean attachManager(Activity activity) {
        return activity != null;
    }
}
