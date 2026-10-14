package com.isaigu.gymapp.wearable.bluetens;

import android.content.Context;
import android.content.pm.ApplicationInfo;

import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/**
 * Every program of the native Bluetens app, read from that app where it is installed on this tablet (owner,
 * 2026-10-14: "all the programs of the native Bluetens app in our module"). Nothing of the vendor ships in XEMS: the
 * .lok files and their names are read at run time from the vendor's own APK ({@code assets/**.lok}, names from its
 * JSON assets when they carry them, else the file name), and played as they are — the vendor made them for this pad.
 * On the pad they all share one file, {@link #FILE} (the md5 decides whether it is uploaded again).
 */
public final class BluetensNative {
    /** The vendor app (the manifest names it in {@code <queries>}, apply-wearable-permissions.py). */
    public static final String PKG = "com.bluetens";
    static final String FILE = "XNAT";
    private static final int JSON_MAX = 3 << 20;

    private BluetensNative() {}

    /** One vendor program: where it sits in the vendor APK, its name and group, its time and range. */
    public static final class Prog {
        public String entry;
        public String base;
        public String name;
        public String group = "";
        public double ms;
        public int hzLo;
        public int hzHi;
        public int usHi;
    }

    private static List<Prog> cache;
    private static String cacheKey = "";
    /** Why the list is empty ("" when it is not): "none" = app not installed, "empty" = no programs in it. */
    public static String why = "";

    /** The vendor APK on this tablet, or null when the app is not installed. */
    static String apk(Context c) {
        try {
            ApplicationInfo ai = c.getPackageManager().getApplicationInfo(PKG, 0);
            return ai.sourceDir;
        } catch (Throwable t) {
            return null;
        }
    }

    public static boolean installed(Context c) {
        return apk(c) != null;
    }

    /** Blocking (zip + parse of a few hundred files): call it off the main thread. Cached per APK version. */
    public static synchronized List<Prog> load(Context c, boolean bg) {
        String path = apk(c);
        if (path == null) {
            why = "none";
            return new ArrayList<Prog>();
        }
        java.io.File f = new java.io.File(path);
        String key = path + "|" + f.lastModified() + "|" + bg;
        if (cache != null && key.equals(cacheKey)) {
            return cache;
        }
        List<Prog> out = loadZip(f, bg);
        why = out.isEmpty() ? "empty" : "";
        cache = out;
        cacheKey = key;
        return out;
    }

    /** Every .lok under assets/ of an APK, named from its JSON assets — pure Java (scripts/bluetens/BluetensSim). */
    public static List<Prog> loadZip(java.io.File f, boolean bg) {
        List<Prog> out = new ArrayList<Prog>();
        ZipFile zip = null;
        try {
            zip = new ZipFile(f);
            List<ZipEntry> loks = new ArrayList<ZipEntry>();
            List<ZipEntry> jsons = new ArrayList<ZipEntry>();
            Enumeration<? extends ZipEntry> en = zip.entries();
            while (en.hasMoreElements()) {
                ZipEntry e = en.nextElement();
                String n = e.getName().toLowerCase(Locale.ROOT);
                if (e.isDirectory() || !n.startsWith("assets/")) {
                    continue;
                }
                if (n.endsWith(".lok")) {
                    loks.add(e);
                } else if (n.endsWith(".json") && e.getSize() < JSON_MAX) {
                    jsons.add(e);
                }
            }
            Names names = new Names(bg);
            for (ZipEntry e : jsons) {
                try {
                    names.read(e.getName(), new String(bytes(zip, e), "UTF-8"));
                } catch (Throwable ignored) {
                }
            }
            for (ZipEntry e : loks) {
                Prog p = new Prog();
                p.entry = e.getName();
                p.base = base(p.entry);
                try {
                    stats(p, BluetensLok.parse(new String(bytes(zip, e), "US-ASCII")));
                } catch (Throwable t) {
                    continue;                                 // a file our parser does not take is not offered
                }
                String[] ng = names.of(p.base);
                p.name = ng[0] != null ? ng[0] : pretty(p.base);
                p.group = ng[1] != null ? ng[1] : folder(p.entry);
                out.add(p);
            }
        } catch (Throwable t) {
            out.clear();
        } finally {
            try {
                if (zip != null) {
                    zip.close();
                }
            } catch (Throwable ignored) {
            }
        }
        Collections.sort(out, new ByName());
        return out;
    }

    /** The program's file exactly as the vendor ships it. */
    public static byte[] read(Context c, Prog p) {
        String path = apk(c);
        if (path == null || p == null) {
            return null;
        }
        ZipFile zip = null;
        try {
            zip = new ZipFile(path);
            ZipEntry e = zip.getEntry(p.entry);
            return e != null ? bytes(zip, e) : null;
        } catch (Throwable t) {
            return null;
        } finally {
            try {
                if (zip != null) {
                    zip.close();
                }
            } catch (Throwable ignored) {
            }
        }
    }

    public static Prog find(List<Prog> all, String entry) {
        if (all != null && entry != null) {
            for (Prog p : all) {
                if (p.entry.equals(entry)) {
                    return p;
                }
            }
        }
        return null;
    }

    static void stats(Prog p, BluetensLok lok) {
        p.ms = lok.ms();
        int lo = Integer.MAX_VALUE, hi = 0, us = 0;
        for (BluetensLok.Section s : lok.sections) {
            for (BluetensLok.Block b : s.blocks) {
                int hz = Math.max(1, Math.round(b.freq10 / 10f));
                lo = Math.min(lo, hz);
                hi = Math.max(hi, hz);
                us = Math.max(us, b.impulse);
            }
        }
        p.hzLo = lo == Integer.MAX_VALUE ? 0 : lo;
        p.hzHi = hi;
        p.usHi = us;
    }

    static byte[] bytes(ZipFile zip, ZipEntry e) throws java.io.IOException {
        InputStream in = zip.getInputStream(e);
        try {
            ByteArrayOutputStream o = new ByteArrayOutputStream();
            byte[] buf = new byte[8192];
            int n;
            while ((n = in.read(buf)) > 0) {
                o.write(buf, 0, n);
            }
            return o.toByteArray();
        } finally {
            in.close();
        }
    }

    /** "assets/www/assets/lok/PAIN.lok" → "PAIN". */
    static String base(String entry) {
        String n = entry.substring(entry.lastIndexOf('/') + 1);
        int dot = n.lastIndexOf('.');
        return dot > 0 ? n.substring(0, dot) : n;
    }

    /** The folder under the lok root ("" when the files sit in one folder). */
    static String folder(String entry) {
        String[] parts = entry.split("/");
        if (parts.length < 2) {
            return "";
        }
        String f = parts[parts.length - 2];
        return f.equalsIgnoreCase("lok") || f.equalsIgnoreCase("assets") ? "" : pretty(f);
    }

    /** "NECK_PAIN2" → "Neck pain 2". */
    public static String pretty(String s) {
        StringBuilder b = new StringBuilder();
        char prev = ' ';
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (c == '_' || c == '-' || c == '.') {
                c = ' ';
            }
            if (Character.isDigit(c) && Character.isLetter(prev)) {
                b.append(' ');
            }
            b.append(c);
            prev = c;
        }
        String t = b.toString().trim().replaceAll(" +", " ");
        if (t.length() == 0) {
            return s;
        }
        return Character.toUpperCase(t.charAt(0)) + t.substring(1).toLowerCase(Locale.ROOT);
    }

    static String norm(String s) {
        String n = s.trim();
        int slash = n.lastIndexOf('/');
        if (slash >= 0) {
            n = n.substring(slash + 1);
        }
        if (n.toLowerCase(Locale.ROOT).endsWith(".lok")) {
            n = n.substring(0, n.length() - 4);
        }
        return n.toUpperCase(Locale.ROOT);
    }

    static final class ByName implements Comparator<Prog> {
        @Override
        public int compare(Prog x, Prog y) {
            int g = x.group.compareToIgnoreCase(y.group);
            return g != 0 ? g : x.name.compareToIgnoreCase(y.name);
        }
    }

    /**
     * Names from the vendor's JSON assets, whatever their shape: translation files (flattened "a.b.c" → text, the
     * tablet's language first, then English) and any object that names a .lok file next to a name / title and a
     * category. A name that is a translation key is translated.
     */
    static final class Names {
        final boolean bg;
        final Map<String, String> mine = new HashMap<String, String>();   // tablet language
        final Map<String, String> en = new HashMap<String, String>();
        final Map<String, String> any = new HashMap<String, String>();
        final Map<String, String[]> meta = new HashMap<String, String[]>();

        Names(boolean bg) {
            this.bg = bg;
        }

        void read(String path, String text) throws Exception {
            Object root = new JSONTokener(text).nextValue();
            String file = path.substring(path.lastIndexOf('/') + 1).toLowerCase(Locale.ROOT);
            String lang = file.replace(".json", "");
            Map<String, String> into = lang.startsWith(bg ? "bg" : "en") ? mine
                    : lang.startsWith("en") ? en : (lang.length() <= 5 ? any : null);
            if (into != null && root instanceof JSONObject) {
                flatten("", (JSONObject) root, into);
            }
            walk(root);
        }

        void flatten(String prefix, JSONObject o, Map<String, String> into) throws Exception {
            Iterator<String> it = o.keys();
            while (it.hasNext()) {
                String k = it.next();
                Object v = o.get(k);
                String full = prefix.length() > 0 ? prefix + "." + k : k;
                if (v instanceof JSONObject) {
                    flatten(full, (JSONObject) v, into);
                } else if (v instanceof String) {
                    into.put(full, (String) v);
                    into.put(k.toUpperCase(Locale.ROOT), (String) v);
                }
            }
        }

        void walk(Object v) throws Exception {
            if (v instanceof JSONArray) {
                JSONArray a = (JSONArray) v;
                for (int i = 0; i < a.length(); i++) {
                    walk(a.get(i));
                }
            } else if (v instanceof JSONObject) {
                JSONObject o = (JSONObject) v;
                String file = null;
                for (String k : new String[] {"file", "File", "FileName", "fileName", "filename", "lok", "Lok",
                        "script", "Script", "id", "Id", "ID"}) {
                    String s = o.optString(k, "");
                    if (s.length() > 0 && s.length() < 64) {
                        file = norm(s);
                        break;
                    }
                }
                if (file != null) {
                    String name = first(o, new String[] {"Name", "name", "Title", "title", "Caption", "caption"});
                    String group = first(o, new String[] {"Category", "category", "Group", "group", "Catalog",
                            "catalog", "Type", "type", "Body", "body"});
                    if (name != null && !meta.containsKey(file)) {
                        meta.put(file, new String[] {name, group != null ? group : null});
                    }
                }
                Iterator<String> keys = o.keys();
                while (keys.hasNext()) {
                    String k = keys.next();
                    walk(o.get(k));
                }
            }
        }

        static String first(JSONObject o, String[] keys) {
            for (String k : keys) {
                Object v = o.opt(k);
                if (v instanceof String && ((String) v).trim().length() > 0) {
                    return ((String) v).trim();
                }
            }
            return null;
        }

        String tr(String key) {
            if (key == null) {
                return null;
            }
            String k = key.replace("{{", "").replace("}}", "").replace("'", "").trim();
            int pipe = k.indexOf('|');
            if (pipe > 0) {
                k = k.substring(0, pipe).trim();
            }
            String t = mine.get(k);
            if (t == null) {
                t = en.get(k);
            }
            if (t == null) {
                t = any.get(k);
            }
            return t != null ? t : key;
        }

        /** {name, group} for a .lok base name; nulls where nothing names it. */
        String[] of(String base) {
            String b = base.toUpperCase(Locale.ROOT);
            String[] m = meta.get(b);
            if (m != null) {
                return new String[] {tr(m[0]), m[1] != null ? tr(m[1]) : null};
            }
            String t = mine.get(b);
            if (t == null) {
                t = en.get(b);
            }
            return new String[] {t, null};
        }
    }
}
