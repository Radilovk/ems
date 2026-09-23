package com.isaigu.gymapp.wearable.xiaomi;

import java.util.Calendar;
import java.util.TimeZone;

/**
 * Post-auth init sequence from Gadgetbridge XiaomiSupport.onAuthSuccess():
 * clock sync → device info → user info → then realtime HR.
 */
final class XiaomiBandPostAuthInit {
    private static final int SYSTEM_CMD_TYPE = 2;
    private static final int SYSTEM_CMD_DEVICE_INFO = 2;
    private static final int SYSTEM_CMD_CLOCK = 3;
    private static final int HEALTH_CMD_TYPE = 8;
    private static final int HEALTH_CMD_SET_USER_INFO = 0;

    private static final int STEP_CLOCK = 0;
    private static final int STEP_DEVICE_INFO = 1;
    private static final int STEP_USER_INFO = 2;
    private static final int STEP_DONE = 3;

    private final XiaomiBandBleClient client;
    private int step = STEP_DONE;
    private boolean active;

    XiaomiBandPostAuthInit(XiaomiBandBleClient client) {
        this.client = client;
    }

    boolean isComplete() {
        return step >= STEP_DONE && !active;
    }

    void reset() {
        step = STEP_DONE;
        active = false;
    }

    void start() {
        step = STEP_CLOCK;
        active = true;
        client.log("init", "post-auth start");
        sendClockSync();
    }

    void onCommandAcked() {
        if (!active) {
            return;
        }
        if (step == STEP_CLOCK) {
            step = STEP_DEVICE_INFO;
            sendDeviceInfoRequest();
            return;
        }
        if (step == STEP_DEVICE_INFO) {
            step = STEP_USER_INFO;
            sendUserInfo();
            return;
        }
        if (step == STEP_USER_INFO) {
            step = STEP_DONE;
            active = false;
            client.log("init", "post-auth done");
            client.onPostAuthInitComplete();
        }
    }

    private void sendClockSync() {
        client.log("init", "clock sync");
        Calendar cal = Calendar.getInstance();
        TimeZone tz = cal.getTimeZone();
        int zoneOffset = ((cal.get(Calendar.ZONE_OFFSET) / 1000) / 60) / 15;
        int dstOffset = ((cal.get(Calendar.DST_OFFSET) / 1000) / 60) / 15;
        byte[] date = XiaomiBandProto.concat(
                XiaomiBandProto.protoFieldVarint(1, cal.get(Calendar.YEAR)),
                XiaomiBandProto.protoFieldVarint(2, cal.get(Calendar.MONTH) + 1),
                XiaomiBandProto.protoFieldVarint(3, cal.get(Calendar.DAY_OF_MONTH)));
        byte[] time = XiaomiBandProto.concat(
                XiaomiBandProto.protoFieldVarint(1, cal.get(Calendar.HOUR_OF_DAY)),
                XiaomiBandProto.protoFieldVarint(2, cal.get(Calendar.MINUTE)),
                XiaomiBandProto.protoFieldVarint(3, cal.get(Calendar.SECOND)),
                XiaomiBandProto.protoFieldVarint(4, cal.get(Calendar.MILLISECOND)));
        byte[] timezone = XiaomiBandProto.concat(
                XiaomiBandProto.protoFieldSint32(1, zoneOffset),
                XiaomiBandProto.protoFieldSint32(2, dstOffset),
                XiaomiBandProto.protoFieldString(3, tz.getID()));
        byte[] clock = XiaomiBandProto.concat(
                XiaomiBandProto.protoFieldMessage(1, date),
                XiaomiBandProto.protoFieldMessage(2, time),
                XiaomiBandProto.protoFieldMessage(3, timezone));
        byte[] system = XiaomiBandProto.protoFieldMessage(4, clock);
        client.sendInitCommand(SYSTEM_CMD_TYPE, SYSTEM_CMD_CLOCK, system);
    }

    private void sendDeviceInfoRequest() {
        client.log("init", "device info");
        client.sendInitCommand(SYSTEM_CMD_TYPE, SYSTEM_CMD_DEVICE_INFO, null);
    }

    private void sendUserInfo() {
        client.log("init", "setUserInfo");
        byte[] userInfo = XiaomiBandProto.concat(
                XiaomiBandProto.protoFieldVarint(1, 175),
                XiaomiBandProto.protoFieldFloat(2, 75.0f),
                XiaomiBandProto.protoFieldVarint(3, 19900101),
                XiaomiBandProto.protoFieldVarint(4, 1),
                XiaomiBandProto.protoFieldVarint(5, 175),
                XiaomiBandProto.protoFieldVarint(6, 500),
                XiaomiBandProto.protoFieldVarint(7, 8000),
                XiaomiBandProto.protoFieldVarint(9, 12),
                XiaomiBandProto.protoFieldVarint(11, 30));
        byte[] health = XiaomiBandProto.protoFieldMessage(1, userInfo);
        client.sendInitCommand(HEALTH_CMD_TYPE, HEALTH_CMD_SET_USER_INFO,
                XiaomiBandProto.protoFieldMessage(10, health));
    }
}
