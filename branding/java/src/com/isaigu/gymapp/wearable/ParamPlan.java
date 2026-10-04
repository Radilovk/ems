package com.isaigu.gymapp.wearable;

import android.content.Context;
import android.content.SharedPreferences;
import com.isaigu.gymapp.ai.AiPersonal;
import com.isaigu.gymapp.ai.AiProfile;
import com.isaigu.gymapp.ai.ParamFormula;
import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.bean.TrainUser;
import com.isaigu.gymapp.mgr.DataMgr;
import com.isaigu.gymapp.widget.XemsGuard;
import org.json.JSONArray;
import org.json.JSONObject;
import java.util.List;

/**
 * The client's impulse, recalculated from who they are (ai/ParamFormula, docs/xems-param-formula.md) and logged:
 * <ul>
 *   <li>Recalculated when the client form is saved, after a scale measurement, after a training and when the
 *       client comes into a slot; an entry is logged only when the result changed — with what changed in the
 *       client (weight, fat, goal, the training count…) and what changed in the impulse.</li>
 *   <li>Applied to the manual mode's four modes (frequency, depth, impulse / pause, second impulse) for the next
 *       training. The client's own saved settings (diskette / ⚙) keep the trainer's difference: the formula moves,
 *       the offset stays (ClientPrograms keeps the formula's values of the moment it was saved).</li>
 *   <li>AI, Auto and the impulse maps run their own blocks — not touched. Personalisation off → nothing.</li>
 * </ul>
 * The log: prefs "xems_param_log", key u&lt;id&gt; = JSON array, oldest first, at most {@link #KEEP}.
 */
public final class ParamPlan {
    static final String PREFS = "xems_param_log";
    static final String SAVED = "xems_client_programs";
    static final int KEEP = 60;
    static final int P = ParamFormula.P;
    private static Context app;

    private ParamPlan() {}

    static void init(Context c) {
        if (c != null) {
            app = c.getApplicationContext();
        }
    }

    static Context ctx(Context c) {
        return c != null ? c.getApplicationContext() : app;
    }

    // ------------------------------------------------------------------ the triggers

    /** The client form was saved (called by name from widget/XemsLocalUserForm). */
    public static void onProfile(Context c, TrainUser u) {
        refresh(c, u, "Профилът е променен", "Profile changed", 0);
    }

    /** A scale measurement was saved. */
    public static void onScale(Context c, long userId) {
        refresh(c, user(userId), "Ново измерване на кантара", "New scale measurement", 0);
    }

    /** A training ended (it may not be in the history yet). */
    static void onSession(Context c, TrainUser u, long start) {
        int extra = 1;
        try {
            List<JSONObject> h = NextPlan.history(ctx(c), u != null ? u.id : -1);
            for (int i = 0; i < h.size(); i++) {
                if (h.get(i).optLong("start") == start) {
                    extra = 0;
                }
            }
        } catch (Throwable ignored) {
        }
        refresh(c, u, "След тренировка", "After a training", extra);
    }

    static TrainUser user(long id) {
        try {
            List<TrainUser> users = DataMgr.getInstance().trainUsers;
            for (int i = 0; users != null && i < users.size(); i++) {
                TrainUser u = users.get(i);
                if (u != null && u.id == id) {
                    return u;
                }
            }
        } catch (Throwable ignored) {
        }
        return null;
    }

    // ------------------------------------------------------------------ the formula and the log

    /** The client's impulse now; logged when it differs from the last entry. Null when off or no client. */
    public static ParamFormula.Out refresh(Context c, TrainUser u, String trigBg, String trigEn, int extraSessions) {
        Context x = ctx(c);
        init(x);
        if (x == null || u == null || !ProgramFit.enabled(x)) {
            return null;
        }
        try {
            AiProfile p = AiProfile.of(u);
            int n = NextPlan.history(x, u.id).size() + Math.max(0, extraSessions);
            ParamFormula.In in = input(p, n);
            ParamFormula.Out o = ParamFormula.compute(in);
            log(x, u.id, in, o, trigBg, trigEn);
            return o;
        } catch (Throwable t) {
            XemsGuard.report("ParamPlan.refresh", t);
            return null;
        }
    }

    static ParamFormula.In input(AiProfile p, int sessions) {
        ParamFormula.In in = new ParamFormula.In();
        in.sessions = sessions;
        if (p == null) {
            return in;
        }
        in.sex = p.sex;
        in.age = p.age;
        in.heightCm = p.heightCm;
        in.weightKg = p.weightKg;
        in.fatPct = p.fatPct;
        in.muscleLow = p.muscleLow;
        in.fitness = p.fitness;
        in.goal = p.goal;
        AiPersonal.Effect e = p.personal();
        if (e != null) {
            in.offS = e.offS;
            in.sensitive = e.rampUpMs > 0;
        }
        return in;
    }

    static SharedPreferences prefs(Context c) {
        return c.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    /** The log, oldest first. */
    public static JSONArray list(Context c, long userId) {
        try {
            Context x = ctx(c);
            return new JSONArray(prefs(x).getString("u" + userId, "[]"));
        } catch (Throwable t) {
            return new JSONArray();
        }
    }

    static JSONObject inJson(ParamFormula.In in, ParamFormula.Out o) throws org.json.JSONException {
        JSONObject j = new JSONObject();
        j.put("kg", in.weightKg != null ? Math.round(in.weightKg * 10) / 10.0 : 0);
        j.put("fat", Double.isNaN(o.fatPct) ? -1 : Math.round(o.fatPct * 10) / 10.0);
        j.put("fm", o.fatMeasured);
        j.put("age", in.age != null ? in.age : 0);
        j.put("fit", in.fitness != null ? in.fitness.name() : "");
        j.put("goal", in.goal != null ? in.goal.name() : "");
        j.put("n", in.sessions);
        j.put("off", in.offS);
        j.put("sens", in.sensitive);
        j.put("ml", in.muscleLow);
        return j;
    }

    static void log(Context c, long userId, ParamFormula.In in, ParamFormula.Out o, String trigBg, String trigEn)
            throws org.json.JSONException {
        JSONArray a = list(c, userId);
        JSONObject last = a.length() > 0 ? a.optJSONObject(a.length() - 1) : null;
        JSONArray v = new JSONArray();
        for (int k = 0; k < ParamFormula.MODES; k++) {
            JSONArray r = new JSONArray();
            for (int i = 0; i < P; i++) {
                r.put(o.v[k][i]);
            }
            v.put(r);
        }
        if (last != null && v.toString().equals(String.valueOf(last.optJSONArray("v")))) {
            return;                                         // nothing changed in the impulse
        }
        JSONObject now = inJson(in, o);
        JSONObject e = new JSONObject();
        e.put("t", System.currentTimeMillis());
        JSONArray cause = new JSONArray();
        JSONArray causeEn = new JSONArray();
        causes(last != null ? last.optJSONObject("in") : null, now, cause, causeEn);
        e.put("trig", cause.length() > 0 ? cause.optString(0) : trigBg);
        e.put("trigEn", causeEn.length() > 0 ? causeEn.optString(0) : trigEn);
        e.put("cause", cause);
        e.put("causeEn", causeEn);
        e.put("var", o.variantBg);
        e.put("varEn", o.variantEn);
        e.put("vi", o.variant);
        e.put("v", v);
        e.put("in", now);
        JSONArray d = new JSONArray();
        JSONArray dEn = new JSONArray();
        diff(last != null ? last.optJSONArray("v") : null, o.v, d, dEn);
        e.put("diff", d);
        e.put("diffEn", dEn);
        e.put("why", new JSONArray(o.whyBg));
        e.put("whyEn", new JSONArray(o.whyEn));
        JSONArray out = new JSONArray();
        for (int i = Math.max(0, a.length() - KEEP + 1); i < a.length(); i++) {
            out.put(a.get(i));
        }
        out.put(e);
        prefs(c).edit().putString("u" + userId, out.toString()).apply();
        WearableBleDiagLog.log("param", "user " + userId + " " + o.variantEn + " main "
                + ParamFormula.line(o.v[0], false));
    }

    /** What changed in the client since the last entry, in words. */
    static void causes(JSONObject was, JSONObject now, JSONArray bg, JSONArray en) {
        if (was == null) {
            bg.put("Първо изчисление");
            en.put("First calculation");
            return;
        }
        double kw = was.optDouble("kg"), kn = now.optDouble("kg");
        if (Math.abs(kw - kn) >= 0.1) {
            bg.put(String.format(java.util.Locale.US, "Тегло %.1f → %.1f kg", kw, kn));
            en.put(String.format(java.util.Locale.US, "Weight %.1f → %.1f kg", kw, kn));
        }
        double fw = was.optDouble("fat"), fn = now.optDouble("fat");
        if (Math.abs(fw - fn) >= 0.1 || was.optBoolean("fm") != now.optBoolean("fm")) {
            String src = now.optBoolean("fm") ? " (кантар)" : "";
            bg.put(fw < 0 ? String.format(java.util.Locale.US, "Мазнини %.1f %%%s", fn, src)
                    : String.format(java.util.Locale.US, "Мазнини %.1f → %.1f %%%s", fw, fn, src));
            en.put(fw < 0 ? String.format(java.util.Locale.US, "Fat %.1f%%", fn)
                    : String.format(java.util.Locale.US, "Fat %.1f → %.1f%%", fw, fn));
        }
        if (!was.optString("goal").equals(now.optString("goal"))) {
            bg.put("Нова цел");
            en.put("New goal");
        }
        if (!was.optString("fit").equals(now.optString("fit"))) {
            bg.put("Нова форма");
            en.put("New fitness");
        }
        if (was.optInt("age") != now.optInt("age")) {
            bg.put("Възраст " + now.optInt("age"));
            en.put("Age " + now.optInt("age"));
        }
        if (was.optInt("off") != now.optInt("off") || was.optBoolean("sens") != now.optBoolean("sens")) {
            bg.put("Състояние");
            en.put("State");
        }
        if (was.optBoolean("ml") != now.optBoolean("ml")) {
            bg.put(now.optBoolean("ml") ? "Малко мускулна маса" : "Мускулната маса е в норма");
            en.put(now.optBoolean("ml") ? "Low muscle mass" : "Muscle mass normal");
        }
        if (was.optInt("n") != now.optInt("n")) {
            bg.put("Тренировка " + (now.optInt("n") + 1));
            en.put("Training " + (now.optInt("n") + 1));
        }
    }

    static final String[] PARAM_BG = {"Hz", "µs", "s импулс", "s пауза", "", "Hz 2-ри", "% 2-ри"};
    static final String[] PARAM_EN = {"Hz", "µs", "s impulse", "s pause", "", "Hz 2nd", "% 2nd"};

    /** "Основен: 85 → 100 Hz, 4 → 3 s импулс" per mode. */
    static void diff(JSONArray was, int[][] now, JSONArray bg, JSONArray en) {
        if (was == null) {
            return;
        }
        for (int k = 0; k < ParamFormula.MODES; k++) {
            JSONArray r = was.optJSONArray(k);
            if (r == null) {
                continue;
            }
            StringBuilder b = new StringBuilder();
            StringBuilder e = new StringBuilder();
            for (int i = 0; i < P; i++) {
                int a = r.optInt(i), z = now[k][i];
                if (a == z) {
                    continue;
                }
                String sep = b.length() > 0 ? ", " : "";
                if (i == ParamFormula.AP) {
                    b.append(sep).append(z == 1 ? "2-ри импулс вкл." : "2-ри импулс изкл.");
                    e.append(sep).append(z == 1 ? "2nd impulse on" : "2nd impulse off");
                } else {
                    b.append(sep).append(a).append(" → ").append(z).append(' ').append(PARAM_BG[i]);
                    e.append(sep).append(a).append(" → ").append(z).append(' ').append(PARAM_EN[i]);
                }
            }
            if (b.length() > 0) {
                bg.put(ParamFormula.modeName(k, true) + ": " + b);
                en.put(ParamFormula.modeName(k, false) + ": " + e);
            }
        }
    }

    // ------------------------------------------------------------------ onto the row

    /**
     * Puts the formula on the program's four modes. {@code at} = the formula's values when the trainer saved the
     * client's own settings (their difference is kept), or null (exactly the formula). False when off.
     */
    static boolean overlay(Context c, TrainProgram prog, TrainUser u, int[][] at) {
        ParamFormula.Out o = refresh(c, u, "Следваща тренировка", "Next training", 0);
        if (o == null || prog == null) {
            return false;
        }
        for (int k = 0; k < ParamFormula.MODES; k++) {
            ProgramDataBean b = ProgramFit.bean(prog, k);
            if (b != null) {
                put(b, k, o.v[k], at != null ? at[k] : null);
            }
        }
        return true;
    }

    /** One mode: the formula, plus the trainer's difference from the formula of the moment they saved. */
    static void put(ProgramDataBean b, int k, int[] f, int[] at) {
        int[] cur = values(b);
        int[] v = f.clone();
        if (at != null) {
            for (int i = 0; i < P; i++) {
                if (i == ParamFormula.AP) {
                    if (cur[i] != at[i]) {
                        v[i] = cur[i];                      // the trainer's own choice on / off
                    }
                } else if (i == ParamFormula.PHZ || i == ParamFormula.PS) {
                    if (at[ParamFormula.AP] == 1 && cur[ParamFormula.AP] == 1) {
                        v[i] = f[i] + cur[i] - at[i];
                    } else if (at[ParamFormula.AP] == 0 && cur[ParamFormula.AP] == 1) {
                        v[i] = cur[i];
                    }
                } else {
                    v[i] = f[i] + cur[i] - at[i];
                }
            }
        }
        b.hz = ProgramFit.clamp(v[ParamFormula.HZ], 1, 120);
        b.pulseWidth = ProgramFit.clamp(v[ParamFormula.W], 50, 400);
        b.pulseContinue = Math.max(1, v[ParamFormula.ON]);
        b.pulsePause = Math.max(1, v[ParamFormula.OFF]);
        b.activePause = v[ParamFormula.AP] == 1 && k != 1;
        if (b.activePause) {
            b.pauseHz = ProgramFit.clamp(v[ParamFormula.PHZ], 1, 120);
            b.pauseStrenthPercent = ProgramFit.clamp(Math.round(v[ParamFormula.PS] / 5f) * 5, 5, 100);
        }
    }

    static int[] values(ProgramDataBean b) {
        return new int[] {b.hz, b.pulseWidth, b.pulseContinue, b.pulsePause, b.activePause ? 1 : 0, b.pauseHz,
            b.pauseStrenthPercent};
    }

    // ------------------------------------------------------------------ the client's own saved settings

    /** ClientPrograms.save: keep the formula of this moment beside the saved settings. */
    static void onSaved(Context c, TrainUser u, String key) {
        Context x = ctx(c);
        if (x == null || u == null) {
            return;
        }
        ParamFormula.Out o = refresh(x, u, "Записано за клиента", "Saved for the client", 0);
        if (o != null) {
            x.getSharedPreferences(SAVED, Context.MODE_PRIVATE).edit().putString("f" + key, toJson(o.v)).apply();
        }
    }

    /**
     * The formula's values when the client's own settings were saved. Saved before the formula existed: the
     * formula of now, kept — the saved settings stay exactly as they are and follow the formula from then on.
     */
    static int[][] savedAt(Context c, TrainUser u, String key) {
        Context x = ctx(c);
        if (x == null || u == null) {
            return null;
        }
        SharedPreferences sp = x.getSharedPreferences(SAVED, Context.MODE_PRIVATE);
        int[][] at = fromJson(sp.getString("f" + key, null));
        if (at == null) {
            ParamFormula.Out o = refresh(x, u, "Следваща тренировка", "Next training", 0);
            if (o == null) {
                return null;
            }
            at = o.v;
            sp.edit().putString("f" + key, toJson(at)).apply();
        }
        return at;
    }

    static String toJson(int[][] v) {
        JSONArray a = new JSONArray();
        for (int k = 0; k < v.length; k++) {
            JSONArray r = new JSONArray();
            for (int i = 0; i < v[k].length; i++) {
                r.put(v[k][i]);
            }
            a.put(r);
        }
        return a.toString();
    }

    static int[][] fromJson(String s) {
        if (s == null) {
            return null;
        }
        try {
            JSONArray a = new JSONArray(s);
            int[][] v = new int[ParamFormula.MODES][P];
            for (int k = 0; k < ParamFormula.MODES && k < a.length(); k++) {
                JSONArray r = a.getJSONArray(k);
                for (int i = 0; i < P && i < r.length(); i++) {
                    v[k][i] = r.getInt(i);
                }
            }
            return v;
        } catch (Throwable t) {
            return null;
        }
    }

    /** For the report: the log, newest last (the bridge hands it to the page). */
    static String json(Context c, long userId) {
        return list(c, userId).toString();
    }
}
