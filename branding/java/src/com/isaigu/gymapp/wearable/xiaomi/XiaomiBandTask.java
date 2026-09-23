package com.isaigu.gymapp.wearable.xiaomi;

/** Delayed client tasks (separate file for d8 compatibility). */
final class XiaomiBandTask implements Runnable {
    static final int MTU_FALLBACK = 1;
    static final int ACK_TIMEOUT = 2;
    static final int RECONNECT = 3;

    private final XiaomiBandBleClient client;
    private final int kind;

    XiaomiBandTask(XiaomiBandBleClient client, int kind) {
        this.client = client;
        this.kind = kind;
    }

    @Override
    public void run() {
        if (kind == MTU_FALLBACK) {
            client.onMtuFallback();
        } else if (kind == ACK_TIMEOUT) {
            client.onAckTimeout();
        } else if (kind == RECONNECT) {
            client.onReconnectDue();
        }
    }
}
