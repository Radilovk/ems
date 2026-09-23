package com.isaigu.gymapp.wearable.xiaomi;

/** onMtuChanged never arrived — discover services anyway (separate file for d8). */
final class XiaomiBandMtuFallbackTask implements Runnable {
    private final XiaomiBandBleClient client;

    XiaomiBandMtuFallbackTask(XiaomiBandBleClient client) {
        this.client = client;
    }

    @Override
    public void run() {
        client.onMtuFallback();
    }
}
