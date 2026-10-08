package com.isaigu.gymapp.wearable;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.isaigu.gymapp.ai.AiModel;
import com.isaigu.gymapp.ai.AiProfile;
import com.isaigu.gymapp.bean.Gender;
import com.isaigu.gymapp.bean.TrainUser;
import com.isaigu.gymapp.bean.TrainUserProgramDataWrapper;
import com.isaigu.gymapp.mgr.DataMgr;
import com.isaigu.gymapp.train.TrainItemManager;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsUi;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.File;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

/**
 * Order and filters of the client lists — the Потребители tab and the client / program / device picker.
 * <ul>
 *   <li>"⇅" pill next to the search ({@link #bar}): a sheet with one-tap chips — order (А–Я, last training,
 *       most trainings, newest clients), sex, activity (trained in the last 30 days / not for 30+ days / never)
 *       and goal. Applies at once; the pill shows the order and how many filters are on. One setting for both
 *       lists (prefs xems_client_view).</li>
 *   <li>Picker ({@link #pick}): a client already in a training row is not offered again (the vendor only
 *       ignored the tap). When the picker edits a row, that row's own client stays.</li>
 * </ul>
 * Hooks (apply-client-sort.py): start of UserFragment$UserAdapter.updateAdapter → {@link #list}, start of both
 * pickers' UserAdapter.updateData → {@link #pick}; the user search fields → {@link #bar}.
 */
public final class ClientSort {
    static final String PREFS = "xems_client_view";
    static final String BAR_TAG = "xems_client_sort";
    static final long DAY = 24L * 3600L * 1000L;

    static final int SORT_NAME = 0;
    static final int SORT_LAST = 1;
    static final int SORT_MOST = 2;
    static final int SORT_NEW = 3;

    /** picker → {its trainUsers list (identity), the full list before our filters}. */
    private static final Map<Object, Object[]> FULL = new WeakHashMap<Object, Object[]>();
    /** The client of the row the open picker edits (stays offered although it is in a row). */
    private static long keepId = -1L;

    private static long statAt = -1L;
    private static Map<Long, long[]> stat = new HashMap<Long, long[]>();

    private ClientSort() {}

    static String tr(String bg, String en) {
        return WearableUi.tr(bg, en);
    }

    // ------------------------------------------------------------------ hooks

    /** Hook: the Потребители tab's adapter gets its list — ordered and filtered (a new list). */
    public static List list(List in) {
        try {
            if (in == null) {
                return null;
            }
            return view(in, false);
        } catch (Throwable t) {
            XemsGuard.report("ClientSort.list", t);
            return in;
        }
    }

    /**
     * Hook: a picker's UserAdapter gets its list. The picker's own list (positions are used for the
     * preselected client) is ordered and filtered in place; a search result is a new list.
     */
    public static List pick(Object adapter, List in) {
        try {
            if (in == null) {
                return null;
            }
            Object dialog = field(adapter, "this$0");
            keepId = editedUser(dialog);
            Object base = dialog != null ? field(dialog, "trainUsers") : null;
            if (base == in) {
                Object[] f = FULL.get(dialog);
                List<TrainUser> full;
                if (f != null && f[0] == base) {
                    full = cast(f[1]);
                } else {
                    full = new ArrayList<TrainUser>(cast(in));
                    FULL.put(dialog, new Object[] {base, full});
                }
                List<TrainUser> v = view(full, true);
                List<TrainUser> own = cast(in);
                own.clear();
                own.addAll(v);
                return in;
            }
            return view(in, true);
        } catch (Throwable t) {
            XemsGuard.report("ClientSort.pick", t);
            return in;
        }
    }

    /** SearchPad's matches: the same order and filters; in the picker without the clients already in a row. */
    static List<TrainUser> forPad(List<TrainUser> all, boolean picker) {
        try {
            return view(all, picker);
        } catch (Throwable t) {
            return all != null ? new ArrayList<TrainUser>(all) : new ArrayList<TrainUser>();
        }
    }

    // ------------------------------------------------------------------ the view

    static List<TrainUser> view(List in, boolean picker) {
        List<TrainUser> src = cast(in);
        Context c = WearableSyncHelper.resolveActivityForPermissions();
        SharedPreferences p = c != null ? c.getSharedPreferences(PREFS, Context.MODE_PRIVATE) : null;
        int sort = p != null ? p.getInt("sort", SORT_NAME) : SORT_NAME;
        int sex = p != null ? p.getInt("sex", 0) : 0;
        int act = p != null ? p.getInt("act", 0) : 0;
        int goal = p != null ? p.getInt("goal", 0) : 0;
        Set<Long> busy = picker ? busy() : null;
        Map<Long, long[]> st = c != null && (act != 0 || sort == SORT_LAST || sort == SORT_MOST)
                ? stats(c) : new HashMap<Long, long[]>();
        long now = System.currentTimeMillis();
        List<TrainUser> out = new ArrayList<TrainUser>();
        for (int i = 0; i < src.size(); i++) {
            TrainUser u = src.get(i);
            if (u == null) {
                continue;
            }
            if (busy != null && busy.contains(u.id) && u.id != keepId) {
                continue;                               // already in a training row
            }
            if (sex == 1 && u.gender != Gender.Female || sex == 2 && u.gender != Gender.Male) {
                continue;
            }
            if (act != 0) {
                long[] s = st.get(u.id);
                long last = s != null ? s[0] : 0L;
                boolean recent = last > 0 && now - last <= 30 * DAY;
                if (act == 1 && !recent || act == 2 && (last <= 0 || recent) || act == 3 && last > 0) {
                    continue;
                }
            }
            if (goal != 0 && goalIndex(u) != goal) {
                continue;
            }
            out.add(u);
        }
        Collections.sort(out, new Order(sort, st));
        return out;
    }

    /** 1 tone, 2 fat loss, 3 massage, 4 drainage, 5 cellulite (0 = none known). */
    static int goalIndex(TrainUser u) {
        try {
            AiProfile p = AiProfile.of(u);
            if (p == null || p.goal == null) {
                return 0;
            }
            AiModel.Goal g = p.goal;
            return g == AiModel.Goal.FAT ? 2 : g == AiModel.Goal.MASSAGE ? 3 : g == AiModel.Goal.DRAIN ? 4
                    : g == AiModel.Goal.CELLULITE ? 5 : 1;
        } catch (Throwable t) {
            return 0;
        }
    }

    static final class Order implements Comparator<TrainUser> {
        private final int sort;
        private final Map<Long, long[]> st;
        private final Collator col;

        Order(int sort, Map<Long, long[]> st) {
            this.sort = sort;
            this.st = st;
            Collator k = Collator.getInstance(new Locale("bg", "BG"));
            k.setStrength(Collator.PRIMARY);
            this.col = k;
        }

        @Override
        public int compare(TrainUser a, TrainUser b) {
            int r = 0;
            if (sort == SORT_LAST || sort == SORT_MOST) {
                long[] sa = st.get(a.id);
                long[] sb = st.get(b.id);
                int k = sort == SORT_LAST ? 0 : 1;
                long va = sa != null ? sa[k] : 0L;
                long vb = sb != null ? sb[k] : 0L;
                r = va == vb ? 0 : va > vb ? -1 : 1;
            } else if (sort == SORT_NEW) {
                long va = a.createTime != null ? a.createTime.getTime() : a.id;
                long vb = b.createTime != null ? b.createTime.getTime() : b.id;
                r = va == vb ? 0 : va > vb ? -1 : 1;
            }
            if (r == 0) {
                r = col.compare(name(a), name(b));
            }
            return r;
        }
    }

    static String name(TrainUser u) {
        String n = u.name != null && u.name.trim().length() > 0 ? u.name : u.nickName;
        return n != null ? n.trim() : "";
    }

    /** userId → {last training start, number of trainings}, from the session index (re-read when it changed). */
    static synchronized Map<Long, long[]> stats(Context c) {
        try {
            File f = new File(SessionStore.dir(c), "index.json");
            long at = f.isFile() ? f.lastModified() ^ f.length() : 0L;
            if (at == statAt) {
                return stat;
            }
            Map<Long, long[]> m = new HashMap<Long, long[]>();
            JSONArray idx = SessionStore.index(c);
            for (int i = 0; i < idx.length(); i++) {
                JSONObject o = idx.optJSONObject(i);
                if (o == null) {
                    continue;
                }
                long id = o.optLong("userId", -1L);
                long start = o.optLong("start", 0L);
                long[] s = m.get(id);
                if (s == null) {
                    s = new long[2];
                    m.put(id, s);
                }
                s[0] = Math.max(s[0], start);
                s[1]++;
            }
            stat = m;
            statAt = at;
        } catch (Throwable ignored) {
        }
        return stat;
    }

    /** The clients in the training rows now. */
    static Set<Long> busy() {
        Set<Long> s = new HashSet<Long>();
        try {
            DataMgr dm = DataMgr.getInstance();
            List<TrainUserProgramDataWrapper> w = dm != null ? dm.trainingUsers : null;
            for (int i = 0; w != null && i < w.size(); i++) {
                TrainUserProgramDataWrapper x = w.get(i);
                if (x != null && x.trainUser != null) {
                    s.add(x.trainUser.id);
                }
            }
        } catch (Throwable ignored) {
        }
        try {
            TrainItemManager m = WearableSyncHelper.getItemManager();
            List<TrainItem> items = m != null ? m.getItemList() : null;
            for (int i = 0; items != null && i < items.size(); i++) {
                TrainItem it = items.get(i);
                if (it != null && !it.isEmpty() && it.data != null && it.data.trainUser != null) {
                    s.add(it.data.trainUser.id);
                }
            }
        } catch (Throwable ignored) {
        }
        return s;
    }

    /** The picker opened from a row (its "data" argument): that row's client, else -1. */
    private static long editedUser(Object dialog) {
        try {
            if (dialog == null) {
                return -1L;
            }
            Bundle b = (Bundle) dialog.getClass().getMethod("getArguments").invoke(dialog);
            if (b == null) {
                return -1L;
            }
            Object w = b.getSerializable("data");
            if (w instanceof TrainUserProgramDataWrapper && ((TrainUserProgramDataWrapper) w).trainUser != null) {
                return ((TrainUserProgramDataWrapper) w).trainUser.id;
            }
        } catch (Throwable ignored) {
        }
        return -1L;
    }

    private static Object field(Object o, String name) {
        if (o == null) {
            return null;
        }
        for (Class<?> k = o.getClass(); k != null; k = k.getSuperclass()) {
            try {
                java.lang.reflect.Field f = k.getDeclaredField(name);
                f.setAccessible(true);
                return f.get(o);
            } catch (NoSuchFieldException e) {
                // the superclass then
            } catch (Throwable t) {
                return null;
            }
        }
        return null;
    }

    @SuppressWarnings("unchecked")
    private static List<TrainUser> cast(Object l) {
        return (List<TrainUser>) l;
    }

    // ------------------------------------------------------------------ the pill and the sheet

    /** Hook: the Потребители tab's search field — the "⇅" pill next to it. */
    public static void bar(View search) {
        bar(search, null);
    }

    /** Hook: a picker's client search field ({@code owner} = the picker) — the "⇅" pill, once its row is laid out. */
    public static void bar(View search, Object owner) {
        if (search instanceof EditText) {
            search.post(new Place((EditText) search, owner));
        }
    }

    static final class Place implements Runnable {
        private final EditText et;
        private final Object owner;

        Place(EditText et, Object owner) {
            this.et = et;
            this.owner = owner;
        }

        @Override
        public void run() {
            try {
                if (!(et.getParent() instanceof ViewGroup)) {
                    return;
                }
                ViewGroup parent = (ViewGroup) et.getParent();
                if (parent.findViewWithTag(BAR_TAG) != null) {
                    return;
                }
                Context c = et.getContext();
                XemsUi.init(c);
                TextView b = XemsUi.chip(c, "", false, XemsUi.GO_TEXT);
                b.setTag(BAR_TAG);
                b.setSingleLine(true);
                b.setOnClickListener(new Open(et, owner));
                paint(b);
                int h = XemsUi.dp(c, 40);
                if (parent instanceof LinearLayout) {
                    LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, h);
                    lp.leftMargin = XemsUi.dp(c, 10);
                    lp.gravity = Gravity.CENTER_VERTICAL;
                    parent.addView(b, parent.indexOfChild(et) + 1, lp);
                } else if (parent instanceof RelativeLayout) {
                    // right of the field, left of ↻ (QuickStart) when it is there
                    View refresh = parent.findViewWithTag(QuickStart.REFRESH_TAG);
                    int right = XemsUi.dp(c, 16) + (refresh != null ? XemsUi.dp(c, 50) : 0);
                    b.measure(View.MeasureSpec.UNSPECIFIED, View.MeasureSpec.UNSPECIFIED);
                    int w = Math.max(b.getMeasuredWidth(), XemsUi.dp(c, 64)) + XemsUi.dp(c, 24);
                    RelativeLayout.LayoutParams lp = new RelativeLayout.LayoutParams(w, h);
                    lp.addRule(RelativeLayout.ALIGN_PARENT_RIGHT);
                    lp.addRule(RelativeLayout.CENTER_VERTICAL);
                    lp.rightMargin = right;
                    parent.addView(b, lp);
                    if (et.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
                        ViewGroup.MarginLayoutParams m = (ViewGroup.MarginLayoutParams) et.getLayoutParams();
                        m.rightMargin = m.rightMargin + w + XemsUi.dp(c, 10);
                        et.setLayoutParams(m);
                    }
                }
            } catch (Throwable t) {
                XemsGuard.report("ClientSort.bar", t);
            }
        }
    }

    /** "⇅ А–Я", "⇅ Последна · 2": the order, and how many filters are on (green while any is). */
    static void paint(TextView b) {
        Context c = b.getContext();
        SharedPreferences p = c.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
        int n = (p.getInt("sex", 0) != 0 ? 1 : 0) + (p.getInt("act", 0) != 0 ? 1 : 0)
                + (p.getInt("goal", 0) != 0 ? 1 : 0);
        String text = "⇅  " + sortShort(p.getInt("sort", SORT_NAME)) + (n > 0 ? "  · " + n : "");
        boolean on = n > 0;
        TextView fresh = XemsUi.chip(c, text, on, XemsUi.GO_TEXT);
        b.setText(text);
        b.setTextColor(fresh.getCurrentTextColor());
        b.setTypeface(fresh.getTypeface());
        b.setBackgroundDrawable(fresh.getBackground());
        b.setGravity(Gravity.CENTER);
        b.setPadding(XemsUi.dp(c, 14), 0, XemsUi.dp(c, 14), 0);
        b.setContentDescription(tr("Подреди и филтрирай клиентите", "Sort and filter the clients"));
    }

    static String sortShort(int s) {
        switch (s) {
            case SORT_LAST: return tr("Последна", "Last");
            case SORT_MOST: return tr("Най-редовни", "Most");
            case SORT_NEW: return tr("Нови", "Newest");
            default: return tr("А–Я", "A–Z");
        }
    }

    static final class Open implements View.OnClickListener {
        private final EditText et;
        private final Object owner;

        Open(EditText et, Object owner) {
            this.et = et;
            this.owner = owner;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            Activity a = QuickStart.activity(v.getContext());
            if (a != null) {
                sheet(a, et, owner, (TextView) v);
            }
        }
    }

    static void sheet(Activity a, EditText et, Object owner, TextView pill) {
        try {
            XemsUi.Shell s = XemsUi.shell(a, tr("Подреди и филтрирай", "Sort and filter"),
                    tr("Важи и за списъка с клиенти, и за избора преди тренировка",
                            "Applies to the client list and to the picker before a training"), 760);
            Sheet st = new Sheet(a, s, et, owner, pill);
            st.build();
            TextView clear = XemsUi.button(a, tr("Изчисти", "Reset"), XemsUi.GHOST);
            clear.setOnClickListener(new Reset(st));
            s.footer.addView(clear);
            s.footer.addView(XemsUi.spacer(a));
            TextView done = XemsUi.button(a, tr("Готово", "Done"), XemsUi.PRIMARY);
            done.setOnClickListener(new Done(s));
            s.footer.addView(done);
            XemsUi.fitHeight(a, s, 0.92f);
            s.dialog.show();
        } catch (Throwable t) {
            XemsGuard.report("ClientSort.sheet", t);
        }
    }

    /** The sheet's chip groups; a tap saves, re-applies the list behind and repaints the chips. */
    static final class Sheet {
        final Activity a;
        final XemsUi.Shell s;
        final EditText et;
        final Object owner;
        final TextView pill;
        LinearLayout groups;

        Sheet(Activity a, XemsUi.Shell s, EditText et, Object owner, TextView pill) {
            this.a = a;
            this.s = s;
            this.et = et;
            this.owner = owner;
            this.pill = pill;
        }

        SharedPreferences prefs() {
            return a.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
        }

        void build() {
            if (groups == null) {
                groups = XemsUi.vertical(a);
                s.body.addView(groups);
            }
            groups.removeAllViews();
            SharedPreferences p = prefs();
            group(tr("Подреди", "Order"), "sort", p.getInt("sort", SORT_NAME), new String[] {
                    tr("А–Я по име", "A–Z by name"), tr("Последна тренировка", "Last training"),
                    tr("Най-много тренировки", "Most trainings"), tr("Нови клиенти", "Newest clients")});
            group(tr("Пол", "Sex"), "sex", p.getInt("sex", 0), new String[] {
                    tr("Всички", "All"), tr("Жени", "Women"), tr("Мъже", "Men")});
            group(tr("Активност", "Activity"), "act", p.getInt("act", 0), new String[] {
                    tr("Всички", "All"), tr("Идвали до 30 дни", "Came in 30 days"),
                    tr("Не са идвали 30+ дни", "Not seen 30+ days"), tr("Без тренировка", "No training yet")});
            group(tr("Цел", "Goal"), "goal", p.getInt("goal", 0), new String[] {
                    tr("Всички", "All"), ClientRow.goalName(AiModel.Goal.TONE), ClientRow.goalName(AiModel.Goal.FAT),
                    ClientRow.goalName(AiModel.Goal.MASSAGE), ClientRow.goalName(AiModel.Goal.DRAIN),
                    ClientRow.goalName(AiModel.Goal.CELLULITE)});
        }

        private void group(String title, String key, int sel, String[] labels) {
            LinearLayout row = XemsUi.horizontal(a);
            row.setGravity(Gravity.CENTER_VERTICAL);
            TextView t = XemsUi.label(a, title);
            row.addView(t, new LinearLayout.LayoutParams(XemsUi.dp(a, 110), ViewGroup.LayoutParams.WRAP_CONTENT));
            LinearLayout[] holder = new LinearLayout[1];
            View strip = XemsUi.chipRow(a, holder);
            for (int i = 0; i < labels.length; i++) {
                TextView ch = XemsUi.chip(a, labels[i], i == sel, XemsUi.GO_TEXT);
                ch.setOnClickListener(new Pick(this, key, i));
                XemsUi.addChip(a, holder[0], ch);
            }
            row.addView(strip, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            groups.addView(row, XemsUi.matchWrap(a, 12));
        }

        void set(String key, int v) {
            if (key == null) {
                prefs().edit().putInt("sort", SORT_NAME).putInt("sex", 0).putInt("act", 0).putInt("goal", 0).apply();
            } else {
                prefs().edit().putInt(key, v).apply();
            }
            build();
            paint(pill);
            refresh(et, owner);
        }
    }

    static final class Pick implements View.OnClickListener {
        private final Sheet sheet;
        private final String key;
        private final int value;

        Pick(Sheet sheet, String key, int value) {
            this.sheet = sheet;
            this.key = key;
            this.value = value;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            sheet.set(key, value);
        }
    }

    static final class Reset implements View.OnClickListener {
        private final Sheet sheet;

        Reset(Sheet sheet) {
            this.sheet = sheet;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            sheet.set(null, 0);
        }
    }

    static final class Done implements View.OnClickListener {
        private final XemsUi.Shell s;

        Done(XemsUi.Shell s) {
            this.s = s;
        }

        @Override
        public void onClick(View v) {
            try {
                s.dialog.dismiss();
            } catch (Throwable ignored) {
            }
        }
    }

    /** The list behind again: the picker's full list back, then its search runs (→ the hooks above). */
    static void refresh(EditText et, Object owner) {
        try {
            Object[] f = owner != null ? FULL.get(owner) : null;
            if (f != null && f[0] instanceof List && f[0] == field(owner, "trainUsers")) {
                List<TrainUser> own = cast(f[0]);
                own.clear();
                own.addAll(cast(f[1]));
            }
            CharSequence q = et.getText();
            et.setText(q != null ? q.toString() : "");
            et.setSelection(et.getText().length());
        } catch (Throwable t) {
            XemsGuard.report("ClientSort.refresh", t);
        }
    }
}
