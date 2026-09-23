package com.isaigu.gymapp.wearable;

/** Pause EMS suit BLE scan while the band HR session is active (same radio). */
public final class EmsBleCoexist {
    private EmsBleCoexist() {}

    public static void pauseEmsBle() {
        pauseClass("com.isaigu.gymapp.train.ble.BleDeviceManager", "stop");
        pauseClass("com.isaigu.gymapp.train.ble.AndroidBleController", "stop");
    }

    private static void pauseClass(String className, String method) {
        try {
            Class<?> cls = Class.forName(className);
            cls.getMethod(method).invoke(null);
            WearableBleDiagLog.log("coexist", "paused " + className);
        } catch (Throwable ignored) {
        }
    }
}
