package com.isaigu.gymapp.wearable;

import android.app.Activity;
import android.content.Context;
import android.view.View;

import com.isaigu.gymapp.train.TrainItemManager;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.wearable.xiaomi.XiaomiBandBleClient;

import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/**
 * Wearable HR bridge — direct BLE only (auth key + MAC). No Gadgetbridge.
 * One shared band connection for every module: each user ({@link #OWNER_DIAL}, {@link #OWNER_AI},
 * {@link #OWNER_SETTINGS}) acquires it and releases it; the link closes when the last one releases.
 * MAC and auth key come only from {@link WearableConfig} (Settings → Band).
 */
public final class NotifyWearableBridge {
    public static final String OWNER_DIAL = "dial";
    public static final String OWNER_AI = "ai";
    public static final String OWNER_SETTINGS = "settings";

    private static final Set<String> owners = new LinkedHashSet<String>();

    private static TrainItemManager itemManager;
    private static boolean listeningActive;
    private static boolean bandConnected;
    private static int lastHr = -1;
    private static int hrEventCount;
    private static String lastEventAction = "";
    private static long lastEventTimeMs;
    private static String bleState = "idle";

    private static final DirectBleListener bleListener = new DirectBleListener();

    private static final class DirectBleListener implements XiaomiBandBleClient.Listener {
        @Override
        public void onState(String state) {
            bleState = state != null ? state : "";
            lastEventAction = "BLE:" + bleState;
            lastEventTimeMs = System.currentTimeMillis();
            WearableSyncHelper.updateDiagnostics();
            if ("bad_auth_key".equals(bleState)) {
                WearableSyncHelper.toastBleError(
                        "Auth key грешен — 32 hex символа от Mi Fitness");
            } else if ("bad_mac".equals(bleState)) {
                WearableSyncHelper.toastBleError(
                        "MAC грешен — провери адреса на гривната");
            } else if ("auth_fail".equals(bleState)) {
                WearableSyncHelper.toastBleError(
                        "Auth неуспешен — провери auth key и MAC");
            } else if ("no_bt_permission".equals(bleState)) {
                WearableSyncHelper.showBluetoothPermissionDenied();
            }
        }

        @Override
        public void onHeartRate(int hr) {
            NotifyWearableBridge.onHeartRate(hr);
        }

        @Override
        public void onConnected(boolean connected) {
            if (connected) {
                onBandConnected();
            } else {
                onBandDisconnected();
            }
        }
    }

    private NotifyWearableBridge() {}

    public static void attachMasterPanel(View root, TrainItemManager manager) {
        WearableSyncHelper.attachMasterPanel(root, manager);
    }

    public static void syncTrainingState() {
        Context context = WearableSyncHelper.getContext();
        if (context == null || !WearableConfig.isEnabled(context)) {
            return;
        }
        itemManager = WearableSyncHelper.getItemManager();
        WearableSyncHelper.onTrainingHostReady();
        WearableSyncHelper.onTrainingRunningChanged(isAnyTrainingRunning());
    }

    public static void detachTrainingHost() {
        WearableSyncHelper.detachTrainingHost();
    }

    public static void onTrainingFullStop() {
        WearableSyncHelper.onTrainingRunningChanged(false);
    }

    public static void beginListening(Context context) {
        if (context == null) {
            return;
        }
        // The HR-dial switch only governs the dial; AI and Settings use the band on their own.
        if (!WearableConfig.isEnabled(context) && owners.size() == 1 && owners.contains(OWNER_DIAL)) {
            return;
        }
        if (!WearableConfig.isConfigured(context)) {
            WearableSyncHelper.showAuthKeyRequired();
            return;
        }
        listeningActive = true;
        WearableBleDiagLog.init(context);
        lastHr = -1;
        hrEventCount = 0;
        lastEventAction = "";
        lastEventTimeMs = 0L;
        XiaomiBandBleClient client = XiaomiBandBleClient.getInstance();
        client.setListener(bleListener);
        WearableSyncHelper.updateHeartRate(-1, bandConnected);
        WearableSyncHelper.updateDiagnostics();
    }

    public static void requestConnect() {
        requestConnect(null);
    }

    /** HR dial (↻ / activate): take a share of the link and (re)connect. */
    public static void requestConnect(Activity activity) {
        owners.add(OWNER_DIAL);
        connect(activity);
    }

    /**
     * Take a share of the band link for {@code owner}. Connects only when no link is up yet,
     * so a module never interrupts the stream another one is using.
     */
    public static void acquire(Activity activity, String owner) {
        if (owner == null) {
            return;
        }
        owners.add(owner);
        if (listeningActive && isLinkUp()) {
            return;
        }
        connect(activity);
    }

    /** Take a share and force a fresh connection (explicit "reconnect" by the user). */
    public static void reconnect(Activity activity, String owner) {
        if (owner != null) {
            owners.add(owner);
        }
        connect(activity);
    }

    /** Give back {@code owner}'s share; the link closes when nobody uses it any more. */
    public static void release(Context context, String owner) {
        if (owner == null || !owners.remove(owner)) {
            return;
        }
        if (owners.isEmpty()) {
            disconnect(context);
        }
    }

    public static boolean isOwnedBy(String owner) {
        return owners.contains(owner);
    }

    /** Connected or on the way there (not idle, stopped or failed). */
    public static boolean isLinkUp() {
        String s = bleState != null ? bleState : "";
        if (s.length() == 0 || "idle".equals(s) || "stopped".equals(s) || "disconnected".equals(s)) {
            return false;
        }
        return !WearableUi.isErrorState(s);
    }

    private static void connect(Activity activity) {
        if (activity == null) {
            activity = WearableSyncHelper.resolveActivityForPermissions();
        }
        Context context = activity != null ? activity : WearableSyncHelper.getContext();
        if (context == null) {
            return;
        }
        if (!WearableConfig.isConfigured(context)) {
            WearableSyncHelper.showAuthKeyRequired();
            return;
        }
        if (!WearableBlePermissions.hasAllBlePermissions(context)) {
            if (activity != null) {
                WearableBlePermissions.ensureConnectPermission(activity,
                        new ConnectAfterPermission());
            }
            return;
        }
        performConnect(context);
    }

    private static void performConnect(Context context) {
        if (!WearableBlePermissions.gateGattOrNotify(context)) {
            return;
        }
        if (!WearableConfig.isConfigured(context)) {
            WearableSyncHelper.showAuthKeyRequired();
            return;
        }
        beginListening(context);
        EmsBleCoexist.pauseEmsBle();
        NotifyHaForegroundService.start(context);
        XiaomiBandBleClient client = XiaomiBandBleClient.getInstance();
        client.setListener(bleListener);
        String mac = normalizeMac(WearableConfig.getBandMac(context));
        client.connect(context, mac, WearableConfig.getAuthKey(context));
        client.startRealtime();
        lastEventAction = "BLE:connect";
        lastEventTimeMs = System.currentTimeMillis();
        WearableSyncHelper.updateDiagnostics();
    }

    static final class ConnectAfterPermission implements Runnable {
        @Override
        public void run() {
            Context context = WearableSyncHelper.getContext();
            if (context != null) {
                performConnect(context);
            }
        }
    }

    /** HR dial closed: release its share; AI / Settings keep the link if they still use it. */
    public static void stopListening(Context context) {
        release(context, OWNER_DIAL);
        WearableSyncHelper.updateDiagnostics();
    }

    private static void disconnect(Context context) {
        XiaomiBandBleClient.getInstance().disconnect();
        bleState = "stopped";
        NotifyHaForegroundService.stop(context);
        listeningActive = false;
        lastHr = -1;
        WearableSyncHelper.updateHeartRate(-1, bandConnected);
        WearableSyncHelper.updateDiagnostics();
    }

    static void onHeartRate(int hr) {
        if (!listeningActive || hr < 40 || hr > 220) {
            return;
        }
        hrEventCount++;
        lastHr = hr;
        WearableSyncHelper.updateHeartRate(hr, bandConnected);
        try {
            com.isaigu.gymapp.ai.AiSession.onHeartRate(hr);
        } catch (Throwable ignored) {
        }
        WearableSyncHelper.updateDiagnostics();
        // Pulse module: HR-driven control of the running program (idle during an AI session).
        try {
            HrGuard.onHeartRate(hr);
        } catch (Throwable t) {
            WearableBleDiagLog.log("hr_guard", "onHeartRate: " + t);
        }
    }

    static void onBandConnected() {
        bandConnected = true;
        WearableSyncHelper.updateHeartRate(lastHr, true);
        WearableSyncHelper.updateDiagnostics();
    }

    static void onBandDisconnected() {
        bandConnected = false;
        WearableSyncHelper.updateHeartRate(lastHr, false);
        WearableSyncHelper.updateDiagnostics();
    }

    public static boolean isListeningActive() {
        return listeningActive;
    }

    public static int getLastHeartRate() {
        return lastHr;
    }

    public static boolean isBandConnected() {
        return bandConnected;
    }

    public static int getGbHrEventCount() {
        return XiaomiBandBleClient.getInstance().getHrEventCount();
    }

    public static boolean isDirectBleActive() {
        return listeningActive;
    }

    public static String getBleState() {
        return bleState;
    }

    public static int getBleNotifyCount() {
        return XiaomiBandBleClient.getInstance().getNotifyEventCount();
    }

    public static int getBleNotifyCount51() {
        return XiaomiBandBleClient.getInstance().getNotifyCount51();
    }

    public static int getBleNotifyCount52() {
        return XiaomiBandBleClient.getInstance().getNotifyCount52();
    }

    public static String getBleLastNotifyChar() {
        return XiaomiBandBleClient.getInstance().getLastNotifyChar();
    }

    public static String getBleBuildTag() {
        return XiaomiBandBleClient.getBuildTag();
    }

    public static int getGbCommandCount() {
        return 0;
    }

    public static String getResolvedGadgetbridgePackage(Context context) {
        return null;
    }

    public static String getGbPackageLabel(Context context) {
        return "--";
    }

    public static String getLastEventAction() {
        return lastEventAction;
    }

    public static long getLastEventTimeMs() {
        return lastEventTimeMs;
    }

    static String normalizeMac(String mac) {
        if (mac == null) {
            return "";
        }
        String compact = mac.replace(":", "").replace("-", "").replace(" ", "").toUpperCase();
        if (compact.length() != 12) {
            return mac.trim();
        }
        StringBuilder sb = new StringBuilder(17);
        for (int i = 0; i < 12; i += 2) {
            if (sb.length() > 0) {
                sb.append(':');
            }
            sb.append(compact.charAt(i));
            sb.append(compact.charAt(i + 1));
        }
        return sb.toString();
    }

    private static boolean isAnyTrainingRunning() {
        if (itemManager == null) {
            itemManager = WearableSyncHelper.getItemManager();
        }
        if (itemManager == null) {
            return false;
        }
        try {
            List<TrainItem> items = itemManager.getItemList();
            if (items == null) {
                return false;
            }
            for (int i = 0; i < items.size(); i++) {
                TrainItem item = items.get(i);
                if (item == null || item.isEmpty() || item.data == null) {
                    continue;
                }
                if (item.data.start) {
                    return true;
                }
            }
        } catch (Throwable ignored) {
        }
        return false;
    }
}
