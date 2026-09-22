package com.isaigu.gymapp.wearable;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
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

    private static final long AUTO_REDUCE_COOLDOWN_MS = 10000L;
    private static final int RECEIVER_EXPORTED_FLAG = 0x2;

    private static TrainItemManager itemManager;
    private static NotifyHrReceiver receiver;
    private static boolean receiverRegistered;
    private static boolean sessionActive;
    private static boolean bandConnected;
    private static int lastHr = -1;
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
        boolean anyRunning = isAnyTrainingRunning();
        if (anyRunning && !sessionActive) {
            startSession(context);
        } else if (!anyRunning && sessionActive) {
            stopSession(context);
        }
        WearableSyncHelper.onTrainingRunningChanged(anyRunning);
    }

    public static void onTrainingFullStop() {
        Context context = WearableSyncHelper.getContext();
        if (context == null) {
            sessionActive = false;
            WearableSyncHelper.onTrainingRunningChanged(false);
            return;
        }
        stopSession(context);
        WearableSyncHelper.onTrainingRunningChanged(false);
    }

    public static void requestConnect() {
        Context context = WearableSyncHelper.getContext();
        if (context != null) {
            sendNotifyIntent(context, ACTION_CONNECT);
        }
    }

    static void onHeartRate(int hr) {
        if (!sessionActive || hr < 40 || hr > 220) {
            return;
        }
        lastHr = hr;
        WearableSyncHelper.updateHeartRate(hr, bandConnected);
        Context context = WearableSyncHelper.getContext();
        if (context != null && WearableConfig.isAutoReduceEnabled(context)) {
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

    static boolean isSessionActive() {
        return sessionActive;
    }

    static int getLastHeartRate() {
        return lastHr;
    }

    static boolean isBandConnected() {
        return bandConnected;
    }

    private static void startSession(Context context) {
        registerReceiver(context);
        sendNotifyIntent(context, ACTION_CONNECT);
        sendNotifyIntent(context, ACTION_HR_ENABLE);
        sessionActive = true;
        lastHr = -1;
        WearableSyncHelper.updateHeartRate(-1, bandConnected);
    }

    private static void stopSession(Context context) {
        sendNotifyIntent(context, ACTION_HR_DISABLE);
        unregisterReceiver(context);
        sessionActive = false;
        lastHr = -1;
        WearableSyncHelper.updateHeartRate(-1, bandConnected);
    }

    private static void registerReceiver(Context context) {
        if (receiverRegistered) {
            return;
        }
        if (receiver == null) {
            receiver = new NotifyHrReceiver();
        }
        IntentFilter filter = new IntentFilter();
        filter.addAction(NotifyHrReceiver.ACTION_HEART_RATE);
        filter.addAction(NotifyHrReceiver.ACTION_CONNECTED);
        filter.addAction(NotifyHrReceiver.ACTION_DISCONNECTED);
        if (Build.VERSION.SDK_INT >= 33) {
            context.registerReceiver(receiver, filter, RECEIVER_EXPORTED_FLAG);
        } else {
            context.registerReceiver(receiver, filter);
        }
        receiverRegistered = true;
    }

    private static void unregisterReceiver(Context context) {
        if (!receiverRegistered || receiver == null) {
            return;
        }
        try {
            context.unregisterReceiver(receiver);
        } catch (Throwable ignored) {
        }
        receiverRegistered = false;
    }

    static void sendNotifyIntent(Context context, String action) {
        Intent intent = new Intent(action);
        intent.setPackage(NOTIFY_PACKAGE);
        String password = WearableConfig.getTaskerPassword(context);
        if (password != null && password.length() > 0) {
            intent.putExtra("password", password);
        }
        context.sendBroadcast(intent);
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
