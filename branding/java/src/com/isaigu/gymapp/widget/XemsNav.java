package com.isaigu.gymapp.widget;

import android.app.Activity;
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
    static final int M_AUTO = 4;

    private static final Handler handler = new Handler(Looper.getMainLooper());
    private static final Runnable tick = new Tick();

    private static View mainRoot;
    private static TextView menuButton;
    private static PopupWindow menu;
    /** When the menu last closed: a tap on "Меню" that closed it (outside touch) must not reopen it. */
    private static long menuClosedAt;
    private static final Tile[] tiles = new Tile[5];
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
            if (id == ID_TAB_FIRST + 1) {
                // the client list: bring in what clients changed in the booking app (event, no timer)
                try {
                    Class.forName("com.isaigu.gymapp.widget.XemsClientSync").getMethod("poke").invoke(null);
                } catch (Throwable ignored) {
                }
            }
            if (menu != null && menu.isShowing()) {
                menu.dismiss();
            }
            // the menu button lives in the module bar now: nothing floats over the pages
        } catch (Throwable t) {
            XemsGuard.report("XemsNav.onPage", t);
        }
    }

    public static void onTrainingPanel(View panelRoot) {
        try {
            hideSidebarModules(panelRoot);
            XemsPanel.attach(panelRoot);
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
        XemsLang.init(c);
        XemsLicense.init(c);
        if (c instanceof android.app.Activity) {
            XemsFullscreen.apply((android.app.Activity) c);
            XemsLicenseClient.autoCheck((android.app.Activity) c);
        }
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

        addMenuTile(bar);
        addTile(bar, M_TIMER, "⏱", tr("Таймер", "Timer"), XemsUi.AMBER);
        addTile(bar, M_MUSIC, "♫", tr("Музика", "Music"), XemsUi.GO);
        addTile(bar, M_PULSE, "♥", tr("Пулс", "Heart rate"), XemsUi.ACCENT);
        addTile(bar, M_AUTO, "A", tr("Авто", "Auto"), 0xFF26A69A);
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

        TextView icon = XemsUi.text(c, glyph, "AI".equals(glyph) || "A".equals(glyph) ? 15 : 19, tint, true);
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

        // "i": what the module is, what it gives, how to work with it (XemsModuleInfo)
        // A real target (42 dp, was 26): a round badge in the module's colour, inside the tile.
        int infoDp = 42;
        TextView info = XemsUi.text(c, "i", 21, tint, true);
        info.setTypeface(Typeface.create(Typeface.SERIF, Typeface.BOLD));
        info.setGravity(Gravity.CENTER);
        info.setIncludeFontPadding(false);
        GradientDrawable ig = new GradientDrawable();
        ig.setShape(GradientDrawable.OVAL);
        ig.setColor(XemsUi.alpha(tint, 0x24));
        ig.setStroke(XemsUi.dp(c, 1.5f), XemsUi.alpha(tint, 0x99));
        info.setBackgroundDrawable(XemsUi.ripple(ig, tint, XemsUi.dp(c, infoDp)));
        info.setClickable(true);
        XemsUi.pressable(info);
        info.setOnClickListener(new InfoClick(module));
        info.setContentDescription(tr("Информация", "Info"));
        LinearLayout.LayoutParams ip = new LinearLayout.LayoutParams(XemsUi.dp(c, infoDp), XemsUi.dp(c, infoDp));
        ip.leftMargin = XemsUi.dp(c, 8);
        tile.addView(info, ip);

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

    /**
     * "☰ Меню" — the first tile of the module bar (every page has the bar): big, labelled, and it never
     * covers a page's own header the way the old floating corner button did. The page menu opens above it.
     */
    private static void addMenuTile(LinearLayout bar) {
        Context c = bar.getContext();
        LinearLayout tile = XemsUi.horizontal(c);
        tile.setGravity(Gravity.CENTER_VERTICAL);
        tile.setPadding(XemsUi.dp(c, 10), 0, XemsUi.dp(c, 18), 0);
        float r = XemsUi.dp(c, 14);
        tile.setBackground(XemsUi.ripple(XemsUi.rounded(XemsUi.alpha(XemsUi.ACCENT, 0x22), r,
                XemsUi.alpha(XemsUi.ACCENT, 0x88), XemsUi.dp(c, 1)), XemsUi.TEXT, r));
        tile.setClickable(true);
        tile.setOnClickListener(new MenuClick());
        tile.setContentDescription(tr("Меню", "Menu"));
        XemsUi.pressable(tile);

        TextView icon = XemsUi.text(c, "☰", 18, 0xFFFFFFFF, true);
        icon.setGravity(Gravity.CENTER);
        android.graphics.drawable.GradientDrawable disc = new android.graphics.drawable.GradientDrawable();
        disc.setShape(android.graphics.drawable.GradientDrawable.OVAL);
        disc.setColor(XemsUi.ACCENT);
        icon.setBackground(disc);
        int is = XemsUi.dp(c, 38);
        tile.addView(icon, new LinearLayout.LayoutParams(is, is));
        TextView name = XemsUi.text(c, tr("Меню", "Menu"), 16, XemsUi.TEXT, true);
        name.setPadding(XemsUi.dp(c, 10), 0, 0, 0);
        tile.addView(name);

        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.MATCH_PARENT);
        lp.leftMargin = XemsUi.dp(c, 5);
        lp.rightMargin = XemsUi.dp(c, 5);
        bar.addView(tile, lp);
        menuButton = name;
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
        if (android.os.SystemClock.uptimeMillis() - menuClosedAt < 400) {
            return;                                        // this tap already closed it
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
        // our own section: the workouts (exercise library → built workouts → start with AI)
        box.addView(extraRow(c, XemsIcon.DUMBBELL, tr("Тренировки", "Workouts"), 0xFF22E3FF, new WorkoutsClick()),
                new LinearLayout.LayoutParams(XemsUi.dp(c, 250), XemsUi.dp(c, 52)));
        // the procedures (passive maps) apart from the workouts
        box.addView(extraRow(c, XemsIcon.SLIDERS, tr("Процедури", "Procedures"), 0xFF3D7BFF, new ProceduresClick()),
                new LinearLayout.LayoutParams(XemsUi.dp(c, 250), XemsUi.dp(c, 52)));

        // Not focusable: a focusable window takes the focus from the activity and Android shows its
        // navigation bar. Outside touches still close it.
        PopupWindow w = new PopupWindow(box, ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT, false);
        w.setBackgroundDrawable(new ColorDrawable(0));
        w.setOutsideTouchable(true);
        w.setOnDismissListener(new MenuClosed());
        XemsFullscreen.immersive(box);
        w.setElevation(XemsUi.dp(c, 16));
        menu = w;
        // the menu sits above the bar (the bar is at the bottom of every page)
        box.measure(View.MeasureSpec.makeMeasureSpec(0, View.MeasureSpec.UNSPECIFIED),
                View.MeasureSpec.makeMeasureSpec(0, View.MeasureSpec.UNSPECIFIED));
        w.showAsDropDown(anchor, 0, -(anchor.getHeight() + box.getMeasuredHeight() + XemsUi.dp(c, 8)));
        XemsUi.enter(box);
    }

    private static final int[] PAGE_ICONS = {XemsIcon.BOLT, XemsIcon.PERSON, XemsIcon.GEAR, XemsIcon.GUIDE,
            XemsIcon.PLAN};

    private static int pageTint(int index) {
        switch (index) {
            case 0: return XemsUi.ACCENT;
            case 1: return XemsUi.GO_TEXT;
            case 2: return XemsUi.MUTED;
            case 3: return XemsUi.AMBER;
            default: return XemsUi.ORANGE;
        }
    }

    private static View menuRow(Context c, ViewGroup tab, int id) {
        boolean selected = id == currentPage;
        int index = Math.max(0, Math.min(TAB_COUNT - 1, id - ID_TAB_FIRST));
        CharSequence label = "";
        for (int i = 0; i < tab.getChildCount(); i++) {
            View ch = tab.getChildAt(i);
            if (ch instanceof TextView && !(ch instanceof android.widget.Button)) {
                label = ((TextView) ch).getText();
            }
        }
        int tint = pageTint(index);
        LinearLayout row = XemsUi.horizontal(c);
        row.setGravity(Gravity.CENTER_VERTICAL);
        row.setPadding(XemsUi.dp(c, 10), 0, XemsUi.dp(c, 12), 0);
        float r = XemsUi.dp(c, 12);
        int fill = selected ? XemsUi.alpha(tint, 0x24) : 0x00000000;
        row.setBackground(XemsUi.ripple(XemsUi.rounded(fill, r, 0, 0), XemsUi.TEXT, r));
        row.setClickable(true);
        row.setOnClickListener(new PageClick(id));

        // Same look as the module tiles: glyph in a tinted disc, solid when active.
        View icon = new View(c);
        GradientDrawable disc = new GradientDrawable();
        disc.setShape(GradientDrawable.OVAL);
        disc.setColor(selected ? tint : XemsUi.alpha(tint, 0x2E));
        XemsIcon glyph = new XemsIcon(PAGE_ICONS[index], selected ? XemsUi.ON_ACCENT : tint);
        android.graphics.drawable.LayerDrawable layers = new android.graphics.drawable.LayerDrawable(
                new Drawable[] {disc, glyph});
        int inset = XemsUi.dp(c, 8);
        layers.setLayerInset(1, inset, inset, inset, inset);
        icon.setBackground(layers);
        row.addView(icon, new LinearLayout.LayoutParams(XemsUi.dp(c, 36), XemsUi.dp(c, 36)));

        TextView t = XemsUi.text(c, String.valueOf(label), 15,
                selected ? XemsUi.TEXT : XemsUi.MUTED, selected);
        LinearLayout.LayoutParams tp = new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        tp.leftMargin = XemsUi.dp(c, 14);
        row.addView(t, tp);
        return row;
    }

    /** A menu row for a section of ours (not a vendor tab): same look as the page rows. */
    private static View extraRow(Context c, int glyphType, String label, int tint, View.OnClickListener click) {
        LinearLayout row = XemsUi.horizontal(c);
        row.setGravity(Gravity.CENTER_VERTICAL);
        row.setPadding(XemsUi.dp(c, 10), 0, XemsUi.dp(c, 12), 0);
        float r = XemsUi.dp(c, 12);
        row.setBackground(XemsUi.ripple(XemsUi.rounded(0x00000000, r, 0, 0), XemsUi.TEXT, r));
        row.setClickable(true);
        row.setOnClickListener(click);
        View icon = new View(c);
        GradientDrawable disc = new GradientDrawable();
        disc.setShape(GradientDrawable.OVAL);
        disc.setColor(XemsUi.alpha(tint, 0x2E));
        XemsIcon glyph = new XemsIcon(glyphType, tint);
        android.graphics.drawable.LayerDrawable layers = new android.graphics.drawable.LayerDrawable(
                new Drawable[] {disc, glyph});
        int inset = XemsUi.dp(c, 8);
        layers.setLayerInset(1, inset, inset, inset, inset);
        icon.setBackground(layers);
        row.addView(icon, new LinearLayout.LayoutParams(XemsUi.dp(c, 36), XemsUi.dp(c, 36)));
        TextView t = XemsUi.text(c, label, 15, XemsUi.MUTED, false);
        LinearLayout.LayoutParams tp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        tp.leftMargin = XemsUi.dp(c, 14);
        row.addView(t, tp);
        return row;
    }

    static final class WorkoutsClick implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            if (menu != null) {
                menu.dismiss();
            }
            Activity a = com.isaigu.gymapp.ai.AiSession.activityOf(v);
            if (a != null) {
                com.isaigu.gymapp.ai.WorkoutsUi.open(a);
            }
        }
    }

    static final class ProceduresClick implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            if (menu != null) {
                menu.dismiss();
            }
            Activity a = com.isaigu.gymapp.ai.AiSession.activityOf(v);
            if (a != null) {
                com.isaigu.gymapp.ai.WorkoutsUi.openProcedures(a);
            }
        }
    }

    /** Opens the training page (client list → quick start). */
    public static void goTraining() {
        try {
            goPage(ID_TAB_FIRST);
        } catch (Throwable t) {
            XemsGuard.report("XemsNav.goTraining", t);
        }
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
        if (!XemsLicense.has(licenseId(module))) {
            // locked: what it is and what it gives, with "Абонирай се"
            showInfo(module);
            return;
        }
        if (currentPage != ID_TAB_FIRST) {
            // Modules live on the training page: switch there first, then open.
            goPage(ID_TAB_FIRST);
            handler.postDelayed(new OpenLater(module), 350);
            return;
        }
        clickModule(module);
    }

    /** The module's info sheet; when unlocked, its "Отвори" opens the module. */
    static void showInfo(int module) {
        if (mainRoot == null) {
            return;
        }
        android.app.Activity a = AiSession.activityOf(mainRoot);
        String id = licenseId(module);
        XemsModuleInfo.show(a, id, XemsLicense.has(id) ? new OpenFromInfo(module) : null);
    }

    /** The training page is on screen (the automatic mode's hint card shows only there). */
    public static boolean isTrainingPage() {
        return currentPage == ID_TAB_FIRST;
    }

    static void clickModule(int module) {
        if (module == M_AUTO) {
            android.app.Activity a = AiSession.activityOf(mainRoot);
            if (a != null) {
                com.isaigu.gymapp.ai.AutoUi.open(a);
            }
            refreshTiles();
            return;
        }
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

    /** Licence module id of a tile. */
    static String licenseId(int module) {
        switch (module) {
            case M_TIMER:
                return XemsLicense.TIMER;
            case M_MUSIC:
                return XemsLicense.MUSIC;
            case M_PULSE:
                return XemsLicense.PULSE;
            case M_AUTO:
                return XemsLicense.AUTO;
            default:
                return XemsLicense.AI;
        }
    }

    /** Licence changed (Settings): redraw the tiles. */
    public static void onLicenseChanged() {
        try {
            for (Tile t : tiles) {
                if (t != null) {
                    t.lastState = -1;
                    t.lastText = null;
                }
            }
            refreshTiles();
        } catch (Throwable t) {
            XemsGuard.report("XemsNav.license", t);
        }
    }

    /** state: 0 off, 1 active, 2 paused / preparing, 3 locked (no licence). */
    private static void refreshTile(Tile t) {
        int state = 0;
        String text = tr("Изключен", "Off");
        if (!XemsLicense.has(licenseId(t.module))) {
            state = 3;
            text = tr("🔒 Няма достъп", "🔒 No access");
        } else switch (t.module) {
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
            case M_AUTO:
                com.isaigu.gymapp.ai.AutoSession.Stage as = com.isaigu.gymapp.ai.AutoSession.getStage();
                state = as == com.isaigu.gymapp.ai.AutoSession.Stage.RUNNING ? 1
                        : as == com.isaigu.gymapp.ai.AutoSession.Stage.IDLE ? 0 : 2;
                text = com.isaigu.gymapp.ai.AutoUi.status();
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
        t.root.setAlpha(state == 3 ? 0.5f : 1f);
        if (state == 3) {
            state = 0;
        }
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
            return XemsLang.tr(bg, en);
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
                    XemsPanel.refresh();
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

    static final class InfoClick implements View.OnClickListener {
        private final int module;

        InfoClick(int module) {
            this.module = module;
        }

        @Override
        public void onClick(View v) {
            try {
                XemsUi.haptic(v);
                showInfo(module);
            } catch (Throwable t) {
                XemsGuard.report("XemsNav.info", t);
            }
        }
    }

    static final class OpenFromInfo implements Runnable {
        private final int module;

        OpenFromInfo(int module) {
            this.module = module;
        }

        @Override
        public void run() {
            Tile t = tiles[module];
            if (t != null) {
                openModule(t.root, module);
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

    static final class MenuClosed implements PopupWindow.OnDismissListener {
        @Override
        public void onDismiss() {
            menuClosedAt = android.os.SystemClock.uptimeMillis();
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
