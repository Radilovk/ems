package com.isaigu.gymapp.wearable;

import android.app.Activity;
import android.content.Context;
import android.os.Build;

import android.support.v4.content.ContextCompat;

import com.isaigu.gymapp.utils.AndroidUtils;

/** Runtime BLUETOOTH_CONNECT check (Android 12+) — same pattern as MusicSync mic permission. */
public final class WearableBlePermissions {
    static final int PERMISSION_REQUEST = 0x5752;

    private WearableBlePermissions() {}

    public static boolean hasConnectPermission(Context context) {
        if (context == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 31) {
            return true;
        }
        return ContextCompat.checkSelfPermission(context,
                "android.permission.BLUETOOTH_CONNECT") == 0;
    }

    public static void ensureConnectPermission(Activity activity, Runnable onGranted) {
        if (activity == null) {
            return;
        }
        if (hasConnectPermission(activity)) {
            if (onGranted != null) {
                onGranted.run();
            }
            return;
        }
        AndroidUtils.requestPermission(activity, "android.permission.BLUETOOTH_CONNECT",
                PERMISSION_REQUEST, new PermissionCallback(onGranted));
    }

    static final class PermissionCallback implements AndroidUtils.RequestPermissionCallback {
        private final Runnable onGranted;

        PermissionCallback(Runnable onGranted) {
            this.onGranted = onGranted;
        }

        @Override
        public void onRequestPermission(String permission, int requestCode, boolean granted) {
            if (granted) {
                if (onGranted != null) {
                    onGranted.run();
                }
                return;
            }
            WearableSyncHelper.showBluetoothPermissionDenied();
        }
    }
}
