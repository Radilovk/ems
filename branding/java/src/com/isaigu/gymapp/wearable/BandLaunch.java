package com.isaigu.gymapp.wearable;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;

import com.isaigu.gymapp.wearable.xiaomi.XiaomiBandAppLink;
import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsLicense;

/**
 * Open the XEMS app on the band from XEMS: the Settings button (and {@link BandRemote} at the start
 * of a workout). Connects the band first when the link is down; the launch goes out as soon as the
 * band has listed its apps.
 */
public final class BandLaunch {
    private static final long CONNECT_WAIT_MS = 45000L;

    private static final Handler main = new Handler(Looper.getMainLooper());
    private static final Timeout timeout = new Timeout();
    private static Context app;

    private BandLaunch() {}

    /** Open XEMS on the band now (connects first when needed). Safe to call from any Activity. */
    public static void request(Activity a) {
        try {
            app = a.getApplicationContext();
            XemsLicense.init(app);
            if (!XemsLicense.has(XemsLicense.BAND)) {
                toast(WearableUi.tr("Модулът „Гривна“ не е отключен", "The Band module is not unlocked"));
                return;
            }
            XiaomiBandAppLink.setLaunchCallback(new Launched());
            if (XiaomiBandAppLink.launch("")) {
                return;                             // Launched() says so
            }
            if (!WearableConfig.isConfigured(app) || !WearableBlePermissions.hasAllBlePermissions(app)) {
                // First setup (band key, Bluetooth permission) needs the XEMS screens.
                toast(WearableUi.tr("Настрой гривната в XEMS → Настройки → Гривна",
                        "Set up the band in XEMS → Settings → Band"));
                openXems(a);
                return;
            }
            toast(WearableUi.tr("Свързване с гривната…", "Connecting to the band…"));
            if (!NotifyWearableBridge.isLinkUp()) {
                NotifyWearableBridge.acquire(a, NotifyWearableBridge.OWNER_LINK);   // the link, not the pulse
            }
            main.removeCallbacks(timeout);
            main.postDelayed(timeout, CONNECT_WAIT_MS);
        } catch (Throwable t) {
            XemsGuard.report("BandLaunch.request", t);
        }
    }

    private static void openXems(Activity a) {
        Intent i = a.getPackageManager().getLaunchIntentForPackage(a.getPackageName());
        if (i != null) {
            i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            a.startActivity(i);
        }
    }

    static void toast(String s) {
        main.post(new ShowToast(s));
    }

    // ================================================================ runnables

    static final class Launched implements Runnable {
        @Override
        public void run() {
            main.removeCallbacks(timeout);
            toast(WearableUi.tr("XEMS се отваря на гривната", "Opening XEMS on the band"));
        }
    }

    static final class Timeout implements Runnable {
        @Override
        public void run() {
            if (XiaomiBandAppLink.isLaunchPending()) {
                toast(WearableUi.tr("Гривната не се свърза. Спри Mi Fitness / Notify / Gadgetbridge и опитай пак",
                        "The band did not connect. Force-stop Mi Fitness / Notify / Gadgetbridge and retry"));
            }
        }
    }

    static final class ShowToast implements Runnable {
        private final String text;

        ShowToast(String text) {
            this.text = text;
        }

        @Override
        public void run() {
            Context c = app;
            if (c != null) {
                Toast.makeText(c, text, Toast.LENGTH_SHORT).show();
            }
        }
    }
}
