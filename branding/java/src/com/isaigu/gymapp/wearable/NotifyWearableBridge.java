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
    public static final String ACTION_HR_ENABLE = "com.mc.xiaomi.taskerHeartEnable";
    public static final String ACTION_HR_DISABLE = "com.mc.xiaomi.taskerHeartDisable";
    public static final String ACTION_CONNECT = "com.mc.xiaomi.connectToBand";
    public static final String ACTION_RECONNECT = "com.mc.xiaomi.reconnectToBand";
    public static final String ACTION_BATTERY_READ = "com.mc.xiaomi.tasker.batteryRead";

    private static final long AUTO_REDUCE_COOLDOWN_MS = 10000L;
    private static final long KEEPALIVE_INTERVAL_MS = 30000L;
    private static final int RECEIVER_EXPORTED_FLAG = 0x2;
    private static final int FLAG_INCLUDE_STOPPED_PACKAGES = 0x20;

    private static final Handler keepaliveHandler = new Handler(Looper.getMainLooper());
    private static final Runnable keepaliveRunnable = new Runnable() {
        @Override
        public void run() {
            if (!listeningActive) {
                return;
            }
            Context context = WearableSyncHelper.getContext();
            if (context != null) {
                sendNotifyIntent(context, ACTION_HR_ENABLE);
                sendNotifyIntent(context, ACTION_BATTERY_READ);
            }
            keepaliveHandler.postDelayed(this, KEEPALIVE_INTERVAL_MS);
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
        if (context == null) {
            return false;
        }
        PackageManager pm = context.getPackageManager();
        try {
            pm.getPackageInfo(NOTIFY_PACKAGE, 0);
            return true;
        } catch (PackageManager.NameNotFoundException ignored) {
        } catch (Throwable ignored) {
        }
        try {
            if (pm.getLaunchIntentForPackage(NOTIFY_PACKAGE) != null) {
                return true;
            }
        } catch (Throwable ignored) {
        }
        return false;
    }

    /** Start Notify connection + HR monitor (call on Activate / Connect). */
    public static void beginListening(Context context) {
        if (context == null || !WearableConfig.isEnabled(context)) {
            return;
        }
        // Do not abort when isNotifyInstalled is false: Android 11+ package visibility
        // (common on Huawei + microG) can hide Notify even when it is installed.
        registerReceiver(context);
        sendNotifyIntent(context, ACTION_CONNECT);
        sendNotifyIntent(context, ACTION_HR_ENABLE);
        sendNotifyIntent(context, ACTION_BATTERY_READ);
        listeningActive = true;
        lastHr = -1;
        startKeepalive();
        WearableSyncHelper.updateHeartRate(-1, bandConnected);
    }

    public static void openNotifyApp(Context context) {
        if (context == null) {
            return;
        }
        try {
            Intent launch = context.getPackageManager()
                    .getLaunchIntentForPackage(NOTIFY_PACKAGE);
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
        sendNotifyIntent(context, ACTION_RECONNECT);
    }

    public static void stopListening(Context context) {
        if (context == null) {
            listeningActive = false;
            return;
        }
        sendNotifyIntent(context, ACTION_HR_DISABLE);
        stopKeepalive();
        unregisterReceiver(context);
        listeningActive = false;
        lastHr = -1;
        WearableSyncHelper.updateHeartRate(-1, bandConnected);
    }

    static void onHeartRate(int hr) {
        if (!listeningActive || hr < 40 || hr > 220) {
            return;
        }
        lastHr = hr;
        WearableSyncHelper.updateHeartRate(hr, bandConnected);
        Context context = WearableSyncHelper.getContext();
        if (context != null && WearableConfig.isAutoReduceEnabled(context)
                && isAnyTrainingRunning()) {
            maybeAutoReduce(hr);
        }
    }

    static void onBandConnected() {
        bandConnected = true;
        WearableSyncHelper.updateHeartRate(lastHr, true);
    }

    static void onBandDisconnected() {
        bandConnected = false;
        WearableSyncHelper.updateHeartRate(lastHr, false);
    }

    static void onBattery(int level) {
        if (level >= 0 && level <= 100) {
            lastBattery = level;
            WearableSyncHelper.updateBattery(level);
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

    static void sendNotifyIntent(Context context, String action) {
        Intent intent = new Intent(action);
        intent.setPackage(NOTIFY_PACKAGE);
        intent.addFlags(FLAG_INCLUDE_STOPPED_PACKAGES);
        String password = WearableConfig.getTaskerPassword(context);
        if (password != null && password.length() > 0) {
            intent.putExtra("password", password);
        }
        context.sendBroadcast(intent);
    }

    private static void startKeepalive() {
        keepaliveHandler.removeCallbacks(keepaliveRunnable);
        keepaliveHandler.postDelayed(keepaliveRunnable, KEEPALIVE_INTERVAL_MS);
    }

    private static void stopKeepalive() {
        keepaliveHandler.removeCallbacks(keepaliveRunnable);
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
        filter.addAction(NotifyHrReceiver.ACTION_CONNECTED);
        filter.addAction(NotifyHrReceiver.ACTION_DISCONNECTED);
        filter.addAction(NotifyHrReceiver.ACTION_BATTERY);
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
