package com.isaigu.gymapp.wearable;

import android.Manifest;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import com.isaigu.gymapp.bean.TrainUser;
import com.isaigu.gymapp.widget.XemsLang;
import com.isaigu.gymapp.widget.XemsUi;

import org.json.JSONObject;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/**
 * The "План" tab: today's (or the week's) appointments from the tablet's calendar, each with its client,
 * held ✓ / missed ✗ from the recorded trainings, one tap to load the client into a free suit, and the
 * settings of the next-client question.
 */
public final class PlanScreen {
    static final int REQ_CALENDAR = 7301;
    static final long MIN = 60000L;

    private static View root;
    private static LinearLayout content;
    private static LinearLayout modeHolder;
    private static int mode;          // 0 today, 1 week
    private static final Handler H = new Handler(Looper.getMainLooper());
    private static final Runnable TICK = new Tick();

    private PlanScreen() {}

    static String tr(String bg, String en) {
        return XemsLang.tr(bg, en);
    }

    // ================================================================ hooks (CalendarFragment)

    /** CalendarFragment.onCreateView: our page instead of the vendor's month planner. */
    public static View create(LayoutInflater inf, ViewGroup parent) {
        try {
            return build(inf.getContext());
        } catch (Throwable t) {
            WearableBleDiagLog.log("plan", "create: " + t);
            return null;
        }
    }

    /** CalendarFragment.onHiddenChanged: true when the page is ours (the vendor code is skipped). */
    public static boolean onHidden(boolean hidden) {
        if (root == null) {
            return false;
        }
        if (!hidden) {
            NextClient.invalidate();
            sync("poke", null);
            refresh();
        }
        return true;
    }

    // ================================================================ page

    private static View build(Context c) {
        XemsUi.init(c);
        FrameLayout page = new FrameLayout(c);
        page.setBackgroundColor(XemsUi.BG);
        ScrollView sc = new ScrollView(c);
        sc.setFillViewport(true);
        sc.setVerticalScrollBarEnabled(false);
        LinearLayout col = XemsUi.vertical(c);
        int pad = XemsUi.dp(c, 24);
        col.setPadding(pad, XemsUi.dp(c, 20), pad, XemsUi.dp(c, 48));
        sc.addView(col, new ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        page.addView(sc, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

        LinearLayout head = XemsUi.horizontal(c);
        LinearLayout titles = XemsUi.vertical(c);
        titles.addView(XemsUi.text(c, tr("План", "Plan"), 26, XemsUi.TEXT, true));
        TextView sub = XemsUi.text(c, tr("Часовете от календара на таблета", "Appointments from the tablet's calendar"),
                13, XemsUi.MUTED, false);
        sub.setPadding(0, XemsUi.dp(c, 4), 0, 0);
        titles.addView(sub);
        head.addView(titles, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        modeHolder = XemsUi.horizontal(c);
        head.addView(modeHolder, new LinearLayout.LayoutParams(XemsUi.dp(c, 250), ViewGroup.LayoutParams.WRAP_CONTENT));
        TextView add = XemsUi.button(c, tr("+ Час", "+ Booking"), XemsUi.PRIMARY);
        add.setOnClickListener(new AddClick());
        LinearLayout.LayoutParams dl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        dl.rightMargin = XemsUi.dp(c, 10);
        head.addView(add, head.getChildCount() - 1, dl);
        TextView again = XemsUi.iconButton(c, "↻", XemsUi.SURFACE, XemsUi.TEXT, 44);
        again.setOnClickListener(new RefreshClick());
        LinearLayout.LayoutParams al = new LinearLayout.LayoutParams(XemsUi.dp(c, 44), XemsUi.dp(c, 44));
        al.leftMargin = XemsUi.dp(c, 10);
        head.addView(again, al);
        col.addView(head);

        content = XemsUi.vertical(c);
        col.addView(content, XemsUi.matchWrap(c, 16));
        root = page;
        refresh();
        H.removeCallbacks(TICK);
        H.postDelayed(TICK, 30000L);
        return page;
    }

    static final class Tick implements Runnable {
        @Override
        public void run() {
            try {
                if (root != null && root.isShown()) {
                    refresh();
                }
            } catch (Throwable ignored) {
            }
            H.postDelayed(this, 30000L);
        }
    }

    static final class RefreshClick implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            NextClient.invalidate();
            refresh();
        }
    }

    static final class ModeIndex implements XemsUi.OnIndex {
        @Override
        public void onIndex(int index) {
            mode = index;
            refresh();
            if (content != null) {
                XemsUi.enter(content);
            }
        }
    }

    static void refresh() {
        if (root == null || content == null) {
            return;
        }
        Context c = root.getContext();
        try {
            modeHolder.removeAllViews();
            modeHolder.addView(XemsUi.segmented(c, new String[] {tr("Днес", "Today"), tr("Седмица", "Week")}, mode,
                    new ModeIndex()), new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT));
            content.removeAllViews();
            if (!Schedule.canRead(c)) {
                content.addView(permissionCard(c));
                content.addView(settingsCard(c), XemsUi.matchWrap(c, 16));
                return;
            }
            long now = System.currentTimeMillis();
            Calendar cal = Calendar.getInstance();
            cal.setTimeInMillis(now);
            cal.set(Calendar.HOUR_OF_DAY, 0);
            cal.set(Calendar.MINUTE, 0);
            cal.set(Calendar.SECOND, 0);
            cal.set(Calendar.MILLISECOND, 0);
            long from = cal.getTimeInMillis();
            long to = from + (mode == 0 ? 1 : 7) * NextPlan.DAY;
            List<Schedule.Appt> list = Schedule.read(c, from, to);
            Schedule.Appt next = mode == 0 ? nextUp(c, list, now) : null;
            if (list.isEmpty()) {
                content.addView(emptyCard(c));
            } else {
                if (next != null) {
                    content.addView(hero(c, next, now));
                }
                content.addView(summary(c, list, now), XemsUi.matchWrap(c, next != null ? 16 : 0));
                int lastDay = -1;
                LinearLayout card = null;
                for (int i = 0; i < list.size(); i++) {
                    Schedule.Appt a = list.get(i);
                    cal.setTimeInMillis(a.begin);
                    int d = cal.get(Calendar.DAY_OF_YEAR);
                    if (card == null || d != lastDay) {
                        lastDay = d;
                        if (mode == 1) {
                            TextView h = XemsUi.label(c, NextClient.day(a.begin));
                            h.setPadding(XemsUi.dp(c, 4), XemsUi.dp(c, 16), 0, XemsUi.dp(c, 8));
                            content.addView(h);
                        }
                        card = XemsUi.card(c);
                        card.setPadding(XemsUi.dp(c, 6), XemsUi.dp(c, 4), XemsUi.dp(c, 6), XemsUi.dp(c, 4));
                        content.addView(card, XemsUi.matchWrap(c, mode == 1 ? 0 : 12));
                    }
                    card.addView(row(c, a, now, a == next));
                }
            }
            content.addView(settingsCard(c), XemsUi.matchWrap(c, 20));
        } catch (Throwable t) {
            WearableBleDiagLog.log("plan", "refresh: " + t);
        }
    }

    // ================================================================ rows

    /** 0 upcoming, 1 now, 2 held, 3 missed, 4 no client. */
    static int status(Context c, Schedule.Appt a, long now) {
        if (a.user == null) {
            return 4;
        }
        List<JSONObject> h = NextPlan.history(c, a.user.id);
        for (int i = 0; i < h.size(); i++) {
            long t = h.get(i).optLong("start");
            if (t >= a.begin - 45 * MIN && t <= a.end + 60 * MIN) {
                return 2;
            }
        }
        if (now > a.end + 30 * MIN) {
            return 3;
        }
        return now >= a.begin - NextClient.lead(c) * MIN ? 1 : 0;
    }

    /** Today's appointment that needs the trainer next: the one on now, else the first to come. */
    static Schedule.Appt nextUp(Context c, List<Schedule.Appt> list, long now) {
        for (int i = 0; i < list.size(); i++) {
            int st = status(c, list.get(i), now);
            if ((st == 0 || st == 1) || (st == 4 && list.get(i).end > now)) {
                return list.get(i);
            }
        }
        return null;
    }

    /** The big card on top: who comes next, when, what to mind, one button. */
    private static View hero(Context c, Schedule.Appt a, long now) {
        LinearLayout card = XemsUi.card(c);
        card.setPadding(XemsUi.dp(c, 22), XemsUi.dp(c, 18), XemsUi.dp(c, 22), XemsUi.dp(c, 18));
        card.setBackgroundDrawable(XemsUi.rounded(XemsUi.mix(XemsUi.CARD, XemsUi.GO, 0.10f), XemsUi.dp(c, 20),
                XemsUi.alpha(XemsUi.GO, 0x88), XemsUi.dp(c, 1)));
        long m = Math.round((a.begin - now) / (double) MIN);
        boolean on = now >= a.begin && now <= a.end;
        LinearLayout top = XemsUi.horizontal(c);
        top.addView(XemsUi.label(c, on ? tr("Сега", "Now") : tr("Следващ", "Next")),
                new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        String when = on ? tr("тече от " + (-m) + " мин", "running " + (-m) + " min")
                : m <= 0 ? tr("сега", "now") : m < 60 ? tr("след " + m + " мин", "in " + m + " min")
                : tr("след " + (m / 60) + " ч " + (m % 60) + " мин", "in " + (m / 60) + " h " + (m % 60) + " min");
        top.addView(XemsUi.badge(c, when, m <= 15 ? XemsUi.AMBER : XemsUi.GO_TEXT));
        card.addView(top);
        LinearLayout main = XemsUi.horizontal(c);
        main.addView(XemsUi.text(c, NextClient.hm(a.begin), 38, XemsUi.TEXT, true));
        LinearLayout who = XemsUi.vertical(c);
        who.setPadding(XemsUi.dp(c, 18), 0, 0, 0);
        who.addView(XemsUi.text(c, a.name(), 22, a.user != null ? XemsUi.TEXT : XemsUi.MUTED, true));
        String sub = a.user == null ? tr("Не е разпознат — избери клиента", "Not recognised — pick the client")
                : a.title.equals(a.name()) ? tr("до ", "until ") + NextClient.hm(a.end) : a.title;
        TextView sv = XemsUi.text(c, sub, 13.5f, XemsUi.MUTED, false);
        sv.setPadding(0, XemsUi.dp(c, 4), 0, 0);
        sv.setMaxLines(1);
        who.addView(sv);
        main.addView(who, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        TextView go = XemsUi.button(c, a.user != null ? tr("Зареди", "Load") : tr("Избери", "Pick"), XemsUi.PRIMARY);
        go.setOnClickListener(new RowClick(a));
        main.addView(go);
        card.addView(main, XemsUi.matchWrap(c, 6));
        Activity act = activity(root);
        View flags = act != null ? NextClient.flags(act, a.user) : null;
        if (flags != null) {
            card.addView(flags, XemsUi.matchWrap(c, 12));
        }
        return card;
    }

    private static View summary(Context c, List<Schedule.Appt> list, long now) {
        int held = 0;
        int missed = 0;
        int open = 0;
        for (int i = 0; i < list.size(); i++) {
            int s = status(c, list.get(i), now);
            if (s == 2) {
                held++;
            } else if (s == 3) {
                missed++;
            } else if (s != 4) {
                open++;
            }
        }
        LinearLayout row = XemsUi.horizontal(c);
        row.setPadding(XemsUi.dp(c, 2), 0, 0, 0);
        TextView total = XemsUi.text(c, list.size() + tr(list.size() == 1 ? " час" : " часа", list.size() == 1 ? " booking" : " bookings"),
                15, XemsUi.TEXT, true);
        row.addView(total);
        View gap = new View(c);
        row.addView(gap, new LinearLayout.LayoutParams(XemsUi.dp(c, 12), 1));
        if (held > 0) {
            row.addView(pill(c, "✓ " + held + tr(" проведени", " held"), XemsUi.GO_TEXT));
        }
        if (missed > 0) {
            row.addView(pill(c, "✗ " + missed + tr(" пропуснати", " missed"), XemsUi.DANGER));
        }
        if (open > 0) {
            row.addView(pill(c, open + tr(" предстоят", " to come"), XemsUi.MUTED));
        }
        return row;
    }

    private static View pill(Context c, String t, int color) {
        TextView b = XemsUi.badge(c, t, color);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.rightMargin = XemsUi.dp(c, 8);
        b.setLayoutParams(lp);
        return b;
    }

    private static View row(Context c, Schedule.Appt a, long now, boolean isNext) {
        LinearLayout r = XemsUi.horizontal(c);
        int p = XemsUi.dp(c, 12);
        r.setPadding(p, p, p, p);
        LinearLayout time = XemsUi.vertical(c);
        time.addView(XemsUi.text(c, NextClient.hm(a.begin), 18, XemsUi.TEXT, true));
        TextView e = XemsUi.text(c, NextClient.hm(a.end), 12.5f, XemsUi.MUTED, false);
        e.setPadding(0, XemsUi.dp(c, 3), 0, 0);
        time.addView(e);
        r.addView(time, new LinearLayout.LayoutParams(XemsUi.dp(c, 70), ViewGroup.LayoutParams.WRAP_CONTENT));
        LinearLayout mid = XemsUi.vertical(c);
        mid.addView(XemsUi.text(c, a.name(), 16.5f, a.user != null ? XemsUi.TEXT : XemsUi.MUTED, true));
        String sub = a.user == null ? tr("Няма такъв клиент в приложението — натисни, за да избереш",
                "No such client in the app — tap to pick one")
                : a.title.equals(a.name()) ? "" : a.title;
        if (sub.length() > 0) {
            TextView s = XemsUi.text(c, sub, 12.5f, XemsUi.MUTED, false);
            s.setPadding(0, XemsUi.dp(c, 3), 0, 0);
            s.setMaxLines(2);
            mid.addView(s);
        }
        r.addView(mid, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        int st = status(c, a, now);
        String label;
        int color;
        switch (st) {
            case 1:
                label = tr("сега", "now");
                color = XemsUi.AMBER;
                break;
            case 2:
                label = tr("✓ проведена", "✓ held");
                color = XemsUi.GO_TEXT;
                break;
            case 3:
                label = tr("✗ пропусната", "✗ missed");
                color = XemsUi.DANGER;
                break;
            case 4:
                label = tr("? клиент", "? client");
                color = XemsUi.HINT;
                break;
            default:
                long m = (a.begin - now) / MIN;
                label = m < 60 ? tr("след " + m + " мин", "in " + m + " min")
                        : m < 24 * 60 ? tr("след " + (m / 60) + " ч", "in " + (m / 60) + " h") : tr("предстои", "to come");
                color = XemsUi.MUTED;
                break;
        }
        r.addView(XemsUi.badge(c, label, color));
        // attention: the next one is marked, what is over steps back
        android.graphics.drawable.Drawable bg = isNext
                ? XemsUi.rounded(XemsUi.alpha(XemsUi.GO, 0x1A), XemsUi.dp(c, 12), 0, 0)
                : new android.graphics.drawable.ColorDrawable(0x00000000);
        r.setBackgroundDrawable(XemsUi.ripple(bg, XemsUi.TEXT, XemsUi.dp(c, 12)));
        if (st == 2 || st == 3) {
            r.setAlpha(0.6f);
        }
        XemsUi.pressable(r);
        r.setOnClickListener(new RowClick(a));
        r.setOnLongClickListener(new RowLong(a));
        return r;
    }

    static final class RowClick implements View.OnClickListener {
        final Schedule.Appt a;

        RowClick(Schedule.Appt a) {
            this.a = a;
        }

        @Override
        public void onClick(View v) {
            Activity act = activity(v);
            if (act == null) {
                return;
            }
            XemsUi.haptic(v);
            if (a.user == null) {
                pickClient(act, a);
            } else {
                NextClient.offer(act, a);
            }
        }
    }

    /** Hold: choose (or change) the client of this appointment. */
    static final class RowLong implements View.OnLongClickListener {
        final Schedule.Appt a;

        RowLong(Schedule.Appt a) {
            this.a = a;
        }

        @Override
        public boolean onLongClick(View v) {
            Activity act = activity(v);
            if (act != null) {
                pickClient(act, a);
            }
            return true;
        }
    }

    static Activity activity(View v) {
        Context c = v != null ? v.getContext() : null;
        while (c instanceof ContextWrapper) {
            if (c instanceof Activity) {
                return (Activity) c;
            }
            c = ((ContextWrapper) c).getBaseContext();
        }
        return WearableSyncHelper.resolveActivityForPermissions();
    }

    // ================================================================ client picker

    private static XemsUi.Shell picker;

    static void pickClient(Activity act, Schedule.Appt a) {
        XemsUi.Shell s = XemsUi.shell(act, tr("Кой клиент е това?", "Which client is this?"),
                a.title + " · " + NextClient.hm(a.begin), 520);
        picker = s;
        EditText q = new EditText(act);
        q.setHint(tr("Търси", "Search"));
        q.setSingleLine(true);
        q.setTextColor(XemsUi.TEXT);
        q.setHintTextColor(XemsUi.HINT);
        s.body.addView(q, XemsUi.matchWrap(act, 0));
        LinearLayout list = XemsUi.vertical(act);
        s.body.addView(list, XemsUi.matchWrap(act, 8));
        List<TrainUser> users = Schedule.users();
        Collections.sort(users, new ByName());
        q.addTextChangedListener(new Filter(act, list, users, a));
        fill(act, list, users, a, "");
        if (a.user != null) {
            TextView un = XemsUi.button(act, tr("Без клиент", "No client"), XemsUi.GHOST);
            un.setOnClickListener(new Pick(a, null));
            s.footer.addView(un);
        }
        XemsUi.fitHeight(act, s, 0.85f);
        s.dialog.show();
    }

    static void fill(Context c, LinearLayout list, List<TrainUser> users, Schedule.Appt a, String q) {
        list.removeAllViews();
        String f = Schedule.fold(q).trim();
        int n = 0;
        for (int i = 0; i < users.size() && n < 60; i++) {
            TrainUser u = users.get(i);
            String name = u.name != null ? u.name : "";
            if (f.length() > 0 && !Schedule.fold(name + " " + (u.nickName != null ? u.nickName : "")).contains(f)) {
                continue;
            }
            TextView t = XemsUi.text(c, name + (u.phone != null && u.phone.length() > 0 ? "   " + u.phone : ""), 16,
                    XemsUi.TEXT, a.user != null && a.user.id == u.id);
            t.setPadding(XemsUi.dp(c, 8), XemsUi.dp(c, 12), XemsUi.dp(c, 8), XemsUi.dp(c, 12));
            t.setOnClickListener(new Pick(a, u));
            list.addView(t);
            n++;
        }
    }

    static final class ByName implements Comparator<TrainUser> {
        @Override
        public int compare(TrainUser x, TrainUser y) {
            String a = x.name != null ? x.name : "";
            String b = y.name != null ? y.name : "";
            return a.compareToIgnoreCase(b);
        }
    }

    static final class Filter implements TextWatcher {
        final Context c;
        final LinearLayout list;
        final List<TrainUser> users;
        final Schedule.Appt a;

        Filter(Context c, LinearLayout list, List<TrainUser> users, Schedule.Appt a) {
            this.c = c;
            this.list = list;
            this.users = users;
            this.a = a;
        }

        @Override
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {}

        @Override
        public void onTextChanged(CharSequence s, int start, int before, int count) {}

        @Override
        public void afterTextChanged(Editable s) {
            fill(c, list, users, a, s.toString());
        }
    }

    static final class Pick implements View.OnClickListener {
        final Schedule.Appt a;
        final TrainUser u;

        Pick(Schedule.Appt a, TrainUser u) {
            this.a = a;
            this.u = u;
        }

        @Override
        public void onClick(View v) {
            Schedule.link(v.getContext().getApplicationContext(), a, u);
            try {
                if (picker != null) {
                    picker.dialog.dismiss();
                }
            } catch (Throwable ignored) {
            }
            picker = null;
            NextClient.invalidate();
            refresh();
        }
    }

    // ================================================================ cards

    private static View permissionCard(Context c) {
        LinearLayout card = XemsUi.card(c);
        card.addView(XemsUi.text(c, tr("Достъп до календара", "Calendar access"), 18, XemsUi.TEXT, true));
        TextView t = XemsUi.text(c, tr("Часовете се четат от календара на таблета (например Acuity → Google Calendar). "
                        + "Нищо не се променя в календара.",
                "Appointments are read from the tablet's calendar (e.g. Acuity → Google Calendar). "
                        + "Nothing in the calendar is changed."), 14, XemsUi.MUTED, false);
        t.setPadding(0, XemsUi.dp(c, 6), 0, XemsUi.dp(c, 12));
        t.setLineSpacing(0, 1.2f);
        card.addView(t);
        TextView b = XemsUi.button(c, tr("Разреши", "Allow"), XemsUi.PRIMARY);
        b.setOnClickListener(new PermClick());
        card.addView(b, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        return card;
    }

    static final class PermClick implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            Activity a = activity(v);
            if (a != null && Build.VERSION.SDK_INT >= 23) {
                a.requestPermissions(new String[] {Manifest.permission.READ_CALENDAR}, REQ_CALENDAR);
            }
            H.postDelayed(new Runnable0(), 4000L);
        }
    }

    /** Re-check after the permission question. */
    static final class Runnable0 implements Runnable {
        @Override
        public void run() {
            NextClient.invalidate();
            refresh();
        }
    }

    private static View emptyCard(Context c) {
        LinearLayout card = XemsUi.card(c);
        card.addView(XemsUi.text(c, mode == 0 ? tr("Няма часове днес", "No appointments today")
                : tr("Няма часове тази седмица", "No appointments this week"), 18, XemsUi.TEXT, true));
        TextView t = XemsUi.text(c, tr("За Acuity: Acuity → Integrations → Google Calendar (синхронизация на часовете). "
                        + "На таблета — същият Google акаунт в Настройки → Акаунти, с включена синхронизация на календара.",
                "For Acuity: Acuity → Integrations → Google Calendar (appointment sync). "
                        + "On the tablet — the same Google account in Settings → Accounts, calendar sync on."), 13.5f,
                XemsUi.MUTED, false);
        t.setPadding(0, XemsUi.dp(c, 6), 0, 0);
        t.setLineSpacing(0, 1.2f);
        card.addView(t);
        return card;
    }

    private static boolean settingsOpen;

    static final class SettingsFold implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            settingsOpen = !settingsOpen;
            XemsUi.haptic(v);
            refresh();
        }
    }

    private static View settingsCard(Context c) {
        LinearLayout card = XemsUi.card(c);
        LinearLayout head = XemsUi.horizontal(c);
        LinearLayout ht = XemsUi.vertical(c);
        ht.addView(XemsUi.text(c, tr("Настройки", "Settings"), 16, XemsUi.TEXT, true));
        String code = c.getSharedPreferences("xems_client_sync", Context.MODE_PRIVATE).getString("studio", "");
        TextView hs = XemsUi.text(c, (NextClient.enabled(c)
                ? tr("Следващ клиент: " + NextClient.lead(c) + " мин преди часа", "Next client: " + NextClient.lead(c) + " min before")
                : tr("Следващ клиент: изключено", "Next client: off"))
                + (code.length() > 0 ? tr(" · код на студиото ", " · studio code ") + code : ""), 12.5f, XemsUi.MUTED, false);
        hs.setPadding(0, XemsUi.dp(c, 3), 0, 0);
        ht.addView(hs);
        head.addView(ht, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        head.addView(XemsUi.text(c, settingsOpen ? "⌃" : "⌄", 20, XemsUi.MUTED, true));
        head.setOnClickListener(new SettingsFold());
        card.addView(head);
        if (!settingsOpen) {
            return card;
        }
        card.addView(XemsUi.label(c, tr("Следващ клиент", "Next client")), XemsUi.matchWrap(c, 16));
        card.addView(XemsUi.toggleRow(c, tr("Предлагай следващия клиент", "Offer the next client"),
                tr("Преди часа, когато нищо не тренира — с въпрос; зарежда клиента в свободен костюм с последните или препоръчаните настройки.",
                   "Before the appointment, when nothing is training — asks first; loads the client into a free suit with the last or the recommended settings."),
                NextClient.enabled(c), new ToggleOn(c)));
        TextView l = XemsUi.text(c, tr("Колко минути преди часа", "Minutes before the appointment"), 13, XemsUi.MUTED, false);
        l.setPadding(0, XemsUi.dp(c, 10), 0, XemsUi.dp(c, 8));
        card.addView(l);
        LinearLayout[] holder = new LinearLayout[1];
        card.addView(XemsUi.chipRow(c, holder));
        int cur = NextClient.lead(c);
        int[] opts = {5, 10, 15, 20, 30};
        for (int i = 0; i < opts.length; i++) {
            TextView ch = XemsUi.chip(c, opts[i] + tr(" мин", " min"), opts[i] == cur, XemsUi.GO_TEXT);
            ch.setOnClickListener(new LeadClick(opts[i]));
            XemsUi.addChip(c, holder[0], ch);
        }
        List<Schedule.Cal> cals = Schedule.calendars(c);
        if (cals.size() > 1) {
            TextView k = XemsUi.text(c, tr("Календар", "Calendar"), 13, XemsUi.MUTED, false);
            k.setPadding(0, XemsUi.dp(c, 14), 0, XemsUi.dp(c, 8));
            card.addView(k);
            LinearLayout[] h2 = new LinearLayout[1];
            card.addView(XemsUi.chipRow(c, h2));
            long sel = Schedule.calendarId(c);
            TextView all = XemsUi.chip(c, tr("Всички", "All"), sel < 0, XemsUi.GO_TEXT);
            all.setOnClickListener(new CalClick(-1));
            XemsUi.addChip(c, h2[0], all);
            for (int i = 0; i < cals.size(); i++) {
                TextView ch = XemsUi.chip(c, cals.get(i).name, cals.get(i).id == sel, XemsUi.GO_TEXT);
                ch.setOnClickListener(new CalClick(cals.get(i).id));
                XemsUi.addChip(c, h2[0], ch);
            }
        }
        TextView hint = XemsUi.text(c, tr("Клиентът се разпознава по имейл, телефон или име от часа. Задръж ред, за да смениш клиента.",
                "The client is found by e-mail, phone or name in the appointment. Hold a row to change the client."),
                12.5f, XemsUi.HINT, false);
        hint.setPadding(0, XemsUi.dp(c, 14), 0, 0);
        hint.setGravity(Gravity.START);
        card.addView(hint);
        card.addView(XemsUi.label(c, tr("Приложение за клиентите", "Client app")), XemsUi.matchWrap(c, 22));
        LinearLayout row = XemsUi.horizontal(c);
        LinearLayout texts = XemsUi.vertical(c);
        texts.addView(XemsUi.text(c, code.length() > 0 ? tr("Код на студиото: ", "Studio code: ") + code
                : tr("Кодът на студиото идва от сървъра за лиценза (до 24 ч).", "The studio code comes from the license server (within 24 h)."),
                15, XemsUi.TEXT, code.length() > 0));
        Object st = sync("status", c);
        TextView s2 = XemsUi.text(c, tr("Профили от клиентите: ", "Client profiles: ") + (st != null ? st : ""), 12.5f,
                XemsUi.MUTED, false);
        s2.setPadding(0, XemsUi.dp(c, 4), 0, 0);
        texts.addView(s2);
        row.addView(texts, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        TextView now = XemsUi.button(c, tr("Синхронизирай", "Sync now"), XemsUi.SECONDARY);
        now.setOnClickListener(new SyncClick());
        row.addView(now);
        card.addView(row);
        TextView how = XemsUi.text(c, tr("Клиентите попълват профила си в приложението за записване (кодът на студиото е вграден в него). "
                        + "Новите клиенти и промените идват тук сами; данните, които ти си променил по-късно, не се презаписват.",
                "Clients fill in their profile in the booking app (it carries the studio code). New clients and changes "
                        + "arrive here by themselves; what you changed later is not overwritten."), 12.5f, XemsUi.HINT, false);
        how.setPadding(0, XemsUi.dp(c, 8), 0, 0);
        card.addView(how);
        return card;
    }

    /** widget/XemsClientSync (compiled after this package): "poke", "now" or "status". */
    static Object sync(String m, Context c) {
        try {
            Class<?> k = Class.forName("com.isaigu.gymapp.widget.XemsClientSync");
            return c == null ? k.getMethod(m).invoke(null) : k.getMethod(m, Context.class).invoke(null, c);
        } catch (Throwable t) {
            return null;
        }
    }

    static final class SyncClick implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            sync("now", null);
            H.postDelayed(new Runnable0(), 6000L);
        }
    }

    // ================================================================ new appointment (the tablet's calendar)

    static final class AddClick implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            Activity a = activity(v);
            if (a == null) {
                return;
            }
            if (!Schedule.canRead(a) || !Schedule.canWrite(a)) {
                if (Build.VERSION.SDK_INT >= 23) {
                    a.requestPermissions(new String[] {Manifest.permission.READ_CALENDAR,
                            Manifest.permission.WRITE_CALENDAR}, REQ_CALENDAR);
                }
                H.postDelayed(new Runnable0(), 4000L);
                return;
            }
            new NewAppt(a).open();
        }
    }

    /** Client, day, time, length → an event in the tablet's calendar. */
    static final class NewAppt {
        final Activity a;
        XemsUi.Shell s;
        TrainUser user;
        int day;
        int hour;
        int minute;
        int dur = 30;
        String query = "";
        LinearLayout form;
        List<TrainUser> users;

        NewAppt(Activity a) {
            this.a = a;
            Calendar k = Calendar.getInstance();
            int m = k.get(Calendar.HOUR_OF_DAY) * 60 + k.get(Calendar.MINUTE) + 30;
            m = (m + 14) / 15 * 15;
            if (m >= 22 * 60) {
                day = 1;
                m = 9 * 60;
            }
            hour = Math.max(6, m / 60);
            minute = m % 60;
        }

        void open() {
            users = Schedule.users();
            Collections.sort(users, new ByName());
            s = XemsUi.shell(a, tr("Нов час", "New booking"), tr("В календара на таблета", "In the tablet's calendar"), 620);
            EditText q = new EditText(a);
            q.setHint(tr("Търси клиент", "Search client"));
            q.setSingleLine(true);
            q.setTextColor(XemsUi.TEXT);
            q.setHintTextColor(XemsUi.HINT);
            q.addTextChangedListener(new NaFilter(this));
            s.body.addView(q, XemsUi.matchWrap(a, 0));
            form = XemsUi.vertical(a);
            s.body.addView(form, XemsUi.matchWrap(a, 6));
            TextView save = XemsUi.button(a, tr("Запиши часа", "Save booking"), XemsUi.PRIMARY);
            save.setOnClickListener(new NaSave(this));
            s.footer.addView(XemsUi.spacer(a));
            s.footer.addView(save);
            render();
            XemsUi.fitHeight(a, s, 0.92f);
            s.dialog.show();
        }

        void render() {
            form.removeAllViews();
            Context c = a;
            if (user != null) {
                TextView who = XemsUi.text(c, "✓ " + user.name, 17, XemsUi.GO_TEXT, true);
                who.setPadding(0, XemsUi.dp(c, 8), 0, XemsUi.dp(c, 4));
                form.addView(who);
            }
            int shown = 0;
            String f = Schedule.fold(query).trim();
            LinearLayout[] hl = new LinearLayout[1];
            form.addView(XemsUi.chipRow(c, hl));
            for (int i = 0; i < users.size() && shown < 30; i++) {
                TrainUser u = users.get(i);
                String n = u.name != null ? u.name : "";
                if (f.length() > 0 && !Schedule.fold(n + " " + (u.nickName != null ? u.nickName : "")).contains(f)) {
                    continue;
                }
                if (f.length() == 0 && shown >= 12) {
                    break;
                }
                TextView ch = XemsUi.chip(c, n, user != null && user.id == u.id, XemsUi.GO_TEXT);
                ch.setOnClickListener(new NaUser(this, u));
                XemsUi.addChip(c, hl[0], ch);
                shown++;
            }
            form.addView(section(c, tr("Ден", "Day")));
            LinearLayout[] dl = new LinearLayout[1];
            form.addView(XemsUi.chipRow(c, dl));
            Calendar k = Calendar.getInstance();
            for (int d = 0; d < 14; d++) {
                String label = d == 0 ? tr("Днес", "Today") : d == 1 ? tr("Утре", "Tomorrow")
                        : NextClient.day(k.getTimeInMillis());
                TextView ch = XemsUi.chip(c, label, d == day, XemsUi.GO_TEXT);
                ch.setOnClickListener(new NaPick(this, 0, d));
                XemsUi.addChip(c, dl[0], ch);
                k.add(Calendar.DAY_OF_YEAR, 1);
            }
            form.addView(section(c, tr("Час", "Time")));
            LinearLayout[] tl = new LinearLayout[1];
            form.addView(XemsUi.chipRow(c, tl));
            for (int h = 6; h <= 22; h++) {
                TextView ch = XemsUi.chip(c, String.valueOf(h), h == hour, XemsUi.GO_TEXT);
                ch.setOnClickListener(new NaPick(this, 1, h));
                XemsUi.addChip(c, tl[0], ch);
            }
            LinearLayout[] ml = new LinearLayout[1];
            form.addView(XemsUi.chipRow(c, ml), XemsUi.matchWrap(c, 8));
            for (int m = 0; m < 60; m += 15) {
                TextView ch = XemsUi.chip(c, ":" + (m < 10 ? "0" : "") + m, m == minute, XemsUi.GO_TEXT);
                ch.setOnClickListener(new NaPick(this, 2, m));
                XemsUi.addChip(c, ml[0], ch);
            }
            form.addView(section(c, tr("Продължителност", "Length")));
            LinearLayout[] ul = new LinearLayout[1];
            form.addView(XemsUi.chipRow(c, ul));
            int[] opts = {20, 30, 45, 60};
            for (int i = 0; i < opts.length; i++) {
                TextView ch = XemsUi.chip(c, opts[i] + tr(" мин", " min"), opts[i] == dur, XemsUi.GO_TEXT);
                ch.setOnClickListener(new NaPick(this, 3, opts[i]));
                XemsUi.addChip(c, ul[0], ch);
            }
        }

        static TextView section(Context c, String t) {
            TextView v = XemsUi.text(c, t, 13, XemsUi.MUTED, false);
            v.setPadding(0, XemsUi.dp(c, 14), 0, XemsUi.dp(c, 8));
            return v;
        }

        long begin() {
            Calendar k = Calendar.getInstance();
            k.add(Calendar.DAY_OF_YEAR, day);
            k.set(Calendar.HOUR_OF_DAY, hour);
            k.set(Calendar.MINUTE, minute);
            k.set(Calendar.SECOND, 0);
            k.set(Calendar.MILLISECOND, 0);
            return k.getTimeInMillis();
        }

        void save() {
            if (user == null) {
                android.widget.Toast.makeText(a, tr("Избери клиент.", "Pick a client."), android.widget.Toast.LENGTH_SHORT).show();
                return;
            }
            long b = begin();
            long id = Schedule.add(a, user, b, b + dur * MIN);
            if (id < 0) {
                android.widget.Toast.makeText(a, tr("Няма календар за запис на таблета (добави Google акаунт или разреши достъпа).",
                        "No writable calendar on the tablet (add a Google account or allow access)."),
                        android.widget.Toast.LENGTH_LONG).show();
                return;
            }
            try {
                s.dialog.dismiss();
            } catch (Throwable ignored) {
            }
            android.widget.Toast.makeText(a, user.name + " · " + NextClient.day(b) + " " + NextClient.hm(b),
                    android.widget.Toast.LENGTH_LONG).show();
            NextClient.invalidate();
            refresh();
        }
    }

    static final class NaFilter implements TextWatcher {
        final NewAppt n;

        NaFilter(NewAppt n) {
            this.n = n;
        }

        @Override
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {}

        @Override
        public void onTextChanged(CharSequence s, int start, int before, int count) {}

        @Override
        public void afterTextChanged(Editable s) {
            n.query = s.toString();
            n.render();
        }
    }

    static final class NaUser implements View.OnClickListener {
        final NewAppt n;
        final TrainUser u;

        NaUser(NewAppt n, TrainUser u) {
            this.n = n;
            this.u = u;
        }

        @Override
        public void onClick(View v) {
            n.user = u;
            n.render();
        }
    }

    /** kind 0 day, 1 hour, 2 minute, 3 length. */
    static final class NaPick implements View.OnClickListener {
        final NewAppt n;
        final int kind;
        final int value;

        NaPick(NewAppt n, int kind, int value) {
            this.n = n;
            this.kind = kind;
            this.value = value;
        }

        @Override
        public void onClick(View v) {
            if (kind == 0) {
                n.day = value;
            } else if (kind == 1) {
                n.hour = value;
            } else if (kind == 2) {
                n.minute = value;
            } else {
                n.dur = value;
            }
            n.render();
        }
    }

    static final class NaSave implements View.OnClickListener {
        final NewAppt n;

        NaSave(NewAppt n) {
            this.n = n;
        }

        @Override
        public void onClick(View v) {
            n.save();
        }
    }

    static final class ToggleOn implements XemsUi.OnToggle {
        final Context c;

        ToggleOn(Context c) {
            this.c = c.getApplicationContext();
        }

        @Override
        public void onToggle(boolean on) {
            NextClient.setEnabled(c, on);
        }
    }

    static final class LeadClick implements View.OnClickListener {
        final int m;

        LeadClick(int m) {
            this.m = m;
        }

        @Override
        public void onClick(View v) {
            NextClient.setLead(v.getContext().getApplicationContext(), m);
            refresh();
        }
    }

    static final class CalClick implements View.OnClickListener {
        final long id;

        CalClick(long id) {
            this.id = id;
        }

        @Override
        public void onClick(View v) {
            Schedule.setCalendarId(v.getContext().getApplicationContext(), id);
            NextClient.invalidate();
            refresh();
        }
    }
}
