package com.isaigu.gymapp.wearable;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/** Receives live heart rate broadcasts from Notify for Xiaomi. */
public final class NotifyHrReceiver extends BroadcastReceiver {
    public static final String ACTION_HEART_RATE = "com.mc.xiaomi.heartRateGot";
    public static final String ACTION_CONNECTED = "com.mc.xiaomi.connected";
    public static final String ACTION_DISCONNECTED = "com.mc.xiaomi.disconnected";

    @Override
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        String action = intent.getAction();
        if (ACTION_HEART_RATE.equals(action)) {
            NotifyWearableBridge.onHeartRate(intent.getIntExtra("value", -1));
        } else if (ACTION_CONNECTED.equals(action)) {
            NotifyWearableBridge.onBandConnected();
        } else if (ACTION_DISCONNECTED.equals(action)) {
            NotifyWearableBridge.onBandDisconnected();
        }
    }
}
