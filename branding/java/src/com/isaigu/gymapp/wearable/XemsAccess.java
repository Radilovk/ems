package com.isaigu.gymapp.wearable;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;

import java.util.ArrayList;
import java.util.List;

/**
 * At the first start only what the suit needs right away, in one system request: location (Android scans Bluetooth
 * only with it while the app targets API 30) and, on Android 12+, "Nearby devices"; storage only up to Android 10,
 * where it still means something. Nothing else at start: the calendar is asked by the plan when it is first used,
 * an update's "install from this source" by Android's own installer, system settings by the vendor's settings screen.
 * No settings pages are opened (they made the first start jump out of the app on some tablets). Installed with
 * `adb install -g` every runtime permission is granted and nothing is asked at all.
 * MainActivity.onCreate → {@link WearableBlePermissions#requestAtStartup}.
 */
public final class XemsAccess {
    static final int REQUEST = 0x5753;
    private static final long POLL_MS = 700;
    private static final int MAX_POLLS = 600;          // ≈ 7 minutes, then it gives up for this start

    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static boolean running;

    private XemsAccess() {}

    public static void start(Activity a) {
        if (a == null || running || Build.VERSION.SDK_INT < 23) {
            return;                                    // Android 5: everything was granted at install
        }
        running = true;
        MAIN.postDelayed(new Step(a, 0), 1200);         // after the first frame
    }

    /** The runtime permissions needed at start that are not granted yet (API 23+). */
    static String[] missingRuntime(Context c) {
        List<String> want = new ArrayList<String>();
        want.add("android.permission.ACCESS_FINE_LOCATION");
        want.add("android.permission.ACCESS_COARSE_LOCATION");
        if (Build.VERSION.SDK_INT >= 31) {
            want.add("android.permission.BLUETOOTH_SCAN");
            want.add("android.permission.BLUETOOTH_CONNECT");
        }
        if (Build.VERSION.SDK_INT <= 29) {
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

    /** The one request, made when the app is in front (no dialog over it). */
    static final class Step implements Runnable {
        private final Activity a;
        private final int polls;

        Step(Activity a, int polls) {
            this.a = a;
            this.polls = polls;
        }

        @Override
        public void run() {
            try {
                if (a.isFinishing() || polls > MAX_POLLS) {
                    running = false;
                    return;
                }
                if (!a.hasWindowFocus()) {
                    MAIN.postDelayed(new Step(a, polls + 1), POLL_MS);       // a dialog is up
                    return;
                }
                String[] miss = missingRuntime(a);
                if (miss.length > 0) {
                    a.requestPermissions(miss, REQUEST);
                    WearableBleDiagLog.log("perm", "asked " + miss.length + " at once");
                }
                running = false;
            } catch (Throwable t) {
                running = false;
                com.isaigu.gymapp.widget.XemsGuard.report("XemsAccess.step", t);
            }
        }
    }
}
