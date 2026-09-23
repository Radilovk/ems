package com.isaigu.gymapp.wearable.xiaomi;

/** Periodic stall check — never resends START (that kills the measurement window). */
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
