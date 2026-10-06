package com.isaigu.gymapp.wearable;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PixelFormat;
import android.graphics.RectF;
import android.graphics.SweepGradient;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.view.HapticFeedbackConstants;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;

import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.fragment.NewTrainFragment;
import com.isaigu.gymapp.train.TrainItemManager;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.train.utils.MusicSync;
import com.isaigu.gymapp.utils.ThemeUtils;
import com.isaigu.gymapp.widget.XemsLang;

import java.lang.ref.WeakReference;
import java.util.List;
import java.util.WeakHashMap;

/**
 * The muscle-group icons on the training screen, with the second impulse on:
 * <ul>
 *   <li>1st tap — green: + / − and the avatar slider change the channel's main impulse alone;</li>
 *   <li>2nd tap, still green — yellow: they change the channel's second impulse alone (SecondParts);</li>
 *   <li>3rd tap, on yellow — off;</li>
 *   <li>a mark clears itself 5 s after the last action with it (tap, + / −, slider), green or yellow.</li>
 * </ul>
 * Without a second impulse a tap just marks / unmarks (green); the 5 s hold there too. The marks are the fragment's own
 * {@code partsControl} (a yellow channel is marked there too, so everything that reads the selection still works);
 * this class only adds which marked channels are yellow.
 * <b>Press and hold 3 s</b> on a channel icon (second impulse on): the channel's second impulse takes the main one's
 * percent again (synced, aligned to the main impulse) on every row — on the picked clients only when some are
 * picked (green photo); a ring with a glow fills around the icon while
 * the finger stays, and the tap that ends the hold does not mark the channel (1.1.371).
 * Hooks: NewTrainFragment.changePartControl (click, with the fragment's own manager: the field is package-private),
 * end of updateMuscleSelectionVisual (tint; the hold listener is set there), SessionRecorder tick
 * (scripts/apply-pause-parts.py).
 */
public final class PartPick {
    static final long IDLE_MS = 5000L;
    static final int N = 10;

    private static final boolean[] YELLOW = new boolean[N];
    private static final long[] LAST = new long[N];
    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static boolean[] ctl;
    private static WeakReference<NewTrainFragment> frag;
    /** Header cell / icon → its background before it turned yellow (light theme: the stock code never redraws it). */
    private static final WeakHashMap<View, android.graphics.drawable.Drawable> SAVED =
            new WeakHashMap<View, android.graphics.drawable.Drawable>();
    private static final boolean[] TINTED = new boolean[N];
    /** The rows, from the last tick (the hold syncs them). */
    private static WeakReference<List<TrainItem>> rows;
    static final long HOLD_MS = 3000L;

    private PartPick() {}

    /** The channel is marked yellow: its changes go to the second impulse only. */
    public static boolean isYellow(int i) {
        return i >= 0 && i < N && YELLOW[i] && ctl != null && i < ctl.length && ctl[i];
    }

    /** The channel is marked, green or yellow. */
    public static boolean isMarked(int i) {
        return i >= 0 && i < N && ctl != null && i < ctl.length && ctl[i];
    }

    /** + / − or the slider acted on the marked channels: their 5 s start again. */
    public static void touch() {
        long now = System.currentTimeMillis();
        for (int i = 0; i < N; i++) {
            LAST[i] = now;
        }
    }

    /**
     * Hook: the tap on a channel icon. True = handled here (the original toggle is skipped); false = the original
     * toggle runs (no second impulse).
     */
    public static boolean click(NewTrainFragment f, TrainItemManager m, boolean[] marks, int i) {
        if (marks == null || i < 0 || i >= marks.length || i >= N) {
            return false;
        }
        LAST[i] = System.currentTimeMillis();                   // first: whatever happens below, 5 s from now
        try {
            ctl = marks;
            frag = new WeakReference<NewTrainFragment>(f);
            List<TrainItem> items = m != null ? m.getItemList() : null;
            if (!secondOn(items)) {
                YELLOW[i] = false;
                return false;                                   // plain mark / unmark
            }
            if (!marks[i]) {
                marks[i] = true;                                // 1st tap: green
                YELLOW[i] = false;
            } else if (!YELLOW[i]) {
                YELLOW[i] = true;                               // 2nd tap, still green: yellow
            } else {
                marks[i] = false;                               // 3rd tap: off
                YELLOW[i] = false;
            }
            return true;
        } catch (Throwable t) {
            WearableBleDiagLog.log("index", "part click: " + t);
            return false;
        }
    }

    /** Any row's running mode has the second impulse on. */
    static boolean secondOn(List<TrainItem> items) {
        if (items == null) {
            return false;
        }
        for (int i = 0; i < items.size(); i++) {
            TrainItem it = items.get(i);
            TrainProgram p = it != null && !it.isEmpty() ? it.getTrainProgram() : null;
            ProgramDataBean b = p != null ? p.matchProgram() : null;
            if (b != null && b.activePause) {
                return true;
            }
        }
        return false;
    }

    /** SessionRecorder, every second: a mark that had no action for 5 s goes off; yellow without a second impulse is green. */
    static void tick(List<TrainItem> items) {
        try {
            if (items != null) {
                rows = new WeakReference<List<TrainItem>>(items);
            }
            if (items == null || ManualDefaults.assisted() || MusicSync.isRunning()) {
                return;
            }
            boolean[] marks = null;
            for (int i = 0; i < items.size() && marks == null; i++) {
                TrainItem it = items.get(i);
                if (it != null && it.partsControl != null) {
                    marks = it.partsControl;
                }
            }
            if (marks == null) {
                return;
            }
            ctl = marks;
            long now = System.currentTimeMillis();
            boolean second = secondOn(items);
            boolean changed = false;
            for (int i = 0; i < N && i < marks.length; i++) {
                if (!marks[i]) {
                    YELLOW[i] = false;
                    continue;
                }
                if (!second) {
                    YELLOW[i] = false;                          // the second impulse went off: yellow is green again
                }
                if (now - LAST[i] >= IDLE_MS) {
                    marks[i] = false;
                    YELLOW[i] = false;
                    changed = true;
                }
            }
            if (changed) {
                MAIN.post(new Refresh());
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("index", "part tick: " + t);
        }
    }

    /** The marks changed from outside a tap: the avatar sliders and the icons redraw. */
    static final class Refresh implements Runnable {
        public void run() {
            try {
                NewTrainFragment f = frag != null ? frag.get() : null;
                if (f != null) {
                    f.xemsRefreshParts();
                }
            } catch (Throwable t) {
                WearableBleDiagLog.log("index", "part refresh: " + t);
            }
        }
    }

    /**
     * Hook: end of NewTrainFragment.updateMuscleSelectionVisual (root = the fragment's view). A yellow channel's
     * header box (buwei1..10: text + icon) gets the yellow frame; one that stops being yellow gets back what it had
     * (the dark theme's stock code has already redrawn it).
     */
    public static void tintAll(View root) {
        try {
            if (root == null) {
                return;
            }
            boolean dark = ThemeUtils.isDarkMode(root.getContext());
            String pkg = root.getContext().getPackageName();
            for (int i = 0; i < N; i++) {
                int id = root.getResources().getIdentifier("buwei" + (i + 1), "id", pkg);
                View cell = id != 0 ? root.findViewById(id) : null;
                if (!(cell instanceof ViewGroup)) {
                    continue;
                }
                View text = ((ViewGroup) cell).getChildAt(0);
                View icon = ((ViewGroup) cell).getChildAt(1);
                hold(cell, icon, i);
                if (isYellow(i)) {
                    if (!TINTED[i] && !dark) {
                        SAVED.put(cell, cell.getBackground());
                        if (icon != null) {
                            SAVED.put(icon, icon.getBackground());
                        }
                        TEXT_COLOR[i] = text instanceof TextView ? ((TextView) text).getCurrentTextColor() : 0;
                    }
                    TINTED[i] = true;
                    yellow(cell, icon, text);
                } else if (TINTED[i]) {
                    TINTED[i] = false;
                    if (!dark) {
                        cell.setBackground(SAVED.remove(cell));
                        if (icon != null) {
                            icon.setBackground(SAVED.remove(icon));
                        }
                        if (text instanceof TextView && TEXT_COLOR[i] != 0) {
                            ((TextView) text).setTextColor(TEXT_COLOR[i]);
                        }
                    }
                }
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("index", "part tint: " + t);
        }
    }

    private static final int[] TEXT_COLOR = new int[N];

    private static void yellow(View cell, View icon, View text) {
        float d = cell.getResources().getDisplayMetrics().density;
        GradientDrawable frame = new GradientDrawable();
        frame.setCornerRadius(12f * d);
        frame.setColor(0x33F9A825);
        frame.setStroke(Math.round(1.5f * d), 0xFFFFC107);
        cell.setBackground(frame);
        if (icon != null) {
            GradientDrawable glow = new GradientDrawable();
            glow.setShape(GradientDrawable.OVAL);
            glow.setColor(0x55FFD54F);
            glow.setStroke(Math.round(2f * d), 0xFFFFC107);
            icon.setBackground(glow);
        }
        if (text instanceof TextView) {
            ((TextView) text).setTextColor(0xFFFFB300);
        }
    }

    // ================================================================ press and hold: sync

    /** View tag key of the hold listener (an app-unique id: the tag needs one from the resource range). */
    static final int TAG_HOLD = 0x7f0fe001;

    /**
     * Channel {@code i}: its second impulse takes the main one's percent on every row (no own value left).
     * True when some row has the second impulse on.
     */
    static boolean sync(int i) {
        return sync(rows != null ? rows.get() : null, i);
    }

    public static boolean sync(List<TrainItem> items, int i) {
        boolean any = false;
        if (items == null) {
            return false;
        }
        for (int k = 0; k < items.size(); k++) {
            TrainItem it = items.get(k);
            TrainProgram p = it != null && !it.isEmpty() ? it.getTrainProgram() : null;
            ProgramDataBean b = p != null ? p.matchProgram() : null;
            if (b == null || !b.activePause || b.strenthBean == null || b.strenthBean.buwei == null
                    || i >= b.strenthBean.buwei.length) {
                continue;
            }
            if (!applies(it)) {
                continue;                              // clients picked (green photo): only they
            }
            any = true;
            int[] main = b.strenthBean.buwei;
            int[] e = SecondParts.effective(b, main);
            e[i] = main[i];
            SecondParts.set(b, main, e);
            try {
                it.onParamsChange();                   // the suit gets it in the next pause
                it.xemsRefresh();
            } catch (Throwable ignored) {
            }
        }
        return any;
    }

    /**
     * The hold listener on every channel header cell under {@code root} (once per cell). Also from the training row's
     * redraw (train/utils/PartLook.paint): at the fragment's first redraw its view is not set yet.
     */
    public static void installHolds(View root) {
        try {
            if (root == null) {
                return;
            }
            String pkg = root.getContext().getPackageName();
            for (int i = 0; i < N; i++) {
                int id = root.getResources().getIdentifier("buwei" + (i + 1), "id", pkg);
                View cell = id != 0 ? root.findViewById(id) : null;
                if (cell instanceof ViewGroup) {
                    hold(cell, ((ViewGroup) cell).getChildAt(1), i);
                }
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("index", "part hold: " + t);
        }
    }

    static void hold(View cell, View icon, int i) {
        if (!(cell.getTag(TAG_HOLD) instanceof Hold)) {
            Hold h = new Hold(cell, icon, i);
            cell.setTag(TAG_HOLD, h);
            cell.setOnTouchListener(h);
        }
    }

    private static java.lang.reflect.Method applies;

    /**
     * widget/XemsLocalAvatar.masterApplies: nobody picked = every row, else the picked ones (green photo). By
     * reflection: that class is compiled apart (compile-xems-local-java.sh), not on this compile's classpath.
     */
    static boolean applies(TrainItem it) {
        try {
            if (applies == null) {
                applies = Class.forName("com.isaigu.gymapp.widget.XemsLocalAvatar")
                        .getMethod("masterApplies", TrainItem.class);
            }
            return Boolean.TRUE.equals(applies.invoke(null, it));
        } catch (Throwable t) {
            return true;
        }
    }

    /** Some row has the second impulse on and the controls are the trainer's (not music / Smart / Auto). */
    static boolean holdable() {
        List<TrainItem> items = rows != null ? rows.get() : null;
        return secondOn(items) && !ManualDefaults.assisted() && !MusicSync.isRunning();
    }

    /** Press and hold on a channel's header cell: 3 s → sync; the ring shows the time. */
    static final class Hold implements View.OnTouchListener, Runnable {
        final View cell;
        final View icon;
        final int index;
        final Ring ring;
        long down;
        boolean done;
        boolean active;

        Hold(View cell, View icon, int index) {
            this.cell = cell;
            this.icon = icon;
            this.index = index;
            this.ring = new Ring(cell.getResources().getDisplayMetrics().density);
        }

        public boolean onTouch(View v, MotionEvent e) {
            switch (e.getActionMasked()) {
                case MotionEvent.ACTION_DOWN:
                    done = false;
                    if (holdable()) {
                        start();
                    }
                    return false;                      // the cell still gets its tap
                case MotionEvent.ACTION_MOVE:
                    if (active && (e.getX() < -slop() || e.getY() < -slop() || e.getX() > v.getWidth() + slop()
                            || e.getY() > v.getHeight() + slop())) {
                        stop(false);
                    }
                    return false;
                case MotionEvent.ACTION_UP:
                    if (done) {
                        done = false;
                        v.setPressed(false);
                        return true;                   // the hold is not a tap: no mark
                    }
                    stop(false);
                    return false;
                case MotionEvent.ACTION_CANCEL:
                    done = false;
                    stop(false);
                    return false;
                default:
                    return false;
            }
        }

        float slop() {
            return 12f * cell.getResources().getDisplayMetrics().density;
        }

        void start() {
            down = System.currentTimeMillis();
            active = true;
            ring.progress = 0f;
            ring.flash = 0f;
            place();
            cell.getOverlay().remove(ring);
            cell.getOverlay().add(ring);
            MAIN.removeCallbacks(this);
            MAIN.post(this);
        }

        void stop(boolean keepFlash) {
            active = false;
            if (!keepFlash) {
                MAIN.removeCallbacks(this);
                cell.getOverlay().remove(ring);
            }
        }

        /** The ring around the icon (in the cell's coordinates). */
        void place() {
            View c = icon != null ? icon : cell;
            float cx = c == cell ? cell.getWidth() / 2f : c.getLeft() + c.getWidth() / 2f;
            float cy = c == cell ? cell.getHeight() / 2f : c.getTop() + c.getHeight() / 2f;
            float r = Math.max(c.getWidth(), c.getHeight()) / 2f + 4f * cell.getResources().getDisplayMetrics().density;
            ring.cx = cx;
            ring.cy = cy;
            ring.r = r;
            ring.setBounds(0, 0, cell.getWidth(), cell.getHeight());
        }

        public void run() {
            long now = System.currentTimeMillis();
            if (active) {
                ring.progress = Math.min(1f, (now - down) / (float) HOLD_MS);
                ring.spin = (now - down) * 0.12f;
                if (ring.progress >= 1f) {
                    active = false;
                    done = true;
                    ring.flash = 1f;
                    down = now;
                    LAST[index] = now;
                    boolean ok = false;
                    try {
                        ok = sync(index);
                    } catch (Throwable t) {
                        WearableBleDiagLog.log("index", "part sync: " + t);
                    }
                    cell.performHapticFeedback(HapticFeedbackConstants.LONG_PRESS);
                    if (ok) {
                        Toast.makeText(cell.getContext(), XemsLang.tr(
                                "Вторият импулс на канала е изравнен с главния",
                                "The channel's second impulse now matches the main one"), Toast.LENGTH_SHORT).show();
                    }
                }
                ring.invalidateSelf();
                MAIN.postDelayed(this, 16L);
                return;
            }
            if (ring.flash > 0f) {                       // after the sync: the full ring glows and fades out
                ring.flash = Math.max(0f, 1f - (now - down) / 450f);
                ring.invalidateSelf();
                if (ring.flash > 0f) {
                    MAIN.postDelayed(this, 16L);
                    return;
                }
            }
            cell.getOverlay().remove(ring);
        }
    }

    /** The hold ring: a glow, a yellow → green arc that fills in 3 s while it turns, a bright head. */
    static final class Ring extends Drawable {
        final float d;
        final Paint glow = new Paint(Paint.ANTI_ALIAS_FLAG);
        final Paint arc = new Paint(Paint.ANTI_ALIAS_FLAG);
        final Paint head = new Paint(Paint.ANTI_ALIAS_FLAG);
        final RectF oval = new RectF();
        float cx, cy, r, progress, spin, flash;

        Ring(float density) {
            d = density;
            glow.setStyle(Paint.Style.STROKE);
            glow.setStrokeCap(Paint.Cap.ROUND);
            arc.setStyle(Paint.Style.STROKE);
            arc.setStrokeCap(Paint.Cap.ROUND);
            head.setStyle(Paint.Style.FILL);
        }

        public void draw(Canvas c) {
            if (r <= 0f) {
                return;
            }
            oval.set(cx - r, cy - r, cx + r, cy + r);
            float sweep = flash > 0f ? 360f : 360f * progress;
            float startAngle = flash > 0f ? -90f : -90f + spin;
            int a = flash > 0f ? Math.round(255 * flash) : 255;
            // the faint track and the glow
            glow.setShader(null);
            glow.setStrokeWidth(9f * d);
            glow.setColor(0x33FFC107);
            glow.setAlpha(Math.round(0x33 * a / 255f));
            c.drawCircle(cx, cy, r, glow);
            glow.setStrokeWidth((7f + 6f * (flash > 0f ? flash : progress)) * d);
            glow.setColor(flash > 0f ? 0xFF66BB6A : 0xFFFFC107);
            glow.setAlpha(Math.round((flash > 0f ? 0x80 : 0x50) * a / 255f));
            c.drawArc(oval, startAngle, sweep, false, glow);
            // the arc: yellow (second impulse) turning green (main) as it fills
            SweepGradient g = new SweepGradient(cx, cy,
                    new int[] {0xFFFFC107, 0xFFFFD54F, 0xFF9CCC65, 0xFF43A047, 0xFFFFC107},
                    new float[] {0f, 0.25f, 0.6f, 0.95f, 1f});
            android.graphics.Matrix m = new android.graphics.Matrix();
            m.setRotate(startAngle, cx, cy);
            g.setLocalMatrix(m);
            arc.setShader(g);
            arc.setStrokeWidth(3.5f * d);
            arc.setAlpha(a);
            c.drawArc(oval, startAngle, sweep, false, arc);
            if (flash <= 0f && progress > 0f) {
                double ang = Math.toRadians(startAngle + sweep);
                float hx = cx + (float) (r * Math.cos(ang));
                float hy = cy + (float) (r * Math.sin(ang));
                head.setColor(0x66FFFFFF);
                c.drawCircle(hx, hy, 6f * d, head);
                head.setColor(0xFFFFFFFF);
                c.drawCircle(hx, hy, 3f * d, head);
            }
        }

        public void setAlpha(int alpha) {
        }

        public void setColorFilter(ColorFilter cf) {
        }

        public int getOpacity() {
            return PixelFormat.TRANSLUCENT;
        }
    }
}
