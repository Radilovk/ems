package com.isaigu.gymapp.wearable;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.widget.TextView;
import android.widget.Toast;

import com.isaigu.gymapp.ai.AiSession;
import com.isaigu.gymapp.wearable.xiaomi.XiaomiBand;
import com.isaigu.gymapp.wearable.xiaomi.XiaomiBandInstaller;
import com.isaigu.gymapp.wearable.xiaomi.XiaomiBandLink;
import com.isaigu.gymapp.wearable.xiaomi.XiaomiBandSppClient;
import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsPanel;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;

/**
 * The XEMS app on the band (Band 9 / 10) installs and updates itself: once the band is connected
 * over the classic link and no training runs, a missing or older app is sent over that link.
 * The .rpk ships inside the APK (assets/xems-band.rpk). The button in Settings does the same on
 * demand and connects the band first when needed.
 */
public final class BandAppInstall {
    public static final String ASSET = "xems-band.rpk";
    public static final String PACKAGE = "com.xems.band";
    /** versionCode in band-app/src/manifest.json. */
    public static final int VERSION = 7;

    private static final long AUTO_DELAY_MS = 6000L;
    private static final long BUSY_RETRY_MS = 60000L;
    private static final long CONNECT_WAIT_MS = 25000L;
    private static final int MAX_AUTO_TRIES = 2;

    private static final Handler main = new Handler(Looper.getMainLooper());
    private static final Runnable autoCheck = new AutoCheck();
    private static final Runnable connectTimeout = new ConnectTimeout();

    private static TextView statusView;
    private static String status;
    private static boolean pendingManual;
    private static int autoTries;

    private BandAppInstall() {}

    // ================================================================ status line in Settings

    /** Text for the Settings row now (installed / will install / progress). */
    public static String statusText(Context c) {
        boolean installed = WearableConfig.getBandAppVersion(c) >= VERSION;
        if (status != null && (XiaomiBandInstaller.isBusy() || !installed)) {
            return status;
        }
        return installed
                ? WearableUi.tr("XEMS е на гривната ✓", "XEMS is on the band ✓")
                : WearableUi.tr("Инсталира се сам при свързване", "Installs itself when the band connects");
    }

    public static void bind(TextView v) {
        statusView = v;
    }

    private static void show(String s) {
        status = s;
        main.post(new SetText(s));
    }

    // ================================================================ automatic

    /** Band link is up (from NotifyWearableBridge): check the app a moment later. */
    static void onBandConnected() {
        if (!com.isaigu.gymapp.widget.XemsLicense.has(com.isaigu.gymapp.widget.XemsLicense.BAND)) {
            return;
        }
        main.removeCallbacks(autoCheck);
        main.postDelayed(autoCheck, pendingManual ? 800L : AUTO_DELAY_MS);
    }

    /** The band app said hello: it is installed; remember the version it reports. */
    static void onAppHello(int version) {
        Context c = WearableSyncHelper.getContext();
        if (version > 0 && c != null && version != WearableConfig.getBandAppVersion(c)) {
            WearableConfig.setBandAppVersion(c, version);
            WearableBleDiagLog.log("install", "band app reports v" + version);
        }
    }

    private static boolean training() {
        return AiSession.getStage() == AiSession.Stage.RUNNING || XemsPanel.isRunning();
    }

    private static boolean classicLinkUp() {
        XiaomiBandLink link = XiaomiBand.link();
        return link instanceof XiaomiBandSppClient && link.isConnected();
    }

    static void check() {
        Context c = WearableSyncHelper.getContext();
        if (c == null || !classicLinkUp() || XiaomiBandInstaller.isBusy()) {
            return;
        }
        boolean manual = pendingManual;
        pendingManual = false;
        main.removeCallbacks(connectTimeout);
        if (!manual) {
            if (WearableConfig.getBandAppVersion(c) >= VERSION || autoTries >= MAX_AUTO_TRIES) {
                return;
            }
            if (training()) {                       // never during a session; look again later
                main.postDelayed(autoCheck, BUSY_RETRY_MS);
                return;
            }
            autoTries++;
        }
        begin(c, !manual);
    }

    private static void begin(Context c, boolean auto) {
        byte[] rpk = read(c);
        if (rpk == null) {
            show(WearableUi.tr("Файлът на приложението липсва в тази версия",
                    "The band app file is missing from this build"));
            return;
        }
        WearableBleDiagLog.log("install", (auto ? "auto" : "manual") + " v" + VERSION);
        show(WearableUi.tr("Инсталиране на гривната…", "Installing on the band…"));
        if (!XiaomiBandInstaller.install(rpk, PACKAGE, VERSION, new Progress(c.getApplicationContext()))) {
            show(WearableUi.tr("Нужна е връзка Band 9 / 10", "Needs a Band 9 / 10 link"));
        }
    }

    // ================================================================ button

    /** Settings button: install now; connects the band first when needed. */
    public static void start(Activity a, TextView v) {
        try {
            bind(v);
            if (XiaomiBandInstaller.isBusy()) {
                return;
            }
            if (classicLinkUp()) {
                pendingManual = true;
                check();
                return;
            }
            pendingManual = true;
            show(WearableUi.tr("Свързване с гривната…", "Connecting to the band…"));
            NotifyWearableBridge.requestConnect(a);
            main.removeCallbacks(connectTimeout);
            main.postDelayed(connectTimeout, CONNECT_WAIT_MS);
        } catch (Throwable t) {
            XemsGuard.report("BandAppInstall.start", t);
        }
    }

    static byte[] read(Context c) {
        InputStream in = null;
        try {
            in = c.getAssets().open(ASSET);
            ByteArrayOutputStream o = new ByteArrayOutputStream();
            byte[] buf = new byte[8192];
            int n;
            while ((n = in.read(buf)) > 0) {
                o.write(buf, 0, n);
            }
            return o.toByteArray();
        } catch (Exception e) {
            return null;
        } finally {
            if (in != null) {
                try {
                    in.close();
                } catch (Exception ignored) {
                }
            }
        }
    }

    // ================================================================ runnables / listeners

    static final class AutoCheck implements Runnable {
        @Override
        public void run() {
            try {
                check();
            } catch (Throwable t) {
                XemsGuard.report("BandAppInstall.check", t);
            }
        }
    }

    static final class ConnectTimeout implements Runnable {
        @Override
        public void run() {
            if (pendingManual && !classicLinkUp()) {
                pendingManual = false;
                show(WearableUi.tr("Гривната не се свърза. Спри Mi Fitness / Notify / Gadgetbridge и опитай пак",
                        "The band did not connect. Force-stop Mi Fitness / Notify / Gadgetbridge and retry"));
            }
        }
    }

    static final class Progress implements XiaomiBandInstaller.Listener {
        private final Context app;

        Progress(Context app) {
            this.app = app;
        }

        @Override
        public void onProgress(int percent, String state) {
            show(WearableUi.tr("Инсталиране на гривната… ", "Installing on the band… ") + percent + " %");
        }

        @Override
        public void onDone(boolean ok, String message) {
            WearableBleDiagLog.log("install", (ok ? "ok " : "failed ") + message);
            if (ok) {
                WearableConfig.setBandAppVersion(app, VERSION);
                show(WearableUi.tr("XEMS е на гривната ✓", "XEMS is on the band ✓"));
                main.post(new ToastText(app, WearableUi.tr("XEMS е инсталиран на гривната",
                        "XEMS is installed on the band")));
            } else {
                show(WearableUi.tr("Инсталирането не мина (", "Install failed (") + message + ")");
            }
        }
    }

    static final class SetText implements Runnable {
        private final String s;

        SetText(String s) {
            this.s = s;
        }

        @Override
        public void run() {
            TextView v = statusView;
            if (v != null && v.isAttachedToWindow()) {
                v.setText(s);
            }
        }
    }

    static final class ToastText implements Runnable {
        private final Context c;
        private final String s;

        ToastText(Context c, String s) {
            this.c = c;
            this.s = s;
        }

        @Override
        public void run() {
            try {
                Toast.makeText(c, s, Toast.LENGTH_SHORT).show();
            } catch (Throwable ignored) {
            }
        }
    }
}
