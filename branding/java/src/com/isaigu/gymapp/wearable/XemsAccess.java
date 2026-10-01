package com.isaigu.gymapp.wearable;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;

import java.util.ArrayList;
import java.util.List;

/**
 * Every permission the app uses, asked for at once on the first start (owner's requirement) instead of one by one
 * when a feature first needs it: the runtime ones in a single request (Android shows them back to back), then the
 * ones only a settings page can grant, each opened in turn as the previous one closes — draw over other apps (lets
 * {@link XemsAutoStart} bring the app back after an update), install updates, change system settings. A settings
 * page is opened once per version: a refusal is not asked again until the next update. Nothing is asked for what is
 * already granted. MainActivity.onCreate → {@link WearableBlePermissions#requestAtStartup}.
 */
public final class XemsAccess {
    static final int REQUEST = 0x5753;
    private static final String PREFS = "xems_access";
    private static final long POLL_MS = 700;
    private static final int MAX_POLLS = 600;          // ≈ 7 minutes, then the chain gives up for this start

    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static boolean running;

    private XemsAccess() {}

    public static void start(Activity a) {
        if (a == null || running) {
            return;
        }
        running = true;
        MAIN.postDelayed(new Step(a, 0, 0), 1200);       // after the first frame and the vendor's own dialogs
    }

    /** The runtime permissions this Android needs and the app declares, not granted yet. */
    static String[] missingRuntime(Context c) {
        List<String> want = new ArrayList<String>();
        want.add("android.permission.ACCESS_FINE_LOCATION");
        want.add("android.permission.ACCESS_COARSE_LOCATION");
        if (Build.VERSION.SDK_INT >= 31) {
            want.add("android.permission.BLUETOOTH_SCAN");
            want.add("android.permission.BLUETOOTH_CONNECT");
        }
        want.add("android.permission.READ_CALENDAR");
        want.add("android.permission.WRITE_CALENDAR");
        if (Build.VERSION.SDK_INT < 33) {
            want.add("android.permission.READ_EXTERNAL_STORAGE");
            want.add("android.permission.WRITE_EXTERNAL_STORAGE");
        }
        List<String> out = new ArrayList<String>();
        for (String p : want) {
            if (c.checkSelfPermission(p) != PackageManager.PERMISSION_GRANTED) {
                out.add(p);
            }
        }
        return out.toArray(new String[0]);
    }

    /** Step k: 0 runtime batch, 1 overlay, 2 install updates, 3 system settings. Null = nothing to do there. */
    static Intent special(Context c, int k) {
        Uri pkg = Uri.parse("package:" + c.getPackageName());
        if (k == 1 && Build.VERSION.SDK_INT >= 23 && !Settings.canDrawOverlays(c)) {
            return new Intent(Settings.ACTION_MANAGE_OVERLAY_PERMISSION, pkg);
        }
        if (k == 2 && Build.VERSION.SDK_INT >= 26 && !c.getPackageManager().canRequestPackageInstalls()) {
            return new Intent(Settings.ACTION_MANAGE_UNKNOWN_APP_SOURCES, pkg);
        }
        if (k == 3 && Build.VERSION.SDK_INT >= 23 && !Settings.System.canWrite(c)) {
            return new Intent(Settings.ACTION_MANAGE_WRITE_SETTINGS, pkg);
        }
        return null;
    }

    static String why(int k) {
        boolean bg = !"en".equals(java.util.Locale.getDefault().getLanguage());
        if (k == 1) {
            return bg ? "Включи „Показване върху други приложения“ — XEMS се отваря сам след обновяване."
                    : "Allow \"Display over other apps\" — XEMS reopens by itself after an update.";
        }
        if (k == 2) {
            return bg ? "Разреши инсталиране от XEMS — за обновленията." : "Allow installs from XEMS — for the updates.";
        }
        return bg ? "Разреши промяна на системните настройки — за цял екран без лентите на Android."
                : "Allow changing system settings — for full screen without Android's bars.";
    }

    private static boolean askedThisVersion(Context c, int k) {
        return prefs(c).getInt("asked_" + k, 0) == version(c);
    }

    private static void markAsked(Context c, int k) {
        prefs(c).edit().putInt("asked_" + k, version(c)).apply();
    }

    private static SharedPreferences prefs(Context c) {
        return c.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    private static int version(Context c) {
        try {
            return c.getPackageManager().getPackageInfo(c.getPackageName(), 0).versionCode;
        } catch (Throwable t) {
            return 1;
        }
    }

    /** One step of the chain, run when the app is in front again (no dialog, no settings page over it). */
    static final class Step implements Runnable {
        private final Activity a;
        private final int k;
        private final int polls;

        Step(Activity a, int k, int polls) {
            this.a = a;
            this.k = k;
            this.polls = polls;
        }

        @Override
        public void run() {
            try {
                if (a.isFinishing() || k > 3 || polls > MAX_POLLS) {
                    running = false;
                    return;
                }
                if (!a.hasWindowFocus()) {
                    MAIN.postDelayed(new Step(a, k, polls + 1), POLL_MS);     // a dialog or a settings page is up
                    return;
                }
                if (k == 0) {
                    String[] miss = missingRuntime(a);
                    if (miss.length > 0 && Build.VERSION.SDK_INT >= 23) {
                        a.requestPermissions(miss, REQUEST);
                        WearableBleDiagLog.log("perm", "asked " + miss.length + " at once");
                    }
                } else {
                    Intent i = special(a, k);
                    if (i != null && !askedThisVersion(a, k)) {
                        markAsked(a, k);
                        // one line on why, so the settings page does not come out of nowhere
                        android.widget.Toast.makeText(a, why(k), android.widget.Toast.LENGTH_LONG).show();
                        a.startActivity(i);
                    }
                }
                MAIN.postDelayed(new Step(a, k + 1, polls + 1), POLL_MS);
            } catch (Throwable t) {
                running = false;
                com.isaigu.gymapp.widget.XemsGuard.report("XemsAccess.step " + k, t);
            }
        }
    }
}
