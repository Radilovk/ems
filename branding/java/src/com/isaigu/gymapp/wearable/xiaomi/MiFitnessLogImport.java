package com.isaigu.gymapp.wearable.xiaomi;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.content.ClipData;
import android.content.Intent;
import android.net.Uri;

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
 * No Xiaomi login involved. No lambdas / anonymous classes.
 */
public final class MiFitnessLogImport {

    private static final String TAG = "xems_mifit_log_pick";
    private static final int REQ = 0x5A9;
    private static final long MAX_FILE = 64L * 1024 * 1024;

    private static final Pattern KEY_PRIMARY = Pattern.compile(
            "(?i)\"?(?:encryptKey|encrypt_key|authKey|auth_key)\"?\\s*[:=]\\s*\"?([0-9a-f]{32})(?![0-9a-f])");
    private static final Pattern KEY_TOKEN = Pattern.compile(
            "(?i)\"token\"\\s*[:=]\\s*\"([0-9a-f]{32})\"");
    private static final Pattern MAC_COLON = Pattern.compile(
            "(?i)(?<![0-9a-f:])((?:[0-9a-f]{2}:){5}[0-9a-f]{2})(?![0-9a-f:])");
    private static final Pattern MAC_KEYED = Pattern.compile(
            "(?i)\"(?:mac|bleMac|deviceMac|macAddress)\"\\s*[:=]\\s*\"([0-9a-f]{12})\"");

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
        while (m.find()) {
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
    }

    public interface Done {
        void onFound(Found f, String problem);
    }

    /** Scan the folders Mi Fitness uses. Null if nothing readable/matching (then use {@link #pick}). */
    public static Found scanLocal() {
        Found best = new Found();
        List<File> files = new ArrayList<File>();
        for (int i = 0; i < DIRS.length; i++) {
            collect(new File(DIRS[i]), files, 0);
        }
        File[] arr = files.toArray(new File[0]);
        Arrays.sort(arr, new NewestFirst());
        int limit = Math.min(arr.length, 30);
        for (int i = 0; i < limit; i++) {
            try {
                if (arr[i].length() > MAX_FILE) {
                    continue;
                }
                InputStream in = new FileInputStream(arr[i]);
                try {
                    scanAny(in, best);
                } finally {
                    in.close();
                }
            } catch (Throwable ignored) {
            }
        }
        return best.hasAny() ? best : null;
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
            } else {
                String n = list[i].getName().toLowerCase(java.util.Locale.ROOT);
                if (n.endsWith(".log") || n.endsWith(".txt") || n.endsWith(".zip") || n.indexOf("log") >= 0) {
                    out.add(list[i]);
                }
            }
        }
    }

    private static final class NewestFirst implements Comparator<File> {
        @Override
        public int compare(File a, File b) {
            long x = a.lastModified();
            long y = b.lastModified();
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
            if (line.length() < 32) {
                continue;
            }
            scanDevices(line, into);
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
                into.mac = colon(k.group(1));
            }
            if (line.toLowerCase(java.util.Locale.ROOT).indexOf("mac") >= 0) {
                Matcher c = MAC_COLON.matcher(line);
                while (c.find()) {
                    into.mac = c.group(1).toUpperCase(java.util.Locale.ROOT);
                }
            }
        }
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

    /** Let the trainer choose the log file(s); result on {@code cb} (called on the main thread). */
    public static void pick(Activity a, Done cb) {
        try {
            pending = cb;
            FragmentManager fm = a.getFragmentManager();
            Fragment old = fm.findFragmentByTag(TAG);
            if (old != null) {
                fm.beginTransaction().remove(old).commitAllowingStateLoss();
                fm.executePendingTransactions();
            }
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
            if (b == null) {
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
            a.runOnUiThread(new Deliver(cb, f.hasAny() ? f : null));
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
            cb.onFound(f, f == null ? "no key" : null);
        }
    }
}
