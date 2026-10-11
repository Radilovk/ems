package com.isaigu.gymapp.ai;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.support.v7.widget.RecyclerView;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.train.TrainItemManager;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.train.utils.MusicSyncBridge;
import com.isaigu.gymapp.train.utils.PartStrength;
import com.isaigu.gymapp.wearable.PartPick;
import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsIcon;
import com.isaigu.gymapp.widget.XemsUi;

import java.util.ArrayList;
import java.util.List;

/**
 * Training screen, focus layout (owner, 1.1.412 — the BodyTech mock-ups): one client fills the place of the rows.
 * <pre>
 *  [client chips · +]          [Основен | Мускули | Кардио | Масаж]           time  battery  ⚙  ☰ Редове
 *  ┌ Гърди ┐                                   ┌ Трапец ┐   │ ( Интензитет 1 )  ( Интензитет 2 ) │
 *  │ Ръце  │      body, front | back           │ Гръб   │   │   −  +               −  +          │
 *  │ Корем │      (each zone lit by its        │ Кръст  │   │ Импулс 1  4 s ±   Импулс 2  4 s ±  │
 *  │ Бедро │       channel's real output)      │ Глутеус│   │   40 Hz ±           7 Hz ±         │
 *  └Прасец ┘                                   └З.бедро ┘   │  [∿]     [ ▶ Старт ]     [■]       │
 * </pre>
 * Nothing here holds training logic: every control presses the client's own row (still laid out under the board)
 * or calls the same TrainItem step the + / − of the right panel calls, so every hook — selected muscles
 * (PartStrength / PartPick), the double impulse, music sync, the safety guard at send time — stays in force.
 * The chips at the top switch the client on the board (more clients = more chips); "☰ Редове" gives back the
 * classic rows, the "◎ Фокус" pill over them brings the board back. Engines that own the rows (Auto, AI, a map)
 * get the classic rows.
 */
public final class FocusBoard {
    private static final String PREFS = "xems_focus";
    private static final String K_ROWS = "rows";
    private static final String K_LOCK = "lock";
    private static final String K_UPRIGHT = "upright";
    private static final long REFRESH_MS = 300L;
    private static final Handler H = new Handler(Looper.getMainLooper());
    private static final Refresh REFRESH = new Refresh();

    /** The mock-up's order: front muscles left, back muscles right (indices = PartStrenthBean.buwei). */
    private static final int[] LEFT = {AutoModel.CHEST, AutoModel.ARMS, AutoModel.ABS, AutoModel.FRONT_THIGH, AutoModel.CALF};
    private static final int[] RIGHT = {AutoModel.TRAPS, AutoModel.BACK, AutoModel.LOWER_BACK, AutoModel.GLUTES,
            AutoModel.BACK_THIGH};
    /** The factory muscle icons (header of the rows), buwei1 … buwei10. */
    private static final String[] ICONS = {"xiong", "fubu", "xiazhi", "xiaotui", "shoubi", "houxie", "bei", "yao",
            "bibu", "tui"};
    private static final String[] MODE_IDS = {"mainModeBtn", "strenthExist", "youyangyundong", "anmo"};

    static final int INT1 = 0;
    static final int INT2 = 1;
    static final int HZ1 = 2;
    static final int HZ2 = 3;
    static final int T1 = 4;
    static final int T2 = 5;

    private static View root;
    private static View left;
    private static FrameLayout frame;
    private static View board;
    private static TextView pill;
    private static TrainItem focus;
    private static boolean looping;

    private static LinearLayout clientRow;
    private static String clientsKey = "";
    private static final TextView[] modeTabs = new TextView[4];
    private static TextView timeText;
    private static TextView battText;
    private static AutoViews.BodyHeat body;
    private static Leaders leaders;
    private static Timeline timeline;
    private static ImageView lockKey;
    private static TextView syncKey;
    /** The impulse the controls touched last (1 / 2): what the muscles show while the client stands still. */
    private static int pick = 1;
    /** The 1 : 2 ratio lock and each client's ratio taken when it closed. */
    private static boolean locked;
    private static final java.util.WeakHashMap<TrainItem, Float> RATIO = new java.util.WeakHashMap<TrainItem, Float>();
    /** Colour of the impulse the muscles show (cyan 1, yellow 2, grey pause). */
    static int shownTint = 0xFF22C3F5;
    private static final Chip[] chips = new Chip[AutoModel.CHANNELS];
    private static Ring ring1;
    private static Ring ring2;
    private static TextView ring1Label;
    private static TextView imp1Val;
    private static TextView hz1Val;
    private static TextView imp2Title;
    private static TextView imp2Val;
    private static TextView hz2Val;
    private static View hz2Row;
    private static View ring2Steps;
    private static TextView waveKey;
    private static LinearLayout startKey;
    private static ImageView startIcon;
    private static TextView startLabel;
    private static int shownStart = -1;
    private static AiModel.Sex sex = AiModel.Sex.MALE;
    private static TrainItem sexOf;

    private FocusBoard() {}

    // ================================================================ attach

    public static boolean isShowing() {
        return board != null && board.getVisibility() == View.VISIBLE && board.isAttachedToWindow();
    }

    /** XemsNav: the training panel was (re)built. */
    public static void sync(View any) {
        if (any != null) {
            root = any.getRootView();
        }
        tick();
    }

    /** Every second (XemsNav tick) and after every action: builds, shows or hides the board. */
    public static void tick() {
        try {
            View r = root;
            if (r == null) {
                return;
            }
            Context c = r.getContext();
            View l = find(r, "leftLayout");
            if (l == null || !com.isaigu.gymapp.widget.XemsNav.isTrainingPage()) {
                return;
            }
            if (l != left || frame == null || l.getParent() != frame) {
                wrap(c, l);
            }
            int n = clients().size();
            boolean free = engineFree();
            boolean showBoard = free && n > 0 && !rowsMode(c);
            orient(showBoard && wantUpright(c));
            if (showBoard) {
                if (board == null) {
                    board = build(c);
                    frame.addView(board, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                            ViewGroup.LayoutParams.MATCH_PARENT));
                    board.setAlpha(0f);
                    board.animate().alpha(1f).setDuration(220).start();
                }
                board.setVisibility(View.VISIBLE);
                startLoop();
            } else if (board != null) {
                board.setVisibility(View.GONE);
            }
            if (pill != null) {
                pill.setVisibility(!showBoard && free && n > 0 ? View.VISIBLE : View.GONE);
                pill.bringToFront();
            }
        } catch (Throwable t) {
            XemsGuard.report("FocusBoard.tick", t);
        }
    }

    /** The rows' column goes into a frame of the same size; the board and the pill lie over it. */
    private static void wrap(Context c, View l) {
        board = null;
        clientRow = null;
        clientsKey = "";
        frame = null;
        left = l;
        if (!(l.getParent() instanceof ViewGroup)) {
            return;
        }
        ViewGroup parent = (ViewGroup) l.getParent();
        if (parent instanceof FrameLayout && "xems_focus_frame".equals(parent.getTag())) {
            frame = (FrameLayout) parent;
            frame.removeAllViews();
            frame.addView(l, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.MATCH_PARENT));
        } else {
            int at = parent.indexOfChild(l);
            ViewGroup.LayoutParams lp = l.getLayoutParams();
            parent.removeViewAt(at);
            FrameLayout f = new FrameLayout(c);
            f.setTag("xems_focus_frame");
            f.addView(l, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.MATCH_PARENT));
            parent.addView(f, at, lp);
            frame = f;
        }
        frame.addOnLayoutChangeListener(new Shape());
        pill = XemsUi.text(c, "◎  " + AiText.t("Фокус", "Focus"), 14, XemsUi.TEXT, true);
        pill.setGravity(Gravity.CENTER);
        pill.setPadding(XemsUi.dp(c, 16), XemsUi.dp(c, 8), XemsUi.dp(c, 16), XemsUi.dp(c, 8));
        float r = XemsUi.dp(c, 18);
        pill.setBackgroundDrawable(XemsUi.ripple(XemsUi.glow(c, XemsUi.ACCENT, r), XemsUi.TEXT, r));
        XemsUi.pressable(pill);
        pill.setOnClickListener(new RowsClick(false));
        FrameLayout.LayoutParams plp = new FrameLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.TOP | Gravity.RIGHT);
        plp.topMargin = XemsUi.dp(c, 6);
        plp.rightMargin = XemsUi.dp(c, 6);
        pill.setVisibility(View.GONE);
        frame.addView(pill, plp);
    }

    /** Auto, AI and the map own the rows (their own boards / looks); music sync only holds the ceiling. */
    private static boolean engineFree() {
        if (AutoBoard.isAttached()) {
            return false;
        }
        String h = OutputOwner.holder();
        return h == null || OutputOwner.MUSIC.equals(h);
    }

    private static boolean rowsMode(Context c) {
        try {
            return c.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getBoolean(K_ROWS, false);
        } catch (Throwable t) {
            return false;
        }
    }

    static final class RowsClick implements View.OnClickListener {
        private final boolean rows;

        RowsClick(boolean rows) {
            this.rows = rows;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            try {
                SharedPreferences.Editor e = v.getContext().getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit();
                e.putBoolean(K_ROWS, rows).apply();
            } catch (Throwable ignored) {
            }
            tick();
        }
    }

    // ================================================================ clients / rows

    private static List<TrainItem> clients() {
        List<TrainItem> out = new ArrayList<TrainItem>();
        try {
            TrainItemManager m = com.isaigu.gymapp.wearable.WearableSyncHelper.getItemManager();
            List<TrainItem> all = m != null ? m.getItemList() : null;
            if (all != null) {
                for (int i = 0; i < all.size(); i++) {
                    TrainItem it = all.get(i);
                    if (it != null && !it.isEmpty()) {
                        out.add(it);
                    }
                }
            }
        } catch (Throwable ignored) {
        }
        return out;
    }

    private static int position(TrainItem it) {
        try {
            TrainItemManager m = com.isaigu.gymapp.wearable.WearableSyncHelper.getItemManager();
            List<TrainItem> all = m != null ? m.getItemList() : null;
            return all != null ? all.indexOf(it) : -1;
        } catch (Throwable t) {
            return -1;
        }
    }

    /** The client on the board: the chosen one while it is in a slot, else the first. */
    private static TrainItem current() {
        List<TrainItem> list = clients();
        if (focus != null && list.contains(focus)) {
            return focus;
        }
        focus = list.isEmpty() ? null : list.get(0);
        return focus;
    }

    /** The row of a slot, when the list has it laid out; else the list is moved to it (next refresh finds it). */
    private static View rowAt(int pos, boolean bring) {
        if (pos < 0 || root == null) {
            return null;
        }
        View rv = find(root, "recyclerView");
        if (!(rv instanceof RecyclerView)) {
            return null;
        }
        RecyclerView list = (RecyclerView) rv;
        for (int i = 0; i < list.getChildCount(); i++) {
            View ch = list.getChildAt(i);
            if (list.getChildAdapterPosition(ch) == pos) {
                return ch;
            }
        }
        if (bring) {
            list.scrollToPosition(pos);
        }
        return null;
    }

    private static View row() {
        TrainItem it = current();
        return it != null ? rowAt(position(it), true) : null;
    }

    private static View inRow(String name) {
        View row = row();
        return row != null ? find(row, name) : null;
    }

    /** Presses a control of the client's own row. */
    static boolean press(String name) {
        View v = inRow(name);
        if (v == null) {
            hint(AiText.t("Редът на клиента още се зарежда — опитай пак.", "The client's row is loading — try again."));
            return false;
        }
        if ("save".equals(name)) {
            tap(v);                             // the double-impulse key reads touches (wearable/DoubleImpulse.Press)
        } else {
            v.performClick();
        }
        later();
        return true;
    }

    /** A short finger tap in the middle of a view: down, then up. */
    private static void tap(View v) {
        long t = android.os.SystemClock.uptimeMillis();
        float x = v.getWidth() / 2f;
        float y = v.getHeight() / 2f;
        android.view.MotionEvent d = android.view.MotionEvent.obtain(t, t, android.view.MotionEvent.ACTION_DOWN, x, y, 0);
        android.view.MotionEvent u = android.view.MotionEvent.obtain(t, t + 60, android.view.MotionEvent.ACTION_UP, x, y, 0);
        try {
            v.dispatchTouchEvent(d);
            v.dispatchTouchEvent(u);
        } finally {
            d.recycle();
            u.recycle();
        }
    }

    /** − / + of the row's own impulse / pause time (its AmountView buttons). */
    static void time(boolean pause, int dir) {
        View av = inRow(pause ? "paulsestop" : "paulsecontinue");
        View b = av != null ? find(av, dir > 0 ? "btnIncrease" : "btnDecrease") : null;
        if (b != null) {
            b.performClick();
        }
        later();
    }

    /** The + / − of the right panel, for the client on the board only. */
    static void step(int what, int d) {
        TrainItem it = current();
        ProgramDataBean b = bean(it);
        if (b == null || d == 0) {
            return;
        }
        pick = what == INT2 || what == HZ2 || what == T2 ? 2 : 1;
        try {
            switch (what) {
                case INT1:
                    if (PartStrength.addSelected(it, d)) {
                        break;
                    }
                    main(it, b, d);
                    break;
                case INT2:
                    if (!second(it, b)) {
                        hint(AiText.t("Включи втория импулс с ∿.", "Turn the second impulse on with ∿."));
                        return;
                    }
                    pause(it, b, d);
                    break;
                case HZ1:
                    it.addHz(d);
                    break;
                case HZ2:
                    if (!second(it, b)) {
                        hint(AiText.t("Включи втория импулс с ∿.", "Turn the second impulse on with ∿."));
                        return;
                    }
                    it.addPauseHz(d);
                    break;
                case T1:
                    time(false, d);
                    return;
                case T2:
                    time(true, d);
                    return;
                default:
                    return;
            }
        } catch (Throwable t) {
            XemsGuard.report("FocusBoard.step", t);
        }
        refresh();
    }

    /** A ring released at {@code target} (0–100): the same path as that many steps of its + / −. */
    static void setTo(int what, int target) {
        TrainItem it = current();
        ProgramDataBean b = bean(it);
        if (b == null) {
            return;
        }
        int now = what == INT2 ? b.pauseStrenthPercent : ringLevel(it, b);
        step(what, target - now);
    }

    /** Main strength by d; with the ratio locked the second impulse follows (same ratio). */
    private static void main(TrainItem it, ProgramDataBean b, int d) {
        int m0 = b.strenth;
        int p0 = b.pauseStrenthPercent;
        if (!MusicSyncBridge.onMaStrengthDelta(it, d)) {
            it.addStrenth(d);
        }
        int m1 = b.strenth;
        if (locked && second(it, b) && m1 != m0) {
            float r = ratio(it, m0, p0);
            int p1 = Math.max(0, Math.min(100, Math.round(m1 * r)));
            if (p1 != b.pauseStrenthPercent) {
                it.addPauseStrenth(p1 - b.pauseStrenthPercent);
            }
        }
    }

    /** Second impulse's strength by d; with the ratio locked the main follows (same ratio). */
    private static void pause(TrainItem it, ProgramDataBean b, int d) {
        int m0 = b.strenth;
        int p0 = b.pauseStrenthPercent;
        it.addPauseStrenth(d);
        int p1 = b.pauseStrenthPercent;
        if (locked && p1 != p0) {
            float r = ratio(it, m0, p0);
            if (r > 0.001f) {
                int m1 = Math.max(0, Math.min(100, Math.round(p1 / r)));
                if (m1 != b.strenth && !MusicSyncBridge.onMaStrengthDelta(it, m1 - b.strenth)) {
                    it.addStrenth(m1 - b.strenth);
                }
            }
        }
    }

    /** Impulse 2 ÷ impulse 1, taken when the lock closed (kept exact while both move), else from now. */
    private static float ratio(TrainItem it, int m0, int p0) {
        Float r = RATIO.get(it);
        if (r == null) {
            r = m0 > 0 ? p0 / (float) m0 : 1f;
            RATIO.put(it, r);
        }
        return r;
    }

    /** What ring 1 stands for: the marked muscles' level, or the main strength. */
    private static int ringLevel(TrainItem it, ProgramDataBean b) {
        int[] lv = PartStrength.levels(it, b, false);
        int max = -1;
        for (int k = 0; lv != null && k < lv.length; k++) {
            if (marked(it, k)) {
                max = Math.max(max, lv[k]);
            }
        }
        return max >= 0 ? max : b.strenth;
    }

    static final class LockClick implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            locked = !locked;
            RATIO.clear();
            TrainItem it = current();
            ProgramDataBean b = bean(it);
            if (locked && b != null) {
                ratio(it, b.strenth, b.pauseStrenthPercent);
                hint(AiText.t("Съотношението е заключено: 1 и 2 се движат заедно.",
                        "Ratio locked: 1 and 2 move together."));
            }
            try {
                v.getContext().getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit().putBoolean(K_LOCK, locked)
                        .apply();
            } catch (Throwable ignored) {
            }
            paintLock(v.getContext());
        }
    }

    static final class SyncClick implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            TrainItem it = current();
            if (it == null) {
                return;
            }
            if (!com.isaigu.gymapp.wearable.DoubleImpulse.syncSecond(it, v)) {
                hint(AiText.t("Включи втория импулс с ∿ (не и в Мускули).",
                        "Turn the second impulse on with ∿ (not in Muscle)."));
                return;
            }
            RATIO.remove(it);
            pick = 2;
            later();
            refresh();
        }
    }

    private static void paintLock(Context c) {
        if (lockKey == null) {
            return;
        }
        float r = XemsUi.dp(c, 23);
        lockKey.setImageDrawable(new Padlock(locked ? XemsUi.TEXT : XemsUi.MUTED, locked));
        lockKey.setBackgroundDrawable(XemsUi.ripple(locked ? XemsUi.glow(c, XemsUi.mix(XemsUi.ACCENT, XemsUi.AMBER,
                0.5f), r) : XemsUi.rounded(XemsUi.SURFACE, r, XemsUi.STROKE, XemsUi.dp(c, 1)), XemsUi.TEXT, r));
        lockKey.setContentDescription(locked ? AiText.t("Съотношението е заключено", "Ratio locked")
                : AiText.t("Заключи съотношението 1 : 2", "Lock the 1 : 2 ratio"));
    }

    static ProgramDataBean bean(TrainItem it) {
        try {
            TrainProgram p = it != null ? it.getTrainProgram() : null;
            return p != null ? p.matchProgram() : null;
        } catch (Throwable t) {
            return null;
        }
    }

    private static int mode(TrainItem it) {
        TrainProgram p = it != null ? it.getTrainProgram() : null;
        return p != null ? p.useType : 0;
    }

    /** The second impulse runs (never in Мускули). */
    private static boolean second(TrainItem it, ProgramDataBean b) {
        return b != null && b.activePause && mode(it) != 1;
    }

    private static boolean marked(TrainItem it, int k) {
        return it != null && it.partsControl != null && k < it.partsControl.length && it.partsControl[k]
                && !off(it, k);
    }

    private static boolean off(TrainItem it, int k) {
        return it != null && it.partsDisabled != null && k < it.partsDisabled.length && it.partsDisabled[k];
    }

    // ================================================================ build

    private static View build(Context c) {
        XemsUi.init(c);
        builtPortrait = framePortrait();
        LinearLayout page = XemsUi.vertical(c);
        page.setBackgroundColor(XemsUi.BG);
        page.setClickable(true);
        int pad = XemsUi.dp(c, 6);
        page.setPadding(pad, pad, pad, pad);

        if (builtPortrait) {
            // upright (owner, 1.1.419): top bar on two lines, the cycle, the figures across the whole width, the ten
            // muscles in two rows of five under them, the controls at the bottom
            page.addView(topBar(c, true), new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT));
            LinearLayout.LayoutParams fl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1.2f);
            fl.topMargin = XemsUi.dp(c, 6);
            page.addView(figurePane(c), fl);
            LinearLayout.LayoutParams cl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f);
            cl.topMargin = XemsUi.dp(c, 8);
            page.addView(controlPane(c), cl);
        } else {
            page.addView(topBar(c, false), new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                    XemsUi.dp(c, 54)));
            LinearLayout main = XemsUi.horizontal(c);
            main.setGravity(Gravity.FILL_VERTICAL);
            LinearLayout.LayoutParams mlp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f);
            mlp.topMargin = XemsUi.dp(c, 6);
            page.addView(main, mlp);
            main.addView(bodyPane(c), new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f));
            LinearLayout.LayoutParams rlp = new LinearLayout.LayoutParams(XemsUi.dp(c, 372),
                    ViewGroup.LayoutParams.MATCH_PARENT);
            rlp.leftMargin = XemsUi.dp(c, 8);
            main.addView(controlPane(c), rlp);
        }
        shownStart = -1;
        return page;
    }

    private static View topBar(Context c, boolean upright) {
        LinearLayout bar = XemsUi.horizontal(c);
        bar.setBackgroundDrawable(XemsUi.glass(c, XemsUi.dp(c, 14)));
        bar.setPadding(XemsUi.dp(c, 6), 0, XemsUi.dp(c, 6), 0);

        HorizontalScrollView hs = new HorizontalScrollView(c);
        hs.setHorizontalScrollBarEnabled(false);
        hs.setOverScrollMode(View.OVER_SCROLL_NEVER);
        clientRow = XemsUi.horizontal(c);
        hs.addView(clientRow);
        bar.addView(hs, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));

        LinearLayout tabs = XemsUi.horizontal(c);
        tabs.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(c, 12), XemsUi.STROKE, XemsUi.dp(c, 1)));
        tabs.setPadding(XemsUi.dp(c, 3), XemsUi.dp(c, 3), XemsUi.dp(c, 3), XemsUi.dp(c, 3));
        String[] names = {AiText.t("ОСНОВЕН", "MAIN"), AiText.t("МУСКУЛИ", "MUSCLE"), AiText.t("КАРДИО", "CARDIO"),
                AiText.t("МАСАЖ", "MASSAGE")};
        for (int i = 0; i < 4; i++) {
            TextView t = XemsUi.text(c, names[i], 13.5f, XemsUi.MUTED, true);
            t.setGravity(Gravity.CENTER);
            t.setLetterSpacing(0.04f);
            t.setPadding(XemsUi.dp(c, upright ? 4 : 14), XemsUi.dp(c, 9), XemsUi.dp(c, upright ? 4 : 14), XemsUi.dp(c, 9));
            t.setSingleLine(true);
            t.setOnClickListener(new PressRow(MODE_IDS[i]));
            XemsUi.pressable(t);
            modeTabs[i] = t;
            tabs.addView(t, upright ? new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f)
                    : new LinearLayout.LayoutParams(XemsUi.dp(c, 104), ViewGroup.LayoutParams.WRAP_CONTENT));
        }
        if (!upright) {
            LinearLayout.LayoutParams tlp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT);
            tlp.leftMargin = XemsUi.dp(c, 8);
            tlp.rightMargin = XemsUi.dp(c, 8);
            bar.addView(tabs, tlp);
        }

        timeText = XemsUi.text(c, "—", upright ? 22 : 24, XemsUi.TEXT, true);
        timeText.setPadding(XemsUi.dp(c, 6), 0, XemsUi.dp(c, 8), 0);
        bar.addView(timeText);
        battText = XemsUi.text(c, "", 13, XemsUi.GO_TEXT, true);
        battText.setPadding(0, 0, XemsUi.dp(c, 8), 0);
        bar.addView(battText);

        TextView gear = XemsUi.iconButton(c, "⚙", XemsUi.SURFACE, XemsUi.TEXT, 40);
        gear.setOnClickListener(new PressRow("setting"));
        gear.setContentDescription(AiText.t("Параметри на клиента", "Client parameters"));
        bar.addView(gear);

        ImageView turn = new ImageView(c);
        int ip = XemsUi.dp(c, 9);
        turn.setPadding(ip, ip, ip, ip);
        turn.setImageDrawable(new Turn(XemsUi.TEXT, !upright));
        float tr = XemsUi.dp(c, 20);
        turn.setBackgroundDrawable(XemsUi.ripple(upright ? XemsUi.glow(c, XemsUi.ACCENT, tr)
                : XemsUi.rounded(XemsUi.SURFACE, tr, XemsUi.STROKE, XemsUi.dp(c, 1)), XemsUi.TEXT, tr));
        turn.setClickable(true);
        turn.setOnClickListener(new TurnClick());
        turn.setContentDescription(upright ? AiText.t("Хоризонтално", "Landscape") : AiText.t("Изправено", "Upright"));
        XemsUi.pressable(turn);
        LinearLayout.LayoutParams ulp = new LinearLayout.LayoutParams(XemsUi.dp(c, 40), XemsUi.dp(c, 40));
        ulp.leftMargin = XemsUi.dp(c, 6);
        bar.addView(turn, ulp);

        TextView rows = XemsUi.text(c, upright ? "☰" : "☰  " + AiText.t("Редове", "Rows"), 13.5f, XemsUi.MUTED, true);
        rows.setGravity(Gravity.CENTER);
        rows.setPadding(XemsUi.dp(c, 12), XemsUi.dp(c, 9), XemsUi.dp(c, 12), XemsUi.dp(c, 9));
        rows.setContentDescription(AiText.t("Редове", "Rows"));
        float r = XemsUi.dp(c, 12);
        rows.setBackgroundDrawable(XemsUi.ripple(XemsUi.rounded(XemsUi.SURFACE, r, XemsUi.STROKE, XemsUi.dp(c, 1)),
                XemsUi.TEXT, r));
        XemsUi.pressable(rows);
        rows.setOnClickListener(new RowsClick(true));
        LinearLayout.LayoutParams rlp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        rlp.leftMargin = XemsUi.dp(c, 6);
        bar.addView(rows, rlp);
        if (!upright) {
            return bar;
        }
        LinearLayout two = XemsUi.vertical(c);
        two.addView(bar, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, XemsUi.dp(c, 52)));
        LinearLayout.LayoutParams tlp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        tlp.topMargin = XemsUi.dp(c, 6);
        two.addView(tabs, tlp);
        return two;
    }

    /** Upright: the cycle over the figures (whole width), the ten muscles in two rows of five under them. */
    private static View figurePane(Context c) {
        LinearLayout pane = XemsUi.vertical(c);
        pane.setBackgroundDrawable(XemsUi.glass(c, XemsUi.dp(c, 18)));
        int p = XemsUi.dp(c, 8);
        pane.setPadding(p, XemsUi.dp(c, 4), p, p);
        timeline = new Timeline(c);
        pane.addView(timeline, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, XemsUi.dp(c, 46)));
        body = new AutoViews.BodyHeat(c);
        body.setOnTouchListener(new BodyTap());
        body.setContentDescription(AiText.t("Докосни мускул, за да го избереш", "Tap a muscle to pick it"));
        FrameLayout figs = new FrameLayout(c);
        figs.addView(body, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT));
        leaders = new Leaders(c);
        figs.addView(leaders, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT));
        LinearLayout.LayoutParams flp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f);
        flp.topMargin = XemsUi.dp(c, 2);
        pane.addView(figs, flp);
        for (int r = 0; r < 2; r++) {
            int[] ks = r == 0 ? LEFT : RIGHT;
            LinearLayout line = XemsUi.horizontal(c);
            for (int i = 0; i < ks.length; i++) {
                Chip ch = new Chip(c, ks[i], true);
                chips[ks[i]] = ch;
                LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f);
                lp.leftMargin = i == 0 ? 0 : XemsUi.dp(c, 5);
                line.addView(ch.view, lp);
            }
            LinearLayout.LayoutParams llp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                    XemsUi.dp(c, 58));
            llp.topMargin = XemsUi.dp(c, 6);
            pane.addView(line, llp);
        }
        return pane;
    }

    private static View bodyPane(Context c) {
        LinearLayout pane = XemsUi.horizontal(c);
        pane.setGravity(Gravity.FILL_VERTICAL);
        pane.setBackgroundDrawable(XemsUi.glass(c, XemsUi.dp(c, 18)));
        int p = XemsUi.dp(c, 8);
        pane.setPadding(p, p, p, p);
        pane.addView(chipColumn(c, LEFT), new LinearLayout.LayoutParams(XemsUi.dp(c, 168),
                ViewGroup.LayoutParams.MATCH_PARENT));
        LinearLayout mid = XemsUi.vertical(c);
        timeline = new Timeline(c);
        mid.addView(timeline, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, XemsUi.dp(c, 46)));
        body = new AutoViews.BodyHeat(c);
        body.setOnTouchListener(new BodyTap());
        body.setContentDescription(AiText.t("Докосни мускул, за да го избереш", "Tap a muscle to pick it"));
        LinearLayout.LayoutParams bodyLp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f);
        bodyLp.topMargin = XemsUi.dp(c, 4);
        mid.addView(body, bodyLp);
        LinearLayout.LayoutParams blp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f);
        blp.leftMargin = p;
        blp.rightMargin = p;
        pane.addView(mid, blp);
        pane.addView(chipColumn(c, RIGHT), new LinearLayout.LayoutParams(XemsUi.dp(c, 168),
                ViewGroup.LayoutParams.MATCH_PARENT));
        FrameLayout holder = new FrameLayout(c);
        holder.addView(pane, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT));
        leaders = new Leaders(c);
        holder.addView(leaders, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT));
        return holder;
    }

    private static View chipColumn(Context c, int[] ks) {
        LinearLayout col = XemsUi.vertical(c);
        for (int i = 0; i < ks.length; i++) {
            Chip ch = new Chip(c, ks[i], false);
            chips[ks[i]] = ch;
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f);
            lp.topMargin = i == 0 ? 0 : XemsUi.dp(c, 6);
            col.addView(ch.view, lp);
        }
        return col;
    }

    // ================================================================ upright (button)

    /** The board as it is laid out now is upright (the rows' frame is taller than wide). */
    private static boolean framePortrait() {
        FrameLayout f = frame;
        if (f != null && f.getWidth() > 0 && f.getHeight() > 0) {
            return f.getHeight() > f.getWidth();
        }
        try {
            return f != null && f.getResources().getConfiguration().orientation
                    == android.content.res.Configuration.ORIENTATION_PORTRAIT;
        } catch (Throwable t) {
            return false;
        }
    }

    private static boolean wantUpright(Context c) {
        try {
            return c.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getBoolean(K_UPRIGHT, false);
        } catch (Throwable t) {
            return false;
        }
    }

    static final class TurnClick implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            boolean up = !wantUpright(v.getContext());
            try {
                v.getContext().getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit().putBoolean(K_UPRIGHT, up).apply();
            } catch (Throwable ignored) {
            }
            tick();
        }
    }

    private static android.app.Activity activity(Context c) {
        while (c instanceof android.content.ContextWrapper) {
            if (c instanceof android.app.Activity) {
                return (android.app.Activity) c;
            }
            c = ((android.content.ContextWrapper) c).getBaseContext();
        }
        return null;
    }

    /**
     * Upright only while the board shows and the trainer asked for it; across again everywhere else. The app sizes dp
     * by the screen's width (AutoSize), so upright the kit (XemsUi: this board, the module bar, the modules' windows)
     * is held at the landscape density; the module bar shows icons only. Back across, the rows' list makes its rows
     * afresh — rows made upright had the upright size (the 1.1.310 lesson: rows of mixed sizes after a turn).
     */
    static void orient(boolean upright) {
        try {
            View r = root;
            android.app.Activity a = r != null ? activity(r.getContext()) : null;
            if (a == null) {
                return;
            }
            android.util.DisplayMetrics dm = a.getResources().getDisplayMetrics();
            if (!turned && dm.widthPixels > dm.heightPixels) {
                landDensity = dm.density;                    // across: the size every screen is made for
                landScaled = dm.scaledDensity;
            }
            if (upright) {
                if (!turned) {
                    turned = true;
                    hostOrientation = a.getRequestedOrientation();
                }
                if (landDensity > 0) {
                    XemsUi.forcedDensity = landDensity;
                    XemsUi.forcedScaled = landScaled;
                }
                if (a.getRequestedOrientation() != android.content.pm.ActivityInfo.SCREEN_ORIENTATION_SENSOR_PORTRAIT) {
                    a.setRequestedOrientation(android.content.pm.ActivityInfo.SCREEN_ORIENTATION_SENSOR_PORTRAIT);
                }
            } else if (turned) {
                turned = false;
                XemsUi.forcedDensity = 0;
                XemsUi.forcedScaled = 0;
                a.setRequestedOrientation(hostOrientation);
                H.postDelayed(new RowsAfresh(), 700);
            }
            com.isaigu.gymapp.widget.XemsNav.compact(turned);
            View side = r != null ? find(r, "rightLayout") : null;
            if (side != null) {
                side.setVisibility(turned ? View.GONE : View.VISIBLE);   // the global panel: across only
            }
        } catch (Throwable t) {
            XemsGuard.report("FocusBoard.orient", t);
        }
    }

    /** Back across: the list drops its rows and makes them again at the landscape size. */
    static final class RowsAfresh implements Runnable {
        @Override
        public void run() {
            try {
                View rv = root != null ? find(root, "recyclerView") : null;
                if (rv == null || turned) {
                    return;
                }
                Object adapter = rv.getClass().getMethod("getAdapter").invoke(rv);
                Object pool = rv.getClass().getMethod("getRecycledViewPool").invoke(rv);
                if (pool != null) {
                    pool.getClass().getMethod("clear").invoke(pool);
                }
                if (adapter != null) {
                    Class<?> ad = Class.forName("android.support.v7.widget.RecyclerView$Adapter");
                    rv.getClass().getMethod("setAdapter", ad).invoke(rv, adapter);
                }
            } catch (Throwable t) {
                XemsGuard.report("FocusBoard.rowsAfresh", t);
            }
        }
    }

    /** XemsNav: a page was opened — anything but training goes across again. */
    public static void onPage(boolean training) {
        if (!training && turned) {
            orient(false);
        }
    }

    private static boolean turned;
    private static float landDensity;
    private static float landScaled;
    private static int hostOrientation = android.content.pm.ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE;
    private static boolean builtPortrait;

    /** The frame changed shape (a turn): rebuild the board for the new shape. */
    static final class Shape implements View.OnLayoutChangeListener, Runnable {
        @Override
        public void onLayoutChange(View v, int l, int t, int r, int b, int ol, int ot, int or, int ob) {
            if (board != null && r - l > 0 && (b - t > r - l) != builtPortrait) {
                v.post(this);
            }
        }

        @Override
        public void run() {
            try {
                if (board != null && framePortrait() != builtPortrait && frame != null) {
                    frame.removeView(board);
                    board = null;
                    clientsKey = "";
                    tick();
                }
            } catch (Throwable t) {
                XemsGuard.report("FocusBoard.shape", t);
            }
        }
    }

    /** A screen with a turn arrow: to upright ({@code toUpright}) or back across. */
    static final class Turn extends Drawable {
        private final Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final boolean toUpright;

        Turn(int color, boolean toUpright) {
            this.toUpright = toUpright;
            p.setColor(color);
            p.setStyle(Paint.Style.STROKE);
            p.setStrokeCap(Paint.Cap.ROUND);
            p.setStrokeJoin(Paint.Join.ROUND);
        }

        @Override
        public void draw(Canvas c) {
            android.graphics.Rect b = getBounds();
            float w = b.width();
            float h = b.height();
            p.setStrokeWidth(w * 0.09f);
            // the device in the shape it turns to
            float dw = toUpright ? w * 0.42f : w * 0.7f;
            float dh = toUpright ? h * 0.7f : h * 0.42f;
            float dx = b.left + (w - dw) / 2f + (toUpright ? w * 0.12f : 0f);
            float dy = b.top + (h - dh) / 2f + (toUpright ? 0f : h * 0.12f);
            c.drawRoundRect(new RectF(dx, dy, dx + dw, dy + dh), w * 0.08f, w * 0.08f, p);
            // the turn arrow in the free corner
            RectF arc = new RectF(b.left + w * 0.04f, b.top + h * 0.04f, b.left + w * 0.5f, b.top + h * 0.5f);
            c.drawArc(arc, 180, 90, false, p);
            float ax = arc.centerX();
            float ay = arc.top;
            c.drawLine(ax, ay, ax - w * 0.1f, ay - h * 0.07f, p);
            c.drawLine(ax, ay, ax - w * 0.1f, ay + h * 0.07f, p);
        }

        @Override
        public void setAlpha(int a) {
            p.setAlpha(a);
        }

        @Override
        public void setColorFilter(android.graphics.ColorFilter cf) {
            p.setColorFilter(cf);
        }

        @Override
        public int getOpacity() {
            return android.graphics.PixelFormat.TRANSLUCENT;
        }
    }

    private static View controlPane(Context c) {
        LinearLayout col = XemsUi.vertical(c);
        locked = c.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getBoolean(K_LOCK, false);

        // the two intensities, the lock between them on top, "2 = 1" between them at the bottom
        LinearLayout rings = XemsUi.horizontal(c);
        rings.setGravity(Gravity.FILL_VERTICAL);
        rings.setBackgroundDrawable(XemsUi.glass(c, XemsUi.dp(c, 18)));
        rings.setPadding(XemsUi.dp(c, 6), XemsUi.dp(c, 8), XemsUi.dp(c, 6), XemsUi.dp(c, 8));
        ring1 = new Ring(c, XemsUi.ACCENT, INT1);
        ring2 = new Ring(c, XemsUi.AMBER, INT2);
        ring1Label = XemsUi.text(c, AiText.t("Интензитет 1", "Intensity 1"), 13, XemsUi.ACCENT, true);
        TextView ring2Label = XemsUi.text(c, AiText.t("Интензитет 2", "Intensity 2"), 13, XemsUi.AMBER, true);
        rings.addView(ringColumn(c, ring1, ring1Label, INT1, null),
                new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f));

        LinearLayout mid = XemsUi.vertical(c);
        mid.setGravity(Gravity.CENTER_HORIZONTAL);
        lockKey = new ImageView(c);
        int ip = XemsUi.dp(c, 11);
        lockKey.setPadding(ip, ip, ip, ip);
        lockKey.setClickable(true);
        lockKey.setOnClickListener(new LockClick());
        XemsUi.pressable(lockKey);
        mid.addView(lockKey, new LinearLayout.LayoutParams(XemsUi.dp(c, KEY), XemsUi.dp(c, KEY)));
        paintLock(c);
        View link = new View(c);
        link.setBackgroundDrawable(XemsUi.rounded(XemsUi.alpha(XemsUi.STROKE, 0xCC), XemsUi.dp(c, 1), 0, 0));
        LinearLayout.LayoutParams llp = new LinearLayout.LayoutParams(XemsUi.dp(c, 2), 0, 1f);
        llp.topMargin = XemsUi.dp(c, 6);
        llp.bottomMargin = XemsUi.dp(c, 6);
        mid.addView(link, llp);
        syncKey = XemsUi.text(c, "2=1", 13, XemsUi.AMBER, true);
        syncKey.setGravity(Gravity.CENTER);
        float kr = XemsUi.dp(c, KEY / 2f);
        syncKey.setBackgroundDrawable(XemsUi.ripple(XemsUi.rounded(XemsUi.SURFACE, kr,
                XemsUi.alpha(XemsUi.AMBER, 0x99), XemsUi.dp(c, 1)), XemsUi.AMBER, kr));
        syncKey.setContentDescription(AiText.t("Импулс 2 = импулс 1", "Impulse 2 = impulse 1"));
        syncKey.setOnClickListener(new SyncClick());
        XemsUi.pressable(syncKey);
        mid.addView(syncKey, new LinearLayout.LayoutParams(XemsUi.dp(c, KEY), XemsUi.dp(c, KEY)));
        rings.addView(mid, new LinearLayout.LayoutParams(XemsUi.dp(c, KEY), ViewGroup.LayoutParams.MATCH_PARENT));

        View[] steps2 = new View[1];
        rings.addView(ringColumn(c, ring2, ring2Label, INT2, steps2),
                new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f));
        ring2Steps = steps2[0];
        col.addView(rings, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1.25f));

        // impulse 1 | impulse 2 (pause without it)
        LinearLayout imps = XemsUi.horizontal(c);
        TextView[] v1 = new TextView[3];
        TextView[] v2 = new TextView[3];
        View[] hzRow2 = new View[1];
        imps.setGravity(Gravity.FILL_VERTICAL);
        imps.addView(impulseCard(c, AiText.t("Импулс 1", "Impulse 1"), XemsUi.ACCENT, T1, HZ1, v1, null),
                new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f));
        LinearLayout.LayoutParams i2 = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f);
        i2.leftMargin = XemsUi.dp(c, 8);
        imps.addView(impulseCard(c, AiText.t("Импулс 2", "Impulse 2"), XemsUi.AMBER, T2, HZ2, v2, hzRow2), i2);
        imp1Val = v1[1];
        hz1Val = v1[2];
        imp2Title = v2[0];
        imp2Val = v2[1];
        hz2Val = v2[2];
        hz2Row = hzRow2[0];
        LinearLayout.LayoutParams ilp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f);
        ilp.topMargin = XemsUi.dp(c, 8);
        col.addView(imps, ilp);

        // ∿ · ▶ · ■
        LinearLayout keys = XemsUi.horizontal(c);
        keys.setGravity(Gravity.FILL_VERTICAL);
        float r = XemsUi.dp(c, 16);
        waveKey = XemsUi.text(c, "∿", 34, XemsUi.AMBER, true);
        waveKey.setGravity(Gravity.CENTER);
        waveKey.setOnClickListener(new PressRow("save"));
        waveKey.setContentDescription(AiText.t("Втори импулс", "Second impulse"));
        XemsUi.pressable(waveKey);
        keys.addView(waveKey, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f));

        startKey = XemsUi.horizontal(c);
        startKey.setGravity(Gravity.CENTER);
        startIcon = new ImageView(c);
        startKey.addView(startIcon, new LinearLayout.LayoutParams(XemsUi.dp(c, 30), XemsUi.dp(c, 30)));
        startLabel = XemsUi.text(c, "", 17, 0xFFFFFFFF, true);
        startLabel.setPadding(XemsUi.dp(c, 10), 0, 0, 0);
        startKey.addView(startLabel);
        startKey.setClickable(true);
        startKey.setOnClickListener(new PressRow("startpaulse"));
        XemsUi.pressable(startKey);
        LinearLayout.LayoutParams slp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1.7f);
        slp.leftMargin = XemsUi.dp(c, 8);
        keys.addView(startKey, slp);

        FrameLayout stop = new FrameLayout(c);
        GradientDrawable sg = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM,
                new int[] {XemsUi.mix(XemsUi.DANGER, 0xFFFFFFFF, 0.08f), XemsUi.mix(XemsUi.DANGER, 0xFF000000, 0.25f)});
        sg.setCornerRadius(r);
        stop.setBackgroundDrawable(XemsUi.ripple(sg, 0xFFFFFFFF, r));
        ImageView si = new ImageView(c);
        si.setImageDrawable(new XemsIcon(XemsIcon.STOP, 0xFFFFFFFF));
        stop.addView(si, new FrameLayout.LayoutParams(XemsUi.dp(c, 26), XemsUi.dp(c, 26), Gravity.CENTER));
        stop.setClickable(true);
        stop.setOnClickListener(new PressRow("stop"));
        stop.setContentDescription(AiText.t("Стоп", "Stop"));
        XemsUi.pressable(stop);
        LinearLayout.LayoutParams stl = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f);
        stl.leftMargin = XemsUi.dp(c, 8);
        keys.addView(stop, stl);

        LinearLayout.LayoutParams klp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                XemsUi.dp(c, 78));
        klp.topMargin = XemsUi.dp(c, 8);
        col.addView(keys, klp);
        return col;
    }

    /** One size for every − / + of the panel (owner, 1.1.415: the intensity ones). */
    static final int KEY = 46;

    private static View ringColumn(Context c, Ring ring, TextView label, int what, View[] stepsOut) {
        LinearLayout col = XemsUi.vertical(c);
        col.setGravity(Gravity.CENTER_HORIZONTAL);
        label.setGravity(Gravity.CENTER);
        col.addView(label, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT));
        LinearLayout.LayoutParams rlp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f);
        rlp.topMargin = XemsUi.dp(c, 2);
        col.addView(ring, rlp);
        View steps = stepper(c, what);
        LinearLayout.LayoutParams slp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        slp.topMargin = XemsUi.dp(c, 2);
        col.addView(steps, slp);
        if (stepsOut != null) {
            stepsOut[0] = steps;
        }
        return col;
    }

    /** Round − and + (hold = repeat, faster the longer), the one size of the panel. */
    private static LinearLayout stepper(Context c, int what) {
        LinearLayout row = XemsUi.horizontal(c);
        row.addView(key(c, "−", what, -1));
        View gap = new View(c);
        row.addView(gap, new LinearLayout.LayoutParams(XemsUi.dp(c, 22), 1));
        row.addView(key(c, "+", what, +1));
        return row;
    }

    private static TextView key(Context c, String glyph, int what, int dir) {
        TextView k = XemsUi.iconButton(c, glyph, XemsUi.SURFACE, XemsUi.TEXT, KEY);
        XemsUi.repeatOnHold(k, new Step(what), dir);
        return k;
    }

    /** out = {title, time value, Hz value}; hzOut = the Hz line (hidden without a second impulse). */
    private static View impulseCard(Context c, String title, int tint, int timeWhat, int hzWhat, TextView[] out,
            View[] hzOut) {
        LinearLayout card = XemsUi.vertical(c);
        card.setGravity(Gravity.CENTER_HORIZONTAL);
        card.setBackgroundDrawable(XemsUi.glass(c, XemsUi.dp(c, 16)));
        card.setGravity(Gravity.CENTER);
        card.setPadding(XemsUi.dp(c, 8), XemsUi.dp(c, 7), XemsUi.dp(c, 8), XemsUi.dp(c, 8));
        TextView t = XemsUi.text(c, title, 13, tint, true);
        card.addView(t);

        LinearLayout tr = XemsUi.horizontal(c);
        tr.setGravity(Gravity.CENTER);
        TextView v = XemsUi.text(c, "—", 24, tint, true);
        v.setGravity(Gravity.CENTER);
        tr.addView(key(c, "−", timeWhat, -1));
        tr.addView(v, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        tr.addView(key(c, "+", timeWhat, +1));
        LinearLayout.LayoutParams tlp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        tlp.topMargin = XemsUi.dp(c, 4);
        card.addView(tr, tlp);

        LinearLayout hr = XemsUi.horizontal(c);
        hr.setGravity(Gravity.CENTER);
        TextView hz = XemsUi.text(c, "—", 18, XemsUi.TEXT, true);
        hz.setGravity(Gravity.CENTER);
        hr.addView(key(c, "−", hzWhat, -1));
        hr.addView(hz, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        hr.addView(key(c, "+", hzWhat, +1));
        LinearLayout.LayoutParams hlp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        hlp.topMargin = XemsUi.dp(c, 6);
        card.addView(hr, hlp);
        out[0] = t;
        out[1] = v;
        out[2] = hz;
        if (hzOut != null) {
            hzOut[0] = hr;
        }
        return card;
    }

    // ================================================================ refresh

    private static void startLoop() {
        if (!looping) {
            looping = true;
            H.post(REFRESH);
        }
    }

    static final class Refresh implements Runnable {
        @Override
        public void run() {
            if (!isShowing()) {
                looping = false;
                return;
            }
            refresh();
            H.postDelayed(this, REFRESH_MS);
        }
    }

    static final class Later implements Runnable {
        @Override
        public void run() {
            refresh();
        }
    }

    private static void later() {
        H.postDelayed(new Later(), 120);
        H.postDelayed(new Later(), 450);
    }

    static void refresh() {
        try {
            if (board == null) {
                return;
            }
            Context c = board.getContext();
            List<TrainItem> list = clients();
            TrainItem it = current();
            fillClients(c, list, it);
            ProgramDataBean b = bean(it);
            if (it == null || b == null) {
                return;
            }
            View row = rowAt(position(it), true);
            int mode = mode(it);
            for (int i = 0; i < 4; i++) {
                boolean sel = i == mode;
                TextView t = modeTabs[i];
                if (t == null) {
                    continue;
                }
                Object was = t.getTag();
                if (!(was instanceof Boolean) || ((Boolean) was) != sel) {
                    t.setTag(sel);
                    float r = XemsUi.dp(c, 10);
                    t.setTextColor(sel ? XemsUi.TEXT : XemsUi.MUTED);
                    t.setBackgroundDrawable(XemsUi.ripple(sel ? XemsUi.glow(c, XemsUi.ACCENT, r)
                            : XemsUi.rounded(0x00000000, r, 0, 0), XemsUi.TEXT, r));
                }
            }
            timeText.setText(textOf(row, "time", "—"));
            String batt = textOf(row, "batteryValueTextView", "");
            battText.setText(it.data != null && !it.data.connected ? AiText.t("няма връзка", "offline")
                    : batt.length() > 0 ? "▮ " + batt : "");
            battText.setTextColor(it.data != null && !it.data.connected ? XemsUi.DANGER : XemsUi.GO_TEXT);

            boolean two = second(it, b);
            boolean run = running(it);
            long[] clk = run ? com.isaigu.gymapp.train.model.SoftRamp.clock(it) : null;
            // which impulse the muscles show: the live phase while running, else the ring last touched
            int shown;
            if (clk != null) {
                shown = clk[0] == 1L ? 1 : two ? 2 : 0;
            } else {
                shown = pick == 2 && two ? 2 : 1;
            }
            shownTint = shown == 2 ? XemsUi.AMBER : shown == 1 ? XemsUi.ACCENT : XemsUi.MUTED;
            if (timeline != null) {
                timeline.set(run, clk, b.pulseContinue, b.pulsePause, two);
            }

            int[] main = PartStrength.levels(it, b, false);
            int[] sec = two ? PartStrength.levels(it, b, true) : null;
            int[] lv = shown == 2 && sec != null ? sec : main;
            boolean anyMark = false;
            int markLevel = 0;
            double[] prog = new double[AutoModel.CHANNELS];
            boolean[] dis = new boolean[AutoModel.CHANNELS];
            for (int k = 0; k < AutoModel.CHANNELS; k++) {
                int level = lv != null && k < lv.length ? lv[k] : 0;
                boolean m = marked(it, k);
                if (m) {
                    anyMark = true;
                    markLevel = Math.max(markLevel, main != null && k < main.length ? main[k] : 0);
                }
                dis[k] = off(it, k);
                prog[k] = Math.min(1.25, level / 60.0);
                if (chips[k] != null) {
                    // marked: 1st tap red = the main impulse under control, 2nd tap yellow = the second one;
                    // unmarked: the impulse on the screen (cyan / yellow)
                    boolean yel = m && PartPick.isYellow(k);
                    int cl = level;
                    int ct = shownTint;
                    if (yel) {
                        cl = sec != null && k < sec.length ? sec[k] : 0;
                        ct = XemsUi.AMBER;
                    } else if (m) {
                        cl = main != null && k < main.length ? main[k] : 0;
                        ct = XemsUi.DANGER;
                    }
                    chips[k].set(cl, ct, m, yel, dis[k]);
                }
            }
            if (body != null) {
                if (sexOf != it) {
                    sexOf = it;
                    try {
                        AiProfile p = AiProfile.of(it);
                        sex = p != null && p.sex != null ? p.sex : AiModel.Sex.MALE;
                    } catch (Throwable t) {
                        sex = AiModel.Sex.MALE;
                    }
                }
                body.set(sex, prog, null, dis, null);
                if (leaders != null) {
                    leaders.invalidate();
                }
            }

            ring1Label.setText(anyMark ? AiText.t("Избрани мускули", "Selected muscles")
                    : AiText.t("Интензитет 1", "Intensity 1"));
            ring1.set(anyMark ? markLevel : b.strenth, true, run && shown == 1);
            ring2.set(b.pauseStrenthPercent, two, run && shown == 2);
            ring2Steps.setAlpha(two ? 1f : 0.35f);
            lockKey.setAlpha(two ? 1f : 0.35f);
            syncKey.setAlpha(two ? 1f : 0.35f);
            imp1Val.setText(b.pulseContinue + " s");
            hz1Val.setText(b.hz + " Hz");
            imp2Title.setText(two ? AiText.t("Импулс 2", "Impulse 2") : AiText.t("Пауза", "Pause"));
            imp2Title.setTextColor(two ? XemsUi.AMBER : XemsUi.MUTED);
            imp2Val.setText(b.pulsePause + " s");
            imp2Val.setTextColor(two ? XemsUi.AMBER : XemsUi.MUTED);
            hz2Val.setText(b.pauseHz + " Hz");
            hz2Row.setVisibility(two ? View.VISIBLE : View.INVISIBLE);

            float r = XemsUi.dp(c, 16);
            boolean musc = mode == 1;
            Object wt = waveKey.getTag();
            String wkey = (two ? "on" : "off") + (musc ? "m" : "");
            if (!wkey.equals(wt)) {
                waveKey.setTag(wkey);
                waveKey.setTextColor(two ? XemsUi.TEXT : XemsUi.AMBER);
                waveKey.setBackgroundDrawable(XemsUi.ripple(two ? XemsUi.glow(c, XemsUi.AMBER, r) : XemsUi.glass(c, r),
                        XemsUi.TEXT, r));
                waveKey.setAlpha(musc ? 0.35f : 1f);
            }
            int st = run ? 1 : 0;
            if (st != shownStart) {
                shownStart = st;
                int col = st == 1 ? XemsUi.AMBER : XemsUi.GO;
                GradientDrawable g = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM,
                        new int[] {XemsUi.mix(col, 0xFFFFFFFF, 0.12f), XemsUi.mix(col, 0xFF000000, 0.22f)});
                g.setCornerRadius(r);
                g.setStroke(XemsUi.dp(c, 1), XemsUi.alpha(XemsUi.mix(col, 0xFFFFFFFF, 0.35f), 0xAA));
                startKey.setBackgroundDrawable(XemsUi.ripple(g, 0xFFFFFFFF, r));
                startIcon.setImageDrawable(new XemsIcon(st == 1 ? XemsIcon.PAUSE : XemsIcon.PLAY, 0xFFFFFFFF));
                startLabel.setText(st == 1 ? AiText.t("Пауза", "Pause") : AiText.t("Старт", "Start"));
            }
        } catch (Throwable t) {
            XemsGuard.report("FocusBoard.refresh", t);
        }
    }

    private static boolean running(TrainItem it) {
        return it != null && it.data != null && it.data.start;
    }

    private static void fillClients(Context c, List<TrainItem> list, TrainItem cur) {
        if (clientRow == null) {
            return;
        }
        StringBuilder key = new StringBuilder();
        for (int i = 0; i < list.size(); i++) {
            TrainItem it = list.get(i);
            key.append(System.identityHashCode(it)).append(':').append(name(it)).append(':')
                    .append(it == cur).append(':').append(running(it)).append(':')
                    .append(it.data != null && it.data.connected).append(';');
        }
        String k = key.toString();
        if (k.equals(clientsKey)) {
            return;
        }
        clientsKey = k;
        clientRow.removeAllViews();
        for (int i = 0; i < list.size(); i++) {
            TrainItem it = list.get(i);
            clientRow.addView(clientChip(c, it, it == cur));
        }
        TextView add = XemsUi.iconButton(c, "+", XemsUi.SURFACE, XemsUi.ACCENT, 40);
        add.setContentDescription(AiText.t("Добави клиент", "Add client"));
        add.setOnClickListener(new AddClick());
        LinearLayout.LayoutParams alp = new LinearLayout.LayoutParams(XemsUi.dp(c, 40), XemsUi.dp(c, 40));
        alp.leftMargin = XemsUi.dp(c, 4);
        clientRow.addView(add, alp);
    }

    private static View clientChip(Context c, TrainItem it, boolean sel) {
        LinearLayout chip = XemsUi.horizontal(c);
        chip.setPadding(XemsUi.dp(c, 5), XemsUi.dp(c, 4), XemsUi.dp(c, 14), XemsUi.dp(c, 4));
        float r = XemsUi.dp(c, 22);
        chip.setBackgroundDrawable(XemsUi.ripple(sel ? XemsUi.glow(c, XemsUi.ACCENT, r)
                : XemsUi.rounded(XemsUi.SURFACE, r, XemsUi.STROKE, XemsUi.dp(c, 1)), XemsUi.TEXT, r));
        String n = name(it);
        View photo = photo(c, it, n);
        chip.addView(photo, new LinearLayout.LayoutParams(XemsUi.dp(c, 34), XemsUi.dp(c, 34)));
        TextView t = XemsUi.text(c, n, 15, sel ? XemsUi.TEXT : XemsUi.MUTED, sel);
        t.setPadding(XemsUi.dp(c, 8), 0, XemsUi.dp(c, 6), 0);
        t.setSingleLine(true);
        chip.addView(t);
        View dot = new View(c);
        GradientDrawable d = new GradientDrawable();
        d.setShape(GradientDrawable.OVAL);
        boolean conn = it.data != null && it.data.connected;
        d.setColor(!conn ? XemsUi.DANGER : running(it) ? XemsUi.GO_TEXT : XemsUi.HINT);
        dot.setBackgroundDrawable(d);
        chip.addView(dot, new LinearLayout.LayoutParams(XemsUi.dp(c, 8), XemsUi.dp(c, 8)));
        chip.setClickable(true);
        chip.setOnClickListener(new FocusClick(it));
        XemsUi.pressable(chip);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                XemsUi.dp(c, 42));
        lp.rightMargin = XemsUi.dp(c, 6);
        chip.setLayoutParams(lp);
        return chip;
    }

    /** The photo the row shows (when the row is laid out), else the initial in a disc. */
    private static View photo(Context c, TrainItem it, String n) {
        try {
            View row = rowAt(position(it), false);
            View icon = row != null ? find(row, "userIcon") : null;
            Drawable src = icon instanceof ImageView ? ((ImageView) icon).getDrawable() : null;
            Drawable.ConstantState cs = src != null ? src.getConstantState() : null;
            if (cs != null) {
                ImageView iv = new ImageView(c);
                iv.setScaleType(ImageView.ScaleType.CENTER_CROP);
                iv.setImageDrawable(cs.newDrawable(c.getResources()));
                iv.setClipToOutline(true);
                GradientDrawable mask = new GradientDrawable();
                mask.setShape(GradientDrawable.OVAL);
                mask.setColor(XemsUi.CARD);
                iv.setBackgroundDrawable(mask);
                return iv;
            }
        } catch (Throwable ignored) {
        }
        TextView t = XemsUi.text(c, n.length() > 0 ? n.substring(0, 1).toUpperCase() : "?", 15, XemsUi.TEXT, true);
        t.setGravity(Gravity.CENTER);
        GradientDrawable g = new GradientDrawable();
        g.setShape(GradientDrawable.OVAL);
        g.setColor(XemsUi.alpha(XemsUi.ACCENT, 0x40));
        g.setStroke(XemsUi.dp(c, 1), XemsUi.ACCENT);
        t.setBackgroundDrawable(g);
        return t;
    }

    private static String name(TrainItem it) {
        try {
            String n = it.data != null && it.data.trainUser != null ? it.data.trainUser.name : null;
            if (n == null || n.trim().length() == 0) {
                n = it.data != null ? it.data.deviceName : null;
            }
            return n != null ? n.trim() : "";
        } catch (Throwable t) {
            return "";
        }
    }

    private static String textOf(View row, String id, String def) {
        View v = row != null ? find(row, id) : null;
        if (v instanceof TextView) {
            CharSequence s = ((TextView) v).getText();
            return s != null ? s.toString() : def;
        }
        return def;
    }

    // ================================================================ listeners

    static final class PressRow implements View.OnClickListener {
        private final String id;

        PressRow(String id) {
            this.id = id;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            press(id);
        }
    }

    static final class Step implements XemsUi.OnStep {
        private final int what;

        Step(int what) {
            this.what = what;
        }

        @Override
        public void onStep(int direction) {
            step(what, direction);
        }
    }

    static final class FocusClick implements View.OnClickListener {
        private final TrainItem item;

        FocusClick(TrainItem item) {
            this.item = item;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            focus = item;
            sexOf = null;
            rowAt(position(item), true);
            later();
            refresh();
        }
    }

    /** "+": the list's own empty slot ("Добави") — brought into view, then pressed. */
    static final class AddClick implements View.OnClickListener, Runnable {
        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            try {
                TrainItemManager m = com.isaigu.gymapp.wearable.WearableSyncHelper.getItemManager();
                List<TrainItem> all = m != null ? m.getItemList() : null;
                if (all == null) {
                    return;
                }
                for (int i = all.size() - 1; i >= 0; i--) {
                    TrainItem it = all.get(i);
                    if (it == null || it.isEmpty()) {
                        rowAt(i, true);
                        addPos = i;
                        H.postDelayed(this, 160);
                        return;
                    }
                }
                hint(AiText.t("Няма свободно място за клиент.", "No free slot for a client."));
            } catch (Throwable t) {
                XemsGuard.report("FocusBoard.add", t);
            }
        }

        private int addPos = -1;

        @Override
        public void run() {
            View row = rowAt(addPos, false);
            View b = row != null ? find(row, "typeButton") : null;
            if (b != null) {
                b.performClick();
            } else if (row != null) {
                row.performClick();
            }
        }
    }

    static void chipClick(int k) {
        View h = root != null ? find(root, "buwei" + (k + 1)) : null;
        if (h != null) {
            h.performClick();
        }
        later();
    }

    static final class ChipClick implements View.OnClickListener {
        private final int k;

        ChipClick(int k) {
            this.k = k;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            chipClick(k);
        }
    }

    /**
     * A muscle chip under the finger: a tap marks it (the header's icon, PartPick); a sideways slide is the channel's
     * own slider in the impulse the chips show — relative to where the finger went down (no jump), right = more,
     * sent on release exactly as the row's channel bar sends it (PartStrength.bar: both impulses keep their ratio,
     * yellow = the second alone).
     */
    static final class ChipTouch implements View.OnTouchListener {
        private final Chip chip;
        private float x0;
        private float y0;
        private int start;
        private boolean sliding;
        private boolean refused;

        ChipTouch(Chip chip) {
            this.chip = chip;
        }

        @Override
        public boolean onTouch(View v, android.view.MotionEvent e) {
            float slop = XemsUi.dp(v.getContext(), 10);
            switch (e.getActionMasked()) {
                case android.view.MotionEvent.ACTION_DOWN:
                    x0 = e.getRawX();
                    y0 = e.getRawY();
                    start = chip.level;
                    sliding = false;
                    refused = false;
                    v.animate().scaleX(0.97f).scaleY(0.97f).setDuration(70).start();
                    return true;
                case android.view.MotionEvent.ACTION_MOVE: {
                    float dx = e.getRawX() - x0;
                    float dy = e.getRawY() - y0;
                    if (!sliding && !refused && Math.abs(dx) > slop && Math.abs(dx) > Math.abs(dy)) {
                        if (chip.off || MusicSyncBridge.shouldBlockManualControls()) {
                            refused = true;
                            hint(chip.off ? AiText.t("Мускулът е изключен.", "The muscle is off.")
                                    : AiText.t("Музиката държи силата сега.", "Music holds the strength now."));
                        } else {
                            sliding = true;
                            x0 = e.getRawX();
                            if (v.getParent() != null) {
                                v.getParent().requestDisallowInterceptTouchEvent(true);
                            }
                            XemsUi.haptic(v);
                        }
                    }
                    if (sliding) {
                        float span = Math.max(1f, v.getWidth() * 1.2f);
                        int val = Math.max(0, Math.min(chip.cap, start + Math.round((e.getRawX() - x0) / span * 100f)));
                        if (val != chip.dragValue) {
                            if (val % 10 == 0) {
                                XemsUi.haptic(v);
                            }
                            chip.dragValue = val;
                            chip.repaint();
                            if (leaders != null) {
                                leaders.invalidate();
                            }
                        }
                    }
                    return true;
                }
                case android.view.MotionEvent.ACTION_UP: {
                    v.animate().scaleX(1f).scaleY(1f).setDuration(120).start();
                    if (sliding) {
                        int val = chip.dragValue;
                        sliding = false;
                        if (val >= 0 && val != start) {
                            channel(chip.k, val);
                        }
                        chip.dragValue = -1;
                        refresh();
                    } else if (!refused && Math.abs(e.getRawX() - x0) <= slop && Math.abs(e.getRawY() - y0) <= slop) {
                        XemsUi.haptic(v);
                        chipClick(chip.k);
                    }
                    return true;
                }
                case android.view.MotionEvent.ACTION_CANCEL:
                    v.animate().scaleX(1f).scaleY(1f).setDuration(120).start();
                    chip.dragValue = -1;
                    sliding = false;
                    refresh();
                    return true;
                default:
                    return true;
            }
        }
    }

    /**
     * Channel {@code k} to the real strength {@code target} in the impulse the chips show: its share (percent of the
     * impulse) is worked out from it and sent the row's channel-bar way (both impulses keep their ratio).
     */
    static void channel(int k, int target) {
        TrainItem it = current();
        ProgramDataBean b = bean(it);
        if (b == null || b.strenthBean == null || b.strenthBean.buwei == null || k >= b.strenthBean.buwei.length) {
            return;
        }
        try {
            int part = b.strenthBean.buwei[k];
            int stored;
            if (chips[k] != null && chips[k].tint == XemsUi.AMBER) {
                int[] s = PartStrength.levels(it, b, true);
                int now = s != null && k < s.length ? s[k] : 0;
                stored = now > 0 ? Math.round(part * target / (float) now)
                        : b.pauseStrenthPercent > 0 ? Math.round(target * 100f / b.pauseStrenthPercent) : part;
            } else {
                stored = b.strenth > 0 ? (int) Math.ceil(target * 100.0 / b.strenth) : part;
            }
            stored = Math.max(0, Math.min(100, stored));
            PartStrength.bar(chips[k] != null ? chips[k].view : null, it.getTrainProgram(), b, k, stored);
            it.addAllPartValue(0, true);            // nothing added: just send and refresh the row
        } catch (Throwable t) {
            XemsGuard.report("FocusBoard.channel", t);
        }
        refresh();
    }

    /** A tap on a muscle of the figures marks it, like its chip (a slide there does nothing). */
    static final class BodyTap implements View.OnTouchListener {
        private float x0;
        private float y0;

        @Override
        public boolean onTouch(View v, android.view.MotionEvent e) {
            int a = e.getActionMasked();
            if (a == android.view.MotionEvent.ACTION_DOWN) {
                x0 = e.getX();
                y0 = e.getY();
                return true;
            }
            if (a == android.view.MotionEvent.ACTION_UP) {
                float slop = XemsUi.dp(v.getContext(), 12);
                if (Math.abs(e.getX() - x0) > slop || Math.abs(e.getY() - y0) > slop || body == null) {
                    return true;
                }
                int z = body.zoneAt(e.getX(), e.getY(), XemsUi.dp(v.getContext(), 16));
                if (z >= 0 && z < AutoModel.CHANNELS) {
                    XemsUi.haptic(v);
                    Chip ch = chips[z];
                    if (ch != null) {
                        ch.view.animate().scaleX(1.06f).scaleY(1.06f).setDuration(90).withEndAction(new Unpop(ch.view))
                                .start();
                    }
                    chipClick(z);
                }
                return true;
            }
            return true;
        }
    }

    static final class Unpop implements Runnable {
        private final View v;

        Unpop(View v) {
            this.v = v;
        }

        @Override
        public void run() {
            v.animate().scaleX(1f).scaleY(1f).setDuration(140).start();
        }
    }

    // ================================================================ views

    /**
     * A muscle on the side of the figures: icon, name, the channel's real strength in the impulse shown (number and
     * bar in that impulse's colour: cyan = 1, yellow = 2); marked = 1st tap red (the main impulse, its level), 2nd tap yellow (the second impulse, its level).
     */
    static final class Chip {
        final LinearLayout view;
        final TextView value;
        final TextView name;
        final View bar;
        final View barFill;
        private String shown = "";
        boolean sel;
        boolean yellow;
        boolean off;
        final int k;
        /** While the finger slides the chip: the value under it (−1 = not sliding). */
        int dragValue = -1;
        int level;
        int tint = XemsUi.ACCENT;
        /** The most the slide reaches: the impulse's own strength (a share is at most 100 % of it). */
        int cap = 100;

        Chip(Context c, int k, boolean compact) {
            view = XemsUi.horizontal(c);
            view.setPadding(XemsUi.dp(c, compact ? 7 : 8), XemsUi.dp(c, 4), XemsUi.dp(c, compact ? 7 : 10),
                    XemsUi.dp(c, 4));
            this.k = k;
            view.setClickable(true);
            view.setOnTouchListener(new ChipTouch(this));
            view.setOnClickListener(new ChipClick(k));      // accessibility "click"; touches go through ChipTouch

            FrameLayout disc = new FrameLayout(c);
            GradientDrawable dg = new GradientDrawable();
            dg.setShape(GradientDrawable.OVAL);
            dg.setColor(XemsUi.SURFACE);
            dg.setStroke(XemsUi.dp(c, 1), XemsUi.mix(XemsUi.STROKE, XemsUi.ACCENT, 0.35f));
            disc.setBackgroundDrawable(dg);
            int ic = compact ? 0 : c.getResources().getIdentifier(ICONS[k], "mipmap", c.getPackageName());
            if (ic != 0) {
                ImageView iv = new ImageView(c);
                iv.setImageResource(ic);
                iv.setScaleType(ImageView.ScaleType.FIT_CENTER);
                int p = XemsUi.dp(c, 6);
                iv.setPadding(p, p, p, p);
                disc.addView(iv, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                        ViewGroup.LayoutParams.MATCH_PARENT));
            }
            if (!compact) {                    // upright: two rows of five, name and value only
                view.addView(disc, new LinearLayout.LayoutParams(XemsUi.dp(c, 40), XemsUi.dp(c, 40)));
            }

            LinearLayout col = XemsUi.vertical(c);
            col.setPadding(XemsUi.dp(c, compact ? 0 : 8), 0, 0, 0);
            name = XemsUi.text(c, AutoUi.zoneNames()[k], compact ? 13 : 14, XemsUi.TEXT, true);
            name.setSingleLine(true);
            col.addView(name);
            value = XemsUi.text(c, "", 15, XemsUi.ACCENT, true);
            value.setPadding(0, XemsUi.dp(c, 2), 0, XemsUi.dp(c, 4));
            col.addView(value);
            FrameLayout track = new FrameLayout(c);
            track.setBackgroundDrawable(XemsUi.rounded(XemsUi.alpha(XemsUi.STROKE, 0xAA), XemsUi.dp(c, 2), 0, 0));
            barFill = new View(c);
            bar = track;
            track.addView(barFill, new FrameLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT));
            col.addView(track, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, XemsUi.dp(c, 4)));
            view.addView(col, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            view.setGravity(Gravity.CENTER_VERTICAL);
        }

        void set(int level, int tint, boolean sel, boolean yellow, boolean off) {
            this.level = level;
            this.tint = tint;
            this.sel = sel;
            this.yellow = yellow;
            this.off = off;
            TrainItem it = focus;
            ProgramDataBean b = bean(it);
            cap = b == null ? 100 : tint == XemsUi.AMBER ? Math.max(level, b.pauseStrenthPercent) : b.strenth;
            repaint();
        }

        void repaint() {
            boolean sliding = dragValue >= 0;
            int lv = sliding ? dragValue : level;
            String key = lv + ":" + tint + ":" + sel + ":" + yellow + ":" + off + ":" + sliding;
            if (key.equals(shown)) {
                return;
            }
            shown = key;
            Context c = view.getContext();
            float r = XemsUi.dp(c, 14);
            int mark = tint;
            view.setBackgroundDrawable(XemsUi.ripple(sel || sliding ? XemsUi.glow(c, mark, r)
                    : XemsUi.rounded(XemsUi.alpha(XemsUi.SURFACE, 0xCC), r, XemsUi.alpha(XemsUi.STROKE, 0xCC),
                    XemsUi.dp(c, 1)), XemsUi.TEXT, r));
            view.setAlpha(off ? 0.4f : 1f);
            value.setText(off ? AiText.t("изкл.", "off") : lv + " %");
            value.setTextColor(tint);
            barFill.setBackgroundDrawable(XemsUi.rounded(tint, XemsUi.dp(c, 2), 0, 0));
            int w = bar.getWidth();
            ViewGroup.LayoutParams lp = barFill.getLayoutParams();
            lp.width = w > 0 ? Math.round(w * Math.max(0, Math.min(100, lv)) / 100f) : 0;
            barFill.setLayoutParams(lp);
            if (w <= 0) {
                shown = "";                     // not laid out yet: once more on the next refresh
            }
        }
    }

    /**
     * Leader lines (the mock-up): from each muscle chip's inner edge, a short level run, then straight to the
     * muscle on the figure — front muscles to the front figure (its outer half on the chips' side), back muscles to
     * the back one — ending in a dot. A marked muscle's line is lit in its colour (green / yellow); an off one is faint.
     * Draws only; touches go through to the chips.
     */
    static final class Leaders extends View {
        private final Paint line = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint halo = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint dot = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final android.graphics.Path path = new android.graphics.Path();
        private final int[] me = new int[2];
        private final int[] at = new int[2];
        private final float[] pt = new float[2];

        Leaders(Context c) {
            super(c);
            line.setStyle(Paint.Style.STROKE);
            line.setStrokeJoin(Paint.Join.ROUND);
            line.setStrokeCap(Paint.Cap.ROUND);
            halo.setStyle(Paint.Style.STROKE);
            halo.setStrokeJoin(Paint.Join.ROUND);
            halo.setStrokeCap(Paint.Cap.ROUND);
            dot.setStyle(Paint.Style.FILL);
            setClickable(false);
            setFocusable(false);
        }

        @Override
        protected void onDraw(Canvas c) {
            AutoViews.BodyHeat b = body;
            if (b == null || b.getWidth() <= 0) {
                return;
            }
            getLocationInWindow(me);
            b.getLocationInWindow(at);
            float bx = at[0] - me[0];
            float by = at[1] - me[1];
            float knee = XemsUi.dp(getContext(), 18);
            boolean pulsing = false;
            float w1 = XemsUi.dp(getContext(), 1.4f);
            for (int side = 0; side < 2; side++) {
                int[] ks = side == 0 ? LEFT : RIGHT;
                for (int k : ks) {
                    Chip ch = chips[k];
                    if (ch == null || ch.view.getWidth() <= 0 || !b.anchor(side, k, side, pt)) {
                        continue;
                    }
                    ch.view.getLocationInWindow(at);
                    float y0 = at[1] - me[1] + ch.view.getHeight() / 2f;
                    float x0 = side == 0 ? at[0] - me[0] + ch.view.getWidth() : at[0] - me[0];
                    float x1 = side == 0 ? x0 + knee : x0 - knee;
                    boolean noLine = builtPortrait;          // upright the chips are under the figures: points only
                    float ex = bx + pt[0];
                    float ey = by + pt[1];
                    int col = ch.tint;
                    int a = ch.off ? 0x30 : ch.sel ? 0xF0 : 0x8C;
                    path.reset();
                    path.moveTo(x0, y0);
                    path.lineTo(x1, y0);
                    path.lineTo(ex, ey);
                    if (!noLine) {
                        halo.setStrokeWidth(w1 * (ch.sel ? 5f : 3.5f));
                        halo.setColor(XemsUi.alpha(col, ch.off ? 0x08 : ch.sel ? 0x40 : 0x1C));
                        c.drawPath(path, halo);
                        line.setStrokeWidth(ch.sel ? w1 * 1.6f : w1);
                        line.setColor(XemsUi.alpha(col, a));
                        c.drawPath(path, line);
                    }
                    float rr = XemsUi.dp(getContext(), ch.sel ? 5 : 3.5f);
                    dot.setColor(XemsUi.alpha(col, ch.off ? 0x40 : 0x50));
                    c.drawCircle(ex, ey, rr * 2.1f, dot);
                    dot.setColor(XemsUi.alpha(ch.off ? col : 0xFFFFFFFF, ch.off ? 0x60 : 0xFF));
                    c.drawCircle(ex, ey, rr, dot);
                    dot.setColor(XemsUi.alpha(col, a));
                    if (!noLine) {
                        c.drawCircle(x0, y0, w1 * 1.8f, dot);
                    }
                    if (ch.sel && !ch.off) {
                        // marked = picked for control: a ring breathes out of the point
                        double ph = (android.os.SystemClock.uptimeMillis() % 1400L) / 1400.0;
                        halo.setStrokeWidth(w1 * 1.4f);
                        halo.setColor(XemsUi.alpha(col, (int) (0xC0 * (1 - ph))));
                        c.drawCircle(ex, ey, rr * (2.2f + 2.4f * (float) ph), halo);
                        pulsing = true;
                    }
                }
            }
            if (pulsing) {
                postInvalidateOnAnimation();
            }
        }
    }

    /**
     * Intensity ring: 270° arc, glowing progress, the value in the middle. A finger sliding around it is the slider:
     * relative to where it went down (no jump), clockwise = more, at most +20 in one slide (the master slider's
     * safety); the value is shown live and sent on release — the same path as that many − / + steps.
     */
    static final class Ring extends View {
        private final Paint track = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint arc = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint glowP = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint num = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint unit = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint knob = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final RectF box = new RectF();
        private final int color;
        private final int what;
        private int value;
        private float shown = -1f;
        private boolean enabled = true;
        private boolean live;
        /** Slide: the value it started from, the value under the finger now, the last arc position. */
        private int dragFrom = -1;
        private float dragValue;
        private float lastT;

        Ring(Context c, int color, int what) {
            super(c);
            this.color = color;
            this.what = what;
            float w = XemsUi.dp(c, 9);
            track.setStyle(Paint.Style.STROKE);
            track.setStrokeWidth(w);
            track.setStrokeCap(Paint.Cap.ROUND);
            track.setColor(XemsUi.alpha(XemsUi.STROKE, 0xDD));
            arc.setStyle(Paint.Style.STROKE);
            arc.setStrokeWidth(w);
            arc.setStrokeCap(Paint.Cap.ROUND);
            arc.setColor(color);
            glowP.setStyle(Paint.Style.STROKE);
            glowP.setStrokeWidth(w * 2.4f);
            glowP.setStrokeCap(Paint.Cap.ROUND);
            glowP.setColor(XemsUi.alpha(color, 0x30));
            knob.setStyle(Paint.Style.FILL);
            num.setColor(XemsUi.TEXT);
            num.setTypeface(Typeface.create(Typeface.DEFAULT, Typeface.BOLD));
            num.setTextAlign(Paint.Align.CENTER);
            unit.setColor(XemsUi.MUTED);
            unit.setTextAlign(Paint.Align.CENTER);
            unit.setTextSize(XemsUi.sp(c, 13));
            setContentDescription(what == INT2 ? AiText.t("Интензитет 2 — плъзни по кръга", "Intensity 2 — slide around")
                    : AiText.t("Интензитет 1 — плъзни по кръга", "Intensity 1 — slide around"));
        }

        void set(int v, boolean on, boolean running) {
            if (v != value || on != enabled || running != live) {
                value = v;
                enabled = on;
                live = running;
                invalidate();
            }
        }

        /** Position on the arc, 0 (start, lower left) … 1 (end, lower right); outside the arc → the nearer end. */
        private float arcPos(float x, float y) {
            double deg = Math.toDegrees(Math.atan2(y - getHeight() / 2f, x - getWidth() / 2f));
            double rel = ((deg - 135) % 360 + 360) % 360;
            if (rel > 270) {
                return rel > 315 ? 0f : 1f;
            }
            return (float) (rel / 270.0);
        }

        @Override
        public boolean onTouchEvent(android.view.MotionEvent e) {
            switch (e.getActionMasked()) {
                case android.view.MotionEvent.ACTION_DOWN:
                    if (!enabled) {
                        hint(AiText.t("Включи втория импулс с ∿.", "Turn the second impulse on with ∿."));
                        return false;
                    }
                    if (what == INT1 && MusicSyncBridge.shouldBlockManualControls()) {
                        hint(AiText.t("Музиката държи силата сега — ползвай − / +.",
                                "Music holds the strength now — use − / +."));
                        return false;
                    }
                    dragFrom = value;
                    dragValue = value;
                    lastT = arcPos(e.getX(), e.getY());
                    if (getParent() != null) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                    }
                    XemsUi.haptic(this);
                    invalidate();
                    return true;
                case android.view.MotionEvent.ACTION_MOVE: {
                    if (dragFrom < 0) {
                        return false;
                    }
                    float t = arcPos(e.getX(), e.getY());
                    float dt = t - lastT;
                    lastT = t;
                    if (Math.abs(dt) > 0.5f) {
                        return true;                            // across the gap at the bottom: no jump
                    }
                    int before = Math.round(dragValue);
                    dragValue = Math.max(0f, Math.min(Math.min(100f, dragFrom + 20f), dragValue + dt * 100f));
                    int after = Math.round(dragValue);
                    if (after != before) {
                        if (after % 5 == 0) {
                            XemsUi.haptic(this);
                        }
                        invalidate();
                    }
                    return true;
                }
                case android.view.MotionEvent.ACTION_UP:
                case android.view.MotionEvent.ACTION_CANCEL: {
                    if (dragFrom < 0) {
                        return false;
                    }
                    int target = Math.round(dragValue);
                    int from = dragFrom;
                    dragFrom = -1;
                    if (e.getActionMasked() == android.view.MotionEvent.ACTION_UP && target != from) {
                        value = target;                         // shown at once; the refresh confirms it
                        shown = target;
                        setTo(what, target);
                    }
                    invalidate();
                    return true;
                }
                default:
                    return true;
            }
        }

        @Override
        protected void onDraw(Canvas c) {
            float w = getWidth();
            float h = getHeight();
            float s = Math.min(w, h) - glowP.getStrokeWidth();
            if (s <= 0) {
                return;
            }
            float cx = w / 2f;
            float cy = h / 2f + s * 0.04f;
            box.set(cx - s / 2f, cy - s / 2f, cx + s / 2f, cy + s / 2f);
            c.drawArc(box, 135, 270, false, track);
            boolean dragging = dragFrom >= 0;
            if (shown < 0) {
                shown = value;
            }
            float target = dragging ? dragValue : Math.max(0, Math.min(100, value));
            if (dragging) {
                shown = target;
            } else {
                shown += (target - shown) * 0.25f;
                if (Math.abs(target - shown) < 0.3f) {
                    shown = target;
                } else {
                    postInvalidateOnAnimation();
                }
            }
            float sweep = 270f * shown / 100f;
            if (enabled && sweep > 0.5f) {
                if (live && !dragging) {
                    double ph = (android.os.SystemClock.uptimeMillis() % 1600L) / 1600.0;
                    glowP.setAlpha((int) (0x20 + 0x50 * (0.5 - 0.5 * Math.cos(2 * Math.PI * ph))));
                    postInvalidateOnAnimation();
                } else {
                    glowP.setAlpha(dragging ? 0x60 : 0x30);
                }
                c.drawArc(box, 135, sweep, false, glowP);
                c.drawArc(box, 135, sweep, false, arc);
            }
            if (enabled) {
                // the knob at the end of the arc: where the finger takes it
                double a = Math.toRadians(135 + sweep);
                float kx = cx + (float) Math.cos(a) * s / 2f;
                float ky = cy + (float) Math.sin(a) * s / 2f;
                float kr = arc.getStrokeWidth() * (dragging ? 1.05f : 0.8f);
                knob.setColor(XemsUi.alpha(color, 0x55));
                c.drawCircle(kx, ky, kr * 1.7f, knob);
                knob.setColor(0xFFFFFFFF);
                c.drawCircle(kx, ky, kr, knob);
            }
            num.setTextSize(s * 0.24f);
            num.setColor(enabled ? (dragging ? color : XemsUi.TEXT) : XemsUi.HINT);
            String t = enabled ? Math.round(shown) + "%" : "—";
            c.drawText(t, cx, cy + num.getTextSize() * 0.35f, num);
            if (!enabled) {
                c.drawText(AiText.t("изкл.", "off"), cx, cy + num.getTextSize() * 0.35f + unit.getTextSize() * 1.6f, unit);
            } else if (dragging && Math.round(dragValue) >= Math.min(100, dragFrom + 20)) {
                c.drawText(AiText.t("+20 наведнъж", "+20 at once"), cx,
                        cy + num.getTextSize() * 0.35f + unit.getTextSize() * 1.6f, unit);
            }
        }
    }

    /**
     * The phase timeline over the figures (owner, 1.1.415): the cycle as one thin bar — impulse 1 (cyan) then
     * impulse 2 (yellow) or the pause (grey), each as long as its time — with a mark per second; the phase that runs
     * fills with a glowing head, and its name and the seconds left stand above it. Stopped: the cycle at rest.
     */
    static final class Timeline extends View {
        private final Paint bar = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint fill = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint tick = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint big = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint small = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final RectF r = new RectF();
        private boolean run;
        private long[] clk;
        private int t1;
        private int t2;
        private boolean two;

        Timeline(Context c) {
            super(c);
            tick.setStrokeWidth(XemsUi.dp(c, 1));
            big.setTypeface(Typeface.create(Typeface.DEFAULT, Typeface.BOLD));
            big.setTextSize(XemsUi.sp(c, 19));
            small.setTypeface(Typeface.create(Typeface.DEFAULT, Typeface.BOLD));
            small.setTextSize(XemsUi.sp(c, 12));
            small.setLetterSpacing(0.08f);
        }

        void set(boolean run, long[] clk, int t1, int t2, boolean two) {
            this.run = run;
            this.clk = clk;
            this.t1 = Math.max(0, t1);
            this.t2 = Math.max(0, t2);
            this.two = two;
            invalidate();
        }

        @Override
        protected void onDraw(Canvas c) {
            float w = getWidth();
            float h = getHeight();
            float pad = XemsUi.dp(getContext(), 6);
            float th = XemsUi.dp(getContext(), 6);
            float gap = XemsUi.dp(getContext(), 5);
            float y = h - th - XemsUi.dp(getContext(), 4);
            int total = t1 + t2;
            if (total <= 0 || w <= 0) {
                return;
            }
            int c2 = two ? XemsUi.AMBER : XemsUi.MUTED;
            boolean hasPause = t2 > 0;
            float usable = w - 2 * pad - (hasPause ? gap : 0);
            float w1 = usable * t1 / total;
            float x1 = pad;
            float x2 = x1 + w1 + gap;
            float w2 = usable - w1;

            // which phase, how far
            int phase = -1;                                   // 0 = impulse 1, 1 = impulse 2 / pause
            float p = 0f;
            long left = 0;
            if (run && clk != null && clk[2] > 0) {
                phase = clk[0] == 1L ? 0 : 1;
                long el = System.currentTimeMillis() - clk[1];
                p = Math.max(0f, Math.min(1f, el / (float) clk[2]));
                left = Math.max(0L, (clk[2] - el + 999L) / 1000L);
            }

            seg(c, x1, y, w1, th, XemsUi.ACCENT, t1, phase == 0 ? p : -1f);
            if (hasPause) {
                seg(c, x2, y, w2, th, c2, t2, phase == 1 ? p : -1f);
            }

            // above the bar: the phase running and its seconds left (or the cycle at rest)
            float ty = y - XemsUi.dp(getContext(), 8);
            int col = phase == 0 ? XemsUi.ACCENT : phase == 1 ? c2 : XemsUi.MUTED;
            String name;
            if (phase == 0) {
                name = AiText.t("ИМПУЛС 1", "IMPULSE 1");
            } else if (phase == 1) {
                name = two ? AiText.t("ИМПУЛС 2", "IMPULSE 2") : AiText.t("ПАУЗА", "PAUSE");
            } else {
                name = run ? AiText.t("ТРЕНИРОВКА", "TRAINING") : AiText.t("ЦИКЪЛ", "CYCLE");
            }
            small.setColor(col);
            small.setTextAlign(Paint.Align.LEFT);
            float ax = phase == 1 ? x2 : x1;
            c.drawText("●  " + name, ax, ty, small);
            big.setColor(col);
            String sec = phase >= 0 ? left + " s" : t1 + " s" + (hasPause ? "  +  " + t2 + " s" : "");
            if (phase >= 0) {
                big.setTextAlign(Paint.Align.RIGHT);
                c.drawText(sec, phase == 1 ? x2 + w2 : x1 + w1, ty + XemsUi.dp(getContext(), 1), big);
                postInvalidateOnAnimation();
            } else {
                small.setTextAlign(Paint.Align.RIGHT);
                small.setColor(XemsUi.MUTED);
                c.drawText(sec, w - pad, ty, small);
            }
        }

        /** One phase: track, a mark per second, the fill to {@code p} (−1 = not running) with a glowing head. */
        private void seg(Canvas c, float x, float y, float w, float th, int col, int secs, float p) {
            float rr = th / 2f;
            r.set(x, y, x + w, y + th);
            bar.setColor(XemsUi.alpha(col, p >= 0 ? 0x38 : 0x26));
            c.drawRoundRect(r, rr, rr, bar);
            if (secs > 1 && secs <= 120) {
                tick.setColor(XemsUi.alpha(XemsUi.BG, 0xB0));
                for (int i = 1; i < secs; i++) {
                    float tx = x + w * i / secs;
                    c.drawLine(tx, y, tx, y + th, tick);
                }
            }
            if (p >= 0f) {
                float fx = x + w * p;
                if (fx > x + 0.5f) {
                    r.set(x, y, fx, y + th);
                    fill.setColor(col);
                    c.drawRoundRect(r, rr, rr, fill);
                }
                fill.setColor(XemsUi.alpha(col, 0x45));
                c.drawCircle(fx, y + th / 2f, th * 1.6f, fill);
                fill.setColor(0xFFFFFFFF);
                c.drawCircle(fx, y + th / 2f, th * 0.75f, fill);
            }
        }
    }

    /** A padlock, shut or open (the 1 : 2 ratio lock). */
    static final class Padlock extends Drawable {
        private final Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final boolean shut;
        private final int color;

        Padlock(int color, boolean shut) {
            this.shut = shut;
            this.color = color;
            p.setColor(color);
        }

        @Override
        public void draw(Canvas c) {
            android.graphics.Rect b = getBounds();
            float w = b.width();
            float h = b.height();
            float bx = b.left + w * 0.18f;
            float by = b.top + h * 0.46f;
            float bw = w * 0.64f;
            float bh = h * 0.46f;
            p.setStyle(Paint.Style.FILL);
            c.drawRoundRect(new RectF(bx, by, bx + bw, by + bh), w * 0.08f, w * 0.08f, p);
            p.setStyle(Paint.Style.STROKE);
            p.setStrokeWidth(w * 0.11f);
            p.setStrokeCap(Paint.Cap.ROUND);
            float sw = bw * 0.62f;
            float sx = bx + (bw - sw) / 2f;
            float lift = shut ? 0f : h * 0.14f;
            RectF arcBox = new RectF(sx, b.top + h * 0.08f - lift, sx + sw, by + h * 0.1f - lift);
            float cy = arcBox.centerY();
            c.drawArc(arcBox, 180, 180, false, p);
            c.drawLine(sx + sw, cy, sx + sw, by, p);                       // the leg that stays in the body
            c.drawLine(sx, cy, sx, shut ? by : cy + h * 0.05f, p);         // open: the free leg is out
            p.setStyle(Paint.Style.FILL);
            p.setColor(XemsUi.BG);
            c.drawCircle(bx + bw / 2f, by + bh * 0.45f, w * 0.06f, p);
            p.setColor(color);
        }

        @Override
        public void setAlpha(int a) {
            p.setAlpha(a);
        }

        @Override
        public void setColorFilter(android.graphics.ColorFilter cf) {
            p.setColorFilter(cf);
        }

        @Override
        public int getOpacity() {
            return android.graphics.PixelFormat.TRANSLUCENT;
        }
    }

    // ================================================================ util

    private static View find(View in, String name) {
        try {
            Context c = in.getContext();
            int id = c.getResources().getIdentifier(name, "id", c.getPackageName());
            return id != 0 ? in.findViewById(id) : null;
        } catch (Throwable t) {
            return null;
        }
    }

    private static void hint(String s) {
        try {
            if (board != null) {
                android.widget.Toast.makeText(board.getContext(), s, android.widget.Toast.LENGTH_SHORT).show();
            }
        } catch (Throwable ignored) {
        }
    }
}
