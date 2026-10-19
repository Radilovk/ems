package bg.xems.fleshka;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.zip.GZIPInputStream;

/**
 * The XBody unit's own SD card, updated from the phone: find its root partition (the ext one with /opt/xbody), put the
 * mod's payload on it the way build.py --img does (remove.list first, then every file / symlink, missing directories
 * made 0755 root; existing vendor directories keep their mode), then read every file back. No Android here: the host
 * test drives it on image files.
 */
public final class CardUpdate {
    public interface Progress { void step(String what, int pct); }

    /** One payload entry: a file (link == null) or a symlink. */
    static final class Entry {
        String path, link;
        int mode, mtime;
        byte[] data;
    }

    /** Byte offsets of the partitions an ext superblock sits on (MBR primaries; a bare filesystem → 0). */
    public static long[] extPartitions(BlockDev d) throws Exception {
        ArrayList<Long> out = new ArrayList<Long>();
        byte[] mbr = new byte[512];
        d.read(0, mbr, 0, 512);
        if ((mbr[510] & 0xff) == 0x55 && (mbr[511] & 0xff) == 0xAA)
            for (int i = 0; i < 4; i++) {
                int o = 446 + 16 * i, type = mbr[o + 4] & 0xff;
                long start = Ext3.u32(mbr, o + 8), len = Ext3.u32(mbr, o + 12);
                if (type == 0 || len == 0) continue;
                if (Ext3.probe(d, start * 512)) out.add(Long.valueOf(start * 512));
            }
        if (out.isEmpty() && Ext3.probe(d, 0)) out.add(Long.valueOf(0));
        long[] r = new long[out.size()];
        for (int i = 0; i < r.length; i++) r[i] = out.get(i).longValue();
        return r;
    }

    /** The XBody root filesystem on this card (it has /opt/xbody), or an exception that says what the card is. */
    public static Ext3 xbodyRoot(BlockDev d) throws Exception {
        long[] parts = extPartitions(d);
        if (parts.length == 0) throw new Exception("на тази карта няма Linux дял — не е картата на XBody");
        Exception last = null;
        for (long off : parts) {
            try {
                Ext3 fs = Ext3.open(d, off);
                if (fs.lookup("opt/xbody") != 0) return fs;
            } catch (Exception e) {
                last = e;
            }
        }
        if (last != null) throw last;
        throw new Exception("на картата няма /opt/xbody — не е картата на XBody");
    }

    /** The mod version on the card ("" none). */
    public static String cardVersion(Ext3 fs) throws Exception {
        byte[] v = fs.read("opt/xems/VERSION");
        return v == null ? "" : new String(v, "UTF-8").trim();
    }

    static ArrayList<Entry> untar(byte[] tgz) throws Exception {
        InputStream in = new GZIPInputStream(new ByteArrayInputStream(tgz));
        ByteArrayOutputStream all = new ByteArrayOutputStream();
        byte[] buf = new byte[65536];
        int n;
        while ((n = in.read(buf)) > 0) all.write(buf, 0, n);
        byte[] t = all.toByteArray();
        ArrayList<Entry> out = new ArrayList<Entry>();
        int off = 0;
        while (off + 512 <= t.length) {
            if (t[off] == 0) break;
            String name = str(t, off, 100), prefix = str(t, off + 345, 155);
            if (prefix.length() > 0) name = prefix + "/" + name;
            while (name.startsWith("./")) name = name.substring(2);
            long size = oct(t, off + 124, 12);
            char type = (char) t[off + 156];
            Entry e = new Entry();
            e.path = name;
            e.mode = (int) oct(t, off + 100, 8) & 07777;
            e.mtime = (int) oct(t, off + 136, 12);
            off += 512;
            if (type == '0' || type == 0) {
                e.data = Arrays.copyOfRange(t, off, (int) (off + size));
                out.add(e);
            } else if (type == '2') {
                e.link = str(t, off - 512 + 157, 100);
                out.add(e);
            } else if (type != '5') throw new Exception("непознат запис в пакета: " + name);
            off += (int) ((size + 511) / 512 * 512);
        }
        return out;
    }

    static String str(byte[] b, int o, int max) throws Exception {
        int n = 0;
        while (n < max && b[o + n] != 0) n++;
        return new String(b, o, n, "UTF-8");
    }

    static long oct(byte[] b, int o, int max) {
        long v = 0;
        for (int i = 0; i < max; i++) {
            int c = b[o + i];
            if (c >= '0' && c <= '7') v = v * 8 + (c - '0');
            else if (v > 0 || (c != ' ' && c != 0)) break;
        }
        return v;
    }

    static ArrayList<String> removes(String list) {
        ArrayList<String> out = new ArrayList<String>();
        for (String l : list.split("\n")) {
            l = l.trim();
            while (l.startsWith("/")) l = l.substring(1);
            if (l.length() == 0 || l.startsWith("#") || l.equals(".") || ("/" + l + "/").contains("/../")) continue;
            out.add(l);
        }
        return out;
    }

    /**
     * Install the mod on the card's XBody root. Returns the version now on the card. remove.list first (files only),
     * then the payload; finally a fresh read of the filesystem checks every file and symlink and every removal.
     */
    public static String apply(BlockDev d, byte[] payloadTgz, String removeList, String version, Progress p) throws Exception {
        p.step("Чета картата…", 2);
        Ext3 fs = xbodyRoot(d);
        long root = fs.base;
        ArrayList<Entry> files = untar(payloadTgz);
        ArrayList<String> rm = removes(removeList);
        for (String r : rm) fs.remove(r);
        for (int i = 0; i < files.size(); i++) {
            Entry e = files.get(i);
            p.step("Записвам " + e.path, 5 + 85 * i / Math.max(1, files.size()));
            fs.put(e.path, e.mode, e.mtime, e.data, e.link);
        }
        fs.flush();
        p.step("Проверявам всеки файл…", 92);
        Ext3 chk = Ext3.open(d, root);
        for (String r : rm) if (chk.lookup(r) != 0) throw new Exception("/" + r + " е още на картата");
        for (int i = 0; i < files.size(); i++) {
            Entry e = files.get(i);
            byte[] got = chk.read(e.path);
            byte[] want = e.link != null ? e.link.getBytes("UTF-8") : e.data;
            int m = chk.modeOf(e.path);
            int type = e.link != null ? Ext3.S_IFLNK : Ext3.S_IFREG;
            if (got == null || !Arrays.equals(got, want) || (m & Ext3.S_IFMT) != type
                    || (e.link == null && (m & 07777) != e.mode))
                throw new Exception("/" + e.path + " не се записа вярно");
        }
        String v = cardVersion(chk);
        if (version != null && !version.equals(v)) throw new Exception("на картата е версия " + v);
        p.step("Готово", 100);
        return v;
    }
}
