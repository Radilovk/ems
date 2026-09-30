package com.isaigu.gymapp.dialog;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import android.widget.LinearLayout;

import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsLang;
import com.isaigu.gymapp.widget.XemsUi;

/**
 * The program parameters dialog (row ⚙ and ⚙ Master) in the look of the other XEMS menus: a rounded card,
 * the four mode headers as rounded colour tabs, value fields as rounded surfaces with the accent hairline,
 * save = the green primary button, close / reset = secondary. Only looks — no id, listener or value is
 * touched. Called from ProgramFit.attachSwitch (EditUserProgramDataDialog.onStart); safe to call again.
 */
public final class ParamDialogUi {
    private static final String DONE = "xems_param_ui";
    public static final String HEADER = "xems_param_header";
    private static final String MAIN_CARD = "xems_param_main";
    private static final String[] FIELDS = {"worklength", "frequency", "paulseContinue", "paulseStop",
            "inputramp", "outputramp"};

    private ParamDialogUi() {}

    public static void style(ViewGroup card) {
        try {
            if (card == null || DONE.equals(card.getTag())) {
                return;
            }
            card.setTag(DONE);
            Context c = card.getContext();
            XemsUi.init(c);
            card.setBackgroundDrawable(XemsUi.rounded(XemsUi.CARD, XemsUi.dp(c, 20), XemsUi.STROKE, XemsUi.dp(c, 1)));
            int pad = XemsUi.dp(c, 8);
            card.setPadding(pad, pad, pad, XemsUi.dp(c, 12));
            View root = card.getRootView();
            for (int i = 0; i < FIELDS.length; i++) {
                field(c, find(root, FIELDS[i]));
            }
            walk(c, card);
            button(c, find(root, "save"), XemsUi.PRIMARY);
            for (int k = 1; k <= 3; k++) {
                View r = find(root, "reset" + k);
                button(c, r, XemsUi.SECONDARY);
                if (r instanceof TextView) {
                    ((TextView) r).setSingleLine(true);
                    ViewGroup.LayoutParams lp = r.getLayoutParams();
                    lp.width = ViewGroup.LayoutParams.WRAP_CONTENT;
                    r.setLayoutParams(lp);
                    ((TextView) r).setMinWidth(XemsUi.dp(c, 130));
                }
            }
            layout(c, card, find(root, "close"));
        } catch (Throwable t) {
            XemsGuard.report("ParamDialogUi.style", t);
        }
    }

    private static final String TABS = "xems_param_tabs";
    /** Tab colours: Основен green, Мускули red, Кардио orange, Масаж blue (the vendor's mode colours). */
    private static final int[] TAB_COLORS = {0xFF2E9E5B, 0xFFD32F2F, 0xFFF57C00, 0xFF1976D2};

    /**
     * The card, top to bottom: header (client photo + name, title, ✕ — the stock close button moved in),
     * the personalisation switch (ProgramFit), a row of mode tabs — Основен · Мускули · Кардио · Масаж —
     * and below it the settings of the chosen mode only, full width. The stock photo column (a large empty
     * area on the left) is gone: the photo sits small in the header.
     */
    private static void layout(Context c, ViewGroup card, View close) {
        View root = card.getRootView();
        // 1 · Основен: its block (title … old divider) → one card; the old titles go, the tab names it
        int first = -1;
        int divider = -1;
        for (int i = 0; i < card.getChildCount(); i++) {
            View v = card.getChildAt(i);
            if (first < 0 && v instanceof TextView && v.getTag() == null) {
                first = i;
            } else if (first >= 0 && v.getClass() == View.class) {
                divider = i;
                break;
            }
        }
        LinearLayout main = null;
        if (first >= 0 && divider > first) {
            main = XemsUi.vertical(c);
            main.setTag(MAIN_CARD);
            main.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(c, 16), XemsUi.STROKE, XemsUi.dp(c, 1)));
            int pad = XemsUi.dp(c, 14);
            main.setPadding(pad, pad, pad, pad);
            java.util.List<View> moved = new java.util.ArrayList<View>();
            for (int i = first; i < divider; i++) {
                moved.add(card.getChildAt(i));
            }
            for (int i = 0; i < moved.size(); i++) {
                card.removeView(moved.get(i));
                main.addView(moved.get(i));
            }
            moved.get(0).setVisibility(View.GONE);            // "По подразбиране": the tab says Основен
            card.addView(main, first, margins(c, 12, 10, 12, 6));
            for (int i = first + 1; i < Math.min(card.getChildCount(), first + 3); i++) {
                View v = card.getChildAt(i);
                if (v.getClass() == View.class || v instanceof TextView) {
                    v.setVisibility(View.GONE);                 // the divider and "Редакция"
                }
            }
            tidyMain(c, main);
        }
        // 2 · the three modes: their columns, the row that holds them
        View[] cols = new View[4];
        cols[0] = main;
        ViewGroup modesRow = null;
        for (int k = 1; k <= 3; k++) {
            View v = find(root, "frequencyview" + k);
            for (int up = 0; up < 3 && v != null && v.getParent() instanceof View; up++) {
                v = (View) v.getParent();
            }
            if (v instanceof LinearLayout) {
                cols[k] = v;
                v.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(c, 16), XemsUi.STROKE, XemsUi.dp(c, 1)));
                v.setPadding(XemsUi.dp(c, 14), XemsUi.dp(c, 8), XemsUi.dp(c, 14), XemsUi.dp(c, 14));
                if (((LinearLayout) v).getChildCount() > 0) {
                    ((LinearLayout) v).getChildAt(0).setVisibility(View.GONE);   // the coloured title: the tab
                }
                if (v.getLayoutParams() instanceof LinearLayout.LayoutParams) {
                    LinearLayout.LayoutParams lp = (LinearLayout.LayoutParams) v.getLayoutParams();
                    lp.leftMargin = XemsUi.dp(c, 12);
                    lp.rightMargin = XemsUi.dp(c, 12);
                    v.setLayoutParams(lp);
                }
                if (v.getParent() instanceof ViewGroup) {
                    modesRow = (ViewGroup) v.getParent();
                }
            }
        }
        // 3 · the tabs, right above the settings
        if (main != null && card.findViewWithTag(TABS) == null) {
            String[] names = {XemsLang.tr("Основен", "Main"), XemsLang.tr("Мускули", "Muscle"),
                    XemsLang.tr("Кардио", "Cardio"), XemsLang.tr("Масаж", "Massage")};
            LinearLayout tabs = XemsUi.horizontal(c);
            tabs.setTag(TABS);
            tabs.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(c, 24), XemsUi.STROKE, XemsUi.dp(c, 1)));
            tabs.setPadding(XemsUi.dp(c, 4), XemsUi.dp(c, 4), XemsUi.dp(c, 4), XemsUi.dp(c, 4));
            TextView[] tv = new TextView[4];
            Tabs state = new Tabs(tv, cols, modesRow);
            for (int i = 0; i < 4; i++) {
                tv[i] = XemsUi.text(c, names[i], 17, XemsUi.TEXT, true);
                tv[i].setGravity(android.view.Gravity.CENTER);
                tv[i].setPadding(0, XemsUi.dp(c, 12), 0, XemsUi.dp(c, 12));
                tv[i].setOnClickListener(new TabClick(state, i));
                tabs.addView(tv[i], new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            }
            card.addView(tabs, card.indexOfChild(main), margins(c, 12, 12, 12, 2));
            int mode = RampSetting.lastMode();
            state.select(mode >= 0 && mode <= 3 ? mode : 0);
        }
        // 4 · header: photo + name (the stock photo column goes), title, ✕
        if (card.findViewWithTag(HEADER) == null) {
            LinearLayout head = XemsUi.horizontal(c);
            head.setTag(HEADER);
            head.setGravity(android.view.Gravity.CENTER_VERTICAL);
            head.setPadding(XemsUi.dp(c, 16), XemsUi.dp(c, 10), XemsUi.dp(c, 10), XemsUi.dp(c, 2));
            View photoCol = find(root, "usericonLayout");
            View group = find(root, "usericonLayout2");
            View icon = find(root, "userIcon");
            View name = find(root, "username");
            boolean single = photoCol != null && photoCol.getVisibility() == View.VISIBLE;
            if (single && icon != null && icon.getParent() instanceof ViewGroup) {
                ((ViewGroup) icon.getParent()).removeView(icon);
                LinearLayout.LayoutParams ip = new LinearLayout.LayoutParams(XemsUi.dp(c, 48), XemsUi.dp(c, 48));
                ip.rightMargin = XemsUi.dp(c, 12);
                head.addView(icon, ip);
            }
            LinearLayout titles = XemsUi.vertical(c);
            titles.addView(XemsUi.text(c, XemsLang.tr("Параметри на програмата", "Program parameters"), 20,
                    XemsUi.TEXT, true));
            if (single && name instanceof TextView && name.getParent() instanceof ViewGroup) {
                ((ViewGroup) name.getParent()).removeView(name);
                TextView n = (TextView) name;
                n.setTextSize(14);
                n.setTypeface(Typeface.DEFAULT);
                n.setTextColor(XemsUi.MUTED);
                n.setGravity(android.view.Gravity.START);
                n.setPadding(0, XemsUi.dp(c, 2), 0, 0);
                titles.addView(n, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                        ViewGroup.LayoutParams.WRAP_CONTENT));
            } else if (group != null && group.getVisibility() == View.VISIBLE) {
                titles.addView(XemsUi.text(c, XemsLang.tr("⚙ Master — за избраните клиенти",
                        "⚙ Master — for the chosen clients"), 14, XemsUi.MUTED, false));
            }
            head.addView(titles, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            if (close instanceof TextView && close.getParent() instanceof ViewGroup) {
                ((ViewGroup) close.getParent()).removeView(close);
                TextView x = (TextView) close;
                x.setText("✕");
                x.setTextSize(20);
                x.setTextColor(XemsUi.TEXT);
                x.setGravity(android.view.Gravity.CENTER);
                x.setPadding(0, 0, 0, 0);
                android.graphics.drawable.GradientDrawable g = new android.graphics.drawable.GradientDrawable();
                g.setShape(android.graphics.drawable.GradientDrawable.OVAL);
                g.setColor(XemsUi.SURFACE);
                g.setStroke(XemsUi.dp(c, 1), XemsUi.STROKE);
                x.setBackgroundDrawable(g);
                x.setContentDescription(XemsLang.tr("Затвори", "Close"));
                head.addView(x, new LinearLayout.LayoutParams(XemsUi.dp(c, 44), XemsUi.dp(c, 44)));
            }
            card.addView(head, 0);
            // the photo column(s) on the left: gone (the Master's group of faces stays, compact, under the header)
            if (photoCol != null) {
                photoCol.setVisibility(View.GONE);
            }
            if (group != null && group.getVisibility() == View.VISIBLE && group.getParent() instanceof ViewGroup) {
                ((ViewGroup) group.getParent()).removeView(group);
                card.addView(group, 1, margins(c, 16, 4, 16, 0));
            }
        }
    }

    private static LinearLayout.LayoutParams margins(Context c, int l, int t, int r, int b) {
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.setMargins(XemsUi.dp(c, l), XemsUi.dp(c, t), XemsUi.dp(c, r), XemsUi.dp(c, b));
        return lp;
    }

    /** Основен's grid: labels not squeezed, units on one line (they broke into "s e c" letters). */
    private static void tidyMain(Context c, ViewGroup g) {
        for (int i = 0; i < g.getChildCount(); i++) {
            View v = g.getChildAt(i);
            if (v instanceof ViewGroup) {
                tidyMain(c, (ViewGroup) v);
            } else if (v instanceof TextView && v.getId() == View.NO_ID) {
                TextView t = (TextView) v;
                t.setSingleLine(true);
                t.setTextColor(XemsUi.TEXT);
                if (t.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams m = (ViewGroup.MarginLayoutParams) t.getLayoutParams();
                    float sp = t.getTextSize() / c.getResources().getDisplayMetrics().scaledDensity;
                    boolean unit = sp < 16.5f;                 // labels are 18 sp, units (min. sec. Hz ms) 15 sp
                    if (unit) {
                        t.setTextColor(XemsUi.MUTED);
                        t.setTextSize(14);
                        m.leftMargin = XemsUi.dp(c, 6);
                        m.rightMargin = XemsUi.dp(c, 16);
                        m.width = ViewGroup.LayoutParams.WRAP_CONTENT;
                    } else {
                        m.rightMargin = XemsUi.dp(c, 12);
                    }
                    t.setLayoutParams(m);
                }
            }
        }
    }

    static final class Tabs {
        final TextView[] tv;
        final View[] cols;
        final ViewGroup modesRow;

        Tabs(TextView[] tv, View[] cols, ViewGroup modesRow) {
            this.tv = tv;
            this.cols = cols;
            this.modesRow = modesRow;
        }

        void select(int k) {
            Context c = tv[0].getContext();
            for (int i = 0; i < tv.length; i++) {
                boolean on = i == k;
                tv[i].setTextColor(on ? 0xFFFFFFFF : XemsUi.MUTED);
                tv[i].setBackgroundDrawable(on ? XemsUi.rounded(TAB_COLORS[i], XemsUi.dp(c, 20), 0, 0) : null);
            }
            if (cols[0] != null) {
                cols[0].setVisibility(k == 0 ? View.VISIBLE : View.GONE);
            }
            if (modesRow != null) {
                modesRow.setVisibility(k == 0 ? View.GONE : View.VISIBLE);
            }
            for (int i = 1; i < cols.length; i++) {
                if (cols[i] != null) {
                    cols[i].setVisibility(i == k ? View.VISIBLE : View.GONE);
                }
            }
        }
    }

    static final class TabClick implements View.OnClickListener {
        private final Tabs tabs;
        private final int k;

        TabClick(Tabs tabs, int k) {
            this.tabs = tabs;
            this.k = k;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            tabs.select(k);
        }
    }

    private static void sectionTitle(Context c, View v) {
        if (!(v instanceof TextView)) {
            return;
        }
        TextView t = (TextView) v;
        t.setTextSize(15);
        t.setTypeface(Typeface.DEFAULT_BOLD);
        t.setTextColor(XemsUi.MUTED);
        t.setAllCaps(true);
        t.setLetterSpacing(0.06f);
        ViewGroup.LayoutParams lp = t.getLayoutParams();
        if (lp instanceof LinearLayout.LayoutParams) {
            ((LinearLayout.LayoutParams) lp).gravity = android.view.Gravity.START;
            ((LinearLayout.LayoutParams) lp).leftMargin = XemsUi.dp(c, 8);
            t.setLayoutParams(lp);
        }
    }

    static View find(View root, String name) {
        Context c = root.getContext();
        int id = c.getResources().getIdentifier(name, "id", c.getPackageName());
        return id != 0 ? root.findViewById(id) : null;
    }

    /** A value you tap to change: rounded surface, accent hairline, bold centred number. */
    private static void field(Context c, View v) {
        if (!(v instanceof TextView)) {
            return;
        }
        TextView t = (TextView) v;
        t.setBackgroundDrawable(XemsUi.ripple(XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(c, 10),
                XemsUi.alpha(XemsUi.GO_TEXT, 0x99), XemsUi.dp(c, 1)), XemsUi.GO_TEXT, XemsUi.dp(c, 10)));
        t.setTextColor(XemsUi.TEXT);
        t.setTypeface(Typeface.DEFAULT_BOLD);
        t.setGravity(Gravity.CENTER);
        t.setPadding(XemsUi.dp(c, 8), 0, XemsUi.dp(c, 8), 0);
        ViewGroup.LayoutParams lp = t.getLayoutParams();
        if (lp != null) {
            lp.width = XemsUi.dp(c, 76);
            lp.height = XemsUi.dp(c, 40);
            t.setLayoutParams(lp);
        }
        XemsUi.pressable(t);
    }

    /** Mode headers (white text on a flat module colour) → rounded tabs in the same colour. */
    private static void walk(Context c, ViewGroup g) {
        for (int i = 0; i < g.getChildCount(); i++) {
            View v = g.getChildAt(i);
            if (v instanceof ViewGroup) {
                walk(c, (ViewGroup) v);
            } else if (v instanceof TextView && !(v instanceof android.widget.Button)) {
                Drawable bg = v.getBackground();
                if (bg instanceof ColorDrawable && ((ColorDrawable) bg).getColor() != 0) {
                    int color = ((ColorDrawable) bg).getColor();
                    TextView t = (TextView) v;
                    t.setBackgroundDrawable(XemsUi.rounded(color, XemsUi.dp(c, 12), 0, 0));
                    t.setTypeface(Typeface.DEFAULT_BOLD);
                    t.setTextColor(0xFFFFFFFF);
                }
            }
        }
    }

    private static void button(Context c, View v, int style) {
        if (!(v instanceof TextView)) {
            return;
        }
        TextView b = (TextView) v;
        TextView model = XemsUi.button(c, b.getText().toString(), style);
        b.setBackgroundDrawable(model.getBackground());
        b.setTextColor(model.getTextColors());
        b.setTypeface(Typeface.DEFAULT_BOLD);
        b.setAllCaps(false);
        b.setMinHeight(XemsUi.dp(c, 44));
        b.setPadding(XemsUi.dp(c, 22), 0, XemsUi.dp(c, 22), 0);
        XemsUi.pressable(b);
    }
}
