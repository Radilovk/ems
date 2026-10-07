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
 *   <li>5 s without an action: back to the normal double impulse (the two take turns again); there every control
 *       sets the main impulse (the second one keeps its share of the main strength, as always) and the 2nd-impulse
 *       index buttons are hidden.</li>
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
    static final long BLINK_MS = 280L;
    static final int BLINKS = 3;
    static final int MUSCLE = 1;

    static final int AMBER = 0xFFFFC107;
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
        changed(it);
        Note.show(v, title(it, XemsLang.tr("Режим с пауза", "Pause mode")),
                XemsLang.tr("Вторият импулс е изключен", "The second impulse is off"), GREY, 2400L);
    }

    /** 5 s without an action: the two impulses take turns again, the controls set the main one. */
    static void leave(TrainItem it, View v, boolean say) {
        synchronized (SETUP) {
            SETUP.remove(it);
        }
        clearSecond(it);
        changed(it);
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
            View pm = row.findViewById(idPauseMa);
            View ph = row.findViewById(idPauseHz);
            for (View x : new View[] {pm, ph}) {
                if (x != null && x.getVisibility() != View.GONE) {   // GONE: Мускули (the stock display)
                    int want = on ? View.VISIBLE : View.INVISIBLE;
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
                face.hold = 0f;
                face.invalidateSelf();
            }
        }

        public void run() {
            long now = System.currentTimeMillis();
            if (inside && !done && holdable) {
                long t = now - down;
                face.hold = t < HOLD_SHOW_MS ? 0f : Math.min(1f, t / (float) HOLD_MS);
                if (t >= HOLD_MS) {
                    done = true;
                    face.hold = 0f;
                    face.flash = 1f;
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
                    } else {
                        face.flash = 0f;
                    }
                }
                face.invalidateSelf();
                MAIN.postDelayed(this, 16L);
                return;
            }
            if (face.flash > 0f) {                       // after the sync: the full ring glows and fades out
                face.flash = Math.max(0f, 1f - (now - down) / 500f);
                face.invalidateSelf();
                if (face.flash > 0f) {
                    MAIN.postDelayed(this, 16L);
                }
            }
        }
    }

    /**
     * The button: a round yellow key with the double-impulse symbol (two pulses, the second lower — ai/ImpulseGlyph).
     * Off = dark with a yellow rim and symbol; on = filled yellow; setup = filled yellow, a glow and a green ring that
     * runs down the 5 s; hold = a white ring that fills; Мускули = off look (the view at alpha 0.4).
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
            float outer = Math.min(r.width(), r.height()) / 2f - 1.5f * d;
            if (outer <= 0f) {
                return;
            }
            float body = outer - 4f * d;
            boolean filled = mode == ON || mode == SETUP;
            if (mode == SETUP) {
                fill.setColor(0x44FFC107);               // the glow around the key
                c.drawCircle(cx, cy, outer, fill);
            }
            fill.setColor(filled ? AMBER : 0xFF262626);
            c.drawCircle(cx, cy, body, fill);
            if (!filled) {
                line.setShader(null);
                line.setColor(AMBER);
                line.setStrokeWidth(2f * d);
                c.drawCircle(cx, cy, body - 1f * d, line);
            }
            float s = body * 1.15f;
            glyph.setColor(filled ? 0xFF3A2A00 : AMBER);
            glyph.setStrokeWidth(Math.max(1.6f * d, s * 0.085f));
            ImpulseGlyph.draw(c, ImpulseGlyph.DOUBLE, cx - s / 2f, cy - s / 2f, s, glyph);
            oval.set(cx - outer + 1.5f * d, cy - outer + 1.5f * d, cx + outer - 1.5f * d, cy + outer - 1.5f * d);
            line.setStrokeWidth(3f * d);
            if (mode == SETUP && left > 0f && hold <= 0f && flash <= 0f) {
                line.setColor(GREEN);                    // the 5 s of the setup, running down
                c.drawArc(oval, -90f, 360f * left, false, line);
            }
            if (hold > 0f) {
                line.setColor(0x55FFFFFF);
                c.drawCircle(cx, cy, oval.width() / 2f, line);
                line.setColor(0xFFFFFFFF);
                c.drawArc(oval, -90f, 360f * hold, false, line);
            }
            if (flash > 0f) {
                line.setColor(GREEN);
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

    /** Three quick glows on the second impulse's controls; texts blink with it. */
    static final class Blink implements Runnable {
        final List<View> views;
        final List<Glow> glows = new ArrayList<Glow>();
        final List<View> fade;
        final long start = System.currentTimeMillis();

        Blink(List<View> views, List<View> fade) {
            this.views = views;
            this.fade = fade;
        }

        static void start(List<View> views, List<View> fade) {
            Blink b = new Blink(views, fade);
            for (View v : views) {
                Glow g = new Glow(v.getResources().getDisplayMetrics().density,
                        Math.abs(v.getWidth() - v.getHeight()) <= Math.max(4, v.getWidth() / 8));
                g.setBounds(0, 0, v.getWidth(), v.getHeight());
                v.getOverlay().add(g);
                b.glows.add(g);
            }
            MAIN.post(b);
        }

        public void run() {
            long t = System.currentTimeMillis() - start;
            boolean end = t >= BLINK_MS * BLINKS;
            float a = 0f;
            if (!end) {
                float ph = (t % BLINK_MS) / (float) BLINK_MS;
                a = (float) Math.sin(Math.PI * ph);
            }
            for (int i = 0; i < views.size(); i++) {
                View v = views.get(i);
                Glow g = glows.get(i);
                if (end) {
                    v.getOverlay().remove(g);
                } else {
                    g.setBounds(0, 0, v.getWidth(), v.getHeight());
                    g.level = a;
                    g.invalidateSelf();
                    v.invalidate();
                }
            }
            for (View v : fade) {
                v.setAlpha(end ? 1f : 1f - 0.65f * a);
            }
            if (!end) {
                MAIN.postDelayed(this, 16L);
            }
        }
    }

    /** A soft yellow glow over a view (oval for round keys, rounded box for the rest). */
    static final class Glow extends Drawable {
        final float d;
        final boolean round;
        final Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
        final RectF box = new RectF();
        float level;

        Glow(float density, boolean round) {
            d = density;
            this.round = round;
        }

        public void draw(Canvas c) {
            if (level <= 0f) {
                return;
            }
            Rect r = getBounds();
            float rad = round ? Math.min(r.width(), r.height()) / 2f : 8f * d;
            for (int k = 0; k < 3; k++) {                // a few strokes of falling strength: a glow, no blur needed
                float in = (1.5f + 3f * k) * d;
                box.set(r.left + in, r.top + in, r.right - in, r.bottom - in);
                if (box.width() <= 0f || box.height() <= 0f) {
                    break;
                }
                p.setStyle(Paint.Style.STROKE);
                p.setStrokeWidth(3f * d);
                p.setColor(AMBER);
                p.setAlpha(Math.round(level * (k == 0 ? 235 : k == 1 ? 120 : 55)));
                float rr = Math.max(0f, rad - in);
                c.drawRoundRect(box, rr, rr, p);
            }
            p.setStyle(Paint.Style.FILL);
            p.setColor(AMBER);
            p.setAlpha(Math.round(level * 60));
            box.set(r.left, r.top, r.right, r.bottom);
            c.drawRoundRect(box, rad, rad, p);
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
