package com.isaigu.gymapp.widget;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;

import com.isaigu.gymapp.ai.AiSession;
import com.isaigu.gymapp.dialog.IntervalTimerHelper;
import com.isaigu.gymapp.train.utils.MusicSync;
import com.isaigu.gymapp.wearable.NotifyWearableBridge;

import java.util.Locale;

/**
 * Main navigation (v1.1.64).
 * - The five page tabs (Тренировка, Потребител, Настройки, …) move into a ☰ drop-down menu
 *   at the top left of the page area.
 * - Their place at the bottom takes a module bar: Таймер, Музика, Пулс, AI — each with a live
 *   status line. The tiles click the original sidebar buttons, so every module keeps its own
 *   logic; the sidebar copies are hidden.
 * Hooks: MainFragment.onCreateView → attach(root); MainFragment.changePageFragment → onPage(id);
 * WearableSyncHelper.attachMasterPanel → onTrainingPanel(root).
 */
public final class XemsNav {
    private static final int ID_FL_FRAGMENT = 0x7f0900a3;
    private static final int ID_LINE = 0x7f0900de;
    private static final int ID_TAB_BAR = 0x7f0900ea;
    private static final int ID_TAB_FIRST = 0x7f0900ec;
    private static final int TAB_COUNT = 5;

    private static final int ID_RIGHT_LAYOUT = 0x7f090155;
    private static final int ID_MUSIC = 0x7f090226;
    private static final int ID_TIMER = 0x7f090230;
    private static final int ID_HEART = 0x7f090297;
    private static final String AI_TAG = "xems_ai_button";

    static final int M_TIMER = 0;
    static final int M_MUSIC = 1;
    static final int M_PULSE = 2;
    static final int M_AI = 3;

    private static final Handler handler = new Handler(Looper.getMainLooper());
    private static final Runnable tick = new Tick();

    private static View mainRoot;
    private static TextView menuButton;
    private static PopupWindow menu;
    private static final Tile[] tiles = new Tile[4];
    private static int currentPage = ID_TAB_FIRST;
    private static boolean ticking;

    private XemsNav() {}

    static final class Tile {
        int module;
        int tint;
        LinearLayout root;
        TextView icon;
        TextView status;
        int lastState = -1;
        String lastText;
    }

    // ================================================================ hooks

    public static void attach(View root) {
        try {
            attachImpl(root);
        } catch (Throwable t) {
            XemsGuard.report("XemsNav.attach", t);
        }
    }

    public static void onPage(int id) {
        try {
            if (id >= ID_TAB_FIRST && id < ID_TAB_FIRST + TAB_COUNT) {
                currentPage = id;
            }
            if (menu != null && menu.isShowing()) {
                menu.dismiss();
            }
            if (menuButton != null) {
                menuButton.bringToFront();
            }
        } catch (Throwable t) {
            XemsGuard.report("XemsNav.onPage", t);
        }
    }

    public static void onTrainingPanel(View panelRoot) {
        try {
            hideSidebarModules(panelRoot);
        } catch (Throwable t) {
            XemsGuard.report("XemsNav.onTrainingPanel", t);
        }
    }

    // ================================================================ build

    private static void attachImpl(View root) {
        if (root == null) {
            return;
        }
        View tabBar = root.findViewById(ID_TAB_BAR);
        if (tabBar == null || !(tabBar.getParent() instanceof LinearLayout)) {
            return;
        }
        Context c = root.getContext();
        XemsUi.init(c);
        mainRoot = root;
        currentPage = ID_TAB_FIRST;

        LinearLayout parent = (LinearLayout) tabBar.getParent();
        View line = root.findViewById(ID_LINE);
        if (line != null) {
            line.setVisibility(View.GONE);
        }
        tabBar.setVisibility(View.GONE);
        View bar = buildModuleBar(c);
        parent.addView(bar, parent.indexOfChild(tabBar), new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, XemsUi.dp(c, 68)));

        View fl = root.findViewById(ID_FL_FRAGMENT);
        if (fl instanceof FrameLayout) {
            addMenuButton((FrameLayout) fl);
        }
        bar.addOnAttachStateChangeListener(new BarAttach());
        refreshTiles();
    }

    private static View buildModuleBar(Context c) {
        LinearLayout bar = XemsUi.horizontal(c);
        bar.setGravity(Gravity.CENTER_VERTICAL);
        int bg = XemsUi.color(c, "tab_bar_bg", XemsUi.CARD);
        GradientDrawable g = new GradientDrawable();
        g.setColor(bg);
        bar.setBackground(g);
        int pad = XemsUi.dp(c, 8);
        bar.setPadding(XemsUi.dp(c, 12), pad, XemsUi.dp(c, 12), pad);
        bar.setElevation(XemsUi.dp(c, 6));

        addTile(bar, M_TIMER, "⏱", tr("Таймер", "Timer"), XemsUi.AMBER);
        addTile(bar, M_MUSIC, "♫", tr("Музика", "Music"), XemsUi.GO);
        addTile(bar, M_PULSE, "♥", tr("Пулс", "Heart rate"), XemsUi.ACCENT);
        addTile(bar, M_AI, "AI", tr("AI тренировка", "AI session"), XemsUi.ORANGE);
        return bar;
    }

    private static void addTile(LinearLayout bar, int module, String glyph, String label, int tint) {
        Context c = bar.getContext();
        Tile t = new Tile();
        t.module = module;
        t.tint = tint;

        LinearLayout tile = XemsUi.horizontal(c);
        tile.setGravity(Gravity.CENTER_VERTICAL);
        tile.setPadding(XemsUi.dp(c, 10), 0, XemsUi.dp(c, 12), 0);
        tile.setClickable(true);
        tile.setFocusable(true);
        tile.setOnClickListener(new TileClick(module));
        XemsUi.pressable(tile);

        TextView icon = XemsUi.text(c, glyph, "AI".equals(glyph) ? 15 : 19, tint, true);
        icon.setGravity(Gravity.CENTER);
        int is = XemsUi.dp(c, 38);
        tile.addView(icon, new LinearLayout.LayoutParams(is, is));

        LinearLayout texts = XemsUi.vertical(c);
        TextView name = XemsUi.text(c, label, 14, XemsUi.TEXT, true);
        name.setSingleLine(true);
        name.setEllipsize(TextUtils.TruncateAt.END);
        TextView status = XemsUi.text(c, "", 11, XemsUi.MUTED, false);
        status.setSingleLine(true);
        status.setEllipsize(TextUtils.TruncateAt.END);
        texts.addView(name);
        LinearLayout.LayoutParams sp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        sp.topMargin = XemsUi.dp(c, 3);
        texts.addView(status, sp);
        LinearLayout.LayoutParams tp = new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        tp.leftMargin = XemsUi.dp(c, 10);
        tile.addView(texts, tp);

        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.MATCH_PARENT, 1f);
        int m = XemsUi.dp(c, 5);
        lp.leftMargin = m;
        lp.rightMargin = m;
        bar.addView(tile, lp);

        t.root = tile;
        t.icon = icon;
        t.status = status;
        tiles[module] = t;
    }

    private static void addMenuButton(FrameLayout fl) {
        Context c = fl.getContext();
        if (menuButton != null && menuButton.getParent() instanceof ViewGroup) {
            ((ViewGroup) menuButton.getParent()).removeView(menuButton);
        }
        TextView b = XemsUi.text(c, "☰", 20, XemsUi.TEXT, true);
        b.setGravity(Gravity.CENTER);
        float r = XemsUi.dp(c, 22);
        b.setBackground(XemsUi.ripple(XemsUi.rounded(XemsUi.CARD, r, XemsUi.STROKE,
                XemsUi.dp(c, 1)), XemsUi.TEXT, r));
        b.setElevation(XemsUi.dp(c, 12));
        b.setTranslationZ(XemsUi.dp(c, 12));
        b.setContentDescription(tr("Меню", "Menu"));
        b.setOnClickListener(new MenuClick());
        XemsUi.pressable(b);
        int s = XemsUi.dp(c, 44);
        FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(s, s, Gravity.TOP | Gravity.LEFT);
        lp.leftMargin = XemsUi.dp(c, 8);
        lp.topMargin = XemsUi.dp(c, 6);
        fl.addView(b, lp);
        menuButton = b;
    }

    // ================================================================ page menu

    private static void showMenu(View anchor) {
        if (mainRoot == null) {
            return;
        }
        if (menu != null && menu.isShowing()) {
            menu.dismiss();
            return;
        }
        Context c = anchor.getContext();
        LinearLayout box = XemsUi.vertical(c);
        int p = XemsUi.dp(c, 8);
        box.setPadding(p, p, p, p);
        box.setBackground(XemsUi.rounded(XemsUi.CARD, XemsUi.dp(c, 18), XemsUi.STROKE,
                XemsUi.dp(c, 1)));

        TextView head = XemsUi.label(c, "XEMS");
        head.setPadding(XemsUi.dp(c, 12), XemsUi.dp(c, 4), 0, XemsUi.dp(c, 6));
        box.addView(head);

        for (int i = 0; i < TAB_COUNT; i++) {
            int id = ID_TAB_FIRST + i;
            View tab = mainRoot.findViewById(id);
            if (!(tab instanceof ViewGroup) || tab.getVisibility() != View.VISIBLE) {
                continue;
            }
            box.addView(menuRow(c, (ViewGroup) tab, id), new LinearLayout.LayoutParams(
                    XemsUi.dp(c, 250), XemsUi.dp(c, 52)));
        }

        PopupWindow w = new PopupWindow(box, ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT, true);
        w.setBackgroundDrawable(new ColorDrawable(0));
        w.setOutsideTouchable(true);
        w.setElevation(XemsUi.dp(c, 16));
        menu = w;
        w.showAsDropDown(anchor, 0, XemsUi.dp(c, 6));
        XemsUi.enter(box);
    }

    private static View menuRow(Context c, ViewGroup tab, int id) {
        boolean selected = id == currentPage;
        Drawable icon = null;
        CharSequence label = "";
        for (int i = 0; i < tab.getChildCount(); i++) {
            View ch = tab.getChildAt(i);
            if (ch instanceof ImageView && icon == null) {
                Drawable d = ch.getBackground() != null ? ch.getBackground()
                        : ((ImageView) ch).getDrawable();
                if (d != null && d.getConstantState() != null) {
                    icon = d.getConstantState().newDrawable(c.getResources()).mutate();
                }
            } else if (ch instanceof TextView) {
                label = ((TextView) ch).getText();
            }
        }
        LinearLayout row = XemsUi.horizontal(c);
        row.setGravity(Gravity.CENTER_VERTICAL);
        row.setPadding(XemsUi.dp(c, 12), 0, XemsUi.dp(c, 12), 0);
        float r = XemsUi.dp(c, 12);
        int fill = selected ? XemsUi.alpha(XemsUi.ACCENT, 0x2E) : 0x00000000;
        row.setBackground(XemsUi.ripple(XemsUi.rounded(fill, r, 0, 0), XemsUi.TEXT, r));
        row.setClickable(true);
        row.setOnClickListener(new PageClick(id));

        View bar = new View(c);
        bar.setBackground(XemsUi.rounded(selected ? XemsUi.ACCENT : 0x00000000,
                XemsUi.dp(c, 2), 0, 0));
        row.addView(bar, new LinearLayout.LayoutParams(XemsUi.dp(c, 4), XemsUi.dp(c, 22)));

        ImageView iv = new ImageView(c);
        iv.setScaleType(ImageView.ScaleType.FIT_CENTER);
        if (icon != null) {
            iv.setImageDrawable(icon);
        }
        LinearLayout.LayoutParams ip = new LinearLayout.LayoutParams(XemsUi.dp(c, 28), XemsUi.dp(c, 28));
        ip.leftMargin = XemsUi.dp(c, 10);
        row.addView(iv, ip);

        TextView t = XemsUi.text(c, String.valueOf(label), 15,
                selected ? XemsUi.ACCENT : XemsUi.TEXT, selected);
        LinearLayout.LayoutParams tp = new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        tp.leftMargin = XemsUi.dp(c, 14);
        row.addView(t, tp);
        if (selected) {
            row.addView(XemsUi.text(c, "●", 10, XemsUi.ACCENT, false));
        }
        return row;
    }

    private static void goPage(int id) {
        if (menu != null) {
            menu.dismiss();
        }
        View tab = mainRoot != null ? mainRoot.findViewById(id) : null;
        if (tab != null) {
            tab.performClick();
        }
    }

    // ================================================================ modules

    private static void openModule(View from, int module) {
        if (mainRoot == null) {
            return;
        }
        XemsUi.haptic(from);
        if (currentPage != ID_TAB_FIRST) {
            // Modules live on the training page: switch there first, then open.
            goPage(ID_TAB_FIRST);
            handler.postDelayed(new OpenLater(module), 350);
            return;
        }
        clickModule(module);
    }

    static void clickModule(int module) {
        View target = findModuleButton(module);
        if (target != null) {
            target.performClick();
        }
        refreshTiles();
    }

    private static View findModuleButton(int module) {
        if (mainRoot == null) {
            return null;
        }
        switch (module) {
            case M_TIMER:
                return mainRoot.findViewById(ID_TIMER);
            case M_MUSIC:
                return mainRoot.findViewById(ID_MUSIC);
            case M_PULSE:
                return mainRoot.findViewById(ID_HEART);
            default:
                return mainRoot.findViewWithTag(AI_TAG);
        }
    }

    /** Hide the module buttons in the right sidebar and collapse the spacers around them. */
    private static void hideSidebarModules(View panelRoot) {
        View root = panelRoot != null ? panelRoot : mainRoot;
        if (root == null) {
            return;
        }
        View side = root.findViewById(ID_RIGHT_LAYOUT);
        if (!(side instanceof ViewGroup)) {
            return;
        }
        ViewGroup sb = (ViewGroup) side;
        hide(sb.findViewById(ID_TIMER));
        hide(sb.findViewById(ID_MUSIC));
        hide(sb.findViewById(ID_HEART));
        hide(sb.findViewWithTag(AI_TAG));
        // Keep one spacer between visible buttons; drop the extra ones left by the modules.
        boolean prevSpacer = false;
        for (int i = 0; i < sb.getChildCount(); i++) {
            View ch = sb.getChildAt(i);
            if (ch.getVisibility() == View.GONE) {
                continue;
            }
            boolean spacer = ch.getClass() == View.class;
            if (spacer && prevSpacer) {
                ch.setVisibility(View.GONE);
                continue;
            }
            prevSpacer = spacer;
        }
    }

    private static void hide(View v) {
        if (v != null && v.getVisibility() != View.GONE) {
            v.setVisibility(View.GONE);
        }
    }

    // ================================================================ live status

    private static void refreshTiles() {
        for (Tile t : tiles) {
            if (t != null) {
                refreshTile(t);
            }
        }
    }

    /** state: 0 off, 1 active, 2 paused / preparing. */
    private static void refreshTile(Tile t) {
        int state = 0;
        String text = tr("Изключен", "Off");
        switch (t.module) {
            case M_TIMER:
                if (IntervalTimerHelper.isCounting()) {
                    state = 1;
                    text = tr("● Отброява", "● Counting");
                } else if (IntervalTimerHelper.isArmed()) {
                    state = 2;
                    text = tr("Готов", "Ready");
                } else {
                    text = tr("Натисни за настройка", "Tap to set up");
                }
                break;
            case M_MUSIC:
                if (MusicSync.isRunning() && MusicSync.isPlayerMode()) {
                    if (MusicSync.isPlaybackPaused()) {
                        state = 2;
                        text = tr("Пауза", "Paused");
                    } else {
                        state = 1;
                        text = tr("▶ Свири", "▶ Playing");
                    }
                } else {
                    text = tr("Спряна", "Stopped");
                }
                break;
            case M_PULSE:
                if (NotifyWearableBridge.isListeningActive()) {
                    int hr = NotifyWearableBridge.getLastHeartRate();
                    if (hr > 0) {
                        state = 1;
                        text = "♥ " + hr + " bpm";
                    } else {
                        state = 2;
                        text = tr("Свързване…", "Connecting…");
                    }
                } else {
                    text = tr("Гривната не слуша", "Band idle");
                }
                break;
            default:
                AiSession.Stage st = AiSession.getStage();
                if (st == AiSession.Stage.RUNNING) {
                    state = 1;
                    text = String.format(Locale.US, "● %.0f kcal", AiSession.getKcal());
                } else if (st != null && st != AiSession.Stage.IDLE) {
                    state = 2;
                    text = tr("Подготовка", "Setting up");
                } else {
                    text = tr("Умна сесия", "Smart session");
                }
                break;
        }
        if (state != t.lastState) {
            t.lastState = state;
            styleTile(t, state);
        }
        if (!text.equals(t.lastText)) {
            t.lastText = text;
            t.status.setText(text);
        }
    }

    private static void styleTile(Tile t, int state) {
        Context c = t.root.getContext();
        float r = XemsUi.dp(c, 16);
        int accent = state == 2 ? XemsUi.AMBER : t.tint;
        int fill = state == 0 ? XemsUi.SURFACE : XemsUi.mix(XemsUi.SURFACE, accent, 0.16f);
        int stroke = state == 0 ? XemsUi.STROKE : accent;
        t.root.setBackground(XemsUi.ripple(XemsUi.rounded(fill, r, stroke,
                XemsUi.dp(c, state == 0 ? 1 : 2)), accent, r));

        GradientDrawable disc = new GradientDrawable();
        disc.setShape(GradientDrawable.OVAL);
        disc.setColor(state == 1 ? t.tint : XemsUi.alpha(t.tint, 0x33));
        t.icon.setBackground(disc);
        t.icon.setTextColor(state == 1 ? XemsUi.ON_ACCENT : t.tint);
        t.status.setTextColor(state == 0 ? XemsUi.MUTED : accent);
        t.status.setTypeface(Typeface.DEFAULT, state == 0 ? Typeface.NORMAL : Typeface.BOLD);
    }

    private static void startTicking() {
        if (!ticking) {
            ticking = true;
            handler.post(tick);
        }
    }

    private static void stopTicking() {
        ticking = false;
        handler.removeCallbacks(tick);
    }

    static String tr(String bg, String en) {
        try {
            return "en".equals(Locale.getDefault().getLanguage()) ? en : bg;
        } catch (Throwable t) {
            return bg;
        }
    }

    // ================================================================ listeners

    static final class Tick implements Runnable {
        @Override
        public void run() {
            if (!ticking) {
                return;
            }
            try {
                refreshTiles();
                if (currentPage == ID_TAB_FIRST) {
                    hideSidebarModules(null);
                }
            } catch (Throwable t) {
                XemsGuard.report("XemsNav.tick", t);
            }
            handler.postDelayed(this, 1000);
        }
    }

    static final class BarAttach implements View.OnAttachStateChangeListener {
        @Override
        public void onViewAttachedToWindow(View v) {
            startTicking();
        }

        @Override
        public void onViewDetachedFromWindow(View v) {
            stopTicking();
            if (menu != null && menu.isShowing()) {
                try {
                    menu.dismiss();
                } catch (Throwable ignored) {
                }
            }
        }
    }

    static final class TileClick implements View.OnClickListener {
        private final int module;

        TileClick(int module) {
            this.module = module;
        }

        @Override
        public void onClick(View v) {
            try {
                openModule(v, module);
            } catch (Throwable t) {
                XemsGuard.report("XemsNav.module", t);
            }
        }
    }

    static final class OpenLater implements Runnable {
        private final int module;

        OpenLater(int module) {
            this.module = module;
        }

        @Override
        public void run() {
            try {
                clickModule(module);
            } catch (Throwable t) {
                XemsGuard.report("XemsNav.openLater", t);
            }
        }
    }

    static final class MenuClick implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            try {
                XemsUi.haptic(v);
                showMenu(v);
            } catch (Throwable t) {
                XemsGuard.report("XemsNav.menu", t);
            }
        }
    }

    static final class PageClick implements View.OnClickListener {
        private final int id;

        PageClick(int id) {
            this.id = id;
        }

        @Override
        public void onClick(View v) {
            try {
                goPage(id);
            } catch (Throwable t) {
                XemsGuard.report("XemsNav.page", t);
            }
        }
    }
}
