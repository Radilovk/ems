package com.isaigu.gymapp.wearable.voice;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.usb.UsbConstants;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import android.hardware.usb.UsbManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;

import com.isaigu.gymapp.wearable.WearableBleDiagLog;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;

/**
 * The voice module's firmware from XEMS over a USB cable (owner, 2026-10-28: "programming through the interface,
 * nothing else"): plug the XIAO into the tablet, one tap, Android's "allow" — done. The firmware rides in the APK
 * (assets/xems/voice/, scripts/apply-voice-firmware.py). A running module is sent to its bootloader with the
 * Arduino "1200 bps touch" (its TinyUSB core does that on DTR drop at 1200 bps); a module whose firmware cannot is
 * asked for a double tap on RST. Then {@link VoiceDfu} over the bootloader's USB serial. Main thread except the
 * transfer itself (a named worker thread).
 */
public final class VoiceUsb {
    public interface Listener {
        void onFlash(int stage, int percent);
    }

    public static final int NO_CABLE = 0, ASK = 1, RESET = 2, PRESS_RST = 3, WRITING = 4, DONE = 5, FAILED = 6;
    /** Seeed (XIAO) and Adafruit; the bootloader's product id is the app's with the top bit cleared. */
    static final int[] VIDS = {0x2886, 0x239A};
    static final String ACTION = "com.isaigu.gymapp.XEMS_VOICE_USB";
    static final String ASSET = "xems/voice/";
    /** The firmware in this APK (= VOICE_VER of voice/xems_voice); a module saying less in HELLO gets the update. */
    public static final int FW = 6;

    static final Handler main = new Handler(Looper.getMainLooper());
    static Context app;
    static Listener listener;
    static UsbManager um;
    static Receiver receiver;
    static boolean busy;
    static long waitUntil;
    static int stage = -1;

    private VoiceUsb() {}

    static void log(String s) {
        WearableBleDiagLog.log("voice-usb", s);
    }

    public static boolean busy() {
        return busy;
    }

    /** Start (or retry) loading the firmware into the module on the cable. */
    public static void start(Context c, Listener l) {
        app = c.getApplicationContext();
        listener = l;
        if (busy) {
            return;
        }
        um = (UsbManager) app.getSystemService(Context.USB_SERVICE);
        if (receiver == null) {
            receiver = new Receiver();
            app.registerReceiver(receiver, new IntentFilter(ACTION));
        }
        busy = true;
        waitUntil = 0;
        stage = -1;
        step();
    }

    public static void cancel() {
        busy = false;
        main.removeCallbacksAndMessages(null);
    }

    static void tell(int s, int pct) {
        stage = s;
        if (s == DONE || s == FAILED || s == NO_CABLE) {
            busy = false;
        }
        if (listener != null) {
            try {
                listener.onFlash(s, pct);
            } catch (Throwable t) {
                com.isaigu.gymapp.widget.XemsGuard.report("VoiceUsb.tell", t);
            }
        }
    }

    static UsbDevice find() {
        if (um == null) {
            return null;
        }
        for (UsbDevice d : um.getDeviceList().values()) {
            for (int v : VIDS) {
                if (d.getVendorId() == v && cdc(d) != null) {
                    return d;
                }
            }
        }
        return null;
    }

    static boolean bootloader(UsbDevice d) {
        return (d.getProductId() & 0x8000) == 0;
    }

    /** One pass: what is on the cable, and the next thing to do with it. */
    static void step() {
        if (!busy) {
            return;
        }
        UsbDevice d = find();
        long now = System.currentTimeMillis();
        if (d == null) {
            if (waitUntil > now) {                     // re-enumerating, or waiting for the double tap
                main.postDelayed(new Step(), 300);
            } else {
                tell(NO_CABLE, 0);
            }
            return;
        }
        if (!um.hasPermission(d)) {
            tell(ASK, 0);
            int flags = Build.VERSION.SDK_INT >= 31 ? 0x02000000 : 0;   // FLAG_MUTABLE: the system adds extras
            Intent i = new Intent(ACTION);
            i.setPackage(app.getPackageName());
            um.requestPermission(d, PendingIntent.getBroadcast(app, 0, i, flags));
            return;                                     // Receiver → step()
        }
        if (bootloader(d)) {
            tell(WRITING, 0);
            new Thread(new Flash(d), "xems-voice-dfu").start();
            return;
        }
        if (stage == RESET || stage == PRESS_RST) {     // still the app: wait for the bootloader
            if (waitUntil < now) {
                tell(FAILED, 0);
                return;
            }
            if (stage == RESET && waitUntil - now < 6000) {
                tell(PRESS_RST, 0);                     // the touch did nothing: its firmware cannot — ask for RST × 2
                waitUntil = now + 60000;
            }
            main.postDelayed(new Step(), 300);
            return;
        }
        tell(RESET, 0);
        touch1200(d);
        waitUntil = now + 9000;
        main.postDelayed(new Step(), 800);
    }

    // ------------------------------------------------------------------ USB serial (CDC ACM)

    /** [control interface, data interface] of the first CDC function, or null. */
    static UsbInterface[] cdc(UsbDevice d) {
        UsbInterface ctl = null, data = null;
        for (int i = 0; i < d.getInterfaceCount(); i++) {
            UsbInterface f = d.getInterface(i);
            if (f.getInterfaceClass() == UsbConstants.USB_CLASS_COMM && ctl == null) {
                ctl = f;
            } else if (f.getInterfaceClass() == UsbConstants.USB_CLASS_CDC_DATA && data == null) {
                data = f;
            }
        }
        return data != null ? new UsbInterface[] {ctl, data} : null;
    }

    static void lineCoding(UsbDeviceConnection c, int iface, int baud) {
        byte[] b = {(byte) baud, (byte) (baud >> 8), (byte) (baud >> 16), (byte) (baud >> 24), 0, 0, 8};
        c.controlTransfer(0x21, 0x20, 0, iface, b, b.length, 500);
    }

    static void lines(UsbDeviceConnection c, int iface, boolean dtr) {
        c.controlTransfer(0x21, 0x22, dtr ? 3 : 0, iface, null, 0, 500);
    }

    static void touch1200(UsbDevice d) {
        UsbDeviceConnection c = null;
        try {
            UsbInterface[] f = cdc(d);
            c = um.openDevice(d);
            int iface = f[0] != null ? f[0].getId() : 0;
            if (f[0] != null) {
                c.claimInterface(f[0], true);
            }
            lineCoding(c, iface, 1200);
            lines(c, iface, true);
            Thread.sleep(100);
            lines(c, iface, false);                     // DTR drops at 1200 bps → the bootloader
            log("touch 1200 sent");
        } catch (Throwable t) {
            log("touch: " + t);
        } finally {
            if (c != null) {
                try {
                    c.close();
                } catch (Throwable ignored) {
                }
            }
        }
    }

    static byte[] asset(String name) throws Exception {
        InputStream in = app.getAssets().open(ASSET + name);
        try {
            ByteArrayOutputStream o = new ByteArrayOutputStream();
            byte[] b = new byte[8192];
            int n;
            while ((n = in.read(b)) > 0) {
                o.write(b, 0, n);
            }
            return o.toByteArray();
        } finally {
            in.close();
        }
    }

    /** The bootloader's serial port as {@link VoiceDfu.Io}. */
    static final class Port implements VoiceDfu.Io {
        final UsbDeviceConnection c;
        final UsbEndpoint in, out;

        Port(UsbDeviceConnection c, UsbEndpoint in, UsbEndpoint out) {
            this.c = c;
            this.in = in;
            this.out = out;
        }

        @Override
        public void write(byte[] b) throws Exception {
            int off = 0;
            while (off < b.length) {
                int n = Math.min(4096, b.length - off);
                byte[] part = new byte[n];
                System.arraycopy(b, off, part, 0, n);
                int w = c.bulkTransfer(out, part, n, 2000);
                if (w <= 0) {
                    throw new Exception("usb write");
                }
                off += w;
            }
        }

        @Override
        public int read(byte[] b, int timeoutMs) {
            int n = c.bulkTransfer(in, b, b.length, timeoutMs);
            return Math.max(0, n);
        }

        @Override
        public void sleep(long ms) throws Exception {
            Thread.sleep(ms);
        }
    }

    // ------------------------------------------------------------------ named classes (dx: no anonymous classes)

    static final class Flash implements Runnable, VoiceDfu.Progress {
        final UsbDevice d;
        int last = -1;

        Flash(UsbDevice d) {
            this.d = d;
        }

        @Override
        public void run() {
            UsbDeviceConnection c = null;
            boolean ok = false;
            try {
                byte[] dat = asset("app.dat"), bin = asset("app.bin");
                UsbInterface[] f = cdc(d);
                c = um.openDevice(d);
                if (f[0] != null) {
                    c.claimInterface(f[0], true);
                }
                c.claimInterface(f[1], true);
                UsbEndpoint in = null, out = null;
                for (int i = 0; i < f[1].getEndpointCount(); i++) {
                    UsbEndpoint e = f[1].getEndpoint(i);
                    if (e.getType() == UsbConstants.USB_ENDPOINT_XFER_BULK) {
                        if (e.getDirection() == UsbConstants.USB_DIR_IN) {
                            in = e;
                        } else {
                            out = e;
                        }
                    }
                }
                int iface = f[0] != null ? f[0].getId() : f[1].getId();
                lineCoding(c, iface, 115200);
                lines(c, iface, true);
                Thread.sleep(100);
                byte[] junk = new byte[64];
                while (c.bulkTransfer(in, junk, junk.length, 50) > 0) {
                    // whatever the bootloader said before: not an ack
                }
                new VoiceDfu(new Port(c, in, out)).run(dat, bin, this);
                ok = true;
                log("firmware written, " + bin.length + " B");
            } catch (Throwable t) {
                log("flash: " + t);
            } finally {
                if (c != null) {
                    try {
                        c.close();
                    } catch (Throwable ignored) {
                    }
                }
            }
            main.post(new Told(ok ? DONE : FAILED, 100));
        }

        @Override
        public void onProgress(int percent) {
            if (percent != last) {
                last = percent;
                main.post(new Told(WRITING, percent));
            }
        }
    }

    static final class Told implements Runnable {
        final int s, pct;

        Told(int s, int pct) {
            this.s = s;
            this.pct = pct;
        }

        @Override
        public void run() {
            tell(s, pct);
        }
    }

    static final class Step implements Runnable {
        @Override
        public void run() {
            try {
                step();
            } catch (Throwable t) {
                log("step: " + t);
                tell(FAILED, 0);
            }
        }
    }

    static final class Receiver extends BroadcastReceiver {
        @Override
        public void onReceive(Context c, Intent i) {
            if (!ACTION.equals(i.getAction()) || !busy) {
                return;
            }
            if (i.getBooleanExtra(UsbManager.EXTRA_PERMISSION_GRANTED, false)) {
                main.post(new Step());
            } else {
                tell(FAILED, 0);
            }
        }
    }
}
