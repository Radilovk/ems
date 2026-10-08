package com.isaigu.gymapp.widget;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;

import java.util.Locale;

import com.isaigu.gymapp.MainActivity;

/**
 * The app's own language (Settings → language: "bg" / "en", prefs setting_share/language),
 * not the tablet's system language. All add-on text goes through here.
 * <p>
 * The vendor sets that language once (MainActivity.onCreate → Resources.updateConfiguration). Android puts
 * the system locale back on its own: the first WebView of the process (the report, the client's card that
 * goes up right after a training, the exercise catalogue) and every handled configuration change. Every
 * screen built after that (the picker for the next client, his row) came out in English on a tablet whose
 * system language is English. {@link #reapply()} sets it again; hooks: after every new WebView, MainActivity
 * .onConfigurationChanged, the start of both client / program / device pickers (apply-lang-keep.py).
 */
public final class XemsLang {
    private static Context appContext;
    private static final Handler MAIN = new Handler(Looper.getMainLooper());

    private XemsLang() {}

    public static void init(Context c) {
        if (c != null && appContext == null) {
            appContext = c.getApplicationContext() != null ? c.getApplicationContext() : c;
        }
    }

    public static boolean isBg() {
        try {
            Context c = appContext;
            if (c == null) {
                c = MainActivity.getInstance();
                init(c);
            }
            if (c == null) {
                return true;
            }
            SharedPreferences p = c.getSharedPreferences("setting_share", Context.MODE_PRIVATE);
            return !"en".equals(p.getString("language", "bg"));
        } catch (Throwable t) {
            return true;
        }
    }

    /** The app's language back on the main screen's resources (and the application's) if Android reset it. */
    public static void reapply() {
        reapply(MainActivity.getInstance());
    }

    /** Right after a new WebView: now, and once more a moment later (Chromium may finish its start-up late). */
    public static void afterWebView(Activity a) {
        reapply(a);
        if (a != null) {
            MAIN.postDelayed(new Again(a), 1500L);
        }
    }

    static final class Again implements Runnable {
        private final Activity a;

        Again(Activity a) {
            this.a = a;
        }

        @Override
        public void run() {
            reapply(a);
        }
    }

    public static void reapply(Activity a) {
        try {
            if (a == null) {
                return;
            }
            Locale want = isBg() ? new Locale("bg", "BG") : Locale.ENGLISH;
            fix(a.getResources(), want);
            Context app = a.getApplicationContext();
            if (app != null) {
                fix(app.getResources(), want);
            }
        } catch (Throwable ignored) {
        }
    }

    @SuppressWarnings("deprecation")
    private static void fix(Resources r, Locale want) {
        if (r == null) {
            return;
        }
        Configuration cfg = r.getConfiguration();
        if (cfg.locale != null && want.getLanguage().equals(cfg.locale.getLanguage())) {
            return;
        }
        Configuration next = new Configuration(cfg);
        next.setLocale(want);
        r.updateConfiguration(next, r.getDisplayMetrics());
    }

    public static String tr(String bg, String en) {
        return isBg() ? bg : en;
    }
}
