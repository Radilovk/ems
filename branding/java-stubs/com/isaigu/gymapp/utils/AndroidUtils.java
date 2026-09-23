package com.isaigu.gymapp.utils;

import android.app.Activity;

public class AndroidUtils {
    public interface RequestPermissionCallback {
        void onRequestPermission(String permission, int requestCode, boolean granted);
    }

    public static void requestPermission(Activity activity, String permission, int requestCode,
                                         RequestPermissionCallback callback) {
    }

    public static void requestPermission(Activity activity, String[] permissions, int requestCode,
                                         RequestPermissionCallback callback) {
    }
}
