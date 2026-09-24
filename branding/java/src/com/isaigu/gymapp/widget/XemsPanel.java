package com.isaigu.gymapp.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.train.TrainItemManager;

import java.util.List;

/**
 * The right control panel, redrawn:
 *   ■ Stop            — square, top
 *   ▶ Start / ❚❚      — tall
 *   +                 — tall
 *   −                 — tall
 *   ⚙ Master          — square, bottom
 * The three tall buttons share all the height between the two squares. Each new button clicks
 * the original (hidden) one, so the training logic is untouched.
 */
public final class XemsPanel {
    private static final int ID_RIGHT_LAYOUT = 0x7f090155;
    private static final int ID_ADD = 0x7f090039;
    private static final int ID_MASTER = 0x7f09003a;
    private static final int ID_START = 0x7f09003b;
    private static final int ID_STOP = 0x7f09003c;
    private static final int ID_MINUS = 0x7f09003d;
    private static final String TAG = "xems_panel";

    private static XemsIcon startIcon;
    private static TextView startLabel;
    private static View startButton;
    private static boolean shownRunning;
    private static LinearLayout sidebarRef;
    private static View panelRootRef;

    public static final int PRESS_START = 0;
    public static final int PRESS_PLUS = 1;
    public static final int PRESS_MINUS = 2;

    /** Press a main-panel button from elsewhere (the band's music screen). */
    public static boolean press(int which) {
        View root = panelRootRef;
        if (root == null) {
            return false;
        }
        int id = which == PRESS_PLUS ? ID_ADD : which == PRESS_MINUS ? ID_MINUS : ID_START;
        View target = root.findViewById(id);
        if (target == null) {
            return false;
        }
        target.performClick();
        if (which == PRESS_START && startButton != null) {
            startButton.postDelayed(new Refresh(), 250);
        }
        return true;
    }

    public static boolean isRunning() {
        return isTrainingRunning();
    }

    private XemsPanel() {}

    public static void attach(View panelRoot) {
        try {
            attachImpl(panelRoot);
        } catch (Throwable t) {
            XemsGuard.report("XemsPanel.attach", t);
        }
    }

    private static void attachImpl(View panelRoot) {
        View side = panelRoot != null ? panelRoot.findViewById(ID_RIGHT_LAYOUT) : null;
        if (!(side instanceof LinearLayout)) {
            return;
        }
        LinearLayout sidebar = (LinearLayout) side;
        sidebarRef = sidebar;
        panelRootRef = panelRoot;
        Context c = sidebar.getContext();
        XemsUi.init(c);
        View old = sidebar.findViewWithTag(TAG);
        if (old != null) {
            sidebar.removeView(old);
        }
        // Originals stay in the tree (hidden) and keep their click handlers.
        for (int i = 0; i < sidebar.getChildCount(); i++) {
            sidebar.getChildAt(i).setVisibility(View.GONE);
        }
        sidebar.setBackgroundColor(XemsUi.BG);
        sidebar.setPadding(XemsUi.dp(c, 6), XemsUi.dp(c, 8), XemsUi.dp(c, 8), XemsUi.dp(c, 8));

        LinearLayout col = XemsUi.vertical(c);
        col.setTag(TAG);
        int gap = XemsUi.dp(c, 8);

        Square stop = new Square(c);
        stop.addView(icon(c, XemsIcon.STOP, XemsUi.ON_ACCENT, null), centered(c, 0.55f));
        style(stop, XemsUi.ACCENT, true);
        stop.setOnClickListener(new Delegate(panelRoot, ID_STOP));
        col.addView(stop, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT));

        FrameLayout start = tall(c);
        startIcon = new XemsIcon(XemsIcon.PLAY, XemsUi.ON_ACCENT);
        start.addView(icon(c, 0, 0, startIcon), centered(c, 0.5f));
        startLabel = XemsUi.text(c, "", 12, XemsUi.ON_ACCENT, true);
        FrameLayout.LayoutParams ll = new FrameLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.BOTTOM | Gravity.CENTER_HORIZONTAL);
        ll.bottomMargin = XemsUi.dp(c, 12);
        start.addView(startLabel, ll);
        start.setOnClickListener(new StartClick(panelRoot));
        startButton = start;
        col.addView(start, weighted(gap));

        FrameLayout plus = tall(c);
        plus.addView(icon(c, XemsIcon.PLUS, XemsUi.TEXT, null), centered(c, 0.5f));
        style(plus, XemsUi.SURFACE, false);
        plus.setOnClickListener(new Delegate(panelRoot, ID_ADD));
        col.addView(plus, weighted(gap));

        FrameLayout minus = tall(c);
        minus.addView(icon(c, XemsIcon.MINUS, XemsUi.TEXT, null), centered(c, 0.5f));
        style(minus, XemsUi.SURFACE, false);
        minus.setOnClickListener(new Delegate(panelRoot, ID_MINUS));
        col.addView(minus, weighted(gap));

        Square master = new Square(c);
        master.addView(icon(c, XemsIcon.SLIDERS, XemsUi.TEXT, null), centered(c, 0.42f));
        View orig = panelRoot.findViewById(ID_MASTER);
        if (orig instanceof TextView && ((TextView) orig).getText() != null) {
            TextView ml = XemsUi.text(c, ((TextView) orig).getText().toString(), 11, XemsUi.MUTED, true);
            FrameLayout.LayoutParams mlp = new FrameLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.BOTTOM | Gravity.CENTER_HORIZONTAL);
            mlp.bottomMargin = XemsUi.dp(c, 6);
            master.addView(ml, mlp);
        }
        style(master, XemsUi.SURFACE, false);
        master.setOnClickListener(new Delegate(panelRoot, ID_MASTER));
        LinearLayout.LayoutParams mp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        mp.topMargin = gap;
        col.addView(master, mp);

        sidebar.addView(col, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT));
        shownRunning = !isTrainingRunning();
        refresh();
    }

    /** Called every second by XemsNav and right after a start/pause tap. */
    static void refresh() {
        if (startButton == null || startIcon == null) {
            return;
        }
        // Other add-ons may re-show or re-order the original buttons: keep them hidden.
        LinearLayout sb = sidebarRef;
        if (sb != null) {
            for (int i = 0; i < sb.getChildCount(); i++) {
                View ch = sb.getChildAt(i);
                if (!TAG.equals(ch.getTag()) && ch.getVisibility() != View.GONE) {
                    ch.setVisibility(View.GONE);
                }
            }
        }
        boolean running = isTrainingRunning();
        if (running == shownRunning) {
            return;
        }
        shownRunning = running;
        startIcon.setType(running ? XemsIcon.PAUSE : XemsIcon.PLAY);
        startLabel.setText(running ? XemsLang.tr("Пауза", "Pause") : XemsLang.tr("Старт", "Start"));
        style(startButton, running ? XemsUi.AMBER : XemsUi.GO, true);
    }

    static boolean isTrainingRunning() {
        try {
            TrainItemManager m = com.isaigu.gymapp.wearable.WearableSyncHelper.getItemManager();
            List<TrainItem> items = m != null ? m.getItemList() : null;
            if (items == null) {
                return false;
            }
            for (int i = 0; i < items.size(); i++) {
                TrainItem it = items.get(i);
                if (it != null && !it.isEmpty() && it.data != null && it.data.start) {
                    return true;
                }
            }
        } catch (Throwable ignored) {
        }
        return false;
    }

    // ================================================================ views

    private static FrameLayout tall(Context c) {
        FrameLayout f = new FrameLayout(c);
        f.setClickable(true);
        XemsUi.pressable(f);
        return f;
    }

    private static LinearLayout.LayoutParams weighted(int topMargin) {
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f);
        lp.topMargin = topMargin;
        return lp;
    }

    private static View icon(Context c, int type, int color, XemsIcon given) {
        View v = new View(c);
        v.setBackground(given != null ? given : new XemsIcon(type, color));
        v.setDuplicateParentStateEnabled(true);
        return v;
    }

    /** Square icon box centred in its parent, sized to a share of the parent's width. */
    private static FrameLayout.LayoutParams centered(Context c, float share) {
        int s = Math.round(XemsUi.dp(c, 56) * share);
        return new FrameLayout.LayoutParams(s, s, Gravity.CENTER);
    }

    private static void style(View v, int fill, boolean solid) {
        Context c = v.getContext();
        float r = XemsUi.dp(c, 16);
        GradientDrawable g;
        if (solid) {
            g = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM,
                    new int[] {XemsUi.mix(fill, 0xFFFFFFFF, 0.12f), fill});
            g.setCornerRadius(r);
        } else {
            g = XemsUi.rounded(fill, r, XemsUi.STROKE, XemsUi.dp(c, 1));
        }
        Drawable bg = XemsUi.ripple(g, solid ? XemsUi.ON_ACCENT : XemsUi.TEXT, r);
        v.setBackground(bg);
        v.setElevation(XemsUi.dp(c, solid ? 4 : 1));
    }

    /** FrameLayout whose height equals its width. */
    static final class Square extends FrameLayout {
        Square(Context c) {
            super(c);
            setClickable(true);
            XemsUi.pressable(this);
        }

        @Override
        protected void onMeasure(int widthSpec, int heightSpec) {
            super.onMeasure(widthSpec, widthSpec);
        }
    }

    // ================================================================ clicks

    static final class Delegate implements View.OnClickListener {
        private final View root;
        private final int id;

        Delegate(View root, int id) {
            this.root = root;
            this.id = id;
        }

        @Override
        public void onClick(View v) {
            try {
                XemsUi.haptic(v);
                View target = root.findViewById(id);
                if (target != null) {
                    target.performClick();
                }
            } catch (Throwable t) {
                XemsGuard.report("XemsPanel.click", t);
            }
        }
    }

    static final class StartClick implements View.OnClickListener {
        private final Delegate delegate;

        StartClick(View root) {
            delegate = new Delegate(root, ID_START);
        }

        @Override
        public void onClick(View v) {
            delegate.onClick(v);
            v.postDelayed(new Refresh(), 250);
        }
    }

    static final class Refresh implements Runnable {
        @Override
        public void run() {
            try {
                refresh();
            } catch (Throwable t) {
                XemsGuard.report("XemsPanel.refresh", t);
            }
        }
    }
}
