package com.isaigu.gymapp.wearable;

import android.content.Context;
import android.content.SharedPreferences;

/** Persisted settings for direct BLE wearable sync. */
public final class WearableConfig {
    private static final String PREFS = "wearable_bridge";
    private static final String KEY_ENABLED = "enabled";
    private static final String KEY_ARMED = "armed";
    private static final String KEY_AUTO_REDUCE = "auto_reduce_v2";
    private static final String KEY_HR_THRESHOLD = "hr_threshold";
    private static final String KEY_STRENGTH_STEP = "strength_step";
    private static final String KEY_BAND_MAC = "band_mac";
    private static final String KEY_AUTH_KEY = "auth_key";
    /** Upper HR limit typed by the trainer (has priority over the recommended one). */
    private static final String KEY_HR_MANUAL = "hr_threshold_manual";
    /** Resting HR from the last 30 s calibration of the pulse module. */
    private static final String KEY_HR_REST = "hr_rest";

    private WearableConfig() {}

    private static SharedPreferences prefs(Context context) {
        return context.getApplicationContext()
                .getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    public static boolean isEnabled(Context context) {
        return prefs(context).getBoolean(KEY_ENABLED, true);
    }

    /** Dial activated in this app run; a fresh start always begins with the HR module off. */
    private static boolean armedThisRun;

    public static boolean isArmed(Context context) {
        return armedThisRun && prefs(context).getBoolean(KEY_ARMED, false);
    }

    /** HR-driven strength control is off until the trainer turns it on in the ♥ settings. */
    public static boolean isAutoReduceEnabled(Context context) {
        return prefs(context).getBoolean(KEY_AUTO_REDUCE, false);
    }

    /** Effective upper HR limit: the trainer's value, else the recommended one. */
    public static int getHrThreshold(Context context) {
        if (isHrThresholdManual(context)) {
            return prefs(context).getInt(KEY_HR_THRESHOLD, HrGuardCore.UPPER_DEFAULT);
        }
        return HrGuardCore.autoUpper(getRestHr(context));
    }

    public static boolean isHrThresholdManual(Context context) {
        return prefs(context).getBoolean(KEY_HR_MANUAL, false);
    }

    /** Value from the HR field: equal to the recommended one (or 0) → automatic again. */
    public static void setHrThresholdFromField(Context context, int value) {
        int auto = HrGuardCore.autoUpper(getRestHr(context));
        if (value <= 0 || value == auto) {
            prefs(context).edit().putBoolean(KEY_HR_MANUAL, false).apply();
            return;
        }
        prefs(context).edit().putBoolean(KEY_HR_MANUAL, true).apply();
        setHrThreshold(context, value);
    }

    public static int getRestHr(Context context) {
        return prefs(context).getInt(KEY_HR_REST, -1);
    }

    public static void setRestHr(Context context, int bpm) {
        prefs(context).edit().putInt(KEY_HR_REST, bpm).apply();
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

    // ================================================================ saved bands (MAC + key)

    private static final String KEY_SAVED_BANDS = "saved_bands";

    /** Remember a band (MAC + key + name) so it can be picked later; newest first, max 8. */
    public static void rememberBand(Context context, String mac, String key, String name) {
        if (context == null || mac == null || key == null || mac.length() == 0 || key.length() != 32) {
            return;
        }
        try {
            org.json.JSONArray old = savedBandsJson(context);
            org.json.JSONArray out = new org.json.JSONArray();
            org.json.JSONObject me = new org.json.JSONObject();
            me.put("mac", mac.toUpperCase(java.util.Locale.US));
            me.put("key", key.toLowerCase(java.util.Locale.US));
            me.put("name", name != null ? name.trim() : "");
            out.put(me);
            for (int i = 0; i < old.length() && out.length() < 8; i++) {
                org.json.JSONObject o = old.getJSONObject(i);
                if (!o.optString("mac").equalsIgnoreCase(mac)) {
                    out.put(o);
                }
            }
            prefs(context).edit().putString(KEY_SAVED_BANDS, out.toString()).apply();
        } catch (Throwable ignored) {
        }
    }

    /** Saved bands as {mac, key, name}, newest first. */
    public static java.util.List<String[]> savedBands(Context context) {
        java.util.List<String[]> l = new java.util.ArrayList<String[]>();
        try {
            org.json.JSONArray a = savedBandsJson(context);
            for (int i = 0; i < a.length(); i++) {
                org.json.JSONObject o = a.getJSONObject(i);
                l.add(new String[] {o.optString("mac"), o.optString("key"), o.optString("name")});
            }
        } catch (Throwable ignored) {
        }
        return l;
    }

    /** Key saved for this MAC, or "". */
    public static String savedKeyFor(Context context, String mac) {
        for (String[] b : savedBands(context)) {
            if (b[0].equalsIgnoreCase(mac == null ? "" : mac.trim())) {
                return b[1];
            }
        }
        return "";
    }

    private static org.json.JSONArray savedBandsJson(Context context) {
        try {
            return new org.json.JSONArray(prefs(context).getString(KEY_SAVED_BANDS, "[]"));
        } catch (Throwable t) {
            return new org.json.JSONArray();
        }
    }

    /** The band's music screen works as the training remote (title = live state, keys = control). */
    public static boolean isBandRemoteEnabled(Context context) {
        return context == null || prefs(context).getBoolean("band_remote", true);
    }

    public static void setBandRemoteEnabled(Context context, boolean on) {
        prefs(context).edit().putBoolean("band_remote", on).apply();
    }

    /** Version of the XEMS app last installed on (or reported by) the band; 0 = none known. */
    public static int getBandAppVersion(Context context) {
        return context == null ? 0 : prefs(context).getInt("band_app_ver", 0);
    }

    public static void setBandAppVersion(Context context, int version) {
        if (context != null) {
            prefs(context).edit().putInt("band_app_ver", version).apply();
        }
    }

    /** 0 auto (by band name), 1 BLE (Band 8 and older), 2 Bluetooth Classic SPP (Band 9 / 10). */
    public static int getBandTransport(Context context) {
        if (context == null) {
            return 0;
        }
        int v = prefs(context).getInt("band_transport", 0);
        return v >= 0 && v <= 2 ? v : 0;
    }

    public static void setBandTransport(Context context, int mode) {
        prefs(context).edit().putInt("band_transport", Math.max(0, Math.min(2, mode))).apply();
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
        armedThisRun = armed;
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
