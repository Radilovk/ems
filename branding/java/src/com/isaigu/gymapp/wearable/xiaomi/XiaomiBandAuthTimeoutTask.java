package com.isaigu.gymapp.wearable.xiaomi;

final class XiaomiBandAuthTimeoutTask implements Runnable {
    private final XiaomiBandBleClient client;

    XiaomiBandAuthTimeoutTask(XiaomiBandBleClient client) {
        this.client = client;
    }

    @Override
    public void run() {
        client.onAuthTimeout();
    }
}
