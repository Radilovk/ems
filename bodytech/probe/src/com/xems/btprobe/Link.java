package com.xems.btprobe;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.bluetooth.BluetoothProfile;
import android.content.Context;
import android.os.Build;
import android.os.SystemClock;

import java.util.List;
import java.util.UUID;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

/**
 * One GATT link to the suit. Everything that talks to the suit runs as a job on one worker thread,
 * one write in flight at a time (the vendor waits for each write's ACK the same way, 1 s timeout).
 */
public final class Link {
    public static final UUID SERVICE = UUID.fromString("0000fe50-0000-1000-8000-00805f9b34fb");
    public static final UUID CHAR = UUID.fromString("0000fe51-0000-1000-8000-00805f9b34fb");
    static final UUID CCCD = UUID.fromString("00002902-0000-1000-8000-00805f9b34fb");

    public interface Listener {
        void onLog(String line);
        void onState(int state, String text);
        void onBattery(int raw);
    }

    public static final int ST_IDLE = 0, ST_CONNECTING = 1, ST_READY = 2;

    final Context ctx;
    final Listener ui;
    final LinkedBlockingQueue<Runnable> jobs = new LinkedBlockingQueue<Runnable>();
    final Semaphore writeAck = new Semaphore(0);
    final Semaphore setupAck = new Semaphore(0);
    final Object batLock = new Object();
    final Object rxLock = new Object();
    final Semaphore readAck = new Semaphore(0);
    volatile byte[] lastRx, lastRead;
    volatile long lastRxAt;
    volatile BluetoothGatt gatt;
    volatile BluetoothGattCharacteristic ch;
    volatile int state = ST_IDLE;
    volatile int lastWriteStatus;
    volatile long lastWriteMs;
    volatile int lastBatteryRaw = -1;
    volatile long lastBatteryAt;
    final long t0 = SystemClock.elapsedRealtime();
    Thread worker;
    /** The suit's watchdog is 6 s (SYNC 6); like EMSFIT's WorkQueue, a heartbeat is slipped in before it runs out. */
    volatile boolean heartbeatEnabled = true;
    volatile long lastSyncAt;
    boolean inKeepAlive;

    public Link(Context ctx, Listener ui) {
        this.ctx = ctx.getApplicationContext();
        this.ui = ui;
        worker = new Thread(new WorkerLoop(), "suit-link");
        worker.setDaemon(true);
        worker.start();
    }

    String ts() {
        long ms = SystemClock.elapsedRealtime() - t0;
        return String.format("%6d.%03d", ms / 1000, ms % 1000);
    }

    void log(String s) { ui.onLog(ts() + "  " + s); }

    public boolean ready() { return state == ST_READY && gatt != null && ch != null; }

    // ---------------- connection ----------------

    public void connect(BluetoothDevice dev) {
        disconnect();
        state = ST_CONNECTING;
        ui.onState(state, "Свързване с " + dev.getAddress() + "…");
        log("CONNECT " + dev.getAddress() + " name=" + dev.getName());
        if (Build.VERSION.SDK_INT >= 23) {
            gatt = dev.connectGatt(ctx, false, new Cb(), BluetoothDevice.TRANSPORT_LE);
        } else {
            gatt = dev.connectGatt(ctx, false, new Cb());
        }
    }

    public void disconnect() {
        jobs.clear();
        BluetoothGatt g = gatt;
        gatt = null;
        ch = null;
        if (g != null) {
            log("DISCONNECT (локално)");
            try { g.disconnect(); } catch (Exception ignored) { }
            try { g.close(); } catch (Exception ignored) { }
        }
        state = ST_IDLE;
        writeAck.release();
    }

    public void setFast(boolean fast) {
        BluetoothGatt g = gatt;
        if (g != null && Build.VERSION.SDK_INT >= 21) {
            boolean ok = g.requestConnectionPriority(fast ? BluetoothGatt.CONNECTION_PRIORITY_HIGH
                    : BluetoothGatt.CONNECTION_PRIORITY_BALANCED);
            log("CONNECTION PRIORITY " + (fast ? "HIGH" : "BALANCED") + " → " + ok);
        }
    }

    final class Cb extends BluetoothGattCallback {
        @Override
        public void onConnectionStateChange(BluetoothGatt g, int status, int newState) {
            log("GATT state status=" + status + " newState=" + newState);
            if (newState == BluetoothProfile.STATE_CONNECTED) {
                ui.onState(ST_CONNECTING, "Свързан, търся услугата FE50…");
                SystemClock.sleep(300);
                g.discoverServices();
            } else if (newState == BluetoothProfile.STATE_DISCONNECTED) {
                if (g == gatt) {
                    gatt = null;
                    ch = null;
                    jobs.clear();
                    try { g.close(); } catch (Exception ignored) { }
                }
                state = ST_IDLE;
                writeAck.release();
                ui.onState(ST_IDLE, "Връзката прекъсна (status " + status + ")");
            }
        }

        @Override
        public void onServicesDiscovered(BluetoothGatt g, int status) {
            log("SERVICES status=" + status);
            for (BluetoothGattService s : g.getServices()) {
                log("  service " + s.getUuid());
                for (BluetoothGattCharacteristic c : s.getCharacteristics()) {
                    log("    char " + c.getUuid() + " props=0x" + Integer.toHexString(c.getProperties()));
                }
            }
            BluetoothGattService s = g.getService(SERVICE);
            BluetoothGattCharacteristic c = s == null ? null : s.getCharacteristic(CHAR);
            if (c == null) {
                ui.onState(ST_IDLE, "Няма услуга FE50/FE51 — това не е bodytech костюм");
                return;
            }
            ch = c;
            g.setCharacteristicNotification(c, true);
            BluetoothGattDescriptor d = c.getDescriptor(CCCD);
            if (d != null) {
                boolean indicate = (c.getProperties() & BluetoothGattCharacteristic.PROPERTY_NOTIFY) == 0
                        && (c.getProperties() & BluetoothGattCharacteristic.PROPERTY_INDICATE) != 0;
                d.setValue(indicate ? BluetoothGattDescriptor.ENABLE_INDICATION_VALUE
                        : BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE);
                g.writeDescriptor(d);
            } else {
                log("  няма CCCD — без notify");
                markReady();
            }
        }

        @Override
        public void onDescriptorWrite(BluetoothGatt g, BluetoothGattDescriptor d, int status) {
            log("NOTIFY ON status=" + status);
            markReady();
        }

        @Override
        public void onCharacteristicRead(BluetoothGatt g, BluetoothGattCharacteristic c, int status) {
            lastRead = c.getValue();
            log("READ status=" + status + " " + Proto.hex(lastRead) + "   " + Proto.decode(lastRead));
            readAck.release();
        }

        @Override
        public void onCharacteristicWrite(BluetoothGatt g, BluetoothGattCharacteristic c, int status) {
            lastWriteStatus = status;
            writeAck.release();
        }

        @Override
        public void onCharacteristicChanged(BluetoothGatt g, BluetoothGattCharacteristic c) {
            byte[] v = c.getValue();
            log("RX " + Proto.hex(v) + "   " + Proto.decode(v));
            synchronized (rxLock) {
                lastRx = v == null ? null : v.clone();
                lastRxAt = SystemClock.elapsedRealtime();
                rxLock.notifyAll();
            }
            int raw = Proto.batteryRaw(v);
            if (raw > 0) {
                synchronized (batLock) {
                    lastBatteryRaw = raw;
                    lastBatteryAt = SystemClock.elapsedRealtime();
                    batLock.notifyAll();
                }
                ui.onBattery(raw);
            }
        }
    }

    void markReady() {
        state = ST_READY;
        ui.onState(ST_READY, "Готов");
        setupAck.release();
    }

    // ---------------- jobs (worker thread) ----------------

    public void post(Runnable job) { jobs.offer(job); }

    /** Drops everything queued (used by STOP so the stop goes out first). */
    public void clearQueue() { jobs.clear(); }

    final class WorkerLoop implements Runnable {
        @Override
        public void run() {
            while (true) {
                try {
                    Runnable r = jobs.take();
                    r.run();
                } catch (InterruptedException e) {
                    return;
                } catch (Throwable t) {
                    log("ГРЕШКА в задача: " + t);
                }
            }
        }
    }

    /** Worker thread only. Writes one frame and waits for its ACK (≤ 1 s). Returns the ACK time in ms or −1. */
    public long write(byte[] frame, String why) {
        BluetoothGatt g = gatt;
        BluetoothGattCharacteristic c = ch;
        if (g == null || c == null || state != ST_READY) {
            log("TX пропуснат (няма връзка): " + Proto.decode(frame));
            return -1;
        }
        boolean isSync = isSync(frame);
        if (!isSync) keepAlive(4000);
        writeAck.drainPermits();
        c.setValue(frame);
        c.setWriteType(BluetoothGattCharacteristic.WRITE_TYPE_DEFAULT);
        long t = SystemClock.elapsedRealtime();
        boolean started = g.writeCharacteristic(c);
        if (!started) {
            SystemClock.sleep(20);
            started = g.writeCharacteristic(c);
        }
        boolean acked = false;
        if (started) {
            try { acked = writeAck.tryAcquire(1000, TimeUnit.MILLISECONDS); } catch (InterruptedException ignored) { }
        }
        long dt = SystemClock.elapsedRealtime() - t;
        lastWriteMs = dt;
        String tail = !started ? "  НЕ ТРЪГНА" : !acked ? "  без ACK за 1 s" :
                (lastWriteStatus != 0 ? "  status=" + lastWriteStatus : "");
        log("TX " + Proto.hex(frame) + "   " + Proto.decode(frame) + "   [" + dt + " ms]"
                + (why == null ? "" : "  · " + why) + tail);
        if (isSync && started && acked) lastSyncAt = SystemClock.elapsedRealtime();
        return started && acked ? dt : -1;
    }

    static boolean isSync(byte[] f) {
        return f.length == 8 && f[1] == 0 && f[2] == Proto.G_SYNC;
    }

    /** Worker thread only. Sends a heartbeat when the last one is older than maxAgeMs. */
    public void keepAlive(long maxAgeMs) {
        if (!heartbeatEnabled || inKeepAlive || !ready()) return;
        if (SystemClock.elapsedRealtime() - lastSyncAt < maxAgeMs) return;
        inKeepAlive = true;
        try {
            write(Proto.sync(6), "heartbeat");
        } finally {
            inKeepAlive = false;
        }
    }

    /** Worker thread only. Asks for the battery and waits for the reply. Returns raw or −1; latencyOut[0] = ms. */
    public int readBattery(long timeoutMs, long[] latencyOut) {
        long since = SystemClock.elapsedRealtime();
        synchronized (batLock) { lastBatteryAt = 0; }
        if (write(Proto.batterySync(), "батерия?") < 0) return -1;
        long deadline = since + timeoutMs;
        synchronized (batLock) {
            while (lastBatteryAt == 0) {
                long left = deadline - SystemClock.elapsedRealtime();
                if (left <= 0) break;
                try { batLock.wait(left); } catch (InterruptedException e) { break; }
            }
            if (lastBatteryAt == 0) {
                log("  батерия: няма отговор за " + timeoutMs + " ms");
                return -1;
            }
            if (latencyOut != null) latencyOut[0] = lastBatteryAt - since;
            return lastBatteryRaw;
        }
    }

    /** Worker thread only. Writes a frame and returns the first notification after it (≤ timeoutMs), or null. */
    public byte[] query(byte[] frame, String why, long timeoutMs) {
        long since = SystemClock.elapsedRealtime();
        if (write(frame, why) < 0) return null;
        long deadline = since + timeoutMs;
        synchronized (rxLock) {
            while (lastRxAt < since) {
                long left = deadline - SystemClock.elapsedRealtime();
                if (left <= 0) return null;
                try { rxLock.wait(left); } catch (InterruptedException e) { return null; }
            }
            return lastRx;
        }
    }

    /** Worker thread only. GATT read of FE51. */
    public byte[] readChar() {
        BluetoothGatt g = gatt;
        BluetoothGattCharacteristic c = ch;
        if (g == null || c == null) return null;
        readAck.drainPermits();
        lastRead = null;
        if (!g.readCharacteristic(c)) { log("READ не тръгна"); return null; }
        try { readAck.tryAcquire(1000, TimeUnit.MILLISECONDS); } catch (InterruptedException ignored) { }
        return lastRead;
    }

    public static boolean looksLikeSuit(String name, List<?> uuids) {
        if (uuids != null) {
            for (Object u : uuids) {
                if (u != null && u.toString().toLowerCase().contains("0000fe50")) return true;
            }
        }
        return name != null && (name.contains("TZLJ") || name.contains("EMS") || name.contains("ADT"));
    }
}
