package com.isaigu.gymapp.wearable;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PixelFormat;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.HapticFeedbackConstants;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.ai.ImpulseGlyph;
import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.train.utils.MusicSync;
import com.isaigu.gymapp.widget.XemsLang;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/**
 * The row's yellow double-impulse button (owner, 1.1.383 — in the place of the diskette; the row's settings are saved
 * from its ⚙ now):
 * <ul>
 *   <li><b>Tap</b> with a plain pause: the second impulse goes on and the row enters its <b>setup</b> — the suit gets
 *       the second impulse only (no switching between the two), the 2nd-impulse index buttons appear right of the
 *       avatar, and everything that now sets the second impulse (the "Импулс 2" label, its index buttons, the ring,
 *       the channel bars and percents, the muscle icons) glows three times. While it lasts the ring, + / −, the bars
 *       and the marked channels set the second impulse: its strength, its Hz, the strength of single or marked
 *       channels.</li>
 *   <li>5 s without an action: back to the normal double impulse (the two take turns again), a running row starting
 *       with a whole main impulse — its phase clock begins afresh ({@link #resume}, 1.1.386); there every control
 *       sets the main impulse (the second one keeps its share of the main strength, as always). The 2nd-impulse
 *       index buttons stay while the double impulse is on (1.1.385); a tap on one begins the setup with it picked.</li>
 *   <li><b>Tap</b> during the setup: the second impulse goes off — the plain pause again. Tap with the double impulse
 *       on but not in setup: the setup again.</li>
 *   <li><b>Hold</b> {@link #HOLD_MS} (a ring fills): sync — the second impulse takes the main one's strength and
 *       channel shares; its Hz stays.</li>
 *   <li>Every change of mode is said in a half-transparent note at the bottom of the screen ({@link Note}).</li>
 * </ul>
 * Not in Мускули (no second impulse there) and not while Smart / Auto / music lead the impulse.
 * Hooks: TrainViewHolder.bindListener ({@link #bind}, scripts/apply-program-fit.py), end of TrainViewHolder.updateUI
 * through train/utils/PartLook.paint ({@link #paint}), train/model/SoftRamp ({@link #holding}).
 */
public final class DoubleImpulse {
    static final long IDLE_MS = 5000L;
    static final long HOLD_MS = 1500L;
    /** A press shorter than this shows no hold ring (a tap). */
    static final long HOLD_SHOW_MS = 180L;
    static final long TICK_MS = 100L;
    static final long BLINK_MS = 420L;
    static final int BLINKS = 3;
    static final int MUSCLE = 1;

    static final int AMBER = 0xFFFFC107;
    /** The key's own amber: a white symbol stays readable on it (as on the stock orange ■). */
    static final int KEY = 0xFFF2A100;
    static final int GREEN = 0xFF43A047;
    static final int GREY = 0xFFB0BEC5;

    /** A row in the second impulse's setup. */
    static final class Setup {
        long last;
        int[] seen;
    }

    private static final Map<TrainItem, Setup> SETUP = new WeakHashMap<TrainItem, Setup>();
    /** Rows whose second-impulse controls glow at their next redraw (the setup has just begun). */
    private static final Map<TrainItem, Boolean> BLINK = new WeakHashMap<TrainItem, Boolean>();
    /** Row → its button (the countdown ring). */
    private static final Map<TrainItem, WeakReference<View>> BUTTONS = new WeakHashMap<TrainItem, WeakReference<View>>();
    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static Runner runner;
    private static boolean running;

    private static int idSave, idPauseMa, idPauseHz, idLabel, idAmount;

    private DoubleImpulse() {}

    // ================================================================ state

    static ProgramDataBean bean(TrainItem it) {
        TrainProgram p = it != null ? it.getTrainProgram() : null;
        return p != null ? p.matchProgram() : null;
    }

    /** The row is in the second impulse's setup: its controls set the second impulse, the suit gets only it. */
    public static boolean active(TrainItem it) {
        if (it == null) {
            return false;
        }
        synchronized (SETUP) {
            if (!SETUP.containsKey(it)) {
                return false;
            }
        }
        ProgramDataBean b = bean(it);
        return b != null && b.activePause;
    }

    /** The row with this program is in the setup (PartStrength.bar knows the program only). */
    public static boolean active(TrainProgram p) {
        if (p == null) {
            return false;
        }
        for (TrainItem it : rows()) {
            if (it.getTrainProgram() == p && active(it)) {
                return true;
            }
        }
        return false;
    }

    /** Some row is in the setup (the muscle icons above are shared by every row). */
    public static boolean anyActive() {
        for (TrainItem it : rows()) {
            if (active(it)) {
                return true;
            }
        }
        return false;
    }

    /** SoftRamp: the running row sends the second impulse only (no switching between the two) while in setup. */
    public static boolean holding(TrainItem it) {
        return active(it) && it.data != null && it.data.start;
    }

    /** An action with the row's controls: its setup lasts {@link #IDLE_MS} more. */
    public static void touch(TrainItem it) {
        synchronized (SETUP) {
            Setup s = it != null ? SETUP.get(it) : null;
            if (s != null) {
                s.last = System.currentTimeMillis();
            }
        }
    }

    /** An action with the shared controls (muscle icons, + / −, bars): every setup lasts {@link #IDLE_MS} more. */
    public static void touchAll() {
        long now = System.currentTimeMillis();
        synchronized (SETUP) {
            for (Setup s : SETUP.values()) {
                s.last = now;
            }
        }
    }

    static List<TrainItem> rows() {
        List<TrainItem> out = new ArrayList<TrainItem>();
        synchronized (SETUP) {
            for (TrainItem it : SETUP.keySet()) {
                if (it != null) {
                    out.add(it);
                }
            }
        }
        return out;
    }

    /** The trainer does not lead this row now (Smart Session / Auto / a map, or music). */
    static String blocked(TrainItem it) {
        if (ManualDefaults.assisted()) {
            return XemsLang.tr("Импулсът се води автоматично", "The impulse is led automatically");
        }
        if (MusicSync.isRunning()) {
            return XemsLang.tr("Импулсът следва музиката", "The impulse follows the music");
        }
        return null;
    }

    static boolean muscle(TrainItem it) {
        TrainProgram p = it != null ? it.getTrainProgram() : null;
        return p != null && p.useType == MUSCLE;
    }

    // ================================================================ tap / hold

    /** A tap on the button. */
    static void click(TrainItem it, View v) {
        try {
            ProgramDataBean b = bean(it);
            if (b == null || it.isEmpty()) {
                return;
            }
            String why = blocked(it);
            if (why != null) {
                Note.show(v, why, XemsLang.tr("Вторият импулс се сменя, когато водиш ръчно",
                        "The second impulse changes when you lead by hand"), GREY, 2600L);
                return;
            }
            if (muscle(it)) {
                Note.show(v, XemsLang.tr("В режим Мускули няма втори импулс", "No second impulse in Muscles mode"),
                        XemsLang.tr("Основен, Кардио и Масаж имат", "Main, Cardio and Massage have one"), GREY, 2600L);
                return;
            }
            if (active(it)) {
                off(it, v);
                return;
            }
            if (!b.activePause) {
                b.activePause = true;
                if (b.pauseStrenthPercent <= 0) {
                    b.pauseStrenthPercent = Math.max(0, Math.min(100, b.strenth));
                }
                if (b.pauseHz <= 0) {
                    b.pauseHz = 7;
                }
            }
            enter(it, v);
        } catch (Throwable t) {
            WearableBleDiagLog.log("index", "double click: " + t);
        }
    }

    /** The setup begins: the second impulse's index buttons appear (2nd MA selected), the controls glow. */
    static void enter(TrainItem it, View v) {
        Setup s = new Setup();
        s.last = System.currentTimeMillis();
        s.seen = snapshot(it);
        synchronized (SETUP) {
            SETUP.put(it, s);
        }
        BLINK.put(it, Boolean.TRUE);
        it.setMaSelected(false);
        it.setHzSelected(false);
        it.setPauseHzSelected(false);
        it.setPauseMaSelected(true);                    // the ring and + / − take the second impulse's strength
        TrainIndex.touch(it);
        save(it);
        haptic(v);
        changed(it);
        noteSetup(v, it);
        run();
    }

    /**
     * A tap on a 2nd-impulse index button (TrainIndex.pauseClick) while the double impulse runs normally: the setup
     * begins with that button picked (its strength or its Hz).
     */
    public static void enterFrom(TrainItem it, boolean hz) {
        try {
            if (it == null || active(it) || muscle(it) || blocked(it) != null) {
                return;
            }
            ProgramDataBean b = bean(it);
            if (b == null || !b.activePause) {
                return;
            }
            enter(it, button(it));
            it.setPauseMaSelected(!hz);
            it.setPauseHzSelected(hz);
        } catch (Throwable t) {
            WearableBleDiagLog.log("index", "double enter: " + t);
        }
    }

    /** Tap during the setup: the second impulse goes off, the plain pause again. */
    static void off(TrainItem it, View v) {
        synchronized (SETUP) {
            SETUP.remove(it);
        }
        ProgramDataBean b = bean(it);
        if (b != null) {
            b.activePause = false;
        }
        clearSecond(it);
        save(it);
        haptic(v);
        resume(it);
        Note.show(v, title(it, XemsLang.tr("Режим с пауза", "Pause mode")),
                XemsLang.tr("Вторият импулс е изключен", "The second impulse is off"), GREY, 2400L);
    }

    /** 5 s without an action: the two impulses take turns again, the controls set the main one. */
    static void leave(TrainItem it, View v, boolean say) {
        synchronized (SETUP) {
            SETUP.remove(it);
        }
        clearSecond(it);
        if (say) {
            resume(it);                                 // the 5 s end: the main impulse whole, in step with the row
        } else {
            changed(it);                                // taken away elsewhere (⚙, mode, Smart): they lead the phase
        }
        if (say && v != null) {
            Note.show(v, title(it, XemsLang.tr("Двоен импулс", "Double impulse")),
                    XemsLang.tr("Импулс 1 ⇄ импулс 2 · настройките са за главния импулс",
                            "Impulse 1 ⇄ impulse 2 · the controls set the main impulse"), AMBER, 2600L);
        }
    }

    /** Hold: the second impulse takes the main one's strength and channel shares; its Hz stays. */
    static boolean sync(TrainItem it, View v) {
        ProgramDataBean b = bean(it);
        if (b == null || !b.activePause || muscle(it) || blocked(it) != null) {
            return false;
        }
        b.pauseStrenthPercent = Math.max(0, Math.min(100, b.strenth));
        if (b.strenthBean != null && b.strenthBean.buwei != null) {
            int[] main = b.strenthBean.buwei;
            SecondParts.set(b, main, main.clone());     // equal to the main ones = no own percents
        }
        touch(it);
        save(it);
        changed(it);
        Note.show(v, title(it, XemsLang.tr("Импулс 2 = импулс 1", "Impulse 2 = impulse 1")),
                XemsLang.tr("Сила и канали изравнени · честотата остава " + b.pauseHz + " Hz",
                        "Strength and channels matched · the frequency stays " + b.pauseHz + " Hz"), GREEN, 2600L);
        return true;
    }

    static void clearSecond(TrainItem it) {
        it.setPauseHzSelected(false);
        it.setPauseMaSelected(false);
    }

    /**
     * The setup is over (5 s idle, or a tap back to the plain pause): a running row starts its ON phase afresh — the
     * whole main impulse with its rise, the row's clock with it (owner, 1.1.386). Before, the row went on in the phase
     * the setup happened to end in: the suit had given only the second impulse until then (felt as a long pause) and the
     * main impulse came as the rest of a phase already half gone (felt cut short). A row that does not run: as before.
     */
    static void resume(TrainItem it) {
        boolean restarted = false;
        try {
            restarted = it.xemsRestartPulse();
        } catch (Throwable ignored) {
        }
        if (!restarted) {
            changed(it);
            return;
        }
        try {
            it.xemsRefresh();
        } catch (Throwable ignored) {
        }
        PartPick.refresh();
        face(it);
    }

    /** The suit gets the new pattern now, the row redraws, the muscle icons follow. */
    static void changed(TrainItem it) {
        try {
            it.onParamsChange();
        } catch (Throwable ignored) {
        }
        try {
            it.xemsRefresh();
        } catch (Throwable ignored) {
        }
        PartPick.refresh();
        face(it);
    }

    static void save(TrainItem it) {
        try {
            TrainProgram p = it.getTrainProgram();
            if (p != null) {
                com.isaigu.gymapp.dialog.ActivePauseStorage.save(p);
            }
        } catch (Throwable ignored) {
        }
    }

    static void haptic(View v) {
        try {
            if (v != null) {
                v.performHapticFeedback(HapticFeedbackConstants.VIRTUAL_KEY);
            }
        } catch (Throwable ignored) {
        }
    }

    static void noteSetup(View v, TrainItem it) {
        Note.show(v, title(it, XemsLang.tr("Импулс 2 · настройка", "Impulse 2 · setup")),
                XemsLang.tr("Задръж бутона за синхронизация · кликни пак за връщане в режим с пауза",
                        "Hold the button to sync · tap again to go back to the pause"), AMBER, 0L);
    }

    /** "Иван · Импулс 2 · настройка" when the row has a client. */
    static String title(TrainItem it, String mode) {
        try {
            String n = it != null && it.data != null && it.data.trainUser != null ? it.data.trainUser.name : null;
            if (n != null && n.trim().length() > 0) {
                return n.trim() + " · " + mode;
            }
        } catch (Throwable ignored) {
        }
        return mode;
    }

    /** What the row's controls set; a change = an action. */
    static int[] snapshot(TrainItem it) {
        int[] idx = TrainIndex.snapshot(it);
        ProgramDataBean b = bean(it);
        int[] own = b != null ? SecondParts.get(b) : null;
        int marks = 0;
        if (it.partsControl != null) {
            for (int i = 0; i < it.partsControl.length && i < 30; i++) {
                if (it.partsControl[i]) {
                    marks |= 1 << i;
                }
            }
        }
        int[] out = Arrays.copyOf(idx, idx.length + 3);
        out[idx.length] = own != null ? Arrays.hashCode(own) : 0;
        out[idx.length + 1] = marks;
        out[idx.length + 2] = b != null && b.strenthBean != null && b.strenthBean.buwei != null
                ? Arrays.hashCode(b.strenthBean.buwei) : 0;
        return out;
    }

    // ================================================================ the clock of the setups

    static void run() {
        if (runner == null) {
            runner = new Runner();
        }
        if (!running) {
            running = true;
            MAIN.postDelayed(runner, TICK_MS);
        }
    }

    /** Every {@link #TICK_MS} while a row is in setup: actions, the 5 s end, the countdown on the button. */
    static final class Runner implements Runnable {
        public void run() {
            boolean any = false;
            try {
                any = step(System.currentTimeMillis());
            } catch (Throwable t) {
                WearableBleDiagLog.log("index", "double tick: " + t);
            }
            if (any) {
                MAIN.postDelayed(this, TICK_MS);
            } else {
                running = false;
            }
        }
    }

    /** One step of every setup; true while some row is still in one. */
    static boolean step(long now) {
        boolean any = false;
        boolean blocked = blocked(null) != null;
        for (TrainItem it : rows()) {
            Setup s;
            synchronized (SETUP) {
                s = SETUP.get(it);
            }
            if (s == null) {
                continue;
            }
            ProgramDataBean b = bean(it);
            if (b == null || !b.activePause || it.isEmpty() || muscle(it) || blocked) {
                leave(it, null, false);                 // the second impulse went away elsewhere (⚙, mode, Smart)
                continue;
            }
            int[] cur = snapshot(it);
            if (!Arrays.equals(cur, s.seen)) {
                s.seen = cur;
                s.last = now;
            }
            View btn = button(it);
            if (now - s.last >= IDLE_MS) {
                leave(it, btn, true);
                continue;
            }
            any = true;
            face(it);
        }
        if (any && !Note.showing()) {
            for (TrainItem it : rows()) {
                View btn = button(it);
                if (btn != null && btn.isAttachedToWindow()) {
                    noteSetup(btn, it);                 // a sync note went away: the setup's own again
                    break;
                }
            }
        }
        if (!any) {
            Note.hideSticky();
        }
        return any;
    }

    static View button(TrainItem it) {
        WeakReference<View> r = BUTTONS.get(it);
        return r != null ? r.get() : null;
    }

    // ================================================================ hooks

    /** Hook: TrainViewHolder.bindListener — the row's diskette button becomes the double-impulse button. */
    public static void bind(View btn, Object holder) {
        try {
            if (btn == null) {
                return;
            }
            Face f = new Face(btn.getResources().getDisplayMetrics().density);
            btn.setBackground(f);
            if (btn instanceof TextView) {
                ((TextView) btn).setText("");
            }
            btn.setContentDescription(XemsLang.tr("Двоен импулс", "Double impulse"));
            btn.setOnLongClickListener(null);
            btn.setOnTouchListener(new Press(btn, holder, f));
        } catch (Throwable t) {
            WearableBleDiagLog.log("index", "double bind: " + t);
        }
    }

    /**
     * Hook: end of TrainViewHolder.updateUI (through PartLook.paint). The 2nd-impulse index buttons are seen in the
     * setup only; the button shows the row's state; the setup's first redraw makes its controls glow.
     */
    public static void paint(TrainItem it, View ring, View[] bars, View[] texts) {
        try {
            if (it == null || ring == null) {
                return;
            }
            MasterKeys.install(ring.getRootView());           // the + / − keys' colours
            View row = row(ring);
            if (row == null) {
                return;
            }
            View btn = idSave != 0 ? row.findViewById(idSave) : null;
            if (btn != null) {
                BUTTONS.put(it, new WeakReference<View>(btn));
                if (!(btn.getBackground() instanceof Face)) {
                    btn.setBackground(new Face(btn.getResources().getDisplayMetrics().density));
                }
                face(it);
            }
            boolean on = active(it);
            ProgramDataBean b = bean(it);
            boolean dbl = b != null && b.activePause;           // the 2nd-impulse buttons: while it is on (1.1.385)
            View pm = row.findViewById(idPauseMa);
            View ph = row.findViewById(idPauseHz);
            for (View x : new View[] {pm, ph}) {
                if (x != null && x.getVisibility() != View.GONE) {   // GONE: Мускули (the stock display)
                    int want = dbl ? View.VISIBLE : View.INVISIBLE;
                    if (x.getVisibility() != want) {
                        x.setVisibility(want);
                    }
                }
            }
            if (on && BLINK.remove(it) != null) {
                List<View> glow = new ArrayList<View>();
                List<View> fade = new ArrayList<View>();
                View label = idLabel != 0 ? row.findViewById(idLabel) : null;
                View amount = idAmount != 0 ? row.findViewById(idAmount) : null;
                add(glow, pm, ph, ring, btn, amount);
                add(fade, label, pm, ph);
                if (bars != null) {
                    add(glow, bars);
                }
                if (texts != null) {
                    add(glow, texts);
                    add(fade, texts);
                }
                add(glow, PartPick.icons(ring.getRootView()));
                Blink.start(glow, fade);
            } else if (!on) {
                BLINK.remove(it);
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("index", "double paint: " + t);
        }
    }

    static void add(List<View> out, View... vs) {
        if (vs == null) {
            return;
        }
        for (View v : vs) {
            if (v != null && v.getVisibility() == View.VISIBLE && !out.contains(v)) {
                out.add(v);
            }
        }
    }

    /** The row's own view (it holds the button): up from the avatar ring. */
    static View row(View v) {
        ids(v.getContext());
        View cur = v;
        for (int k = 0; k < 8 && cur != null; k++) {
            if (idSave != 0 && cur.findViewById(idSave) != null) {
                return cur;
            }
            cur = cur.getParent() instanceof View ? (View) cur.getParent() : null;
        }
        return null;
    }

    static void ids(Context c) {
        if (idSave != 0) {
            return;
        }
        String pkg = c.getPackageName();
        idPauseMa = c.getResources().getIdentifier("pauseMaValue", "id", pkg);
        idPauseHz = c.getResources().getIdentifier("pauseHzValue", "id", pkg);
        idLabel = c.getResources().getIdentifier("pulsePauseLabel", "id", pkg);
        idAmount = c.getResources().getIdentifier("paulsestop", "id", pkg);
        idSave = c.getResources().getIdentifier("save", "id", pkg);
    }

    /** The button's look for the row's state. */
    static void face(TrainItem it) {
        View btn = button(it);
        if (btn == null || !(btn.getBackground() instanceof Face)) {
            return;
        }
        Face f = (Face) btn.getBackground();
        ProgramDataBean b = bean(it);
        int mode = b == null || it.isEmpty() ? Face.OFF : muscle(it) ? Face.NONE : !b.activePause ? Face.OFF
                : active(it) ? Face.SETUP : Face.ON;
        float left = 0f;
        if (mode == Face.SETUP) {
            Setup s;
            synchronized (SETUP) {
                s = SETUP.get(it);
            }
            if (s != null) {
                left = Math.max(0f, 1f - (System.currentTimeMillis() - s.last) / (float) IDLE_MS);
            }
        }
        if (f.mode != mode || Math.abs(f.left - left) > 0.004f) {
            f.mode = mode;
            f.left = left;
            f.invalidateSelf();
        }
        float a = mode == Face.NONE || (b != null && blocked(it) != null) ? 0.4f : 1f;
        if (btn.getAlpha() != a) {
            btn.setAlpha(a);
        }
    }

    // ================================================================ the button: tap and hold

    static final class Press implements View.OnTouchListener, Runnable {
        final View btn;
        final Object holder;
        final Face face;
        long down;
        boolean inside;
        boolean done;
        boolean holdable;

        Press(View btn, Object holder, Face face) {
            this.btn = btn;
            this.holder = holder;
            this.face = face;
        }

        TrainItem item() {
            try {
                java.lang.reflect.Field f = holder.getClass().getDeclaredField("item");
                f.setAccessible(true);
                return (TrainItem) f.get(holder);
            } catch (Throwable t) {
                return null;
            }
        }

        public boolean onTouch(View v, MotionEvent e) {
            switch (e.getActionMasked()) {
                case MotionEvent.ACTION_DOWN: {
                    down = System.currentTimeMillis();
                    inside = true;
                    done = false;
                    TrainItem it = item();
                    ProgramDataBean b = bean(it);
                    holdable = it != null && b != null && b.activePause && !muscle(it) && blocked(it) == null;
                    v.setPressed(true);
                    v.animate().scaleX(0.92f).scaleY(0.92f).setDuration(90L).start();
                    if (holdable) {
                        MAIN.removeCallbacks(this);
                        MAIN.postDelayed(this, 16L);
                    }
                    return true;
                }
                case MotionEvent.ACTION_MOVE: {
                    float slop = 16f * v.getResources().getDisplayMetrics().density;
                    if (inside && (e.getX() < -slop || e.getY() < -slop || e.getX() > v.getWidth() + slop
                            || e.getY() > v.getHeight() + slop)) {
                        inside = false;
                        release(v);
                    }
                    return true;
                }
                case MotionEvent.ACTION_UP: {
                    boolean tap = inside && !done;
                    release(v);
                    if (tap) {
                        TrainItem it = item();
                        if (it != null) {
                            click(it, v);
                        }
                    }
                    return true;
                }
                case MotionEvent.ACTION_CANCEL:
                    inside = false;
                    release(v);
                    return true;
                default:
                    return true;
            }
        }

        void release(View v) {
            v.setPressed(false);
            v.animate().scaleX(1f).scaleY(1f).setDuration(120L).start();
            if (!done) {
                MAIN.removeCallbacks(this);
                ring(false);
            }
        }

        /** The big hold ring over the screen, around the key (at least the size of the client's photo). */
        BigRing big;

        void ring(boolean show) {
            try {
                View root = btn.getRootView();
                if (root == null) {
                    return;
                }
                if (!show) {
                    if (big != null) {
                        root.getOverlay().remove(big);
                    }
                    return;
                }
                if (big == null) {
                    big = new BigRing(btn.getResources().getDisplayMetrics().density);
                }
                int[] a = new int[2];
                int[] r = new int[2];
                btn.getLocationInWindow(a);
                root.getLocationInWindow(r);
                big.cx = a[0] - r[0] + btn.getWidth() / 2f;
                big.cy = a[1] - r[1] + btn.getHeight() / 2f;
                big.r = radius();
                big.setBounds(0, 0, root.getWidth(), root.getHeight());
                root.getOverlay().remove(big);
                root.getOverlay().add(big);
            } catch (Throwable t) {
                WearableBleDiagLog.log("index", "double ring: " + t);
            }
        }

        /** The client's photo's radius (+ a margin); never smaller than a big circle around the key. */
        float radius() {
            float d = btn.getResources().getDisplayMetrics().density;
            float r = 64f * d;
            try {
                View row = row(btn);
                int id = btn.getResources().getIdentifier("userIcon", "id", btn.getContext().getPackageName());
                View icon = row != null && id != 0 ? row.findViewById(id) : null;
                if (icon != null && icon.getWidth() > 0) {
                    r = Math.max(r, Math.max(icon.getWidth(), icon.getHeight()) / 2f + 8f * d);
                }
            } catch (Throwable ignored) {
            }
            return r;
        }

        public void run() {
            long now = System.currentTimeMillis();
            if (inside && !done && holdable) {
                long t = now - down;
                if (t >= HOLD_SHOW_MS) {
                    if (big == null || big.progress <= 0f) {
                        ring(true);
                    }
                    big.flash = 0f;
                    big.progress = Math.min(1f, (t - HOLD_SHOW_MS) / (float) (HOLD_MS - HOLD_SHOW_MS));
                    big.invalidateSelf();
                }
                if (t >= HOLD_MS) {
                    done = true;
                    down = now;
                    TrainItem it = item();
                    boolean ok = false;
                    try {
                        ok = it != null && sync(it, btn);
                    } catch (Throwable x) {
                        WearableBleDiagLog.log("index", "double sync: " + x);
                    }
                    if (ok) {
                        btn.performHapticFeedback(HapticFeedbackConstants.LONG_PRESS);
                        if (big != null) {
                            big.flash = 1f;
                        }
                    } else {
                        ring(false);
                        return;
                    }
                }
                MAIN.postDelayed(this, 16L);
                return;
            }
            if (big != null && big.flash > 0f) {         // after the sync: the full ring glows and fades out
                big.flash = Math.max(0f, 1f - (now - down) / 550f);
                big.invalidateSelf();
                if (big.flash > 0f) {
                    MAIN.postDelayed(this, 16L);
                    return;
                }
            }
            if (big != null) {
                big.progress = 0f;
            }
            ring(false);
        }
    }

    /** The hold ring over the screen: a faint track, a green arc that fills in the hold time, a bright head. */
    static final class BigRing extends Drawable {
        final float d;
        final Paint track = new Paint(Paint.ANTI_ALIAS_FLAG);
        final Paint arc = new Paint(Paint.ANTI_ALIAS_FLAG);
        final Paint head = new Paint(Paint.ANTI_ALIAS_FLAG);
        final RectF oval = new RectF();
        float cx, cy, r, progress, flash;

        BigRing(float density) {
            d = density;
            track.setStyle(Paint.Style.STROKE);
            arc.setStyle(Paint.Style.STROKE);
            arc.setStrokeCap(Paint.Cap.ROUND);
            head.setStyle(Paint.Style.FILL);
        }

        public void draw(Canvas c) {
            if (r <= 0f || (progress <= 0f && flash <= 0f)) {
                return;
            }
            oval.set(cx - r, cy - r, cx + r, cy + r);
            track.setStrokeWidth(10f * d);
            track.setColor(0x26000000);
            c.drawCircle(cx, cy, r, track);
            track.setStrokeWidth(5f * d);
            track.setColor(0x40FFFFFF);
            c.drawCircle(cx, cy, r, track);
            if (flash > 0f) {
                arc.setStrokeWidth((5f + 6f * flash) * d);
                arc.setColor(GREEN);
                arc.setAlpha(Math.round(255 * flash));
                c.drawCircle(cx, cy, r, arc);
                return;
            }
            arc.setStrokeWidth(5f * d);
            arc.setColor(GREEN);
            arc.setAlpha(255);
            float sweep = 360f * progress;
            c.drawArc(oval, -90f, sweep, false, arc);
            double ang = Math.toRadians(-90f + sweep);
            float hx = cx + (float) (r * Math.cos(ang));
            float hy = cy + (float) (r * Math.sin(ang));
            head.setColor(0x66FFFFFF);
            c.drawCircle(hx, hy, 7f * d, head);
            head.setColor(0xFFFFFFFF);
            c.drawCircle(hx, hy, 3.5f * d, head);
        }

        public void setAlpha(int alpha) {
        }

        public void setColorFilter(ColorFilter cf) {
        }

        public int getOpacity() {
            return PixelFormat.TRANSLUCENT;
        }
    }

    /**
     * The button: a round amber key with the double-impulse symbol (two pulses, the second lower — ai/ImpulseGlyph),
     * the full size of the view like the stock stop / start keys above it (1.1.384). Off = dark with an amber rim and
     * symbol; on = filled amber, white symbol; setup = the same with a white ring that runs down the 5 s; hold = a
     * green ring that fills; Мускули = off look (the view at alpha 0.4).
     */
    static final class Face extends Drawable {
        static final int NONE = -1;
        static final int OFF = 0;
        static final int ON = 1;
        static final int SETUP = 2;

        final float d;
        final Paint fill = new Paint(Paint.ANTI_ALIAS_FLAG);
        final Paint line = new Paint(Paint.ANTI_ALIAS_FLAG);
        final Paint glyph = new Paint(Paint.ANTI_ALIAS_FLAG);
        final RectF oval = new RectF();
        int mode = OFF;
        float left;
        float hold;
        float flash;

        Face(float density) {
            d = density;
            line.setStyle(Paint.Style.STROKE);
            line.setStrokeCap(Paint.Cap.ROUND);
            glyph.setStyle(Paint.Style.STROKE);
            glyph.setStrokeCap(Paint.Cap.ROUND);
            glyph.setStrokeJoin(Paint.Join.ROUND);
        }

        public void draw(Canvas c) {
            Rect r = getBounds();
            float cx = r.exactCenterX();
            float cy = r.exactCenterY();
            float body = Math.min(r.width(), r.height()) / 2f;   // the full key, as the stock ■ / ▶ next to it
            if (body <= 0f) {
                return;
            }
            boolean filled = mode == ON || mode == SETUP;
            fill.setColor(filled ? KEY : 0xFF2B2B2B);
            c.drawCircle(cx, cy, body, fill);
            if (!filled) {
                line.setColor(KEY);
                line.setStrokeWidth(2.5f * d);
                c.drawCircle(cx, cy, body - 1.25f * d, line);
            }
            float s = body * 1.1f;
            glyph.setColor(filled ? 0xFFFFFFFF : KEY);
            glyph.setStrokeWidth(Math.max(2f * d, s * 0.1f));
            ImpulseGlyph.draw(c, ImpulseGlyph.DOUBLE, cx - s / 2f, cy - s / 2f, s, glyph);
            float in = 3f * d;
            oval.set(cx - body + in, cy - body + in, cx + body - in, cy + body - in);
            line.setStrokeWidth(2.5f * d);
            if (mode == SETUP && left > 0f && hold <= 0f && flash <= 0f) {
                line.setColor(0xE6FFFFFF);               // the 5 s of the setup, running down
                c.drawArc(oval, -90f, 360f * left, false, line);
            }
            if (hold > 0f) {
                line.setColor(0x40FFFFFF);
                c.drawCircle(cx, cy, oval.width() / 2f, line);
                line.setColor(GREEN);
                line.setStrokeWidth(3.5f * d);
                c.drawArc(oval, -90f, 360f * hold, false, line);
            }
            if (flash > 0f) {
                line.setColor(GREEN);
                line.setStrokeWidth(3.5f * d);
                line.setAlpha(Math.round(255 * flash));
                c.drawCircle(cx, cy, oval.width() / 2f, line);
                line.setAlpha(255);
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

    // ================================================================ the glow, three times

    /**
     * Three soft glows on the second impulse's controls (owner, 1.1.386: a real glow, no outlines). Each control gets
     * a halo made from its own shape — the text, the icon, the round key, the bar — blurred and tinted amber, and the
     * halo lives in <b>that view's own overlay</b> (owner, 1.1.401): it is drawn in the control's own coordinates, so it
     * moves, turns (the avatar ring is rotated 180°), scales, hides and clips exactly with the control — there is no
     * position to work out and nothing can drift. It breathes in and out three times.
     */
    static final class Blink implements Runnable {
        final List<View> views;
        final List<View> fade;
        final List<Halo> halos = new ArrayList<Halo>();
        long start;
        boolean built;

        Blink(List<View> views, List<View> fade) {
            this.views = views;
            this.fade = fade;
        }

        static void start(List<View> views, List<View> fade) {
            MAIN.postDelayed(new Blink(views, fade), 48L);   // after the row's layout and texts are final
        }

        void build() {
            built = true;
            for (View v : views) {
                Halo h = Halo.of(v);
                if (h != null) {
                    v.getOverlay().add(h);
                    halos.add(h);
                }
            }
            start = System.currentTimeMillis();
        }

        void clear() {
            for (Halo h : halos) {
                View v = h.view != null ? h.view.get() : null;
                if (v != null) {
                    v.getOverlay().remove(h);
                    v.invalidate();
                }
                h.recycle();
            }
            halos.clear();
        }

        public void run() {
            try {
                if (!built) {
                    build();
                }
                long t = System.currentTimeMillis() - start;
                boolean end = t >= BLINK_MS * BLINKS || halos.isEmpty();
                float a = 0f;
                if (!end) {
                    float ph = (t % BLINK_MS) / (float) BLINK_MS;
                    a = (float) Math.sin(Math.PI * ph);
                    a = a * a * (3f - 2f * a);           // smooth in, smooth out
                }
                if (end) {
                    clear();
                } else {
                    for (Halo h : halos) {
                        h.level = a;
                        h.invalidateSelf();
                    }
                }
                for (View v : fade) {
                    v.setAlpha(end ? 1f : 1f - 0.2f * a);
                }
                if (!end) {
                    MAIN.postDelayed(this, 16L);
                }
            } catch (Throwable x) {
                WearableBleDiagLog.log("index", "double glow: " + x);
                try {
                    clear();
                } catch (Throwable ignored) {
                    // the overlay is gone with its view
                }
                for (View v : fade) {
                    v.setAlpha(1f);
                }
            }
        }
    }

    /** A view's glow: its own shape blurred twice (a wide halo and a closer one), tinted amber, in the view's coordinates. */
    static final class Halo extends Drawable {
        static final float SCALE = 0.5f;
        android.graphics.Bitmap bmp;
        final Paint p = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);
        final android.graphics.Matrix m = new android.graphics.Matrix();
        WeakReference<View> view;
        float level;

        static Halo of(View v) {
            int w = v.getWidth(), h = v.getHeight();
            if (w <= 0 || h <= 0 || !v.isShown()) {
                return null;
            }
            float d = v.getResources().getDisplayMetrics().density;
            int sw = Math.max(1, Math.round(w * SCALE)), sh = Math.max(1, Math.round(h * SCALE));
            android.graphics.Bitmap src = android.graphics.Bitmap.createBitmap(sw, sh,
                    android.graphics.Bitmap.Config.ARGB_8888);
            Canvas cs = new Canvas(src);
            cs.scale(SCALE, SCALE);
            v.draw(cs);
            float wide = Math.max(2f, 11f * d * SCALE);
            float near = Math.max(1f, 4f * d * SCALE);
            Paint blur = new Paint();
            blur.setMaskFilter(new android.graphics.BlurMaskFilter(wide, android.graphics.BlurMaskFilter.Blur.NORMAL));
            int[] offW = new int[2];
            android.graphics.Bitmap aw = src.extractAlpha(blur, offW);
            blur.setMaskFilter(new android.graphics.BlurMaskFilter(near, android.graphics.BlurMaskFilter.Blur.NORMAL));
            int[] offN = new int[2];
            android.graphics.Bitmap an = src.extractAlpha(blur, offN);
            src.recycle();
            android.graphics.Bitmap out = android.graphics.Bitmap.createBitmap(aw.getWidth(), aw.getHeight(),
                    android.graphics.Bitmap.Config.ARGB_8888);
            Canvas co = new Canvas(out);
            Paint tint = new Paint(Paint.ANTI_ALIAS_FLAG);
            tint.setColor(0xFFFFB300);
            co.drawBitmap(aw, 0, 0, tint);
            co.drawBitmap(aw, 0, 0, tint);           // the wide halo twice: a fuller glow, still soft at the edge
            tint.setColor(0xFFFFD54F);
            tint.setAlpha(170);
            co.drawBitmap(an, offN[0] - offW[0], offN[1] - offW[1], tint);
            aw.recycle();
            an.recycle();
            Halo hl = new Halo();
            hl.bmp = out;
            hl.view = new WeakReference<View>(v);
            hl.m.setScale(1f / SCALE, 1f / SCALE);
            hl.m.postTranslate(offW[0] / SCALE, offW[1] / SCALE);   // the view's own coordinates: (0, 0) is its corner
            int pad = Math.round(40f * d);
            hl.setBounds(-pad, -pad, w + pad, h + pad);
            return hl;
        }

        public void draw(Canvas c) {
            if (level <= 0f || bmp == null || bmp.isRecycled()) {
                return;
            }
            p.setAlpha(Math.round(level * 235));
            c.drawBitmap(bmp, m, p);
        }

        void recycle() {
            android.graphics.Bitmap b = bmp;
            bmp = null;
            if (b != null) {
                b.recycle();
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

    // ================================================================ the note at the bottom

    /** A half-transparent note at the bottom of the screen: which mode the row went into, and what to do there. */
    static final class Note {
        private static WeakReference<LinearLayout> box;
        private static TextView titleView;
        private static TextView hintView;
        private static boolean sticky;
        private static final Hide HIDE = new Hide();

        static boolean showing() {
            LinearLayout b = box != null ? box.get() : null;
            return b != null && b.getParent() != null && b.getTag() == null;
        }

        /** {@code ms} 0 = stays until the next note (the setup's). */
        static void show(View anchor, String title, String hint, int accent, long ms) {
            try {
                if (anchor == null) {
                    return;
                }
                FrameLayout content = content(anchor);
                if (content == null) {
                    return;
                }
                Context c = anchor.getContext();
                float d = c.getResources().getDisplayMetrics().density;
                LinearLayout b = box != null ? box.get() : null;
                if (b == null || b.getParent() != content) {
                    if (b != null && b.getParent() instanceof ViewGroup) {
                        ((ViewGroup) b.getParent()).removeView(b);
                    }
                    b = new LinearLayout(c);
                    b.setOrientation(LinearLayout.VERTICAL);
                    b.setGravity(Gravity.CENTER_HORIZONTAL);
                    int ph = Math.round(22 * d), pv = Math.round(12 * d);
                    b.setPadding(ph, pv, ph, pv);
                    b.setClickable(false);
                    b.setFocusable(false);
                    titleView = new TextView(c);
                    titleView.setTextSize(TypedValue.COMPLEX_UNIT_SP, 18f);
                    titleView.setTypeface(android.graphics.Typeface.DEFAULT_BOLD);
                    titleView.setGravity(Gravity.CENTER);
                    hintView = new TextView(c);
                    hintView.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14f);
                    hintView.setTextColor(0xE6FFFFFF);
                    hintView.setGravity(Gravity.CENTER);
                    hintView.setPadding(0, Math.round(3 * d), 0, 0);
                    b.addView(titleView, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                            ViewGroup.LayoutParams.WRAP_CONTENT));
                    b.addView(hintView, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                            ViewGroup.LayoutParams.WRAP_CONTENT));
                    FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                            ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.BOTTOM | Gravity.CENTER_HORIZONTAL);
                    lp.bottomMargin = Math.round(24 * d);
                    int side = Math.round(16 * d);
                    lp.leftMargin = side;
                    lp.rightMargin = side;
                    content.addView(b, lp);
                    b.setAlpha(0f);
                    b.setTranslationY(16 * d);
                    box = new WeakReference<LinearLayout>(b);
                }
                GradientDrawable bg = new GradientDrawable();
                bg.setColor(0xD9181818);
                bg.setCornerRadius(20 * d);
                bg.setStroke(Math.round(1.5f * d), accent);
                b.setBackground(bg);
                titleView.setText(title);
                titleView.setTextColor(accent == GREY ? 0xFFFFFFFF : accent);
                hintView.setText(hint != null ? hint : "");
                hintView.setVisibility(hint != null && hint.length() > 0 ? View.VISIBLE : View.GONE);
                b.setTag(null);
                b.bringToFront();
                b.animate().cancel();
                b.animate().alpha(1f).translationY(0f).setDuration(180L).start();
                sticky = ms <= 0L;
                MAIN.removeCallbacks(HIDE);
                if (!sticky) {
                    MAIN.postDelayed(HIDE, ms);
                }
            } catch (Throwable t) {
                WearableBleDiagLog.log("index", "double note: " + t);
            }
        }

        /** The setups are over: a note that stayed for them goes. */
        static void hideSticky() {
            if (sticky) {
                sticky = false;
                hide();
            }
        }

        static void hide() {
            MAIN.removeCallbacks(HIDE);
            LinearLayout b = box != null ? box.get() : null;
            if (b == null || b.getParent() == null) {
                return;
            }
            b.setTag(HIDE);                              // fading out: no longer "showing"
            float d = b.getResources().getDisplayMetrics().density;
            b.animate().cancel();
            b.animate().alpha(0f).translationY(12 * d).setDuration(220L).withEndAction(new Gone(b)).start();
        }

        static FrameLayout content(View anchor) {
            View root = anchor.getRootView();
            View c = root != null ? root.findViewById(android.R.id.content) : null;
            return c instanceof FrameLayout ? (FrameLayout) c : null;
        }

        static final class Hide implements Runnable {
            public void run() {
                sticky = false;
                hide();
            }
        }

        static final class Gone implements Runnable {
            final WeakReference<LinearLayout> ref;

            Gone(LinearLayout b) {
                ref = new WeakReference<LinearLayout>(b);
            }

            public void run() {
                LinearLayout b = ref.get();
                if (b != null && b.getTag() == HIDE && b.getParent() instanceof ViewGroup) {
                    ((ViewGroup) b.getParent()).removeView(b);
                }
            }
        }
    }
}
