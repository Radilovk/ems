package com.isaigu.gymapp.wearable.xiaomi;

/** Byte pipe to the band. Production: {@link XiaomiBandRfcommPort}; tests: a simulator. */
interface XiaomiBandSppPort {
    void write(byte[] data);

    void close();
}
