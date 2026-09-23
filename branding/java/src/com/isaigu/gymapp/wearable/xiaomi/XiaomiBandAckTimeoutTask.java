package com.isaigu.gymapp.wearable.xiaomi;

/** Band never ACKed a command (separate file for d8 compatibility). */
final class XiaomiBandAckTimeoutTask implements Runnable {
    private final XiaomiBandBleClient client;

    XiaomiBandAckTimeoutTask(XiaomiBandBleClient client) {
        this.client = client;
    }

    @Override
    public void run() {
        client.onBandAckTimeout();
    }
}
