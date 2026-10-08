package com.clj.fastble;

import android.bluetooth.BluetoothGatt;

import com.clj.fastble.callback.BleGattCallback;
import com.clj.fastble.callback.BleRssiCallback;
import com.clj.fastble.data.BleDevice;

public class BleManager {
    public static BleManager getInstance() {
        return null;
    }

    public BluetoothGatt connect(String mac, BleGattCallback callback) {
        return null;
    }

    public void disconnect(BleDevice device) {}

    public BluetoothGatt getBluetoothGatt(BleDevice device) {
        return null;
    }

    public java.util.List<BleDevice> getAllConnectedDevice() {
        return null;
    }

    public void readRssi(BleDevice device, BleRssiCallback callback) {}

    public boolean isConnected(BleDevice device) {
        return false;
    }

    public boolean requestConnectionPriority(BleDevice device, int connectionPriority) {
        return false;
    }
}
