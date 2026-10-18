package bg.xems.fleshka;

import android.hardware.usb.UsbConstants;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import android.hardware.usb.UsbManager;

import java.util.Iterator;

/**
 * An SD card in a USB card reader on the phone's OTG port, as raw sectors — no root: the app talks USB Mass Storage
 * (Bulk-Only Transport) and SCSI READ(10) / WRITE(10) itself, the way EtchDroid / libaums do. Android cannot mount the
 * XBody card's ext3 anyway; claimInterface(force) takes the reader from the phone's own driver while the app works.
 */
public final class UsbDisk implements BlockDev {
    static final int TIMEOUT = 8000, CHUNK = 16384, MAX_SECTORS = 128;
    final UsbDeviceConnection c;
    final UsbInterface itf;
    UsbEndpoint in, out;
    int tag = 1;
    int bsz;
    long sectors;
    public String name = "";

    /** The first USB mass-storage device (class 8, SCSI, bulk-only) plugged in, or null. */
    public static UsbDevice find(UsbManager m) {
        for (Iterator<UsbDevice> it = m.getDeviceList().values().iterator(); it.hasNext();) {
            UsbDevice d = it.next();
            if (storage(d) != null) return d;
        }
        return null;
    }

    static UsbInterface storage(UsbDevice d) {
        for (int i = 0; i < d.getInterfaceCount(); i++) {
            UsbInterface f = d.getInterface(i);
            if (f.getInterfaceClass() == UsbConstants.USB_CLASS_MASS_STORAGE && f.getInterfaceSubclass() == 6
                    && f.getInterfaceProtocol() == 0x50) return f;
        }
        return null;
    }

    UsbDisk(UsbDeviceConnection conn, UsbInterface f) {
        c = conn;
        itf = f;
    }

    public static UsbDisk open(UsbManager m, UsbDevice dev) throws Exception {
        UsbInterface f = storage(dev);
        if (f == null) throw new Exception("това не е четец за карти");
        UsbDeviceConnection conn = m.openDevice(dev);
        if (conn == null) throw new Exception("няма разрешение за четеца");
        if (!conn.claimInterface(f, true)) {
            conn.close();
            throw new Exception("четецът е зает");
        }
        UsbDisk d = new UsbDisk(conn, f);
        for (int i = 0; i < f.getEndpointCount(); i++) {
            UsbEndpoint e = f.getEndpoint(i);
            if (e.getType() != UsbConstants.USB_ENDPOINT_XFER_BULK) continue;
            if (e.getDirection() == UsbConstants.USB_DIR_IN) d.in = e;
            else d.out = e;
        }
        if (d.in == null || d.out == null) {
            d.close();
            throw new Exception("четецът няма нужните канали");
        }
        try {
            d.start();
        } catch (Exception e) {
            d.close();
            throw e;
        }
        return d;
    }

    void start() throws Exception {
        byte[] inq = new byte[36];
        scsi(new byte[] {0x12, 0, 0, 0, 36, 0}, inq, 0, 36, true);
        name = (new String(inq, 8, 8, "US-ASCII").trim() + " " + new String(inq, 16, 16, "US-ASCII").trim()).trim();
        // A card reader answers "not ready" until the card has spun up (or while no card is in it).
        boolean ready = false;
        for (int i = 0; i < 20 && !ready; i++) {
            try {
                scsi(new byte[] {0, 0, 0, 0, 0, 0}, null, 0, 0, false);
                ready = true;
            } catch (Exception e) {
                Thread.sleep(250);
            }
        }
        if (!ready) throw new Exception("в четеца няма карта (или не я вижда)");
        byte[] cap = new byte[8];
        scsi(new byte[] {0x25, 0, 0, 0, 0, 0, 0, 0, 0, 0}, cap, 0, 8, true);
        long last = be32(cap, 0);
        bsz = (int) be32(cap, 4);
        if (last == 0xFFFFFFFFL) throw new Exception("картата е над 2 TB");
        if (bsz != 512) throw new Exception("непознат размер на сектора: " + bsz);
        sectors = last + 1;
    }

    static long be32(byte[] b, int o) {
        return (b[o] & 0xffL) << 24 | (b[o + 1] & 0xffL) << 16 | (b[o + 2] & 0xffL) << 8 | (b[o + 3] & 0xffL);
    }

    /** One SCSI command: CBW, data (in or out), CSW. A failed status gets REQUEST SENSE (clears it) and an error. */
    void scsi(byte[] cdb, byte[] data, int off, int len, boolean dirIn) throws Exception {
        byte[] cbw = new byte[31];
        int t = tag++;
        le32(cbw, 0, 0x43425355);
        le32(cbw, 4, t);
        le32(cbw, 8, len);
        cbw[12] = (byte) (dirIn ? 0x80 : 0);
        cbw[13] = 0;
        cbw[14] = (byte) cdb.length;
        System.arraycopy(cdb, 0, cbw, 15, cdb.length);
        if (c.bulkTransfer(out, cbw, 31, TIMEOUT) != 31) { reset(); throw new Exception("четецът не отговаря"); }
        int done = 0;
        while (done < len) {
            int n = Math.min(CHUNK, len - done);
            int r = c.bulkTransfer(dirIn ? in : out, data, off + done, n, TIMEOUT);
            if (r <= 0) break;   // a short read: the CSW says why
            done += r;
            if (dirIn && r < n) break;
        }
        byte[] csw = new byte[13];
        int r = c.bulkTransfer(in, csw, 13, TIMEOUT);
        if (r != 13) {   // a stalled pipe: clear it and try the status once more
            clearHalt(in);
            r = c.bulkTransfer(in, csw, 13, TIMEOUT);
        }
        if (r != 13 || le32get(csw, 0) != 0x53425355 || le32get(csw, 4) != t) { reset(); throw new Exception("четецът се обърка"); }
        int status = csw[12];
        if (status == 1) {
            if (cdb[0] != 0x03) {
                byte[] sense = new byte[18];
                try {
                    scsi(new byte[] {0x03, 0, 0, 0, 18, 0}, sense, 0, 18, true);
                } catch (Exception ignored) {
                }
                throw new Exception("грешка от картата (" + Integer.toHexString(sense[2] & 0x0f) + "/"
                        + Integer.toHexString(sense[12] & 0xff) + ")");
            }
            throw new Exception("грешка от картата");
        }
        if (status != 0) { reset(); throw new Exception("четецът се обърка"); }
        if (done < len && dirIn) throw new Exception("непълно четене");
    }

    void reset() {
        c.controlTransfer(0x21, 0xFF, 0, itf.getId(), null, 0, TIMEOUT);   // Bulk-Only Mass Storage Reset
        clearHalt(in);
        clearHalt(out);
    }

    void clearHalt(UsbEndpoint e) { c.controlTransfer(0x02, 1, 0, e.getAddress(), null, 0, TIMEOUT); }

    static void le32(byte[] b, int o, int v) {
        b[o] = (byte) v; b[o + 1] = (byte) (v >> 8); b[o + 2] = (byte) (v >> 16); b[o + 3] = (byte) (v >> 24);
    }

    static long le32get(byte[] b, int o) {
        return (b[o] & 0xffL) | (b[o + 1] & 0xffL) << 8 | (b[o + 2] & 0xffL) << 16 | (b[o + 3] & 0xffL) << 24;
    }

    void rw(long lba, int count, byte[] b, int o, boolean write) throws Exception {
        byte[] cdb = {(byte) (write ? 0x2A : 0x28), 0, (byte) (lba >> 24), (byte) (lba >> 16), (byte) (lba >> 8), (byte) lba,
                0, (byte) (count >> 8), (byte) count, 0};
        scsi(cdb, b, o, count * 512, !write);
    }

    @Override
    public long size() { return sectors * 512; }

    @Override
    public void read(long off, byte[] b, int o, int n) throws Exception {
        if (off < 0 || off + n > size()) throw new Exception("четене извън картата");
        if (off % 512 == 0 && n % 512 == 0) {
            for (int done = 0; done < n;) {
                int k = Math.min(MAX_SECTORS, (n - done) / 512);
                rw(off / 512 + done / 512, k, b, o + done, false);
                done += k * 512;
            }
            return;
        }
        long first = off / 512, last = (off + n - 1) / 512;
        byte[] t = new byte[(int) (last - first + 1) * 512];
        read(first * 512, t, 0, t.length);
        System.arraycopy(t, (int) (off - first * 512), b, o, n);
    }

    @Override
    public void write(long off, byte[] b, int o, int n) throws Exception {
        if (off < 0 || off + n > size()) throw new Exception("запис извън картата");
        if (off % 512 == 0 && n % 512 == 0) {
            for (int done = 0; done < n;) {
                int k = Math.min(MAX_SECTORS, (n - done) / 512);
                rw(off / 512 + done / 512, k, b, o + done, true);
                done += k * 512;
            }
            return;
        }
        long first = off / 512, last = (off + n - 1) / 512;   // read-modify-write the partial sectors
        byte[] t = new byte[(int) (last - first + 1) * 512];
        read(first * 512, t, 0, t.length);
        System.arraycopy(b, o, t, (int) (off - first * 512), n);
        write(first * 512, t, 0, t.length);
    }

    @Override
    public void sync() {
        try {
            scsi(new byte[] {0x35, 0, 0, 0, 0, 0, 0, 0, 0, 0}, null, 0, 0, false);   // SYNCHRONIZE CACHE(10)
        } catch (Exception ignored) {   // readers without a write cache refuse it
        }
    }

    public void close() {
        try {
            c.releaseInterface(itf);
        } catch (Exception ignored) {
        }
        c.close();
    }
}
