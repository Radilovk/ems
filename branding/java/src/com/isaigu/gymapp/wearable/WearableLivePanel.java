package com.isaigu.gymapp.wearable;

import android.app.Activity;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.view.Gravity;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import com.isaigu.gymapp.dialog.ModalInfoHelper;
import com.isaigu.gymapp.wearable.xiaomi.XiaomiBand;
import com.isaigu.gymapp.wearable.xiaomi.XiaomiBandBleClient;
import com.isaigu.gymapp.wearable.xiaomi.XiaomiBandLink;

import java.util.Locale;

/** "Band data" panel: every live field from 8/47, event rate, share the raw recording. */
final class WearableLivePanel {
    private static final int OPAQUE_DIALOG_BG = 0x7f080069;
    private static final int PANEL_WIDTH_DP = 460;
    private static final long REFRESH_MS = 1000L;
    private static final int SHARE_REALTIME_BYTES = 180 * 1024;
    private static final int SHARE_RAW_BYTES = 60 * 1024;

    private static android.support.v7.app.AlertDialog dialog;
    private static TextView stateView;
    private static TextView hrView;
    private static TextView zoneView;
    private static TextView stepsView;
    private static TextView caloriesView;
    private static TextView f3View;
    private static TextView f5View;
    private static TextView rateView;
    private static TextView ageView;
    private static TextView countView;
    private static TextView bandView;

    private static final Handler handler = new Handler(Looper.getMainLooper());
    private static final Runnable refreshTask = new RefreshTask();

    private WearableLivePanel() {}

    static void show(Activity activity) {
        if (activity == null || activity.isFinishing()) {
            return;
        }
        dismiss();
        int text = WearableUi.color(activity, "text_primary", 0xFFFFFFFF);
        int muted = WearableUi.color(activity, "text_secondary", 0xFFB0B0B0);
        int card = WearableUi.color(activity, "bg_elevated", 0xFF2A2A2A);

        LinearLayout root = new LinearLayout(activity);
        root.setOrientation(LinearLayout.VERTICAL);
        int pad = WearableUi.dp(activity, 18);
        root.setPadding(pad, pad, pad, pad);

        TextView title = WearableUi.text(activity,
                WearableUi.tr("Данни от гривната", "Band data"), 19f, text, true);
        title.setGravity(Gravity.CENTER);
        root.addView(title, WearableUi.matchWrap(activity, 0));

        stateView = WearableUi.text(activity, "", 13f, text, true);
        stateView.setGravity(Gravity.CENTER);
        int chipPad = WearableUi.dp(activity, 6);
        stateView.setPadding(chipPad * 2, chipPad, chipPad * 2, chipPad);
        LinearLayout.LayoutParams chipLp = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        chipLp.gravity = Gravity.CENTER_HORIZONTAL;
        chipLp.topMargin = WearableUi.dp(activity, 8);
        root.addView(stateView, chipLp);

        LinearLayout hero = new LinearLayout(activity);
        hero.setOrientation(LinearLayout.VERTICAL);
        hero.setGravity(Gravity.CENTER);
        hero.setBackgroundDrawable(WearableUi.rounded(card, WearableUi.dp(activity, 14)));
        hero.setPadding(pad, WearableUi.dp(activity, 12), pad, WearableUi.dp(activity, 12));
        hrView = WearableUi.text(activity, "--", 48f, text, true);
        hrView.setGravity(Gravity.CENTER);
        hero.addView(hrView);
        zoneView = WearableUi.text(activity, "", 14f, muted, true);
        zoneView.setGravity(Gravity.CENTER);
        hero.addView(zoneView);
        root.addView(hero, WearableUi.matchWrap(activity, 14));

        LinearLayout grid = new LinearLayout(activity);
        grid.setOrientation(LinearLayout.VERTICAL);
        grid.setBackgroundDrawable(WearableUi.rounded(card, WearableUi.dp(activity, 14)));
        grid.setPadding(pad, WearableUi.dp(activity, 6), pad, WearableUi.dp(activity, 6));
        stepsView = addRow(activity, grid, WearableUi.tr("Стъпки (днес)", "Steps (today)"), text, muted);
        caloriesView = addRow(activity, grid, WearableUi.tr("Калории", "Calories"), text, muted);
        f3View = addRow(activity, grid, WearableUi.tr("Активност (поле 3)", "Activity (field 3)"), text, muted);
        f5View = addRow(activity, grid, WearableUi.tr("Поле 5", "Field 5"), text, muted);
        rateView = addRow(activity, grid, WearableUi.tr("Събития / сек", "Events / s"), text, muted);
        ageView = addRow(activity, grid, WearableUi.tr("Последно събитие", "Last event"), text, muted);
        countView = addRow(activity, grid, WearableUi.tr("Събития в сесията", "Events this session"), text, muted);
        bandView = addRow(activity, grid, WearableUi.tr("Гривна", "Band"), text, muted);
        root.addView(grid, WearableUi.matchWrap(activity, 12));

        TextView hint = WearableUi.text(activity, WearableUi.tr(
                "Всяко събитие се записва в band-realtime.csv и band-raw.csv.",
                "Every event is recorded to band-realtime.csv and band-raw.csv."), 12f, muted, false);
        hint.setGravity(Gravity.CENTER);
        root.addView(hint, WearableUi.matchWrap(activity, 10));

        TextView share = WearableUi.button(activity,
                WearableUi.tr("Сподели записа", "Share recording"), 0xFF2E7D32, 0xFFFFFFFF);
        share.setOnClickListener(new ShareListener());
        root.addView(share, WearableUi.matchWrap(activity, 14));

        LinearLayout row = new LinearLayout(activity);
        row.setOrientation(LinearLayout.HORIZONTAL);
        TextView log = WearableUi.button(activity,
                WearableUi.tr("Технически лог", "Technical log"), card, text);
        log.setOnClickListener(new LogListener());
        TextView close = WearableUi.button(activity,
                WearableUi.tr("Затвори", "Close"), card, text);
        close.setOnClickListener(new CloseListener());
        LinearLayout.LayoutParams half = new LinearLayout.LayoutParams(0,
                LinearLayout.LayoutParams.WRAP_CONTENT, 1f);
        LinearLayout.LayoutParams half2 = new LinearLayout.LayoutParams(0,
                LinearLayout.LayoutParams.WRAP_CONTENT, 1f);
        half2.leftMargin = WearableUi.dp(activity, 10);
        row.addView(log, half);
        row.addView(close, half2);
        root.addView(row, WearableUi.matchWrap(activity, 10));

        ScrollView scroll = new ScrollView(activity);
        scroll.addView(root);

        android.support.v7.app.AlertDialog.Builder builder =
                new android.support.v7.app.AlertDialog.Builder(activity);
        builder.setView(scroll);
        builder.setOnDismissListener(new DismissListener());
        dialog = builder.create();
        dialog.setCancelable(true);
        dialog.setCanceledOnTouchOutside(true);
        try {
            Window window = dialog.getWindow();
            if (window != null) {
                window.setBackgroundDrawableResource(OPAQUE_DIALOG_BG);
            }
        } catch (Throwable ignored) {
        }
        dialog.show();
        try {
            Window window = dialog.getWindow();
            if (window != null) {
                window.setLayout(WearableUi.dp(activity, PANEL_WIDTH_DP),
                        WindowManager.LayoutParams.WRAP_CONTENT);
                window.setGravity(Gravity.CENTER);
            }
        } catch (Throwable ignored) {
        }
        refresh();
        handler.removeCallbacks(refreshTask);
        handler.postDelayed(refreshTask, REFRESH_MS);
    }

    static void dismiss() {
        handler.removeCallbacks(refreshTask);
        if (dialog != null) {
            try {
                dialog.dismiss();
            } catch (Throwable ignored) {
            }
        }
        clearRefs();
    }

    private static void clearRefs() {
        dialog = null;
        stateView = null;
        hrView = null;
        zoneView = null;
        stepsView = null;
        caloriesView = null;
        f3View = null;
        f5View = null;
        rateView = null;
        ageView = null;
        countView = null;
        bandView = null;
    }

    private static TextView addRow(Activity activity, LinearLayout parent, String label,
            int textColor, int mutedColor) {
        LinearLayout row = new LinearLayout(activity);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER_VERTICAL);
        int v = WearableUi.dp(activity, 7);
        row.setPadding(0, v, 0, v);
        TextView name = WearableUi.text(activity, label, 14f, mutedColor, false);
        row.addView(name, new LinearLayout.LayoutParams(0,
                LinearLayout.LayoutParams.WRAP_CONTENT, 1f));
        TextView value = WearableUi.text(activity, "—", 16f, textColor, true);
        value.setGravity(Gravity.END);
        row.addView(value, new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT));
        parent.addView(row, new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT));
        return value;
    }

    private static String num(int v) {
        return v >= 0 ? String.valueOf(v) : "—";
    }

    static void refresh() {
        if (dialog == null || hrView == null) {
            return;
        }
        Activity activity = WearableUi.asActivity(hrView.getContext());
        XiaomiBandLink c = XiaomiBand.link();
        String state = c.getLastState();
        long last = c.getLastRealtimeEventMs();
        long age = last > 0L ? System.currentTimeMillis() - last : -1L;
        boolean stale = "streaming".equals(state) && age > WearableUi.STALE_MS;

        String stateLabel = WearableUi.stateText(state);
        int chipColor = WearableUi.isErrorState(state) ? WearableUi.COLOR_ERROR
                : ("streaming".equals(state) && !stale) ? WearableUi.COLOR_OK
                : WearableUi.COLOR_WAIT;
        if (stale) {
            stateLabel = WearableUi.tr("Няма нови данни", "No new data");
        }
        stateView.setText(stateLabel);
        stateView.setTextColor(0xFF111111);
        stateView.setBackgroundDrawable(WearableUi.rounded(chipColor,
                WearableUi.dp(activity, 14)));

        int limit = activity != null ? WearableConfig.getHrThreshold(activity) : 170;
        int hr = c.getLastRawHr();
        if (hr > 0) {
            int zone = WearableUi.zoneFor(hr, limit);
            hrView.setText(String.valueOf(hr));
            hrView.setTextColor(WearableUi.zoneColor(zone));
            zoneView.setText("Z" + zone + " · " + WearableUi.zoneName(zone)
                    + " · " + WearableUi.tr("праг ", "limit ") + limit);
        } else {
            hrView.setText("--");
            hrView.setTextColor(WearableUi.COLOR_MUTED);
            zoneView.setText(hr == 0 ? WearableUi.tr("Измерва…", "Measuring…") : "");
        }
        stepsView.setText(num(c.getLastSteps()));
        caloriesView.setText(num(c.getLastCalories()));
        f3View.setText(num(c.getLastF3()));
        f5View.setText(num(c.getLastF5()));
        float rate = c.getRealtimeEventRate();
        rateView.setText(rate > 0f ? String.format(Locale.US, "%.2f", rate) : "—");
        ageView.setText(age >= 0L ? WearableUi.ageText(age) : "—");
        countView.setText(String.valueOf(c.getRealtimeEventCount()));
        if (bandView != null && activity != null) {
            bandView.setText(WearableSettingsSection.bandInfo(activity));
        }
    }

    private static void shareRecording(Activity activity) {
        if (activity == null) {
            return;
        }
        String realtime = WearableBleDiagLog.readTail(activity, "band-realtime.csv",
                SHARE_REALTIME_BYTES);
        String raw = WearableBleDiagLog.readTail(activity, "band-raw.csv", SHARE_RAW_BYTES);
        if (realtime.length() == 0 && raw.length() == 0) {
            WearableSyncHelper.toastBleError(WearableUi.tr(
                    "Още няма запис — свържи гривната", "Nothing recorded yet — connect the band"));
            return;
        }
        String body = "=== band-realtime.csv ===\n" + realtime
                + "\n=== band-raw.csv ===\n" + raw;
        Intent send = new Intent(Intent.ACTION_SEND);
        send.setType("text/plain");
        send.putExtra(Intent.EXTRA_SUBJECT, "XEMS band recording "
                + XiaomiBand.getBuildTag());
        send.putExtra(Intent.EXTRA_TEXT, body);
        try {
            activity.startActivity(Intent.createChooser(send,
                    WearableUi.tr("Сподели записа", "Share recording")));
        } catch (Throwable t) {
            WearableSyncHelper.toastBleError(WearableUi.tr(
                    "Няма приложение за споделяне", "No app to share with"));
        }
    }

    private static final class RefreshTask implements Runnable {
        @Override
        public void run() {
            if (dialog == null) {
                return;
            }
            refresh();
            handler.postDelayed(this, REFRESH_MS);
        }
    }

    private static final class ShareListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            shareRecording(WearableUi.asActivity(v.getContext()));
        }
    }

    private static final class LogListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            Activity activity = WearableUi.asActivity(v.getContext());
            if (activity == null) {
                return;
            }
            String log = WearableBleDiagLog.getRecentText();
            if (log == null || log.length() == 0) {
                log = WearableUi.tr("Логът е празен.", "Log is empty.");
            }
            ModalInfoHelper.show(activity, WearableUi.tr("Технически лог", "Technical log"),
                    log + "\n\n---\n" + WearableBleDiagLog.getLogFileHint(activity));
        }
    }

    private static final class CloseListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            dismiss();
        }
    }

    private static final class DismissListener
            implements android.content.DialogInterface.OnDismissListener {
        @Override
        public void onDismiss(android.content.DialogInterface d) {
            handler.removeCallbacks(refreshTask);
            clearRefs();
        }
    }
}
