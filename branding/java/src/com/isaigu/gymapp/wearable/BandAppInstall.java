package com.isaigu.gymapp.wearable;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.widget.TextView;

import com.isaigu.gymapp.wearable.xiaomi.XiaomiBand;
import com.isaigu.gymapp.wearable.xiaomi.XiaomiBandInstaller;
import com.isaigu.gymapp.wearable.xiaomi.XiaomiBandLink;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;

/**
 * One-tap install of the XEMS app on the band (Band 9 / 10). The .rpk ships inside the APK
 * (assets/xems-band.rpk) and goes over the link XEMS already holds, so no other app is needed.
 */
public final class BandAppInstall {
    public static final String ASSET = "xems-band.rpk";
    public static final String PACKAGE = "com.xems.band";
    public static final int VERSION = 2;

    private static final Handler main = new Handler(Looper.getMainLooper());

    private BandAppInstall() {}

    /** Start the install; progress and the result are written into {@code status}. */
    public static void start(Activity a, TextView status) {
        try {
            XiaomiBandLink link = XiaomiBand.link();
            if (link == null || !link.isConnected()) {
                status.setText(WearableUi.tr("Първо свържи гривната (Провери връзката)",
                        "Connect the band first (Test connection)"));
                return;
            }
            if (XiaomiBandInstaller.isBusy()) {
                return;
            }
            byte[] rpk = read(a);
            if (rpk == null) {
                status.setText(WearableUi.tr("Файлът на приложението липсва в тази версия",
                        "The band app file is missing from this build"));
                return;
            }
            status.setText(WearableUi.tr("Изпращане…", "Sending…"));
            if (!XiaomiBandInstaller.install(rpk, PACKAGE, VERSION, new Progress(status))) {
                status.setText(WearableUi.tr("Нужна е връзка Band 9 / 10 (класически Bluetooth)",
                        "Needs a Band 9 / 10 link (Bluetooth Classic)"));
            }
        } catch (Throwable t) {
            status.setText(WearableUi.tr("Грешка: ", "Error: ") + t.getClass().getSimpleName());
        }
    }

    static byte[] read(Activity a) {
        InputStream in = null;
        try {
            in = a.getAssets().open(ASSET);
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

    static final class Progress implements XiaomiBandInstaller.Listener {
        private final TextView status;

        Progress(TextView status) {
            this.status = status;
        }

        @Override
        public void onProgress(int percent, String state) {
            post(WearableUi.tr("Инсталиране… ", "Installing… ") + percent + " %");
        }

        @Override
        public void onDone(boolean ok, String message) {
            WearableBleDiagLog.log("install", (ok ? "ok " : "failed ") + message);
            post(ok ? WearableUi.tr("Готово: XEMS е в списъка с приложения на гривната",
                    "Done: XEMS is in the band's app list")
                    : WearableUi.tr("Неуспех (", "Failed (") + message + ")");
        }

        private void post(final String s) {
            main.post(new SetText(status, s));
        }
    }

    static final class SetText implements Runnable {
        private final TextView v;
        private final String s;

        SetText(TextView v, String s) {
            this.v = v;
            this.s = s;
        }

        @Override
        public void run() {
            v.setText(s);
        }
    }
}
