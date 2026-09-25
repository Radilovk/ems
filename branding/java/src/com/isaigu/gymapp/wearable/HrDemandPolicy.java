package com.isaigu.gymapp.wearable;

import android.content.Context;

import java.util.Set;

/**
 * When the band should measure heart rate (realtime 8/45). Kept separate from
 * {@link NotifyWearableBridge} so offline harnesses can verify the rules without Android BLE.
 * Owner ids must stay in sync with {@link NotifyWearableBridge#OWNER_AI} and siblings.
 */
public final class HrDemandPolicy {

    private HrDemandPolicy() {
    }

    /**
     * Core rule — testable on JVM with no {@link Context}.
     */
    public static boolean wantsHeartRate(boolean autoReduceEnabled, Set<String> owners) {
        if (autoReduceEnabled) {
            return true;
        }
        if (owners == null || owners.isEmpty()) {
            return false;
        }
        // Not OWNER_DIAL: the training-screen dial takes a share on every connect — it shows the
        // HR only while the pulse module (auto-control) is on; otherwise the band does not measure.
        return owners.contains(NotifyWearableBridge.OWNER_AI)
                || owners.contains(NotifyWearableBridge.OWNER_SETTINGS);
    }

    public static boolean wantsHeartRate(Context context, Set<String> owners) {
        if (context == null) {
            return false;
        }
        return wantsHeartRate(WearableConfig.isAutoReduceEnabled(context), owners);
    }
}
