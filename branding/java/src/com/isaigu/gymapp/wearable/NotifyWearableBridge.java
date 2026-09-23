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

import java.util.List;

/** Notify for Xiaomi Tasker intent bridge — session lifecycle + HR receiver. */
public final class NotifyWearableBridge {
    public static final String NOTIFY_PACKAGE = "com.mc.xiaomi1";
    public static final String GB_PACKAGE = "nodomain.freeyourgadget.gadgetbridge";
    public static final String GB_PACKAGE_NIGHTLY =
            "nodomain.freeyourgadget.gadgetbridge.nightly";
    public static final String GB_PACKAGE_NIGHTLY_NO_PEBBLE =
            "nodomain.freeyourgadget.gadgetbridge.nightly_nopebble";
    public static final String ACTION_GB_CONNECTED =
            "nodomain.freeyourgadget.gadgetbridge.BLUETOOTH_CONNECTED";

    public static final String ACTION_HR_ENABLE = "com.mc.xiaomi.taskerHeartEnable";
    public static final String ACTION_HR_ENABLE_LEGACY = "com.mc.miband.taskerHeartEnable";
    public static final String ACTION_HR_DISABLE = "com.mc.xiaomi.taskerHeartDisable";
    public static final String ACTION_HR_DISABLE_LEGACY = "com.mc.miband.taskerHeartDisable";
    public static final String ACTION_CONNECT = "com.mc.xiaomi.connectToBand";
    public static final String ACTION_CONNECT_LEGACY = "com.mc.miband.connectToBand";
    public static final String ACTION_RECONNECT = "com.mc.xiaomi.reconnectToBand";
    public static final String ACTION_RECONNECT_LEGACY = "com.mc.miband.reconnectToBand";
    public static final String ACTION_BATTERY_READ = "com.mc.xiaomi.tasker.batteryRead";
    public static final String ACTION_BATTERY_READ_LEGACY = "com.mc.miband.tasker.batteryRead";
    public static final String ACTION_NOTIFY_MODE_ENABLE = "com.mc.xiaomi.setNotifyMode.enable";
    public static final String ACTION_NOTIFY_MODE_ENABLE_LEGACY = "com.mc.miband.setNotifyMode.enable";
    public static final String ACTION_SLEEP_HEART_ENABLE = "com.mc.xiaomi.sleepHeartEnable";
    public static final String ACTION_SLEEP_HEART_ENABLE_LEGACY = "com.mc.miband.sleepHeartEnable";
    public static final String ACTION_SYNC_DATA = "com.mc.xiaomi.syncData";
    public static final String ACTION_SYNC_DATA_LEGACY = "com.mc.miband.syncData";
    public static final String ACTION_GB_START_HR =
            "nodomain.freeyourgadget.gadgetbridge.command.START_REALTIME_HR";
    public static final String ACTION_GB_STOP_HR =
            "nodomain.freeyourgadget.gadgetbridge.command.STOP_REALTIME_HR";

    private static final long AUTO_REDUCE_COOLDOWN_MS = 10000L;
    private static final long KEEPALIVE_INTERVAL_MS = 15000L;
    private static final long CONNECT_STEP_DELAY_MS = 400L;
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
                if (isGadgetbridgeInstalled(context)) {
                    sendGadgetbridgeStart(context);
                } else {
                    sendHrEnableSequence(context, false);
                    sendNotifyIntent(context, ACTION_BATTERY_READ);
                    sendNotifyIntent(context, ACTION_BATTERY_READ_LEGACY);
                }
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
    private static int lastBattery = -1;
    private static long lastAutoReduceMs;
    private static int hrEventCount;
    private static int gbHrEventCount;
    private static int batteryEventCount;
    private static String lastEventAction = "";
    private static long lastEventTimeMs;
    private static String lastHrSource = "";

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

    public static boolean isNotifyInstalled(Context context) {
        return isPackageInstalled(context, NOTIFY_PACKAGE);
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

    /** Start Notify connection + HR monitor (call on Activate / Connect). */
    public static void beginListening(Context context) {
        if (context == null || !WearableConfig.isEnabled(context)) {
            return;
        }
        registerReceiver(context);
        if (isGadgetbridgeInstalled(context)) {
            NotifyHaServer.stop();
        } else {
            NotifyHaServer.resetSession();
            NotifyHaServer.start(context);
        }
        listeningActive = true;
        lastHr = -1;
        hrEventCount = 0;
        gbHrEventCount = 0;
        batteryEventCount = 0;
        lastEventAction = "";
        lastEventTimeMs = 0L;
        lastHrSource = "";
        if (isGadgetbridgeInstalled(context)) {
            sendGadgetbridgeStart(context);
        } else {
            wakeNotifyApp(context);
            scheduleConnectSequence(context);
        }
        startKeepalive();
        WearableSyncHelper.updateHeartRate(-1, bandConnected);
        WearableSyncHelper.updateDiagnostics();
    }

    public static void openNotifyApp(Context context) {
        openCompanionApp(context, NOTIFY_PACKAGE);
    }

    public static void openGadgetbridgeApp(Context context) {
        if (context == null) {
            return;
        }
        String packageName = resolveGadgetbridgePackage(context);
        if (packageName != null) {
            openCompanionApp(context, packageName);
        }
    }

    private static void openCompanionApp(Context context, String packageName) {
        if (context == null || packageName == null) {
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
        if (isGadgetbridgeInstalled(context)) {
            sendGadgetbridgeStart(context);
        } else {
            sendNotifyIntent(context, ACTION_RECONNECT);
            sendNotifyIntent(context, ACTION_RECONNECT_LEGACY);
        }
        WearableSyncHelper.updateDiagnostics();
    }

    public static void stopListening(Context context) {
        if (context == null) {
            listeningActive = false;
            return;
        }
        sendNotifyIntent(context, ACTION_HR_DISABLE);
        sendNotifyIntent(context, ACTION_HR_DISABLE_LEGACY);
        sendGadgetbridgeStop(context);
        NotifyHaServer.stop();
        stopKeepalive();
        unregisterReceiver(context);
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
        hrEventCount++;
        if (sourceAction != null && sourceAction.contains("gadgetbridge")) {
            gbHrEventCount++;
        }
        lastHr = hr;
        lastHrSource = sourceAction != null ? sourceAction : "";
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

    static void onBattery(int level) {
        if (level >= 0 && level <= 100) {
            batteryEventCount++;
            lastBattery = level;
            WearableSyncHelper.updateBattery(level);
            WearableSyncHelper.updateDiagnostics();
        }
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

    public static int getHrEventCount() {
        return hrEventCount;
    }

    public static int getGbHrEventCount() {
        return gbHrEventCount;
    }

    public static int getBatteryEventCount() {
        return batteryEventCount;
    }

    public static int getLastBattery() {
        return lastBattery;
    }

    public static String getLastEventAction() {
        return lastEventAction;
    }

    public static long getLastEventTimeMs() {
        return lastEventTimeMs;
    }

    public static String getLastHrSource() {
        return lastHrSource;
    }

    public static String getHaEntityListText() {
        return NotifyHaServer.getEntityListText();
    }

    public static boolean hasHaHeartRateEntity() {
        return NotifyHaServer.hasHeartRateEntity();
    }

    static void sendNotifyIntent(Context context, String action) {
        if (context == null || action == null) {
            return;
        }
        Intent intent = new Intent(action);
        intent.setPackage(NOTIFY_PACKAGE);
        intent.addFlags(FLAG_INCLUDE_STOPPED_PACKAGES);
        String password = WearableConfig.getTaskerPassword(context);
        if (password != null && password.length() > 0) {
            intent.putExtra("password", password);
        }
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
        String packageName = resolveGadgetbridgePackage(context);
        if (packageName == null) {
            return;
        }
        Intent intent = new Intent(ACTION_GB_START_HR);
        intent.setPackage(packageName);
        intent.addFlags(FLAG_INCLUDE_STOPPED_PACKAGES);
        String mac = WearableConfig.getBandMac(context);
        if (mac != null && mac.length() > 0) {
            intent.putExtra("device", mac);
        }
        try {
            context.sendBroadcast(intent);
        } catch (Throwable ignored) {
        }
    }

    private static void sendGadgetbridgeStop(Context context) {
        String packageName = resolveGadgetbridgePackage(context);
        if (packageName == null) {
            return;
        }
        Intent intent = new Intent(ACTION_GB_STOP_HR);
        intent.setPackage(packageName);
        intent.addFlags(FLAG_INCLUDE_STOPPED_PACKAGES);
        String mac = WearableConfig.getBandMac(context);
        if (mac != null && mac.length() > 0) {
            intent.putExtra("device", mac);
        }
        try {
            context.sendBroadcast(intent);
        } catch (Throwable ignored) {
        }
    }

    private static void wakeNotifyApp(Context context) {
        try {
            Intent launch = context.getPackageManager()
                    .getLaunchIntentForPackage(NOTIFY_PACKAGE);
            if (launch != null) {
                launch.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK
                        | Intent.FLAG_ACTIVITY_NO_ANIMATION);
                context.startActivity(launch);
            }
        } catch (Throwable ignored) {
        }
    }

    private static void scheduleConnectSequence(final Context context) {
        final Context app = appContext(context);
        final String[] steps = new String[] {
                ACTION_NOTIFY_MODE_ENABLE,
                ACTION_NOTIFY_MODE_ENABLE_LEGACY,
                ACTION_CONNECT,
                ACTION_CONNECT_LEGACY,
                ACTION_SLEEP_HEART_ENABLE,
                ACTION_SLEEP_HEART_ENABLE_LEGACY,
                ACTION_HR_ENABLE,
                ACTION_HR_ENABLE_LEGACY,
                ACTION_BATTERY_READ,
                ACTION_BATTERY_READ_LEGACY,
                ACTION_SYNC_DATA,
                ACTION_SYNC_DATA_LEGACY,
        };
        for (int i = 0; i < steps.length; i++) {
            final String action = steps[i];
            mainHandler.postDelayed(new Runnable() {
                @Override
                public void run() {
                    if (!listeningActive) {
                        return;
                    }
                    sendNotifyIntent(app, action);
                }
            }, CONNECT_STEP_DELAY_MS * (i + 1));
        }
        mainHandler.postDelayed(new Runnable() {
            @Override
            public void run() {
                if (!listeningActive) {
                    return;
                }
                sendGadgetbridgeStart(app);
            }
        }, CONNECT_STEP_DELAY_MS * (steps.length + 2));
    }

    private static void sendHrEnableSequence(Context context, boolean includeConnect) {
        if (includeConnect) {
            sendNotifyIntent(context, ACTION_CONNECT);
            sendNotifyIntent(context, ACTION_CONNECT_LEGACY);
        }
        sendNotifyIntent(context, ACTION_HR_ENABLE);
        sendNotifyIntent(context, ACTION_HR_ENABLE_LEGACY);
        sendNotifyIntent(context, ACTION_SLEEP_HEART_ENABLE);
        sendNotifyIntent(context, ACTION_SLEEP_HEART_ENABLE_LEGACY);
        sendGadgetbridgeStart(context);
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
        filter.addAction(NotifyHrReceiver.ACTION_HEART_RATE);
        filter.addAction(NotifyHrReceiver.ACTION_HEART_RATE_LEGACY);
        filter.addAction(NotifyHrReceiver.ACTION_CONNECTED);
        filter.addAction(NotifyHrReceiver.ACTION_CONNECTED_LEGACY);
        filter.addAction(NotifyHrReceiver.ACTION_DISCONNECTED);
        filter.addAction(NotifyHrReceiver.ACTION_DISCONNECTED_LEGACY);
        filter.addAction(NotifyHrReceiver.ACTION_BATTERY);
        filter.addAction(NotifyHrReceiver.ACTION_BATTERY_LEGACY);
        filter.addAction(NotifyHrReceiver.ACTION_GB_REALTIME_HR);
        filter.addAction(ACTION_GB_CONNECTED);
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
