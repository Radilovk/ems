package com.isaigu.gymapp.wearable;

/** Pause EMS suit BLE scan while the band HR session is active (same radio). */
public final class EmsBleCoexist {
    private EmsBleCoexist() {}

    public static void pauseEmsBle() {
        pauseStatic("com.isaigu.gymapp.train.ble.BleDeviceManager", "stop");
        pauseStatic("com.isaigu.gymapp.train.ble.BleDeviceManager", "cancelScan");
        pauseControllerScan();
    }

    private static void pauseStatic(String className, String method) {
        try {
            Class<?> cls = Class.forName(className);
            cls.getMethod(method).invoke(null);
            WearableBleDiagLog.log("coexist", "paused " + className + "." + method);
        } catch (Throwable t) {
            WearableBleDiagLog.log("coexist", "skip " + className + "." + method
                    + ": " + t.getClass().getSimpleName());
        }
    }

    /** EMS suit uses BleMgr singleton — not a static stop() on train.ble. */
    private static void pauseControllerScan() {
        try {
            Class<?> bleMgr = Class.forName("com.isaigu.gymapp.mgr.BleMgr");
            Object controller = bleMgr.getMethod("getController").invoke(null);
            if (controller == null) {
                return;
            }
            controller.getClass().getMethod("stopScan").invoke(controller);
            WearableBleDiagLog.log("coexist", "paused BleMgr.controller.stopScan");
        } catch (Throwable t) {
            WearableBleDiagLog.log("coexist", "BleMgr.stopScan: " + t.getClass().getSimpleName());
        }
    }
}
