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
            if (s.assisted && old != null) {
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

    private static int lastRun(SessionRec r) {
        for (int i = r.run.size() - 1; i >= 0; i--) {
            if (r.run.get(i) == 1) {
                return i;
            }
        }
        return -1;
    }

    private static int runMedian(SessionRec r, SessionInts v) {
        List<Integer> xs = new ArrayList<Integer>();
        for (int i = 0; i < r.run.size() && i < v.size(); i++) {
            if (r.run.get(i) == 1 && v.get(i) > 0) {
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

    // ================================================================ recommendation

    static String tr(String bg, String en) {
        return XemsLang.tr(bg, en);
    }

    static final String[] ZONES_BG = {"гърди", "корем", "предно бедро", "прасци", "ръце", "трапец", "гръб",
            "кръст", "седалище", "задно бедро"};
    static final String[] ZONES_EN = {"chest", "abs", "front thigh", "calves", "arms", "traps", "back",
            "lower back", "glutes", "back thigh"};

    /**
     * Settings for the training at {@code apptMs}. {@code nextApptMs} is the client's following
     * appointment (0 = none known).
     */
    public static Rec recommend(Context c, TrainUser u, long apptMs, long nextApptMs) {
        Rec rec = new Rec();
        rec.nextApptMs = nextApptMs;
        long now = apptMs > 0 ? apptMs : System.currentTimeMillis();
        Snap last = c != null && u != null ? load(c, u.id) : null;
        List<JSONObject> hist = history(c, u != null ? u.id : -1);
        long lastMs = last != null ? last.t : 0;
        for (int i = 0; i < hist.size(); i++) {
            lastMs = Math.max(lastMs, hist.get(i).optLong("start"));
        }
        rec.lastMs = lastMs;
        String[] own = own(c, u);
        if (last == null) {
            rec.first = true;
            mindOnly(own, rec);
            rec.why.add(hist.isEmpty()
                    ? tr("Първа тренировка със запис — програмата на клиента, силата се нагласява на място.",
                         "First recorded training — the client's program, set the strength on the spot.")
                    : tr("Няма запазени настройки — програмата на клиента.",
                         "No saved settings — the client's program."));
            return rec;
        }
        rec.last = last;
        Snap n = last.copy();
        double k = 1.0;
        double days = lastMs > 0 ? (now - lastMs) / (double) DAY : 99;
        // 1. rest since the last training
        if (days < 1.75) {
            k *= 0.85;
            n.work = shorter(n.work, 0.8);
            rec.why.add(tr(String.format("Само %d ч от последната — по-леко и по-кратко (−15 %%).", Math.round(days * 24)),
                           String.format("Only %d h since the last one — lighter and shorter (−15%%).", Math.round(days * 24))));
        } else if (days > 21) {
            k *= 0.8;
            n.work = shorter(n.work, 0.8);
            rec.why.add(tr(String.format("Дълга пауза (%d дни) — −20 %% и по-кратко.", Math.round(days)),
                           String.format("Long break (%d days) — −20%% and shorter.", Math.round(days))));
        } else if (days > 8) {
            k *= 0.9;
            rec.why.add(tr(String.format("Пауза %d дни — −10 %%.", Math.round(days)),
                           String.format("%d days off — −10%%.", Math.round(days))));
        } else if (!last.assisted && last.planS > 0 && last.activeS >= 0.9 * last.planS && hist.size() >= 2) {
            k *= 1.05;
            rec.why.add(tr("Последната е изкарана докрай — +5 % сила.", "The last one was completed — +5% strength."));
        }
        // 2. the next appointment
        if (nextApptMs > 0 && apptMs > 0) {
            double gap = (nextApptMs - apptMs) / (double) DAY;
            if (gap < 1.75) {
                k *= 0.95;
                rec.why.add(tr("Следващият час е до 2 дни — умерено (−5 %).",
                               "The next appointment is within 2 days — moderate (−5%)."));
            }
        }
        // 3. the muscles: the 30-day load per zone against the average
        double[] load = load30(hist, now);
        List<String> up = new ArrayList<String>();
        List<String> down = new ArrayList<String>();
        if (load != null) {
            double sum = 0;
            int m = 0;
            for (int i = 0; i < CH; i++) {
                if (n.ch[i] > 0) {
                    sum += load[i];
                    m++;
                }
            }
            double avg = m > 0 ? sum / m : 0;
            for (int i = 0; i < CH && avg > 0; i++) {
                if (n.ch[i] <= 0) {
                    continue;                              // a zone switched off stays off
                }
                if (load[i] < 0.7 * avg && n.ch[i] < 100) {
                    n.ch[i] = Math.min(100, n.ch[i] + 10);
                    up.add(XemsLang.isBg() ? ZONES_BG[i] : ZONES_EN[i]);
                } else if (load[i] > 1.35 * avg && n.ch[i] > 20) {
                    n.ch[i] = Math.max(20, n.ch[i] - 5);
                    down.add(XemsLang.isBg() ? ZONES_BG[i] : ZONES_EN[i]);
                }
            }
        }
        if (!up.isEmpty()) {
            rec.why.add(tr("Изостават за 30 дни: " + join(up) + " — +10 %.", "Behind over 30 days: " + join(up) + " — +10%."));
        }
        if (!down.isEmpty()) {
            rec.why.add(tr("Най-натоварени: " + join(down) + " — −5 %.", "Most loaded: " + join(down) + " — −5%."));
        }
        k = individual(own, n, rec, k);
        n.st = clamp((int) Math.round(last.st * k), 0, 100);
        if (last.assisted) {
            rec.why.add(0, tr("Последната беше в автоматичен режим („" + last.program + "“) — ръчните настройки от преди нея.",
                              "The last one ran in automatic mode (" + last.program + ") — the manual settings from before it."));
        }
        rec.next = n;
        rec.same = n.st == last.st && n.work == last.work && Arrays.equals(n.ch, last.ch);
        if (rec.same) {
            rec.why.add(tr("Както последния път.", "As last time."));
        }
        return rec;
    }

    // ================================================================ the client's own profile

    /** {focus csv, cond csv} the client gave in the booking app (widget/XemsClientSync keeps them). */
    static String[] own(Context c, TrainUser u) {
        if (c == null || u == null) {
            return new String[] {"", ""};
        }
        SharedPreferences p = c.getSharedPreferences("xems_user_profiles", Context.MODE_PRIVATE);
        return new String[] {p.getString("focus" + u.id, ""), p.getString("cond" + u.id, "")};
    }

    static boolean has(String csv, String k) {
        return ("," + csv + ",").contains("," + k + ",");
    }

    /** Focus zones → channels (chest 0, abs 1, front thigh 2, arms 4, back 6, glutes 8, back thigh 9). */
    static int[] focusChannels(String k) {
        if ("abs".equals(k)) return new int[] {1};
        if ("glutes".equals(k)) return new int[] {8};
        if ("legs".equals(k)) return new int[] {2, 9};
        if ("arms".equals(k)) return new int[] {4};
        if ("back".equals(k)) return new int[] {6};
        if ("chest".equals(k)) return new int[] {0};
        return new int[0];
    }

    /**
     * What the client asked for and what to mind, on top of the history: focus zones +5 %, a sore lower back /
     * neck −15 % on that zone, birth within a year −15 % on the abs, sensitive to current −10 % overall,
     * stress / poor sleep: no increase today. Returns the new overall factor.
     */
    static double individual(String[] own, Snap n, Rec rec, double k) {
        List<String> fz = new ArrayList<String>();
        for (String f : own[0].split(",")) {
            int[] chs = focusChannels(f);
            boolean any = false;
            for (int ch : chs) {
                if (n.ch[ch] > 0 && n.ch[ch] < 100) {
                    n.ch[ch] = Math.min(100, n.ch[ch] + 5);
                    any = true;
                }
            }
            if (any) {
                fz.add(focusName(f));
            }
        }
        if (!fz.isEmpty()) {
            rec.why.add(tr("Клиентът иска акцент на: " + join(fz) + " — +5 %.", "The client wants more on: " + join(fz) + " — +5%."));
        }
        String cond = own[1];
        if (has(cond, "back") && n.ch[7] > 20) {
            n.ch[7] = Math.max(20, n.ch[7] - 15);
            rec.why.add(tr("Болки в кръста — кръстът −15 %.", "Lower back pain — lower back −15%."));
        }
        if (has(cond, "neck") && n.ch[5] > 20) {
            n.ch[5] = Math.max(20, n.ch[5] - 15);
            rec.why.add(tr("Врат / рамене — трапецът −15 %.", "Neck / shoulders — traps −15%."));
        }
        if (has(cond, "postpartum") && n.ch[1] > 20) {
            n.ch[1] = Math.max(20, n.ch[1] - 15);
            rec.why.add(tr("Раждане до 1 година — коремът −15 %.", "Birth within a year — abs −15%."));
        }
        if (has(cond, "sensitive")) {
            k *= 0.9;
            rec.why.add(tr("Чувствителност към тока — −10 %, по-плавно качване.", "Sensitive to current — −10%, raise slowly."));
        }
        if (has(cond, "stress") && k > 1.0) {
            k = 1.0;
            rec.why.add(tr("Стрес / лош сън — без увеличение днес.", "Stress / poor sleep — no increase today."));
        }
        mindNotes(cond, rec);
        return k;
    }

    /** First training (no settings yet): only what to tell the trainer. */
    static void mindOnly(String[] own, Rec rec) {
        List<String> fz = new ArrayList<String>();
        for (String f : own[0].split(",")) {
            if (f.length() > 0) {
                fz.add(focusName(f));
            }
        }
        if (!fz.isEmpty()) {
            rec.why.add(tr("Клиентът иска акцент на: " + join(fz) + ".", "The client wants more on: " + join(fz) + "."));
        }
        String cond = own[1];
        List<String> m = new ArrayList<String>();
        String[][] names = {{"back", "кръст", "lower back"}, {"neck", "врат / рамене", "neck / shoulders"},
                {"postpartum", "раждане до 1 г.", "birth within a year"}, {"sensitive", "чувствителност към тока", "sensitive to current"},
                {"stress", "стрес / сън", "stress / sleep"}};
        for (String[] r : names) {
            if (has(cond, r[0])) {
                m.add(XemsLang.isBg() ? r[1] : r[2]);
            }
        }
        if (!m.isEmpty()) {
            rec.why.add(tr("Да се съобрази: " + join(m) + ".", "Mind: " + join(m) + "."));
        }
        mindNotes(cond, rec);
    }

    private static void mindNotes(String cond, Rec rec) {
        if (has(cond, "knees")) {
            rec.why.add(tr("Колене — внимание при клякания и напади.", "Knees — careful with squats and lunges."));
        }
        if (has(cond, "injury")) {
            rec.why.add(tr("Стара травма — попитай къде, преди старта.", "Old injury — ask where before the start."));
        }
        if (has(cond, "desk")) {
            rec.why.add(tr("Седяща работа — повече гръб и седалище, стойка.", "Desk job — more back and glutes, posture."));
        }
    }

    static String focusName(String k) {
        if ("abs".equals(k)) return tr("корем", "abs");
        if ("glutes".equals(k)) return tr("седалище", "glutes");
        if ("legs".equals(k)) return tr("бедра", "legs");
        if ("arms".equals(k)) return tr("ръце", "arms");
        if ("back".equals(k)) return tr("гръб", "back");
        return tr("гърди", "chest");
    }

    private static int shorter(int work, double f) {
        if (work <= 0) {
            return work;
        }
        int w = (int) Math.round(work * f / 60.0) * 60;
        return Math.max(Math.min(work, 10 * 60), w);
    }

    private static String join(List<String> xs) {
        StringBuilder b = new StringBuilder();
        for (int i = 0; i < xs.size(); i++) {
            if (i > 0) {
                b.append(", ");
            }
            b.append(xs.get(i));
        }
        return b.toString();
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

    /** Relative load per zone over the 30 days before {@code now} (null with fewer than 2 trainings). */
    static double[] load30(List<JSONObject> hist, long now) {
        double[] out = new double[CH];
        int n = 0;
        for (int i = 0; i < hist.size(); i++) {
            JSONObject o = hist.get(i);
            long t = o.optLong("start");
            if (t <= 0 || now - t > 30 * DAY || t > now) {
                continue;
            }
            JSONArray a = o.optJSONArray("mus");
            if (a == null) {
                a = o.optJSONArray("chPeak");   // older records: the peak per zone
            }
            if (a == null) {
                continue;
            }
            double mx = 0;
            for (int k = 0; k < CH && k < a.length(); k++) {
                mx = Math.max(mx, a.optDouble(k, 0));
            }
            if (mx <= 0) {
                continue;
            }
            for (int k = 0; k < CH && k < a.length(); k++) {
                out[k] += a.optDouble(k, 0) / mx;
            }
            n++;
        }
        return n >= 2 ? out : null;
    }

    // ================================================================ loading into a slot

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
        b.activePause = s.ap;
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
