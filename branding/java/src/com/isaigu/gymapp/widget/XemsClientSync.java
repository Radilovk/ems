package com.isaigu.gymapp.widget;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;

import com.isaigu.gymapp.bean.Gender;
import com.isaigu.gymapp.bean.TrainUser;
import com.isaigu.gymapp.mgr.DataMgr;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.Calendar;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/**
 * The clients' own profiles (filled in the studio's booking PWA) → the tablet's client list.
 * <p>
 * Pull only, cheap: {@code POST /v1/inbox} with {@code since} = the newest profile already taken; at most every
 * 20 min while the app runs (06–23 h), and on demand from the Plan tab (at most every 2 min). An empty poll is
 * one request and one indexed D1 read on the server.
 * <p>
 * Merge: the client is found by e-mail, else the phone's last 9 digits; a new one is created. A field is taken
 * from the profile when the tablet has none, or when the client saved it after the trainer last edited this
 * client in the form. The name the trainer gave stays. Contraindications are only added, never removed.
 */
public final class XemsClientSync {
    static final String PREFS = "xems_client_sync";
    /** Two events close together pull once: the client list / Plan tab at most every 10 min… */
    static final long POKE_MS = 10 * 60000L;
    /** …right before the next client (the moment the profile matters) at most every minute. */
    static final long SOON_MS = 60000L;
    private static long gapMs = POKE_MS;

    private static final Handler H = new Handler(Looper.getMainLooper());
    private static Context app;
    private static boolean started;
    private static volatile boolean busy;
    private static long lastPoll;
    private static boolean poked;

    private XemsClientSync() {}

    static SharedPreferences prefs(Context c) {
        return c.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    /** XemsLocalStore.bootstrapOnline: from here on the sync runs by itself. */
    public static void start(Context c) {
        if (c == null) {
            return;
        }
        app = c.getApplicationContext();
        if (started) {
            return;
        }
        started = true;
        // No timer: the profiles come on events only — the app starts (here), the client list or the Plan tab
        // is opened (XemsNav / PlanScreen → poke), "Синхронизирай" (now).
        poked = true;
        H.postDelayed(new Tick0(), 15000L);
    }

    /** The client list / Plan tab opened: pull the new profiles (every 10 min at most). */
    public static void poke() {
        request(POKE_MS);
    }

    /** The next client is about to train: pull now unless done in the last minute. */
    public static void soon() {
        request(SOON_MS);
    }

    private static void request(long gap) {
        gapMs = poked ? Math.min(gapMs, gap) : gap;
        poked = true;
        H.post(new Tick0());
    }

    /** "Синхронизирай": pull now. */
    public static void now() {
        lastPoll = 0;
        request(0);
    }

    /** The studio code the PWA needs (from the license server), or "". */
    public static String studio(Context c) {
        return c != null ? prefs(c).getString("studio", "") : "";
    }

    /** "3 min ago · 2 new" for the Plan tab. */
    public static String status(Context c) {
        if (c == null) {
            return "";
        }
        SharedPreferences p = prefs(c);
        long at = p.getLong("okAt", 0);
        if (at == 0) {
            return XemsLang.tr("още няма синхронизация", "not synced yet");
        }
        long m = Math.max(0, (System.currentTimeMillis() - at) / 60000L);
        String when = m < 1 ? XemsLang.tr("току-що", "just now")
                : m < 60 ? XemsLang.tr("преди " + m + " мин", m + " min ago")
                : XemsLang.tr("преди " + (m / 60) + " ч", (m / 60) + " h ago");
        int n = p.getInt("total", 0);
        return when + " · " + n + XemsLang.tr(" профила общо", " profiles in total");
    }

    static final class Tick0 implements Runnable {
        @Override
        public void run() {
            try {
                maybePoll(true);
            } catch (Throwable ignored) {
            }
        }
    }

    static void maybePoll(boolean now) {
        if (app == null || busy || !XemsLicenseClient.serverConfigured()) {
            return;
        }
        String token = XemsLicense.token();
        if (token == null || token.length() == 0) {
            return;
        }
        long t = System.currentTimeMillis();
        if (!(now || poked) || t - lastPoll < gapMs) {
            return;
        }
        poked = false;
        lastPoll = t;
        busy = true;
        new Thread(new Pull(token), "xems-client-sync").start();
    }

    static final class Pull implements Runnable {
        final String token;

        Pull(String token) {
            this.token = token;
        }

        @Override
        public void run() {
            try {
                long since = prefs(app).getLong("since", 0);
                String body = "{\"token\":" + XemsLicenseToken.quote(token)
                        + ",\"device_id\":" + XemsLicenseToken.quote(XemsLicense.deviceId())
                        + ",\"since\":" + since + XemsDossier.pullField() + "}";
                JSONObject r = new JSONObject(XemsLicenseClient.http("POST", "/v1/inbox", body));
                if (!r.optBoolean("ok")) {
                    return;
                }
                JSONArray items = r.optJSONArray("items");
                prefs(app).edit().putLong("okAt", System.currentTimeMillis()).apply();
                if (items != null && items.length() > 0) {
                    H.post(new Merge(items, r.optBoolean("more")));
                }
                if (r.has("clients")) {
                    H.post(new Dossiers(r));                  // the studio's clients changed on other tablets
                }
            } catch (Throwable t) {
                android.util.Log.w("xems_sync", "pull: " + t);
            } finally {
                busy = false;
                if (poked) {
                    H.postDelayed(new Tick0(), gapMs);     // an event came while this pull ran
                }
            }
        }
    }

    static final class Dossiers implements Runnable {
        final JSONObject r;

        Dossiers(JSONObject r) {
            this.r = r;
        }

        @Override
        public void run() {
            try {
                if (XemsDossier.applyPulled(r)) {
                    lastPoll = 0;
                    poke();
                }
            } catch (Throwable t) {
                android.util.Log.w("xems_sync", "dossiers: " + t);
            }
        }
    }

    static final class Merge implements Runnable {
        final JSONArray items;
        final boolean more;

        Merge(JSONArray items, boolean more) {
            this.items = items;
            this.more = more;
        }

        @Override
        public void run() {
            int added = 0;
            int updated = 0;
            long since = prefs(app).getLong("since", 0);
            for (int i = 0; i < items.length(); i++) {
                JSONObject it = items.optJSONObject(i);
                if (it == null) {
                    continue;
                }
                try {
                    int r = merge(app, it.optJSONObject("p"));
                    if (r == 1) {
                        added++;
                    } else if (r == 2) {
                        updated++;
                    }
                } catch (Throwable t) {
                    android.util.Log.w("xems_sync", "merge: " + t);
                }
                since = Math.max(since, it.optLong("t"));
            }
            SharedPreferences p = prefs(app);
            p.edit().putLong("since", since).putInt("total", p.getInt("total", 0) + added + updated).apply();
            if (added + updated > 0) {
                try {
                    Toast.makeText(app, XemsLang.tr("Профили от клиентите: ", "Client profiles: ")
                            + (added > 0 ? added + XemsLang.tr(" нови", " new") : "")
                            + (added > 0 && updated > 0 ? ", " : "")
                            + (updated > 0 ? updated + XemsLang.tr(" обновени", " updated") : ""), Toast.LENGTH_LONG).show();
                } catch (Throwable ignored) {
                }
            }
            if (more) {
                lastPoll = 0;
                poke();
            }
        }
    }

    /** 0 nothing, 1 new client, 2 client updated. */
    static int merge(Context c, JSONObject p) {
        if (p == null) {
            return 0;
        }
        String name = p.optString("name", "").trim();
        String email = p.optString("email", "").trim().toLowerCase(Locale.ROOT);
        String phone = p.optString("phone", "").trim();
        if (name.length() < 2 || (email.length() == 0 && phone.length() == 0)) {
            return 0;
        }
        TrainUser u = find(email, phone);
        boolean created = u == null;
        long savedAt = p.optLong("t") * 1000L;
        SharedPreferences form = c.getSharedPreferences(XemsLocalUserForm.PREFS, Context.MODE_PRIVATE);
        boolean newer = created || savedAt > form.getLong("edit" + u.id, 0);
        if (created) {
            u = new TrainUser();
            u.name = name;
            u.nickName = name;
        }
        boolean changed = created;
        // the contact only fills an empty field: a profile never replaces the e-mail or phone the studio has
        // (the booking page is public — a changed contact is the trainer's edit in the client form)
        if (email.length() > 0 && empty(u.email)) {
            u.email = email;
            changed = true;
        }
        if (phone.length() > 0 && empty(u.phone)) {
            u.phone = phone;
            changed = true;
        }
        if (empty(u.name)) {
            u.name = name;
            changed = true;
        }
        String sex = p.optString("sex", "");
        if (sex.length() > 0 && (u.gender == null || newer)) {
            Gender g = "F".equals(sex) ? Gender.Female : Gender.Male;
            changed |= u.gender != g;
            u.gender = g;
        }
        int by = p.optInt("by", 0);
        if (by > 1900 && (u.birtyday == null || newer)) {
            Calendar cal = Calendar.getInstance();
            int old = -1;
            if (u.birtyday != null) {
                cal.setTime(u.birtyday);
                old = cal.get(Calendar.YEAR);
            }
            if (old != by) {
                cal.clear();
                cal.set(by, Calendar.JULY, 1);
                u.birtyday = cal.getTime();
                changed = true;
            }
        }
        int h = p.optInt("h", 0);
        if (h > 0 && (u.height <= 0 || newer) && u.height != h) {
            u.height = h;
            changed = true;
        }
        int w = p.optInt("w", 0);
        if (w > 0 && !created && scaleSince(c, u.id) >= savedAt) {
            w = 0;                                        // a weigh-in on the scale is newer: the scale wins
        }
        if (w > 0 && (u.weight <= 0 || newer) && Math.round(u.weight) != w) {
            u.weight = w;
            changed = true;
        }
        if (created) {
            XemsLocalStore.saveUserQuiet(u, false);        // gives the id
        }
        // goal | fitness | contraindications, as the client form keeps them
        String[] parts = form.getString("u" + u.id, "").split("\\|", -1);
        String goal = parts.length > 0 ? parts[0] : "";
        String fit = parts.length > 1 ? parts[1] : "";
        Set<String> contra = new HashSet<String>();
        if (parts.length > 2) {
            for (String k : parts[2].split(",")) {
                if (k.length() > 0) {
                    contra.add(k);
                }
            }
        }
        String pg = p.optString("goal", "");
        if (pg.length() > 0 && (goal.length() == 0 || newer) && !pg.equals(goal)) {
            goal = pg;
            changed = true;
        }
        String pf = p.optString("fit", "");
        if (pf.length() > 0 && (fit.length() == 0 || newer) && !pf.equals(fit)) {
            fit = pf;
            changed = true;
        }
        JSONArray pc = p.optJSONArray("contra");
        for (int i = 0; pc != null && i < pc.length(); i++) {
            changed |= contra.add(pc.optString(i));
        }
        // focus zones and what to take into account: the client's own, replaced when newer
        String focus = csv(p.optJSONArray("focus"));
        String cond = csv(p.optJSONArray("cond"));
        String oldFocus = form.getString("focus" + u.id, "");
        String oldCond = form.getString("cond" + u.id, "");
        if ((newer || oldFocus.length() == 0) && !focus.equals(oldFocus) && (focus.length() > 0 || newer)) {
            oldFocus = focus;
            changed = true;
        }
        if ((newer || oldCond.length() == 0) && !cond.equals(oldCond) && (cond.length() > 0 || newer)) {
            oldCond = cond;
            changed = true;
        }
        String note = p.optString("note", "").trim();
        if (!changed && note.equals(form.getString("note" + u.id, ""))) {
            return 0;
        }
        StringBuilder cs = new StringBuilder();
        for (String k : XemsLocalUserForm.CONTRA) {
            if (contra.contains(k)) {
                cs.append(cs.length() > 0 ? "," : "").append(k);
            }
        }
        String g = goal.length() > 0 ? goal : "tone";
        String f = fit.length() > 0 ? fit : "mid";
        form.edit().putString("u" + u.id, g + "|" + f + "|" + cs).putString("note" + u.id, note)
                .putString("focus" + u.id, oldFocus).putString("cond" + u.id, oldCond).apply();
        u.remark = XemsLocalUserForm.summaryOf(g, f, contra) + XemsLocalUserForm.extras(oldFocus, oldCond, note);
        XemsLocalStore.saveUserQuiet(u, true);
        return created ? 1 : 2;
    }

    /** Time of the client's last weigh-in on the scale (prefs "xems_scale", as ScaleStore keeps them); 0 = none. */
    static long scaleSince(Context c, long userId) {
        try {
            JSONArray a = new JSONArray(c.getSharedPreferences("xems_scale", Context.MODE_PRIVATE)
                    .getString("m" + userId, "[]"));
            JSONObject m = a.length() > 0 ? a.optJSONObject(a.length() - 1) : null;
            return m != null && m.optDouble("w", 0) >= 20 ? m.optLong("t") : 0;
        } catch (Throwable t) {
            return 0;
        }
    }

    static String csv(JSONArray a) {
        StringBuilder b = new StringBuilder();
        for (int i = 0; a != null && i < a.length(); i++) {
            String v = a.optString(i, "").replaceAll("[^a-z_]", "");
            if (v.length() > 0) {
                b.append(b.length() > 0 ? "," : "").append(v);
            }
        }
        return b.toString();
    }

    static TrainUser find(String email, String phone) {
        return XemsClientMatch.find(email, phone);
    }

    static String digits9(String s) {
        return XemsClientMatch.digits9(s);
    }

    private static boolean empty(String s) {
        return s == null || s.trim().length() == 0;
    }
}
