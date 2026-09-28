package com.isaigu.gymapp.wearable;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;

import com.isaigu.gymapp.bean.TrainUser;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Sends the client's full training records (the per-second series kept in files/xems_sessions) to the
 * license server, which keeps them in R2; the client reads them in the booking app ("Моят профил").
 * Runs right after a training is saved (the record must be there before the client opens the analysis) and
 * also catches up on older trainings, a few at a time. Only for a client who can find their card
 * (e-mail / phone) — for anyone else nobody could open the records.
 */
final class SessionUploader {
    static final long DELAY_MS = 2000L;
    static final long MORE_MS = 20000L;
    static final int BATCH = 6;
    private static final Handler H = new Handler(Looper.getMainLooper());
    private static final Set<String> RUNNING = new HashSet<String>();

    private SessionUploader() {}

    static void schedule(TrainUser user) {
        if (user != null) {
            H.postDelayed(new Start(user), DELAY_MS);
        }
    }

    static final class Start implements Runnable {
        final TrainUser user;

        Start(TrainUser user) {
            this.user = user;
        }

        @Override
        public void run() {
            try {
                Activity a = WearableSyncHelper.resolveActivityForPermissions();
                if (a == null) {
                    return;
                }
                boolean findable = ReportBridge.lookupFields(user).length() > 0
                        || a.getSharedPreferences("xems_client_cards", Context.MODE_PRIVATE)
                                .getString("url_" + user.id, "").length() > 0;
                if (!findable) {
                    return;
                }
                String uid = String.valueOf(user.id);
                synchronized (RUNNING) {
                    if (!RUNNING.add(uid)) {
                        return;
                    }
                }
                new Thread(new Work(a.getApplicationContext(), user), "xems-session-up").start();
            } catch (Throwable t) {
                WearableBleDiagLog.log("report", "session upload start: " + t);
            }
        }
    }

    static final class Work implements Runnable {
        final Context c;
        final TrainUser user;

        Work(Context c, TrainUser user) {
            this.c = c;
            this.user = user;
        }

        @Override
        public void run() {
            String uid = String.valueOf(user.id);
            boolean more = false;
            try {
                more = upload(c, uid);
            } catch (Throwable t) {
                WearableBleDiagLog.log("report", "session upload: " + t);
            } finally {
                synchronized (RUNNING) {
                    RUNNING.remove(uid);
                }
            }
            if (more) {
                H.postDelayed(new Start(user), MORE_MS);
            }
        }
    }

    /** Uploads up to BATCH not-yet-sent trainings, newest first. True when more are waiting (and none failed). */
    private static boolean upload(Context c, String uid) throws Exception {
        SharedPreferences p = c.getSharedPreferences("xems_session_upload", Context.MODE_PRIVATE);
        Set<String> sent = new HashSet<String>();
        for (String s : p.getString("up_" + uid, "").split(",")) {
            if (s.length() > 0) {
                sent.add(s);
            }
        }
        JSONArray idx = SessionStore.index(c);
        List<JSONObject> todo = new ArrayList<JSONObject>();
        for (int i = 0; i < idx.length(); i++) {
            JSONObject o = idx.optJSONObject(i);
            if (o != null && String.valueOf(o.optLong("userId")).equals(uid)
                    && !sent.contains(String.valueOf(o.optLong("id")))) {
                todo.add(o);
            }
        }
        java.util.Collections.sort(todo, new NewestFirst());
        int n = 0;
        for (int i = 0; i < todo.size() && n < BATCH; i++, n++) {
            long id = todo.get(i).optLong("id");
            String data = SessionStore.load(c, id);
            if (data != null && data.startsWith("{")) {
                try {
                    com.isaigu.gymapp.widget.XemsLicenseClient.postSession(c, uid, id, todo.get(i).toString(), data);
                } catch (Throwable t) {
                    WearableBleDiagLog.log("report", "session " + id + " not sent: " + t);
                    return false;                      // offline / no license: try again after the next training
                }
            }
            sent.add(String.valueOf(id));
            StringBuilder b = new StringBuilder();
            for (String s : sent) {
                if (b.length() > 0) {
                    b.append(',');
                }
                b.append(s);
            }
            p.edit().putString("up_" + uid, b.toString()).apply();
        }
        return todo.size() > n;
    }

    static final class NewestFirst implements java.util.Comparator<JSONObject> {
        @Override
        public int compare(JSONObject a, JSONObject b) {
            long x = a.optLong("id");
            long y = b.optLong("id");
            return x < y ? 1 : (x > y ? -1 : 0);
        }
    }
}
