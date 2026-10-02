package com.isaigu.gymapp.ai;

import android.content.Context;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.widget.XemsUi;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/**
 * The training screen while automatic mode owns the suits (calibration and the run): every train row
 * loses the controls the program decides (Hz, active pause, impulse / pause seconds, row settings,
 * save) and the four mode buttons (main, muscle, cardio, massage) give their place to an "АВТО" sign.
 * What stays: strength (slider, + / −), zones, start / pause / stop, the time. Applied on every
 * automatic-mode tick (the list rebinds rows), undone when the session closes.
 */
public final class AutoLook {
    private static final String[] MODE_IDS = {"mainModeBtn", "strenthExist", "youyangyundong", "anmo"};
    private static final String[] HIDE_IDS = {"hzValue", "pauseMaValue", "pauseHzValue", "paulsecontinue",
            "pulseContinueLabel", "paulsestop", "pulsePauseLabel", "setting", "save"};

    /** Views we changed → their visibility before. */
    private static final Map<View, Integer> SAVED = new WeakHashMap<View, Integer>();
    /** Mode-button column → the sign we put there. */
    private static final Map<ViewGroup, TextView> SIGNS = new WeakHashMap<ViewGroup, TextView>();
    private static int[] modeIds;
    private static int[] hideIds;
    /** The avatar's top-right index button (2nd impulse %): the current's parameters are shown in its place. */
    private static int cornerId;
    private static String paramText = "";
    private static boolean paramLive;
    /** Avatar block → the parameter chip we put there. */
    private static final Map<ViewGroup, TextView> BADGES = new WeakHashMap<ViewGroup, TextView>();
    private static boolean on;
    private static String signLabel = "";

    private AutoLook() {}

    public static boolean isOn() {
        return on;
    }

    /** @param any any view of the training screen; @param program the program name under the sign */
    static void apply(View any, String program) {
        apply(any, AiText.t("АВТО", "AUTO"), program);
    }

    /** @param label the sign's first line (АВТО, AI) */
    static void apply(View any, String label, String program) {
        if (any == null) {
            return;
        }
        try {
            View root = any.getRootView();
            if (modeIds == null) {
                modeIds = ids(root.getContext(), MODE_IDS);
                hideIds = ids(root.getContext(), HIDE_IDS);
                cornerId = root.getContext().getResources().getIdentifier("pauseMaValue", "id",
                        root.getContext().getPackageName());
            }
            on = true;
            signLabel = label;
            walk(root, program != null ? program : "");
        } catch (Throwable t) {
            com.isaigu.gymapp.wearable.WearableBleDiagLog.log("auto", "look: " + t);
        }
    }

    // ---- the main control panel during Auto (owner, 1.1.276): its ▶/❚❚ and ■ drive the automatic session
    private static final java.util.Set<View> MAIN_KEYS = java.util.Collections.newSetFromMap(new WeakHashMap<View, Boolean>());
    private static View mainStart;

    /**
     * The training screen's own start/pause and stop keys take over Auto's controls while it runs (the board
     * has none): a touch listener consumes them, so the vendor's handler never runs; the start key's icon follows
     * Auto (▶ when it waits, ❚❚ while the impulses run). Undone by {@link #unbindMainKeys}.
     */
    static void bindMainKeys(View any, boolean running) {
        if (any == null) {
            return;
        }
        try {
            View root = any.getRootView();
            Context c = root.getContext();
            int startId = c.getResources().getIdentifier("allStartPause", "id", c.getPackageName());
            int stopId = c.getResources().getIdentifier("allStop", "id", c.getPackageName());
            View st = startId != 0 ? root.findViewById(startId) : null;
            View sp = stopId != 0 ? root.findViewById(stopId) : null;
            if (st != null && !MAIN_KEYS.contains(st)) {
                st.setOnTouchListener(new MainKey(true));
                MAIN_KEYS.add(st);
            }
            if (sp != null && !MAIN_KEYS.contains(sp)) {
                sp.setOnTouchListener(new MainKey(false));
                MAIN_KEYS.add(sp);
            }
            if (st != null) {
                mainStart = st;
                icon(st, running);
            }
        } catch (Throwable t) {
            com.isaigu.gymapp.wearable.WearableBleDiagLog.log("auto", "main keys: " + t);
        }
    }

    /** The vendor's icons: mipmap/start (▶) and mipmap/stop2 (❚❚). */
    private static void icon(View st, boolean running) {
        Context c = st.getContext();
        int res = c.getResources().getIdentifier(running ? "stop2" : "start", "mipmap", c.getPackageName());
        Integer was = (Integer) st.getTag(TAG_ICON);
        if (res != 0 && (was == null || was != res)) {
            st.setBackgroundResource(res);
            st.setTag(TAG_ICON, res);
        }
    }

    private static final int TAG_ICON = 0x7f7a0001;

    static void unbindMainKeys(boolean deviceRunning) {
        for (View v : new ArrayList<View>(MAIN_KEYS)) {
            if (v != null) {
                v.setOnTouchListener(null);
                v.setAlpha(1f);
            }
        }
        MAIN_KEYS.clear();
        if (mainStart != null) {
            try {
                mainStart.setTag(TAG_ICON, null);
                icon(mainStart, deviceRunning);
            } catch (Throwable ignored) {
            }
        }
        mainStart = null;
    }

    static final class MainKey implements View.OnTouchListener {
        private final boolean start;

        MainKey(boolean start) {
            this.start = start;
        }

        @Override
        public boolean onTouch(View v, android.view.MotionEvent e) {
            int a = e.getActionMasked();
            if (a == android.view.MotionEvent.ACTION_DOWN) {
                v.setAlpha(0.6f);
            } else if (a == android.view.MotionEvent.ACTION_UP || a == android.view.MotionEvent.ACTION_CANCEL) {
                v.setAlpha(1f);
                boolean inside = e.getX() >= 0 && e.getY() >= 0 && e.getX() <= v.getWidth() && e.getY() <= v.getHeight();
                if (a == android.view.MotionEvent.ACTION_UP && inside) {
                    try {
                        if (start) {
                            AutoSession.mainStartPause();
                        } else {
                            AutoSession.mainStop();
                        }
                    } catch (Throwable t) {
                        com.isaigu.gymapp.widget.XemsGuard.report("AutoLook.mainKey", t);
                    }
                }
            }
            return true;
        }
    }

    static void restore() {
        if (!on) {
            return;
        }
        on = false;
        try {
            for (Map.Entry<View, Integer> e : SAVED.entrySet()) {
                View v = e.getKey();
                if (v == null) {
                    continue;
                }
                Float alpha = VEILED.get(v);
                if (alpha != null) {
                    v.setAlpha(alpha);
                    v.setOnTouchListener(null);
                } else {
                    v.setVisibility(e.getValue());
                }
            }
            List<ViewGroup> bs = new ArrayList<ViewGroup>(BADGES.keySet());
            for (int i = 0; i < bs.size(); i++) {
                TextView b = BADGES.get(bs.get(i));
                if (bs.get(i) != null && b != null) {
                    bs.get(i).removeView(b);
                }
            }
            List<ViewGroup> cols = new ArrayList<ViewGroup>(SIGNS.keySet());
            for (int i = 0; i < cols.size(); i++) {
                ViewGroup col = cols.get(i);
                TextView sign = SIGNS.get(col);
                if (col != null && sign != null) {
                    col.removeView(sign);
                }
            }
        } catch (Throwable t) {
            com.isaigu.gymapp.wearable.WearableBleDiagLog.log("auto", "look restore: " + t);
        }
        SAVED.clear();
        VEILED.clear();
        SIGNS.clear();
        BADGES.clear();
        paramText = "";
    }

    private static int[] ids(Context c, String[] names) {
        int[] out = new int[names.length];
        for (int i = 0; i < names.length; i++) {
            out[i] = c.getResources().getIdentifier(names[i], "id", c.getPackageName());
        }
        return out;
    }

    private static boolean in(int id, int[] set) {
        if (id == View.NO_ID || id == 0) {
            return false;
        }
        for (int i = 0; i < set.length; i++) {
            if (set[i] == id) {
                return true;
            }
        }
        return false;
    }

    /** Finds the mode buttons (only the train rows have them) and treats each row they sit in. */
    private static void walk(View v, String program) {
        if (!(v instanceof ViewGroup)) {
            return;
        }
        ViewGroup g = (ViewGroup) v;
        boolean column = false;
        for (int i = 0; i < g.getChildCount(); i++) {
            View b = g.getChildAt(i);
            if (in(b.getId(), modeIds)) {
                hide(b, View.GONE);
                column = true;
            }
        }
        if (column) {
            if (g instanceof LinearLayout) {
                sign((LinearLayout) g, program);
            }
            View row = rowOf(g);
            if (row != null) {
                hideIn(row);
            }
            return;
        }
        for (int i = 0; i < g.getChildCount(); i++) {
            walk(g.getChildAt(i), program);
        }
    }

    /** The list item that holds this view (its parent is the RecyclerView / ListView), or null. */
    private static View rowOf(View v) {
        View cur = v;
        for (int depth = 0; depth < 8 && cur != null; depth++) {
            Object parent = cur.getParent();
            if (!(parent instanceof ViewGroup)) {
                return null;
            }
            if (parent instanceof android.widget.AbsListView
                    || parent.getClass().getName().indexOf("RecyclerView") >= 0) {
                return cur;
            }
            cur = (View) parent;
        }
        return null;
    }

    /** What the chip at the avatar says (empty = no chip); live = the impulses run now (else it is dimmed). */
    static void params(String text, boolean live) {
        paramText = text != null ? text : "";
        paramLive = live;
    }

    private static void hideIn(View v) {
        if (in(v.getId(), hideIds)) {
            veil(v);
            if (v.getId() == cornerId && cornerId != 0) {
                badge(v);
            }
            return;
        }
        if (v instanceof ViewGroup) {
            ViewGroup g = (ViewGroup) v;
            for (int i = 0; i < g.getChildCount(); i++) {
                hideIn(g.getChildAt(i));
            }
        }
    }

    /**
     * The row controls the program decides (Hz, 2nd impulse, impulse / pause seconds…) are veiled, not hidden:
     * the row's own refresh sets them VISIBLE on every parameter change, and a GONE / INVISIBLE toggled back on
     * each tick made the index buttons around the avatar blink. Transparent + no touch survives the refresh.
     */
    private static void veil(View v) {
        if (!SAVED.containsKey(v)) {
            SAVED.put(v, v.getVisibility());
            VEILED.put(v, v.getAlpha());
        }
        if (v.getAlpha() != 0f) {
            v.setAlpha(0f);
        }
        v.setOnTouchListener(BLOCK);
    }

    static final class Block implements View.OnTouchListener {
        @Override
        public boolean onTouch(View v, android.view.MotionEvent e) {
            return true;
        }
    }

    private static final Block BLOCK = new Block();
    /** Veiled views → their alpha before. */
    private static final Map<View, Float> VEILED = new WeakHashMap<View, Float>();

    private static void hide(View v, int visibility) {
        if (!SAVED.containsKey(v)) {
            SAVED.put(v, v.getVisibility());
        }
        if (v.getVisibility() != visibility) {
            v.setVisibility(visibility);
        }
    }

    /**
     * The current's parameters at the avatar's top-right corner (owner, 1.1.287), in place of the veiled 2nd-impulse
     * button: Hz · µs, impulse / pause s, the 2nd impulse. Read-only — Auto sets them.
     */
    private static void badge(View anchor) {
        if (!(anchor.getParent() instanceof android.widget.RelativeLayout)) {
            return;
        }
        android.widget.RelativeLayout p = (android.widget.RelativeLayout) anchor.getParent();
        TextView t = BADGES.get(p);
        if (t == null || t.getParent() != p) {
            Context c = p.getContext();
            t = XemsUi.text(c, "", 11, XemsUi.TEXT, true);
            t.setGravity(Gravity.END);
            t.setMaxLines(3);
            t.setIncludeFontPadding(false);
            t.setLineSpacing(XemsUi.dp(c, 2), 1f);
            int ph = XemsUi.dp(c, 7);
            int pv = XemsUi.dp(c, 4);
            t.setPadding(ph, pv, ph, pv);
            t.setBackgroundDrawable(XemsUi.rounded(XemsUi.alpha(XemsUi.CARD, 0xE6), XemsUi.dp(c, 8),
                    XemsUi.alpha(XemsUi.GO, 0x88), XemsUi.dp(c, 1)));
            android.widget.RelativeLayout.LayoutParams lp = new android.widget.RelativeLayout.LayoutParams(
                    ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            if (anchor.getId() != View.NO_ID) {
                lp.addRule(android.widget.RelativeLayout.ALIGN_TOP, anchor.getId());
                lp.addRule(android.widget.RelativeLayout.ALIGN_RIGHT, anchor.getId());
            } else {
                lp.addRule(android.widget.RelativeLayout.ALIGN_PARENT_TOP);
                lp.addRule(android.widget.RelativeLayout.ALIGN_PARENT_RIGHT);
            }
            p.addView(t, lp);
            BADGES.put(p, t);
        }
        if (!paramText.contentEquals(t.getText())) {
            t.setText(paramText);
        }
        int vis = paramText.length() > 0 ? View.VISIBLE : View.GONE;
        if (t.getVisibility() != vis) {
            t.setVisibility(vis);
        }
        float a = paramLive ? 1f : 0.6f;
        if (t.getAlpha() != a) {
            t.setAlpha(a);
        }
    }

    private static void sign(LinearLayout col, String program) {
        TextView t = SIGNS.get(col);
        String text = signLabel + (program.length() > 0 ? "\n" + program : "");
        if (t == null) {
            Context c = col.getContext();
            t = XemsUi.text(c, text, 13, XemsUi.GO_TEXT, true);
            t.setGravity(Gravity.CENTER);
            t.setMaxLines(4);
            int p = XemsUi.dp(c, 8);
            t.setPadding(p, p, p, p);
            t.setBackgroundDrawable(XemsUi.rounded(XemsUi.alpha(XemsUi.GO, 0x26), XemsUi.dp(c, 10),
                    XemsUi.alpha(XemsUi.GO, 0x99), XemsUi.dp(c, 1)));
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            int m = XemsUi.dp(c, 4);
            lp.setMargins(m, m, m, m);
            col.addView(t, lp);
            SIGNS.put(col, t);
        } else if (!text.contentEquals(t.getText())) {
            t.setText(text);
        }
        // A rebound row may have lost the sign: keep it attached.
        if (t.getParent() == null) {
            col.addView(t);
        }
    }
}
