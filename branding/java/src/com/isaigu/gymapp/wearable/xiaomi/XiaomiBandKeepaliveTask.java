package com.isaigu.gymapp.wearable.xiaomi;

/** Resend realtime START while streaming (band drops session without keepalive). */
final class XiaomiBandKeepaliveTask implements Runnable {
    private final XiaomiBandBleClient client;

    XiaomiBandKeepaliveTask(XiaomiBandBleClient client) {
        this.client = client;
    }

    @Override
    public void run() {
        client.onKeepaliveTick();
    }
}
