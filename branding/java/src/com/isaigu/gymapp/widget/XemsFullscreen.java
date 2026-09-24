package com.isaigu.gymapp.widget;

import android.app.Activity;
import android.app.Dialog;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;

/**
 * Full screen: status and navigation bars hidden; a swipe from the edge shows them for a moment
 * ("sticky immersive"), then they hide again. Dialogs of the add-ons follow the same mode.
 */
public final class XemsFullscreen {
    private static final int FLAGS = View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
            | View.SYSTEM_UI_FLAG_HIDE_NAVIGATION
            | View.SYSTEM_UI_FLAG_FULLSCREEN
            | View.SYSTEM_UI_FLAG_LAYOUT_STABLE
            | View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION
            | View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN;

    private static final Handler handler = new Handler(Looper.getMainLooper());

    private XemsFullscreen() {}

    public static void apply(Activity a) {
        try {
            if (a == null || a.getWindow() == null) {
                return;
            }
            applyTo(a.getWindow());
            View decor = a.getWindow().getDecorView();
            decor.setOnSystemUiVisibilityChangeListener(new Rehide(decor));
        } catch (Throwable t) {
            XemsGuard.report("XemsFullscreen.apply", t);
        }
    }

    static void applyTo(Window w) {
        if (w == null) {
            return;
        }
        w.addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN);
        w.getDecorView().setSystemUiVisibility(FLAGS);
    }

    /**
     * Show a dialog without bringing the bars back: the window starts not focusable (so the
     * system does not reveal the bars), takes the immersive flags, then becomes focusable.
     */
    public static void showDialog(Dialog d) {
        Window w = d != null ? d.getWindow() : null;
        if (w == null) {
            if (d != null) {
                d.show();
            }
            return;
        }
        try {
            w.setFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
                    WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE);
            d.show();
            applyTo(w);
            w.clearFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE);
        } catch (Throwable t) {
            try {
                w.clearFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE);
                if (!d.isShowing()) {
                    d.show();
                }
            } catch (Throwable ignored) {
            }
        }
    }

    /** Bars came back (swipe, keyboard, system dialog): hide them again after a moment. */
    static final class Rehide implements View.OnSystemUiVisibilityChangeListener, Runnable {
        private final View decor;

        Rehide(View decor) {
            this.decor = decor;
        }

        @Override
        public void onSystemUiVisibilityChange(int visibility) {
            if ((visibility & View.SYSTEM_UI_FLAG_HIDE_NAVIGATION) == 0) {
                handler.removeCallbacks(this);
                handler.postDelayed(this, 2500);
            }
        }

        @Override
        public void run() {
            try {
                decor.setSystemUiVisibility(FLAGS);
            } catch (Throwable ignored) {
            }
        }
    }
}
