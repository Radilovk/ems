package com.isaigu.gymapp.wearable;

import android.content.Context;
import android.content.SharedPreferences;

import com.isaigu.gymapp.bean.PartStrenthBean;
import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.bean.TrainUser;
import com.isaigu.gymapp.mgr.DataMgr;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.utils.BeanUtils;
import com.isaigu.gymapp.widget.XemsLang;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * A client's settings for the next training: what was used last time (kept when a training ends) and a
 * recommendation from the history — rest since the last training, how the last one went, how the load
 * was spread over the muscles in the last 30 days and when the client comes again.
 */
public final class NextPlan {
    static final String PREFS = "xems_next_plan";
    static final int CH = SessionRec.CH;
    static final long DAY = 24L * 3600000L;

    private NextPlan() {}

    /** The settings of one training (the manual mode's parameters). */
    public static final class Snap {
        public long t;
        public String program = "";
        public int type;
        public int st;
        public int hz;
        public int pw;
        public int on;
        public int off;
        public int ps;
        public int phz;
        public boolean ap;
        public int work;
        public int[] ch = new int[CH];
        public int activeS;
        public int planS;
        /** The last training was run by the AI / automatic mode (its name in program). */
        public boolean assisted;

        Snap copy() {
            Snap s = new Snap();
            s.t = t;
            s.program = program;
            s.type = type;
            s.st = st;
            s.hz = hz;
            s.pw = pw;
            s.on = on;
            s.off = off;
            s.ps = ps;
            s.phz = phz;
            s.ap = ap;
            s.work = work;
            s.ch = Arrays.copyOf(ch, CH);
            s.activeS = activeS;
            s.planS = planS;
            s.assisted = assisted;
            return s;
        }
    }

    /** A recommendation: the settings plus the reasons in words. */
    public static final class Rec {
        public Snap last;
        public Snap next;
        public final List<String> why = new ArrayList<String>();
        public boolean first;
        public boolean same;
        public long lastMs;
        public long nextApptMs;
    }

    // ================================================================ keeping the last settings

    /** A training ended (SessionRecorder.close): keep its settings for the next time. */
    static void remember(Context c, SessionRec r) {
        if (c == null || r == null || r.activeS() < SessionRecorder.MIN_ACTIVE_S) {
            return;
        }
        try {
            SharedPreferences p = c.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
            Snap old = load(c, r.userId);
            Snap s = new Snap();
            s.t = r.start;
            s.program = r.program != null ? r.program : "";
            s.assisted = r.assist || r.auto || r.ai;
            s.activeS = r.activeS();
            s.planS = r.mainPlanS > 0 ? r.mainPlanS : r.planS;
            s.type = r.mainType >= 0 ? r.mainType : 0;
            // The working values: the median main strength while running, the rest as they ended.
            s.st = runMedian(r, r.st);
            int last = lastRun(r);
            if (last >= 0) {
                s.hz = r.hz.get(last);
                s.pw = r.pw.get(last);
                s.on = r.on.get(last);
                s.off = r.off.get(last);
                s.ps = r.ps.get(last);
                s.phz = r.phz.get(last);
                s.ap = r.ap.get(last) == 1;
                for (int i = 0; i < CH; i++) {
                    s.ch[i] = r.ch[i].get(last);
                }
            }
            s.work = s.planS;
            // A massage alone (passive procedure, e.g. after a manual training): the working settings stay.
            boolean passive = r.mainType < 0 && (r.modes & (1 << SessionRecorder.TYPE_MASSAGE)) != 0;
            if (passive && old != null) {
                Snap keep = old.copy();
                keep.t = s.t;
                s = keep;
            } else if (s.assisted && old != null) {
                // The modes drive their own parameters: keep the manual ones, note the date and the name.
                Snap keep = old.copy();
                keep.t = s.t;
                keep.assisted = true;
                keep.program = s.program;
                keep.activeS = s.activeS;
                keep.planS = old.planS;
                s = keep;
            }
            p.edit().putString("u" + r.userId, toJson(s).toString()).apply();
        } catch (Throwable t) {
            WearableBleDiagLog.log("next", "remember: " + t);
        }
    }

    /** The last working second (phase 2, the passive massage, is not the training's settings). */
    private static int lastRun(SessionRec r) {
        int any = -1;
        for (int i = r.run.size() - 1; i >= 0; i--) {
            if (r.run.get(i) == 1) {
                if (i >= r.pv.size() || r.pv.get(i) == 0) {
                    return i;
                }
                if (any < 0) {
                    any = i;
                }
            }
        }
        return any;
    }

    private static int runMedian(SessionRec r, SessionInts v) {
        List<Integer> xs = new ArrayList<Integer>();
        for (int i = 0; i < r.run.size() && i < v.size(); i++) {
            boolean passive = i < r.pv.size() && r.pv.get(i) == 1 && r.mainType >= 0;
            if (r.run.get(i) == 1 && v.get(i) > 0 && !passive) {
                xs.add(v.get(i));
            }
        }
        if (xs.isEmpty()) {
            return 0;
        }
        java.util.Collections.sort(xs);
        return xs.get(xs.size() / 2);
    }

    static Snap load(Context c, long userId) {
        try {
            String s = c.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getString("u" + userId, null);
            return s != null ? fromJson(new JSONObject(s)) : null;
        } catch (Throwable t) {
            return null;
        }
    }

    static JSONObject toJson(Snap s) throws org.json.JSONException {
        JSONObject o = new JSONObject();
        o.put("t", s.t);
        o.put("program", s.program);
        o.put("type", s.type);
        o.put("st", s.st);
        o.put("hz", s.hz);
        o.put("pw", s.pw);
        o.put("on", s.on);
        o.put("off", s.off);
        o.put("ps", s.ps);
        o.put("phz", s.phz);
        o.put("ap", s.ap);
        o.put("work", s.work);
        o.put("activeS", s.activeS);
        o.put("planS", s.planS);
        o.put("assisted", s.assisted);
        JSONArray a = new JSONArray();
        for (int i = 0; i < CH; i++) {
            a.put(s.ch[i]);
        }
        o.put("ch", a);
        return o;
    }

    static Snap fromJson(JSONObject o) {
        Snap s = new Snap();
        s.t = o.optLong("t");
        s.program = o.optString("program", "");
        s.type = o.optInt("type");
        s.st = o.optInt("st");
        s.hz = o.optInt("hz");
        s.pw = o.optInt("pw");
        s.on = o.optInt("on");
        s.off = o.optInt("off");
        s.ps = o.optInt("ps");
        s.phz = o.optInt("phz");
        s.ap = o.optBoolean("ap");
        s.work = o.optInt("work");
        s.activeS = o.optInt("activeS");
        s.planS = o.optInt("planS");
        s.assisted = o.optBoolean("assisted");
        JSONArray a = o.optJSONArray("ch");
        for (int i = 0; a != null && i < CH && i < a.length(); i++) {
            s.ch[i] = a.optInt(i);
        }
        return s;
    }

    // ================================================================ the next training

    static String tr(String bg, String en) {
        return XemsLang.tr(bg, en);
    }

    /**
     * The client's last settings for the training at {@code apptMs} — memory, not an adaptation (owner, 1.1.323:
     * the manual mode no longer changes anything by itself; the absolute limits are ai/SafeLimits).
     * {@code nextApptMs} is the client's following appointment (0 = none known).
     */
    public static Rec recommend(Context c, TrainUser u, long apptMs, long nextApptMs) {
        Rec rec = new Rec();
        rec.nextApptMs = nextApptMs;
        Snap last = c != null && u != null ? load(c, u.id) : null;
        List<JSONObject> hist = history(c, u != null ? u.id : -1);
        long lastMs = last != null ? last.t : 0;
        for (int i = 0; i < hist.size(); i++) {
            lastMs = Math.max(lastMs, hist.get(i).optLong("start"));
        }
        rec.lastMs = lastMs;
        if (last == null) {
            rec.first = true;
            return rec;
        }
        rec.last = last;
        rec.next = last.copy();
        rec.same = true;
        return rec;
    }

    // ================================================================ the client's own profile

    /** {focus csv, cond csv, goal} from the client form / the booking app (widget/XemsClientSync keeps them). */
    static String[] own(Context c, TrainUser u) {
        if (c == null || u == null) {
            return new String[] {"", "", ""};
        }
        SharedPreferences p = c.getSharedPreferences("xems_user_profiles", Context.MODE_PRIVATE);
        String[] parts = p.getString("u" + u.id, "").split("\\|", -1);
        return new String[] {p.getString("focus" + u.id, ""), p.getString("cond" + u.id, ""), parts[0]};
    }

    static String focusName(String k) {
        if ("abs".equals(k)) return tr("корем", "abs");
        if ("glutes".equals(k)) return tr("седалище", "glutes");
        if ("legs".equals(k)) return tr("бедра", "legs");
        if ("arms".equals(k)) return tr("ръце", "arms");
        if ("back".equals(k)) return tr("гръб", "back");
        return tr("гърди", "chest");
    }

    static int clamp(int v, int lo, int hi) {
        return v < lo ? lo : v > hi ? hi : v;
    }

    /** The client's recorded trainings (summaries), oldest first. */
    static List<JSONObject> history(Context c, long userId) {
        List<JSONObject> out = new ArrayList<JSONObject>();
        if (c == null || userId < 0) {
            return out;
        }
        try {
            JSONArray a = new JSONArray(SessionStore.listFor(c, userId));
            for (int i = 0; i < a.length(); i++) {
                JSONObject o = a.optJSONObject(i);
                if (o != null && o.optInt("activeS") >= SessionRecorder.MIN_ACTIVE_S) {
                    out.add(o);
                }
            }
        } catch (Throwable ignored) {
        }
        return out;
    }

    /**
     * The program to load: the client's own program (or the one of the last training, or the slot's),
     * with the given settings on top. Null when there is nothing to start from.
     */
    static TrainProgram program(TrainUser u, Snap s, TrainItem slot) {
        TrainProgram base = null;
        try {
            DataMgr dm = DataMgr.getInstance();
            if (dm != null && u != null && u.trainName != null && u.trainName.length() > 0) {
                base = dm.getProgramData(u.trainName);
            }
            if (base == null && dm != null && s != null && s.program.length() > 0 && !s.assisted) {
                base = dm.getProgramData(s.program);
            }
        } catch (Throwable ignored) {
        }
        if (base == null && slot != null) {
            base = slot.getTrainProgram();
        }
        if (base == null) {
            return null;
        }
        TrainProgram own = ClientPrograms.base(u, base.name);
        if (own != null) {                              // saved for this client (diskette / ⚙): as saved
            if (s != null && bean(own, s.type) != null) {
                own.useType = s.type;
            }
            return own;
        }
        TrainProgram p = (TrainProgram) BeanUtils.cloneObject(base);
        if (p == null || s == null) {
            return p;
        }
        if (bean(p, s.type) != null) {
            p.useType = s.type;
        }
        ProgramDataBean b = p.matchProgram();
        if (b == null) {
            return p;
        }
        if (s.st > 0) {
            b.strenth = clamp(s.st, 0, 100);
        }
        if (s.hz > 0) {
            b.hz = s.hz;
        }
        if (s.pw > 0) {
            b.pulseWidth = s.pw;
        }
        if (s.on > 0) {
            b.pulseContinue = s.on;
        }
        if (s.off > 0) {
            b.pulsePause = s.off;
        }
        if (s.work > 0) {
            b.workLength = s.work;
        }
        b.activePause = s.ap && p.useType != 1;              // Мускули: no second impulse
        if (s.ps > 0) {
            b.pauseStrenthPercent = s.ps;
        }
        if (s.phz > 0) {
            b.pauseHz = s.phz;
        }
        boolean any = false;
        for (int i = 0; i < CH; i++) {
            any |= s.ch[i] > 0;
        }
        if (any) {
            if (b.strenthBean == null) {
                b.strenthBean = new PartStrenthBean();
            }
            int n = b.strenthBean.buwei != null ? Math.max(CH, b.strenthBean.buwei.length) : CH;
            int[] parts = b.strenthBean.buwei != null ? Arrays.copyOf(b.strenthBean.buwei, n) : new int[n];
            for (int i = 0; i < CH; i++) {
                parts[i] = clamp(s.ch[i], 0, 100);
            }
            b.strenthBean.buwei = parts;
        }
        return p;
    }

    private static ProgramDataBean bean(TrainProgram p, int type) {
        switch (type) {
            case 1:
                return p.muscleTrainingProgramDataBean;
            case 2:
                return p.aerobicTrainingProgramDataBean;
            case 3:
                return p.massageModeProgramDataBean;
            default:
                return p.programDataBean;
        }
    }

    /** "сила 42 · 85 Hz · 20 мин" */
    static String line(Snap s) {
        if (s == null) {
            return "";
        }
        StringBuilder b = new StringBuilder();
        b.append(tr("сила ", "strength ")).append(s.st);
        if (s.hz > 0) {
            b.append(" · ").append(s.hz).append(" Hz");
        }
        if (s.work > 0) {
            b.append(" · ").append(Math.round(s.work / 60.0)).append(tr(" мин", " min"));
        }
        return b.toString();
    }
}
