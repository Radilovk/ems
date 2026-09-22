package com.isaigu.gymapp.wearable;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.train.TrainItemManager;
import com.isaigu.gymapp.train.model.TrainItem;

import java.util.List;

/**
 * Bridges XEMS training lifecycle to Notify for Xiaomi Tasker intents.
 * Shows live HR on the train screen master sidebar while any row is running.
 */
public final class NotifyWearableBridge {
    public static final String NOTIFY_PACKAGE = "com.mc.xiaomi1";
    public static final String ACTION_HR_ENABLE = "com.mc.xiaomi.taskerHeartEnable";
    public static final String ACTION_HR_DISABLE = "com.mc.xiaomi.taskerHeartDisable";
    public static final String ACTION_CONNECT = "com.mc.xiaomi.connectToBand";

    static final int RIGHT_LAYOUT_ID = 0x7f090155;
    static final int HR_LABEL_ID = 0x7f090296;

    private static final long AUTO_REDUCE_COOLDOWN_MS = 10000L;
    /** {@link Context#RECEIVER_EXPORTED} — API 33+, not in compile SDK 30. */
    private static final int RECEIVER_EXPORTED_FLAG = 0x2;

    private static View panelRoot;
    private static TrainItemManager itemManager;
    private static TextView hrLabel;
    private static Handler mainHandler;
    private static NotifyHrReceiver receiver;
    private static boolean receiverRegistered;
    private static boolean sessionActive;
    private static boolean bandConnected;
    private static int lastHr = -1;
    private static long lastAutoReduceMs;

    private NotifyWearableBridge() {}

    public static void attachMasterPanel(View root, TrainItemManager manager) {
        if (root == null || manager == null) {
            return;
        }
        panelRoot = root;
        itemManager = manager;
        ensureHrLabel(root);
    }

    public static void syncTrainingState() {
        Context context = getContext();
        if (context == null || !WearableConfig.isEnabled(context)) {
            return;
        }
        boolean anyRunning = isAnyTrainingRunning();
        if (anyRunning && !sessionActive) {
            startSession(context);
        } else if (!anyRunning && sessionActive) {
            stopSession(context);
        }
    }

    public static void onTrainingFullStop() {
        Context context = getContext();
        if (context == null) {
            sessionActive = false;
            return;
        }
        stopSession(context);
    }

    static void onHeartRate(int hr) {
        if (!sessionActive || hr < 40 || hr > 220) {
            return;
        }
        lastHr = hr;
        postUi(new UpdateHrRunnable(hr));
        Context context = getContext();
        if (context != null && WearableConfig.isAutoReduceEnabled(context)) {
            maybeAutoReduce(hr);
        }
    }

    static void onBandConnected() {
        bandConnected = true;
        postUi(new UpdateStatusRunnable());
    }

    static void onBandDisconnected() {
        bandConnected = false;
        postUi(new UpdateStatusRunnable());
    }

    private static void startSession(Context context) {
        ensureHrLabel(panelRoot);
        registerReceiver(context);
        sendNotifyIntent(context, ACTION_CONNECT);
        sendNotifyIntent(context, ACTION_HR_ENABLE);
        sessionActive = true;
        lastHr = -1;
        postUi(new UpdateHrRunnable(-1));
    }

    private static void stopSession(Context context) {
        sendNotifyIntent(context, ACTION_HR_DISABLE);
        unregisterReceiver(context);
        sessionActive = false;
        lastHr = -1;
        postUi(new UpdateHrRunnable(-1));
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

    private static void sendNotifyIntent(Context context, String action) {
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
        if (hr <= WearableConfig.getHrThreshold(getContext())
                || now - lastAutoReduceMs < AUTO_REDUCE_COOLDOWN_MS) {
            return;
        }
        lastAutoReduceMs = now;
        reduceStrengthOnRunningItems();
    }

    private static void reduceStrengthOnRunningItems() {
        if (itemManager == null) {
            return;
        }
        int step = WearableConfig.getStrengthStep(getContext());
        try {
            List<TrainItem> items = itemManager.getItemList();
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

    private static void ensureHrLabel(View root) {
        if (root == null) {
            return;
        }
        View existing = root.findViewById(HR_LABEL_ID);
        if (existing instanceof TextView) {
            hrLabel = (TextView) existing;
            return;
        }
        View sidebar = root.findViewById(RIGHT_LAYOUT_ID);
        if (!(sidebar instanceof LinearLayout)) {
            return;
        }
        LinearLayout column = (LinearLayout) sidebar;
        Context context = root.getContext();
        TextView label = new TextView(context);
        label.setId(HR_LABEL_ID);
        label.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14f);
        label.setTypeface(Typeface.DEFAULT_BOLD);
        label.setTextColor(Color.WHITE);
        label.setGravity(Gravity.CENTER);
        label.setPadding(4, 8, 4, 8);
        label.setText("--");
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        params.gravity = Gravity.CENTER_HORIZONTAL;
        column.addView(label, 0, params);
        hrLabel = label;
        updateHrLabel(-1);
    }

    private static void updateHrLabel(int hr) {
        if (hrLabel == null) {
            return;
        }
        if (!sessionActive) {
            hrLabel.setText("--");
            hrLabel.setTextColor(0xFFAAAAAA);
            return;
        }
        if (hr > 0) {
            hrLabel.setText(hr + " bpm");
            hrLabel.setTextColor(bandConnected ? 0xFFFF6B6B : 0xFFFFCC66);
        } else {
            hrLabel.setText("♥ ...");
            hrLabel.setTextColor(bandConnected ? 0xFFFFCC66 : 0xFFAAAAAA);
        }
    }

    private static Context getContext() {
        return panelRoot != null ? panelRoot.getContext() : null;
    }

    private static void postUi(Runnable runnable) {
        if (mainHandler == null) {
            mainHandler = new Handler(Looper.getMainLooper());
        }
        mainHandler.post(runnable);
    }

    private static final class UpdateHrRunnable implements Runnable {
        private final int hr;

        UpdateHrRunnable(int hr) {
            this.hr = hr;
        }

        @Override
        public void run() {
            updateHrLabel(hr);
        }
    }

    private static final class UpdateStatusRunnable implements Runnable {
        @Override
        public void run() {
            updateHrLabel(lastHr);
        }
    }
}
