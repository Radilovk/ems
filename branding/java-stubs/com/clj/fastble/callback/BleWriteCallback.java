package com.clj.fastble.callback;

import com.clj.fastble.exception.BleException;

public abstract class BleWriteCallback {
    public abstract void onWriteSuccess(int current, int total, byte[] justWrite);

    public abstract void onWriteFailure(BleException exception);
}
