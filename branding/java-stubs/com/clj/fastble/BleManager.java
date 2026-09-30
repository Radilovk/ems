package com.clj.fastble;

import android.bluetooth.BluetoothGatt;

import com.clj.fastble.callback.BleGattCallback;
import com.clj.fastble.data.BleDevice;

public class BleManager {
    public static BleManager getInstance() {
        return null;
    }

    public BluetoothGatt connect(String mac, BleGattCallback callback) {
        return null;
    }

    public void disconnect(BleDevice device) {}
}
