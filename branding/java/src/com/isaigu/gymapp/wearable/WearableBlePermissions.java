package com.isaigu.gymapp.wearable;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;

import android.support.v4.content.ContextCompat;

import java.util.ArrayList;

import com.isaigu.gymapp.utils.AndroidUtils;

/** Runtime BLUETOOTH_CONNECT + BLUETOOTH_SCAN (Android 12+) — required for GATT connect/discover. */
public final class WearableBlePermissions {
    static final int PERMISSION_REQUEST = 0x5752;

    private static final String PERM_CONNECT = "android.permission.BLUETOOTH_CONNECT";
    private static final String PERM_SCAN = "android.permission.BLUETOOTH_SCAN";

    private WearableBlePermissions() {}

    public static boolean hasAllBlePermissions(Context context) {
        if (context == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 31) {
            return true;
        }
        return ContextCompat.checkSelfPermission(context, PERM_CONNECT) == 0
                && ContextCompat.checkSelfPermission(context, PERM_SCAN) == 0;
    }

    /** Log CONNECT/SCAN state to wearable BLE diag (visible in dial log). */
    public static void logPermissionState(Context context) {
        if (context == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 31) {
            WearableBleDiagLog.log("perm", "API<31 legacy BT");
            return;
        }
        boolean connect = ContextCompat.checkSelfPermission(context, PERM_CONNECT) == 0;
        boolean scan = ContextCompat.checkSelfPermission(context, PERM_SCAN) == 0;
        WearableBleDiagLog.log("perm",
                "CONNECT=" + connect + " SCAN=" + scan);
    }

    public static boolean hasConnectPermission(Context context) {
        return hasAllBlePermissions(context);
    }

    /** Ask once at MainActivity startup so connect does not hit SecurityException mid-GATT. */
    public static void requestAtStartup(Activity activity) {
        if (activity == null || Build.VERSION.SDK_INT < 31) {
            return;
        }
        if (hasAllBlePermissions(activity)) {
            return;
        }
        requestBlePermissions(activity, null);
    }

    public static void ensureConnectPermission(Activity activity, Runnable onGranted) {
        if (activity == null) {
            WearableSyncHelper.showBluetoothPermissionDenied();
            return;
        }
        if (hasAllBlePermissions(activity)) {
            if (onGranted != null) {
                onGranted.run();
            }
            return;
        }
        if (Build.VERSION.SDK_INT < 31) {
            if (onGranted != null) {
                onGranted.run();
            }
            return;
        }
        WearableSyncHelper.dismissOverlayForPermissions();
        requestBlePermissions(activity, new PermissionCallback(onGranted));
    }

    private static void requestBlePermissions(Activity activity,
            AndroidUtils.RequestPermissionCallback callback) {
        if (activity == null || Build.VERSION.SDK_INT < 31) {
            return;
        }
        String[] needed = missingPermissions(activity);
        if (needed.length == 0) {
            if (callback != null) {
                callback.onRequestPermission(PERM_CONNECT, PERMISSION_REQUEST, true);
            }
            return;
        }
        AndroidUtils.requestPermission(activity, needed, PERMISSION_REQUEST, callback);
    }

    private static String[] missingPermissions(Context context) {
        ArrayList<String> missing = new ArrayList<String>();
        if (ContextCompat.checkSelfPermission(context, PERM_CONNECT) != 0) {
            missing.add(PERM_CONNECT);
        }
        if (ContextCompat.checkSelfPermission(context, PERM_SCAN) != 0) {
            missing.add(PERM_SCAN);
        }
        String[] out = new String[missing.size()];
        for (int i = 0; i < missing.size(); i++) {
            out[i] = missing.get(i);
        }
        return out;
    }

    /** Block GATT until CONNECT + SCAN are granted (Android 12+). */
    public static boolean gateGattOrNotify(Context context) {
        if (context == null) {
            return false;
        }
        if (hasAllBlePermissions(context)) {
            return true;
        }
        Activity activity = WearableSyncHelper.resolveActivityForPermissions();
        if (activity != null) {
            ensureConnectPermission(activity, null);
        } else {
            WearableSyncHelper.showBluetoothPermissionDenied();
        }
        return false;
    }

    public static void openAppSettings(Activity activity) {
        if (activity == null) {
            return;
        }
        try {
            Intent intent = new Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS);
            intent.setData(Uri.parse("package:" + activity.getPackageName()));
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            activity.startActivity(intent);
        } catch (Throwable ignored) {
        }
    }

    static final class PermissionCallback implements AndroidUtils.RequestPermissionCallback {
        private final Runnable onGranted;

        PermissionCallback(Runnable onGranted) {
            this.onGranted = onGranted;
        }

        @Override
        public void onRequestPermission(String permission, int requestCode, boolean granted) {
            Activity activity = WearableSyncHelper.resolveActivityForPermissions();
            if (activity != null) {
                logPermissionState(activity);
            }
            if (activity != null && hasAllBlePermissions(activity)) {
                if (onGranted != null) {
                    onGranted.run();
                }
                return;
            }
            if (!granted) {
                WearableSyncHelper.showBluetoothPermissionDenied();
            }
        }
    }
}
