package com.isaigu.gymapp.wearable;

import android.content.Context;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;

/**
 * Recorded trainings on the tablet: files/xems_sessions/index.json (one summary per training, all
 * clients) and s_&lt;id&gt;.json (the per-second columns). The report page reads both through
 * {@link ReportBridge}; it writes back the scores it computed so the history list opens fast.
 */
final class SessionStore {
    private static final String DIR = "xems_sessions";
    private static final String INDEX = "index.json";

    private SessionStore() {}

    static File dir(Context c) {
        File d = new File(c.getFilesDir(), DIR);
        if (!d.isDirectory()) {
            d.mkdirs();
        }
        return d;
    }

    static synchronized void save(Context c, SessionRec r, int restHr) {
        try {
            write(new File(dir(c), "s_" + r.start + ".json"), r.toJson(restHr));
            JSONArray idx = index(c);
            JSONObject s = r.summary();
            JSONArray out = new JSONArray();
            for (int i = 0; i < idx.length(); i++) {
                JSONObject o = idx.optJSONObject(i);
                if (o != null && o.optLong("id") != r.start) {
                    out.put(o);
                }
            }
            out.put(s);
            write(new File(dir(c), INDEX), out.toString());
            WearableBleDiagLog.log("report", "saved session " + r.start + " user=" + r.userId
                    + " " + r.run.size() + " s, active " + r.activeS() + " s");
        } catch (Throwable t) {
            WearableBleDiagLog.log("report", "save failed: " + t);
        }
    }

    static synchronized JSONArray index(Context c) {
        try {
            File f = new File(dir(c), INDEX);
            if (f.isFile()) {
                return new JSONArray(read(f));
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("report", "index read failed: " + t);
        }
        return new JSONArray();
    }

    /** Summaries of one client, oldest first. */
    static String listFor(Context c, long userId) {
        JSONArray idx = index(c);
        JSONArray out = new JSONArray();
        for (int i = 0; i < idx.length(); i++) {
            JSONObject o = idx.optJSONObject(i);
            if (o != null && o.optLong("userId") == userId) {
                out.put(o);
            }
        }
        return out.toString();
    }

    static String load(Context c, long id) {
        try {
            File f = new File(dir(c), "s_" + id + ".json");
            return f.isFile() ? read(f) : "null";
        } catch (Throwable t) {
            return "null";
        }
    }

    /** The page's computed scores (eff, load, kcal…) merged into the summary. */
    static synchronized void putScores(Context c, long id, String json) {
        try {
            JSONObject add = new JSONObject(json);
            JSONArray idx = index(c);
            for (int i = 0; i < idx.length(); i++) {
                JSONObject o = idx.optJSONObject(i);
                if (o != null && o.optLong("id") == id) {
                    o.put("scores", add);
                }
            }
            write(new File(dir(c), INDEX), idx.toString());
        } catch (Throwable t) {
            WearableBleDiagLog.log("report", "scores failed: " + t);
        }
    }

    static synchronized void delete(Context c, long id) {
        try {
            new File(dir(c), "s_" + id + ".json").delete();
            JSONArray idx = index(c);
            JSONArray out = new JSONArray();
            for (int i = 0; i < idx.length(); i++) {
                JSONObject o = idx.optJSONObject(i);
                if (o != null && o.optLong("id") != id) {
                    out.put(o);
                }
            }
            write(new File(dir(c), INDEX), out.toString());
        } catch (Throwable t) {
            WearableBleDiagLog.log("report", "delete failed: " + t);
        }
    }

    private static void write(File f, String s) throws java.io.IOException {
        File tmp = new File(f.getPath() + ".tmp");
        FileOutputStream out = new FileOutputStream(tmp);
        try {
            out.write(s.getBytes("UTF-8"));
        } finally {
            out.close();
        }
        if (!tmp.renameTo(f)) {
            f.delete();
            tmp.renameTo(f);
        }
    }

    static String read(File f) throws java.io.IOException {
        InputStream in = new FileInputStream(f);
        try {
            ByteArrayOutputStream b = new ByteArrayOutputStream();
            byte[] buf = new byte[16384];
            int n;
            while ((n = in.read(buf)) > 0) {
                b.write(buf, 0, n);
            }
            return b.toString("UTF-8");
        } finally {
            in.close();
        }
    }
}
