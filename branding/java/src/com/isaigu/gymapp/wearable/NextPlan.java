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

    // ================================================================ recommendation

    static String segName(int seg, boolean bg) {
        switch (seg) {
            case com.isaigu.gymapp.wearable.scale.ScaleProtocol.LEFT_ARM: return bg ? "в лявата ръка" : "left arm";
            case com.isaigu.gymapp.wearable.scale.ScaleProtocol.RIGHT_ARM: return bg ? "в дясната ръка" : "right arm";
            case com.isaigu.gymapp.wearable.scale.ScaleProtocol.LEFT_LEG: return bg ? "в левия крак" : "left leg";
            case com.isaigu.gymapp.wearable.scale.ScaleProtocol.RIGHT_LEG: return bg ? "в десния крак" : "right leg";
            case com.isaigu.gymapp.wearable.scale.ScaleProtocol.TRUNK: return bg ? "в торса" : "trunk";
            default: return bg ? "в тялото" : "body";
        }
    }

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
        // 1. rest since the last training. WB-EMS works the same motor units every impulse, so the muscle damage
        //    (CK) of a hard session peaks on day 2–4; the WB-EMS guidelines ask ≥ 4 days between sessions
        //    (docs/xems-ems-physiology.md §6).
        if (days < 2) {
            k *= 0.7;
            n.work = shorter(n.work, 0.8);
            rec.why.add(tr(String.format("Само %d ч от последната — мускулите не са възстановени (след EMS това трае 2–4 дни): −30 %%, по-кратко.",
                                   Math.round(days * 24)),
                           String.format("Only %d h since the last one — the muscles have not recovered (after EMS that takes 2–4 days): −30%%, shorter.",
                                   Math.round(days * 24))));
        } else if (days < 4) {
            k *= 0.85;
            rec.why.add(tr(String.format("%d дни почивка — под препоръчаните 4 дни между EMS тренировки: −15 %%.", (int) Math.floor(days)),
                           String.format("%d days of rest — under the recommended 4 days between EMS sessions: −15%%.", (int) Math.floor(days))));
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
        // 1b. the scale this morning (wearable/scale): swelling or less water against the client's own baseline.
        //     The stronger of the two cuts wins — the time rule and the measurement are not added up.
        double timeK = Math.min(1.0, k);
        com.isaigu.gymapp.wearable.scale.ScaleInsight.Readiness ready = c != null && u != null
                ? com.isaigu.gymapp.wearable.scale.ScaleStore.readinessToday(c, u.id) : null;
        if (ready != null && ready.factor < timeK - 0.001) {
            k *= ready.factor / timeK;
            int pct = (int) Math.round((1 - ready.factor) * 100);
            boolean swollen = ready.worst >= 0 && ready.swell[ready.worst] >= 1.2;
            rec.why.add(swollen
                    ? tr("Кантарът днес: подуване " + segName(ready.worst, true) + " — не е възстановен: −" + pct + " %.",
                         "Scale today: swelling in the " + segName(ready.worst, false) + " — not recovered: −" + pct + "%.")
                    : tr("Кантарът днес: по-малко вода в тялото — −" + pct + " %, нека пие вода.",
                         "Scale today: less body water — −" + pct + "%, have them drink."));
        } else if (ready != null && ready.factor >= 1.0 && days < 4) {
            rec.why.add(tr("Кантарът днес: възстановен ✓", "Scale today: recovered ✓"));
        }
        // 2. the next appointment
        if (nextApptMs > 0 && apptMs > 0) {
            double gap = (nextApptMs - apptMs) / (double) DAY;
            if (gap < 4) {
                k *= 0.95;
                rec.why.add(tr("Следващият час е след по-малко от 4 дни — умерено, за да се възстановят (−5 %).",
                               "The next appointment is within 4 days — moderate, so they recover (−5%)."));
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

    /** {focus csv, cond csv, goal} from the client form / the booking app (widget/XemsClientSync keeps them). */
    static String[] own(Context c, TrainUser u) {
        if (c == null || u == null) {
            return new String[] {"", "", ""};
        }
        SharedPreferences p = c.getSharedPreferences("xems_user_profiles", Context.MODE_PRIVATE);
        String[] parts = p.getString("u" + u.id, "").split("\\|", -1);
        return new String[] {p.getString("focus" + u.id, ""), p.getString("cond" + u.id, ""), parts[0]};
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
        return condition(own[1], own.length > 2 ? own[2] : "", n, rec, k);
    }

    // Channels: chest 0, abs 1, front thigh 2, calves 3, arms 4, traps 5, back 6, lower back 7, glutes 8, back thigh 9.
    static final int[] BIG = {2, 9, 8, 6};
    static final int[] LEGS_GLUTES = {2, 9, 8};

    /**
     * The client's state — never a stop, it shapes the approach: which zones carry the load, how much the
     * strength may rise today and how long the work part is. Each rule says what it did in the reasons.
     */
    static double condition(String cond, String goal, Snap n, Rec rec, double k) {
        double cap = 9;                                    // the most the strength may rise today (× last)
        double workF = 1.0;
        boolean fat = "fat".equals(goal) || "cellulite".equals(goal);
        // hormones and metabolism
        if (has(cond, "prediabetes") || has(cond, "pcos")) {
            int up = has(cond, "prediabetes") ? 10 : 5;
            if (zones(n, LEGS_GLUTES, up)) {
                rec.why.add(tr((has(cond, "prediabetes") ? "Преддиабет" : "ПКОС") + " — бедра и седалище +" + up
                        + " %: големите мускули усвояват най-много глюкоза. Не на гладно.",
                        (has(cond, "prediabetes") ? "Prediabetes" : "PCOS") + " — thighs and glutes +" + up
                        + "%: the big muscles take up the most glucose. Not on an empty stomach."));
            }
        }
        if (has(cond, "menopause")) {
            if (zones(n, BIG, 5)) {
                rec.why.add(tr("Менопауза — големите мускули +5 % (мускулна маса и кости)"
                        + (fat ? ", целта „отслабване“ идва от тях." : "."),
                        "Menopause — big muscles +5% (muscle mass and bones)" + (fat ? ", fat loss comes from them." : ".")));
            }
            cap = Math.min(cap, 1.05);
        }
        if (has(cond, "thyroid")) {
            cap = Math.min(cap, 1.0);
            rec.why.add(tr("Щитовидна жлеза — без увеличение днес; следи умората.",
                    "Thyroid — no increase today; watch the fatigue."));
        }
        if (has(cond, "water")) {
            zones(n, new int[] {3}, -10);
            rec.why.add(tr("Задържане на течности — прасци −10 %"
                    + ("drain".equals(goal) ? "." : "; в края 10 мин дренаж."),
                    "Water retention — calves −10%" + ("drain".equals(goal) ? "." : "; 10 min drainage at the end.")));
        }
        if (has(cond, "postpartum") && zones(n, new int[] {1}, -15)) {
            rec.why.add(tr("След бременност — коремът −15 %, тазовото дъно първо.",
                    "After pregnancy — abs −15%, pelvic floor first."));
        }
        // body and joints
        if (has(cond, "diastasis") && n.ch[1] > 20) {
            n.ch[1] = Math.max(20, Math.min(n.ch[1] - 25, 40));
            rec.why.add(tr("Диастаза — коремът до 40 %, без напъване.", "Diastasis — abs at most 40%, no straining."));
        }
        if (has(cond, "back") && zones(n, new int[] {7}, -15)) {
            rec.why.add(tr("Кръст — кръстът −15 %, седалище и корем го пазят.", "Lower back — lower back −15%."));
        }
        if (has(cond, "neck") && zones(n, new int[] {5}, -15)) {
            rec.why.add(tr("Врат / рамене — трапецът −15 %.", "Neck / shoulders — traps −15%."));
        }
        if (has(cond, "knees") && zones(n, new int[] {2}, -10)) {
            rec.why.add(tr("Колене — предно бедро −10 %.", "Knees — front thigh −10%."));
        }
        if (has(cond, "desk") && zones(n, new int[] {6, 8}, 5)) {
            rec.why.add(tr("Седяща работа — гръб и седалище +5 % (стойка).", "Desk job — back and glutes +5% (posture)."));
        }
        if (has(cond, "varicose") && zones(n, new int[] {3, 9}, -10)) {
            rec.why.add(tr("Разширени вени — прасци и задно бедро −10 %.", "Varicose veins — calves and back thigh −10%."));
        }
        if (has(cond, "joints") || has(cond, "osteo")) {
            cap = Math.min(cap, 1.05);
            rec.why.add(tr((has(cond, "osteo") ? "Остеопороза" : "Стави") + " — силата расте плавно (до +5 %), без скокове и дълбоки клякания.",
                    (has(cond, "osteo") ? "Osteoporosis" : "Joints") + " — strength rises slowly (≤ +5%), no jumps or deep squats."));
        }
        // lifestyle
        if (has(cond, "senior")) {
            if (zones(n, BIG, 5)) {
                rec.why.add(tr("60+ — големите мускули +5 %, силата расте плавно.", "60+ — big muscles +5%, strength rises slowly."));
            }
            cap = Math.min(cap, 1.05);
        }
        if (has(cond, "stress")) {
            cap = Math.min(cap, 1.0);
            rec.why.add(tr("Напрежение и стрес — без увеличение, спокойно темпо; трапец и гръб се отпускат в края.",
                    "Tension and stress — no increase, calm pace; relax traps and back at the end."));
        }
        if (has(cond, "sleep")) {
            cap = Math.min(cap, 1.0);
            workF = Math.min(workF, 0.9);
            rec.why.add(tr("Лош сън / умора — без увеличение и по-кратко.", "Poor sleep / fatigue — no increase and shorter."));
        }
        if (has(cond, "sensitive")) {
            k *= 0.9;
            rec.why.add(tr("Чувствителен към тока — −10 %, по-плавно качване.", "Sensitive to current — −10%, raise slowly."));
        }
        if (k > cap) {
            k = cap;
        }
        if (workF < 1.0) {
            n.work = shorter(n.work, workF);
        }
        mindNotes(cond, rec);
        return k;
    }

    /** Adds {@code pct} to each zone that is on (20..100); true when one changed. */
    static boolean zones(Snap n, int[] chs, int pct) {
        boolean any = false;
        for (int ch : chs) {
            if (n.ch[ch] <= 0) {
                continue;                                  // a zone switched off stays off
            }
            int v = pct > 0 ? Math.min(100, n.ch[ch] + pct) : Math.max(Math.min(n.ch[ch], 20), n.ch[ch] + pct);
            any |= v != n.ch[ch];
            n.ch[ch] = v;
        }
        return any;
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
        for (String c : cond.split(",")) {
            if (c.length() > 0) {
                m.add(NextClient.condName(c));
            }
        }
        if (!m.isEmpty()) {
            rec.why.add(tr("Състояние: " + join(m) + " — силата се нагласява на място, по-плавно.",
                    "Condition: " + join(m) + " — set the strength on the spot, gently."));
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
