package bg.xems.motion;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.bluetooth.BluetoothManager;
import android.bluetooth.le.BluetoothLeScanner;
import android.bluetooth.le.ScanCallback;
import android.bluetooth.le.ScanResult;
import android.bluetooth.le.ScanSettings;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;

import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/**
 * The five sensors over Bluetooth LE, no choosing (owner: "maximally easy"): every "XEMS Motion …" in range is
 * connected by itself, a dropped one is found again. Each 20-byte frame goes to the page with this phone's receive time
 * (ms), batched every 20 ms so the page gets ~50 calls a second, not 250. Text lines (INFO, BAT, OK …) go one by one.
 * Protocol: motion/xems_motion/xems_motion.ino.
 */
final class Ble {
    interface Sink {
        void onFrames(String batch);

        void onLine(String id, String line);

        void onState(String id, String state);

        void onScan(int devices, int sensors, boolean scanning);
    }

    static final UUID DATA_SVC = UUID.fromString("6e400101-b5a3-f393-e0a9-e50e24dcca9e");
    static final UUID DATA_CHR = UUID.fromString("6e400102-b5a3-f393-e0a9-e50e24dcca9e");
    static final UUID NUS_SVC = UUID.fromString("6e400001-b5a3-f393-e0a9-e50e24dcca9e");
    static final UUID NUS_RX = UUID.fromString("6e400002-b5a3-f393-e0a9-e50e24dcca9e");
    static final UUID NUS_TX = UUID.fromString("6e400003-b5a3-f393-e0a9-e50e24dcca9e");
    static final UUID CCCD = UUID.fromString("00002902-0000-1000-8000-00805f9b34fb");
    static final String PREFIX = "XEMS Motion";

    final Context ctx;
    final Sink sink;
    final Handler main = new Handler(Looper.getMainLooper());
    final Map<String, Conn> conns = new HashMap<String, Conn>();
    final StringBuilder batch = new StringBuilder();
    final ScanCb scanCb = new ScanCb();
    BluetoothLeScanner scanner;
    boolean scanning, wanted;
    int extraLooks;
    /** every Bluetooth device heard and every sensor heard while looking — shown, so "nothing found" is explained */
    final java.util.HashSet<String> seen = new java.util.HashSet<String>(), seenXems = new java.util.HashSet<String>();

    Ble(Context c, Sink s) {
        ctx = c.getApplicationContext();
        sink = s;
        main.postDelayed(new Flush(), 20);
        main.postDelayed(new Report(), 1000);
    }

    int online() {
        int n = 0;
        for (Conn c : conns.values()) {
            if (c.rx != null || c.ready) {
                n++;
            }
        }
        return n;
    }

    final class Report implements Runnable {
        @Override
        public void run() {
            sink.onScan(seen.size(), seenXems.size(), scanning);
            main.postDelayed(this, 1000);
        }
    }

    BluetoothAdapter adapter() {
        BluetoothManager m = (BluetoothManager) ctx.getSystemService(Context.BLUETOOTH_SERVICE);
        return m == null ? null : m.getAdapter();
    }

    /** Look for sensors for 12 s and connect every one found; keeps looking again whenever one drops. */
    String scan() {
        wanted = true;
        BluetoothAdapter a = adapter();
        if (a == null) {
            return "no-bluetooth";
        }
        if (!a.isEnabled()) {
            return "bluetooth-off";
        }
        scanner = a.getBluetoothLeScanner();
        if (scanner == null) {
            return "bluetooth-off";
        }
        if (!scanning) {
            try {
                // battery: the full-power scan only while nothing is connected; looking for the rest, balanced
                ScanSettings st = new ScanSettings.Builder().setScanMode(online() == 0 ? ScanSettings.SCAN_MODE_LOW_LATENCY : ScanSettings.SCAN_MODE_BALANCED).build();
                scanner.startScan(null, st, scanCb);
                scanning = true;
                main.postDelayed(new StopScan(), 12000);
            } catch (Throwable t) {
                return "scan: " + t.getMessage();
            }
        }
        return "ok";
    }

    void stopScan() {
        if (scanning && scanner != null) {
            try {
                scanner.stopScan(scanCb);
            } catch (Throwable ignored) {
            }
        }
        scanning = false;
    }

    /** a scan ended: while fewer than five sensors are with us, look again in 3 s (sensors switched on later) */
    void scanEnded() {
        stopScan();
        // up to 7 sensors (the five + both upper arms); with five or more online, a few more looks, then quiet (battery)
        if (wanted && (online() < 5 || (online() < 7 && extraLooks++ < 10))) {
            main.postDelayed(new Rescan(), 3000);
        }
    }

    void disconnectAll() {
        wanted = false;
        stopScan();
        for (Conn c : conns.values()) {
            c.close();
        }
        conns.clear();
    }

    void send(String id, String line) {
        Conn c = conns.get(id);
        if (c != null) {
            c.write(line + "\n");
        }
    }

    void found(BluetoothDevice d, String name) {
        if (name == null || !name.startsWith(PREFIX)) {
            return;
        }
        seenXems.add(d.getAddress());
        String id = name.substring(PREFIX.length()).trim();
        if (id.length() == 0) {
            id = d.getAddress();
        }
        Conn c = conns.get(id);
        if (c != null && c.gatt != null) {
            return;                                     // already ours (or connecting)
        }
        c = new Conn(id, d);
        conns.put(id, c);
        c.open();
    }

    synchronized void frame(String id, byte[] v) {
        batch.append(id).append(',').append(SystemClock.elapsedRealtime()).append(',');
        for (byte b : v) {
            int x = b & 0xff;
            batch.append(Character.forDigit(x >> 4, 16)).append(Character.forDigit(x & 15, 16));
        }
        batch.append(';');
    }

    synchronized String take() {
        if (batch.length() == 0) {
            return null;
        }
        String s = batch.toString();
        batch.setLength(0);
        return s;
    }

    final class Flush implements Runnable {
        @Override
        public void run() {
            String s = take();
            if (s != null) {
                sink.onFrames(s);
            }
            main.postDelayed(this, 20);
        }
    }

    final class StopScan implements Runnable {
        @Override
        public void run() {
            scanEnded();
        }
    }

    final class Rescan implements Runnable {
        @Override
        public void run() {
            if (wanted) {
                scan();
            }
        }
    }

    final class ScanCb extends ScanCallback {
        @Override
        public void onScanFailed(int code) {
            scanning = false;
            main.post(new Tell("-", "scan-failed " + code, false));
        }

        @Override
        public void onScanResult(int type, ScanResult r) {
            BluetoothDevice d = r.getDevice();
            seen.add(d.getAddress());
            String name = r.getScanRecord() != null ? r.getScanRecord().getDeviceName() : null;
            if (name == null) {
                try {
                    name = d.getName();
                } catch (Throwable ignored) {
                }
            }
            main.post(new Found(d, name));
        }
    }

    final class Found implements Runnable {
        final BluetoothDevice d;
        final String name;

        Found(BluetoothDevice d, String name) {
            this.d = d;
            this.name = name;
        }

        @Override
        public void run() {
            found(d, name);
        }
    }

    final class Tell implements Runnable {
        final String id, what;
        final boolean line;

        Tell(String id, String what, boolean line) {
            this.id = id;
            this.what = what;
            this.line = line;
        }

        @Override
        public void run() {
            if (line) {
                sink.onLine(id, what);
            } else {
                sink.onState(id, what);
            }
        }
    }

    /** One sensor: connect, notifications on (data + text), a write queue for commands, reconnect when lost. */
    final class Conn extends BluetoothGattCallback {
        final String id;
        final BluetoothDevice dev;
        BluetoothGatt gatt;
        BluetoothGattCharacteristic rx;
        boolean ready;
        final ArrayDeque<Object> queue = new ArrayDeque<Object>();
        boolean busy;
        final StringBuilder text = new StringBuilder();

        Conn(String id, BluetoothDevice dev) {
            this.id = id;
            this.dev = dev;
        }

        void open() {
            main.post(new Tell(id, "connecting", false));
            try {
                gatt = Build.VERSION.SDK_INT >= 23 ? dev.connectGatt(ctx, false, this, BluetoothDevice.TRANSPORT_LE)
                        : dev.connectGatt(ctx, false, this);
            } catch (Throwable t) {
                gatt = null;
                main.post(new Tell(id, "error", false));
            }
        }

        void close() {
            try {
                if (gatt != null) {
                    gatt.disconnect();
                    gatt.close();
                }
            } catch (Throwable ignored) {
            }
            gatt = null;
        }

        void write(String s) {
            if (rx == null) {
                return;
            }
            synchronized (queue) {
                queue.add(s);
            }
            pump();
        }

        void pump() {
            Object next;
            synchronized (queue) {
                if (busy || queue.isEmpty() || gatt == null) {
                    return;
                }
                next = queue.poll();
                busy = true;
            }
            boolean ok;
            try {
                if (next instanceof BluetoothGattDescriptor) {
                    ok = gatt.writeDescriptor((BluetoothGattDescriptor) next);
                } else {
                    rx.setValue(((String) next).getBytes("UTF-8"));
                    ok = gatt.writeCharacteristic(rx);
                }
            } catch (Throwable t) {
                ok = false;
            }
            if (!ok) {
                synchronized (queue) {
                    busy = false;
                }
            }
        }

        void notifyOn(BluetoothGattCharacteristic c) {
            if (c == null) {
                return;
            }
            gatt.setCharacteristicNotification(c, true);
            BluetoothGattDescriptor d = c.getDescriptor(CCCD);
            if (d != null) {
                d.setValue(BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE);
                synchronized (queue) {
                    queue.add(d);
                }
            }
        }

        @Override
        public void onConnectionStateChange(BluetoothGatt g, int status, int state) {
            if (state == BluetoothGatt.STATE_CONNECTED) {
                try {
                    g.requestConnectionPriority(BluetoothGatt.CONNECTION_PRIORITY_HIGH);
                } catch (Throwable ignored) {
                }
                g.discoverServices();
            } else if (state == BluetoothGatt.STATE_DISCONNECTED) {
                try {
                    g.close();
                } catch (Throwable ignored) {
                }
                gatt = null;
                rx = null;
                ready = false;
                synchronized (queue) {
                    queue.clear();
                    busy = false;
                }
                main.post(new Tell(id, "lost", false));
                main.postDelayed(new Rescan(), 1500);  // find it again
            }
        }

        @Override
        public void onServicesDiscovered(BluetoothGatt g, int status) {
            BluetoothGattService ds = g.getService(DATA_SVC), ns = g.getService(NUS_SVC);
            if (ds == null) {
                main.post(new Tell(id, "error", false));
                return;
            }
            notifyOn(ds.getCharacteristic(DATA_CHR));
            if (ns != null) {
                rx = ns.getCharacteristic(NUS_RX);
                notifyOn(ns.getCharacteristic(NUS_TX));
                synchronized (queue) {
                    queue.add("info\n");
                }
            }
            ready = true;
            main.post(new Tell(id, "online", false));
            pump();
        }

        @Override
        public void onDescriptorWrite(BluetoothGatt g, BluetoothGattDescriptor d, int status) {
            synchronized (queue) {
                busy = false;
            }
            pump();
        }

        @Override
        public void onCharacteristicWrite(BluetoothGatt g, BluetoothGattCharacteristic c, int status) {
            synchronized (queue) {
                busy = false;
            }
            pump();
        }

        @Override
        public void onCharacteristicChanged(BluetoothGatt g, BluetoothGattCharacteristic c) {
            byte[] v = c.getValue();
            if (v == null) {
                return;
            }
            if (DATA_CHR.equals(c.getUuid())) {
                frame(id, v);
                return;
            }
            for (byte b : v) {
                char ch = (char) (b & 0xff);
                if (ch == '\n') {
                    String line = text.toString().trim();
                    text.setLength(0);
                    if (line.length() > 0) {
                        main.post(new Tell(id, line, true));
                    }
                } else if (ch != '\r' && text.length() < 200) {
                    text.append(ch);
                }
            }
        }
    }
}
