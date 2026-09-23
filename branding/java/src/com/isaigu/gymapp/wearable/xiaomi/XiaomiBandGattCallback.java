package com.isaigu.gymapp.wearable.xiaomi;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.bluetooth.BluetoothProfile;

import java.util.Arrays;
import java.util.UUID;

/** Top-level GATT callback (separate file for d8 compatibility). */
public final class XiaomiBandGattCallback extends BluetoothGattCallback {
    private static final String SERVICE_UUID = "0000fe95-0000-1000-8000-00805f9b34fb";
    private static final String CHAR_READ = "00000051-0000-1000-8000-00805f9b34fb";
    private static final String CHAR_WRITE = "00000052-0000-1000-8000-00805f9b34fb";
    private static final String CCCD = "00002902-0000-1000-8000-00805f9b34fb";

    private final XiaomiBandBleClient client;

    public XiaomiBandGattCallback(XiaomiBandBleClient client) {
        this.client = client;
    }

    @Override
    public void onConnectionStateChange(BluetoothGatt g, int status, int newState) {
        if (newState == BluetoothProfile.STATE_CONNECTED) {
            client.onGattConnected(g);
            return;
        }
        if (newState == BluetoothProfile.STATE_DISCONNECTED) {
            client.onGattDisconnected();
        }
    }

    @Override
    public void onServicesDiscovered(BluetoothGatt g, int status) {
        if (status != BluetoothGatt.GATT_SUCCESS) {
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
        g.setCharacteristicNotification(read, true);
        BluetoothGattDescriptor cccd = read.getDescriptor(UUID.fromString(CCCD));
        if (cccd != null) {
            cccd.setValue(BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE);
            g.writeDescriptor(cccd);
        }
        client.onGattState("auth_start");
        client.onGattSendAuthNonce();
    }

    @Override
    public void onCharacteristicChanged(BluetoothGatt g,
            BluetoothGattCharacteristic characteristic) {
        byte[] data = characteristic.getValue();
        if (data == null || data.length == 0) {
            return;
        }
        client.onGattNotify(Arrays.copyOf(data, data.length));
    }

    @Override
    public void onCharacteristicWrite(BluetoothGatt g,
            BluetoothGattCharacteristic characteristic, int status) {
        client.onGattWriteDone();
    }
}
