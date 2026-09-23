package com.isaigu.gymapp.wearable;

import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.view.Gravity;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.Locale;
import java.util.Set;

/**
 * Pick the band from the phone's paired (bonded) Bluetooth devices — no scan, no location
 * permission. Xiaomi bands are listed first; the MAC is written into the config field.
 */
final class WearableBandPicker {
    private static final int OPAQUE_DIALOG_BG = 0x7f080069;
    private static final int PICKER_WIDTH_DP = 420;

    private static android.support.v7.app.AlertDialog dialog;
    private static EditText target;

    private WearableBandPicker() {}

    static void show(Activity activity, EditText macField) {
        if (activity == null || activity.isFinishing()) {
            return;
        }
        target = macField;
        ArrayList<BluetoothDevice> bands = new ArrayList<BluetoothDevice>();
        ArrayList<BluetoothDevice> others = new ArrayList<BluetoothDevice>();
        try {
            BluetoothAdapter adapter = BluetoothAdapter.getDefaultAdapter();
            if (adapter == null || !adapter.isEnabled()) {
                WearableSyncHelper.toastBleError(WearableUi.tr("Включи Bluetooth", "Turn Bluetooth on"));
                return;
            }
            Set<BluetoothDevice> bonded = adapter.getBondedDevices();
            if (bonded != null) {
                for (BluetoothDevice d : bonded) {
                    String name = safeName(d).toLowerCase(Locale.ROOT);
                    if (name.contains("band") || name.contains("xiaomi") || name.contains("mi ")) {
                        bands.add(d);
                    } else {
                        others.add(d);
                    }
                }
            }
        } catch (SecurityException e) {
            WearableSyncHelper.toastBleError(WearableUi.tr(
                    "Разреши Bluetooth за XEMS", "Allow Bluetooth for XEMS"));
            return;
        } catch (Throwable t) {
            WearableSyncHelper.toastBleError(WearableUi.tr(
                    "Не мога да прочета сдвоените устройства", "Cannot read paired devices"));
            return;
        }

        int text = WearableUi.color(activity, "text_primary", 0xFFFFFFFF);
        int muted = WearableUi.color(activity, "text_secondary", 0xFFB0B0B0);
        int card = WearableUi.color(activity, "bg_elevated", 0xFF2A2A2A);

        LinearLayout root = new LinearLayout(activity);
        root.setOrientation(LinearLayout.VERTICAL);
        int pad = WearableUi.dp(activity, 18);
        root.setPadding(pad, pad, pad, pad);
        TextView title = WearableUi.text(activity,
                WearableUi.tr("Избери гривната", "Choose your band"), 18f, text, true);
        title.setGravity(Gravity.CENTER);
        root.addView(title, WearableUi.matchWrap(activity, 0));

        if (bands.isEmpty() && others.isEmpty()) {
            TextView empty = WearableUi.text(activity, WearableUi.tr(
                    "Няма сдвоени устройства. Сдвои гривната с телефона (Mi Fitness или Notify) и опитай пак.",
                    "No paired devices. Pair the band with the phone (Mi Fitness or Notify) and retry."),
                    14f, muted, false);
            root.addView(empty, WearableUi.matchWrap(activity, 14));
        } else {
            for (int i = 0; i < bands.size(); i++) {
                root.addView(deviceRow(activity, bands.get(i), true, text, muted, card),
                        WearableUi.matchWrap(activity, 10));
            }
            if (!others.isEmpty()) {
                TextView sep = WearableUi.text(activity,
                        WearableUi.tr("Други сдвоени устройства", "Other paired devices"),
                        12f, muted, true);
                root.addView(sep, WearableUi.matchWrap(activity, 16));
                for (int i = 0; i < others.size(); i++) {
                    root.addView(deviceRow(activity, others.get(i), false, text, muted, card),
                            WearableUi.matchWrap(activity, 8));
                }
            }
        }
        TextView cancel = WearableUi.button(activity, WearableUi.tr("Отказ", "Cancel"), card, text);
        cancel.setOnClickListener(new CancelListener());
        root.addView(cancel, WearableUi.matchWrap(activity, 16));

        ScrollView scroll = new ScrollView(activity);
        scroll.addView(root);
        android.support.v7.app.AlertDialog.Builder builder =
                new android.support.v7.app.AlertDialog.Builder(activity);
        builder.setView(scroll);
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
                window.setLayout(WearableUi.dp(activity, PICKER_WIDTH_DP),
                        WindowManager.LayoutParams.WRAP_CONTENT);
                window.setGravity(Gravity.CENTER);
            }
        } catch (Throwable ignored) {
        }
    }

    private static View deviceRow(Activity activity, BluetoothDevice device, boolean likelyBand,
            int text, int muted, int card) {
        LinearLayout row = new LinearLayout(activity);
        row.setOrientation(LinearLayout.VERTICAL);
        int p = WearableUi.dp(activity, 12);
        row.setPadding(p, p, p, p);
        row.setBackgroundDrawable(WearableUi.rounded(likelyBand ? 0xFF1B5E20 : card,
                WearableUi.dp(activity, 12)));
        row.setClickable(true);
        String name = safeName(device);
        row.addView(WearableUi.text(activity, name.length() > 0 ? name
                : WearableUi.tr("(без име)", "(no name)"), 16f, text, true));
        row.addView(WearableUi.text(activity, safeAddress(device), 13f, muted, false));
        row.setOnClickListener(new PickListener(safeAddress(device)));
        return row;
    }

    private static String safeName(BluetoothDevice d) {
        try {
            String n = d.getName();
            return n != null ? n : "";
        } catch (Throwable ignored) {
            return "";
        }
    }

    private static String safeAddress(BluetoothDevice d) {
        try {
            String a = d.getAddress();
            return a != null ? a : "";
        } catch (Throwable ignored) {
            return "";
        }
    }

    private static void close() {
        if (dialog != null) {
            try {
                dialog.dismiss();
            } catch (Throwable ignored) {
            }
        }
        dialog = null;
    }

    private static final class PickListener implements View.OnClickListener {
        private final String mac;

        PickListener(String mac) {
            this.mac = mac;
        }

        @Override
        public void onClick(View v) {
            if (target != null && mac.length() > 0) {
                target.setText(mac);
                Activity activity = WearableUi.asActivity(v.getContext());
                if (activity != null) {
                    WearableConfig.setBandMac(activity, mac);
                }
            }
            target = null;
            close();
        }
    }

    private static final class CancelListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            target = null;
            close();
        }
    }
}
