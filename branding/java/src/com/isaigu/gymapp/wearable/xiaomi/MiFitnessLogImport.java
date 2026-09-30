package com.isaigu.gymapp.wearable.xiaomi;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.provider.DocumentsContract;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Reads the band's auth key (and BLE MAC when present) out of the log files the Mi Fitness app writes
 * (Profile → About → tap the logo many times; also kept in Android/data/com.xiaomi.wearable/files/log).
 * Where the storage rules hide Download/wearablelog, the trainer grants that folder once and the newest
 * archive is then found and read automatically.
 * No Xiaomi login involved. No lambdas / anonymous classes.
 */
public final class MiFitnessLogImport {

    private static final String TAG = "xems_mifit_log_pick";
    private static final int REQ = 0x5A9;
    /** Mi Fitness archives are often 100+ MB; they are streamed, so only absurd sizes are skipped. */
    private static final long MAX_FILE = 2048L * 1024 * 1024;

    private static final Pattern KEY_PRIMARY = Pattern.compile(
            "(?i)\"?(?:encryptKey|encrypt_key|authKey|auth_key)\"?\\s*[:=]\\s*\"?([0-9a-f]{32})(?![0-9a-f])");
    private static final Pattern KEY_TOKEN = Pattern.compile(
            "(?i)\"token\"\\s*[:=]\\s*\"([0-9a-f]{32})\"");
    private static final Pattern MAC_COLON = Pattern.compile(
            "(?i)(?<![0-9a-f:])((?:[0-9a-f]{2}:){5}[0-9a-f]{2})(?![0-9a-f:])");
    private static final Pattern MAC_KEYED = Pattern.compile(
            "(?i)\"?(?:mac|bleMac|btMac|ble_mac|bt_mac|deviceMac|macAddress|bleAddress|btAddress)\"?\\s*[:=]\\s*\"?"
                    + "((?:[0-9a-f]{2}[:-]?){5}[0-9a-f]{2})(?![0-9a-f])");
    /** Mi Fitness sometimes masks the middle of the MAC ("D0:62:**:**:3F:A2"); the known tail still helps. */
    private static final Pattern MAC_MASKED = Pattern.compile(
            "(?i)(?:mac|address)\"?\\s*[:=]\\s*\"?((?:[0-9a-f*x]{2}[:-]){5}[0-9a-f*x]{2})");
    private static final Pattern BAND_NAME = Pattern.compile(
            "((?:Xiaomi Smart |Mi Smart |Redmi Smart )?Band \\d+(?: Pro| Active| NFC)?) ([0-9A-F]{4})\\b");

    private static final String PREFS = "xems_mifit_log";
    private static final String K_TREE = "tree";
    private static final int REQ_TREE = 0x5AA;
    /** Scan at most this many newest files; the newest archive normally holds everything. */
    private static final int MAX_FILES = 12;

    private static final String[] DIRS = {
        "/sdcard/Download/wearablelog",
        "/storage/emulated/0/Download/wearablelog",
        "/sdcard/Android/data/com.xiaomi.wearable/files/log",
        "/sdcard/Android/data/com.mi.health/files/log",
        "/sdcard/Android/data/com.xiaomi.wearable/files",
        "/sdcard/Android/data/com.mi.health/files",
    };

    private MiFitnessLogImport() {}

    /** One band bound to the account, as listed in Mi Fitness' device response. */
    public static final class Dev {
        public final String name;
        public final String mac;
        public final String key;

        Dev(String name, String mac, String key) {
            this.name = name;
            this.mac = mac;
            this.key = key;
        }
    }

    public static final class Found {
        public String key = "";
        public String mac = "";
        public boolean fromToken;
        /** Known end of the band's MAC ("3FA2") from a masked MAC or the band's name; "" if none. */
        public String macHint = "";
        public String name = "";
        /** How many log files were readable (0 = no access to the folder). */
        public int files;
        /** How many .zip archives were opened. */
        public int zips;
        /** Log files seen in the folders (before opening). */
        public int listed;
        /** The first file that could not be opened, and why ("" = none). */
        public String error = "";
        /** Bands from the device-list JSON (newest last). Empty for older log formats. */
        public final java.util.LinkedHashMap<String, Dev> devices = new java.util.LinkedHashMap<String, Dev>();

        public boolean hasAny() {
            return key.length() > 0 || !devices.isEmpty();
        }
    }

    private static final Pattern DETAIL = Pattern.compile("\"detail\"\\s*:\\s*\\{([^{}]*)\\}");
    private static final Pattern D_KEY = Pattern.compile("(?i)\"encrypt_key\"\\s*:\\s*\"([0-9a-f]{32})\"");
    private static final Pattern D_TOKEN = Pattern.compile("(?i)\"token\"\\s*:\\s*\"([0-9a-f]{32})\"");
    private static final Pattern D_MAC = Pattern.compile("(?i)\"mac\"\\s*:\\s*\"((?:[0-9a-f]{2}:){5}[0-9a-f]{2})\"");

    private static void scanDevices(String line, Found into) {
        if (line.indexOf("\"detail\"") < 0) {
            return;
        }
        Matcher m = DETAIL.matcher(line);
        boolean any = false;
        while (m.find()) {
            any = true;
            String body = m.group(1);
            Matcher mk = D_KEY.matcher(body);
            String key = mk.find() ? mk.group(1) : "";
            if (key.length() == 0) {
                Matcher tk = D_TOKEN.matcher(body);
                key = tk.find() ? tk.group(1) : "";
            }
            Matcher mm = D_MAC.matcher(body);
            String mac = mm.find() ? mm.group(1).toUpperCase(java.util.Locale.ROOT) : "";
            if (key.length() == 0 || mac.length() == 0) {
                continue;
            }
            String name = "";
            int at = line.lastIndexOf("\"name\":\"", m.start());
            if (at >= 0 && m.start() - at < 800) {
                int from = at + 8;
                int to = line.indexOf('"', from);
                if (to > from) {
                    name = line.substring(from, to).trim();
                }
            }
            into.devices.remove(mac);
            into.devices.put(mac, new Dev(name, mac, key.toLowerCase(java.util.Locale.ROOT)));
        }
        if (!any) {
            pairByDistance(line, into);
        }
    }

    /** "detail" with nested objects: pair each encrypt_key with the nearest "mac" around it. */
    private static void pairByDistance(String line, Found into) {
        Matcher mk = D_KEY.matcher(line);
        while (mk.find()) {
            String best = "";
            int bestDist = 1500;
            Matcher mm = D_MAC.matcher(line);
            while (mm.find()) {
                int d = Math.abs(mm.start() - mk.start());
                if (d < bestDist) {
                    bestDist = d;
                    best = mm.group(1).toUpperCase(java.util.Locale.ROOT);
                }
            }
            if (best.length() == 0) {
                continue;
            }
            String name = "";
            int at = line.lastIndexOf("\"name\":\"", mk.start());
            if (at >= 0 && mk.start() - at < 1500) {
                int to = line.indexOf('"', at + 8);
                if (to > at + 8) {
                    name = line.substring(at + 8, to).trim();
                }
            }
            into.devices.remove(best);
            into.devices.put(best, new Dev(name, best, mk.group(1).toLowerCase(java.util.Locale.ROOT)));
        }
    }

    public interface Done {
        void onFound(Found f, String problem);
    }

    /**
     * Scan the folders Mi Fitness uses (plus the folder the trainer granted once, see {@link #grantFolder}).
     * Only the newest files are read, oldest of them first, so the newest log wins. Never null.
     */
    public static Found scanLocal(Context c) {
        Found best = new Found();
        List<Entry> files = new ArrayList<Entry>();
        List<File> roots = new ArrayList<File>();
        try {
            roots.add(new File(android.os.Environment.getExternalStoragePublicDirectory(
                    android.os.Environment.DIRECTORY_DOWNLOADS), "wearablelog"));
        } catch (Throwable ignored) {
        }
        for (int i = 0; i < DIRS.length; i++) {
            roots.add(new File(DIRS[i]));
        }
        java.util.HashSet<String> seenDirs = new java.util.HashSet<String>();
        for (int i = 0; i < roots.size(); i++) {
            List<File> fs = new ArrayList<File>();
            String canon;
            try {
                canon = roots.get(i).getCanonicalPath();
            } catch (Throwable t) {
                canon = roots.get(i).getAbsolutePath();
            }
            if (!seenDirs.add(canon)) {
                continue;
            }
            collect(roots.get(i), fs, 0);
            for (int k = 0; k < fs.size(); k++) {
                File f = fs.get(k);
                if (f.length() <= MAX_FILE) {
                    files.add(new Entry(f, null, f.lastModified(), f.getAbsolutePath()));
                }
            }
        }
        Uri tree = tree(c);
        if (tree != null) {
            try {
                listTree(c, tree, DocumentsContract.getTreeDocumentId(tree), files, 0);
            } catch (Throwable t) {
                android.util.Log.w("xems", "MiFitnessLogImport.tree", t);
            }
        }
        Entry[] arr = files.toArray(new Entry[0]);
        Arrays.sort(arr, new NewestFirst());
        java.util.HashSet<String> seen = new java.util.HashSet<String>();
        List<Entry> pick = new ArrayList<Entry>();
        for (int i = 0; i < arr.length && pick.size() < MAX_FILES; i++) {
            if (seen.add(arr[i].name + "|" + arr[i].time)) {
                pick.add(arr[i]);
            }
        }
        best.listed = pick.size();
        // Newest first; the first archive that names the bands (key + MAC) is the answer. Older ones only
        // fill in when the newest has just a key.
        for (int i = 0; i < pick.size(); i++) {
            Entry e = pick.get(i);
            Found one = new Found();
            try {
                InputStream in = e.file != null ? new FileInputStream(e.file)
                        : c.getContentResolver().openInputStream(e.uri);
                try {
                    scanAny(in, one);
                    best.files++;
                    best.zips += one.zips;
                } finally {
                    in.close();
                }
            } catch (Throwable t) {
                if (best.error.length() == 0) {
                    best.error = e.name + ": " + t.getClass().getSimpleName()
                            + (t.getMessage() != null ? " " + t.getMessage() : "");
                }
                continue;
            }
            if (!one.devices.isEmpty()) {
                for (Dev d : one.devices.values()) {
                    if (!best.devices.containsKey(d.mac)) {
                        best.devices.put(d.mac, d);
                    }
                }
                if (best.key.length() == 0) {
                    best.key = one.key;
                }
                break;
            }
            if (best.key.length() == 0 && one.key.length() > 0) {
                best.key = one.key;
                best.fromToken = one.fromToken;
            }
            if (best.mac.length() == 0 && one.mac.length() > 0) {
                best.mac = one.mac;
            }
            if (best.macHint.length() == 0) {
                best.macHint = one.macHint;
                best.name = one.name.length() > 0 ? one.name : best.name;
            }
            if (best.key.length() > 0 && best.mac.length() > 0) {
                break;
            }
        }
        return best;
    }

    private static final class Entry {
        final File file;
        final Uri uri;
        final long time;
        final String name;

        Entry(File file, Uri uri, long time, String path) {
            this.file = file;
            this.uri = uri;
            this.time = time;
            int slash = path.lastIndexOf('/');
            this.name = slash >= 0 ? path.substring(slash + 1) : path;
        }
    }

    private static boolean wanted(String name) {
        String n = name.toLowerCase(java.util.Locale.ROOT);
        return n.endsWith(".log") || n.endsWith(".txt") || n.endsWith(".zip") || n.indexOf("log") >= 0;
    }

    private static void listTree(Context c, Uri tree, String docId, List<Entry> out, int depth) {
        Uri kids = DocumentsContract.buildChildDocumentsUriUsingTree(tree, docId);
        android.database.Cursor cur = c.getContentResolver().query(kids, new String[] {
            DocumentsContract.Document.COLUMN_DOCUMENT_ID, DocumentsContract.Document.COLUMN_MIME_TYPE,
            DocumentsContract.Document.COLUMN_LAST_MODIFIED, DocumentsContract.Document.COLUMN_DISPLAY_NAME,
            DocumentsContract.Document.COLUMN_SIZE}, null, null, null);
        if (cur == null) {
            return;
        }
        try {
            while (cur.moveToNext()) {
                String id = cur.getString(0);
                String mime = cur.getString(1);
                long time = cur.isNull(2) ? 0L : cur.getLong(2);
                String name = cur.getString(3) != null ? cur.getString(3) : "";
                long size = cur.isNull(4) ? 0L : cur.getLong(4);
                if (DocumentsContract.Document.MIME_TYPE_DIR.equals(mime)) {
                    if (depth < 2) {
                        listTree(c, tree, id, out, depth + 1);
                    }
                } else if (wanted(name) && size <= MAX_FILE) {
                    out.add(new Entry(null, DocumentsContract.buildDocumentUriUsingTree(tree, id), time, name));
                }
            }
        } finally {
            cur.close();
        }
    }

    /**
     * The log folder the trainer granted once (persisted), or null. Found also when the saved note of it is
     * gone or differs in spelling: any kept read grant on a folder named wearablelog counts (and is noted again).
     */
    public static Uri tree(Context c) {
        try {
            String s = c.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getString(K_TREE, "");
            Uri u = s.length() > 0 ? Uri.parse(s) : null;
            List<android.content.UriPermission> perms = c.getContentResolver().getPersistedUriPermissions();
            Uri any = null;
            for (int i = 0; i < perms.size(); i++) {
                android.content.UriPermission pm = perms.get(i);
                if (!pm.isReadPermission()) {
                    continue;
                }
                if (u != null && pm.getUri().equals(u)) {
                    return u;
                }
                String decoded = Uri.decode(pm.getUri().toString()).toLowerCase(java.util.Locale.ROOT);
                if (any == null && decoded.indexOf("/tree/") >= 0 && decoded.indexOf("wearablelog") >= 0) {
                    any = pm.getUri();
                }
            }
            if (any != null) {
                c.getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit().putString(K_TREE, any.toString()).apply();
                log("folder grant found again: " + any);
            }
            return any;
        } catch (Throwable t) {
            log("tree: " + t);
        }
        return null;
    }

    static void log(String s) {
        try {
            com.isaigu.gymapp.wearable.WearableBleDiagLog.log("pair", s);
        } catch (Throwable ignored) {
        }
    }

    private static void collect(File dir, List<File> out, int depth) {
        File[] list = null;
        try {
            list = dir.listFiles();
        } catch (Throwable ignored) {
        }
        if (list == null || depth > 2) {
            return;
        }
        for (int i = 0; i < list.length; i++) {
            if (list[i].isDirectory()) {
                collect(list[i], out, depth + 1);
            } else if (wanted(list[i].getName())) {
                out.add(list[i]);
            }
        }
    }

    private static final class NewestFirst implements Comparator<Entry> {
        @Override
        public int compare(Entry a, Entry b) {
            long x = a.time;
            long y = b.time;
            return x < y ? 1 : (x > y ? -1 : 0);
        }
    }

    /** Like {@link #scan}, but also opens a .zip (Mi Fitness exports its logs as an archive). */
    public static void scanAny(InputStream raw, Found into) throws Exception {
        java.io.BufferedInputStream in = new java.io.BufferedInputStream(raw, 1 << 16);
        in.mark(8);
        int b0 = in.read();
        int b1 = in.read();
        in.reset();
        if (b0 == 0x50 && b1 == 0x4B) {
            into.zips++;
            java.util.zip.ZipInputStream zin = new java.util.zip.ZipInputStream(in);
            java.util.zip.ZipEntry e;
            while ((e = zin.getNextEntry()) != null) {
                if (!e.isDirectory()) {
                    scan(zin, into);
                }
            }
        } else {
            scan(in, into);
        }
    }

    /** Scan a stream line by line; a later match replaces an earlier one, a primary key beats a bare token. */
    public static void scan(InputStream in, Found into) throws Exception {
        BufferedReader r = new BufferedReader(new InputStreamReader(in, "UTF-8"), 1 << 16);
        String line;
        while ((line = r.readLine()) != null) {
            if (line.length() < 32 || !relevant(line)) {
                continue;
            }
            if (line.indexOf("\\\"") >= 0) {
                line = line.replace("\\\"", "\"");
            }
            scanDevices(line, into);
            Matcher bn = BAND_NAME.matcher(line);
            while (bn.find()) {
                into.name = bn.group(0);
                into.macHint = bn.group(2).toUpperCase(java.util.Locale.ROOT);
            }
            Matcher m = KEY_PRIMARY.matcher(line);
            while (m.find()) {
                into.key = m.group(1).toLowerCase(java.util.Locale.ROOT);
                into.fromToken = false;
            }
            if (into.key.length() == 0 || into.fromToken) {
                Matcher t = KEY_TOKEN.matcher(line);
                while (t.find()) {
                    into.key = t.group(1).toLowerCase(java.util.Locale.ROOT);
                    into.fromToken = true;
                }
            }
            Matcher k = MAC_KEYED.matcher(line);
            while (k.find()) {
                String hex = k.group(1).replace(":", "").replace("-", "");
                if (hex.length() == 12 && !"000000000000".equals(hex) && !"020000000000".equals(hex)) {
                    into.mac = colon(hex);
                }
            }
            Matcher mk = MAC_MASKED.matcher(line);
            while (mk.find()) {
                String tail = maskedTail(mk.group(1));
                if (tail.length() >= 4) {
                    into.macHint = tail;
                }
            }
            if (line.toLowerCase(java.util.Locale.ROOT).indexOf("mac") >= 0) {
                Matcher c = MAC_COLON.matcher(line);
                while (c.find()) {
                    into.mac = c.group(1).toUpperCase(java.util.Locale.ROOT);
                }
            }
        }
    }

    /** Cheap pre-filter: 100+ MB archives are mostly lines without a key, MAC or band name. */
    private static boolean relevant(String l) {
        return l.indexOf("ey") >= 0 || l.indexOf("EY") >= 0 || l.indexOf("oken") >= 0 || l.indexOf("mac") >= 0
                || l.indexOf("Mac") >= 0 || l.indexOf("MAC") >= 0 || l.indexOf("ddress") >= 0 || l.indexOf("Band") >= 0;
    }

    /** "D0:62:**:**:3F:A2" → "3FA2" (the unmasked bytes at the end); "" when nothing is masked. */
    static String maskedTail(String mac) {
        String[] p = mac.toUpperCase(java.util.Locale.ROOT).split("[:-]");
        if (mac.indexOf('*') < 0 && mac.toUpperCase(java.util.Locale.ROOT).indexOf("XX") < 0) {
            return "";
        }
        StringBuilder b = new StringBuilder();
        for (int i = p.length - 1; i >= 0; i--) {
            if (!p[i].matches("[0-9A-F]{2}")) {
                break;
            }
            b.insert(0, p[i]);
        }
        return b.toString();
    }

    private static String colon(String hex12) {
        String h = hex12.toUpperCase(java.util.Locale.ROOT);
        StringBuilder b = new StringBuilder();
        for (int i = 0; i < 12; i += 2) {
            if (i > 0) {
                b.append(':');
            }
            b.append(h, i, i + 2);
        }
        return b.toString();
    }

    // ------------------------------------------------------------ file picker
    private static Done pending;
    /** The next {@link Host} asks for the log folder (tree) instead of single files. */
    private static boolean pendingFolder;

    /** Let the trainer choose the log file(s); result on {@code cb} (called on the main thread). */
    public static void pick(Activity a, Done cb) {
        start(a, cb, false);
    }

    /**
     * One-time: open the system folder screen right at Download/wearablelog; after "Use this folder" the
     * access is kept and every later search reads the newest archive by itself. Result on {@code cb}.
     */
    public static void grantFolder(Activity a, Done cb) {
        start(a, cb, true);
    }

    private static void start(Activity a, Done cb, boolean folder) {
        try {
            pending = cb;
            FragmentManager fm = a.getFragmentManager();
            Fragment old = fm.findFragmentByTag(TAG);
            if (old != null) {
                fm.beginTransaction().remove(old).commitAllowingStateLoss();
                fm.executePendingTransactions();
            }
            pendingFolder = folder;
            fm.beginTransaction().add(new Host(), TAG).commitAllowingStateLoss();
            fm.executePendingTransactions();
        } catch (Throwable t) {
            android.util.Log.w("xems", "MiFitnessLogImport.pick", t);
        }
    }

    public static final class Host extends Fragment {
        @Override
        public void onCreate(android.os.Bundle b) {
            super.onCreate(b);
            if (b == null && pendingFolder) {
                try {
                    Intent i = new Intent(Intent.ACTION_OPEN_DOCUMENT_TREE);
                    if (android.os.Build.VERSION.SDK_INT >= 26) {
                        i.putExtra(DocumentsContract.EXTRA_INITIAL_URI, DocumentsContract.buildDocumentUri(
                                "com.android.externalstorage.documents", "primary:Download/wearablelog"));
                    }
                    i.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION);
                    startActivityForResult(i, REQ_TREE);
                } catch (Throwable t) {
                    android.util.Log.w("xems", "MiFitnessLogImport.tree", t);
                    Done cb = pending;
                    pending = null;
                    if (cb != null) {
                        cb.onFound(null, "no folder");
                    }
                    done();
                }
            } else if (b == null) {
                try {
                    Intent i = new Intent(Intent.ACTION_OPEN_DOCUMENT);
                    i.setType("*/*");
                    i.addCategory(Intent.CATEGORY_OPENABLE);
                    i.putExtra(Intent.EXTRA_ALLOW_MULTIPLE, true);
                    startActivityForResult(i, REQ);
                } catch (Throwable t) {
                    android.util.Log.w("xems", "MiFitnessLogImport.start", t);
                    done();
                }
            }
        }

        @Override
        public void onActivityResult(int req, int res, Intent data) {
            super.onActivityResult(req, res, data);
            Done cb = pending;
            pending = null;
            if (req == REQ_TREE) {
                Uri u = res == Activity.RESULT_OK && data != null ? data.getData() : null;
                if (u == null) {
                    if (cb != null) {
                        cb.onFound(null, "cancelled");
                    }
                } else {
                    Activity act = getActivity();
                    try {
                        act.getContentResolver().takePersistableUriPermission(u, Intent.FLAG_GRANT_READ_URI_PERMISSION);
                        act.getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit().putString(K_TREE, u.toString()).apply();
                        log("folder granted and kept: " + u);
                    } catch (Throwable t) {
                        log("folder grant not kept: " + t);
                    }
                    if (cb != null) {
                        new Thread(new TreeTask(act, cb), "xems-mifit-tree").start();
                    }
                }
                done();
                return;
            }
            if (cb != null && !(req == REQ && res == Activity.RESULT_OK && data != null)) {
                cb.onFound(null, "cancelled");
            }
            if (req == REQ && res == Activity.RESULT_OK && data != null && cb != null) {
                List<Uri> uris = new ArrayList<Uri>();
                ClipData clip = data.getClipData();
                if (clip != null) {
                    for (int i = 0; i < clip.getItemCount(); i++) {
                        uris.add(clip.getItemAt(i).getUri());
                    }
                } else if (data.getData() != null) {
                    uris.add(data.getData());
                }
                new Thread(new ReadTask(getActivity(), uris, cb), "xems-mifit-log").start();
            }
            done();
        }

        void done() {
            try {
                getFragmentManager().beginTransaction().remove(this).commitAllowingStateLoss();
            } catch (Throwable ignored) {
            }
        }
    }

    private static final class TreeTask implements Runnable {
        private final Activity a;
        private final Done cb;

        TreeTask(Activity a, Done cb) {
            this.a = a;
            this.cb = cb;
        }

        @Override
        public void run() {
            Found f = scanLocal(a);
            log("after the grant: files " + f.listed + ", read " + f.files + ", zips " + f.zips
                    + ", bands " + f.devices.size() + (f.error.length() > 0 ? ", " + f.error : ""));
            a.runOnUiThread(new Deliver(cb, f));
        }
    }

    private static final class ReadTask implements Runnable {
        private final Activity a;
        private final List<Uri> uris;
        private final Done cb;

        ReadTask(Activity a, List<Uri> uris, Done cb) {
            this.a = a;
            this.uris = uris;
            this.cb = cb;
        }

        @Override
        public void run() {
            Found f = new Found();
            for (int i = 0; i < uris.size(); i++) {
                try {
                    InputStream in = a.getContentResolver().openInputStream(uris.get(i));
                    try {
                        scanAny(in, f);
                    } finally {
                        in.close();
                    }
                } catch (Throwable ignored) {
                }
            }
            a.runOnUiThread(new Deliver(cb, f));
        }
    }

    private static final class Deliver implements Runnable {
        private final Done cb;
        private final Found f;

        Deliver(Done cb, Found f) {
            this.cb = cb;
            this.f = f;
        }

        @Override
        public void run() {
            cb.onFound(f, f == null || !f.hasAny() ? "no key" : null);
        }
    }
}
