package com.isaigu.gymapp.wearable;

import android.app.Activity;
import android.content.Context;
import android.view.View;

import com.isaigu.gymapp.train.TrainItemManager;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.wearable.xiaomi.XiaomiBand;
import com.isaigu.gymapp.wearable.xiaomi.XiaomiBandBleClient;
import com.isaigu.gymapp.wearable.xiaomi.XiaomiBandLink;

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
            lastEventAction = XiaomiBand.link().getTransportName() + ":" + bleState;
            lastEventTimeMs = System.currentTimeMillis();
            WearableSyncHelper.updateDiagnostics();
            if ("bad_auth_key".equals(bleState)) {
                WearableSyncHelper.toastBleError(
                        WearableUi.tr("Грешен ключ — нужни са 32 символа от Mi Fitness",
                                "Wrong key — 32 characters from Mi Fitness"));
            } else if ("bad_mac".equals(bleState)) {
                WearableSyncHelper.toastBleError(
                        WearableUi.tr("Грешен MAC — провери адреса на гривната",
                                "Wrong MAC — check the band's address"));
            } else if ("auth_fail".equals(bleState)) {
                WearableSyncHelper.toastBleError(
                        WearableUi.tr("Гривната не прие ключа — провери ключа и MAC",
                                "The band rejected the key — check key and MAC"));
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
        try {
            attachMasterPanelImpl(root, manager);
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("NotifyWearableBridge.attachMasterPanel", t);
        }
    }

    private static void attachMasterPanelImpl(View root, TrainItemManager manager) {
        WearableSyncHelper.attachMasterPanel(root, manager);
    }

    public static void syncTrainingState() {
        try {
            syncTrainingStateImpl();
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("NotifyWearableBridge.syncTrainingState", t);
        }
    }

    private static void syncTrainingStateImpl() {
        Context context = WearableSyncHelper.getContext();
        if (context == null || !WearableConfig.isEnabled(context)) {
            return;
        }
        itemManager = WearableSyncHelper.getItemManager();
        WearableSyncHelper.onTrainingHostReady();
        WearableSyncHelper.onTrainingRunningChanged(isAnyTrainingRunning());
    }

    public static void detachTrainingHost() {
        try {
            detachTrainingHostImpl();
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("NotifyWearableBridge.detachTrainingHost", t);
        }
    }

    private static void detachTrainingHostImpl() {
        WearableSyncHelper.detachTrainingHost();
    }

    public static void onTrainingFullStop() {
        try {
            onTrainingFullStopImpl();
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("NotifyWearableBridge.onTrainingFullStop", t);
        }
    }

    private static void onTrainingFullStopImpl() {
        WearableSyncHelper.onTrainingRunningChanged(false);
        BandRemote.onManualStop();
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
        XiaomiBandLink client = XiaomiBand.link();
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

    private static final android.os.Handler main = new android.os.Handler(android.os.Looper.getMainLooper());
    /** Pause between closing and reopening, so the Bluetooth stack releases the old link. */
    private static final long FULL_RECONNECT_GAP_MS = 1200L;

    /**
     * ↻ on the HR dial: a complete Bluetooth restart — close the link (GATT or RFCOMM socket),
     * forget the band status, wait for the stack, refresh the GATT cache and connect afresh.
     */
    public static void fullReconnect(Activity activity) {
        owners.add(OWNER_DIAL);
        try {
            com.isaigu.gymapp.wearable.xiaomi.XiaomiBand.link().disconnect();
        } catch (Throwable t) {
            WearableBleDiagLog.log("reconnect", "disconnect: " + t);
        }
        com.isaigu.gymapp.wearable.xiaomi.XiaomiBandStatus.reset();
        com.isaigu.gymapp.wearable.xiaomi.XiaomiBandBleClient.getInstance().refreshCacheOnNextConnect();
        bleState = "reconnecting";
        lastHr = -1;
        WearableBleDiagLog.log("reconnect", "full Bluetooth reconnect");
        WearableSyncHelper.updateHeartRate(-1, false);
        WearableSyncHelper.updateDiagnostics();
        main.removeCallbacks(fullReconnectTask);
        fullReconnectTask.activity = activity;
        main.postDelayed(fullReconnectTask, FULL_RECONNECT_GAP_MS);
    }

    private static final FullReconnectTask fullReconnectTask = new FullReconnectTask();

    static final class FullReconnectTask implements Runnable {
        Activity activity;

        @Override
        public void run() {
            try {
                connect(activity);
            } catch (Throwable t) {
                com.isaigu.gymapp.widget.XemsGuard.report("NotifyWearableBridge.fullReconnect", t);
            }
            activity = null;
        }
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
        com.isaigu.gymapp.widget.XemsLicense.init(context);
        if (!com.isaigu.gymapp.widget.XemsLicense.needsBand()) {
            return;                                 // base app: no module uses the band
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
        String mac = normalizeMac(WearableConfig.getBandMac(context));
        // Band 8 and older: BLE FE95. Band 8 Pro / 9 / 10: Bluetooth Classic SPP (auto by name).
        XiaomiBandLink client = XiaomiBand.select(context, mac, WearableConfig.getBandTransport(context));
        client.setListener(bleListener);
        client.connect(context, mac, WearableConfig.getAuthKey(context));
        hrOn = null;
        applyHr(context);
        main.removeCallbacks(hrPolicy);
        main.postDelayed(hrPolicy, HR_POLICY_MS);
        lastEventAction = client.getTransportName() + ":connect";
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

    // ================================================================ heart rate on demand

    private static final long HR_POLICY_MS = 2000L;
    /** What the band was last told (null = not yet on this link). */
    private static Boolean hrOn;
    private static final HrPolicy hrPolicy = new HrPolicy();

    /**
     * Heart rate is measured only while something uses it: pulse auto-control, AI session, the HR
     * dial, or a settings connection test. Otherwise the band stops measuring; the link stays up.
     */
    static void applyHr(Context context) {
        boolean want = context != null && (WearableConfig.isAutoReduceEnabled(context)
                || owners.contains(OWNER_AI)
                || owners.contains(OWNER_DIAL)
                || owners.contains(OWNER_SETTINGS));
        if (hrOn != null && hrOn.booleanValue() == want) {
            return;
        }
        hrOn = want;
        XiaomiBandLink link = XiaomiBand.link();
        if (want) {
            link.startRealtime();
        } else {
            link.stopRealtime();
            lastHr = -1;
            WearableSyncHelper.updateHeartRate(-1, bandConnected);
        }
        WearableBleDiagLog.log("health", "heart rate " + (want ? "on" : "off"));
    }

    static final class HrPolicy implements Runnable {
        @Override
        public void run() {
            if (!listeningActive) {
                return;
            }
            try {
                applyHr(WearableSyncHelper.getContext());
            } catch (Throwable t) {
                com.isaigu.gymapp.widget.XemsGuard.report("NotifyWearableBridge.hrPolicy", t);
            }
            main.postDelayed(this, HR_POLICY_MS);
        }
    }

    /** The app is closed (task removed): stop the heart rate and close the band link for everyone. */
    public static void shutdown(Context context) {
        owners.clear();
        disconnect(context);
    }

    private static void disconnect(Context context) {
        main.removeCallbacks(hrPolicy);
        hrOn = null;
        BandRemote.stop();
        XiaomiBand.link().disconnect();
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
        // Off the wrist the optical sensor reads noise: never feed it to AI / pulse control.
        if (com.isaigu.gymapp.wearable.xiaomi.XiaomiBandStatus.isKnownNotWorn()) {
            WearableBleDiagLog.log("hr", "ignored " + hr + " — band not worn");
            return;
        }
        HrHistory.add(System.currentTimeMillis(), hr);
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
        try {
            BandRemote.start();
        } catch (Throwable t) {
            WearableBleDiagLog.log("remote", "start: " + t);
        }
        try {
            BandAppInstall.onBandConnected();
        } catch (Throwable t) {
            WearableBleDiagLog.log("install", "auto: " + t);
        }
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
        return XiaomiBand.link().getHrEventCount();
    }

    public static boolean isDirectBleActive() {
        return listeningActive;
    }

    public static String getBleState() {
        return bleState;
    }

    public static int getBleNotifyCount() {
        return XiaomiBand.link().getNotifyEventCount();
    }

    public static int getBleNotifyCount51() {
        return XiaomiBand.link().getNotifyCount51();
    }

    public static int getBleNotifyCount52() {
        return XiaomiBand.link().getNotifyCount52();
    }

    public static String getBleLastNotifyChar() {
        return XiaomiBand.link().getLastNotifyChar();
    }

    public static String getBleBuildTag() {
        return XiaomiBand.getBuildTag();
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
