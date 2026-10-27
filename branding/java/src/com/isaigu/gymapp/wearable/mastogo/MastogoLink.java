package com.isaigu.gymapp.wearable.mastogo;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.bluetooth.BluetoothProfile;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;

import com.isaigu.gymapp.wearable.WearableBleDiagLog;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/**
 * One MASTOGO H-024B over BLE for as long as its page is open: service FFF0, notify on FFF4, write on FFF5 (the
 * vendor app's choice, docs/xems-mastogo.md). Bytes go to {@link MastogoShell}; its lines go out in 20-byte writes.
 * A dropped link is tried again by itself until the page closes. Every callback runs on the main thread; nothing of
 * the suit's BLE is touched.
 */
public final class MastogoLink implements MastogoShell.Io {
    public interface Listener {
        void onLinkState(MastogoLink link, int state);
    }

    public static final int CONNECTING = 1, READY = 2, LOST = 3;

    public static final UUID SERVICE = UUID.fromString("0000fff0-0000-1000-8000-00805f9b34fb");
    public static final UUID WRITE = UUID.fromString("0000fff5-0000-1000-8000-00805f9b34fb");
    public static final UUID NOTIFY = UUID.fromString("0000fff4-0000-1000-8000-00805f9b34fb");
    static final UUID CCCD = UUID.fromString("00002902-0000-1000-8000-00805f9b34fb");
    static final int MTU = 20;
    static final long GAP_MS = 15;
    static final long OP_TIMEOUT_MS = 1500;
    static final long RETRY_MS = 2500;

    final Context app;
    final Listener listener;
    final Handler main = new Handler(Looper.getMainLooper());
    public final BluetoothDevice device;
    public final String mac;
    public final String name;
    public final MastogoShell shell;

    BluetoothGatt gatt;
    BluetoothGattCharacteristic wr;
    BluetoothGattCharacteristic nt;
    final List<byte[]> out = new ArrayList<byte[]>();
    boolean busy;
    int opToken;
    boolean closed;
    public int state;

    public MastogoLink(Context c, BluetoothDevice d, String name, MastogoShell.Events ev, Listener l) {
        this.app = c.getApplicationContext();
        this.device = d;
        this.mac = d.getAddress();
        this.name = name != null ? name : mac;
        this.listener = l;
        this.shell = new MastogoShell(this, ev);
    }

    static void log(String s) {
        WearableBleDiagLog.log("mastogo", s);
    }

    public void connect() {
        if (closed) {
            return;
        }
        closeGatt();
        setState(CONNECTING);
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                gatt = device.connectGatt(app, false, new Gatt(this), BluetoothDevice.TRANSPORT_LE);
            } else {
                gatt = device.connectGatt(app, false, new Gatt(this));
            }
        } catch (Throwable t) {
            log("connect " + mac + ": " + t);
            gatt = null;
            main.postDelayed(new Retry(this), RETRY_MS);
        }
    }

    public void close() {
        closed = true;
        shell.close();
        main.removeCallbacksAndMessages(null);
        closeGatt();
    }

    void closeGatt() {
        BluetoothGatt g = gatt;
        gatt = null;
        wr = null;
        nt = null;
        out.clear();
        busy = false;
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

    void setState(int s) {
        if (state != s) {
            state = s;
            listener.onLinkState(this, s);
        }
    }

    // ------------------------------------------------------------------ GATT (posted to the main thread)

    void onConnection(BluetoothGatt g, int status, int newState) {
        if (g != gatt) {
            return;
        }
        if (newState == BluetoothProfile.STATE_CONNECTED) {
            log("connected " + mac);
            try {
                g.discoverServices();
            } catch (Throwable t) {
                log("discover: " + t);
            }
        } else if (newState == BluetoothProfile.STATE_DISCONNECTED) {
            log("disconnected " + mac + " " + status);
            closeGatt();
            shell.setStopped();
            setState(LOST);
            if (!closed) {
                main.postDelayed(new Retry(this), RETRY_MS);
            }
        }
    }

    void onServices(BluetoothGatt g) {
        if (g != gatt) {
            return;
        }
        BluetoothGattService s = g.getService(SERVICE);
        BluetoothGattCharacteristic w = s != null ? s.getCharacteristic(WRITE) : null;
        BluetoothGattCharacteristic n = s != null ? s.getCharacteristic(NOTIFY) : null;
        if (w == null || n == null) {
            log("no FFF0/FFF5/FFF4 on " + mac);
            closeGatt();
            setState(LOST);
            return;
        }
        wr = w;
        nt = n;
        log("FFF5 props 0x" + Integer.toHexString(w.getProperties()) + " FFF4 props 0x"
                + Integer.toHexString(n.getProperties()));
        try {
            g.setCharacteristicNotification(n, true);
            BluetoothGattDescriptor d = n.getDescriptor(CCCD);
            if (d != null) {
                d.setValue(BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE);
                if (g.writeDescriptor(d)) {
                    busy = true;
                    main.postDelayed(new OpTimeout(this, ++opToken), OP_TIMEOUT_MS);
                    return;
                }
            }
        } catch (Throwable t) {
            log("notify: " + t);
        }
        onReady();
    }

    void onReady() {
        setState(READY);
        shell.hello();
    }

    void onWriteDone() {
        boolean wasCccd = state != READY;
        busy = false;
        opToken++;
        if (wasCccd && gatt != null && wr != null && state == CONNECTING) {
            onReady();
            return;
        }
        main.postDelayed(new Pump(this), GAP_MS);
    }

    // ------------------------------------------------------------------ MastogoShell.Io

    @Override
    public void send(byte[] data) {
        for (int i = 0; i < data.length; i += MTU) {
            int n = Math.min(MTU, data.length - i);
            byte[] part = new byte[n];
            System.arraycopy(data, i, part, 0, n);
            out.add(part);
        }
        pump();
    }

    @Override
    public void later(Runnable r, long delayMs) {
        main.postDelayed(r, delayMs);
    }

    @Override
    public long now() {
        return SystemClock.uptimeMillis();
    }

    void pump() {
        if (busy || gatt == null || wr == null || state != READY) {
            return;
        }
        while (!out.isEmpty()) {
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
                main.postDelayed(new OpTimeout(this, ++opToken), OP_TIMEOUT_MS);
                return;
            }
            log("write refused, " + out.size() + " left");
        }
    }

    // ------------------------------------------------------------------ named callbacks (dx: no anonymous classes)

    static final class Gatt extends BluetoothGattCallback {
        final MastogoLink link;

        Gatt(MastogoLink link) {
            this.link = link;
        }

        @Override
        public void onConnectionStateChange(BluetoothGatt g, int status, int newState) {
            link.main.post(new Event(link, Event.CONNECTION, g, status, newState, null));
        }

        @Override
        public void onServicesDiscovered(BluetoothGatt g, int status) {
            link.main.post(new Event(link, Event.SERVICES, g, status, 0, null));
        }

        @Override
        public void onCharacteristicChanged(BluetoothGatt g, BluetoothGattCharacteristic c) {
            byte[] v = c.getValue();
            link.main.post(new Event(link, Event.CHANGED, g, 0, 0, v != null ? v.clone() : null));
        }

        @Override
        public void onCharacteristicWrite(BluetoothGatt g, BluetoothGattCharacteristic c, int status) {
            link.main.post(new Event(link, Event.OP_DONE, g, status, 0, null));
        }

        @Override
        public void onDescriptorWrite(BluetoothGatt g, BluetoothGattDescriptor d, int status) {
            link.main.post(new Event(link, Event.OP_DONE, g, status, 0, null));
        }
    }

    static final class Event implements Runnable {
        static final int CONNECTION = 1, SERVICES = 2, CHANGED = 3, OP_DONE = 4;
        final MastogoLink link;
        final int kind;
        final BluetoothGatt g;
        final int a;
        final int b;
        final byte[] data;

        Event(MastogoLink link, int kind, BluetoothGatt g, int a, int b, byte[] data) {
            this.link = link;
            this.kind = kind;
            this.g = g;
            this.a = a;
            this.b = b;
            this.data = data;
        }

        @Override
        public void run() {
            try {
                if (link.closed) {
                    return;
                }
                if (kind == CONNECTION) {
                    link.onConnection(g, a, b);
                } else if (g != link.gatt) {
                    return;
                } else if (kind == SERVICES) {
                    link.onServices(g);
                } else if (kind == CHANGED) {
                    link.shell.onBytes(data);
                } else {
                    link.onWriteDone();
                }
            } catch (Throwable t) {
                com.isaigu.gymapp.widget.XemsGuard.report("MastogoLink.event", t);
            }
        }
    }

    static final class Pump implements Runnable {
        final MastogoLink link;

        Pump(MastogoLink link) {
            this.link = link;
        }

        @Override
        public void run() {
            link.pump();
        }
    }

    static final class OpTimeout implements Runnable {
        final MastogoLink link;
        final int token;

        OpTimeout(MastogoLink link, int token) {
            this.link = link;
            this.token = token;
        }

        @Override
        public void run() {
            if (link.busy && link.opToken == token) {
                log("op timeout " + link.mac);
                link.onWriteDone();
            }
        }
    }

    static final class Retry implements Runnable {
        final MastogoLink link;

        Retry(MastogoLink link) {
            this.link = link;
        }

        @Override
        public void run() {
            if (!link.closed && link.gatt == null) {
                link.connect();
            }
        }
    }
}
