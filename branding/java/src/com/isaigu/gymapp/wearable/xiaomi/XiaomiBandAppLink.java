package com.isaigu.gymapp.wearable.xiaomi;

import com.isaigu.gymapp.wearable.WearableBleDiagLog;

import java.nio.charset.Charset;
import java.util.List;
import java.util.Map;

/**
 * Messages between the XEMS app on the band (quick app, system.interconnect) and XEMS here.
 *
 * <p>The band routes an app's messages only to a phone app it believes is connected. The phone
 * side says so itself (command type 20, ThirdpartyApp in field 22):
 * <ul>
 *   <li>band → phone: field 5 BasicInfo{package, fingerprint} when the app comes up;</li>
 *   <li>phone → band: 20/7 field 8 PhoneAppStatus{BasicInfo, status 1 = connected};</li>
 *   <li>band → phone: field 9 MessageContent{BasicInfo, content} (the app's send());</li>
 *   <li>phone → band: 20/8 field 9 MessageContent{BasicInfo, content} (the app's onmessage);</li>
 *   <li>20/0 asks for the installed apps: field 1 list of AppItem{package, fingerprint,
 *       version, removable, name} — used to learn the fingerprint (and version) up front.</li>
 * </ul>
 * Without the "connected" status the app's interconnect stays closed (send fails with 1006).
 * Protocol facts from the public AstroBox protobuf definitions; the code is written here.
 */
public final class XiaomiBandAppLink {
    public interface Listener {
        void onAppMessage(String json);

        /** The band reports the XEMS app installed with this version code. */
        void onAppInstalled(int versionCode);
    }

    public static final String PACKAGE = "com.xems.band";

    static final int T_APP = 20;
    static final int APP_LIST = 0;
    static final int APP_STATUS_SYNC = 7;
    static final int APP_MESSAGE_TO_WEAR = 8;
    static final int STATUS_CONNECTED = 1;

    private static final Charset UTF8 = Charset.forName("UTF-8");
    private static volatile Listener listener;
    private static byte[] fingerprint;
    private static boolean announced;
    private static long lastMs;

    private XiaomiBandAppLink() {}

    public static void setListener(Listener l) {
        listener = l;
    }

    /** XEMS has told the band it is connected, so the band app's link is open. */
    public static boolean isLinked() {
        return fingerprint != null && announced;
    }

    public static long getLastMessageMs() {
        return lastMs;
    }

    static void reset() {
        fingerprint = null;
        announced = false;
    }

    /** After auth: ask for the installed apps to learn our app's fingerprint (then announce). */
    static void onAuthenticated(XiaomiBandLink link) {
        reset();
        link.sendCommand(XiaomiBandMessages.request(T_APP, APP_LIST));
    }

    /** Ask again (after an install the app and its fingerprint are new). */
    static void refresh(XiaomiBandLink link) {
        announced = false;
        link.sendCommand(XiaomiBandMessages.request(T_APP, APP_LIST));
    }

    /** Type-20 command from the band; true when it was about apps and consumed. */
    static boolean onCommand(int type, int sub, Map<Integer, List<Object>> cmd) {
        if (type != T_APP) {
            return false;
        }
        Map<Integer, List<Object>> tp = XiaomiBandMessages.sub(cmd, 22);
        if (tp == null) {
            return false;
        }
        if (tp.containsKey(1)) {
            onAppList(XiaomiBandMessages.sub(tp, 1));
            return true;
        }
        if (tp.containsKey(5)) {
            Map<Integer, List<Object>> basic = XiaomiBandMessages.sub(tp, 5);
            if (isOurs(basic)) {
                fingerprint = fp(basic);
                WearableBleDiagLog.log("applink", "app online");
                announce();
            }
            return true;
        }
        if (tp.containsKey(9)) {
            Map<Integer, List<Object>> mc = XiaomiBandMessages.sub(tp, 9);
            Map<Integer, List<Object>> basic = XiaomiBandMessages.sub(mc, 1);
            byte[] content = XiaomiBandMessages.bytesField(mc, 2);
            if (isOurs(basic) && content != null) {
                if (fingerprint == null) {
                    fingerprint = fp(basic);
                }
                if (!announced) {
                    announce();
                }
                lastMs = System.currentTimeMillis();
                String json = new String(content, UTF8);
                WearableBleDiagLog.log("applink", "← " + json);
                Listener l = listener;
                if (l != null) {
                    l.onAppMessage(json);
                }
            }
            return true;
        }
        if (tp.containsKey(8)) {
            WearableBleDiagLog.log("applink", "app status " + sub);
            return true;
        }
        return false;
    }

    private static void onAppList(Map<Integer, List<Object>> list) {
        List<Object> items = list != null ? list.get(1) : null;
        int n = items != null ? items.size() : 0;
        for (int i = 0; i < n; i++) {
            Object o = items.get(i);
            if (!(o instanceof byte[])) {
                continue;
            }
            Map<Integer, List<Object>> item = XiaomiBandProto.protoParse((byte[]) o);
            if (!isOurs(item)) {
                continue;
            }
            fingerprint = fp(item);
            int version = XiaomiBandMessages.intField(item, 3);
            WearableBleDiagLog.log("applink", "installed v" + version);
            Listener l = listener;
            if (l != null && version > 0) {
                l.onAppInstalled(version);
            }
            announce();
            return;
        }
        WearableBleDiagLog.log("applink", "not installed (" + n + " apps)");
    }

    /** Tell the band the phone side of our app is connected (opens the app's interconnect). */
    private static void announce() {
        XiaomiBandLink link = XiaomiBand.link();
        if (link == null || !link.isConnected() || fingerprint == null) {
            return;
        }
        byte[] status = XiaomiBandProto.concat(
                XiaomiBandProto.protoFieldMessage(1, basicInfo()),
                XiaomiBandProto.protoFieldVarint(2, STATUS_CONNECTED));
        link.sendCommand(XiaomiBandMessages.command(T_APP, APP_STATUS_SYNC,
                XiaomiBandProto.protoFieldMessage(22, XiaomiBandProto.protoFieldMessage(8, status))));
        announced = true;
        WearableBleDiagLog.log("applink", "announced connected");
    }

    /** Send JSON to the band app (no-op until its fingerprint is known). */
    public static boolean send(String json) {
        XiaomiBandLink link = XiaomiBand.link();
        if (fingerprint == null || json == null || link == null || !link.isConnected()) {
            return false;
        }
        byte[] mc = XiaomiBandProto.concat(
                XiaomiBandProto.protoFieldMessage(1, basicInfo()),
                XiaomiBandProto.protoFieldBytes(2, json.getBytes(UTF8)));
        link.sendCommand(XiaomiBandMessages.command(T_APP, APP_MESSAGE_TO_WEAR,
                XiaomiBandProto.protoFieldMessage(22, XiaomiBandProto.protoFieldMessage(9, mc))));
        return true;
    }

    private static byte[] basicInfo() {
        return XiaomiBandProto.concat(
                XiaomiBandProto.protoFieldString(1, PACKAGE),
                XiaomiBandProto.protoFieldBytes(2, fingerprint != null ? fingerprint : new byte[0]));
    }

    private static boolean isOurs(Map<Integer, List<Object>> m) {
        byte[] p = XiaomiBandMessages.bytesField(m, 1);
        return p != null && PACKAGE.equals(new String(p, UTF8));
    }

    private static byte[] fp(Map<Integer, List<Object>> m) {
        byte[] f = XiaomiBandMessages.bytesField(m, 2);
        return f != null ? f : new byte[0];
    }
}
