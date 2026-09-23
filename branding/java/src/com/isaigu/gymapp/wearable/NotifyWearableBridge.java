package com.isaigu.gymapp.wearable;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.View;

import com.isaigu.gymapp.train.TrainItemManager;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.wearable.xiaomi.XiaomiBandBleClient;

import java.util.List;

/** Wearable HR bridge — direct BLE (auth key) or Gadgetbridge Intent API fallback. */
public final class NotifyWearableBridge {
    public static final String GB_PACKAGE = "nodomain.freeyourgadget.gadgetbridge";
    public static final String GB_PACKAGE_NIGHTLY =
            "nodomain.freeyourgadget.gadgetbridge.nightly";
    public static final String GB_PACKAGE_NIGHTLY_NO_PEBBLE =
            "nodomain.freeyourgadget.gadgetbridge.nightly_nopebble";
    public static final String ACTION_GB_CONNECTED =
            "nodomain.freeyourgadget.gadgetbridge.BLUETOOTH_CONNECTED";
    public static final String ACTION_GB_CONNECT =
            "nodomain.freeyourgadget.gadgetbridge.BLUETOOTH_CONNECT";
    public static final String ACTION_GB_DISCONNECTED =
            "nodomain.freeyourgadget.gadgetbridge.BLUETOOTH_DISCONNECTED";
    public static final String ACTION_GB_START_HR =
            "nodomain.freeyourgadget.gadgetbridge.command.START_REALTIME_HR";
    public static final String ACTION_GB_STOP_HR =
            "nodomain.freeyourgadget.gadgetbridge.command.STOP_REALTIME_HR";

    private static final long AUTO_REDUCE_COOLDOWN_MS = 10000L;
    private static final long KEEPALIVE_INTERVAL_MS = 15000L;
    private static final long CONNECT_STEP_DELAY_MS = 500L;
    private static final long GB_FIRST_HR_DELAY_MS = 14000L;
    private static final int RECEIVER_EXPORTED_FLAG = 0x2;
    private static final int FLAG_INCLUDE_STOPPED_PACKAGES = 0x20;

    private static final Handler mainHandler = new Handler(Looper.getMainLooper());
    private static final Runnable keepaliveRunnable = new Runnable() {
        @Override
        public void run() {
            if (!listeningActive) {
                return;
            }
            Context context = WearableSyncHelper.getContext();
            if (context != null) {
                sendGadgetbridgeStart(context);
            }
            mainHandler.postDelayed(this, KEEPALIVE_INTERVAL_MS);
        }
    };

    private static TrainItemManager itemManager;
    private static NotifyHrReceiver receiver;
    private static boolean receiverRegistered;
    private static boolean listeningActive;
    private static boolean bandConnected;
    private static int lastHr = -1;
    private static long lastAutoReduceMs;
    private static int gbHrEventCount;
    private static int gbCommandCount;
    private static String lastEventAction = "";
    private static long lastEventTimeMs;
    private static boolean directBleActive;
    private static String bleState = "idle";

    private static final DirectBleListener bleListener = new DirectBleListener();

    private static final class DirectBleListener implements XiaomiBandBleClient.Listener {
        @Override
        public void onState(String state) {
            bleState = state != null ? state : "";
            lastEventAction = "BLE:" + bleState;
            lastEventTimeMs = System.currentTimeMillis();
            WearableSyncHelper.updateDiagnostics();
        }

        @Override
        public void onHeartRate(int hr) {
            NotifyWearableBridge.onHeartRate(hr, "BLE:REALTIME_HR");
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
        if (WearableConfig.isArmed(context)) {
            beginListening(context);
        }
        WearableSyncHelper.onTrainingRunningChanged(isAnyTrainingRunning());
    }

    public static void onTrainingFullStop() {
        WearableSyncHelper.onTrainingRunningChanged(false);
    }

    public static boolean isGadgetbridgeInstalled(Context context) {
        return resolveGadgetbridgePackage(context) != null;
    }

    public static String resolveGadgetbridgePackage(Context context) {
        if (isPackageInstalled(context, GB_PACKAGE_NIGHTLY_NO_PEBBLE)) {
            return GB_PACKAGE_NIGHTLY_NO_PEBBLE;
        }
        if (isPackageInstalled(context, GB_PACKAGE_NIGHTLY)) {
            return GB_PACKAGE_NIGHTLY;
        }
        if (isPackageInstalled(context, GB_PACKAGE)) {
            return GB_PACKAGE;
        }
        return null;
    }

    private static boolean isPackageInstalled(Context context, String packageName) {
        if (context == null || packageName == null) {
            return false;
        }
        PackageManager pm = context.getPackageManager();
        try {
            pm.getPackageInfo(packageName, 0);
            return true;
        } catch (PackageManager.NameNotFoundException ignored) {
        } catch (Throwable ignored) {
        }
        try {
            return pm.getLaunchIntentForPackage(packageName) != null;
        } catch (Throwable ignored) {
            return false;
        }
    }

    public static void beginListening(Context context) {
        if (context == null || !WearableConfig.isEnabled(context)) {
            return;
        }
        listeningActive = true;
        lastHr = -1;
        gbHrEventCount = 0;
        gbCommandCount = 0;
        lastEventAction = "";
        lastEventTimeMs = 0L;
        if (WearableConfig.isDirectBleMode(context)) {
            directBleActive = true;
            NotifyHaForegroundService.start(context);
            XiaomiBandBleClient client = XiaomiBandBleClient.getInstance();
            client.setListener(bleListener);
            WearableSyncHelper.updateHeartRate(-1, bandConnected);
            WearableSyncHelper.updateDiagnostics();
            return;
        }
        directBleActive = false;
        if (!isGadgetbridgeInstalled(context)) {
            WearableSyncHelper.showGadgetbridgeMissing();
            return;
        }
        registerReceiver(context);
        NotifyHaForegroundService.start(context);
        onBandConnected();
        scheduleGadgetbridgeSequence(context);
        startKeepalive();
        WearableSyncHelper.updateHeartRate(-1, bandConnected);
        WearableSyncHelper.updateDiagnostics();
    }

    public static void openGadgetbridgeApp(Context context) {
        if (context == null) {
            return;
        }
        String packageName = resolveGadgetbridgePackage(context);
        if (packageName == null) {
            return;
        }
        try {
            Intent launch = context.getPackageManager()
                    .getLaunchIntentForPackage(packageName);
            if (launch != null) {
                launch.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                context.startActivity(launch);
            }
        } catch (Throwable ignored) {
        }
    }

    public static void requestConnect() {
        Context context = WearableSyncHelper.getContext();
        if (context == null) {
            return;
        }
        beginListening(context);
        if (WearableConfig.isDirectBleMode(context)) {
            XiaomiBandBleClient client = XiaomiBandBleClient.getInstance();
            client.setListener(bleListener);
            String mac = normalizeMac(WearableConfig.getBandMac(context));
            client.connect(context, mac, WearableConfig.getAuthKey(context));
            client.startRealtime();
            lastEventAction = "BLE:connect";
            lastEventTimeMs = System.currentTimeMillis();
        } else {
            scheduleGadgetbridgeSequence(context);
        }
        WearableSyncHelper.updateDiagnostics();
    }

    public static void stopListening(Context context) {
        if (context == null) {
            listeningActive = false;
            directBleActive = false;
            return;
        }
        if (directBleActive || WearableConfig.isDirectBleMode(context)) {
            XiaomiBandBleClient.getInstance().disconnect();
            directBleActive = false;
            bleState = "stopped";
        } else {
            sendGadgetbridgeStop(context);
            unregisterReceiver(context);
            stopKeepalive();
        }
        NotifyHaForegroundService.stop(context);
        listeningActive = false;
        lastHr = -1;
        WearableSyncHelper.updateHeartRate(-1, bandConnected);
        WearableSyncHelper.updateDiagnostics();
    }

    static void onRawEvent(String action) {
        lastEventAction = action != null ? action : "";
        lastEventTimeMs = System.currentTimeMillis();
        WearableSyncHelper.updateDiagnostics();
    }

    static void onHeartRate(int hr, String sourceAction) {
        if (!listeningActive || hr < 40 || hr > 220) {
            return;
        }
        gbHrEventCount++;
        lastHr = hr;
        WearableSyncHelper.updateHeartRate(hr, bandConnected);
        WearableSyncHelper.updateDiagnostics();
        Context context = WearableSyncHelper.getContext();
        if (context != null && WearableConfig.isAutoReduceEnabled(context)
                && isAnyTrainingRunning()) {
            maybeAutoReduce(hr);
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
        if (directBleActive) {
            return XiaomiBandBleClient.getInstance().getHrEventCount();
        }
        return gbHrEventCount;
    }

    public static boolean isDirectBleActive() {
        return directBleActive;
    }

    public static String getBleState() {
        return bleState;
    }

    public static int getGbCommandCount() {
        return gbCommandCount;
    }

    public static String getResolvedGadgetbridgePackage(Context context) {
        return resolveGadgetbridgePackage(context);
    }

    public static String getGbPackageLabel(Context context) {
        String pkg = resolveGadgetbridgePackage(context);
        if (pkg == null) {
            return "--";
        }
        if (GB_PACKAGE_NIGHTLY_NO_PEBBLE.equals(pkg)) {
            return "GB nightly_nopebble";
        }
        if (GB_PACKAGE_NIGHTLY.equals(pkg)) {
            return "GB nightly";
        }
        if (GB_PACKAGE.equals(pkg)) {
            return "GB mainline";
        }
        int dot = pkg.lastIndexOf('.');
        return dot >= 0 ? pkg.substring(dot + 1) : pkg;
    }

    public static String getLastEventAction() {
        return lastEventAction;
    }

    public static long getLastEventTimeMs() {
        return lastEventTimeMs;
    }

    private static void scheduleGadgetbridgeSequence(final Context context) {
        final Context app = appContext(context);
        final String[] steps = new String[] {
                ACTION_GB_CONNECT,
                ACTION_GB_START_HR,
        };
        for (int i = 0; i < steps.length; i++) {
            final String action = steps[i];
            mainHandler.postDelayed(new Runnable() {
                @Override
                public void run() {
                    if (!listeningActive) {
                        return;
                    }
                    sendGadgetbridgeCommand(app, action);
                }
            }, CONNECT_STEP_DELAY_MS * (i + 1));
        }
        final long[] retryDelays = new long[] {
                GB_FIRST_HR_DELAY_MS,
                GB_FIRST_HR_DELAY_MS + 10000L,
                GB_FIRST_HR_DELAY_MS + 25000L,
                GB_FIRST_HR_DELAY_MS + 45000L,
        };
        for (int i = 0; i < retryDelays.length; i++) {
            final long delay = retryDelays[i];
            mainHandler.postDelayed(new Runnable() {
                @Override
                public void run() {
                    if (!listeningActive) {
                        return;
                    }
                    sendGadgetbridgeCommand(app, ACTION_GB_START_HR);
                }
            }, delay);
        }
    }

    private static void sendGadgetbridgeCommand(Context context, String action) {
        String packageName = resolveGadgetbridgePackage(context);
        if (packageName == null || action == null) {
            return;
        }
        String mac = normalizeMac(WearableConfig.getBandMac(context));
        Intent intent = new Intent(action);
        intent.setPackage(packageName);
        intent.addFlags(FLAG_INCLUDE_STOPPED_PACKAGES);
        if (mac.length() > 0) {
            if (ACTION_GB_CONNECT.equals(action)) {
                intent.putExtra("EXTRA_DEVICE_ADDRESS", mac);
            } else {
                intent.putExtra("device", mac);
            }
        }
        gbCommandCount++;
        try {
            context.sendBroadcast(intent);
        } catch (Throwable ignored) {
        }
        try {
            context.sendOrderedBroadcast(intent, null);
        } catch (Throwable ignored) {
        }
    }

    private static void sendGadgetbridgeStart(Context context) {
        sendGadgetbridgeCommand(context, ACTION_GB_START_HR);
    }

    private static void sendGadgetbridgeStop(Context context) {
        sendGadgetbridgeCommand(context, ACTION_GB_STOP_HR);
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

    private static void startKeepalive() {
        mainHandler.removeCallbacks(keepaliveRunnable);
        mainHandler.postDelayed(keepaliveRunnable, KEEPALIVE_INTERVAL_MS);
    }

    private static void stopKeepalive() {
        mainHandler.removeCallbacks(keepaliveRunnable);
    }

    private static Context appContext(Context context) {
        return context.getApplicationContext();
    }

    private static void registerReceiver(Context context) {
        if (receiverRegistered) {
            return;
        }
        Context app = appContext(context);
        if (receiver == null) {
            receiver = new NotifyHrReceiver();
        }
        IntentFilter filter = new IntentFilter();
        filter.addAction(NotifyHrReceiver.ACTION_GB_REALTIME_HR);
        filter.addAction(ACTION_GB_CONNECTED);
        filter.addAction(ACTION_GB_DISCONNECTED);
        if (Build.VERSION.SDK_INT >= 33) {
            app.registerReceiver(receiver, filter, RECEIVER_EXPORTED_FLAG);
        } else {
            app.registerReceiver(receiver, filter);
        }
        receiverRegistered = true;
    }

    private static void unregisterReceiver(Context context) {
        if (!receiverRegistered || receiver == null) {
            return;
        }
        try {
            appContext(context).unregisterReceiver(receiver);
        } catch (Throwable ignored) {
        }
        receiverRegistered = false;
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

    private static void maybeAutoReduce(int hr) {
        long now = System.currentTimeMillis();
        Context context = WearableSyncHelper.getContext();
        if (context == null) {
            return;
        }
        if (hr <= WearableConfig.getHrThreshold(context)
                || now - lastAutoReduceMs < AUTO_REDUCE_COOLDOWN_MS) {
            return;
        }
        lastAutoReduceMs = now;
        reduceStrengthOnRunningItems(context);
    }

    private static void reduceStrengthOnRunningItems(Context context) {
        TrainItemManager manager = WearableSyncHelper.getItemManager();
        if (manager == null) {
            return;
        }
        int step = WearableConfig.getStrengthStep(context);
        try {
            List<TrainItem> items = manager.getItemList();
            if (items == null) {
                return;
            }
            for (int i = 0; i < items.size(); i++) {
                TrainItem item = items.get(i);
                if (item == null || item.isEmpty() || item.data == null || !item.data.start) {
                    continue;
                }
                item.addStrenth(-step);
            }
        } catch (Throwable ignored) {
        }
    }
}
