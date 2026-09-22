package com.isaigu.gymapp.wearable;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/** Receives live heart rate broadcasts from Notify for Xiaomi and Gadgetbridge. */
public final class NotifyHrReceiver extends BroadcastReceiver {
    public static final String ACTION_HEART_RATE = "com.mc.xiaomi.heartRateGot";
    public static final String ACTION_HEART_RATE_LEGACY = "com.mc.miband.heartRateGot";
    public static final String ACTION_CONNECTED = "com.mc.xiaomi.connected";
    public static final String ACTION_CONNECTED_LEGACY = "com.mc.miband.connected";
    public static final String ACTION_DISCONNECTED = "com.mc.xiaomi.disconnected";
    public static final String ACTION_DISCONNECTED_LEGACY = "com.mc.miband.disconnected";
    public static final String ACTION_BATTERY = "com.mc.xiaomi.batteryStatGot";
    public static final String ACTION_BATTERY_LEGACY = "com.mc.miband.batteryStatGot";
    public static final String ACTION_GB_REALTIME_HR =
            "nodomain.freeyourgadget.gadgetbridge.action.REALTIME_HR";

    @Override
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        String action = intent.getAction();
        if (action == null) {
            return;
        }
        NotifyWearableBridge.onRawEvent(action);
        if (isHeartRateAction(action)) {
            int hr = parseHeartRate(intent);
            if (hr > 0) {
                NotifyWearableBridge.onHeartRate(hr, action);
            }
        } else if (isConnectedAction(action)) {
            NotifyWearableBridge.onBandConnected();
        } else if (isDisconnectedAction(action)) {
            NotifyWearableBridge.onBandDisconnected();
        } else if (isBatteryAction(action)) {
            NotifyWearableBridge.onBattery(intent.getIntExtra("value", -1));
        }
    }

    private static boolean isHeartRateAction(String action) {
        return ACTION_HEART_RATE.equals(action)
                || ACTION_HEART_RATE_LEGACY.equals(action)
                || ACTION_GB_REALTIME_HR.equals(action);
    }

    private static boolean isConnectedAction(String action) {
        return ACTION_CONNECTED.equals(action) || ACTION_CONNECTED_LEGACY.equals(action);
    }

    private static boolean isDisconnectedAction(String action) {
        return ACTION_DISCONNECTED.equals(action) || ACTION_DISCONNECTED_LEGACY.equals(action);
    }

    private static boolean isBatteryAction(String action) {
        return ACTION_BATTERY.equals(action) || ACTION_BATTERY_LEGACY.equals(action);
    }

    private static int parseHeartRate(Intent intent) {
        int hr = intent.getIntExtra("value", -1);
        if (hr > 0) {
            return hr;
        }
        hr = intent.getIntExtra("hr", -1);
        if (hr > 0) {
            return hr;
        }
        hr = intent.getIntExtra("heart", -1);
        if (hr > 0) {
            return hr;
        }
        hr = intent.getIntExtra("bpm", -1);
        return hr > 0 ? hr : -1;
    }
}
