package com.isaigu.gymapp.widget;

import android.content.Context;
import android.content.SharedPreferences;

import com.isaigu.gymapp.MainActivity;

/**
 * The app's own language (Settings → language: "bg" / "en", prefs setting_share/language),
 * not the tablet's system language. All add-on text goes through here.
 */
public final class XemsLang {
    private static Context appContext;

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

    public static String tr(String bg, String en) {
        return isBg() ? bg : en;
    }
}
