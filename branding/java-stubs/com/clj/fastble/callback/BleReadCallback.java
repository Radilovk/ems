package com.clj.fastble.callback;

import com.clj.fastble.exception.BleException;

public abstract class BleReadCallback {
    public abstract void onReadSuccess(byte[] data);

    public abstract void onReadFailure(BleException exception);
}
