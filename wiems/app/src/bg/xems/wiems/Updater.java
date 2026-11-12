package bg.xems.wiems;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

/**
 * Self-update at start (owner, v1.22: "the WiEMS APK updates itself when it starts"). Asks our server
 * (server/src/wiemsapp.js: the repo's main is the release) whether there is a newer versionCode, downloads it, checks it
 * is this app at that version, and hands it to Android's PackageInstaller (no FileProvider needed). Android shows its
 * "Инсталирай" once per update (targetSdk 29 — a silent install needs device-owner mode). Never while a training runs:
 * the install waits for {@link #installIfReady}. No lambdas / anonymous classes (dx).
 */
final class Updater {
    static final String BASE = "https://license.biocode-bg.com/v1/wiems/";
    static final String ACTION = "bg.xems.wiems.INSTALL_STATUS";
    static final long EVERY_MS = 6 * 3600 * 1000L;

    interface Log {
        void log(String s);
        void note(String s, boolean warn);
    }

    private final Context ctx;
    private final Log out;
    private final int haveCode;
    private final Handler main = new Handler(Looper.getMainLooper());
    private volatile boolean busy;
    private long lastCheck;
    /** A downloaded, checked APK waiting for the training to end. */
    private volatile File ready;
    private volatile String readyName;
    private final Status status = new Status();

    Updater(Context ctx, int haveCode, Log out) {
        this.ctx = ctx;
        this.haveCode = haveCode;
        this.out = out;
        try {
            ctx.registerReceiver(status, new IntentFilter(ACTION));
        } catch (Throwable t) {
            out.log("update: receiver " + t);
        }
    }

    void close() {
        try {
            ctx.unregisterReceiver(status);
        } catch (Throwable t) {
            // not registered
        }
    }

    /** At start and on resume: at most every 6 h. */
    void check(long now) {
        if (busy || ready != null || (lastCheck > 0 && now - lastCheck < EVERY_MS)) return;
        lastCheck = now;
        busy = true;
        Thread th = new Thread(new Check(), "wiems-update");
        th.setDaemon(true);
        th.start();
    }

    /** Call when no training runs: a waiting update goes to the installer. */
    void installIfReady() {
        File f = ready;
        if (f == null || busy) return;
        ready = null;
        busy = true;
        out.note("Инсталирам XEMS WiEMS " + readyName + "…", false);
        Thread th = new Thread(new Install(f), "wiems-install");
        th.setDaemon(true);
        th.start();
    }

    boolean waiting() {
        return ready != null;
    }

    final class Check implements Runnable {
        @Override
        public void run() {
            try {
                String ans = get(BASE + "update?have=" + haveCode);
                int code = 0;
                String name = "?";
                for (String l : ans.split("\n")) {
                    if (l.startsWith("version=")) code = Integer.parseInt(l.substring(8).trim());
                    if (l.startsWith("name=")) name = l.substring(5).trim();
                }
                if (code <= haveCode) {
                    post("update: up to date (" + haveCode + ")", null);
                    return;
                }
                post("update: " + name + " (" + code + ") on the server — downloading", null);
                File f = new File(ctx.getCacheDir(), "xems-wiems-update.apk");
                download(BASE + "apk", f);
                PackageInfo pi = ctx.getPackageManager().getPackageArchiveInfo(f.getPath(), 0);
                if (pi == null || !ctx.getPackageName().equals(pi.packageName) || pi.versionCode != code) {
                    post("update: the download is not " + ctx.getPackageName() + " " + code + " — dropped", null);
                    f.delete();
                    return;
                }
                readyName = name;
                ready = f;
                post("update: " + name + " ready", null);
            } catch (Throwable t) {
                post("update: check failed " + t, null);   // no internet: the app works as it is
            } finally {
                busy = false;
            }
        }
    }

    final class Install implements Runnable {
        final File f;

        Install(File f) {
            this.f = f;
        }

        @Override
        public void run() {
            try {
                PackageInstaller pi = ctx.getPackageManager().getPackageInstaller();
                PackageInstaller.SessionParams sp = new PackageInstaller.SessionParams(PackageInstaller.SessionParams.MODE_FULL_INSTALL);
                sp.setAppPackageName(ctx.getPackageName());
                int id = pi.createSession(sp);
                PackageInstaller.Session s = pi.openSession(id);
                OutputStream o = s.openWrite("xems-wiems.apk", 0, f.length());
                InputStream in = new FileInputStream(f);
                byte[] b = new byte[65536];
                int n;
                while ((n = in.read(b)) > 0) o.write(b, 0, n);
                in.close();
                s.fsync(o);
                o.close();
                Intent i = new Intent(ACTION).setPackage(ctx.getPackageName());
                int fl = PendingIntent.FLAG_UPDATE_CURRENT | (Build.VERSION.SDK_INT >= 31 ? 0x02000000 : 0);   // FLAG_MUTABLE
                PendingIntent p = PendingIntent.getBroadcast(ctx, id, i, fl);
                s.commit(p.getIntentSender());
                s.close();
                post("update: handed to the installer (session " + id + ")", null);
            } catch (Throwable t) {
                post("update: install failed " + t, "Обновяването не успя — приложението работи както е");
            } finally {
                busy = false;
            }
        }
    }

    /** The installer's answer: ask the trainer once ("Инсталирай"), or the result. */
    final class Status extends BroadcastReceiver {
        @Override
        public void onReceive(Context c, Intent i) {
            int st = i.getIntExtra(PackageInstaller.EXTRA_STATUS, -999);
            out.log("update: installer status " + st + " " + i.getStringExtra(PackageInstaller.EXTRA_STATUS_MESSAGE));
            if (st == PackageInstaller.STATUS_PENDING_USER_ACTION) {
                Intent confirm = (Intent) i.getParcelableExtra(Intent.EXTRA_INTENT);
                if (confirm != null) {
                    confirm.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                    try {
                        c.startActivity(confirm);
                        out.note("Нова версия — натисни „Инсталирай“", false);
                    } catch (Throwable t) {
                        out.log("update: confirm " + t);
                    }
                }
            } else if (st != PackageInstaller.STATUS_SUCCESS) {
                out.note("Обновяването не мина (" + st + ") — приложението работи както е", true);
            }
        }
    }

    private void post(String log, String note) {
        main.post(new Post(log, note));
    }

    final class Post implements Runnable {
        final String log, note;

        Post(String log, String note) {
            this.log = log;
            this.note = note;
        }

        @Override
        public void run() {
            out.log(log);
            if (note != null) out.note(note, true);
        }
    }

    private static String get(String u) throws Exception {
        HttpURLConnection c = (HttpURLConnection) new URL(u).openConnection();
        try {
            c.setConnectTimeout(10000);
            c.setReadTimeout(15000);
            if (c.getResponseCode() != 200) throw new java.io.IOException("HTTP " + c.getResponseCode());
            InputStream in = c.getInputStream();
            byte[] b = new byte[400];
            int n = in.read(b);
            in.close();
            return n > 0 ? new String(b, 0, n, "UTF-8") : "";
        } finally {
            c.disconnect();
        }
    }

    private static void download(String u, File to) throws Exception {
        HttpURLConnection c = (HttpURLConnection) new URL(u).openConnection();
        try {
            c.setConnectTimeout(10000);
            c.setReadTimeout(30000);
            if (c.getResponseCode() != 200) throw new java.io.IOException("HTTP " + c.getResponseCode());
            InputStream in = c.getInputStream();
            OutputStream o = new FileOutputStream(to);
            byte[] b = new byte[65536];
            int n;
            long total = 0;
            while ((n = in.read(b)) > 0) {
                o.write(b, 0, n);
                total += n;
                if (total > 20 * 1024 * 1024) throw new java.io.IOException("too big");
            }
            o.close();
            in.close();
        } finally {
            c.disconnect();
        }
    }
}
