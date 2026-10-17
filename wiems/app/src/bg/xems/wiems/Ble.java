package bg.xems.wiems;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.bluetooth.BluetoothManager;
import android.bluetooth.BluetoothProfile;
import android.bluetooth.le.BluetoothLeScanner;
import android.bluetooth.le.ScanCallback;
import android.bluetooth.le.ScanResult;
import android.bluetooth.le.ScanSettings;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;

import com.isaigu.gymapp.bodytech.WiProto;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/**
 * The tablet's BLE side for ONE unit — WiEMS, XEMS suit or bodytech suit ({@link Dev}): scan for ours (advertised
 * service, else the name), connect, find the unit's service; WiEMS: subscribe the run characteristic and the battery
 * level; a suit: subscribe its notify characteristic. Then one write at a time (the caller paces with
 * {@link #write} → {@link Listener#written}). Every callback is handed to the main thread.
 */
final class Ble {
    static final String TAG = "xems-wiems";
    static final UUID CCCD = UUID.fromString("00002902-0000-1000-8000-00805f9b34fb");

    interface Listener {
        void seen(String mac, String name, int rssi, int kind);
        void linked();
        void lost(String why);
        void written(boolean ok);
        void runNotify(byte[] v);
        void battery(int pct);
        /** Any other notification (the unit's status / current check, its clock): for the trace. */
        void notified(String what, byte[] v);
        /** An XEMS / bodytech suit's notification (its battery reply). */
        void suitNotify(byte[] v);
    }

    private final Context ctx;
    private final Listener l;
    private final Handler main = new Handler(Looper.getMainLooper());
    private BluetoothAdapter adapter;
    private BluetoothLeScanner scanner;
    private boolean scanning;
    private final ScanCb scanCb = new ScanCb();
    private final GattCb gattCb = new GattCb();
    private BluetoothGatt gatt;
    private String mac;
    /** The kind being linked / linked ({@link Dev}). */
    private int kind = Dev.WIEMS;
    /** XEMS / bodytech: the one characteristic written and the one notifying (bodytech: the same FE51). */
    private BluetoothGattCharacteristic suitW, suitN;
    private final BluetoothGattCharacteristic[] ops = new BluetoothGattCharacteristic[5];
    private BluetoothGattCharacteristic batt;
    /**
     * Set-up after the services, as the vendor: notifications on the run control, the battery, the unit's status /
     * current check (b1f5a058) and its clock (7764f042), then the battery read; READY after that.
     */
    private int setup = -1;
    static final int READY = 5;
    static final String CHR_STATUS = "b1f5a058-c717-11e4-8731-1681e6b88ec1";
    private BluetoothGattCharacteristic status, clock;

    Ble(Context ctx, Listener l) {
        this.ctx = ctx;
        this.l = l;
        BluetoothManager m = (BluetoothManager) ctx.getSystemService(Context.BLUETOOTH_SERVICE);
        adapter = m != null ? m.getAdapter() : null;
    }

    boolean hasBluetooth() {
        return adapter != null;
    }

    boolean enabled() {
        return adapter != null && adapter.isEnabled();
    }

    boolean ready() {
        return setup == READY && gatt != null;
    }

    boolean connecting() {
        return gatt != null && setup != READY;
    }

    String mac() {
        return mac;
    }

    int kind() {
        return kind;
    }

    // ---------------------------------------------------------------- scan

    void scan(boolean want) {
        try {
            if (!enabled()) {
                scanning = false;
                return;
            }
            if (want == scanning) return;
            if (scanner == null) scanner = adapter.getBluetoothLeScanner();
            if (scanner == null) return;
            if (want) {
                ScanSettings s = new ScanSettings.Builder().setScanMode(ScanSettings.SCAN_MODE_LOW_LATENCY).build();
                scanner.startScan(null, s, scanCb);
            } else {
                scanner.stopScan(scanCb);
            }
            scanning = want;
        } catch (Throwable t) {
            Log.e(TAG, "scan: " + t);
            scanning = false;
        }
    }

    final class ScanCb extends ScanCallback {
        @Override
        public void onScanResult(int type, ScanResult r) {
            report(r);
        }

        @Override
        public void onBatchScanResults(List<ScanResult> rs) {
            for (ScanResult r : rs) report(r);
        }

        private void report(ScanResult r) {
            try {
                BluetoothDevice d = r.getDevice();
                String name = r.getScanRecord() != null ? r.getScanRecord().getDeviceName() : null;
                if (name == null) name = d.getName();
                int k = Dev.kindOf(svcOf(r), name);
                if (k < 0) return;
                main.post(new SeenPost(d.getAddress(), name != null ? name : d.getAddress(), r.getRssi(), k));
            } catch (Throwable t) {
                Log.e(TAG, "scan result: " + t);
            }
        }
    }

    /** The unit's advertised service as the panel's bridge names it: "WIEMS", "FE50", "FFF0", "NUS" or null. */
    static String svcOf(ScanResult r) {
        if (r.getScanRecord() == null || r.getScanRecord().getServiceUuids() == null) return null;
        for (android.os.ParcelUuid u : r.getScanRecord().getServiceUuids()) {
            String s = u.getUuid().toString().toLowerCase();
            if (s.equals(WiProto.SVC)) return "WIEMS";
            if (s.equals(Dev.BT_SVC)) return "FE50";
            if (s.equals(Dev.XEMS_SVC)) return "FFF0";
            if (s.equals(Dev.NUS_SVC)) return "NUS";
        }
        return null;
    }

    final class SeenPost implements Runnable {
        final String mac, name;
        final int rssi, kind;

        SeenPost(String mac, String name, int rssi, int kind) {
            this.mac = mac;
            this.name = name;
            this.rssi = rssi;
            this.kind = kind;
        }

        @Override
        public void run() {
            l.seen(mac, name, rssi, kind);
        }
    }

    // ---------------------------------------------------------------- link

    void connect(String address, int kind) {
        if (gatt != null || !enabled()) return;
        scan(false);
        try {
            BluetoothDevice d = adapter.getRemoteDevice(address);
            mac = address;
            this.kind = kind;
            setup = -1;
            for (int i = 0; i < ops.length; i++) ops[i] = null;
            batt = null;
            suitW = suitN = null;
            gatt = Build.VERSION.SDK_INT >= 23 ? d.connectGatt(ctx, false, gattCb, BluetoothDevice.TRANSPORT_LE)
                    : d.connectGatt(ctx, false, gattCb);
        } catch (Throwable t) {
            Log.e(TAG, "connect: " + t);
            close("Не се свърза — опитай пак");
        }
    }

    /** Disconnect; the unit's outputs-off goes first when the link is ready (best effort). */
    void disconnect(byte[] safeOp) {
        if (gatt == null) return;
        try {
            if (ready() && safeOp != null) writeNow(safeOp);
        } catch (Throwable t) {
            Log.e(TAG, "safe: " + t);
        }
        BluetoothGatt g = gatt;
        boolean safe = ready() && safeOp != null;
        gatt = null;
        setup = -1;
        // the "outputs off" needs a moment on air: closing right after the write could drop it
        if (safe) main.postDelayed(new Closer(g), 400);
        else new Closer(g).run();
    }

    static final class Closer implements Runnable {
        final BluetoothGatt g;

        Closer(BluetoothGatt g) {
            this.g = g;
        }

        @Override
        public void run() {
            try {
                g.disconnect();
                g.close();
            } catch (Throwable t) {
                Log.e(TAG, "disconnect: " + t);
            }
        }
    }

    /** One write (an op = [selector, value…]); the answer comes as {@link Listener#written}. */
    boolean write(byte[] op) {
        if (!ready()) return false;
        try {
            return writeNow(op);
        } catch (Throwable t) {
            Log.e(TAG, "write: " + t);
            return false;
        }
    }

    private boolean writeNow(byte[] op) {
        if (kind != Dev.WIEMS) {                    // a suit: the frame as it is, with response where it has it
            if (suitW == null) return false;
            suitW.setValue(op);
            suitW.setWriteType((suitW.getProperties() & BluetoothGattCharacteristic.PROPERTY_WRITE) != 0
                    ? BluetoothGattCharacteristic.WRITE_TYPE_DEFAULT : BluetoothGattCharacteristic.WRITE_TYPE_NO_RESPONSE);
            return gatt.writeCharacteristic(suitW);
        }
        int sel = op[0] & 0xFF;
        BluetoothGattCharacteristic c = sel < ops.length ? ops[sel] : null;
        if (c == null) return false;
        c.setValue(WiProto.value(op));
        c.setWriteType(BluetoothGattCharacteristic.WRITE_TYPE_DEFAULT);
        return gatt.writeCharacteristic(c);
    }

    private void close(String why) {
        BluetoothGatt g = gatt;
        gatt = null;
        setup = -1;
        if (g != null) {
            try {
                g.close();
            } catch (Throwable t) {
                Log.e(TAG, "close: " + t);
            }
        }
        l.lost(why);
    }

    /** The next set-up step (main thread). */
    private void step() {
        try {
            if (gatt == null) return;
            if (kind != Dev.WIEMS) {                // a suit: its notifications on, then ready
                if (setup == 0 && notifyOn(suitN)) return;
                setup = READY;
                l.linked();
                return;
            }
            if (setup >= 0 && setup <= 3) {
                BluetoothGattCharacteristic[] n = {ops[WiProto.OP_RUN], batt, status, clock};
                if (!notifyOn(n[setup])) {
                    setup++;
                    step();
                }
            } else if (setup == 4) {
                if (batt == null || !gatt.readCharacteristic(batt)) {
                    setup = READY;
                    l.linked();
                }
            }
        } catch (Throwable t) {
            Log.e(TAG, "setup: " + t);
            close("Не се свърза — опитай пак");
        }
    }

    private boolean notifyOn(BluetoothGattCharacteristic c) {
        if (c == null) return false;
        gatt.setCharacteristicNotification(c, true);
        BluetoothGattDescriptor d = c.getDescriptor(CCCD);
        if (d == null) return false;
        d.setValue(BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE);
        return gatt.writeDescriptor(d);
    }

    /** A characteristic in any service (the status one is outside the vendor service). */
    private static BluetoothGattCharacteristic findChr(BluetoothGatt g, String uuid) {
        UUID u = UUID.fromString(uuid);
        for (BluetoothGattService sv : g.getServices()) {
            BluetoothGattCharacteristic c = sv.getCharacteristic(u);
            if (c != null) return c;
        }
        return null;
    }

    private void servicesFound(BluetoothGatt g) {
        if (kind != Dev.WIEMS) {
            suitFound(g);
            return;
        }
        BluetoothGattService s = g.getService(UUID.fromString(WiProto.SVC));
        if (s == null) {
            close("Това устройство не е WiEMS");
            return;
        }
        String[] u = {WiProto.CHR_CURRENTS, WiProto.CHR_PROGRAM, WiProto.CHR_REST, WiProto.CHR_WIDTHS, WiProto.CHR_RUN};
        for (int i = 0; i < u.length; i++) ops[i] = s.getCharacteristic(UUID.fromString(u[i]));
        if (ops[WiProto.OP_CURRENTS] == null || ops[WiProto.OP_RUN] == null || ops[WiProto.OP_PROGRAM] == null) {
            close("WiEMS без нужните характеристики");
            return;
        }
        BluetoothGattService b = g.getService(UUID.fromString(WiProto.BATTERY_SVC));
        batt = b != null ? b.getCharacteristic(UUID.fromString(WiProto.BATTERY_CHR)) : null;
        status = findChr(g, CHR_STATUS);
        clock = findChr(g, WiProto.CHR_CLOCK);
        setup = 0;
        step();
    }

    /** XEMS: FFF0 (FFF2 / FFF1) or the Nordic UART; bodytech: FE50 (FE51 both ways, a quick link as EMSFIT's). */
    private void suitFound(BluetoothGatt g) {
        if (kind == Dev.BODYTECH) {
            BluetoothGattService s = g.getService(UUID.fromString(Dev.BT_SVC));
            suitW = suitN = s != null ? s.getCharacteristic(UUID.fromString(Dev.BT_CHR)) : null;
            if (suitW != null && Build.VERSION.SDK_INT >= 21)
                g.requestConnectionPriority(BluetoothGatt.CONNECTION_PRIORITY_HIGH);   // write → ACK ≈ 25 ms
        } else {
            BluetoothGattService s = g.getService(UUID.fromString(Dev.XEMS_SVC));
            if (s != null) {
                suitW = s.getCharacteristic(UUID.fromString(Dev.XEMS_WRITE));
                suitN = s.getCharacteristic(UUID.fromString(Dev.XEMS_NOTIFY));
            }
            BluetoothGattService n = g.getService(UUID.fromString(Dev.NUS_SVC));
            if (suitW == null && n != null) {
                suitW = n.getCharacteristic(UUID.fromString(Dev.NUS_RX));
                suitN = n.getCharacteristic(UUID.fromString(Dev.NUS_TX));
            }
        }
        if (suitW == null) {
            close("Това устройство не е " + Dev.SHORT[kind]);
            return;
        }
        setup = 0;
        step();
    }

    // ---------------------------------------------------------------- GATT callbacks (binder thread → main)

    static final int EV_STATE = 0, EV_SERVICES = 1, EV_WRITE = 2, EV_DESC = 3, EV_READ = 4, EV_CHANGED = 5;

    final class Ev implements Runnable {
        final int kind, status;
        final BluetoothGatt g;
        final BluetoothGattCharacteristic c;
        final byte[] v;

        Ev(int kind, BluetoothGatt g, int status, BluetoothGattCharacteristic c, byte[] v) {
            this.kind = kind;
            this.g = g;
            this.status = status;
            this.c = c;
            this.v = v;
        }

        @Override
        public void run() {
            if (g != gatt) return;                      // an old link
            try {
                handle(this);
            } catch (Throwable t) {
                Log.e(TAG, "event: " + t);
            }
        }
    }

    private void handle(Ev e) {
        switch (e.kind) {
            case EV_STATE:
                if (e.status == BluetoothProfile.STATE_CONNECTED) {
                    if (!gatt.discoverServices()) close("Не се свърза — опитай пак");
                } else {
                    close(setup == READY ? "Връзката с " + Dev.NAME[kind] + " прекъсна — тренировката спря" : "Не се свърза — опитай пак");
                }
                break;
            case EV_SERVICES:
                if (e.status == BluetoothGatt.GATT_SUCCESS) servicesFound(e.g);
                else close("Не се свърза — опитай пак");
                break;
            case EV_DESC:
                setup++;
                step();
                break;
            case EV_READ:
                if (e.c == batt && e.v != null && e.v.length == 1) l.battery(e.v[0] & 0xFF);
                if (setup == 4) {
                    setup = READY;
                    l.linked();
                }
                break;
            case EV_WRITE:
                l.written(e.status == BluetoothGatt.GATT_SUCCESS);
                break;
            case EV_CHANGED:
                if (kind != Dev.WIEMS) l.suitNotify(e.v);
                else if (e.c == batt && e.v != null && e.v.length == 1) l.battery(e.v[0] & 0xFF);
                else if (e.c == ops[WiProto.OP_RUN]) l.runNotify(e.v);
                else l.notified(e.c == status ? "status" : e.c == clock ? "clock" : String.valueOf(e.c.getUuid()), e.v);
                break;
            default:
                break;
        }
    }

    final class GattCb extends BluetoothGattCallback {
        @Override
        public void onConnectionStateChange(BluetoothGatt g, int status, int newState) {
            main.post(new Ev(EV_STATE, g, status == BluetoothGatt.GATT_SUCCESS ? newState : BluetoothProfile.STATE_DISCONNECTED, null, null));
        }

        @Override
        public void onServicesDiscovered(BluetoothGatt g, int status) {
            main.post(new Ev(EV_SERVICES, g, status, null, null));
        }

        @Override
        public void onCharacteristicWrite(BluetoothGatt g, BluetoothGattCharacteristic c, int status) {
            main.post(new Ev(EV_WRITE, g, status, c, null));
        }

        @Override
        public void onDescriptorWrite(BluetoothGatt g, BluetoothGattDescriptor d, int status) {
            main.post(new Ev(EV_DESC, g, status, null, null));
        }

        @Override
        public void onCharacteristicRead(BluetoothGatt g, BluetoothGattCharacteristic c, int status) {
            byte[] v = c.getValue();
            main.post(new Ev(EV_READ, g, status, c, v != null ? v.clone() : null));
        }

        @Override
        public void onCharacteristicChanged(BluetoothGatt g, BluetoothGattCharacteristic c) {
            byte[] v = c.getValue();
            main.post(new Ev(EV_CHANGED, g, 0, c, v != null ? v.clone() : null));
        }
    }

}
