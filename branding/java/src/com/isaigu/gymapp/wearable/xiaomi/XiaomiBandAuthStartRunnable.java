package com.isaigu.gymapp.wearable.xiaomi;

/** Deferred auth start after CCCD writes complete. */
final class XiaomiBandAuthStartRunnable implements Runnable {
    private final XiaomiBandBleClient client;

    XiaomiBandAuthStartRunnable(XiaomiBandBleClient client) {
        this.client = client;
    }

    @Override
    public void run() {
        client.onGattState("auth_start");
        client.onGattSendAuthNonce();
    }
}
