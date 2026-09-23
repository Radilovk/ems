package com.isaigu.gymapp.wearable;

import android.content.Context;
import android.content.SharedPreferences;

/** Persisted settings for direct BLE wearable sync. */
public final class WearableConfig {
    private static final String PREFS = "wearable_bridge";
    private static final String KEY_ENABLED = "enabled";
    private static final String KEY_ARMED = "armed";
    private static final String KEY_AUTO_REDUCE = "auto_reduce";
    private static final String KEY_HR_THRESHOLD = "hr_threshold";
    private static final String KEY_STRENGTH_STEP = "strength_step";
    private static final String KEY_BAND_MAC = "band_mac";
    private static final String KEY_AUTH_KEY = "auth_key";

    private WearableConfig() {}

    private static SharedPreferences prefs(Context context) {
        return context.getApplicationContext()
                .getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    public static boolean isEnabled(Context context) {
        return prefs(context).getBoolean(KEY_ENABLED, true);
    }

    public static boolean isArmed(Context context) {
        return prefs(context).getBoolean(KEY_ARMED, false);
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

    /** Band BLE MAC (e.g. D0:62:2C:26:49:60). */
    public static String getBandMac(Context context) {
        return prefs(context).getString(KEY_BAND_MAC, "");
    }

    public static void setBandMac(Context context, String mac) {
        prefs(context).edit().putString(KEY_BAND_MAC,
                mac != null ? mac.trim() : "").apply();
    }

    /** 16-byte auth key as 32 hex chars (from Mi Fitness / auth key extractor). */
    public static String getAuthKey(Context context) {
        return prefs(context).getString(KEY_AUTH_KEY, "");
    }

    public static void setAuthKey(Context context, String key) {
        prefs(context).edit().putString(KEY_AUTH_KEY,
                key != null ? key.trim() : "").apply();
    }

    public static boolean isDirectBleMode(Context context) {
        return isConfigured(context);
    }

    /** True when auth key (32 hex) and MAC are set for direct BLE. */
    public static boolean isConfigured(Context context) {
        if (context == null) {
            return false;
        }
        String key = getAuthKey(context);
        if (key == null) {
            return false;
        }
        String clean = key.replace(" ", "").replace(":", "").replace("-", "");
        if (clean.startsWith("0x") || clean.startsWith("0X")) {
            clean = clean.substring(2);
        }
        if (clean.length() != 32) {
            return false;
        }
        String mac = getBandMac(context);
        return mac != null && mac.replace(":", "").replace("-", "").trim().length() >= 12;
    }

    public static void setEnabled(Context context, boolean enabled) {
        prefs(context).edit().putBoolean(KEY_ENABLED, enabled).apply();
    }

    public static void setArmed(Context context, boolean armed) {
        prefs(context).edit().putBoolean(KEY_ARMED, armed).apply();
    }

    public static void setAutoReduceEnabled(Context context, boolean enabled) {
        prefs(context).edit().putBoolean(KEY_AUTO_REDUCE, enabled).apply();
    }

    public static void setHrThreshold(Context context, int threshold) {
        if (threshold < 80) {
            threshold = 80;
        }
        if (threshold > 220) {
            threshold = 220;
        }
        prefs(context).edit().putInt(KEY_HR_THRESHOLD, threshold).apply();
    }

    public static void setStrengthStep(Context context, int step) {
        if (step < 1) {
            step = 1;
        }
        if (step > 20) {
            step = 20;
        }
        prefs(context).edit().putInt(KEY_STRENGTH_STEP, step).apply();
    }
}
