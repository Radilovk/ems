package com.isaigu.gymapp.wearable;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/** Receives live heart rate broadcasts from Gadgetbridge Intent API. */
public final class NotifyHrReceiver extends BroadcastReceiver {
    public static final String ACTION_GB_REALTIME_HR =
            "nodomain.freeyourgadget.gadgetbridge.action.REALTIME_HR";
    public static final String ACTION_GB_CONNECTED =
            "nodomain.freeyourgadget.gadgetbridge.BLUETOOTH_CONNECTED";
    public static final String ACTION_GB_DISCONNECTED =
            "nodomain.freeyourgadget.gadgetbridge.BLUETOOTH_DISCONNECTED";

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
        if (ACTION_GB_REALTIME_HR.equals(action)) {
            if (!deviceMatchesConfigured(context, intent)) {
                return;
            }
            int hr = intent.getIntExtra("hr", -1);
            if (hr > 0) {
                NotifyWearableBridge.onBandConnected();
                NotifyWearableBridge.onHeartRate(hr, action);
            }
        } else if (ACTION_GB_CONNECTED.equals(action)) {
            if (deviceMatchesConfigured(context, intent)) {
                NotifyWearableBridge.onBandConnected();
            }
        } else if (ACTION_GB_DISCONNECTED.equals(action)) {
            if (deviceMatchesConfigured(context, intent)) {
                NotifyWearableBridge.onBandDisconnected();
            }
        }
    }

    private static boolean deviceMatchesConfigured(Context context, Intent intent) {
        String configured = WearableConfig.getBandMac(context);
        if (configured == null || configured.trim().length() == 0) {
            return true;
        }
        String mac = intent.getStringExtra("device");
        if (mac == null) {
            mac = intent.getStringExtra("EXTRA_DEVICE_ADDRESS");
        }
        if (mac == null) {
            return true;
        }
        return NotifyWearableBridge.normalizeMac(configured)
                .equals(NotifyWearableBridge.normalizeMac(mac));
    }
}
