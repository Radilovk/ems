package com.isaigu.gymapp.train.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;

import java.io.File;
import java.io.FileOutputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * Persistent diagnostic log for music player and uncaught crashes.
 * Files live under externalFilesDir/diag-logs/ (pullable via adb).
 */
public final class MusicDiagLog {
    private static final String TAG = "MusicDiag";
    private static final String LOG_NAME = "music-diag.log";
    private static final String CRASH_NAME = "last-crash.txt";
    private static final long MAX_LOG_BYTES = 512 * 1024L;

    private static volatile Context appContext;
    private static final Object lock = new Object();

    private MusicDiagLog() {
    }

    public static void init(Context context) {
        if (context == null) {
            return;
        }
        appContext = context.getApplicationContext();
        try {
            com.isaigu.gymapp.widget.XemsGuard.installLoopGuard();
        } catch (Throwable ignored) {
        }
        log("init", "MusicDiagLog ready version=" + readVersionName(context)
                + " sdk=" + Build.VERSION.SDK_INT + " model=" + Build.MODEL);
    }

    public static void log(String event, String detail) {
        String line = formatLine(event, detail);
        Log.i(TAG, line);
        appendToFile(LOG_NAME, line);
    }

    public static void logError(String event, Throwable t) {
        String detail = t != null ? stackTrace(t) : "null";
        String line = formatLine("ERR:" + event, detail.replace('\n', '|'));
        Log.e(TAG, line, t);
        appendToFile(LOG_NAME, line);
        if (t != null) {
            appendToFile(LOG_NAME, stackTrace(t));
        }
    }

    public static void recordCrash(Throwable t) {
        if (t == null) {
            return;
        }
        String block = "=== CRASH " + timestamp() + " ===\n" + stackTrace(t) + "\n";
        appendToFile(CRASH_NAME, block);
        log("CRASH", t.getClass().getName() + ": " + t.getMessage());
    }

    private static String formatLine(String event, String detail) {
        return timestamp() + " [" + event + "] " + (detail != null ? detail : "");
    }

    private static String timestamp() {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US).format(new Date());
    }

    private static String stackTrace(Throwable t) {
        StringWriter sw = new StringWriter();
        t.printStackTrace(new PrintWriter(sw));
        return sw.toString();
    }

    private static void appendToFile(String name, String text) {
        Context ctx = appContext;
        if (ctx == null || text == null) {
            return;
        }
        synchronized (lock) {
            File dir = resolveDir(ctx);
            if (dir == null) {
                return;
            }
            File file = new File(dir, name);
            try {
                rotateIfNeeded(file);
                FileOutputStream out = new FileOutputStream(file, true);
                out.write((text + "\n").getBytes("UTF-8"));
                out.flush();
                out.close();
            } catch (Throwable ignored) {
            }
        }
    }

    private static File resolveDir(Context ctx) {
        try {
            File ext = ctx.getExternalFilesDir("diag-logs");
            if (ext != null) {
                if (!ext.exists()) {
                    ext.mkdirs();
                }
                return ext;
            }
        } catch (Throwable ignored) {
        }
        try {
            File intDir = new File(ctx.getFilesDir(), "diag-logs");
            if (!intDir.exists()) {
                intDir.mkdirs();
            }
            return intDir;
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static String readVersionName(Context context) {
        try {
            PackageManager pm = context.getPackageManager();
            PackageInfo info = pm.getPackageInfo(context.getPackageName(), 0);
            if (info != null && info.versionName != null) {
                return info.versionName + " (" + info.versionCode + ")";
            }
        } catch (Throwable ignored) {
        }
        return "unknown";
    }

    private static void rotateIfNeeded(File file) {
        if (file.exists() && file.length() > MAX_LOG_BYTES) {
            File old = new File(file.getParentFile(), file.getName() + ".old");
            if (old.exists()) {
                old.delete();
            }
            file.renameTo(old);
        }
    }
}
