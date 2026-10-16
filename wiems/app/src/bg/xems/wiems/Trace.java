package bg.xems.wiems;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayDeque;

/**
 * The unit's trace: every write to the WiEMS unit, every answer and notification, every tap that changes a
 * strength, every start / pause / stop and why — the evidence when the unit does something unexpected (owner:
 * "it pauses when I raise one channel"). Kept in memory (the last lines, shared from the app) and appended to a
 * file in the app's folder (Android/data/bg.xems.wiems/files/wiems-log.txt). Pure Java.
 */
final class Trace {
    static final int KEEP = 3000;
    private final ArrayDeque<String> lines = new ArrayDeque<String>();
    private Writer out;
    private final long t0 = System.currentTimeMillis();

    Trace(File file) {
        try {
            if (file != null) {
                if (file.length() > 2000000) file.delete();     // ~2 MB: start over
                out = new OutputStreamWriter(new FileOutputStream(file, true), "UTF-8");
            }
        } catch (Throwable t) {
            out = null;
        }
    }

    void add(long now, String s) {
        String line = stamp() + " " + s;
        lines.addLast(line);
        while (lines.size() > KEEP) lines.removeFirst();
        if (out != null) {
            try {
                out.write(line);
                out.write('\n');
                out.flush();
            } catch (Throwable t) {
                out = null;
            }
        }
    }

    private String stamp() {
        long ms = System.currentTimeMillis();
        java.util.Calendar c = java.util.Calendar.getInstance();
        c.setTimeInMillis(ms);
        return String.format("%02d:%02d:%02d.%03d", c.get(java.util.Calendar.HOUR_OF_DAY), c.get(java.util.Calendar.MINUTE),
                c.get(java.util.Calendar.SECOND), (int) (ms % 1000));
    }

    String dump() {
        StringBuilder b = new StringBuilder();
        for (String l : lines) b.append(l).append('\n');
        return b.toString();
    }

    static String hex(byte[] v) {
        if (v == null) return "-";
        StringBuilder b = new StringBuilder();
        for (byte x : v) b.append(String.format("%02x ", x & 0xFF));
        return b.toString().trim();
    }
}
