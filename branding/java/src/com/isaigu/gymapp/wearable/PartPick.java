package com.isaigu.gymapp.wearable;

import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.fragment.NewTrainFragment;
import com.isaigu.gymapp.train.TrainItemManager;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.train.utils.MusicSync;
import com.isaigu.gymapp.utils.ThemeUtils;

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
 * Hooks: NewTrainFragment.changePartControl (click, with the fragment's own manager: the field is package-private),
 * end of updateMuscleSelectionVisual (tint), SessionRecorder tick (scripts/apply-pause-parts.py).
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
}
