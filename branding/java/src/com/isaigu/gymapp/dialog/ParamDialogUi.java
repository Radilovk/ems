package com.isaigu.gymapp.dialog;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsUi;

/**
 * The program parameters dialog (row ⚙ and ⚙ Master) in the look of the other XEMS menus: a rounded card,
 * the four mode headers as rounded colour tabs, value fields as rounded surfaces with the accent hairline,
 * save = the green primary button, close / reset = secondary. Only looks — no id, listener or value is
 * touched. Called from ProgramFit.attachSwitch (EditUserProgramDataDialog.onStart); safe to call again.
 */
public final class ParamDialogUi {
    private static final String DONE = "xems_param_ui";
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
            button(c, find(root, "close"), XemsUi.SECONDARY);
            for (int k = 1; k <= 3; k++) {
                button(c, find(root, "reset" + k), XemsUi.SECONDARY);
            }
        } catch (Throwable t) {
            XemsGuard.report("ParamDialogUi.style", t);
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
