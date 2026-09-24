package com.isaigu.gymapp.wearable.xiaomi;

import java.util.List;
import java.util.Map;

/**
 * What the band says about itself besides heart rate: battery, charging, worn / not worn,
 * asleep, firmware and model. Filled by both links from system commands 2/1, 2/2, 2/78, 2/79.
 * "Not worn" matters for safety: the HR control must not read a missing pulse as a low one.
 */
public final class XiaomiBandStatus {
    /** -1 = unknown. */
    private static int batteryPercent = -1;
    /** 0 unknown, 1 yes, 2 no. */
    private static int worn;
    private static int charging;
    private static int asleep;
    private static String firmware = "";
    private static String model = "";
    private static String serial = "";
    private static long updatedMs;

    private XiaomiBandStatus() {}

    public static void reset() {
        batteryPercent = -1;
        worn = 0;
        charging = 0;
        asleep = 0;
        firmware = "";
        model = "";
        serial = "";
        updatedMs = 0L;
    }

    public static int getBatteryPercent() {
        return batteryPercent;
    }

    /** True only when the band explicitly reported that it is off the wrist. */
    public static boolean isKnownNotWorn() {
        return worn == 2;
    }

    public static boolean isKnownWorn() {
        return worn == 1;
    }

    public static boolean isCharging() {
        return charging == 1;
    }

    public static boolean isAsleep() {
        return asleep == 1;
    }

    public static String getFirmware() {
        return firmware;
    }

    public static String getModel() {
        return model;
    }

    public static String getSerial() {
        return serial;
    }

    public static long getUpdatedMs() {
        return updatedMs;
    }

    /** Parse a system command (type 2) from the band. Returns true when it was a status reply. */
    static boolean onSystemCommand(int subtype, Map<Integer, List<Object>> cmd) {
        Map<Integer, List<Object>> system = XiaomiBandMessages.sub(cmd, 4);
        if (system == null) {
            return false;
        }
        switch (subtype) {
            case XiaomiBandMessages.SYS_BATTERY: {
                Map<Integer, List<Object>> battery = XiaomiBandMessages.sub(
                        XiaomiBandMessages.sub(system, 2), 1);
                int level = XiaomiBandMessages.intField(battery, 1);
                if (level >= 0 && level <= 100) {
                    batteryPercent = level;
                }
                touch();
                return true;
            }
            case XiaomiBandMessages.SYS_DEVICE_INFO: {
                Map<Integer, List<Object>> info = XiaomiBandMessages.sub(system, 3);
                serial = str(info, 1, serial);
                firmware = str(info, 2, firmware);
                model = str(info, 3, model);
                touch();
                return true;
            }
            case XiaomiBandMessages.SYS_STATE_GET: {
                // BasicDeviceState{isCharging=1, batteryLevel=2, isWorn=3, isUserAsleep=4}
                Map<Integer, List<Object>> s = XiaomiBandMessages.sub(system, 48);
                if (s == null) {
                    return false;
                }
                charging = bool(s, 1, charging);
                int level = XiaomiBandMessages.intField(s, 2);
                if (level >= 0 && level <= 100) {
                    batteryPercent = level;
                }
                worn = bool(s, 3, worn);
                asleep = bool(s, 4, asleep);
                touch();
                return true;
            }
            case XiaomiBandMessages.SYS_STATE_EVENT: {
                // DeviceState{chargingState=1, wearingState=2, sleepState=3}: 1 yes, 2 no
                Map<Integer, List<Object>> s = XiaomiBandMessages.sub(system, 49);
                if (s == null) {
                    return false;
                }
                charging = tri(s, 1, charging);
                worn = tri(s, 2, worn);
                asleep = tri(s, 3, asleep);
                touch();
                return true;
            }
            default:
                return false;
        }
    }

    private static void touch() {
        updatedMs = System.currentTimeMillis();
    }

    private static int bool(Map<Integer, List<Object>> m, int key, int fallback) {
        int v = XiaomiBandMessages.intField(m, key);
        return v < 0 ? fallback : (v != 0 ? 1 : 2);
    }

    private static int tri(Map<Integer, List<Object>> m, int key, int fallback) {
        int v = XiaomiBandMessages.intField(m, key);
        return v == 1 || v == 2 ? v : fallback;
    }

    private static String str(Map<Integer, List<Object>> m, int key, String fallback) {
        byte[] b = XiaomiBandMessages.bytesField(m, key);
        if (b == null || b.length == 0) {
            return fallback;
        }
        try {
            return new String(b, "UTF-8");
        } catch (Throwable t) {
            return fallback;
        }
    }
}
