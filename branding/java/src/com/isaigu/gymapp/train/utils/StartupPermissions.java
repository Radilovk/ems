package com.isaigu.gymapp.train.utils;

import android.Manifest;
import android.app.Activity;
import android.content.pm.PackageManager;
import android.os.Build;

/**
 * Request all runtime permissions once at app start (single system dialog when possible).
 */
public final class StartupPermissions {

    private static final int REQUEST_ALL = 0x5390;
    private static boolean requestedThisProcess;

    private StartupPermissions() {
    }

    public static void requestAllIfNeeded(Activity activity) {
        if (activity == null || requestedThisProcess) {
            return;
        }
        requestedThisProcess = true;
        String[] wanted = buildPermissionList();
        if (wanted.length == 0) {
            return;
        }
        java.util.ArrayList<String> missing = new java.util.ArrayList<String>();
        for (String permission : wanted) {
            if (permission == null || permission.length() == 0) {
                continue;
            }
            if (activity.checkSelfPermission(permission) != PackageManager.PERMISSION_GRANTED) {
                missing.add(permission);
            }
        }
        if (missing.isEmpty()) {
            return;
        }
        try {
            activity.requestPermissions(missing.toArray(new String[missing.size()]), REQUEST_ALL);
        } catch (Throwable t) {
            MusicDiagLog.logError("startup_permissions", t);
        }
    }

    private static String[] buildPermissionList() {
        java.util.ArrayList<String> list = new java.util.ArrayList<String>();
        list.add(Manifest.permission.ACCESS_FINE_LOCATION);
        list.add(Manifest.permission.ACCESS_COARSE_LOCATION);
        list.add(Manifest.permission.RECORD_AUDIO);
        list.add(Manifest.permission.READ_CALENDAR);
        list.add(Manifest.permission.WRITE_CALENDAR);
        if (Build.VERSION.SDK_INT <= 32) {
            list.add(Manifest.permission.READ_EXTERNAL_STORAGE);
            list.add(Manifest.permission.WRITE_EXTERNAL_STORAGE);
        }
        return list.toArray(new String[list.size()]);
    }
}
