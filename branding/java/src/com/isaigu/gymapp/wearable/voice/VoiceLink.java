package com.isaigu.gymapp.wearable.voice;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.bluetooth.BluetoothProfile;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;

import com.isaigu.gymapp.wearable.WearableBleDiagLog;
import com.isaigu.gymapp.wearable.WearableBlePermissions;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/**
 * The XEMS voice module (XIAO nRF52840 Sense, firmware voice/xems_voice — docs/xems-voice.md) over BLE: Nordic UART,
 * one text line each way. One link for the whole app, not for a page: once a module was found its address is kept
 * and the link comes back by itself (autoConnect) whenever the module is on — the trainer never pairs anything.
 * Without a known module it scans only while the voice page asks for it. Every callback runs on the main thread.
 */
public final class VoiceLink {
    public interface Listener {
        void onVoiceState(int state);

        void onVoiceLine(String line);
    }

    public static final int OFF = 0, SEARCHING = 1, CONNECTING = 2, READY = 3;
    public static final String NAME = "XEMS Voice";

    static final UUID SERVICE = UUID.fromString("6e400001-b5a3-f393-e0a9-e50e24dcca9e");
    static final UUID RX = UUID.fromString("6e400002-b5a3-f393-e0a9-e50e24dcca9e");   // we write
    static final UUID TX = UUID.fromString("6e400003-b5a3-f393-e0a9-e50e24dcca9e");   // it notifies
    static final UUID CCCD = UUID.fromString("00002902-0000-1000-8000-00805f9b34fb");
    static final String PREFS = "xems_voice";
    static final long RETRY_MS = 3000;
    static final long OP_TIMEOUT_MS = 1500;

    static final Handler main = new Handler(Looper.getMainLooper());
    static Context app;
    static BluetoothGatt gatt;
    static BluetoothGattCharacteristic wr;
    static int state;
    static boolean busy;
    static int opToken;
    static Scan scan;
    static final List<byte[]> out = new ArrayList<byte[]>();
    static final StringBuilder in = new StringBuilder();
    static final List<Listener> listeners = new ArrayList<Listener>();
    /** What the module said about itself: firmware version and examples kept (−1 = not yet). */
    public static int version = -1, examples = -1;

    private VoiceLink() {}

    static void log(String s) {
        WearableBleDiagLog.log("voice", s);
    }

    static SharedPreferences prefs(Context c) {
        return c.getApplicationContext().getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    /** A module was ever found on this tablet. */
    public static boolean known(Context c) {
        return prefs(c).getString("mac", "").length() > 0;
    }

    public static int state() {
        return state;
    }

    public static void addListener(Listener l) {
        if (!listeners.contains(l)) {
            listeners.add(l);
        }
    }

    public static void removeListener(Listener l) {
        listeners.remove(l);
    }

    /** App start: back to the known module (if any), quietly. */
    public static void resume(Context c) {
        try {
            app = c.getApplicationContext();
            if (known(app) && gatt == null && WearableBlePermissions.hasConnectPermission(app)) {
                connectKnown();
            }
        } catch (Throwable t) {
            log("resume: " + t);
        }
    }

    /** The voice page: connect to the known module, or look for one. */
    public static void find(Context c) {
        app = c.getApplicationContext();
        if (state == READY || state == CONNECTING) {
            return;
        }
        if (known(app)) {
            connectKnown();
        }
        startScan();                                   // a new module (or the known one, faster) — first one wins
    }

    /** "Друг чип": forget the module, look again. */
    public static void forget(Context c) {
        prefs(c).edit().remove("mac").apply();
        closeGatt();
        setState(OFF);
        find(c);
    }

    public static void send(String line) {
        if (state != READY) {
            return;
        }
        byte[] b = (line + "\n").getBytes();
        for (int i = 0; i < b.length; i += 20) {
            int n = Math.min(20, b.length - i);
            byte[] part = new byte[n];
            System.arraycopy(b, i, part, 0, n);
            out.add(part);
        }
        pump();
    }

    // ------------------------------------------------------------------ connect

    static void connectKnown() {
        BluetoothAdapter ad = BluetoothAdapter.getDefaultAdapter();
        if (ad == null || !ad.isEnabled() || gatt != null) {
            return;
        }
        try {
            connect(ad.getRemoteDevice(prefs(app).getString("mac", "")), true);
        } catch (Throwable t) {
            log("known: " + t);
        }
    }

    static void connect(BluetoothDevice d, boolean auto) {
        closeGatt();
        setState(CONNECTING);
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                gatt = d.connectGatt(app, auto, new Gatt(), BluetoothDevice.TRANSPORT_LE);
            } else {
                gatt = d.connectGatt(app, auto, new Gatt());
            }
            log("connect " + d.getAddress() + (auto ? " (auto)" : ""));
        } catch (Throwable t) {
            log("connect: " + t);
            gatt = null;
            setState(OFF);
        }
    }

    static void startScan() {
        if (scan != null) {
            return;
        }
        BluetoothAdapter ad = BluetoothAdapter.getDefaultAdapter();
        if (ad == null || !ad.isEnabled()) {
            return;
        }
        try {
            scan = new Scan(ad);
            ad.startLeScan(scan);
            if (state == OFF) {
                setState(SEARCHING);
            }
            main.postDelayed(new StopScan(), 60000);
        } catch (Throwable t) {
            log("scan: " + t);
            scan = null;
        }
    }

    static void stopScan() {
        Scan s = scan;
        scan = null;
        if (s != null) {
            try {
                s.adapter.stopLeScan(s);
            } catch (Throwable ignored) {
            }
        }
        if (state == SEARCHING) {
            setState(OFF);
        }
    }

    static void onFound(BluetoothDevice d) {
        if (scan == null) {
            return;
        }
        stopScan();
        if (state == READY) {
            return;
        }
        prefs(app).edit().putString("mac", d.getAddress()).apply();
        connect(d, false);
    }

    static void closeGatt() {
        BluetoothGatt g = gatt;
        gatt = null;
        wr = null;
        out.clear();
        busy = false;
        in.setLength(0);
        if (g != null) {
            try {
                g.disconnect();
            } catch (Throwable ignored) {
            }
            try {
                g.close();
            } catch (Throwable ignored) {
            }
        }
    }

    static void setState(int s) {
        if (state == s) {
            return;
        }
        state = s;
        for (Listener l : new ArrayList<Listener>(listeners)) {
            try {
                l.onVoiceState(s);
            } catch (Throwable t) {
                com.isaigu.gymapp.widget.XemsGuard.report("VoiceLink.state", t);
            }
        }
    }

    // ------------------------------------------------------------------ GATT (posted to the main thread)

    static void onConnection(BluetoothGatt g, int status, int newState) {
        if (g != gatt) {
            return;
        }
        if (newState == BluetoothProfile.STATE_CONNECTED) {
            try {
                g.discoverServices();
            } catch (Throwable t) {
                log("discover: " + t);
            }
        } else if (newState == BluetoothProfile.STATE_DISCONNECTED) {
            log("lost " + status);
            closeGatt();
            setState(OFF);
            main.postDelayed(new Retry(), RETRY_MS);   // the module switched off or walked away: wait for it
        }
    }

    static void onServices(BluetoothGatt g) {
        BluetoothGattService s = g.getService(SERVICE);
        BluetoothGattCharacteristic w = s != null ? s.getCharacteristic(RX) : null;
        BluetoothGattCharacteristic n = s != null ? s.getCharacteristic(TX) : null;
        if (w == null || n == null) {
            log("no UART service");
            closeGatt();
            setState(OFF);
            return;
        }
        wr = w;
        try {
            g.setCharacteristicNotification(n, true);
            BluetoothGattDescriptor d = n.getDescriptor(CCCD);
            if (d != null) {
                d.setValue(BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE);
                if (g.writeDescriptor(d)) {
                    busy = true;
                    main.postDelayed(new OpTimeout(++opToken), OP_TIMEOUT_MS);
                    return;
                }
            }
        } catch (Throwable t) {
            log("notify: " + t);
        }
        onReady();
    }

    static void onReady() {
        log("ready");
        setState(READY);
        send("mute 0");                                 // a learning page that died never leaves it deaf
        send("meter 0");
        send("ping");
        send("list");
    }

    static void onWriteDone() {
        busy = false;
        opToken++;
        if (state == CONNECTING && wr != null) {
            onReady();
            return;
        }
        pump();
    }

    static void onBytes(byte[] b) {
        for (byte x : b) {
            char c = (char) (x & 0xFF);
            if (c == '\n' || c == '\r') {
                if (in.length() > 0) {
                    String line = in.toString();
                    in.setLength(0);
                    onLine(line);
                }
            } else if (in.length() < 200) {
                in.append(c);
            }
        }
    }

    static void onLine(String line) {
        if (line.startsWith("HELLO ")) {
            String[] p = line.split(" ");
            version = p.length > 2 ? parse(p[2]) : -1;
            examples = p.length > 3 ? parse(p[3]) : -1;
        } else if (line.startsWith("CMD ")) {
            VoiceRemote.onCommand(line.split(" ")[1]);
        }
        for (Listener l : new ArrayList<Listener>(listeners)) {
            try {
                l.onVoiceLine(line);
            } catch (Throwable t) {
                com.isaigu.gymapp.widget.XemsGuard.report("VoiceLink.line", t);
            }
        }
    }

    /** The advertised name: the device's, or the one in the scan record (type 0x08 / 0x09). */
    static String nameOf(BluetoothDevice d, byte[] rec) {
        String n = null;
        try {
            n = d.getName();
        } catch (Throwable ignored) {
        }
        if (n != null && n.length() > 0) {
            return n;
        }
        for (int i = 0; rec != null && i + 1 < rec.length; ) {
            int len = rec[i] & 0xFF;
            if (len == 0 || i + len >= rec.length) {
                break;
            }
            int type = rec[i + 1] & 0xFF;
            if (type == 0x08 || type == 0x09) {
                return new String(rec, i + 2, len - 1);
            }
            i += len + 1;
        }
        return null;
    }

    static int parse(String s) {
        try {
            return Integer.parseInt(s.trim());
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    static void pump() {
        if (busy || gatt == null || wr == null || state != READY || out.isEmpty()) {
            return;
        }
        byte[] part = out.remove(0);
        boolean started = false;
        try {
            boolean acked = (wr.getProperties() & BluetoothGattCharacteristic.PROPERTY_WRITE) != 0;
            wr.setWriteType(acked ? BluetoothGattCharacteristic.WRITE_TYPE_DEFAULT
                    : BluetoothGattCharacteristic.WRITE_TYPE_NO_RESPONSE);
            wr.setValue(part);
            started = gatt.writeCharacteristic(wr);
        } catch (Throwable t) {
            log("write: " + t);
        }
        if (started) {
            busy = true;
            main.postDelayed(new OpTimeout(++opToken), OP_TIMEOUT_MS);
        } else {
            main.postDelayed(new Pump(), 30);
        }
    }

    // ------------------------------------------------------------------ named callbacks (dx: no anonymous classes)

    static final class Scan implements BluetoothAdapter.LeScanCallback {
        final BluetoothAdapter adapter;

        Scan(BluetoothAdapter adapter) {
            this.adapter = adapter;
        }

        @Override
        public void onLeScan(BluetoothDevice device, int rssi, byte[] rec) {
            try {
                String n = nameOf(device, rec);
                if (n != null && n.startsWith(NAME)) {
                    main.post(new Found(device));
                }
            } catch (Throwable ignored) {
            }
        }
    }

    static final class Found implements Runnable {
        final BluetoothDevice d;

        Found(BluetoothDevice d) {
            this.d = d;
        }

        @Override
        public void run() {
            onFound(d);
        }
    }

    static final class StopScan implements Runnable {
        @Override
        public void run() {
            if (state != READY) {
                stopScan();
            }
        }
    }

    static final class Gatt extends BluetoothGattCallback {
        @Override
        public void onConnectionStateChange(BluetoothGatt g, int status, int newState) {
            main.post(new Event(Event.CONNECTION, g, status, newState, null));
        }

        @Override
        public void onServicesDiscovered(BluetoothGatt g, int status) {
            main.post(new Event(Event.SERVICES, g, status, 0, null));
        }

        @Override
        public void onCharacteristicChanged(BluetoothGatt g, BluetoothGattCharacteristic c) {
            byte[] v = c.getValue();
            main.post(new Event(Event.CHANGED, g, 0, 0, v != null ? v.clone() : null));
        }

        @Override
        public void onCharacteristicWrite(BluetoothGatt g, BluetoothGattCharacteristic c, int status) {
            main.post(new Event(Event.OP_DONE, g, status, 0, null));
        }

        @Override
        public void onDescriptorWrite(BluetoothGatt g, BluetoothGattDescriptor d, int status) {
            main.post(new Event(Event.OP_DONE, g, status, 0, null));
        }
    }

    static final class Event implements Runnable {
        static final int CONNECTION = 1, SERVICES = 2, CHANGED = 3, OP_DONE = 4;
        final int kind;
        final BluetoothGatt g;
        final int a;
        final int b;
        final byte[] data;

        Event(int kind, BluetoothGatt g, int a, int b, byte[] data) {
            this.kind = kind;
            this.g = g;
            this.a = a;
            this.b = b;
            this.data = data;
        }

        @Override
        public void run() {
            try {
                if (kind == CONNECTION) {
                    onConnection(g, a, b);
                } else if (g != gatt) {
                    return;
                } else if (kind == SERVICES) {
                    onServices(g);
                } else if (kind == CHANGED) {
                    if (data != null) {
                        onBytes(data);
                    }
                } else {
                    onWriteDone();
                }
            } catch (Throwable t) {
                com.isaigu.gymapp.widget.XemsGuard.report("VoiceLink.event", t);
            }
        }
    }

    static final class Pump implements Runnable {
        @Override
        public void run() {
            pump();
        }
    }

    static final class OpTimeout implements Runnable {
        final int token;

        OpTimeout(int token) {
            this.token = token;
        }

        @Override
        public void run() {
            if (busy && opToken == token) {
                onWriteDone();
            }
        }
    }

    static final class Retry implements Runnable {
        @Override
        public void run() {
            if (gatt == null && app != null) {
                connectKnown();
            }
        }
    }
}
