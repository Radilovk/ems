package sim;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;

import org.robolectric.Shadows;
import org.robolectric.shadows.ShadowBluetoothAdapter;

import java.io.ByteArrayOutputStream;
import java.util.Set;

/** A simulated XEMS suit over BLE (service FFF0): advertised to the app's scans; what the app writes is recorded. */
public final class Suit {
    private Suit() {}

    public static void enableBluetooth() {
        BluetoothAdapter ad = BluetoothAdapter.getDefaultAdapter();
        ShadowBluetoothAdapter s = Shadows.shadowOf(ad);
        s.setEnabled(true);
        s.setState(BluetoothAdapter.STATE_ON);
    }

    /** The advertisement: flags, the 16-bit service FFF0, the complete name. */
    static byte[] adv(String name) {
        ByteArrayOutputStream o = new ByteArrayOutputStream();
        o.write(2); o.write(0x01); o.write(0x06);
        o.write(3); o.write(0x03); o.write(0xF0); o.write(0xFF);
        byte[] n = name.getBytes();
        o.write(n.length + 1); o.write(0x09); o.write(n, 0, n.length);
        while (o.size() < 62) {
            o.write(0);
        }
        return o.toByteArray();
    }

    static final java.util.UUID SVC = java.util.UUID.fromString("0000fff0-0000-1000-8000-00805f9b34fb");
    static final java.util.UUID NOTIFY = java.util.UUID.fromString("0000fff1-0000-1000-8000-00805f9b34fb");
    static final java.util.UUID WRITE = java.util.UUID.fromString("0000fff2-0000-1000-8000-00805f9b34fb");
    static final java.util.UUID CCCD = java.util.UUID.fromString("00002902-0000-1000-8000-00805f9b34fb");

    /** The app connected (connectGatt): the suit answers as connected with its FFF0 service. */
    public static boolean connect(String mac) {
        BluetoothDevice d = BluetoothAdapter.getDefaultAdapter().getRemoteDevice(mac);
        org.robolectric.shadows.ShadowBluetoothDevice sd = Shadows.shadowOf(d);
        java.util.List<android.bluetooth.BluetoothGatt> gs = sd.getBluetoothGatts();
        System.out.println("SIM suit " + mac + " gatts=" + gs.size());
        if (gs.isEmpty()) {
            return false;
        }
        android.bluetooth.BluetoothGatt g = gs.get(gs.size() - 1);
        org.robolectric.shadows.ShadowBluetoothGatt sg = Shadows.shadowOf(g);
        android.bluetooth.BluetoothGattService svc = new android.bluetooth.BluetoothGattService(SVC,
                android.bluetooth.BluetoothGattService.SERVICE_TYPE_PRIMARY);
        android.bluetooth.BluetoothGattCharacteristic n = new android.bluetooth.BluetoothGattCharacteristic(NOTIFY,
                android.bluetooth.BluetoothGattCharacteristic.PROPERTY_NOTIFY | android.bluetooth.BluetoothGattCharacteristic.PROPERTY_READ,
                android.bluetooth.BluetoothGattCharacteristic.PERMISSION_READ);
        n.addDescriptor(new android.bluetooth.BluetoothGattDescriptor(CCCD,
                android.bluetooth.BluetoothGattDescriptor.PERMISSION_WRITE | android.bluetooth.BluetoothGattDescriptor.PERMISSION_READ));
        android.bluetooth.BluetoothGattCharacteristic w = new android.bluetooth.BluetoothGattCharacteristic(WRITE,
                android.bluetooth.BluetoothGattCharacteristic.PROPERTY_WRITE | android.bluetooth.BluetoothGattCharacteristic.PROPERTY_WRITE_NO_RESPONSE,
                android.bluetooth.BluetoothGattCharacteristic.PERMISSION_WRITE);
        svc.addCharacteristic(n);
        svc.addCharacteristic(w);
        sg.addDiscoverableService(svc);
        sg.allowCharacteristicNotification(n);
        sd.setConnected(true);
        sd.simulateGattConnectionChange(android.bluetooth.BluetoothGatt.GATT_SUCCESS,
                android.bluetooth.BluetoothProfile.STATE_CONNECTED);
        GATTS.put(mac, g);
        return true;
    }

    static final java.util.Map<String, android.bluetooth.BluetoothGatt> GATTS = new java.util.HashMap<>();

    /** What the app wrote to the suit last (hex), null = nothing. */
    public static String lastWrite(String mac) {
        android.bluetooth.BluetoothGatt g = GATTS.get(mac);
        byte[] b = g != null ? Shadows.shadowOf(g).getLatestWrittenBytes() : null;
        if (b == null) {
            return null;
        }
        StringBuilder s = new StringBuilder();
        for (byte x : b) {
            s.append(String.format("%02x", x & 0xff));
        }
        return s.toString();
    }

    /** Shows the suit to every scan the app runs now (the old LeScan API, as FastBle uses it). */
    public static int advertise(String mac, String name) {
        BluetoothAdapter ad = BluetoothAdapter.getDefaultAdapter();
        ShadowBluetoothAdapter s = Shadows.shadowOf(ad);
        BluetoothDevice d = ad.getRemoteDevice(mac);
        org.robolectric.shadows.ShadowBluetoothDevice sd = Shadows.shadowOf(d);
        sd.setName(name);
        Set<BluetoothAdapter.LeScanCallback> cbs = s.getLeScanCallbacks();
        for (BluetoothAdapter.LeScanCallback cb : cbs) {
            cb.onLeScan(d, -50, adv(name));
        }
        System.out.println("SIM suit " + mac + " advertised to " + cbs.size() + " scan(s)");
        return cbs.size();
    }
}
