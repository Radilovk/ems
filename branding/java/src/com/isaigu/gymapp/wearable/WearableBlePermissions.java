package com.isaigu.gymapp.wearable;

import android.app.Activity;
import android.content.Context;
import android.os.Build;

import android.support.v4.content.ContextCompat;

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

    public static boolean hasConnectPermission(Context context) {
        return hasAllBlePermissions(context);
    }

    public static void ensureConnectPermission(Activity activity, Runnable onGranted) {
        if (activity == null) {
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
        String[] perms = new String[] {PERM_CONNECT, PERM_SCAN};
        AndroidUtils.requestPermission(activity, perms, PERMISSION_REQUEST,
                new PermissionCallback(onGranted));
    }

    static final class PermissionCallback implements AndroidUtils.RequestPermissionCallback {
        private final Runnable onGranted;

        PermissionCallback(Runnable onGranted) {
            this.onGranted = onGranted;
        }

        @Override
        public void onRequestPermission(String permission, int requestCode, boolean granted) {
            Activity activity = WearableSyncHelper.resolveActivityForPermissions();
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
