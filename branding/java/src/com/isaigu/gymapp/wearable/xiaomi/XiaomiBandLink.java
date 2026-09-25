package com.isaigu.gymapp.wearable.xiaomi;

import android.content.Context;

/**
 * One live link to a Xiaomi band, whatever the radio: BLE (FE95, Band 8 and older) or
 * Bluetooth Classic SPP (Band 8 Pro / 9 / 9 Pro / 10 / 10 Pro). {@link XiaomiBand} picks it.
 */
public interface XiaomiBandLink {
    void setListener(XiaomiBandBleClient.Listener listener);

    void connect(Context context, String mac, String authKeyHex);

    void disconnect();

    void startRealtime();
    /** Stop the heart-rate stream but keep the link (band app, remote keys) up. */
    void stopRealtime();

    /** Send a ready-made protobuf command (encrypted like every post-auth command). */
    void sendCommand(byte[] proto);

    /** "BLE" or "SPP v1" / "SPP v2". */
    String getTransportName();

    String getLastState();

    boolean isConnected();

    int getHrEventCount();

    int getNotifyEventCount();

    int getNotifyCount51();

    int getNotifyCount52();

    String getLastNotifyChar();

    long getLastRealtimeEventMs();

    int getRealtimeEventCount();

    float getRealtimeEventRate();

    int getLastSteps();

    int getLastCalories();

    int getLastF3();

    int getLastF5();

    int getLastRawHr();
}
