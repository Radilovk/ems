package com.isaigu.gymapp.widget;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.isaigu.gymapp.bean.TrainUser;
import com.isaigu.gymapp.bean.UserData;
import com.isaigu.gymapp.utils.FileUtils;

/**
 * Hidden doors of the tablet build.
 *
 * <ul>
 *   <li><b>Login</b> — never shown and never sent anywhere (1.1.330): the splash screen takes the vendor's own
 *       offline path with a local session ({@link #localSession()}) — no account, no password in the app, no
 *       dependence on the vendor's server. 7 taps on "Language" in Settings restart the app into the real login
 *       screen, once (typed by hand).</li>
 *   <li><b>Access &amp; licence</b> — hidden once a key is entered; 7 taps on "Dark theme"
 *       show it again (until the app restarts).</li>
 * </ul>
 */
public final class XemsLocalGate {
    /** The local session's placeholders: the vendor's offline path only checks that they are not empty. */
    static final String LOCAL_USER = "xems";
    static final String LOCAL_PASSWORD = "local";
    static final String ROLE_COACH = "ROLE_COACH";
    static final String FILE_LOGIN_USER = "file_name_login_user";

    private static final String PREFS = "xems_local_store";
    private static final String KEY_LOGIN_SCREEN = "show_login_once";
    private static final String LICENSE_TAG = "xems_license_section";
    private static final int TAPS = 7;
    private static final long TAP_WINDOW_MS = 3000L;

    /** Licence card shown again by the Dark theme taps (this run of the app only). */
    private static volatile boolean licenceRevealed;

    private XemsLocalGate() {}

    // ================================================================ login

    /** SplashFragment: true = go to the login screen instead of the saved auto-login. */
    public static boolean wantLoginScreen() {
        Context c = XemsLocalStore.getAppContext();
        return c != null && prefs(c).getBoolean(KEY_LOGIN_SCREEN, false);
    }

    /**
     * SplashFragment, before its "logged in?" check: a local session instead of the vendor's account. A new
     * install gets one; an older install that logged in with the house account keeps its session, but the real
     * password is overwritten (nothing of the vendor account stays on the tablet). Always true unless the
     * trainer asked for the login screen (7 taps).
     */
    public static boolean localSession() {
        try {
            if (wantLoginScreen()) {
                return false;
            }
            UserData u = UserData.getInstance();
            if (u == null) {
                return false;
            }
            boolean changed = false;
            if (!u.autoLogin || isEmpty(u.userName)) {
                u.userName = LOCAL_USER;
                u.autoLogin = true;
                u.rememberPassword = true;
                u.roleName = ROLE_COACH;
                changed = true;
            }
            if (!LOCAL_PASSWORD.equals(u.password)) {
                u.password = LOCAL_PASSWORD;
                changed = true;
            }
            if (isEmpty(u.roleName)) {
                u.roleName = ROLE_COACH;
                changed = true;
            }
            if (changed) {
                FileUtils.saveData(u);
            }
            if (FileUtils.getData(FILE_LOGIN_USER, TrainUser.class) == null) {
                TrainUser me = new TrainUser();
                me.id = 1L;
                me.name = "XEMS";
                me.nickName = "XEMS";
                me.username = LOCAL_USER;
                me.roleName = ROLE_COACH;
                FileUtils.saveData(FILE_LOGIN_USER, me);
            }
            return true;
        } catch (Throwable t) {
            android.util.Log.e("xems_gate", "localSession", t);
            return false;
        }
    }

    private static boolean isEmpty(String s) {
        return s == null || s.length() == 0;
    }

    /** End of LoginFragment.onCreateView (shown only on request): the next start goes past it again. */
    public static void onLoginView(final Object fragment, View root) {
        try {
            Context c = XemsLocalStore.getAppContext();
            if (c != null && prefs(c).getBoolean(KEY_LOGIN_SCREEN, false)) {
                prefs(c).edit().putBoolean(KEY_LOGIN_SCREEN, false).apply();   // this time by hand
            }
        } catch (Throwable t) {
            android.util.Log.e("xems_gate", "onLoginView", t);
        }
    }

    /** Restart the app into the login screen (7 taps on Language). */
    static void restartToLogin(Activity a) {
        prefs(a).edit().putBoolean(KEY_LOGIN_SCREEN, true).commit();
        Intent i = a.getPackageManager().getLaunchIntentForPackage(a.getPackageName());
        if (i != null) {
            i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK);
            a.startActivity(i);
        }
        a.finishAffinity();
        android.os.Process.killProcess(android.os.Process.myPid());
    }

    // ================================================================ settings

    /** SettingFragment (with XemsLocalSection): the two tap doors and the licence card rule. */
    public static void attach(final Activity a, View root) {
        try {
            if (a == null || !(root instanceof ViewGroup)) {
                return;
            }
            final ViewGroup group = (ViewGroup) root;
            TextView language = findLabel(a, group, "setlanguage");
            if (language != null) {
                onTaps(language, new Runnable() {
                    @Override
                    public void run() {
                        Toast.makeText(a, XemsLocalStore.tr("Рестарт към входа…", "Restarting to login…"),
                                Toast.LENGTH_SHORT).show();
                        restartToLogin(a);
                    }
                });
            }
            TextView dark = findLabel(a, group, "setdarktheme");
            if (dark != null) {
                onTaps(dark, new Runnable() {
                    @Override
                    public void run() {
                        licenceRevealed = true;
                        applyLicenceRule(group);
                        Toast.makeText(a, XemsLocalStore.tr("Достъп и лиценз", "Access & licence"),
                                Toast.LENGTH_SHORT).show();
                    }
                });
            }
            applyLicenceRule(group);
            // The licence card is rebuilt after an activation: hide it then too.
            group.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
                @Override
                public void onGlobalLayout() {
                    applyLicenceRule(group);
                }
            });
        } catch (Throwable t) {
            android.util.Log.e("xems_gate", "attach", t);
        }
    }

    /** Hidden while a key is entered, unless the Dark theme taps opened it. */
    static void applyLicenceRule(ViewGroup root) {
        View card = root.findViewWithTag(LICENSE_TAG);
        if (card == null) {
            return;
        }
        String key = XemsLicense.key();
        boolean hide = !licenceRevealed && key != null && key.trim().length() > 0;
        int want = hide ? View.GONE : View.VISIBLE;
        if (card.getVisibility() != want) {
            card.setVisibility(want);
        }
    }

    /** The label whose text is the app string {@code name} (any language, ":" or not). */
    private static TextView findLabel(Context c, ViewGroup root, String name) {
        int id = c.getResources().getIdentifier(name, "string", c.getPackageName());
        if (id == 0) {
            return null;
        }
        return findText(root, norm(c.getString(id)));
    }

    private static TextView findText(ViewGroup g, String want) {
        for (int i = 0; i < g.getChildCount(); i++) {
            View v = g.getChildAt(i);
            if (v instanceof TextView && !(v instanceof EditText)
                    && want.equals(norm(String.valueOf(((TextView) v).getText())))) {
                return (TextView) v;
            }
            if (v instanceof ViewGroup) {
                TextView t = findText((ViewGroup) v, want);
                if (t != null) {
                    return t;
                }
            }
        }
        return null;
    }

    private static String norm(String s) {
        s = s == null ? "" : s.trim();
        return s.endsWith(":") ? s.substring(0, s.length() - 1).trim() : s;
    }

    /**
     * {@code action} after 7 taps within 3 s between taps. A label that already reacts to a
     * click keeps doing so (the taps are only counted).
     */
    private static void onTaps(final View v, final Runnable action) {
        final int[] count = {0};
        final long[] last = {0L};
        final Runnable tap = new Runnable() {
            @Override
            public void run() {
                long now = System.currentTimeMillis();
                count[0] = now - last[0] > TAP_WINDOW_MS ? 1 : count[0] + 1;
                last[0] = now;
                if (count[0] >= TAPS) {
                    count[0] = 0;
                    action.run();
                }
            }
        };
        if (v.isClickable() || v.hasOnClickListeners()) {
            v.setOnTouchListener(new View.OnTouchListener() {
                @Override
                public boolean onTouch(View view, MotionEvent e) {
                    if (e.getAction() == MotionEvent.ACTION_UP) {
                        tap.run();
                    }
                    return false;
                }
            });
        } else {
            v.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    tap.run();
                }
            });
        }
    }

    private static SharedPreferences prefs(Context c) {
        return c.getApplicationContext().getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }
}
