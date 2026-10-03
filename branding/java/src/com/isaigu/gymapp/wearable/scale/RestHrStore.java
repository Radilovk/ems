package com.isaigu.gymapp.wearable.scale;

import android.content.Context;
import android.content.SharedPreferences;

import org.json.JSONArray;

/**
 * The client's resting heart rate as it was measured on this tablet (prefs "xems_heart", key r&lt;userId&gt; = JSON
 * array of [t, bpm], oldest first, at most {@link #KEEP}): from the Smart Session's resting measurement and from
 * the pulse guard's calibration (both {@code AiRestHr} — seated, the median of a steady stretch). One measurement
 * per half hour (a later one replaces it). The typical value — the median of the last {@link #RECENT} within
 * {@link #FRESH_DAYS} days — goes into physical age (ScaleInsight, NHANES norms by sex and age).
 */
public final class RestHrStore {
    static final String PREFS = "xems_heart";
    static final int KEEP = 20, RECENT = 5, FRESH_DAYS = 120;
    static final long SAME_MS = 30 * 60000L;

    private RestHrStore() {}

    /** A resting HR the client sat for; ignored outside 35–120 bpm or without a client. */
    public static void add(Context c, long userId, int bpm) {
        if (c == null || userId <= 0 || bpm < 35 || bpm > 120) {
            return;
        }
        try {
            SharedPreferences p = c.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
            JSONArray a = new JSONArray(p.getString("r" + userId, "[]"));
            String out = add(a, System.currentTimeMillis(), bpm).toString();
            p.edit().putString("r" + userId, out).apply();
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("RestHrStore.add", t);
        }
    }

    /** The client's typical resting HR now; NaN when none was measured in the last {@link #FRESH_DAYS} days. */
    public static double typical(Context c, long userId) {
        if (c == null || userId <= 0) {
            return Double.NaN;
        }
        try {
            String s = c.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getString("r" + userId, "[]");
            return typical(new JSONArray(s), System.currentTimeMillis());
        } catch (Throwable t) {
            return Double.NaN;
        }
    }

    /** Pure: the list with this measurement (replacing one from the last half hour), trimmed. */
    static JSONArray add(JSONArray a, long t, int bpm) throws org.json.JSONException {
        JSONArray out = new JSONArray();
        int n = a.length();
        JSONArray last = n > 0 ? a.optJSONArray(n - 1) : null;
        int end = last != null && t - last.optLong(0) < SAME_MS ? n - 1 : n;
        for (int i = Math.max(0, end - KEEP + 1); i < end; i++) {
            out.put(a.get(i));
        }
        JSONArray e = new JSONArray();
        e.put(t);
        e.put(bpm);
        out.put(e);
        return out;
    }

    /** Pure: the median of the last {@link #RECENT} measurements within {@link #FRESH_DAYS} days of now. */
    static double typical(JSONArray a, long now) {
        double[] v = new double[RECENT];
        int n = 0;
        for (int i = a.length() - 1; i >= 0 && n < RECENT; i--) {
            JSONArray e = a.optJSONArray(i);
            if (e == null || now - e.optLong(0) > FRESH_DAYS * 86400000L) {
                continue;
            }
            v[n++] = e.optDouble(1);
        }
        if (n == 0) {
            return Double.NaN;
        }
        java.util.Arrays.sort(v, 0, n);
        return n % 2 == 1 ? v[n / 2] : (v[n / 2 - 1] + v[n / 2]) / 2;
    }
}
