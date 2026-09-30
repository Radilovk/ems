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
    private static final String[] FIELDS = {"worklength", "frequency", "paulseContinue", "paulseStop"};

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

    /**
     * Order in the card: a header (title + the stock ✕ moved in, so it never covers a control), the switch
     * (ProgramFit), Основен in its own rounded card, then the three modes as cards side by side.
     */
    private static void layout(Context c, ViewGroup card, View close) {
        // 1 · the main (Основен) block: from its title to the old divider line → one surface card
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
        if (first >= 0 && divider > first) {
            LinearLayout main = XemsUi.vertical(c);
            main.setTag(MAIN_CARD);
            main.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(c, 16), XemsUi.STROKE, XemsUi.dp(c, 1)));
            int pad = XemsUi.dp(c, 10);
            main.setPadding(pad, pad, pad, pad);
            java.util.List<View> moved = new java.util.ArrayList<View>();
            for (int i = first; i < divider; i++) {
                moved.add(card.getChildAt(i));
            }
            for (int i = 0; i < moved.size(); i++) {
                card.removeView(moved.get(i));
                main.addView(moved.get(i));
            }
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT);
            lp.setMargins(XemsUi.dp(c, 12), XemsUi.dp(c, 6), XemsUi.dp(c, 12), XemsUi.dp(c, 6));
            card.addView(main, first, lp);
            sectionTitle(c, moved.get(0));
            View div = card.getChildAt(first + 1);
            if (div != null && div.getClass() == View.class) {
                div.setVisibility(View.GONE);
            }
            // "Редакция": the title of the three modes
            View modesTitle = card.getChildAt(first + 2);
            if (modesTitle instanceof TextView) {
                sectionTitle(c, modesTitle);
                ((TextView) modesTitle).setText(XemsLang.tr("Режими", "Modes"));
            }
        }
        // 2 · each mode column as its own card
        for (int k = 1; k <= 3; k++) {
            View w = find(card.getRootView(), "frequencyview" + k);
            View colView = w;
            for (int up = 0; up < 3 && colView != null && colView.getParent() instanceof View; up++) {
                colView = (View) colView.getParent();
            }
            if (colView instanceof LinearLayout) {
                colView.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(c, 16), XemsUi.STROKE, XemsUi.dp(c, 1)));
                colView.setPadding(XemsUi.dp(c, 6), XemsUi.dp(c, 6), XemsUi.dp(c, 6), XemsUi.dp(c, 12));
            }
        }
        // 3 · header: title + ✕ (the stock close button, its click stays)
        if (card.findViewWithTag(HEADER) == null) {
            LinearLayout head = XemsUi.horizontal(c);
            head.setTag(HEADER);
            head.setGravity(android.view.Gravity.CENTER_VERTICAL);
            head.setPadding(XemsUi.dp(c, 16), XemsUi.dp(c, 10), XemsUi.dp(c, 10), XemsUi.dp(c, 2));
            head.addView(XemsUi.text(c, XemsLang.tr("Параметри на програмата", "Program parameters"), 20,
                    XemsUi.TEXT, true), new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
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
