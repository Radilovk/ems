package com.isaigu.gymapp.wearable.xiaomi;

import android.content.Context;
import android.content.SharedPreferences;

import java.util.Calendar;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;

/**
 * Protobuf commands shared by the BLE and SPP links (Command{type=1, subtype=2, …}).
 * Field numbers follow the community-documented Xiaomi schema:
 * Command.auth=3, Command.system=4, Command.health=10; System.power=2, System.clock=4,
 * System.basicDeviceState=48, System.deviceState=49; Health.userInfo=1, Health.realTimeStats=39.
 */
final class XiaomiBandMessages {
    static final int T_AUTH = 1;
    static final int T_SYSTEM = 2;
    static final int T_HEALTH = 8;

    static final int AUTH_NONCE = 26;
    static final int AUTH_STEP3 = 27;
    static final int AUTH_USERID = 5;

    static final int SYS_BATTERY = 1;
    static final int SYS_DEVICE_INFO = 2;
    static final int SYS_CLOCK = 3;
    static final int SYS_STATE_GET = 78;
    static final int SYS_STATE_EVENT = 79;

    static final int T_MUSIC = 18;
    static final int MUSIC_GET = 0;        // band asks for the current "track"
    static final int MUSIC_INFO = 1;       // phone → band: state, title, artist, position
    static final int MUSIC_BUTTON = 2;     // band → phone: media key

    static final int HEALTH_USER_INFO = 0;
    static final int HEALTH_RT_START = 45;
    static final int HEALTH_RT_STOP = 46;
    static final int HEALTH_RT_EVENT = 47;

    private XiaomiBandMessages() {}

    static byte[] command(int type, int subtype, byte[] body) {
        byte[] head = XiaomiBandProto.concat(
                XiaomiBandProto.protoFieldVarint(1, type),
                XiaomiBandProto.protoFieldVarint(2, subtype));
        return body == null || body.length == 0 ? head : XiaomiBandProto.concat(head, body);
    }

    // ================================================================ auth

    static byte[] authNonce(byte[] phoneNonce) {
        byte[] nonce = XiaomiBandProto.protoFieldBytes(1, phoneNonce);
        byte[] auth = XiaomiBandProto.protoFieldMessage(30, nonce);
        return command(T_AUTH, AUTH_NONCE, XiaomiBandProto.protoFieldMessage(3, auth));
    }

    static byte[] authStep3(byte[] encryptedNonces, byte[] encryptedDeviceInfo) {
        byte[] step3 = XiaomiBandProto.concat(
                XiaomiBandProto.protoFieldBytes(1, encryptedNonces),
                XiaomiBandProto.protoFieldBytes(2, encryptedDeviceInfo));
        byte[] auth = XiaomiBandProto.protoFieldMessage(32, step3);
        return command(T_AUTH, AUTH_STEP3, XiaomiBandProto.protoFieldMessage(3, auth));
    }

    /** What the phone says about itself inside auth step 3. */
    static byte[] authDeviceInfo() {
        return XiaomiBandProto.concat(
                XiaomiBandProto.protoFieldVarint(1, 0),
                XiaomiBandProto.protoFieldFloat(2, 30.0f),
                XiaomiBandProto.protoFieldString(3, "XEMS"),
                XiaomiBandProto.protoFieldVarint(4, 224),
                XiaomiBandProto.protoFieldString(5, "EN"));
    }

    // ================================================================ system

    static byte[] clock() {
        Calendar cal = Calendar.getInstance();
        TimeZone tz = cal.getTimeZone();
        int zone = cal.get(Calendar.ZONE_OFFSET) / 60000 / 15;
        int dst = cal.get(Calendar.DST_OFFSET) / 60000 / 15;
        byte[] date = XiaomiBandProto.concat(
                XiaomiBandProto.protoFieldVarint(1, cal.get(Calendar.YEAR)),
                XiaomiBandProto.protoFieldVarint(2, cal.get(Calendar.MONTH) + 1),
                XiaomiBandProto.protoFieldVarint(3, cal.get(Calendar.DAY_OF_MONTH)));
        byte[] time = XiaomiBandProto.concat(
                XiaomiBandProto.protoFieldVarint(1, cal.get(Calendar.HOUR_OF_DAY)),
                XiaomiBandProto.protoFieldVarint(2, cal.get(Calendar.MINUTE)),
                XiaomiBandProto.protoFieldVarint(3, cal.get(Calendar.SECOND)),
                XiaomiBandProto.protoFieldVarint(4, cal.get(Calendar.MILLISECOND)));
        byte[] zoneMsg = XiaomiBandProto.concat(
                XiaomiBandProto.protoFieldSint32(1, zone),
                XiaomiBandProto.protoFieldSint32(2, dst),
                XiaomiBandProto.protoFieldString(3, tz.getID()));
        byte[] clock = XiaomiBandProto.concat(
                XiaomiBandProto.protoFieldMessage(1, date),
                XiaomiBandProto.protoFieldMessage(2, time),
                XiaomiBandProto.protoFieldMessage(3, zoneMsg));
        // Command.system(4) → System.clock(4) → Clock{date, time, timezone}
        byte[] system = XiaomiBandProto.protoFieldMessage(4, clock);
        return command(T_SYSTEM, SYS_CLOCK, XiaomiBandProto.protoFieldMessage(4, system));
    }

    static byte[] request(int type, int subtype) {
        return command(type, subtype, null);
    }

    // ================================================================ health

    /**
     * The band's own profile (height, weight, birthday, sex, max HR). Its zones, calories and
     * alerts use it, so XEMS sends the trainee's data from the AI profile instead of defaults.
     */
    static byte[] userInfo(Context context) {
        int weight = 75;
        int age = 35;
        boolean female = false;
        int height = 0;
        try {
            if (context != null) {
                SharedPreferences p = context.getSharedPreferences("ai_session", Context.MODE_PRIVATE);
                weight = p.getInt("weight_kg", 75);
                age = p.getInt("age", 35);
                female = "FEMALE".equals(p.getString("sex", "MALE"));
                height = p.getInt("height_cm", 0);
            }
        } catch (Throwable ignored) {
        }
        if (height < 120 || height > 230) {
            height = female ? 165 : 178;
        }
        weight = Math.max(30, Math.min(250, weight));
        age = Math.max(10, Math.min(95, age));
        int year = Calendar.getInstance().get(Calendar.YEAR) - age;
        int hrMax = (int) Math.round(208 - 0.7 * age);
        byte[] info = XiaomiBandProto.concat(
                XiaomiBandProto.protoFieldVarint(1, height),
                XiaomiBandProto.protoFieldFloat(2, (float) weight),
                XiaomiBandProto.protoFieldVarint(3, year * 10000 + 101),
                XiaomiBandProto.protoFieldVarint(4, female ? 2 : 1),
                XiaomiBandProto.protoFieldVarint(5, hrMax),
                XiaomiBandProto.protoFieldVarint(6, 500),
                XiaomiBandProto.protoFieldVarint(7, 8000),
                XiaomiBandProto.protoFieldVarint(9, 12),
                XiaomiBandProto.protoFieldVarint(11, 30));
        byte[] health = XiaomiBandProto.protoFieldMessage(1, info);
        return command(T_HEALTH, HEALTH_USER_INFO, XiaomiBandProto.protoFieldMessage(10, health));
    }

    // ================================================================ music screen

    /**
     * What the band's music screen shows: Command.music(20) → Music.musicInfo(1) →
     * {state 1 (0 stopped, 1 playing, 2 paused), volume 2, track 4, artist 5,
     * position 6 and duration 7 in seconds}.
     */
    static byte[] musicInfo(int state, int volume, String track, String artist, int positionS, int durationS) {
        byte[] info = XiaomiBandProto.concat(
                XiaomiBandProto.protoFieldVarint(1, state),
                XiaomiBandProto.protoFieldVarint(2, volume));
        if (track != null) {
            info = XiaomiBandProto.concat(info, XiaomiBandProto.protoFieldString(4, track));
        }
        if (artist != null) {
            info = XiaomiBandProto.concat(info, XiaomiBandProto.protoFieldString(5, artist));
        }
        if (durationS > 0) {
            info = XiaomiBandProto.concat(info,
                    XiaomiBandProto.protoFieldVarint(6, Math.max(0, Math.min(positionS, durationS))),
                    XiaomiBandProto.protoFieldVarint(7, durationS));
        }
        byte[] music = XiaomiBandProto.protoFieldMessage(1, info);
        return command(T_MUSIC, MUSIC_INFO, XiaomiBandProto.protoFieldMessage(20, music));
    }

    /** Media key from the band: {key, volume} or null. Keys: 0 play, 1 pause, 3 prev, 4 next, 5 volume. */
    static int[] mediaKey(Map<Integer, List<Object>> cmd) {
        Map<Integer, List<Object>> key = sub(sub(cmd, 20), 2);
        if (key == null) {
            return null;
        }
        return new int[] {intField(key, 1), intField(key, 2)};
    }

    // ================================================================ parsing

    static int intField(Map<Integer, List<Object>> map, int key) {
        List<Object> list = map != null ? map.get(key) : null;
        if (list == null || list.isEmpty() || !(list.get(0) instanceof Integer)) {
            return -1;
        }
        return (Integer) list.get(0);
    }

    static byte[] bytesField(Map<Integer, List<Object>> map, int key) {
        List<Object> list = map != null ? map.get(key) : null;
        if (list == null || list.isEmpty() || !(list.get(0) instanceof byte[])) {
            return null;
        }
        return (byte[]) list.get(0);
    }

    static Map<Integer, List<Object>> sub(Map<Integer, List<Object>> map, int key) {
        byte[] b = bytesField(map, key);
        return b != null ? XiaomiBandProto.protoParse(b) : null;
    }
}
