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
    private static final int ID_OPEN_GB = 0x7f0902a8;
    private static final int ID_BAND_MAC = 0x7f0902a9;
    private static final int ID_AUTH_KEY = 0x7f0902aa;
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
    private static final int STR_GB_MISSING = 0x7f0d0187;
    private static final int STR_OPEN_GB = 0x7f0d0194;
    private static final int STR_BAND_MAC = 0x7f0d0195;
    private static final int STR_DIAG_GB = 0x7f0d0196;
    private static final int STR_STATUS_GB_LISTENING = 0x7f0d0197;
    private static final int STR_DIAG_GB_META = 0x7f0d0198;
    private static final int STR_DIAG_GB_HINT = 0x7f0d0199;
    private static final int STR_AUTH_KEY = 0x7f0d019a;
    private static final int STR_STATUS_BLE = 0x7f0d019b;
    private static final int STR_DIAG_BLE = 0x7f0d019c;
    private static final int STR_BT_PERMISSION = 0x7f0d019d;
    private static final int STR_STATUS_BT_PERM = 0x7f0d019e;

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
    private static EditText bandMacView;
    private static EditText authKeyView;
    private static TimerRingView ringView;
    private static TextView hrValueView;
    private static TextView subLabelView;

    private static boolean overlayVisible;
    private static boolean trainingRunning;
    private static int displayedHr = -1;
    private static boolean bandConnected;

    private static float overlayTouchDx;
    private static float overlayTouchDy;
    private static float overlayDownRawX;
    private static float overlayDownRawY;
    private static boolean overlayMoved;

    private static final Handler handler = new Handler(Looper.getMainLooper());

    private WearableSyncHelper() {}

    public static void attachMasterPanel(View root, TrainItemManager manager) {
        try {
            attachMasterPanelImpl(root, manager);
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("WearableSyncHelper.attachMasterPanel", t);
        }
    }

    private static void attachMasterPanelImpl(View root, TrainItemManager manager) {
        if (root == null || manager == null) {
            return;
        }
        dismissStaleUi();
        panelRoot = root;
        itemManager = manager;
        try {
            com.isaigu.gymapp.ai.AiSession.attach(root, manager);
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("AiSession.attach", t);
        }
        // Module buttons live in the bottom bar now (XemsNav); the sidebar copies are hidden.
        com.isaigu.gymapp.widget.XemsNav.onTrainingPanel(root);
        View button = root.findViewById(BUTTON_ID);
        if (button == null) {
            return;
        }
        button.setClickable(true);
        button.setEnabled(true);
        button.setFocusable(true);
        button.bringToFront();
        button.setOnClickListener(new MasterOpenListener());
        onTrainingHostReady();
    }

    /** Restore dial UI after activity recreate; do not auto-connect BLE (EMS needs Bluetooth). */
    public static void onTrainingHostReady() {
        Activity activity = resolveActivity(null);
        if (activity == null || !WearableConfig.isEnabled(activity)) {
            return;
        }
        if (!WearableConfig.isArmed(activity)) {
            overlayVisible = false;
            return;
        }
        overlayVisible = true;
        handler.post(new Runnable() {
            @Override
            public void run() {
                Activity act = resolveActivity(null);
                if (act == null || act.isFinishing()) {
                    return;
                }
                try {
                    if (overlayDialog == null || !overlayDialog.isShowing()) {
                        showOverlayDialog();
                    }
                } catch (Throwable t) {
                    com.isaigu.gymapp.widget.XemsGuard.report("WearableSyncHelper.showDial", t);
                }
            }
        });
    }

    /** Tear down floating UI refs when training host is destroyed; keep BLE if user armed dial. */
    public static void detachTrainingHost() {
        try {
            detachTrainingHostImpl();
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("WearableSyncHelper.detachTrainingHost", t);
        }
    }

    private static void detachTrainingHostImpl() {
        dismissStaleUi();
        panelRoot = null;
        itemManager = null;
    }

    private static void dismissStaleUi() {
        if (overlayDialog != null) {
            try {
                overlayDialog.dismiss();
            } catch (Throwable ignored) {
            }
            overlayDialog = null;
            overlayContent = null;
            ringView = null;
            hrValueView = null;
            subLabelView = null;
        }
        if (configDialog != null) {
            try {
                configDialog.dismiss();
            } catch (Throwable ignored) {
            }
            configDialog = null;
            configContent = null;
            statusView = null;
            enabledSwitch = null;
            autoReduceSwitch = null;
            thresholdView = null;
            stepView = null;
            bandMacView = null;
            authKeyView = null;
        }
    }

    public static void onTrainingRunningChanged(boolean running) {
        try {
            onTrainingRunningChangedImpl(running);
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("WearableSyncHelper.onTrainingRunningChanged", t);
        }
    }

    private static void onTrainingRunningChangedImpl(boolean running) {
        trainingRunning = running;
        updateOverlayVisibility();
        refreshStatusText();
        refreshOverlayDisplay();
    }

    public static void updateHeartRate(int hr, boolean connected) {
        try {
            updateHeartRateImpl(hr, connected);
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("WearableSyncHelper.updateHeartRate", t);
        }
    }

    private static void updateHeartRateImpl(int hr, boolean connected) {
        displayedHr = hr;
        bandConnected = connected;
        handler.post(new RefreshOverlayRunnable());
    }

    public static void updateDiagnostics() {
        try {
            updateDiagnosticsImpl();
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("WearableSyncHelper.updateDiagnostics", t);
        }
    }

    private static void updateDiagnosticsImpl() {
        handler.post(new RefreshOverlayRunnable());
    }

    public static void showAuthKeyRequired() {
        Activity activity = resolveActivity(null);
        if (activity == null) {
            return;
        }
        handler.post(new Runnable() {
            @Override
            public void run() {
                toastMessage(activity,
                        WearableUi.tr("Въведи MAC и ключа на гривната в Настройки → Гривна",
                                "Enter the band MAC and key in Settings → Band"));
            }
        });
    }

    public static void showBluetoothPermissionDenied() {
        Activity activity = resolveActivity(null);
        if (activity == null) {
            return;
        }
        if (WearableBlePermissions.hasAllBlePermissions(activity)) {
            return;
        }
        handler.post(new Runnable() {
            @Override
            public void run() {
                toast(activity, STR_BT_PERMISSION);
            }
        });
    }

    public static void toastBleError(final String message) {
        final Activity activity = resolveActivity(null);
        if (activity == null || message == null || message.length() == 0) {
            return;
        }
        handler.post(new Runnable() {
            @Override
            public void run() {
                toastMessage(activity, message);
            }
        });
    }

    static void dismissOverlayForPermissions() {
        dismissOverlayDialog(false);
        overlayVisible = false;
    }

    static Context getContext() {
        return panelRoot != null ? panelRoot.getContext() : null;
    }

    public static Activity resolveActivityForPermissions() {
        return resolveActivity(null);
    }

    public static TrainItemManager getItemManager() {
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
        // MAC and auth key live only in Settings → Band: hide their rows here.
        hideBandRows(activity, content);
        bandMacView = null;
        authKeyView = null;
        bindButton(content.findViewById(ID_CONNECT), new ConnectListener());
        bindButton(content.findViewById(ID_INFO), new ConfigInfoListener());
        bindButton(content.findViewById(ID_ACTIVATE), new ActivateListener());
        loadConfigIntoUi(activity);
        enhanceConfigDialog(activity, content);
        styleConfigDialog(activity, content);
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

    /** Same kit as timer / player / AI: pill buttons, badge status, themed fields. */
    private static void styleConfigDialog(Activity a, View content) {
        try {
            com.isaigu.gymapp.widget.XemsUi.init(a);
            View connect = content.findViewById(ID_CONNECT);
            View activate = content.findViewById(ID_ACTIVATE);
            // "Activate dial" connects the band too — a separate connect button is redundant.
            if (connect != null) {
                connect.setVisibility(View.GONE);
            }
            // The band is the only HR source: an on/off "direct BLE" switch means nothing.
            if (enabledSwitch != null) {
                enabledSwitch.setChecked(true);
                WearableConfig.setEnabled(a, true);
                if (enabledSwitch.getParent() instanceof View) {
                    ((View) enabledSwitch.getParent()).setVisibility(View.GONE);
                }
            }
            // The reduce step is the control logic's own decision (settle time, forecast).
            if (stepView != null) {
                stepView.setVisibility(View.GONE);
                if (stepView.getParent() instanceof android.view.ViewGroup) {
                    android.view.ViewGroup row = (android.view.ViewGroup) stepView.getParent();
                    int i = row.indexOfChild(stepView);
                    if (i > 0) {
                        row.getChildAt(i - 1).setVisibility(View.GONE);   // its "Step" label
                    }
                }
            }
            if (activate instanceof TextView) {
                styleKitButton((TextView) activate, com.isaigu.gymapp.widget.XemsUi.PRIMARY);
            }
            if (statusView != null) {
                statusView.setPadding(WearableUi.dp(a, 12), WearableUi.dp(a, 6), WearableUi.dp(a, 12), WearableUi.dp(a, 6));
            }
            for (EditText f : new EditText[] {thresholdView, stepView}) {
                if (f != null) {
                    f.setBackgroundDrawable(com.isaigu.gymapp.widget.XemsUi.rounded(com.isaigu.gymapp.widget.XemsUi.SURFACE,
                            WearableUi.dp(a, 12), com.isaigu.gymapp.widget.XemsUi.STROKE, WearableUi.dp(a, 1)));
                }
            }
        } catch (Throwable ignored) {
        }
    }

    private static void styleKitButton(TextView b, int style) {
        TextView model = com.isaigu.gymapp.widget.XemsUi.button(b.getContext(), "", style);
        b.setBackgroundDrawable(model.getBackground());
        b.setTextColor(model.getCurrentTextColor());
        com.isaigu.gymapp.widget.XemsUi.pressable(b);
    }

    private static void hideBandRows(Activity activity, View content) {
        View mac = content.findViewById(ID_BAND_MAC);
        View key = content.findViewById(ID_AUTH_KEY);
        android.view.ViewGroup box = null;
        for (View f : new View[] {mac, key}) {
            if (f != null && f.getParent() instanceof View) {
                View rowView = (View) f.getParent();
                rowView.setVisibility(View.GONE);
                if (rowView.getParent() instanceof android.view.ViewGroup) {
                    box = (android.view.ViewGroup) rowView.getParent();
                }
            }
        }
        if (box == null) {
            return;
        }
        // Only say something when the band still needs setting up.
        if (!WearableConfig.isConfigured(activity)) {
            TextView line = WearableUi.text(activity, WearableUi.tr(
                    "Настрой гривната: Настройки → Гривна", "Set up the band: Settings → Band"),
                    13f, WearableUi.COLOR_WAIT, true);
            box.addView(line, WearableUi.matchWrap(activity, 12));
        }
    }

    /** Band picker next to MAC, live auth-key check, "Band data" button — built in code. */
    private static void enhanceConfigDialog(Activity activity, View content) {
        if (activity == null || content == null) {
            return;
        }
        try {
            if (bandMacView != null && bandMacView.getParent() instanceof android.widget.LinearLayout) {
                android.widget.LinearLayout macRow =
                        (android.widget.LinearLayout) bandMacView.getParent();
                TextView pick = WearableUi.button(activity,
                        WearableUi.tr("Избери", "Choose"), 0xFF1565C0, 0xFFFFFFFF);
                pick.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13f);
                pick.setPadding(WearableUi.dp(activity, 12), 0, WearableUi.dp(activity, 12), 0);
                pick.setOnClickListener(new PickBandListener());
                android.widget.LinearLayout.LayoutParams lp =
                        new android.widget.LinearLayout.LayoutParams(
                                android.widget.LinearLayout.LayoutParams.WRAP_CONTENT,
                                WearableUi.dp(activity, 40));
                lp.leftMargin = WearableUi.dp(activity, 8);
                macRow.addView(pick, lp);
            }
        } catch (Throwable ignored) {
        }
        if (authKeyView != null) {
            authKeyView.setHint(WearableUi.tr("32 символа 0-9 / a-f", "32 chars 0-9 / a-f"));
            authKeyView.addTextChangedListener(new AuthKeyWatcher());
            colorAuthKey(authKeyView.getText().toString());
        }
        // Raw band data stays one tap away on the dial (i), not in this settings sheet.
    }

    private static boolean isValidAuthKey(String key) {
        String clean = key != null ? key.replace(" ", "").replace(":", "").replace("-", "") : "";
        if (clean.startsWith("0x") || clean.startsWith("0X")) {
            clean = clean.substring(2);
        }
        return clean.matches("[0-9a-fA-F]{32}");
    }

    private static void colorAuthKey(String key) {
        if (authKeyView == null) {
            return;
        }
        if (key == null || key.length() == 0) {
            authKeyView.setTextColor(WearableUi.COLOR_MUTED);
        } else {
            authKeyView.setTextColor(isValidAuthKey(key) ? WearableUi.COLOR_OK : WearableUi.COLOR_ERROR);
        }
    }

    private static void showHelp(Activity activity) {
        if (activity == null) {
            return;
        }
        ModalInfoHelper.show(activity, WearableUi.tr("Пулс от гривната — помощ", "Band heart rate — help"),
                WearableUi.tr(
                        "1. Спри Mi Fitness / Notify / Gadgetbridge (принудително спиране) — гривната"
                                + " приема само едно приложение.\n"
                                + "2–3. MAC и ключ (32 символа от Notify / Mi Fitness) се въвеждат веднъж в"
                                + " Настройки → Гривна и важат за всички модули.\n"
                                + "4. „Активирай циферблат“ → кръгът се свързва сам. Първият пулс идва"
                                + " след около 10–15 s с гривната на китката.\n"
                                + "5. Цвят на кръга = зона спрямо „Праг пулс“: сиво <60%, зелено 60–70%,"
                                + " жълто 70–80%, оранжево 80–90%, червено ≥90%.\n"
                                + "6. ↻ = калибриране 30 s в покой → долна граница. „Праг пулс“ се предлага"
                                + " сам (зелено); стойност на треньора е с приоритет (0 = пак автоматично).\n"
                                + "7. Авто-управление: при покачване към прага логиката сваля първо силата,"
                                + " после ширината на импулса, после честотата; над тавана (+12) спира изхода."
                                + " Връща плавно, никога над зададеното. На кръга: зона, граници, kcal.\n"
                                + "8. Бутон i на кръга → „Данни от гривната“: всички сурови стойности и"
                                + " споделяне на записа.",
                        "1. Force-stop Mi Fitness / Notify / Gadgetbridge — the band accepts one app.\n"
                                + "2–3. MAC and key (32 chars from Notify / Mi Fitness) are entered once in"
                                + " Settings → Band and used by every module.\n"
                                + "4. Activate dial → it connects by itself. First HR after ~10–15 s.\n"
                                + "5. Dial colour = zone vs HR limit: grey <60%, green 60–70%, yellow"
                                + " 70–80%, orange 80–90%, red ≥90%.\n"
                                + "6. ↻ = 30 s resting calibration → lower limit. The HR limit is suggested"
                                + " (green); a trainer value has priority (0 = automatic again).\n"
                                + "7. Auto control: when HR heads for the limit it lowers strength first, then"
                                + " pulse width, then frequency; above the ceiling (+12) output stops. It"
                                + " gives back gradually, never above the set values. Dial: zone, limits, kcal.\n"
                                + "8. Dial i button → Band data: every raw value and share recording."));
    }

    private static void armFromConfig() {
        Activity activity = resolveActivity(null);
        if (activity == null) {
            return;
        }
        saveConfigFromUi(activity);
        String configError = validateDirectBleConfig(activity);
        if (configError != null) {
            toastMessage(activity, configError);
            return;
        }
        WearableConfig.setArmed(activity, true);
        overlayVisible = true;
        refreshStatusText();
        dismissConfigDialog(false);
        if (WearableConfig.isDirectBleMode(activity)
                && !WearableBlePermissions.hasAllBlePermissions(activity)) {
            WearableBlePermissions.ensureConnectPermission(activity, new ArmAfterPermission());
            return;
        }
        finishArm(activity);
    }

    private static void finishArm(Activity activity) {
        if (activity == null) {
            return;
        }
        overlayVisible = true;
        if (!showOverlayDialog()) {
            toast(activity, STR_STATUS_IDLE);
            return;
        }
        toast(activity, STR_TOAST_ARMED);
        NotifyWearableBridge.requestConnect(activity);
        refreshOverlayDisplay();
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
            scheduleDialTick();
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
        String state = NotifyWearableBridge.getBleState();
        if (!NotifyWearableBridge.isListeningActive()) {
            hrValueView.setText("--");
            hrValueView.setTextColor(WearableUi.COLOR_MUTED);
            setSubLabel(WearableUi.tr("натисни ↻", "tap ↻"), WearableUi.COLOR_MUTED);
            if (ringView != null) {
                ringView.setBeatBpm(0);
                ringView.setElapsedFraction(0f);
            }
            return;
        }
        long last = com.isaigu.gymapp.wearable.xiaomi.XiaomiBand.link()
                .getLastRealtimeEventMs();
        long age = last > 0L ? System.currentTimeMillis() - last : -1L;
        boolean live = "streaming".equals(state) || "measuring".equals(state);
        if (com.isaigu.gymapp.wearable.xiaomi.XiaomiBandStatus.isKnownNotWorn()) {
            // The band itself says it is off the wrist: no pulse, pulse control holds.
            hrValueView.setText("--");
            hrValueView.setTextColor(WearableUi.COLOR_ERROR);
            if (ringView != null) {
                ringView.setBeatBpm(0);
                ringView.setElapsedFraction(0f);
            }
            setSubLabel(WearableUi.tr("гривната не е на ръката", "band not worn"), WearableUi.COLOR_ERROR);
            return;
        }
        if (displayedHr > 0 && live) {
            int zone = WearableUi.zoneFor(displayedHr, threshold);
            int zoneColor = WearableUi.zoneColor(zone);
            boolean stale = age > WearableUi.STALE_MS;
            hrValueView.setText(String.valueOf(displayedHr));
            hrValueView.setTextColor(stale ? WearableUi.COLOR_MUTED : zoneColor);
            // Gauge 40 bpm … ceiling + 8: corridor rest→limit in green, ceiling as a red tick.
            HrGuardCore g = HrGuard.core();
            float lo = 40f;
            float hi = Math.max(g.getCap(), threshold + 12) + 8f;
            float fraction = Math.max(0f, Math.min(1f, (displayedHr - lo) / (hi - lo)));
            if (ringView != null) {
                if (g.isCalibrating()) {
                    ringView.setProgressColor(WearableUi.COLOR_WAIT);
                    ringView.setBand(-1f, -1f);
                    ringView.setMarker(-1f);
                    ringView.setElapsedFraction((float) g.getCalibProgress());
                } else {
                    ringView.setProgressColor(stale ? WearableUi.COLOR_MUTED : zoneColor);
                    int rest = g.getRestHr() > 0 ? g.getRestHr() : 60;
                    ringView.setBand((rest - lo) / (hi - lo), (threshold - lo) / (hi - lo));
                    ringView.setMarker((threshold + 12 - lo) / (hi - lo));
                    ringView.setElapsedFraction(fraction);
                }
                ringView.setBeatBpm(stale ? 0 : displayedHr);
            }
            if (stale) {
                setSubLabel(WearableUi.ageText(age), WearableUi.COLOR_WAIT);
            } else if (g.isCalibrating()) {
                setSubLabel(WearableUi.tr("калибриране ", "calibrating ")
                        + WearableUi.ageTextShort(g.getCalibLeftMs()), WearableUi.COLOR_WAIT);
            } else {
                String act = HrGuard.actionText(g.getLastAction());
                boolean recent = System.currentTimeMillis() - g.getLastActionMs() < 30000L;
                String line2 = Math.round(g.getKcal()) + " kcal"
                        + (recent && act.length() > 0 ? " · " + act : "");
                setSubLabel("Z" + zone + " · " + (g.getRestHr() > 0 ? g.getRestHr() + "–" : "")
                        + threshold + "\n" + line2, g.isHold() ? WearableUi.COLOR_ERROR : zoneColor);
            }
            return;
        }
        hrValueView.setText(WearableUi.isErrorState(state) ? "!" : "…");
        hrValueView.setTextColor(WearableUi.isErrorState(state)
                ? WearableUi.COLOR_ERROR : WearableUi.COLOR_WAIT);
        if (ringView != null) {
            ringView.setBeatBpm(0);
            ringView.setElapsedFraction(0f);
        }
        String label = WearableUi.stateText(state);
        if (context != null && !WearableConfig.isConfigured(context)) {
            label = WearableUi.tr("Настрой гривната", "Set up the band");
        }
        setSubLabel(label, WearableUi.isErrorState(state)
                ? WearableUi.COLOR_ERROR : WearableUi.COLOR_WAIT);
    }

    private static void setSubLabel(String textValue, int color) {
        if (subLabelView == null) {
            return;
        }
        subLabelView.setText(textValue);
        subLabelView.setTextColor(color);
        subLabelView.setTextSize(TypedValue.COMPLEX_UNIT_SP,
                textValue != null && textValue.length() > 18 ? 12f : 15f);
        subLabelView.setMaxWidth(WearableUi.dp(subLabelView.getContext(), 150));
        subLabelView.setGravity(Gravity.CENTER);
    }

    /** Re-draw the dial once a second so the "x s ago" / stale state stays current. */
    private static void scheduleDialTick() {
        handler.removeCallbacks(DIAL_TICK);
        handler.postDelayed(DIAL_TICK, 1000L);
    }

    private static final Runnable DIAL_TICK = new DialTick();

    private static final class DialTick implements Runnable {
        @Override
        public void run() {
            try {
                if (hrValueView == null || overlayDialog == null) {
                    return;
                }
                refreshOverlayDisplay();
                handler.postDelayed(this, 1000L);
            } catch (Throwable t) {
                com.isaigu.gymapp.widget.XemsGuard.report("WearableSyncHelper.DialTick", t);
            }
        }
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

    private static String validateDirectBleConfig(Activity activity) {
        if (activity == null) {
            return WearableUi.tr("Няма активен екран", "No active screen");
        }
        String key = WearableConfig.getAuthKey(activity);
        String clean = key != null
                ? key.replace(" ", "").replace(":", "").replace("-", "") : "";
        if (clean.startsWith("0x") || clean.startsWith("0X")) {
            clean = clean.substring(2);
        }
        if (clean.length() == 0) {
            return WearableUi.tr("Няма ключ — въведи го в Настройки → Гривна",
                    "No key — enter it in Settings → Band");
        }
        if (clean.length() != 32) {
            return WearableUi.tr("Ключът е невалиден — поправи го в Настройки → Гривна",
                    "Invalid key — fix it in Settings → Band");
        }
        String mac = WearableConfig.getBandMac(activity);
        if (mac == null || mac.replace(":", "").replace("-", "").trim().length() < 12) {
            return WearableUi.tr("Няма MAC — въведи го в Настройки → Гривна",
                    "No MAC — enter it in Settings → Band");
        }
        return null;
    }

    private static void refreshStatusText() {
        if (statusView == null) {
            return;
        }
        Activity activity = resolveActivity(null);
        if (activity == null) {
            return;
        }
        String text;
        int color = WearableUi.COLOR_WAIT;
        if (!WearableConfig.isEnabled(activity)) {
            text = WearableUi.tr("Изключено", "Off");
            color = WearableUi.COLOR_MUTED;
        } else if (!WearableConfig.isConfigured(activity)) {
            text = WearableUi.tr("Настрой гривната: Настройки → Гривна", "Set up the band: Settings → Band");
        } else if (!WearableBlePermissions.hasAllBlePermissions(activity)) {
            text = activity.getString(STR_STATUS_BT_PERM);
            color = WearableUi.COLOR_ERROR;
        } else if (NotifyWearableBridge.isListeningActive()) {
            String state = NotifyWearableBridge.getBleState();
            text = WearableUi.stateText(state);
            color = WearableUi.isErrorState(state) ? WearableUi.COLOR_ERROR
                    : "streaming".equals(state) ? WearableUi.COLOR_OK : WearableUi.COLOR_WAIT;
        } else if (WearableConfig.isArmed(activity)) {
            text = WearableUi.tr("Готово — натисни ↻ на кръга", "Ready — tap ↻ on the dial");
        } else {
            text = WearableUi.tr("Готово за активиране", "Ready to activate");
            color = WearableUi.COLOR_OK;
        }
        com.isaigu.gymapp.widget.XemsUi.setBadge(statusView, text, color);
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
            // Green = recommended automatically; white = typed by the trainer (has priority).
            if (!WearableConfig.isHrThresholdManual(activity)) {
                thresholdView.setTextColor(WearableUi.COLOR_OK);
            }
        }
        if (stepView != null) {
            stepView.setText(String.valueOf(WearableConfig.getStrengthStep(activity)));
        }
        if (bandMacView != null) {
            bandMacView.setText(WearableConfig.getBandMac(activity));
        }
        if (authKeyView != null) {
            authKeyView.setText(WearableConfig.getAuthKey(activity));
        }
        overlayVisible = WearableConfig.isArmed(activity);
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
            WearableConfig.setHrThresholdFromField(activity, readIntField(thresholdView, 0, 0, 220));
        }
        if (stepView != null) {
            WearableConfig.setStrengthStep(activity, readIntField(stepView, 5, 1, 20));
        }
        if (bandMacView != null) {
            WearableConfig.setBandMac(activity, bandMacView.getText().toString().trim());
        }
        if (authKeyView != null) {
            WearableConfig.setAuthKey(activity, authKeyView.getText().toString().trim());
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
                bandMacView = null;
                authKeyView = null;
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

    private static void toastMessage(Activity activity, String message) {
        if (activity == null || message == null || message.length() == 0) {
            return;
        }
        try {
            Toast.makeText(activity, message, Toast.LENGTH_LONG).show();
        } catch (Throwable ignored) {
        }
    }

    private static final class RefreshOverlayRunnable implements Runnable {
        @Override
        public void run() {
            try {
                refreshOverlayDisplay();
            } catch (Throwable t) {
                com.isaigu.gymapp.widget.XemsGuard.report("WearableSyncHelper.refresh", t);
            }
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

    static final class ArmAfterPermission implements Runnable {
        @Override
        public void run() {
            finishArm(resolveActivity(null));
        }
    }

    static final class ConnectListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            Activity activity = resolveActivity(v);
            if (activity != null) {
                saveConfigFromUi(activity);
                String configError = validateDirectBleConfig(activity);
                if (configError != null) {
                    toastMessage(activity, configError);
                    return;
                }
            }
            NotifyWearableBridge.requestConnect(activity);
            toastMessage(activity, WearableUi.tr("Свързване с гривната…", "Connecting to the band…"));
        }
    }

    static final class ConfigInfoListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            showHelp(resolveActivity(v));
        }
    }

    static final class PickBandListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            WearableBandPicker.show(resolveActivity(v), bandMacView);
        }
    }

    static final class LiveDataListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            Activity activity = resolveActivity(v);
            if (activity != null) {
                saveConfigFromUi(activity);
            }
            WearableLivePanel.show(activity);
        }
    }

    static final class AuthKeyWatcher implements android.text.TextWatcher {
        @Override
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {}

        @Override
        public void onTextChanged(CharSequence s, int start, int before, int count) {}

        @Override
        public void afterTextChanged(android.text.Editable s) {
            colorAuthKey(s != null ? s.toString() : "");
        }
    }

    static final class OverlayConnectListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            Activity activity = resolveActivity(v);
            if (activity != null) {
                saveConfigFromUi(activity);
                String configError = validateDirectBleConfig(activity);
                if (configError != null) {
                    toastMessage(activity, configError);
                    return;
                }
            }
            // ↻ = full Bluetooth reconnect (link closed, cache refreshed, fresh connect), then
            // the 30 s resting calibration as soon as the heart rate flows again.
            NotifyWearableBridge.fullReconnect(activity);
            HrGuard.startCalibration();
            toastMessage(activity, WearableUi.tr("Връзката с гривната се рестартира · калибриране 30 s",
                    "Reconnecting the band · 30 s calibration"));
            refreshOverlayDisplay();
        }
    }

    static final class OverlayInfoListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            WearableHrPanel.show(resolveActivity(v));
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
            bandMacView = null;
            authKeyView = null;
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
