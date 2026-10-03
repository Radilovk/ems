package com.isaigu.gymapp.wearable.scale;

import android.content.Context;
import android.content.SharedPreferences;

import com.isaigu.gymapp.wearable.WearableBleDiagLog;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

/**
 * The client's scale measurements → the server, filed under the client's dossier id (XemsDossier.cidFor) like the
 * trainings (SessionUploader): right after a weigh-in is saved and whenever the scale page opens, every weigh-in
 * not sent yet goes up in one request (POST /v1/measures, ≤ 30). Only the compact result travels — weight, fat,
 * muscle, water, visceral, BMI, FFMI / FMI, body type, physical age, the norms' edges and the five segments — no
 * impedances, no name. Offline / no license / not on the server yet → tried again next time. Off the main thread.
 */
public final class ScaleUploader {
    private ScaleUploader() {}

    static final String SENT = "up";
    static final int BATCH = 30;
    static final Set<Long> RUNNING = new HashSet<Long>();

    /** Send what is not on the server yet (a background thread). */
    public static void schedule(Context c, long userId, boolean male, int age, int heightCm) {
        synchronized (RUNNING) {
            if (!RUNNING.add(userId)) {
                return;
            }
        }
        new Thread(new Work(c.getApplicationContext(), userId, male, age, heightCm), "xems-scale-up").start();
    }

    static final class Work implements Runnable {
        final Context c;
        final long userId;
        final boolean male;
        final int age;
        final int heightCm;

        Work(Context c, long userId, boolean male, int age, int heightCm) {
            this.c = c;
            this.userId = userId;
            this.male = male;
            this.age = age;
            this.heightCm = heightCm;
        }

        @Override
        public void run() {
            try {
                upload(c, userId, male, age, heightCm);
            } catch (Throwable t) {
                WearableBleDiagLog.log("scale", "upload: " + t);
            } finally {
                synchronized (RUNNING) {
                    RUNNING.remove(userId);
                }
            }
        }
    }

    static void upload(Context c, long userId, boolean male, int age, int heightCm) throws Exception {
        String cid = com.isaigu.gymapp.widget.XemsDossier.cidFor(userId);
        if (cid.length() == 0) {
            WearableBleDiagLog.log("scale", "upload user " + userId + ": not on the server yet (no cid)");
            com.isaigu.gymapp.widget.XemsDossier.changed();
            return;
        }
        SharedPreferences p = ScaleStore.prefs(c);
        Set<String> sent = new HashSet<String>();
        for (String s : p.getString(SENT + userId, "").split(",")) {
            if (s.length() > 0) {
                sent.add(s);
            }
        }
        JSONArray hist = ScaleStore.list(c, userId);
        JSONArray items = new JSONArray();
        Set<String> now = new HashSet<String>();
        for (int i = hist.length() - 1; i >= 0 && items.length() < BATCH; i--) {
            JSONObject m = hist.optJSONObject(i);
            if (m == null || !m.has("fat") || sent.contains(String.valueOf(m.optLong("t")))) {
                continue;
            }
            items.put(item(hist, i, male, age, heightCm));
            now.add(String.valueOf(m.optLong("t")));
        }
        if (items.length() == 0) {
            return;
        }
        com.isaigu.gymapp.widget.XemsLicenseClient.postMeasures(c, cid, items.toString());
        sent.addAll(now);
        StringBuilder b = new StringBuilder();
        for (String s : sent) {
            b.append(b.length() > 0 ? "," : "").append(s);
        }
        p.edit().putString(SENT + userId, b.toString()).apply();
        WearableBleDiagLog.log("scale", "uploaded " + items.length() + " for " + userId);
    }

    static double r1(double v) {
        return Math.round(v * 10) / 10.0;
    }

    static JSONArray inner(ScaleInsight.Norm n) throws org.json.JSONException {
        JSONArray a = new JSONArray();
        for (int i = 1; i <= 4; i++) {
            a.put(r1(n.edges[i]));
        }
        return a;
    }

    static JSONArray seg(JSONArray v) throws org.json.JSONException {
        JSONArray a = new JSONArray();
        for (int i = 0; i < 5; i++) {
            a.put(v == null || v.isNull(i) ? JSONObject.NULL : (Object) Double.valueOf(r1(v.optDouble(i))));
        }
        return a;
    }

    /** The compact weigh-in the server keeps and the client's card shows (server/src/measures.js). */
    static JSONObject item(JSONArray hist, int at, boolean male, int age, int heightCm) throws org.json.JSONException {
        JSONObject m = hist.getJSONObject(at);
        String[] n5 = {"", "", "", "", ""};
        ScaleInsight.Body b = ScaleInsight.body(m, male, heightCm);
        JSONObject o = new JSONObject();
        o.put("t", m.optLong("t"));
        o.put("w", r1(m.optDouble("w")));
        o.put("fat", r1(m.optDouble("fat")));
        put(o, "fatKg", m.optDouble("fatKg", Double.NaN));
        put(o, "muscle", m.optDouble("muscle", Double.NaN));
        put(o, "water", m.optDouble("water", Double.NaN));
        if (m.has("visc")) {
            o.put("visc", m.optInt("visc"));
        }
        put(o, "bmi", m.optDouble("bmi", Double.NaN));
        put(o, "ffmi", b.ffmi);
        put(o, "fmi", b.fmi);
        put(o, "page", b.physicalAge);
        o.put("type", b.type);
        ScaleInsight.Readiness r = ScaleInsight.readiness(hist, at);
        if (r.known()) {
            o.put("ready", r.score);
        }
        o.put("nf", inner(ScaleInsight.fatNorm(Double.NaN, male, age, n5)));
        o.put("nm", inner(ScaleInsight.muscleNorm(Double.NaN, male, n5)));
        o.put("nw", inner(ScaleInsight.waterNorm(Double.NaN, male, n5)));
        if (m.optJSONArray("segMus") != null) {
            o.put("segMus", seg(m.optJSONArray("segMus")));
        }
        if (m.optJSONArray("segFat") != null) {
            o.put("segFat", seg(m.optJSONArray("segFat")));
        }
        return o;
    }

    static void put(JSONObject o, String k, double v) throws org.json.JSONException {
        if (!Double.isNaN(v) && !Double.isInfinite(v)) {
            o.put(k, r1(v));
        }
    }

    static String fmt(double v) {
        return String.format(Locale.US, "%.1f", v);
    }
}
