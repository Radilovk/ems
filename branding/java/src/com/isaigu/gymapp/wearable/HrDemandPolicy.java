package com.isaigu.gymapp.wearable;

import android.content.Context;

import java.util.Set;

/**
 * When the band should measure heart rate (realtime 8/45). Kept separate from
 * {@link NotifyWearableBridge} so offline harnesses can verify the rules without Android BLE.
 * Owner ids must stay in sync with {@link NotifyWearableBridge#OWNER_AI} and siblings.
 */
public final class HrDemandPolicy {

    /** After the band app goes quiet, stop optical HR unless a session still needs it. */
    public static final long BAND_APP_IDLE_GRACE_MS = 90_000L;

    private HrDemandPolicy() {
    }

    /**
     * Core rule — testable on JVM with no {@link Context}.
     *
     * @param sessionActive training / AI / music / timer running on the tablet
     * @param bandLastMessageMs last {@code hello}/{@code cmd} from the band quick app (0 = never)
     */
    public static boolean wantsHeartRate(boolean autoReduceEnabled, Set<String> owners,
            boolean sessionActive, long bandLastMessageMs, long nowMs) {
        if (owners != null) {
            if (owners.contains(NotifyWearableBridge.OWNER_AI)
                    || owners.contains(NotifyWearableBridge.OWNER_DIAL)
                    || owners.contains(NotifyWearableBridge.OWNER_SETTINGS)) {
                return true;
            }
        }
        if (sessionActive) {
            return true;
        }
        if (autoReduceEnabled && isBandAppRecentlyActive(bandLastMessageMs, nowMs)) {
            return true;
        }
        return false;
    }

    public static boolean isBandAppRecentlyActive(long bandLastMessageMs, long nowMs) {
        if (bandLastMessageMs <= 0L) {
            return false;
        }
        return nowMs - bandLastMessageMs < BAND_APP_IDLE_GRACE_MS;
    }

    /** Legacy two-arg form — owners only; does not imply session or band-app activity. */
    public static boolean wantsHeartRate(boolean autoReduceEnabled, Set<String> owners) {
        return wantsHeartRate(autoReduceEnabled, owners, false, 0L, System.currentTimeMillis());
    }

    public static boolean wantsHeartRate(Context context, Set<String> owners,
            boolean sessionActive, long bandLastMessageMs, long nowMs) {
        if (context == null) {
            return false;
        }
        return wantsHeartRate(WearableConfig.isAutoReduceEnabled(context), owners,
                sessionActive, bandLastMessageMs, nowMs);
    }
}
