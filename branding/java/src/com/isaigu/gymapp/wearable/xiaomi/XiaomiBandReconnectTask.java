package com.isaigu.gymapp.wearable.xiaomi;

/** Reconnect after unexpected GATT drop while realtime is armed. */
final class XiaomiBandReconnectTask implements Runnable {
    private final XiaomiBandBleClient client;

    XiaomiBandReconnectTask(XiaomiBandBleClient client) {
        this.client = client;
    }

    @Override
    public void run() {
        client.onReconnectTick();
    }
}
