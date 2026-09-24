package com.isaigu.gymapp.widget;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;

import com.isaigu.gymapp.MainActivity;
import com.isaigu.gymapp.train.utils.MusicDiagLog;

/**
 * Safety net for XEMS add-on code called from the app (hooks, handlers, drawing).
 * The app's AndroidCrashHandler swallows uncaught exceptions without ending the process, so an
 * exception on the main thread leaves a black screen. Every add-on entry point therefore catches
 * here: the stack goes to diag-logs (music-diag.log) and a short toast names the place.
 */
public final class XemsGuard {
    private static final Handler handler = new Handler(Looper.getMainLooper());
    private static long lastToastMs;
    private static boolean loopGuard;

    private XemsGuard() {}

    public static void report(final String where, final Throwable t) {
        try {
            MusicDiagLog.logError("xems_guard:" + where, t);
        } catch (Throwable ignored) {
        }
        long now = System.currentTimeMillis();
        if (now - lastToastMs < 4000L) {
            return;
        }
        lastToastMs = now;
        try {
            handler.post(new ToastRunnable(where, t));
        } catch (Throwable ignored) {
        }
    }

    /**
     * Keep the main thread alive: run the main looper inside a catch-all, so an exception in any
     * message (drawing, click, lifecycle) is reported instead of killing the looper — which, with
     * the app's own crash handler, left a black screen. Called once from CrashApplication.onCreate.
     */
    public static void installLoopGuard() {
        if (loopGuard) {
            return;
        }
        loopGuard = true;
        handler.post(new LoopGuard());
    }

    static final class LoopGuard implements Runnable {
        @Override
        public void run() {
            while (true) {
                try {
                    Looper.loop();
                    return;                       // looper quit normally
                } catch (Throwable t) {
                    report("main " + place(t), t);
                }
            }
        }
    }

    /** First app frame of the stack, e.g. "TimerRingView.drawDial:212". */
    static String place(Throwable t) {
        if (t == null) {
            return "";
        }
        Throwable c = t;
        while (c.getCause() != null && c.getCause() != c) {
            c = c.getCause();
        }
        for (StackTraceElement e : c.getStackTrace()) {
            if (e.getClassName().startsWith("com.isaigu")) {
                String cls = e.getClassName();
                return cls.substring(cls.lastIndexOf('.') + 1) + "." + e.getMethodName() + ":" + e.getLineNumber();
            }
        }
        StackTraceElement[] st = c.getStackTrace();
        return st.length > 0 ? st[0].getClassName() + "." + st[0].getMethodName() : "";
    }

    static final class ToastRunnable implements Runnable {
        private final String where;
        private final Throwable t;

        ToastRunnable(String where, Throwable t) {
            this.where = where;
            this.t = t;
        }

        @Override
        public void run() {
            try {
                Activity a = MainActivity.getInstance();
                if (a != null) {
                    String msg = t != null ? t.getClass().getSimpleName() + ": " + t.getMessage() : "";
                    Toast.makeText(a, XemsLang.tr("XEMS: грешка в ", "XEMS: error in ") + where + "\n" + msg, Toast.LENGTH_LONG).show();
                }
            } catch (Throwable ignored) {
            }
        }
    }
}
