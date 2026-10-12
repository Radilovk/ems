package com.isaigu.gymapp.bodytech;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsLang;
import com.isaigu.gymapp.widget.XemsUi;

/**
 * The suit's channel standard, one per tablet (owner, 1.1.421): XEMS (the stock wiring) or X-Body. The training
 * screen, its sliders and everything stored stay by muscle; only the suit channel a muscle's value goes out on
 * changes. Hooks (scripts/apply-suit-standard.py): CommandUtil.getPartsParamsPduWithStrength end →
 * {@link #toSuit(byte[])} (every parts PDU — main, second impulse, music, AI — is built there); Settings card after
 * the Band section. A bodytech suit maps XEMS channels itself, so {@link BtBridge#write} undoes the swap first
 * ({@link #fromSuit(byte[])}).
 */
public final class SuitStandard {
    private static final String TAG = "xems_suit_standard";
    private static final String PREFS = "xems_suit_standard";
    private static final String K_STD = "std";
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

    /** The order the owner lists the channels in (Settings card). */
    private static final int[] LIST_ORDER = {4, 0, 1, 2, 6, 5, 7, 8, 9, 3};

    private static volatile int std = -1;
    private static Context app;

    private SuitStandard() {}

    public static synchronized void load(Context c) {
        if (std >= 0) return;
        if (c == null) c = currentApp();
        if (c == null) return;
        app = c.getApplicationContext() != null ? c.getApplicationContext() : c;
        int v = app.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getInt(K_STD, XEMS);
        std = v == XBODY ? XBODY : XEMS;
    }

    public static int get() {
        if (std < 0) load(null);
        return std == XBODY ? XBODY : XEMS;
    }

    static synchronized void set(Context c, int v) {
        load(c);
        std = v == XBODY ? XBODY : XEMS;
        if (app != null) {
            SharedPreferences.Editor e = app.getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit();
            e.putInt(K_STD, std).apply();
        }
    }

    private static Context currentApp() {
        try {
            Object a = Class.forName("android.app.ActivityThread").getMethod("currentApplication").invoke(null);
            return a instanceof Context ? (Context) a : null;
        } catch (Throwable t) {
            return null;
        }
    }

    /** Parts PDU (pdu[1..10] = the ten muscles by buwei index) → the suit's channel order, in place. */
    public static void toSuit(byte[] pdu) {
        try {
            if (pdu == null || pdu.length < 11 || get() != XBODY) return;
            byte[] m = new byte[10];
            System.arraycopy(pdu, 1, m, 0, 10);
            for (int ch = 0; ch < 10; ch++) pdu[1 + ch] = m[XBODY_SRC[ch]];
        } catch (Throwable t) {
            XemsGuard.report("SuitStandard.toSuit", t);
        }
    }

    /** The inverse of {@link #toSuit(byte[])}: suit channel order → muscles by buwei index, in place. */
    public static void fromSuit(byte[] pdu) {
        try {
            if (pdu == null || pdu.length < 11 || get() != XBODY) return;
            byte[] s = new byte[10];
            System.arraycopy(pdu, 1, s, 0, 10);
            for (int ch = 0; ch < 10; ch++) pdu[1 + XBODY_SRC[ch]] = s[ch];
        } catch (Throwable t) {
            XemsGuard.report("SuitStandard.fromSuit", t);
        }
    }

    // ================================================================ Settings card

    public static void attach(Activity activity, View root) {
        try {
            build(activity, root);
        } catch (Throwable t) {
            XemsGuard.report("SuitStandard.attach", t);
        }
    }

    private static void build(Activity a, View root) {
        if (a == null || !(root instanceof ViewGroup)) return;
        load(a);
        ViewGroup parent = XemsUi.scrollContent(a, root);
        if (parent == null) return;
        View old = parent.findViewWithTag(TAG);
        int at = -1;
        if (old != null && old.getParent() == parent) at = parent.indexOfChild(old);
        if (old != null && old.getParent() instanceof ViewGroup) ((ViewGroup) old.getParent()).removeView(old);
        XemsUi.init(a);

        int cur = get();
        LinearLayout card = XemsUi.card(a);
        card.setTag(TAG);
        card.addView(XemsUi.text(a, XemsLang.tr("Стандарт на костюма", "Suit standard"), 22, XemsUi.TEXT, true));
        TextView hint = XemsUi.text(a, XemsLang.tr(
                "Плъзгачите остават същите — сменя се само каналът, по който всяка мускулна група отива към костюма.",
                "The sliders stay the same — only the suit channel each muscle group goes out on changes."), 14,
                XemsUi.MUTED, false);
        hint.setPadding(0, XemsUi.dp(a, 6), 0, XemsUi.dp(a, 12));
        card.addView(hint);
        card.addView(XemsUi.segmented(a, new String[]{"XEMS", "X-Body"}, cur, new Pick(a, root)),
                new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                        ViewGroup.LayoutParams.WRAP_CONTENT));
        if (cur == XBODY) {
            boolean bg = XemsLang.isBg();
            StringBuilder sb = new StringBuilder(XemsLang.tr("Канал XEMS → мускул X-Body:\n", "XEMS channel → X-Body muscle:\n"));
            for (int ch = 0; ch < 10; ch++) {
                int c = LIST_ORDER[ch];
                if (ch > 0) sb.append(ch == 5 ? "\n" : " · ");
                sb.append(bg ? BG[c] : EN[c]).append(" → ").append((bg ? BG : EN)[XBODY_SRC[c]].toLowerCase());
            }
            TextView map = XemsUi.text(a, sb.toString(), 13, XemsUi.MUTED, false);
            map.setPadding(0, XemsUi.dp(a, 12), 0, 0);
            card.addView(map);
        }
        if (at >= 0) parent.addView(card, at, XemsUi.matchWrap(a, 28));
        else parent.addView(card, XemsUi.matchWrap(a, 28));
    }

    static final class Pick implements XemsUi.OnIndex {
        final Activity a;
        final View root;

        Pick(Activity a, View root) {
            this.a = a;
            this.root = root;
        }

        @Override
        public void onIndex(int index) {
            try {
                if (index == get()) return;
                set(a, index);
                build(a, root);
            } catch (Throwable t) {
                XemsGuard.report("SuitStandard.pick", t);
            }
        }
    }
}
