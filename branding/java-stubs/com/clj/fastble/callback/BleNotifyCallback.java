package com.clj.fastble.callback;

import com.clj.fastble.exception.BleException;

public abstract class BleNotifyCallback {
    public abstract void onNotifySuccess();

    public abstract void onNotifyFailure(BleException exception);

    public abstract void onCharacteristicChanged(byte[] data);
}
