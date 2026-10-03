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

    /** The newest measurement if it is still fresh (60 days), else null. */
    public static JSONObject fresh(Context c, long userId) {
        JSONObject m = c != null ? latest(c, userId) : null;
        return m != null && System.currentTimeMillis() - m.optLong("t") <= FRESH_MS && m.has("fat") ? m : null;
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
        if (r.single) {
            o.put("f1", 1);
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

    /**
     * Appends the measurement through {@link ScaleModel} (sex-aware, smoothed against the client's history); the
     * stored object (with "t"), or null when it could not be written.
     */
    public static JSONObject save(Context c, long userId, ScaleProtocol.Reading r, boolean male, int age,
            int heightCm) {
        return save(c, userId, r, male, age, heightCm, 1);
    }

    /** As {@link #save}, for a reading merged from {@code steps} sweeps ("n"). */
    public static JSONObject save(Context c, long userId, ScaleProtocol.Reading r, boolean male, int age,
            int heightCm, int steps) {
        return save(c, userId, r, male, age, heightCm, steps, 0);
    }

    /**
     * As {@link #save}; {@code replaceT} &gt; 0 = the same measurement refined (another sweep while the client still
     * stands): the entry with that "t" is replaced, keeps its "t" (the server overwrites it) and goes up again.
     */
    public static JSONObject save(Context c, long userId, ScaleProtocol.Reading r, boolean male, int age,
            int heightCm, int steps, long replaceT) {
        try {
            JSONArray a0 = upgrade(c, userId, male, age, heightCm);
            JSONArray a = new JSONArray();
            for (int i = 0; i < a0.length(); i++) {
                JSONObject m = a0.optJSONObject(i);
                if (m != null && (replaceT <= 0 || m.optLong("t") != replaceT)) {
                    a.put(m);
                }
            }
            ScaleModel.State st = ScaleModel.stateOf(a);
            JSONObject o = ScaleModel.entry(r, male, age, heightCm, replaceT > 0 ? replaceT
                    : System.currentTimeMillis(), st, RestHrStore.typical(c, userId));
            ScaleModel.mark(o, male, heightCm);
            if (steps > 1) {
                o.put("n", steps);
            }
            JSONArray out = new JSONArray();
            for (int i = Math.max(0, a.length() - KEEP + 1); i < a.length(); i++) {
                out.put(a.get(i));
            }
            out.put(o);
            SharedPreferences p = prefs(c);
            SharedPreferences.Editor e = p.edit().putString("m" + userId, out.toString());
            if (replaceT > 0) {
                // send it again (the server keeps one row per "t")
                StringBuilder sent = new StringBuilder();
                for (String x : p.getString(ScaleUploader.SENT + userId, "").split(",")) {
                    if (x.length() > 0 && !x.equals(String.valueOf(replaceT))) {
                        sent.append(sent.length() > 0 ? "," : "").append(x);
                    }
                }
                e.putString(ScaleUploader.SENT + userId, sent.toString());
            }
            e.apply();
            return o;
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("ScaleStore.save", t);
            return null;
        }
    }

    /**
     * The history, rebuilt from its raw impedances when it was computed by an older model or for another sex /
     * age / height (then everything goes to the server again).
     */
    public static JSONArray upgrade(Context c, long userId, boolean male, int age, int heightCm) {
        JSONArray a = list(c, userId);
        try {
            // a resting HR measured after the last weigh-in: that weigh-in's physical age takes it in now
            JSONObject last = a.length() > 0 ? a.optJSONObject(a.length() - 1) : null;
            double rhr = RestHrStore.typical(c, userId);
            boolean heart = last != null && last.has("z20") && !last.has("rhr") && !Double.isNaN(rhr);
            if (heart) {
                last.put("rhr", Math.round(rhr * 10) / 10.0);
            }
            if (heart || ScaleModel.stale(a, male, age, heightCm)) {
                a = ScaleModel.rebuild(a, male, age, heightCm);
                prefs(c).edit().putString("m" + userId, a.toString()).remove(ScaleUploader.SENT + userId).apply();
            }
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("ScaleStore.upgrade", t);
        }
        return a;
    }

    /**
     * Removes one measurement (someone else on the client's profile, a bad step) and re-smooths the rest; the
     * server is told on the next upload.
     */
    public static JSONArray delete(Context c, long userId, long t, boolean male, int age, int heightCm) {
        JSONArray a = list(c, userId);
        JSONArray keep = new JSONArray();
        for (int i = 0; i < a.length(); i++) {
            JSONObject m = a.optJSONObject(i);
            if (m != null && m.optLong("t") != t) {
                keep.put(m);
            }
        }
        keep = ScaleModel.rebuild(keep, male, age, heightCm);
        SharedPreferences p = prefs(c);
        String del = p.getString(ScaleUploader.DELETED + userId, "");
        p.edit().putString("m" + userId, keep.toString())
                .putString(ScaleUploader.DELETED + userId, del.length() > 0 ? del + "," + t : String.valueOf(t))
                .remove(ScaleUploader.SENT + userId).apply();
        return keep;
    }

    public static String mac(Context c) {
        return prefs(c).getString("mac", "");
    }

    public static void setMac(Context c, String mac) {
        prefs(c).edit().putString("mac", mac != null ? mac : "").apply();
    }
}
