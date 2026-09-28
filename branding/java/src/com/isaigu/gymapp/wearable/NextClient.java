package com.isaigu.gymapp.wearable;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.bean.TrainUser;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.utils.BeanUtils;
import com.isaigu.gymapp.widget.XemsLang;
import com.isaigu.gymapp.widget.XemsUi;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/**
 * The next client from the calendar: shortly before the appointment, when nothing runs on the tablet,
 * asks the trainer and loads the client into a free suit with the last or the recommended settings.
 */
public final class NextClient {
    static final String PREFS = "xems_next_client";
    static final long MIN = 60000L;
    /** How long after the start a late client is still offered. */
    static final long LATE_MS = 20 * MIN;
    static final long SNOOZE_MS = 5 * MIN;
    static final long CHECK_MS = 15000L;
    static final long READ_MS = 2 * MIN;
    /** A slot loaded for one appointment is not taken for another one this soon. */
    static final long HOLD_MS = 40 * MIN;

    private static long checkedAt;
    private static long readAt;
    private static List<Schedule.Appt> appts = new ArrayList<Schedule.Appt>();
    private static final Map<String, Long> SNOOZE = new HashMap<String, Long>();
    private static final Map<Integer, Long> LOADED = new HashMap<Integer, Long>();
    private static int lastSlot = -1;

    private static XemsUi.Shell shown;
    private static Schedule.Appt pAppt;
    private static NextPlan.Rec pRec;
    private static int pSlot = -1;

    private NextClient() {}

    // ================================================================ settings

    static SharedPreferences prefs(Context c) {
        return c.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    public static boolean enabled(Context c) {
        try {
            return prefs(c).getBoolean("on", true);
        } catch (Throwable t) {
            return false;
        }
    }

    public static void setEnabled(Context c, boolean on) {
        prefs(c).edit().putBoolean("on", on).apply();
    }

    /** Minutes before the appointment the question comes. */
    public static int lead(Context c) {
        try {
            return prefs(c).getInt("lead", 10);
        } catch (Throwable t) {
            return 10;
        }
    }

    public static void setLead(Context c, int m) {
        prefs(c).edit().putInt("lead", Math.max(0, Math.min(60, m))).apply();
    }

    static boolean done(Context c, Schedule.Appt a) {
        return prefs(c).getLong("done:" + a.key(), 0) > 0;
    }

    static void markDone(Context c, Schedule.Appt a) {
        SharedPreferences p = prefs(c);
        SharedPreferences.Editor e = p.edit();
        e.putLong("done:" + a.key(), System.currentTimeMillis());
        // keep the file small: drop marks older than 3 days
        long old = System.currentTimeMillis() - 3 * NextPlan.DAY;
        for (Map.Entry<String, ?> en : p.getAll().entrySet()) {
            if (en.getKey().startsWith("done:") && en.getValue() instanceof Long && (Long) en.getValue() < old) {
                e.remove(en.getKey());
            }
        }
        e.apply();
    }

    /** The calendar changed or the settings did: read it again at the next check. */
    public static void invalidate() {
        readAt = 0;
        checkedAt = 0;
    }

    // ================================================================ hooks

    /** A training ended in {@code slot} (SessionRecorder.close). */
    static void onClosed(int slot, SessionRec r, long now) {
        lastSlot = slot;
    }

    /** SessionRecorder.tick, every second while the app runs. */
    static void tick(Context app, long now, List<TrainItem> items, int openSessions) {
        try {
            tickImpl(app, now, items, openSessions);
        } catch (Throwable t) {
            WearableBleDiagLog.log("next", "tick: " + t);
        }
    }

    private static void tickImpl(Context app, long now, List<TrainItem> items, int openSessions) {
        if (app == null || now - checkedAt < CHECK_MS) {
            return;
        }
        checkedAt = now;
        if (!enabled(app) || !Schedule.canRead(app) || isShowing()) {
            return;
        }
        if (now - readAt > READ_MS) {
            readAt = now;
            appts = Schedule.read(app, now - 3 * 3600000L, now + 14 * NextPlan.DAY);
        }
        if (items == null || openSessions > 0 || anyRunning(items) || assistBusy()) {
            return;
        }
        Activity a = WearableSyncHelper.resolveActivityForPermissions();
        // Only on a free screen: no dialog, report or menu over the app, the app in front.
        if (a == null || a.isFinishing() || !a.hasWindowFocus()) {
            return;
        }
        long lead = lead(app) * MIN;
        for (int i = 0; i < appts.size(); i++) {
            Schedule.Appt ap = appts.get(i);
            if (ap.user == null || now < ap.begin - lead || now > ap.begin + LATE_MS) {
                continue;
            }
            if (done(app, ap)) {
                continue;
            }
            Long until = SNOOZE.get(ap.key());
            if (until != null && now < until) {
                continue;
            }
            if (trainedSince(app, ap.user.id, ap.begin - 45 * MIN)) {
                markDone(app, ap);                 // the client is already in / done
                continue;
            }
            int slot = pickSlot(items, ap.user, now);
            if (slot < 0) {
                return;                            // no free suit: ask when one is connected
            }
            ask(a, ap, slot, items.get(slot), false);
            return;
        }
    }

    private static boolean anyRunning(List<TrainItem> items) {
        for (int i = 0; i < items.size(); i++) {
            TrainItem it = items.get(i);
            if (it != null && !it.isEmpty() && it.data != null && it.data.start) {
                return true;
            }
        }
        return false;
    }

    private static boolean assistBusy() {
        try {
            return com.isaigu.gymapp.ai.AiSession.getStage() != com.isaigu.gymapp.ai.AiSession.Stage.IDLE
                    || com.isaigu.gymapp.ai.AutoSession.getStage() != com.isaigu.gymapp.ai.AutoSession.Stage.IDLE;
        } catch (Throwable t) {
            return false;
        }
    }

    static boolean trainedSince(Context c, long userId, long since) {
        List<org.json.JSONObject> h = NextPlan.history(c, userId);
        for (int i = 0; i < h.size(); i++) {
            if (h.get(i).optLong("start") >= since) {
                return true;
            }
        }
        return false;
    }

    /** A connected suit that is not running: the client's own, then the last used, then any free one. */
    static int pickSlot(List<TrainItem> items, TrainUser u, long now) {
        List<Integer> free = new ArrayList<Integer>();
        for (int i = 0; i < items.size(); i++) {
            TrainItem it = items.get(i);
            if (it != null && !it.isEmpty() && it.data != null && !it.data.start) {
                if (u != null && it.data.trainUser != null && it.data.trainUser.id == u.id) {
                    return i;
                }
                free.add(i);
            }
        }
        if (free.isEmpty()) {
            return -1;
        }
        if (free.contains(lastSlot) && !held(lastSlot, now)) {
            return lastSlot;
        }
        for (int k = 0; k < free.size(); k++) {
            if (!held(free.get(k), now)) {
                return free.get(k);
            }
        }
        return free.get(0);
    }

    private static boolean held(int slot, long now) {
        Long t = LOADED.get(slot);
        return t != null && now - t < HOLD_MS;
    }

    /** The client's following appointment after this one (0 = none in the next 14 days). */
    static long nextOf(Schedule.Appt ap) {
        for (int i = 0; i < appts.size(); i++) {
            Schedule.Appt o = appts.get(i);
            if (o.user != null && ap.user != null && o.user.id == ap.user.id && o.begin > ap.begin + 3600000L) {
                return o.begin;
            }
        }
        return 0;
    }

    // ================================================================ the question

    /** From the Plan tab: offer this appointment now (any time, a free suit is needed). */
    public static void offer(Activity a, Schedule.Appt ap) {
        try {
            if (a == null || ap == null || ap.user == null) {
                return;
            }
            List<TrainItem> items = WearableSyncHelper.getItemManager() != null
                    ? WearableSyncHelper.getItemManager().getItemList() : null;
            int slot = items != null ? pickSlot(items, ap.user, System.currentTimeMillis()) : -1;
            if (slot < 0) {
                Toast.makeText(a, anyRunning(items != null ? items : new ArrayList<TrainItem>())
                        ? tr("Всички костюми тренират — зареди след края.", "All suits are training — load after the end.")
                        : tr("Няма свързан костюм.", "No suit connected."), Toast.LENGTH_LONG).show();
                return;
            }
            boolean known = false;
            for (int i = 0; i < appts.size(); i++) {
                known |= appts.get(i).key().equals(ap.key());
            }
            if (!known) {
                appts.add(ap);
            }
            ask(a, ap, slot, items.get(slot), true);
        } catch (Throwable t) {
            WearableBleDiagLog.log("next", "offer: " + t);
        }
    }

    static boolean isShowing() {
        try {
            return shown != null && shown.dialog != null && shown.dialog.isShowing();
        } catch (Throwable t) {
            return false;
        }
    }

    static String tr(String bg, String en) {
        return XemsLang.tr(bg, en);
    }

    static String hm(long ms) {
        return new SimpleDateFormat("HH:mm", Locale.ROOT).format(new Date(ms));
    }

    static String day(long ms) {
        Locale l = XemsLang.isBg() ? new Locale("bg") : Locale.ENGLISH;
        return new SimpleDateFormat("EEE d MMM", l).format(new Date(ms));
    }

    static String ago(long ms, long now) {
        long d = (now - ms) / NextPlan.DAY;
        if (d <= 0) {
            return tr("днес", "today");
        }
        if (d == 1) {
            return tr("вчера", "yesterday");
        }
        return tr("преди " + d + " дни", d + " days ago");
    }

    private static void ask(Activity a, Schedule.Appt ap, int slot, TrainItem item, boolean manual) {
        PlanScreen.sync("poke", null);              // event: what the client filled in the booking app comes now
        Context c = a.getApplicationContext();
        long now = System.currentTimeMillis();
        NextPlan.Rec rec = NextPlan.recommend(c, ap.user, ap.begin, nextOf(ap));
        pAppt = ap;
        pRec = rec;
        pSlot = slot;
        long mins = Math.round((ap.begin - now) / (double) MIN);
        String when = hm(ap.begin) + (mins > 0 ? tr(" · след " + mins + " мин", " · in " + mins + " min")
                : mins < 0 ? tr(" · закъснява " + (-mins) + " мин", " · " + (-mins) + " min late") : tr(" · сега", " · now"));
        XemsUi.Shell s = XemsUi.shell(a, ap.name(), when, 600);
        shown = s;
        String suit = item.data != null && item.data.deviceName != null ? item.data.deviceName : "";
        s.badge.setText(suit.length() > 0 ? suit : tr("Костюм " + (slot + 1), "Suit " + (slot + 1)));
        s.badge.setVisibility(View.VISIBLE);
        LinearLayout body = s.body;
        // 1. what the trainer must not miss: medical reasons, what to mind, focus (from the client's profile)
        View flags = flags(a, ap.user);
        if (flags != null) {
            body.addView(flags, XemsUi.matchWrap(a, 0));
        }
        // 2. what will be loaded — big, with the change against last time
        LinearLayout hero = XemsUi.surface(a);
        hero.addView(XemsUi.label(a, rec.first ? tr("Първа тренировка", "First training")
                : rec.same ? tr("Като последния път", "As last time") : tr("Препоръка за днес", "Recommended today")));
        if (rec.next != null) {
            LinearLayout line = XemsUi.horizontal(a);
            line.addView(XemsUi.text(a, NextPlan.line(rec.next), 22, XemsUi.TEXT, true),
                    new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            int pct = rec.last != null && rec.last.st > 0
                    ? (int) Math.round((rec.next.st - rec.last.st) * 100.0 / rec.last.st) : 0;
            if (pct != 0) {
                line.addView(XemsUi.badge(a, (pct > 0 ? "+" : "−") + Math.abs(pct) + " %", pct > 0 ? XemsUi.GO_TEXT : XemsUi.AMBER));
            }
            hero.addView(line);
        } else {
            hero.addView(XemsUi.text(a, tr("Програмата на клиента · силата се нагласява на място",
                    "The client's program · set the strength on the spot"), 17, XemsUi.TEXT, true));
        }
        if (rec.last != null) {
            String head = tr("Последно: ", "Last: ") + (rec.lastMs > 0 ? ago(rec.lastMs, now) : "")
                    + (rec.last.program.length() > 0 ? " · " + rec.last.program : "") + " · " + NextPlan.line(rec.last);
            TextView h = XemsUi.text(a, head, 13, XemsUi.MUTED, false);
            h.setPadding(0, XemsUi.dp(a, 8), 0, 0);
            hero.addView(h);
        }
        // 3. why — folded, one tap
        if (!rec.why.isEmpty()) {
            LinearLayout why = XemsUi.vertical(a);
            why.setVisibility(View.GONE);
            for (int i = 0; i < rec.why.size(); i++) {
                TextView w = XemsUi.text(a, "• " + rec.why.get(i), 13.5f, XemsUi.TEXT, false);
                w.setPadding(0, XemsUi.dp(a, 4), 0, 0);
                w.setLineSpacing(0, 1.15f);
                why.addView(w);
            }
            TextView more = XemsUi.text(a, tr("Защо така? (" + rec.why.size() + ")", "Why? (" + rec.why.size() + ")") + "  ›",
                    13.5f, XemsUi.GO_TEXT, true);
            more.setPadding(0, XemsUi.dp(a, 12), 0, XemsUi.dp(a, 2));
            more.setOnClickListener(new Fold(why));
            hero.addView(more);
            hero.addView(why);
        }
        body.addView(hero, XemsUi.matchWrap(a, flags != null ? 12 : 0));
        // 4. context, small
        StringBuilder ctx = new StringBuilder();
        if (rec.nextApptMs > 0) {
            ctx.append(tr("Следващ час: ", "Next appointment: ")).append(day(rec.nextApptMs)).append(' ').append(hm(rec.nextApptMs));
        }
        String who = item.data != null && item.data.trainUser != null ? item.data.trainUser.name : null;
        if (who != null && ap.user != null && item.data.trainUser.id != ap.user.id) {
            ctx.append(ctx.length() > 0 ? "  ·  " : "").append(tr("заменя „" + who + "“", "replaces \"" + who + "\""));
        }
        if (ap.title.length() > 0 && !ap.title.equals(ap.name())) {
            ctx.append(ctx.length() > 0 ? "  ·  " : "").append(ap.title);
        }
        if (ctx.length() > 0) {
            TextView w = XemsUi.text(a, ctx.toString(), 12.5f, XemsUi.MUTED, false);
            w.setPadding(XemsUi.dp(a, 2), XemsUi.dp(a, 10), 0, 0);
            body.addView(w);
        }
        TextView skip = XemsUi.text(a, tr("Не за този час", "Not for this appointment"), 13, XemsUi.HINT, false);
        skip.setPadding(XemsUi.dp(a, 2), XemsUi.dp(a, 14), 0, XemsUi.dp(a, 4));
        skip.setOnClickListener(new Skip());
        body.addView(skip);
        XemsUi.enter(body);

        LinearLayout f = s.footer;
        TextView later = XemsUi.button(a, tr("По-късно", "Later"), XemsUi.GHOST);
        later.setOnClickListener(new Later());
        f.addView(later, XemsUi.weight(0.8f, 0, a));
        if (rec.last != null && !rec.same) {
            TextView asLast = XemsUi.button(a, tr("Като последния", "As last time"), XemsUi.SECONDARY);
            asLast.setOnClickListener(new Load(false));
            f.addView(asLast, XemsUi.weight(1.1f, 8, a));
        }
        TextView go = XemsUi.button(a, tr("Зареди", "Load"), XemsUi.PRIMARY);
        go.setOnClickListener(new Load(true));
        f.addView(go, XemsUi.weight(1.4f, 8, a));
        s.dialog.setOnDismissListener(new Dismissed());
        s.dialog.setCanceledOnTouchOutside(false);
        XemsUi.fitHeight(a, s, 0.9f);
        s.dialog.show();
        WearableBleDiagLog.log("next", "ask " + ap.name() + " at " + hm(ap.begin) + " slot " + slot
                + " by " + ap.by + (manual ? " (plan)" : ""));
    }

    /** Medical reasons (red), what to mind (amber), focus zones (green) — the client's own profile. */
    static View flags(Activity a, TrainUser u) {
        if (u == null) {
            return null;
        }
        android.content.SharedPreferences p = a.getSharedPreferences("xems_user_profiles", Context.MODE_PRIVATE);
        String[] parts = p.getString("u" + u.id, "").split("\\|", -1);
        String contra = parts.length > 2 ? parts[2] : "";
        String[] own = NextPlan.own(a, u);
        if (contra.length() == 0 && own[0].length() == 0 && own[1].length() == 0) {
            return null;
        }
        LinearLayout box = XemsUi.vertical(a);
        if (contra.length() > 0) {
            StringBuilder b = new StringBuilder();
            for (String k : contra.split(",")) {
                b.append(b.length() > 0 ? ", " : "").append(contraName(k));
            }
            TextView t = XemsUi.text(a, "⚠  " + b + tr(" — обсъди преди старта", " — talk it through before the start"),
                    14.5f, XemsUi.DANGER, true);
            t.setPadding(XemsUi.dp(a, 14), XemsUi.dp(a, 10), XemsUi.dp(a, 14), XemsUi.dp(a, 10));
            t.setBackgroundDrawable(XemsUi.rounded(XemsUi.alpha(XemsUi.DANGER, 0x22), XemsUi.dp(a, 12),
                    XemsUi.alpha(XemsUi.DANGER, 0x66), XemsUi.dp(a, 1)));
            box.addView(t);
        }
        if (own[0].length() > 0 || own[1].length() > 0) {
            LinearLayout[] row = new LinearLayout[1];
            box.addView(XemsUi.chipRow(a, row), XemsUi.matchWrap(a, contra.length() > 0 ? 8 : 0));
            for (String k : own[1].split(",")) {
                if (k.length() > 0) {
                    XemsUi.addChip(a, row[0], XemsUi.badge(a, condName(k), XemsUi.AMBER));
                }
            }
            for (String k : own[0].split(",")) {
                if (k.length() > 0) {
                    XemsUi.addChip(a, row[0], XemsUi.badge(a, "＋ " + NextPlan.focusName(k), XemsUi.GO_TEXT));
                }
            }
        }
        return box;
    }

    /** Same keys and words as the client form (widget/XemsLocalUserForm.condName), in lower case. */
    static String condName(String k) {
        if ("menopause".equals(k)) return tr("менопауза", "menopause");
        if ("prediabetes".equals(k)) return tr("преддиабет", "prediabetes");
        if ("pcos".equals(k)) return tr("ПКОС / хормони", "PCOS / hormones");
        if ("thyroid".equals(k)) return tr("щитовидна жлеза", "thyroid");
        if ("water".equals(k)) return tr("задържа течности", "water retention");
        if ("postpartum".equals(k)) return tr("след бременност", "after pregnancy");
        if ("back".equals(k)) return tr("кръст", "lower back");
        if ("neck".equals(k)) return tr("врат / рамене", "neck / shoulders");
        if ("knees".equals(k)) return tr("колене", "knees");
        if ("joints".equals(k)) return tr("стави", "joints");
        if ("injury".equals(k)) return tr("стара травма", "old injury");
        if ("diastasis".equals(k)) return tr("диастаза", "diastasis");
        if ("osteo".equals(k)) return tr("остеопороза", "osteoporosis");
        if ("varicose".equals(k)) return tr("разширени вени", "varicose veins");
        if ("desk".equals(k)) return tr("седяща работа", "desk job");
        if ("stress".equals(k)) return tr("стрес", "stress");
        if ("sleep".equals(k)) return tr("лош сън / умора", "poor sleep / fatigue");
        if ("senior".equals(k)) return tr("60+ / слаби мускули", "60+ / low muscle");
        if ("sensitive".equals(k)) return tr("чувствителен към тока", "sensitive to current");
        return k;
    }

    static String contraName(String k) {
        if ("pregnancy".equals(k)) return tr("бременност", "pregnancy");
        if ("implant".equals(k)) return tr("пейсмейкър / имплант", "pacemaker / implant");
        if ("cardiovascular".equals(k)) return tr("сърдечно заболяване", "heart disease");
        if ("circulation".equals(k)) return tr("тромбоза / вени", "thrombosis / veins");
        if ("hernia".equals(k)) return tr("херния", "hernia");
        if ("cancer".equals(k)) return tr("онкологично", "cancer");
        if ("bleeding".equals(k)) return tr("кървене", "bleeding");
        if ("epilepsy".equals(k)) return tr("епилепсия", "epilepsy");
        if ("neurological".equals(k)) return tr("неврологично", "neurological");
        if ("recent_surgery".equals(k)) return tr("скорошна операция", "recent surgery");
        if ("skin_lesion".equals(k)) return tr("рани по кожата", "skin lesions");
        if ("kidney".equals(k)) return tr("бъбреци", "kidneys");
        if ("tuberculosis".equals(k)) return tr("туберкулоза", "tuberculosis");
        return k;
    }

    /** "Why?" opens / closes the reasons. */
    static final class Fold implements View.OnClickListener {
        final View target;

        Fold(View target) {
            this.target = target;
        }

        @Override
        public void onClick(View v) {
            boolean open = target.getVisibility() != View.VISIBLE;
            target.setVisibility(open ? View.VISIBLE : View.GONE);
            if (open) {
                XemsUi.enter(target);
            }
            XemsUi.haptic(v);
        }
    }

    /** ✕ or back: ask again in a few minutes. */
    static final class Dismissed implements DialogInterface.OnDismissListener {
        @Override
        public void onDismiss(DialogInterface d) {
            if (pAppt != null) {
                SNOOZE.put(pAppt.key(), System.currentTimeMillis() + SNOOZE_MS);
            }
            shown = null;
            pAppt = null;
            pRec = null;
        }
    }

    static final class Later implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            close();
        }
    }

    static final class Skip implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            if (pAppt != null) {
                markDone(v.getContext().getApplicationContext(), pAppt);
            }
            close();
        }
    }

    static final class Load implements View.OnClickListener {
        final boolean recommended;

        Load(boolean recommended) {
            this.recommended = recommended;
        }

        @Override
        public void onClick(View v) {
            Schedule.Appt ap = pAppt;
            NextPlan.Rec rec = pRec;
            int slot = pSlot;
            Activity a = v.getContext() instanceof Activity ? (Activity) v.getContext()
                    : WearableSyncHelper.resolveActivityForPermissions();
            if (ap != null && a != null) {
                load(a, ap, rec, slot, recommended);
            }
            close();
        }
    }

    private static void close() {
        XemsUi.Shell s = shown;
        try {
            if (s != null) {
                s.dialog.dismiss();
            }
        } catch (Throwable ignored) {
        }
    }

    // ================================================================ loading

    static void load(Activity a, Schedule.Appt ap, NextPlan.Rec rec, int slot, boolean recommended) {
        try {
            List<TrainItem> items = WearableSyncHelper.getItemManager() != null
                    ? WearableSyncHelper.getItemManager().getItemList() : null;
            TrainItem it = items != null && slot >= 0 && slot < items.size() ? items.get(slot) : null;
            if (it == null || it.isEmpty() || it.data == null) {
                Toast.makeText(a, tr("Костюмът вече не е свързан.", "The suit is no longer connected."), Toast.LENGTH_LONG).show();
                return;
            }
            if (it.data.start) {
                Toast.makeText(a, tr("Костюмът тренира — не се сменя.", "The suit is training — not changed."), Toast.LENGTH_LONG).show();
                return;
            }
            NextPlan.Snap s = rec == null ? null : recommended && rec.next != null ? rec.next : rec.last;
            TrainProgram p = NextPlan.program(ap.user, s, it);
            TrainUser u = (TrainUser) BeanUtils.cloneObject(ap.user);
            if (u == null) {
                u = ap.user;
            }
            it.data.trainUser = u;
            if (p != null) {
                it.setTrainProgram(p);
            }
            LOADED.put(slot, System.currentTimeMillis());
            lastSlot = slot;
            markDone(a.getApplicationContext(), ap);
            refreshRows(a);
            Toast.makeText(a, ap.name() + (s != null ? " · " + NextPlan.line(s) : ""), Toast.LENGTH_LONG).show();
            WearableBleDiagLog.log("next", "loaded user " + u.id + " slot " + slot + " "
                    + (s != null ? NextPlan.line(s) : "own program") + (recommended ? " (recommended)" : " (last)"));
        } catch (Throwable t) {
            WearableBleDiagLog.log("next", "load: " + t);
            Toast.makeText(a, tr("Клиентът не се зареди.", "Could not load the client."), Toast.LENGTH_LONG).show();
        }
    }

    /** The training list shows the new client (its adapter redraws the rows). */
    static void refreshRows(Activity a) {
        try {
            notifyLists(a.getWindow().getDecorView());
        } catch (Throwable t) {
            WearableBleDiagLog.log("next", "refresh: " + t);
        }
    }

    private static void notifyLists(View v) {
        if (v instanceof RecyclerView) {
            try {
                Object ad = v.getClass().getMethod("getAdapter").invoke(v);
                if (ad != null) {
                    ad.getClass().getMethod("notifyDataSetChanged").invoke(ad);
                }
            } catch (Throwable ignored) {
            }
            return;
        }
        if (v instanceof ViewGroup) {
            ViewGroup g = (ViewGroup) v;
            for (int i = 0; i < g.getChildCount(); i++) {
                notifyLists(g.getChildAt(i));
            }
        }
    }
}
