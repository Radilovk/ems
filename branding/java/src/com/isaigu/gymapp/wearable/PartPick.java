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
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.train.utils.MusicSync;

import java.lang.ref.WeakReference;
import java.util.List;

/**
 * The muscle-group icons on the training screen, with the second impulse on:
 * <ul>
 *   <li>1st tap — green: + / − and the avatar slider change both impulses of the channel (as before);</li>
 *   <li>2nd tap, still green — yellow: they change the channel's second impulse alone (SecondParts);</li>
 *   <li>3rd tap, on yellow — off;</li>
 *   <li>a mark clears itself 5 s after the last action with it (tap, + / −, slider), green or yellow.</li>
 * </ul>
 * Without a second impulse a tap just marks / unmarks, and the mark stays. The marks are the fragment's own
 * {@code partsControl} (a yellow channel is marked there too, so everything that reads the selection still works);
 * this class only adds which marked channels are yellow.
 * Hooks: NewTrainFragment.changePartControl (click), applyMuscleIndexVisual (tint), SessionRecorder tick
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

    private PartPick() {}

    /** The channel is marked yellow: its changes go to the second impulse only. */
    public static boolean isYellow(int i) {
        return i >= 0 && i < N && YELLOW[i] && ctl != null && i < ctl.length && ctl[i];
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
    public static boolean click(NewTrainFragment f, boolean[] marks, int i) {
        try {
            if (marks == null || i < 0 || i >= marks.length || i >= N) {
                return false;
            }
            ctl = marks;
            frag = new WeakReference<NewTrainFragment>(f);
            List<TrainItem> items = f != null && f.manager != null ? f.manager.getItemList() : null;
            if (!secondOn(items)) {
                YELLOW[i] = false;
                LAST[i] = System.currentTimeMillis();
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
            LAST[i] = System.currentTimeMillis();
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

    /** SessionRecorder, every second: a mark that had no action for 5 s goes off; yellow without a second impulse is plain. */
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
                    YELLOW[i] = false;                          // the second impulse went off: a plain mark stays
                    LAST[i] = now;
                } else if (now - LAST[i] >= IDLE_MS) {
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
     * Hook: end of NewTrainFragment.applyMuscleIndexVisual — a yellow channel gets the yellow instead of the green
     * frame (cell = the channel's box, icon = its picture).
     */
    public static void tint(View cell, View icon, int i) {
        try {
            if (cell == null || !isYellow(i)) {
                return;
            }
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
            if (cell instanceof ViewGroup && ((ViewGroup) cell).getChildAt(0) instanceof TextView) {
                ((TextView) ((ViewGroup) cell).getChildAt(0)).setTextColor(0xFFFFB300);
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("index", "part tint: " + t);
        }
    }
}
