package bg.xems.fleshka;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.BufferedInputStream;
import java.util.ArrayList;
import java.util.HashSet;

/**
 * Writes through to a disk, but first keeps every 512-byte sector it is about to change, as it was, in a file on the
 * phone (once per sector). undo() puts them all back — "Върни картата както беше" after an update, whatever happened
 * in between (a pulled reader, a crash): the log is flushed to the phone before each write reaches the card.
 * Log: "XUNDO1", the disk size, then records (sector number, 512 bytes).
 */
public final class UndoDev implements BlockDev {
    static final int S = 512;
    final BlockDev d;
    final DataOutputStream log;
    final FileOutputStream logFile;
    final HashSet<Long> saved = new HashSet<Long>();

    public UndoDev(BlockDev dev, File logPath) throws Exception {
        d = dev;
        logFile = new FileOutputStream(logPath, false);
        log = new DataOutputStream(logFile);
        log.writeBytes("XUNDO1");
        log.writeLong(dev.size());
        log.flush();
    }

    @Override
    public long size() throws Exception { return d.size(); }

    @Override
    public void read(long off, byte[] b, int o, int n) throws Exception { d.read(off, b, o, n); }

    @Override
    public void write(long off, byte[] b, int o, int n) throws Exception {
        long first = off / S, last = (off + n - 1) / S;
        byte[] sec = new byte[S];
        boolean any = false;
        for (long s = first; s <= last; s++) {
            if (!saved.add(Long.valueOf(s))) continue;
            d.read(s * S, sec, 0, S);
            log.writeLong(s);
            log.write(sec);
            any = true;
        }
        if (any) {
            log.flush();
            logFile.getFD().sync();
        }
        d.write(off, b, o, n);
    }

    @Override
    public void sync() throws Exception { d.sync(); }

    public void close() throws Exception { log.close(); }

    /** Sectors this log changed (0 = nothing to undo). */
    public static int count(File logPath) throws Exception {
        long n = logPath.length();
        return n < 14 ? 0 : (int) ((n - 14) / (8 + S));
    }

    /** Disk size the log was written for (a different card is refused). */
    public static long diskSize(File logPath) throws Exception {
        DataInputStream in = new DataInputStream(new FileInputStream(logPath));
        try {
            byte[] m = new byte[6];
            in.readFully(m);
            if (!"XUNDO1".equals(new String(m, "US-ASCII"))) throw new Exception("не е файл за връщане");
            return in.readLong();
        } finally {
            in.close();
        }
    }

    /** Every saved sector back onto the disk. */
    public static int undo(BlockDev dev, File logPath) throws Exception {
        if (diskSize(logPath) != dev.size()) throw new Exception("това не е същата карта (друг размер)");
        DataInputStream in = new DataInputStream(new BufferedInputStream(new FileInputStream(logPath)));
        ArrayList<Long> secs = new ArrayList<Long>();
        ArrayList<byte[]> data = new ArrayList<byte[]>();
        try {
            in.skipBytes(14);
            while (true) {
                long s;
                try {
                    s = in.readLong();
                } catch (java.io.EOFException e) {
                    break;
                }
                byte[] b = new byte[S];
                try {
                    in.readFully(b);
                } catch (java.io.EOFException e) {   // the last record cut off: its write never reached the card
                    break;
                }
                secs.add(Long.valueOf(s));
                data.add(b);
            }
        } finally {
            in.close();
        }
        for (int i = secs.size() - 1; i >= 0; i--) dev.write(secs.get(i).longValue() * S, data.get(i), 0, S);
        dev.sync();
        return secs.size();
    }
}
