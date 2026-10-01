package com.isaigu.gymapp.ai;

import android.content.Context;
import android.content.SharedPreferences;

import com.isaigu.gymapp.wearable.WearableBleDiagLog;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * The exercise library on the tablet: all 302 exercises (assets/xems/library.json — names, steps, muscles, position,
 * cost, picker group), which of them the admin enabled (GET /v1/exercises, kept in prefs), and the figures:
 * the 40 built-in ones ship in the APK, every other enabled one is downloaded once from the pinned CDN copy of the
 * source frames, normalized on the tablet ({@link PathNorm}) and kept in files/xems_ex/&lt;id&gt;.json. Frames the
 * source draws with much bolder lines are replaced by their redrawn copy (assets/xems/frames-fix.json,
 * scripts/exercise-line-width.py) when read, so already downloaded ones are fixed too.
 * docs/xems-workouts.md
 */
public final class ExerciseLibrary {
    private ExerciseLibrary() {}

    public static final String ASSET = "xems/library.json";
    static final String FIX_ASSET = "xems/frames-fix.json";
    static final String PREFS = "xems_library";
    static final String DIR = "xems_ex";
    /** Look for new picks at most this often (and each time the Workouts screen opens, if older). */
    static final long SYNC_EVERY_MS = 6 * 60 * 60 * 1000L;

    /** One library exercise. */
    public static final class Entry {
        public String id;
        public String bg;
        public String en;
        public String eq;
        public String tg;
        /** The picker group: the admin's own (server picks) or the library's. */
        public String zone;
        /** The library's group (library.json). */
        String libZone;
        public String pos;
        public String type;
        /** Movement pattern (squat, hinge, core_static, cardio, stretch…): the block's starting impulse. */
        public String pat;
        public int diff;
        public double met;
        public int[] mus;
        public String how;
        public String howEn;
        public float[] vb;
        public int frames;
        public boolean builtIn;

        public String name() {
            return AiText.t(bg, en);
        }

        public String howText() {
            return AiText.t(how, howEn != null && howEn.length() > 0 ? howEn : how);
        }

        /** Hold exercises (plank, wall sit): a set counts holds, not repetitions. */
        public boolean isHold() {
            return "duration".equals(type);
        }
    }

    private static final List<Entry> ALL = new ArrayList<Entry>();
    private static final Map<String, Entry> BY_ID = new HashMap<String, Entry>();
    private static volatile boolean loaded;
    private static volatile boolean syncing;
    private static String frameUrl = "";
    /** "&lt;id&gt;/&lt;n&gt;" → the redrawn path of a frame with bolder lines (loaded once). */
    private static JSONObject fixes;

    // ------------------------------------------------------------------ load

    public static synchronized void load(Context c) {
        if (loaded || c == null) {
            return;
        }
        try {
            JSONObject o = new JSONObject(read(c.getAssets().open(ASSET)));
            frameUrl = o.optString("frames", "");
            JSONArray a = o.getJSONArray("exercises");
            for (int i = 0; i < a.length(); i++) {
                JSONObject x = a.getJSONObject(i);
                Entry e = new Entry();
                e.id = x.getString("id");
                e.bg = x.optString("bg");
                e.en = x.optString("en");
                e.eq = x.optString("eq");
                e.tg = x.optString("tg");
                e.zone = x.optString("zone", "legs");
                e.libZone = e.zone;
                e.pos = x.optString("pos", "stand");
                e.type = x.optString("type");
                e.pat = x.optString("pat");
                e.diff = x.optInt("diff", 1);
                e.met = x.optDouble("met", 3.0);
                JSONArray m = x.getJSONArray("mus");
                e.mus = new int[10];
                for (int k = 0; k < 10 && k < m.length(); k++) {
                    e.mus[k] = m.getInt(k);
                }
                e.how = x.optString("how");
                e.howEn = x.optString("howEn");
                JSONArray vb = x.getJSONArray("vb");
                e.vb = new float[] {(float) vb.getDouble(0), (float) vb.getDouble(1), (float) vb.getDouble(2),
                        (float) vb.getDouble(3)};
                e.frames = x.optInt("n", 1);
                e.builtIn = x.optInt("b", 0) == 1;
                ALL.add(e);
                BY_ID.put(e.id, e);
                AutoTemplates.register(e.id, e.bg, e.en, e.pos, e.met, e.mus);
            }
            loaded = true;
        } catch (Throwable t) {
            WearableBleDiagLog.log("library", "load: " + t);
        }
    }

    public static Entry get(Context c, String id) {
        load(c);
        synchronized (ExerciseLibrary.class) {
            return BY_ID.get(id);
        }
    }

    // ------------------------------------------------------------------ the admin's picks

    private static SharedPreferences prefs(Context c) {
        return c.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    /** id → {on, frames} from the last sync. */
    static Map<String, int[]> picks(Context c) {
        Map<String, int[]> out = new HashMap<String, int[]>();
        try {
            JSONArray a = new JSONArray(prefs(c).getString("picks", "[]"));
            for (int i = 0; i < a.length(); i++) {
                JSONObject p = a.getJSONObject(i);
                out.put(p.getString("id"), new int[] {p.optInt("on"), p.optInt("frames")});
            }
        } catch (Throwable ignored) {
        }
        return out;
    }

    /** The admin's own picker groups (server picks "zone"; the library's otherwise). */
    static Map<String, String> zones(Context c) {
        Map<String, String> out = new HashMap<String, String>();
        try {
            JSONArray a = new JSONArray(prefs(c).getString("picks", "[]"));
            for (int i = 0; i < a.length(); i++) {
                JSONObject p = a.getJSONObject(i);
                String z = p.optString("zone", "");
                if (z.length() > 0) {
                    out.put(p.getString("id"), z);
                }
            }
        } catch (Throwable ignored) {
        }
        return out;
    }

    /** Only when the admin switched it on (built-in or not). */
    public static boolean isEnabled(Context c, Entry e, Map<String, int[]> picks) {
        int[] p = picks.get(e.id);
        return p != null && p[0] == 1;                 // only what the admin switched on (none by default)
    }

    /** The exercises offered for building workouts, figure ready (built in, or downloaded), library order. */
    public static List<Entry> enabled(Context c) {
        load(c);
        Map<String, int[]> picks = picks(c);
        Map<String, String> zones = zones(c);
        List<Entry> out = new ArrayList<Entry>();
        synchronized (ExerciseLibrary.class) {
            for (Entry e : ALL) {
                String z = zones.get(e.id);
                e.zone = z != null ? z : e.libZone;
                if (isEnabled(c, e, picks) && (e.builtIn || cacheFile(c, e.id).exists())) {
                    out.add(e);
                }
            }
        }
        return out;
    }

    /** Enabled ones still downloading (the picker says "N more are on the way"). */
    public static int pending(Context c) {
        load(c);
        Map<String, int[]> picks = picks(c);
        int n = 0;
        synchronized (ExerciseLibrary.class) {
            for (Entry e : ALL) {
                if (isEnabled(c, e, picks) && !e.builtIn && !cacheFile(c, e.id).exists()) {
                    n++;
                }
            }
        }
        return n;
    }

    // ------------------------------------------------------------------ sync + download

    /** In the background: the admin's picks, then the frames of every newly enabled exercise. */
    public static void sync(Context c, boolean force) {
        if (c == null || syncing) {
            return;
        }
        long last = prefs(c).getLong("syncedAt", 0);
        if (!force && System.currentTimeMillis() - last < SYNC_EVERY_MS) {
            return;
        }
        syncing = true;
        new Thread(new Sync(c.getApplicationContext()), "xems-library").start();
    }

    static final class Sync implements Runnable {
        private final Context c;

        Sync(Context c) {
            this.c = c;
        }

        @Override
        public void run() {
            try {
                load(c);
                JSONObject r = new JSONObject(com.isaigu.gymapp.widget.XemsLicenseClient.get("/v1/exercises"));
                if (r.optBoolean("ok")) {
                    prefs(c).edit().putString("picks", r.optJSONArray("picks") != null
                            ? r.getJSONArray("picks").toString() : "[]")
                            .putLong("v", r.optLong("v")).putLong("syncedAt", System.currentTimeMillis()).apply();
                }
                Map<String, int[]> picks = picks(c);
                List<Entry> todo = new ArrayList<Entry>();
                synchronized (ExerciseLibrary.class) {
                    for (Entry e : ALL) {
                        if (!e.builtIn && isEnabled(c, e, picks) && !cacheFile(c, e.id).exists()) {
                            todo.add(e);
                        }
                    }
                }
                int ok = 0;
                for (Entry e : todo) {
                    if (download(c, e)) {
                        ok++;
                    }
                }
                WearableBleDiagLog.log("library", "sync picks " + picks.size() + ", downloaded " + ok + "/" + todo.size());
            } catch (Throwable t) {
                WearableBleDiagLog.log("library", "sync: " + t);
            } finally {
                syncing = false;
            }
        }
    }

    static File cacheFile(Context c, String id) {
        return new File(new File(c.getFilesDir(), DIR), id + ".json");
    }

    /** All the exercise's frames, normalized; the frame choice is applied when drawing. */
    static boolean download(Context c, Entry e) {
        try {
            JSONArray paths = new JSONArray();
            for (int n = 1; n <= e.frames; n++) {
                String u = frameUrl.replace("{id}", e.id).replace("{n}", String.valueOf(n));
                paths.put(PathNorm.normalize(PathNorm.pathOf(fetch(u))));
            }
            JSONObject o = new JSONObject();
            JSONArray vb = new JSONArray();
            for (float v : e.vb) {
                vb.put((double) v);
            }
            o.put("vb", vb);
            o.put("paths", paths);
            File f = cacheFile(c, e.id);
            f.getParentFile().mkdirs();
            File tmp = new File(f.getPath() + ".tmp");
            FileOutputStream out = new FileOutputStream(tmp);
            out.write(o.toString().getBytes("UTF-8"));
            out.close();
            return tmp.renameTo(f);
        } catch (Throwable t) {
            WearableBleDiagLog.log("library", "download " + e.id + ": " + t);
            return false;
        }
    }

    /** The figure of a downloaded exercise with the admin's frame choice: 3 all, 2 first + last, 1 first. */
    static JSONObject cachedFigure(Context c, String id) {
        try {
            File f = cacheFile(c, id);
            if (!f.exists()) {
                return null;
            }
            JSONObject o = new JSONObject(read(new FileInputStream(f)));
            JSONArray all = o.getJSONArray("paths");
            JSONObject fx = fixes(c);
            for (int i = 0; i < all.length(); i++) {
                String p = fx.optString(id + "/" + (i + 1), null);
                if (p != null) {
                    all.put(i, p);
                }
            }
            int[] p = picks(c).get(id);
            int want = p != null && p[1] > 0 ? p[1] : all.length();
            JSONArray sel = new JSONArray();
            if (want <= 1 || all.length() == 1) {
                sel.put(all.getString(0));
            } else if (want == 2 || all.length() == 2) {
                sel.put(all.getString(0));
                sel.put(all.getString(all.length() - 1));
            } else {
                sel = all;
            }
            o.put("paths", sel);
            return o;
        } catch (Throwable t) {
            return null;
        }
    }

    private static synchronized JSONObject fixes(Context c) {
        if (fixes == null) {
            try {
                fixes = new JSONObject(read(c.getAssets().open(FIX_ASSET)));
            } catch (Throwable t) {
                fixes = new JSONObject();
            }
        }
        return fixes;
    }

    private static String fetch(String u) throws Exception {
        HttpURLConnection con = (HttpURLConnection) new URL(u).openConnection();
        con.setConnectTimeout(15000);
        con.setReadTimeout(20000);
        con.setRequestProperty("User-Agent", "XEMS-Android");
        int code = con.getResponseCode();
        if (code != 200) {
            throw new Exception("http " + code);
        }
        return read(con.getInputStream());
    }

    static String read(InputStream in) throws Exception {
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        byte[] buf = new byte[16384];
        int n;
        while ((n = in.read(buf)) > 0) {
            out.write(buf, 0, n);
        }
        in.close();
        return out.toString("UTF-8");
    }
}
