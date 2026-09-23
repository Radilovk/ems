package com.isaigu.gymapp.wearable;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;

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

    /** Ask once at MainActivity startup so connect does not hit SecurityException mid-GATT. */
    public static void requestAtStartup(Activity activity) {
        if (activity == null || Build.VERSION.SDK_INT < 31) {
            return;
        }
        if (hasAllBlePermissions(activity)) {
            return;
        }
        String[] perms = new String[] {PERM_CONNECT, PERM_SCAN};
        AndroidUtils.requestPermission(activity, perms, PERMISSION_REQUEST, null);
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
        String[] perms = new String[] {PERM_CONNECT, PERM_SCAN};
        AndroidUtils.requestPermission(activity, perms, PERMISSION_REQUEST,
                new PermissionCallback(onGranted));
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
            if (activity != null && hasAllBlePermissions(activity)) {
                if (onGranted != null) {
                    onGranted.run();
                }
                return;
            }
            WearableSyncHelper.showBluetoothPermissionDenied();
        }
    }
}
