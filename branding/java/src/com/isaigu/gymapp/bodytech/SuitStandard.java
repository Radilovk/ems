package com.isaigu.gymapp.bodytech;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.clj.fastble.data.BleDevice;
import com.isaigu.gymapp.bean.DeviceBean;
import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsLang;
import com.isaigu.gymapp.widget.XemsUi;

import java.lang.ref.WeakReference;

/**
 * The suit's channel standard, per suit (owner, 1.1.421 / 1.1.422): XEMS (the stock wiring) or X-Body. The training
 * screen, its sliders and everything stored stay by muscle; only the suit channel a muscle's value goes out on
 * changes. Chosen as the fourth step of the start picker (client | program | suit | standard) and kept for that
 * suit (by MAC). ONLY on an unlocked (admin setup) tablet: a locked tablet never shows the column and always sends
 * XEMS. Hooks (scripts/apply-suit-standard.py): CommandSender.sendCommend start → {@link #toSuit} (cmd 1 = the ten
 * channel strengths, main and second impulse); the pickers' initView end → {@link #picker}, updateSelectedDevice
 * start → {@link #device}.
 */
public final class SuitStandard {
    private static final String TAG = "xems_suit_standard";
    private static final String PREFS = "xems_suit_standard";
    public static final int XEMS = 0;
    public static final int XBODY = 1;

    /** Muscle per PartStrenthBean.buwei index (= the XEMS suit channel of that index). */
    static final String[] BG = {"Гърди", "Корем", "Предно бедро", "Прасец", "Ръце", "Трапец", "Гръб", "Кръст",
            "Глутеус", "Задно бедро"};
    static final String[] EN = {"Chest", "Abs", "Front thigh", "Calf", "Arms", "Traps", "Back", "Lower back",
            "Glutes", "Back thigh"};

    /**
     * X-Body: suit channel i (the one XEMS uses for muscle i) carries muscle XBODY_SRC[i].
     * Arms → abs, chest → calf, abs → back thigh, front thigh = front thigh, back → glutes, traps → lower back,
     * lower back → back, glutes → traps, back thigh → arms, calf → chest.
     */
    static final int[] XBODY_SRC = {3, 9, 2, 0, 1, 7, 8, 6, 5, 4};

    private static Context app;
    private static WeakReference<Col> column;

    private SuitStandard() {}

    /** The admin's setup (not locked). Everything here — and every bodytech feature — exists only then. */
    public static boolean unlocked() {
        try {
            // XemsLocalStore is compiled apart (compile-xems-local): read by reflection, as AutoHistory / ScaleScreen
            Object r = Class.forName("com.isaigu.gymapp.widget.XemsLocalStore").getMethod("isAdminSession")
                    .invoke(null);
            return Boolean.TRUE.equals(r);
        } catch (Throwable t) {
            return false;
        }
    }

    private static SharedPreferences prefs(Context c) {
        if (app == null && c != null) app = c.getApplicationContext() != null ? c.getApplicationContext() : c;
        if (app == null) {
            try {
                Object a = Class.forName("android.app.ActivityThread").getMethod("currentApplication").invoke(null);
                if (a instanceof Context) app = (Context) a;
            } catch (Throwable ignored) {
            }
        }
        return app == null ? null : app.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    static String key(String mac) {
        StringBuilder b = new StringBuilder("std_");
        for (int i = 0; mac != null && i < mac.length(); i++) {
            char ch = Character.toUpperCase(mac.charAt(i));
            if ((ch >= '0' && ch <= '9') || (ch >= 'A' && ch <= 'F')) b.append(ch);
        }
        return b.toString();
    }

    /** The standard this suit runs on; XEMS on a locked tablet, whatever was chosen before the lock. */
    public static int get(String mac) {
        if (mac == null || !unlocked()) return XEMS;
        SharedPreferences p = prefs(null);
        return p != null && p.getInt(key(mac), XEMS) == XBODY ? XBODY : XEMS;
    }

    static void set(Context c, String mac, int v) {
        SharedPreferences p = prefs(c);
        if (p == null || mac == null) return;
        p.edit().putInt(key(mac), v == XBODY ? XBODY : XEMS).apply();
    }

    /** CommandSender.sendCommend start: cmd 1 (pdu[1..10] = the ten muscles by buwei index) → the suit's order. */
    public static void toSuit(BleDevice d, byte cmd, byte[] pdu) {
        try {
            if (cmd != 1 || d == null || pdu == null || pdu.length < 11) return;
            if (get(d.getMac()) != XBODY || BtBridge.isBodytech(d)) return;
            byte[] m = new byte[10];
            System.arraycopy(pdu, 1, m, 0, 10);
            for (int ch = 0; ch < 10; ch++) pdu[1 + ch] = m[XBODY_SRC[ch]];
        } catch (Throwable t) {
            XemsGuard.report("SuitStandard.toSuit", t);
        }
    }

    // ================================================================ the picker's fourth column

    /** initView end of both start pickers: the "Стандарт" column right of the suit column (unlocked only). */
    public static void picker(View root) {
        try {
            column = null;
            if (root == null || !unlocked()) return;
            Context c = root.getContext();
            int id = c.getResources().getIdentifier("devicelistview", "id", c.getPackageName());
            View v = id != 0 ? root.findViewById(id) : null;
            while (v != null && v.getParent() instanceof View) {
                View p = (View) v.getParent();
                if (p instanceof LinearLayout && ((LinearLayout) p).getOrientation() == LinearLayout.HORIZONTAL
                        && ((LinearLayout) p).getChildCount() >= 3) break;
                v = p;
            }
            if (v == null || !(v.getParent() instanceof LinearLayout)) return;
            LinearLayout row = (LinearLayout) v.getParent();
            View old = row.findViewWithTag(TAG);
            if (old != null) row.removeView(old);
            Col col = new Col(c, v);
            row.addView(col.view, row.indexOfChild(v) + 1, col.params(v));
            column = new WeakReference<Col>(col);
        } catch (Throwable t) {
            XemsGuard.report("SuitStandard.picker", t);
        }
    }

    /** updateSelectedDevice start: the column shows the chosen suit's standard. */
    public static void device(DeviceBean bean) {
        try {
            Col col = column != null ? column.get() : null;
            if (col == null) return;
            col.mac = bean != null ? bean.macAddress : null;
            col.render();
        } catch (Throwable t) {
            XemsGuard.report("SuitStandard.device", t);
        }
    }

    static final class Col {
        final Context c;
        final LinearLayout view;
        final TextView[] tiles = new TextView[2];
        final TextView note;
        String mac;

        Col(Context c, View suitColumn) {
            this.c = c;
            XemsUi.init(c);
            view = new LinearLayout(c);
            view.setOrientation(LinearLayout.VERTICAL);
            view.setTag(TAG);
            Drawable bg = suitColumn.getBackground();
            if (bg != null && bg.getConstantState() != null) {
                view.setBackgroundDrawable(bg.getConstantState().newDrawable().mutate());
            } else {
                view.setBackgroundColor(XemsUi.CARD);
            }
            view.addView(header(suitColumn));
            LinearLayout body = new LinearLayout(c);
            body.setOrientation(LinearLayout.VERTICAL);
            int pad = XemsUi.dp(c, 14);
            body.setPadding(pad, pad, pad, pad);
            String[] names = {"XEMS", "X-Body"};
            for (int i = 0; i < 2; i++) {
                TextView t = XemsUi.text(c, names[i], 22, XemsUi.TEXT, true);
                t.setGravity(Gravity.CENTER);
                t.setOnClickListener(new Pick(this, i));
                XemsUi.pressable(t);
                LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                        XemsUi.dp(c, 72));
                lp.bottomMargin = XemsUi.dp(c, 12);
                body.addView(t, lp);
                tiles[i] = t;
            }
            note = XemsUi.text(c, "", 13, XemsUi.MUTED, false);
            body.addView(note);
            view.addView(body);
            render();
        }

        /** The same header bar as the three columns before it (their first child). */
        private View header(View suitColumn) {
            TextView h = XemsUi.text(c, XemsLang.tr("Стандарт", "Standard"), 20, XemsUi.TEXT, false);
            h.setGravity(Gravity.CENTER);
            int height = XemsUi.dp(c, 50);
            if (suitColumn instanceof ViewGroup && ((ViewGroup) suitColumn).getChildCount() > 0
                    && ((ViewGroup) suitColumn).getChildAt(0) instanceof TextView) {
                TextView ref = (TextView) ((ViewGroup) suitColumn).getChildAt(0);
                h.setTextColor(ref.getTextColors());
                h.setTextSize(android.util.TypedValue.COMPLEX_UNIT_PX, ref.getTextSize());
                Drawable b = ref.getBackground();
                if (b != null && b.getConstantState() != null) {
                    h.setBackgroundDrawable(b.getConstantState().newDrawable().mutate());
                }
                if (ref.getLayoutParams() != null && ref.getLayoutParams().height > 0) {
                    height = ref.getLayoutParams().height;
                }
            }
            h.setLayoutParams(new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, height));
            return h;
        }

        LinearLayout.LayoutParams params(View suitColumn) {
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 0.55f);
            int m = XemsUi.dp(c, 10);
            lp.setMargins(0, m, m, m);
            return lp;
        }

        void render() {
            boolean has = mac != null && mac.length() > 0;
            int cur = has ? get(mac) : -1;
            float r = XemsUi.dp(c, 18);
            for (int i = 0; i < 2; i++) {
                boolean sel = i == cur;
                tiles[i].setText((sel ? "✓ " : "") + (i == 0 ? "XEMS" : "X-Body"));
                tiles[i].setTextColor(sel ? XemsUi.ON_ACCENT : XemsUi.TEXT);
                tiles[i].setBackgroundDrawable(XemsUi.ripple(sel ? XemsUi.glow(c, XemsUi.ACCENT, r)
                        : XemsUi.rounded(XemsUi.SURFACE, r, XemsUi.STROKE, XemsUi.dp(c, 1)), XemsUi.TEXT, r));
                tiles[i].setAlpha(has ? 1f : 0.4f);
            }
            if (!has) {
                note.setText(XemsLang.tr("Първо избери костюм — стандартът се пази за него.",
                        "Pick a suit first — the standard is kept for it."));
            } else if (cur == XBODY) {
                boolean bg = XemsLang.isBg();
                StringBuilder sb = new StringBuilder(XemsLang.tr("Канал → мускул:", "Channel → muscle:"));
                int[] order = {4, 0, 1, 2, 6, 5, 7, 8, 9, 3};
                for (int k = 0; k < 10; k++) {
                    int ch = order[k];
                    sb.append('\n').append((bg ? BG : EN)[ch]).append(" → ")
                            .append((bg ? BG : EN)[XBODY_SRC[ch]].toLowerCase());
                }
                note.setText(sb.toString());
            } else {
                note.setText(XemsLang.tr("Стандартните канали.", "The standard channels."));
            }
        }
    }

    static final class Pick implements View.OnClickListener {
        final Col col;
        final int std;

        Pick(Col col, int std) {
            this.col = col;
            this.std = std;
        }

        @Override
        public void onClick(View v) {
            try {
                if (col.mac == null || col.mac.length() == 0 || !unlocked()) return;
                XemsUi.haptic(v);
                set(col.c, col.mac, std);
                col.render();
            } catch (Throwable t) {
                XemsGuard.report("SuitStandard.pick", t);
            }
        }
    }
}
