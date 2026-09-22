package com.isaigu.gymapp.wearable;

import android.content.Context;
import android.content.SharedPreferences;

/** Persisted settings for Notify / wearable bridge. */
public final class WearableConfig {
    private static final String PREFS = "wearable_bridge";
    private static final String KEY_ENABLED = "enabled";
    private static final String KEY_AUTO_REDUCE = "auto_reduce";
    private static final String KEY_HR_THRESHOLD = "hr_threshold";
    private static final String KEY_STRENGTH_STEP = "strength_step";
    private static final String KEY_TASKER_PASSWORD = "tasker_password";

    private WearableConfig() {}

    private static SharedPreferences prefs(Context context) {
        return context.getApplicationContext()
                .getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    public static boolean isEnabled(Context context) {
        return prefs(context).getBoolean(KEY_ENABLED, true);
    }

    public static boolean isAutoReduceEnabled(Context context) {
        return prefs(context).getBoolean(KEY_AUTO_REDUCE, false);
    }

    public static int getHrThreshold(Context context) {
        return prefs(context).getInt(KEY_HR_THRESHOLD, 170);
    }

    public static int getStrengthStep(Context context) {
        return prefs(context).getInt(KEY_STRENGTH_STEP, 5);
    }

    public static String getTaskerPassword(Context context) {
        return prefs(context).getString(KEY_TASKER_PASSWORD, "");
    }
}
