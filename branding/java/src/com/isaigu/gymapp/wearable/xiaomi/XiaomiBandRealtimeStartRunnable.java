package com.isaigu.gymapp.wearable.xiaomi;

/** Deferred realtime START after HR config (separate file for d8 compatibility). */
final class XiaomiBandRealtimeStartRunnable implements Runnable {
    private final XiaomiBandBleClient client;

    XiaomiBandRealtimeStartRunnable(XiaomiBandBleClient client) {
        this.client = client;
    }

    @Override
    public void run() {
        client.onConfigToStartDelay();
    }
}
