package com.isaigu.gymapp.widget;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;

import com.isaigu.gymapp.bean.Gender;
import com.isaigu.gymapp.bean.TrainUser;
import com.isaigu.gymapp.mgr.DataMgr;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/**
 * The client dossier on the server (stage 1): the studio's client list is kept on the licence server, one
 * record per person (server id "cid", found by the e-mail / phone hashes), so a reinstalled tablet or another
 * tablet of the studio gets the same clients, and every training, card and later measurement hangs on the same
 * person. Costs: a push only when a client really changed (5 s after the last save, 20 per request); the pull
 * rides on the profile inbox request that already runs on events (XemsClientSync).
 */
public final class XemsDossier {

    /** How the tablet list is written (XemsLocalStore). */
    public interface Sink {
        void save(TrainUser u, boolean isUpdate);

        void remove(long id);
    }

    static final String PREFS = "xems_dossier";
    static final String FORM = "xems_user_profiles";
    static final long DEBOUNCE_MS = 5000L;
    static final int BATCH = 20;
    static final long DEMO_ID = -1L;
    static final int MAX_REMOVE = 3;

    private static final Handler H = new Handler(Looper.getMainLooper());
    private static Context app;
    private static Sink sink;
    private static volatile boolean pushing;
    private static boolean queued;

    private XemsDossier() {}

    public static void init(Context c, Sink s) {
        if (c != null) {
            app = c.getApplicationContext();
        }
        sink = s;
    }

    static SharedPreferences prefs() {
        return app.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    /** The server id of a client ("" = not on the server yet). */
    public static String cidFor(long userId) {
        return app == null ? "" : prefs().getString("cid" + userId, "");
    }

    /** The key a card is filed under: the server id when known, else the tablet id. */
    public static String keyFor(long userId) {
        String cid = cidFor(userId);
        return cid.length() > 0 ? cid : String.valueOf(userId);
    }

    /** The tablet list was saved (any edit, a new or a removed client): push what changed, a moment later. */
    public static void changed() {
        if (app == null) {
            return;
        }
        H.removeCallbacks(PUSH);
        H.postDelayed(PUSH, DEBOUNCE_MS);
    }

    private static final Runnable PUSH = new PushStart();

    static final class PushStart implements Runnable {
        @Override
        public void run() {
            if (pushing) {
                queued = true;
                return;
            }
            String token = XemsLicense.token();
            if (!XemsLicenseClient.serverConfigured() || token == null || token.length() == 0) {
                return;
            }
            List<Out> out = collect();
            if (out.isEmpty()) {
                return;
            }
            pushing = true;
            new Thread(new PushRun(token, out), "xems-dossier-push").start();
        }
    }

    /** One record to send. */
    static final class Out {
        final String key;
        final String hash;
        final String json;
        final boolean deleted;

        Out(String key, String hash, String json, boolean deleted) {
            this.key = key;
            this.hash = hash;
            this.json = json;
            this.deleted = deleted;
        }
    }

    /** On the main thread: the clients whose record differs from what the server has, and the removed ones. */
    static List<Out> collect() {
        List<Out> out = new ArrayList<Out>();
        SharedPreferences p = prefs();
        long t = System.currentTimeMillis();
        Set<String> present = new HashSet<String>();
        List<TrainUser> users = DataMgr.getInstance().trainUsers;
        if (users != null) {
            for (int i = 0; i < users.size() && out.size() < BATCH; i++) {
                TrainUser u = users.get(i);
                if (u == null || u.id == DEMO_ID || u.name == null || u.name.trim().length() == 0) {
                    continue;
                }
                present.add(String.valueOf(u.id));
                try {
                    JSONObject d = data(u);
                    String hash = Integer.toHexString(d.toString().hashCode());
                    if (hash.equals(p.getString("h" + u.id, ""))) {
                        continue;
                    }
                    StringBuilder b = new StringBuilder("{\"key\":").append(XemsLicenseToken.quote(String.valueOf(u.id)))
                            .append(",\"t\":").append(t);
                    String cid = p.getString("cid" + u.id, "");
                    if (cid.length() > 0) {
                        b.append(",\"cid\":").append(XemsLicenseToken.quote(cid));
                    }
                    String ek = emailHash(u.email);
                    String pk = phoneHash(u.phone);
                    if (ek.length() > 0) {
                        b.append(",\"ek\":\"").append(ek).append('"');
                    }
                    if (pk.length() > 0) {
                        b.append(",\"pk\":\"").append(pk).append('"');
                    }
                    b.append(",\"data\":").append(d.toString()).append('}');
                    out.add(new Out(String.valueOf(u.id), hash, b.toString(), false));
                } catch (Throwable ignored) {
                }
            }
        }
        // removed on this tablet: tell the server (only clients it knows). A guard: an empty or broken list, or
        // many at once, is not a removal the trainer made — nothing is deleted then.
        List<Out> gone = new ArrayList<Out>();
        for (String k : new ArrayList<String>(p.getAll().keySet())) {
            if (!k.startsWith("cid") || users == null || present.isEmpty()) {
                continue;
            }
            String id = k.substring(3);
            if (present.contains(id) || containsId(users, id)) {
                continue;
            }
            String cid = p.getString(k, "");
            gone.add(new Out(id, "", "{\"key\":" + XemsLicenseToken.quote(id) + ",\"cid\":" + XemsLicenseToken.quote(cid)
                    + ",\"t\":" + t + ",\"deleted\":true}", true));
        }
        if (gone.size() <= MAX_REMOVE) {
            for (int i = 0; i < gone.size() && out.size() < BATCH; i++) {
                out.add(gone.get(i));
            }
        } else {
            android.util.Log.w("xems_dossier", gone.size() + " clients missing at once: not removed on the server");
        }
        return out;
    }

    private static boolean containsId(List<TrainUser> users, String id) {
        for (int i = 0; i < users.size(); i++) {
            TrainUser u = users.get(i);
            if (u != null && String.valueOf(u.id).equals(id)) {
                return true;
            }
        }
        return false;
    }

    static final class PushRun implements Runnable {
        final String token;
        final List<Out> out;

        PushRun(String token, List<Out> out) {
            this.token = token;
            this.out = out;
        }

        @Override
        public void run() {
            boolean ok = false;
            try {
                StringBuilder b = new StringBuilder("{").append(XemsLicenseClient.common(app))
                        .append(",\"token\":").append(XemsLicenseToken.quote(token)).append(",\"clients\":[");
                for (int i = 0; i < out.size(); i++) {
                    b.append(i > 0 ? "," : "").append(out.get(i).json);
                }
                b.append("]}");
                JSONObject r = new JSONObject(XemsLicenseClient.http("POST", "/v1/clients", b.toString()));
                if (r.optBoolean("ok")) {
                    Map<String, String> ids = new HashMap<String, String>();
                    JSONArray a = r.optJSONArray("ids");
                    for (int i = 0; a != null && i < a.length(); i++) {
                        JSONObject o = a.optJSONObject(i);
                        if (o != null) {
                            ids.put(o.optString("key"), o.optString("cid"));
                        }
                    }
                    SharedPreferences.Editor e = prefs().edit();
                    for (int i = 0; i < out.size(); i++) {
                        Out o = out.get(i);
                        if (o.deleted) {
                            e.remove("cid" + o.key).remove("h" + o.key).remove("t" + o.key);
                            continue;
                        }
                        String cid = ids.get(o.key);
                        if (cid != null && cid.length() > 0) {
                            e.putString("cid" + o.key, cid);
                        }
                        e.putString("h" + o.key, o.hash).putLong("t" + o.key, System.currentTimeMillis());
                    }
                    e.apply();
                    ok = true;
                }
            } catch (Throwable t) {
                android.util.Log.w("xems_dossier", "push: " + t);
            } finally {
                pushing = false;
                // more waiting (a batch was full, or an edit came meanwhile): again shortly; offline: at the next save
                if (ok && (out.size() >= BATCH || queued)) {
                    queued = false;
                    H.postDelayed(PUSH, 3000L);
                }
            }
        }
    }

    // ------------------------------------------------------------------ pull (rides on /v1/inbox)

    /** The part of the inbox request that asks for the dossiers changed since the last pull. */
    public static String pullField() {
        if (app == null) {
            return "";
        }
        SharedPreferences p = prefs();
        return ",\"clients\":{\"since\":" + p.getLong("since", 0) + ",\"after\":"
                + XemsLicenseToken.quote(p.getString("after", "")) + "}";
    }

    /** On the main thread, with the inbox answer: take the dossiers others changed. True = more are waiting. */
    public static boolean applyPulled(JSONObject r) {
        if (app == null || sink == null || r == null || !r.has("clients")) {
            return false;
        }
        JSONArray items = r.optJSONArray("clients");
        SharedPreferences p = prefs();
        Map<String, String> byCid = new HashMap<String, String>();
        for (Map.Entry<String, ?> e : p.getAll().entrySet()) {
            if (e.getKey().startsWith("cid") && e.getValue() instanceof String) {
                byCid.put((String) e.getValue(), e.getKey().substring(3));
            }
        }
        for (int i = 0; items != null && i < items.length(); i++) {
            try {
                apply(p, byCid, items.optJSONObject(i));
            } catch (Throwable t) {
                android.util.Log.w("xems_dossier", "apply: " + t);
            }
        }
        JSONObject next = r.optJSONObject("clients_next");
        if (next != null) {
            p.edit().putLong("since", next.optLong("since", p.getLong("since", 0)))
                    .putString("after", next.optString("after", "")).apply();
        }
        return r.optBoolean("clients_more");
    }

    private static void apply(SharedPreferences p, Map<String, String> byCid, JSONObject it) throws Exception {
        if (it == null) {
            return;
        }
        String cid = it.optString("cid", "");
        long t = it.optLong("t");
        boolean deleted = it.optInt("d") == 1;
        JSONObject d = it.optJSONObject("p");
        TrainUser u = null;
        String id = byCid.get(cid);
        if (id != null) {
            u = byId(id);
        }
        if (u == null && !deleted && d != null) {
            u = XemsClientMatch.find(d.optString("email", ""), d.optString("phone", ""));
        }
        if (deleted) {
            if (u != null && t >= p.getLong("t" + u.id, 0)) {
                p.edit().remove("cid" + u.id).remove("h" + u.id).remove("t" + u.id).apply();
                sink.remove(u.id);
            }
            return;
        }
        if (d == null || cid.length() == 0) {
            return;
        }
        boolean created = u == null;
        if (!created && t <= p.getLong("t" + u.id, 0)) {
            if (!cid.equals(p.getString("cid" + u.id, ""))) {
                p.edit().putString("cid" + u.id, cid).apply();     // matched by e-mail / phone: now linked
            }
            return;                                               // this tablet has the same or a newer version
        }
        if (created) {
            u = new TrainUser();
        }
        fill(u, d);
        sink.save(u, !created);                                  // a new one gets its tablet id here
        writeForm(u.id, d.optJSONObject("form"));
        String hash = Integer.toHexString(data(u).toString().hashCode());
        p.edit().putString("cid" + u.id, cid).putString("h" + u.id, hash).putLong("t" + u.id, t).apply();
        byCid.put(cid, String.valueOf(u.id));
    }

    private static TrainUser byId(String id) {
        List<TrainUser> users = DataMgr.getInstance().trainUsers;
        for (int i = 0; users != null && i < users.size(); i++) {
            TrainUser u = users.get(i);
            if (u != null && String.valueOf(u.id).equals(id)) {
                return u;
            }
        }
        return null;
    }

    // ------------------------------------------------------------------ the record

    /** What the server keeps of a client (no photo: that is a file on the tablet). */
    static JSONObject data(TrainUser u) throws Exception {
        JSONObject d = new JSONObject();
        d.put("name", s(u.name));
        d.put("nick", s(u.nickName));
        d.put("email", s(u.email).trim().toLowerCase(Locale.ROOT));
        d.put("phone", s(u.phone));
        d.put("sex", u.gender == Gender.Female ? "F" : u.gender == Gender.Male ? "M" : "");
        d.put("birth", u.birtyday != null ? u.birtyday.getTime() : 0L);
        d.put("h", u.height);
        d.put("w", Math.round(u.weight * 10f) / 10.0);
        d.put("remark", s(u.remark));
        d.put("created", u.createTime != null ? u.createTime.getTime() : 0L);
        SharedPreferences f = app.getSharedPreferences(FORM, Context.MODE_PRIVATE);
        JSONObject form = new JSONObject();
        form.put("u", f.getString("u" + u.id, ""));
        form.put("note", f.getString("note" + u.id, ""));
        form.put("focus", f.getString("focus" + u.id, ""));
        form.put("cond", f.getString("cond" + u.id, ""));
        form.put("own", f.getBoolean("own" + u.id, false));
        form.put("misport", f.getInt("misport" + u.id, 0));
        d.put("form", form);
        return d;
    }

    private static void fill(TrainUser u, JSONObject d) {
        u.name = d.optString("name", s(u.name));
        u.nickName = d.optString("nick", s(u.nickName));
        u.email = d.optString("email", s(u.email));
        u.phone = d.optString("phone", s(u.phone));
        String sex = d.optString("sex", "");
        u.gender = "F".equals(sex) ? Gender.Female : "M".equals(sex) ? Gender.Male : u.gender;
        long b = d.optLong("birth", 0);
        u.birtyday = b != 0 ? new java.util.Date(b) : u.birtyday;
        u.height = d.optInt("h", u.height);
        u.weight = (float) d.optDouble("w", u.weight);
        u.remark = d.optString("remark", s(u.remark));
        long c = d.optLong("created", 0);
        if (u.createTime == null && c > 0) {
            u.createTime = new java.util.Date(c);
        }
    }

    private static void writeForm(long id, JSONObject form) {
        if (form == null) {
            return;
        }
        app.getSharedPreferences(FORM, Context.MODE_PRIVATE).edit()
                .putString("u" + id, form.optString("u", ""))
                .putString("note" + id, form.optString("note", ""))
                .putString("focus" + id, form.optString("focus", ""))
                .putString("cond" + id, form.optString("cond", ""))
                .putBoolean("own" + id, form.optBoolean("own", false))
                .putInt("misport" + id, form.optInt("misport", 0))
                .apply();
    }

    private static String s(String v) {
        return v == null ? "" : v;
    }

    /** The same hashes the client card and the booking PWA use ("xems-card:" + e-mail / last 9 digits). */
    static String emailHash(String email) {
        String e = s(email).trim().toLowerCase(Locale.ROOT);
        return e.indexOf('@') > 0 ? sha256("xems-card:" + e) : "";
    }

    static String phoneHash(String phone) {
        String d = XemsClientMatch.digits9(phone);
        return d.length() >= 7 ? sha256("xems-card:" + d) : "";
    }

    static String sha256(String v) {
        try {
            byte[] h = java.security.MessageDigest.getInstance("SHA-256").digest(v.getBytes("UTF-8"));
            StringBuilder b = new StringBuilder(64);
            for (int i = 0; i < h.length; i++) {
                b.append(Character.forDigit((h[i] >> 4) & 15, 16)).append(Character.forDigit(h[i] & 15, 16));
            }
            return b.toString();
        } catch (Throwable t) {
            return "";
        }
    }
}
