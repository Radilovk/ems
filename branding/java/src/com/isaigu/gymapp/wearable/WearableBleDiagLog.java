package com.isaigu.gymapp.wearable;

import android.content.Context;
import android.util.Log;

import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

/** Ring-buffer + file log for direct BLE HR (pull via adb: externalFilesDir/diag-logs/wearable-ble.log). */
public final class WearableBleDiagLog {
    private static final String TAG = "WearableBle";
    private static final String LOG_NAME = "wearable-ble.log";
    private static final int MAX_LINES = 80;
    private static final long MAX_LOG_BYTES = 256 * 1024L;

    private static volatile Context appContext;
    private static final Object lock = new Object();
    private static final ArrayList<String> ring = new ArrayList<String>(MAX_LINES + 4);

    private WearableBleDiagLog() {}

    public static void init(Context context) {
        if (context != null) {
            appContext = context.getApplicationContext();
        }
    }

    public static void log(String event, String detail) {
        String line = formatLine(event, detail);
        Log.i(TAG, line);
        synchronized (lock) {
            ring.add(line);
            while (ring.size() > MAX_LINES) {
                ring.remove(0);
            }
        }
        appendToFile(LOG_NAME, line);
    }

    /**
     * Append one line to a separate raw-data file next to the log (no ring buffer, no logcat).
     * Used for band-raw.csv / band-realtime.csv.
     */
    public static void appendRaw(String fileName, String line) {
        if (fileName == null || line == null) {
            return;
        }
        appendToFile(fileName, line);
    }

    public static void logHex(String event, byte[] data, int maxBytes) {
        if (data == null) {
            log(event, "null");
            return;
        }
        int n = Math.min(data.length, maxBytes > 0 ? maxBytes : 32);
        StringBuilder sb = new StringBuilder(n * 3 + 16);
        sb.append("len=").append(data.length).append(' ');
        for (int i = 0; i < n; i++) {
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(String.format(Locale.US, "%02X", data[i] & 0xff));
        }
        if (data.length > n) {
            sb.append("…");
        }
        log(event, sb.toString());
    }

    public static void clear() {
        synchronized (lock) {
            ring.clear();
        }
    }

    public static String getRecentText() {
        synchronized (lock) {
            if (ring.isEmpty()) {
                return "";
            }
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < ring.size(); i++) {
                if (i > 0) {
                    sb.append('\n');
                }
                sb.append(ring.get(i));
            }
            return sb.toString();
        }
    }

    /** Last {@code maxBytes} of a diag file (raw CSV / log) for sharing; "" if missing. */
    public static String readTail(Context context, String fileName, int maxBytes) {
        Context ctx = context != null ? context : appContext;
        if (ctx == null || fileName == null) {
            return "";
        }
        try {
            File dir = ctx.getExternalFilesDir("diag-logs");
            if (dir == null) {
                dir = new File(ctx.getFilesDir(), "diag-logs");
            }
            File file = new File(dir, fileName);
            if (!file.exists()) {
                return "";
            }
            long len = file.length();
            long start = Math.max(0L, len - maxBytes);
            java.io.RandomAccessFile raf = new java.io.RandomAccessFile(file, "r");
            try {
                raf.seek(start);
                byte[] buf = new byte[(int) (len - start)];
                raf.readFully(buf);
                String text = new String(buf, "UTF-8");
                if (start > 0) {
                    int nl = text.indexOf('\n');
                    if (nl >= 0) {
                        text = text.substring(nl + 1);
                    }
                }
                return text;
            } finally {
                raf.close();
            }
        } catch (Throwable ignored) {
            return "";
        }
    }

    public static String getLogFileHint(Context context) {
        Context ctx = context != null ? context : appContext;
        if (ctx == null) {
            return "diag-logs/wearable-ble.log";
        }
        try {
            File ext = ctx.getExternalFilesDir("diag-logs");
            if (ext != null) {
                return new File(ext, LOG_NAME).getAbsolutePath();
            }
        } catch (Throwable ignored) {
        }
        return new File(ctx.getFilesDir(), "diag-logs/" + LOG_NAME).getAbsolutePath();
    }

    private static String formatLine(String event, String detail) {
        return timestamp() + " [" + event + "] " + (detail != null ? detail : "");
    }

    private static String timestamp() {
        return new SimpleDateFormat("HH:mm:ss.SSS", Locale.US).format(new Date());
    }

    private static void appendToFile(String name, String text) {
        Context ctx = appContext;
        if (ctx == null || text == null) {
            return;
        }
        synchronized (lock) {
            File dir;
            try {
                dir = ctx.getExternalFilesDir("diag-logs");
                if (dir == null) {
                    dir = new File(ctx.getFilesDir(), "diag-logs");
                }
                if (!dir.exists()) {
                    dir.mkdirs();
                }
                File file = new File(dir, name);
                if (file.exists() && file.length() > MAX_LOG_BYTES) {
                    File old = new File(dir, name + ".old");
                    if ( old.exists()) {
                        old.delete();
                    }
                    file.renameTo(old);
                    file = new File(dir, name);
                }
                FileOutputStream out = new FileOutputStream(file, true);
                out.write((text + "\n").getBytes("UTF-8"));
                out.flush();
                out.close();
            } catch (Throwable ignored) {
            }
        }
    }
}
