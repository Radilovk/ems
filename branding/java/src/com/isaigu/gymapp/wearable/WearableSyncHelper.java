package com.isaigu.gymapp.wearable;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;

import com.isaigu.gymapp.MainActivity;
import com.isaigu.gymapp.dialog.ModalInfoHelper;
import com.isaigu.gymapp.train.TrainItemManager;
import com.isaigu.gymapp.widget.TimerRingView;

/**
 * Wearable sync UI: config modal + floating HR dial (same pattern as interval timer).
 */
public final class WearableSyncHelper {
    static final int BUTTON_ID = 0x7f090297;
    static final int DIALOG_LAYOUT_ID = 0x7f0b007e;
    static final int OVERLAY_LAYOUT_ID = 0x7f0b007f;
    static final int RIGHT_LAYOUT_ID = 0x7f090155;

    private static final int ID_STATUS = 0x7f09029f;
    private static final int ID_ENABLED = 0x7f0902a0;
    private static final int ID_AUTO_REDUCE = 0x7f0902a1;
    private static final int ID_THRESHOLD = 0x7f0902a2;
    private static final int ID_STEP = 0x7f0902a3;
    private static final int ID_ACTIVATE = 0x7f0902a4;
    private static final int ID_CONNECT = 0x7f0902a5;
    private static final int ID_INFO = 0x7f0902a6;
    private static final int ID_RING = 0x7f09029a;
    private static final int ID_HR_VALUE = 0x7f09029b;
    private static final int ID_SUB_LABEL = 0x7f09029c;
    private static final int ID_CLOSE = 0x7f09029d;
    private static final int ID_OVERLAY_INFO = 0x7f09029e;
    private static final int ID_DIAL_HOST = 0x7f090299;

    private static final int STR_TITLE = 0x7f0d0177;
    private static final int STR_STATUS_IDLE = 0x7f0d0178;
    private static final int STR_STATUS_ARMED = 0x7f0d0179;
    private static final int STR_STATUS_ACTIVE = 0x7f0d017a;
    private static final int STR_STATUS_WAITING = 0x7f0d017b;
    private static final int STR_STATUS_DISCONNECTED = 0x7f0d017c;
    private static final int STR_BPM = 0x7f0d017d;
    private static final int STR_ENABLED = 0x7f0d017e;
    private static final int STR_AUTO_REDUCE = 0x7f0d017f;
    private static final int STR_THRESHOLD = 0x7f0d0180;
    private static final int STR_STEP = 0x7f0d0181;
    private static final int STR_CONNECT = 0x7f0d0182;
    private static final int STR_ACTIVATE = 0x7f0d0183;
    private static final int STR_INFO_TITLE = 0x7f0d0184;
    private static final int STR_INFO_BODY = 0x7f0d0185;
    private static final int STR_TOAST_ARMED = 0x7f0d0186;
    private static final int STR_NOTIFY_MISSING = 0x7f0d0187;
    private static final int STR_STATUS_LISTENING = 0x7f0d0188;
    private static final int STR_STATUS_CONNECTED = 0x7f0d0189;

    private static final int OPAQUE_DIALOG_BG = 0x7f080069;
    private static final int CONFIG_DIALOG_WIDTH_DP = 480;
    private static final int OVERLAY_SIZE_DP = 192;
    private static final int OVERLAY_CONTROL_BTN_DP = 45;
    private static final int OVERLAY_BTN_OUTSIDE_GAP_DP = 5;
    private static final int OVERLAY_FRAME_DP = OVERLAY_SIZE_DP
            + 2 * (OVERLAY_BTN_OUTSIDE_GAP_DP + OVERLAY_CONTROL_BTN_DP);
    private static final int OVERLAY_ROW_Y_DP = 300;
    private static final int OVERLAY_SIDEBAR_GAP_DP = 40;
    private static final float SIDEBAR_WIDTH_WEIGHT = 0.7f;
    private static final float CONTENT_WIDTH_WEIGHT = 10.0f;
    private static final float BTN_ANGLE_CLOSE = 45f;
    private static final float BTN_ANGLE_CONNECT = 90f;
    private static final float BTN_ANGLE_INFO = 135f;
    private static final float COUNTDOWN_TEXT_SP = 54f;
    private static final float OVERLAY_TAP_SLOP_DP = 10f;

    private static android.support.v7.app.AlertDialog configDialog;
    private static android.support.v7.app.AlertDialog overlayDialog;
    private static View configContent;
    private static View overlayContent;
    private static View panelRoot;
    private static TrainItemManager itemManager;
    private static TextView statusView;
    private static Switch enabledSwitch;
    private static Switch autoReduceSwitch;
    private static EditText thresholdView;
    private static EditText stepView;
    private static TimerRingView ringView;
    private static TextView hrValueView;
    private static TextView subLabelView;

    private static boolean overlayVisible;
    private static boolean trainingRunning;
    private static int displayedHr = -1;
    private static int displayedBattery = -1;
    private static boolean bandConnected;

    private static float overlayTouchDx;
    private static float overlayTouchDy;
    private static float overlayDownRawX;
    private static float overlayDownRawY;
    private static boolean overlayMoved;

    private static final Handler handler = new Handler(Looper.getMainLooper());

    private WearableSyncHelper() {}

    public static void attachMasterPanel(View root, TrainItemManager manager) {
        if (root == null || manager == null) {
            return;
        }
        panelRoot = root;
        itemManager = manager;
        View button = root.findViewById(BUTTON_ID);
        if (button == null) {
            return;
        }
        button.setClickable(true);
        button.setEnabled(true);
        button.setFocusable(true);
        button.setOnClickListener(new MasterOpenListener());
    }

    public static void onTrainingRunningChanged(boolean running) {
        trainingRunning = running;
        updateOverlayVisibility();
        refreshStatusText();
        refreshOverlayDisplay();
    }

    public static void updateHeartRate(int hr, boolean connected) {
        displayedHr = hr;
        bandConnected = connected;
        handler.post(new RefreshOverlayRunnable());
    }

    public static void updateBattery(int level) {
        displayedBattery = level;
        handler.post(new RefreshOverlayRunnable());
    }

    public static void showNotifyMissing() {
        Activity activity = resolveActivity(null);
        if (activity == null) {
            return;
        }
        handler.post(new Runnable() {
            @Override
            public void run() {
                toast(activity, STR_NOTIFY_MISSING);
            }
        });
    }

    static Context getContext() {
        return panelRoot != null ? panelRoot.getContext() : null;
    }

    static TrainItemManager getItemManager() {
        return itemManager;
    }

    private static void toggleMasterPanel() {
        Activity activity = resolveActivity(null);
        if (activity == null) {
            return;
        }
        if (configDialog != null) {
            try {
                if (configDialog.isShowing()) {
                    dismissConfigDialog(false);
                    return;
                }
            } catch (Throwable ignored) {
            }
        }
        showConfigDialog(activity);
    }

    private static void showConfigDialog(Activity activity) {
        if (activity == null || activity.isFinishing()) {
            return;
        }
        dismissConfigDialog(false);
        View content;
        try {
            content = LayoutInflater.from(activity).inflate(DIALOG_LAYOUT_ID, null);
        } catch (Throwable t) {
            toast(activity, STR_STATUS_IDLE);
            return;
        }
        configContent = content;
        statusView = (TextView) content.findViewById(ID_STATUS);
        enabledSwitch = (Switch) content.findViewById(ID_ENABLED);
        autoReduceSwitch = (Switch) content.findViewById(ID_AUTO_REDUCE);
        thresholdView = (EditText) content.findViewById(ID_THRESHOLD);
        stepView = (EditText) content.findViewById(ID_STEP);
        bindButton(content.findViewById(ID_CONNECT), new ConnectListener());
        bindButton(content.findViewById(ID_INFO), new ConfigInfoListener());
        bindButton(content.findViewById(ID_ACTIVATE), new ActivateListener());
        loadConfigIntoUi(activity);
        refreshStatusText();
        android.support.v7.app.AlertDialog.Builder builder =
                new android.support.v7.app.AlertDialog.Builder(activity);
        builder.setView(content);
        builder.setOnDismissListener(new ConfigDismissListener());
        configDialog = builder.create();
        configDialog.setCancelable(true);
        configDialog.setCanceledOnTouchOutside(true);
        applyOpaqueWindow(configDialog);
        try {
            Window window = configDialog.getWindow();
            if (window != null) {
                window.setLayout(dp(activity, CONFIG_DIALOG_WIDTH_DP),
                        WindowManager.LayoutParams.WRAP_CONTENT);
                window.setGravity(Gravity.CENTER);
            }
        } catch (Throwable ignored) {
        }
        configDialog.show();
    }

    private static void armFromConfig() {
        Activity activity = resolveActivity(null);
        if (activity == null) {
            return;
        }
        saveConfigFromUi(activity);
        WearableConfig.setArmed(activity, true);
        overlayVisible = true;
        refreshStatusText();
        if (!showOverlayDialog()) {
            toast(activity, STR_STATUS_IDLE);
            return;
        }
        toast(activity, STR_TOAST_ARMED);
        NotifyWearableBridge.requestConnect();
        refreshOverlayDisplay();
        dismissConfigDialog(false);
    }

    private static boolean showOverlayDialog() {
        Activity activity = resolveActivity(null);
        if (activity == null || activity.isFinishing()) {
            return false;
        }
        dismissOverlayDialog(false);
        View content;
        try {
            content = LayoutInflater.from(activity).inflate(OVERLAY_LAYOUT_ID, null);
        } catch (Throwable t) {
            return false;
        }
        overlayContent = content;
        ringView = (TimerRingView) content.findViewById(ID_RING);
        hrValueView = (TextView) content.findViewById(ID_HR_VALUE);
        subLabelView = (TextView) content.findViewById(ID_SUB_LABEL);
        bindButton(content.findViewById(ID_CLOSE), new CloseOverlayListener());
        bindButton(content.findViewById(ID_CONNECT), new OverlayConnectListener());
        bindButton(content.findViewById(ID_OVERLAY_INFO), new OverlayInfoListener());
        layoutDialControlButtons(activity, content);
        int overlayHeightPx = dp(activity, OVERLAY_FRAME_DP);
        int overlayWidthPx = dp(activity, OVERLAY_FRAME_DP);
        try {
            if (ringView != null) {
                ringView.setMaxDiameterDp(OVERLAY_SIZE_DP);
            }
            if (hrValueView != null) {
                hrValueView.setTextSize(TypedValue.COMPLEX_UNIT_SP, COUNTDOWN_TEXT_SP);
                hrValueView.setTypeface(hrValueView.getTypeface(), android.graphics.Typeface.BOLD);
            }
        } catch (Throwable ignored) {
        }
        View dialHost = content.findViewById(ID_DIAL_HOST);
        if (dialHost != null) {
            dialHost.setClickable(true);
            dialHost.setFocusable(false);
            dialHost.setOnTouchListener(new OverlayDragListener());
        }
        FrameLayout wrapper = new FrameLayout(activity);
        wrapper.setClipChildren(true);
        wrapper.addView(content,
                new FrameLayout.LayoutParams(overlayWidthPx, overlayHeightPx));
        try {
            android.support.v7.app.AlertDialog.Builder builder =
                    new android.support.v7.app.AlertDialog.Builder(activity);
            builder.setView(wrapper);
            overlayDialog = builder.create();
            overlayDialog.setCancelable(false);
            overlayDialog.setCanceledOnTouchOutside(false);
            overlayDialog.show();
            Window window = overlayDialog.getWindow();
            if (window == null) {
                return false;
            }
            window.setBackgroundDrawableResource(android.R.color.transparent);
            window.setGravity(Gravity.TOP | Gravity.START);
            window.setLayout(overlayWidthPx, overlayHeightPx);
            WindowManager.LayoutParams lp = window.getAttributes();
            lp.width = overlayWidthPx;
            lp.height = overlayHeightPx;
            lp.x = resolveOverlayX(activity, overlayWidthPx);
            lp.y = dp(activity, OVERLAY_ROW_Y_DP);
            lp.dimAmount = 0f;
            lp.flags = (lp.flags
                    | WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE
                    | WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL)
                    & ~WindowManager.LayoutParams.FLAG_DIM_BEHIND;
            window.clearFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND);
            window.setAttributes(lp);
            refreshOverlayDisplay();
            updateOverlayVisibility();
            return true;
        } catch (Throwable t) {
            overlayDialog = null;
            overlayContent = null;
            ringView = null;
            hrValueView = null;
            subLabelView = null;
            return false;
        }
    }

    private static void refreshOverlayDisplay() {
        if (hrValueView == null) {
            return;
        }
        Activity activity = resolveActivity(null);
        Context context = activity != null ? activity : getContext();
        int threshold = context != null ? WearableConfig.getHrThreshold(context) : 170;
        if (!NotifyWearableBridge.isListeningActive()) {
            hrValueView.setText("--");
            hrValueView.setTextColor(0xFFAAAAAA);
            if (subLabelView != null && activity != null) {
                subLabelView.setText(activity.getString(STR_BPM));
            }
            if (ringView != null) {
                ringView.setElapsedFraction(0f);
            }
            return;
        }
        if (displayedHr > 0) {
            hrValueView.setText(String.valueOf(displayedHr));
            float fraction = threshold > 0 ? displayedHr / (float) threshold : 0f;
            if (fraction > 1f) {
                fraction = 1f;
            }
            hrValueView.setTextColor(colorForHeartRate(fraction));
            if (ringView != null) {
                ringView.setElapsedFraction(fraction);
                ringView.invalidate();
            }
            if (subLabelView != null && activity != null) {
                subLabelView.setText(buildSubLabel(activity));
            }
        } else {
            hrValueView.setText("...");
            hrValueView.setTextColor(bandConnected ? 0xFFFFCC66 : 0xFFAAAAAA);
            if (ringView != null) {
                ringView.setElapsedFraction(0f);
            }
            if (subLabelView != null && activity != null) {
                subLabelView.setText(bandConnected
                        ? activity.getString(STR_STATUS_WAITING)
                        : activity.getString(STR_STATUS_DISCONNECTED));
            }
        }
    }

    private static String buildSubLabel(Activity activity) {
        String bpm = activity.getString(STR_BPM);
        if (displayedBattery >= 0 && displayedBattery <= 100) {
            return bpm + " · " + displayedBattery + "%";
        }
        return bpm;
    }

    private static int colorForHeartRate(float fraction) {
        if (fraction <= 0.65f) {
            return 0xFF43A047;
        }
        if (fraction <= 0.85f) {
            return 0xFFFFB300;
        }
        return 0xFFE53935;
    }

    private static void updateOverlayVisibility() {
        if (overlayDialog == null) {
            return;
        }
        try {
            if (overlayVisible) {
                if (!overlayDialog.isShowing()) {
                    overlayDialog.show();
                }
            } else if (overlayDialog.isShowing()) {
                overlayDialog.hide();
            }
        } catch (Throwable ignored) {
        }
    }

    private static void refreshStatusText() {
        if (statusView == null) {
            return;
        }
        Activity activity = resolveActivity(null);
        if (activity == null) {
            return;
        }
        if (!WearableConfig.isEnabled(activity)) {
            statusView.setText(activity.getString(STR_STATUS_IDLE));
            return;
        }
        if (NotifyWearableBridge.isListeningActive()) {
            if (bandConnected) {
                statusView.setText(activity.getString(STR_STATUS_CONNECTED));
            } else {
                statusView.setText(activity.getString(STR_STATUS_LISTENING));
            }
            return;
        }
        if (trainingRunning && WearableConfig.isArmed(activity)) {
            statusView.setText(activity.getString(STR_STATUS_ACTIVE));
            return;
        }
        if (WearableConfig.isArmed(activity)) {
            statusView.setText(activity.getString(STR_STATUS_ARMED));
            return;
        }
        statusView.setText(activity.getString(STR_STATUS_IDLE));
    }

    private static void loadConfigIntoUi(Activity activity) {
        if (activity == null) {
            return;
        }
        if (enabledSwitch != null) {
            enabledSwitch.setChecked(WearableConfig.isEnabled(activity));
        }
        if (autoReduceSwitch != null) {
            autoReduceSwitch.setChecked(WearableConfig.isAutoReduceEnabled(activity));
        }
        if (thresholdView != null) {
            thresholdView.setText(String.valueOf(WearableConfig.getHrThreshold(activity)));
        }
        if (stepView != null) {
            stepView.setText(String.valueOf(WearableConfig.getStrengthStep(activity)));
        }
        overlayVisible = WearableConfig.isArmed(activity);
        if (overlayVisible && NotifyWearableBridge.isNotifyInstalled(activity)) {
            NotifyWearableBridge.beginListening(activity);
        }
    }

    private static void saveConfigFromUi(Activity activity) {
        if (activity == null) {
            return;
        }
        if (enabledSwitch != null) {
            WearableConfig.setEnabled(activity, enabledSwitch.isChecked());
        }
        if (autoReduceSwitch != null) {
            WearableConfig.setAutoReduceEnabled(activity, autoReduceSwitch.isChecked());
        }
        if (thresholdView != null) {
            WearableConfig.setHrThreshold(activity, readIntField(thresholdView, 170, 80, 220));
        }
        if (stepView != null) {
            WearableConfig.setStrengthStep(activity, readIntField(stepView, 5, 1, 20));
        }
    }

    private static int readIntField(EditText view, int fallback, int min, int max) {
        if (view == null) {
            return fallback;
        }
        try {
            int value = Integer.parseInt(view.getText().toString().trim());
            if (value < min) {
                return min;
            }
            if (value > max) {
                return max;
            }
            return value;
        } catch (Throwable ignored) {
            return fallback;
        }
    }

    private static void openOverlaySettings() {
        Activity activity = resolveActivity(null);
        if (activity == null) {
            return;
        }
        showConfigDialog(activity);
    }

    private static void dismissConfigDialog(boolean fromDismissListener) {
        if (configDialog != null) {
            try {
                configDialog.dismiss();
            } catch (Throwable ignored) {
            }
            if (!fromDismissListener) {
                configDialog = null;
                configContent = null;
                statusView = null;
                enabledSwitch = null;
                autoReduceSwitch = null;
                thresholdView = null;
                stepView = null;
            }
        }
    }

    private static void dismissOverlayDialog(boolean fromDismissListener) {
        if (overlayDialog != null) {
            try {
                overlayDialog.dismiss();
            } catch (Throwable ignored) {
            }
            if (!fromDismissListener) {
                overlayDialog = null;
                overlayContent = null;
                ringView = null;
                hrValueView = null;
                subLabelView = null;
            }
        }
    }

    private static void applyOpaqueWindow(android.support.v7.app.AlertDialog dialog) {
        if (dialog == null || dialog.getWindow() == null) {
            return;
        }
        try {
            dialog.getWindow().setBackgroundDrawableResource(OPAQUE_DIALOG_BG);
        } catch (Throwable ignored) {
        }
    }

    private static void moveOverlayWindow(int x, int y) {
        if (overlayDialog == null || overlayDialog.getWindow() == null) {
            return;
        }
        try {
            WindowManager.LayoutParams lp = overlayDialog.getWindow().getAttributes();
            lp.x = x;
            lp.y = y;
            overlayDialog.getWindow().setAttributes(lp);
        } catch (Throwable ignored) {
        }
    }

    private static int resolveOverlayX(Activity activity, int overlayWidthPx) {
        int gapPx = dp(activity, OVERLAY_SIDEBAR_GAP_DP);
        View sidebar = panelRoot != null ? panelRoot.findViewById(RIGHT_LAYOUT_ID) : null;
        if (sidebar != null && sidebar.getWidth() > 0) {
            int[] loc = new int[2];
            sidebar.getLocationOnScreen(loc);
            return Math.max(0, loc[0] - overlayWidthPx - gapPx);
        }
        int screenWidth = activity.getResources().getDisplayMetrics().widthPixels;
        float totalWeight = CONTENT_WIDTH_WEIGHT + SIDEBAR_WIDTH_WEIGHT;
        int sidebarEstimatePx = Math.round(screenWidth * SIDEBAR_WIDTH_WEIGHT / totalWeight);
        return Math.max(0, screenWidth - sidebarEstimatePx - overlayWidthPx - gapPx);
    }

    private static void layoutDialControlButtons(Activity activity, View root) {
        if (activity == null || root == null) {
            return;
        }
        View closeBtn = root.findViewById(ID_CLOSE);
        View connectBtn = root.findViewById(ID_CONNECT);
        View infoBtn = root.findViewById(ID_OVERLAY_INFO);
        int framePx = dp(activity, OVERLAY_FRAME_DP);
        int dialPx = dp(activity, OVERLAY_SIZE_DP);
        int btnPx = dp(activity, OVERLAY_CONTROL_BTN_DP);
        float gapPx = dp(activity, OVERLAY_BTN_OUTSIDE_GAP_DP);
        float radius = (dialPx / 2f) + gapPx + (btnPx / 2f);
        float cx = framePx / 2f;
        float cy = framePx / 2f;
        placeDialButton(closeBtn, BTN_ANGLE_CLOSE, cx, cy, radius, btnPx);
        placeDialButton(connectBtn, BTN_ANGLE_CONNECT, cx, cy, radius, btnPx);
        placeDialButton(infoBtn, BTN_ANGLE_INFO, cx, cy, radius, btnPx);
    }

    private static void placeDialButton(
            View button, float angleDeg, float cx, float cy, float radius, int btnPx) {
        if (!(button instanceof TextView)) {
            return;
        }
        double rad = Math.toRadians(angleDeg);
        float x = cx + (float) (radius * Math.sin(rad)) - (btnPx / 2f);
        float y = cy - (float) (radius * Math.cos(rad)) - (btnPx / 2f);
        FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(btnPx, btnPx);
        lp.leftMargin = Math.max(0, (int) x);
        lp.topMargin = Math.max(0, (int) y);
        button.setLayoutParams(lp);
    }

    private static Activity resolveActivity(View view) {
        Context ctx = view != null ? view.getContext() : null;
        if (ctx == null) {
            ctx = overlayContent != null ? overlayContent.getContext() : null;
        }
        if (ctx == null) {
            ctx = panelRoot != null ? panelRoot.getContext() : null;
        }
        while (ctx instanceof android.content.ContextWrapper) {
            if (ctx instanceof Activity) {
                return (Activity) ctx;
            }
            ctx = ((android.content.ContextWrapper) ctx).getBaseContext();
        }
        if (ctx instanceof Activity) {
            return (Activity) ctx;
        }
        try {
            if (ctx instanceof MainActivity) {
                return (MainActivity) ctx;
            }
        } catch (Throwable ignored) {
        }
        return null;
    }

    private static int dp(Activity activity, int value) {
        if (activity == null) {
            return value;
        }
        float density = activity.getResources().getDisplayMetrics().density;
        return (int) (value * density + 0.5f);
    }

    private static void bindButton(View view, View.OnClickListener listener) {
        if (view == null) {
            return;
        }
        view.setClickable(true);
        view.setOnClickListener(listener);
    }

    private static void toast(Activity activity, int resId) {
        if (activity == null) {
            return;
        }
        try {
            Toast.makeText(activity, resId, Toast.LENGTH_SHORT).show();
        } catch (Throwable ignored) {
        }
    }

    private static void showInfo(Activity activity) {
        if (activity == null) {
            return;
        }
        ModalInfoHelper.show(activity, STR_INFO_TITLE, STR_INFO_BODY);
    }

    private static final class RefreshOverlayRunnable implements Runnable {
        @Override
        public void run() {
            refreshOverlayDisplay();
        }
    }

    static final class MasterOpenListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            toggleMasterPanel();
        }
    }

    static final class ActivateListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            armFromConfig();
        }
    }

    static final class ConnectListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            NotifyWearableBridge.requestConnect();
            toast(resolveActivity(v), STR_CONNECT);
        }
    }

    static final class ConfigInfoListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            showInfo(resolveActivity(v));
        }
    }

    static final class OverlayConnectListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            NotifyWearableBridge.requestConnect();
            toast(resolveActivity(v), STR_CONNECT);
        }
    }

    static final class OverlayInfoListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            showInfo(resolveActivity(v));
        }
    }

    static final class CloseOverlayListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            Activity activity = resolveActivity(v);
            overlayVisible = false;
            if (activity != null) {
                WearableConfig.setArmed(activity, false);
                NotifyWearableBridge.stopListening(activity);
            }
            dismissOverlayDialog(false);
            refreshStatusText();
        }
    }

    static final class ConfigDismissListener
            implements android.content.DialogInterface.OnDismissListener {
        @Override
        public void onDismiss(android.content.DialogInterface dialog) {
            Activity activity = resolveActivity(null);
            if (activity != null) {
                saveConfigFromUi(activity);
            }
            configDialog = null;
            configContent = null;
            statusView = null;
            enabledSwitch = null;
            autoReduceSwitch = null;
            thresholdView = null;
            stepView = null;
        }
    }

    static final class OverlayDragListener implements View.OnTouchListener {
        @Override
        public boolean onTouch(View v, MotionEvent event) {
            if (overlayDialog == null || overlayDialog.getWindow() == null) {
                return false;
            }
            WindowManager.LayoutParams lp = overlayDialog.getWindow().getAttributes();
            switch (event.getActionMasked()) {
                case MotionEvent.ACTION_DOWN:
                    overlayTouchDx = event.getRawX() - lp.x;
                    overlayTouchDy = event.getRawY() - lp.y;
                    overlayDownRawX = event.getRawX();
                    overlayDownRawY = event.getRawY();
                    overlayMoved = false;
                    return true;
                case MotionEvent.ACTION_MOVE: {
                    float dx = event.getRawX() - overlayDownRawX;
                    float dy = event.getRawY() - overlayDownRawY;
                    Activity activity = resolveActivity(null);
                    float slop = activity != null
                            ? (float) dp(activity, (int) OVERLAY_TAP_SLOP_DP)
                            : 24f;
                    if ((dx * dx) + (dy * dy) > slop * slop) {
                        overlayMoved = true;
                    }
                    moveOverlayWindow(
                            (int) (event.getRawX() - overlayTouchDx),
                            (int) (event.getRawY() - overlayTouchDy));
                    return true;
                }
                case MotionEvent.ACTION_UP:
                    if (!overlayMoved) {
                        openOverlaySettings();
                    }
                    return true;
                case MotionEvent.ACTION_CANCEL:
                    return true;
                default:
                    return false;
            }
        }
    }
}
