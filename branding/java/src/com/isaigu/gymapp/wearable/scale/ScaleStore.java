package com.isaigu.gymapp.wearable.scale;

import android.content.Context;
import android.content.SharedPreferences;

import org.json.JSONArray;
import org.json.JSONObject;

/**
 * The client's scale measurements on this tablet (prefs "xems_scale", key m&lt;userId&gt; = JSON array, oldest
 * first, at most {@link #KEEP}). Raw impedances are kept with the result, so a better formula can recompute the
 * history later. Also remembers the scale's address so the next search finds it at once.
 */
public final class ScaleStore {
    static final String PREFS = "xems_scale";
    static final int KEEP = 120;
    /** A measurement older than this no longer stands for the client's body today. */
    public static final long FRESH_MS = 60L * 24 * 3600 * 1000;

    private ScaleStore() {}

    static SharedPreferences prefs(Context c) {
        return c.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    public static JSONArray list(Context c, long userId) {
        try {
            return new JSONArray(prefs(c).getString("m" + userId, "[]"));
        } catch (Throwable t) {
            return new JSONArray();
        }
    }

    /** The newest measurement, or null. */
    public static JSONObject latest(Context c, long userId) {
        JSONArray a = c != null ? list(c, userId) : new JSONArray();
        return a.length() > 0 ? a.optJSONObject(a.length() - 1) : null;
    }

    /** The one before the newest (for the change since last time), or null. */
    public static JSONObject previous(Context c, long userId) {
        JSONArray a = list(c, userId);
        return a.length() > 1 ? a.optJSONObject(a.length() - 2) : null;
    }

    /** Body fat % of a fresh measurement; NaN when there is none. */
    public static double freshFatPct(Context c, long userId) {
        JSONObject m = c != null ? latest(c, userId) : null;
        if (m == null || System.currentTimeMillis() - m.optLong("t") > FRESH_MS) {
            return Double.NaN;
        }
        double f = m.optDouble("fat", Double.NaN);
        return f > 2 && f < 70 ? f : Double.NaN;
    }

    /** Weight of a fresh measurement; NaN when there is none. */
    public static double freshWeight(Context c, long userId) {
        JSONObject m = c != null ? latest(c, userId) : null;
        if (m == null || System.currentTimeMillis() - m.optLong("t") > FRESH_MS) {
            return Double.NaN;
        }
        double w = m.optDouble("w", Double.NaN);
        return w >= 20 && w <= 250 ? w : Double.NaN;
    }

    /** Readiness of today's measurement (at most 12 h old) against the client's baseline; null without one. */
    public static ScaleInsight.Readiness readinessToday(Context c, long userId) {
        JSONArray a = c != null ? list(c, userId) : new JSONArray();
        if (a.length() == 0) {
            return null;
        }
        JSONObject m = a.optJSONObject(a.length() - 1);
        if (m == null || System.currentTimeMillis() - m.optLong("t") > ScaleInsight.TODAY_MS) {
            return null;
        }
        ScaleInsight.Readiness r = ScaleInsight.readiness(a, a.length() - 1);
        return r.known() ? r : null;
    }

    /** Body fat % per suit channel from a fresh measurement; null without one. */
    public static double[] freshChannelFat(Context c, long userId) {
        JSONObject m = c != null ? latest(c, userId) : null;
        if (m == null || System.currentTimeMillis() - m.optLong("t") > FRESH_MS) {
            return null;
        }
        return ScaleInsight.channelFat(m);
    }

    static JSONArray arr(double[] v) throws org.json.JSONException {
        JSONArray a = new JSONArray();
        for (double d : v) {
            a.put(Double.isNaN(d) ? JSONObject.NULL : (Object) Double.valueOf(Math.round(d * 100) / 100.0));
        }
        return a;
    }

    public static JSONObject toJson(ScaleProtocol.Reading r, ScaleBody b, long nowMs) throws org.json.JSONException {
        JSONObject o = new JSONObject();
        o.put("t", nowMs);
        o.put("w", Math.round(r.weightKg * 100) / 100.0);
        o.put("z20", arr(r.z20));
        o.put("z100", arr(r.z100));
        if (!Double.isNaN(r.scaleFatPct)) {
            o.put("sfat", r.scaleFatPct);
        }
        if (b != null) {
            o.put("fat", b.fatPct);
            o.put("fatKg", b.fatKg);
            o.put("lean", b.leanKg);
            o.put("water", b.waterPct);
            o.put("muscle", b.muscleKg);
            o.put("skel", b.skeletalPct);
            o.put("bone", b.boneKg);
            o.put("prot", b.proteinPct);
            o.put("visc", b.visceral);
            o.put("subc", b.subcutPct);
            o.put("bmr", b.bmr);
            o.put("bage", b.bodyAge);
            o.put("bmi", b.bmi);
            o.put("segFat", arr(b.segFatKg));
            o.put("segMus", arr(b.segMuscleKg));
        }
        return o;
    }

    /** Appends the measurement; the stored object (with "t"), or null when it could not be written. */
    public static JSONObject save(Context c, long userId, ScaleProtocol.Reading r, ScaleBody b) {
        try {
            JSONObject o = toJson(r, b, System.currentTimeMillis());
            JSONArray a = list(c, userId);
            JSONArray out = new JSONArray();
            for (int i = Math.max(0, a.length() - KEEP + 1); i < a.length(); i++) {
                out.put(a.get(i));
            }
            out.put(o);
            prefs(c).edit().putString("m" + userId, out.toString()).apply();
            return o;
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("ScaleStore.save", t);
            return null;
        }
    }

    public static String mac(Context c) {
        return prefs(c).getString("mac", "");
    }

    public static void setMac(Context c, String mac) {
        prefs(c).edit().putString("mac", mac != null ? mac : "").apply();
    }
}
