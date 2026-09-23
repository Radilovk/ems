package com.isaigu.gymapp.wearable.xiaomi;

final class XiaomiBandWriteTask implements Runnable {
    private final XiaomiBandBleClient client;
    private final byte[] frame;

    XiaomiBandWriteTask(XiaomiBandBleClient client, byte[] frame) {
        this.client = client;
        this.frame = frame;
    }

    @Override
    public void run() {
        client.writeRaw(frame);
    }
}
