package com.xems.bhspy;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;

/**
 * The recording session of this process: the log file, its code, the Responder, and the automatic upload — after
 * 45 s without a call, when the game lets go of the service, and (for a recording the process left behind) the next
 * time the app starts. The owner does nothing but play.
 */
final class Spy {
    static final long IDLE_UPLOAD_MS = 45_000;

    private static Spy inst;
    private final Context ctx;
    private final SharedPreferences prefs;
    private final Handler main = new Handler(Looper.getMainLooper());
    private final Responder responder = new Responder();
    private final AtomicBoolean busy = new AtomicBoolean(false);
    private CallLog log;
    private String code;
    private volatile boolean dirty;
    private volatile String status = "ждам играта";
    private final Runnable idle = new IdleUpload();

    private Spy(Context c) {
        ctx = c.getApplicationContext();
        prefs = ctx.getSharedPreferences("spy", Context.MODE_PRIVATE);
        leftover();
        newSession();
    }

    static synchronized Spy get(Context c) {
        if (inst == null) inst = new Spy(c);
        return inst;
    }

    private File dir() {
        File d = new File(ctx.getFilesDir(), "rec");
        d.mkdirs();
        return d;
    }

    /** A recording the last process did not manage to upload: upload it now, under its own code. */
    private void leftover() {
        String oldCode = prefs.getString("code", null);
        if (oldCode == null || prefs.getBoolean("uploaded", true)) return;
        File f = new File(dir(), oldCode + ".jsonl");
        if (f.exists() && f.length() > 0) upload(oldCode, f, "(остатък от миналия път) ");
    }

    private void newSession() {
        code = Uploader.newCode();
        File f = new File(dir(), code + ".jsonl");
        try {
            log = new CallLog(f);
        } catch (IOException e) {
            status = "няма къде да пиша: " + e.getMessage();
            return;
        }
        log.header("{\"kind\":\"bhaptics-spy\",\"ver\":1,\"code\":\"" + code + "\",\"device\":\"" + Build.MODEL
            + "\",\"sdk\":" + Build.VERSION.SDK_INT + ",\"wall\":" + System.currentTimeMillis() + "}");
        prefs.edit().putString("code", code).putBoolean("uploaded", false).apply();
        status = "ждам играта";
    }

    synchronized Object onCall(String who, int index, Object[] args) {
        Object ret = responder.answer(index, args);
        if (log != null) {
            log.record(SystemClock.elapsedRealtimeNanos(), who, index, args, Responder.show(ret));
        }
        dirty = true;
        status = "записвам · " + (log == null ? 0 : log.calls) + " обаждания";
        main.removeCallbacks(idle);
        main.postDelayed(idle, IDLE_UPLOAD_MS);
        return ret;
    }

    String code() {
        return code;
    }

    String status() {
        return status;
    }

    int calls() {
        return log == null ? 0 : log.calls;
    }

    String callers() {
        return log == null ? "" : log.callers.toString();
    }

    /** Upload the current recording (if it has anything new). */
    synchronized void uploadNow() {
        if (log == null || !dirty) return;
        log.flush();
        dirty = false;
        upload(code, log.file(), "");
    }

    /** "Нов запис": forget the current one (after it was sent) and start another under a new code. */
    synchronized void restart() {
        uploadNow();
        if (log != null) log.close();
        newSession();
    }

    private void upload(String c, File f, String note) {
        if (!busy.compareAndSet(false, true)) {
            dirty = true;
            return;
        }
        status = note + "качвам…";
        new Thread(new Job(c, f, note), "spy-upload").start();
    }

    private final class Job implements Runnable {
        private final String c;
        private final File f;
        private final String note;

        Job(String c, File f, String note) {
            this.c = c;
            this.f = f;
            this.note = note;
        }

        @Override
        public void run() {
            String r;
            try {
                String summary = (c.equals(code) && log != null) ? log.summary() : "{\"summary\":{\"note\":\"old\"}}";
                r = Uploader.upload(Uploader.BASE, c, Uploader.pack(summary, f));
            } catch (IOException e) {
                r = "грешка: " + e.getMessage();
            }
            if (r.equals("OK")) {
                if (c.equals(code)) prefs.edit().putBoolean("uploaded", true).apply();
                status = note + "изпратено " + new SimpleDateFormat("HH:mm:ss", Locale.US).format(new Date())
                    + " · код " + c;
            } else {
                if (c.equals(code)) dirty = true;
                status = note + "не стана: " + r + " (ще опитам пак)";
            }
            busy.set(false);
        }
    }

    private final class IdleUpload implements Runnable {
        @Override
        public void run() {
            uploadNow();
        }
    }
}
