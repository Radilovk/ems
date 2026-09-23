package com.isaigu.gymapp.wearable.xiaomi;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.bluetooth.BluetoothProfile;
import android.os.Build;

import java.util.Arrays;
import java.util.UUID;

/** Top-level GATT callback (separate file for d8 compatibility). */
public final class XiaomiBandGattCallback extends BluetoothGattCallback {
    private static final String SERVICE_UUID = "0000fe95-0000-1000-8000-00805f9b34fb";
    private static final String CHAR_READ = "00000051-0000-1000-8000-00805f9b34fb";
    private static final String CHAR_WRITE = "00000052-0000-1000-8000-00805f9b34fb";

    private final XiaomiBandBleClient client;

    public XiaomiBandGattCallback(XiaomiBandBleClient client) {
        this.client = client;
    }

    @Override
    public void onConnectionStateChange(BluetoothGatt g, int status, int newState) {
        if (newState == BluetoothProfile.STATE_CONNECTED) {
            client.log("gatt", "connected status=" + status);
            if (Build.VERSION.SDK_INT >= 21) {
                try {
                    g.requestMtu(512);
                    return;
                } catch (Throwable t) {
                    client.logError("mtu_request", t);
                }
            }
            client.onGattConnected(g);
            return;
        }
        if (newState == BluetoothProfile.STATE_DISCONNECTED) {
            client.log("gatt", "disconnected status=" + status);
            client.onGattDisconnected();
        }
    }

    @Override
    public void onMtuChanged(BluetoothGatt g, int mtu, int status) {
        client.log("gatt", "mtu=" + mtu + " status=" + status);
        client.onGattConnected(g);
    }

    @Override
    public void onServicesDiscovered(BluetoothGatt g, int status) {
        if (status != BluetoothGatt.GATT_SUCCESS) {
            client.log("gatt", "service_fail status=" + status);
            client.onGattState("service_fail");
            return;
        }
        BluetoothGattService service = g.getService(UUID.fromString(SERVICE_UUID));
        if (service == null) {
            client.onGattState("no_fe95");
            return;
        }
        BluetoothGattCharacteristic read = service.getCharacteristic(UUID.fromString(CHAR_READ));
        BluetoothGattCharacteristic write = service.getCharacteristic(UUID.fromString(CHAR_WRITE));
        if (read == null || write == null) {
            client.onGattState("no_chars");
            return;
        }
        client.onGattCharsReady(g, read, write);
        client.beginNotificationSetup(g, read, write);
    }

    @Override
    public void onCharacteristicChanged(BluetoothGatt g,
            BluetoothGattCharacteristic characteristic) {
        byte[] data = characteristic.getValue();
        if (data == null || data.length == 0) {
            return;
        }
        client.logHex("notify", data, 24);
        client.onGattNotify(Arrays.copyOf(data, data.length));
    }

    @Override
    public void onCharacteristicWrite(BluetoothGatt g,
            BluetoothGattCharacteristic characteristic, int status) {
        if (status != BluetoothGatt.GATT_SUCCESS) {
            client.log("gatt", "char_write_fail status=" + status);
        }
        client.onGattWriteDone();
    }

    @Override
    public void onDescriptorWrite(BluetoothGatt g, BluetoothGattDescriptor descriptor,
            int status) {
        if (status != BluetoothGatt.GATT_SUCCESS) {
            client.log("gatt", "desc_write_fail status=" + status);
        }
        client.onGattWriteDone();
    }
}
