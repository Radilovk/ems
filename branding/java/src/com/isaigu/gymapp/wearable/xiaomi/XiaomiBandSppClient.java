package com.isaigu.gymapp.wearable.xiaomi;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;

import com.isaigu.gymapp.wearable.WearableBleDiagLog;

import java.util.List;
import java.util.Map;
import java.util.Random;

/**
 * Xiaomi band over Bluetooth Classic (RFCOMM / SPP): Band 8 Pro, 9, 9 Pro, 10, 10 Pro.
 * Same protobuf commands and the same auth key math as the BLE link; only the pipe differs.
 *
 * Flow: open RFCOMM → v1 version request → (reply ≥ 2 → v2 session config) → auth 1/26, 1/27
 * → clock, device info, user profile, device state, battery → realtime START 8/45 → 8/47 events.
 * Watch: no first event in 12 s → one START retry, then reconnect; stream silent 15 s →
 * reconnect; device state + battery polled every 30 s (worn / not worn, battery %).
 * Everything runs on the main thread; the port posts its events here.
 */
public final class XiaomiBandSppClient implements XiaomiBandLink {
    private static final String BUILD_TAG = "v1.1.65-spp";
    private static final long VERSION_TIMEOUT_MS = 5000L;
    private static final long AUTH_TIMEOUT_MS = 45000L;
    private static final long WATCH_MS = 3000L;
    private static final long FIRST_EVENT_MS = 12000L;
    private static final long STALL_MS = 15000L;
    private static final long STATUS_POLL_MS = 30000L;
    private static final long START_DELAY_MS = 400L;
    private static final long RECONNECT_MS = 2000L;
    private static final String RAW_FILE = "band-raw.csv";
    private static final String REALTIME_FILE = "band-realtime.csv";

    private static XiaomiBandSppClient instance;

    private final Handler main = new Handler(Looper.getMainLooper());
    private final Random random = new Random();
    private final XiaomiBandSppTask versionTimeout = new XiaomiBandSppTask(this, XiaomiBandSppTask.VERSION_TIMEOUT);
    private final XiaomiBandSppTask authTimeout = new XiaomiBandSppTask(this, XiaomiBandSppTask.AUTH_TIMEOUT);
    private final XiaomiBandSppTask watch = new XiaomiBandSppTask(this, XiaomiBandSppTask.WATCH);
    private final XiaomiBandSppTask reconnect = new XiaomiBandSppTask(this, XiaomiBandSppTask.RECONNECT);
    private final XiaomiBandSppTask startRealtime = new XiaomiBandSppTask(this, XiaomiBandSppTask.START_REALTIME);

    private XiaomiBandBleClient.Listener listener;
    private Context appContext;
    private XiaomiBandSppPort port;
    /** Test hook: when set, connect() uses this port instead of RFCOMM. */
    private XiaomiBandSppPort testPort;

    private String mac = "";
    private byte[] authKey;
    private final byte[] phoneNonce = new byte[16];
    private XiaomiBandCrypto.SessionKeys keys;

    private byte[] rx = new byte[4096];
    private int rxLen;

    private int version;           // 0 unknown, 1, 2
    private int v1Serial;
    private int v1EncCounter;
    private int v2Seq;
    private boolean authStarted;
    private boolean authenticated;
    private boolean realtimeWanted;
    private boolean realtimeStarted;
    private boolean userDisconnect;
    private int startRetries;

    private String state = "idle";
    private int hrEvents;
    private int packetsIn;
    private int packetsOut;
    private long streamStartMs;
    private long lastEventMs;
    private long firstEventMs;
    private int eventCount;
    private long lastStatusPollMs;
    private int lastSteps = -1;
    private int lastCalories = -1;
    private int lastF3 = -1;
    private int lastF5 = -1;
    private int lastRawHr = -1;

    private XiaomiBandSppClient() {}

    public static synchronized XiaomiBandSppClient getInstance() {
        if (instance == null) {
            instance = new XiaomiBandSppClient();
        }
        return instance;
    }

    public static String getBuildTag() {
        return BUILD_TAG;
    }

    void setTestPort(XiaomiBandSppPort p) {
        testPort = p;
    }

    // ================================================================ XiaomiBandLink

    @Override
    public void setListener(XiaomiBandBleClient.Listener l) {
        listener = l;
    }

    @Override
    public String getTransportName() {
        return version == 2 ? "SPP v2" : version == 1 ? "SPP v1" : "SPP";
    }

    @Override
    public String getLastState() {
        return state;
    }

    @Override
    public boolean isConnected() {
        return port != null && authenticated;
    }

    @Override
    public int getHrEventCount() {
        return hrEvents;
    }

    @Override
    public int getNotifyEventCount() {
        return packetsIn;
    }

    /** SPP has no characteristics: 51 = packets in, 52 = packets out. */
    @Override
    public int getNotifyCount51() {
        return packetsIn;
    }

    @Override
    public int getNotifyCount52() {
        return packetsOut;
    }

    @Override
    public String getLastNotifyChar() {
        return "spp";
    }

    @Override
    public long getLastRealtimeEventMs() {
        return lastEventMs;
    }

    @Override
    public int getRealtimeEventCount() {
        return eventCount;
    }

    @Override
    public float getRealtimeEventRate() {
        if (eventCount < 2 || lastEventMs <= firstEventMs) {
            return 0f;
        }
        return (eventCount - 1) * 1000f / (lastEventMs - firstEventMs);
    }

    @Override
    public int getLastSteps() {
        return lastSteps;
    }

    @Override
    public int getLastCalories() {
        return lastCalories;
    }

    @Override
    public int getLastF3() {
        return lastF3;
    }

    @Override
    public int getLastF5() {
        return lastF5;
    }

    @Override
    public int getLastRawHr() {
        return lastRawHr;
    }

    // ================================================================ connect / disconnect

    @Override
    public void connect(Context context, String macAddress, String authKeyHex) {
        if (context == null) {
            return;
        }
        appContext = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        WearableBleDiagLog.init(appContext);
        WearableBleDiagLog.clear();
        log("build", BUILD_TAG);
        String mark = "# session " + System.currentTimeMillis() + " " + BUILD_TAG;
        WearableBleDiagLog.appendRaw(RAW_FILE, mark);
        WearableBleDiagLog.appendRaw(REALTIME_FILE, mark
                + " | epochMs,dtMs,steps,calories,f3,hr,f5,standing,extra");
        closePort();
        resetSession();
        userDisconnect = false;
        main.removeCallbacks(reconnect);
        mac = macAddress != null ? macAddress.trim().toUpperCase() : "";
        authKey = XiaomiBand.parseAuthKey(authKeyHex);
        if (authKey == null) {
            setState("bad_auth_key");
            return;
        }
        if (!mac.matches("([0-9A-F]{2}:){5}[0-9A-F]{2}")) {
            setState("bad_mac");
            return;
        }
        setState("connecting");
        main.postDelayed(authTimeout, AUTH_TIMEOUT_MS);
        if (testPort != null) {
            port = testPort;
            onPortOpened(testPort);
            return;
        }
        BluetoothAdapter adapter = BluetoothAdapter.getDefaultAdapter();
        if (adapter == null) {
            setState("no_bluetooth");
            return;
        }
        try {
            if (!adapter.isEnabled()) {
                setState("no_bluetooth");
                return;
            }
            BluetoothDevice device = adapter.getRemoteDevice(mac);
            log("connect", "spp mac=" + mac + " bond=" + device.getBondState());
            if (device.getBondState() != BluetoothDevice.BOND_BONDED) {
                // RFCOMM needs a Classic bond. Mi Fitness creates it on pairing.
                log("connect", "band is not bonded over Bluetooth Classic");
            }
            XiaomiBandRfcommPort p = new XiaomiBandRfcommPort(this, device);
            port = p;
            p.start();
        } catch (SecurityException e) {
            setState("no_bt_permission");
        } catch (IllegalArgumentException e) {
            setState("bad_mac");
        } catch (Throwable t) {
            log("ERR:connect", String.valueOf(t));
            setState("connect_fail");
        }
    }

    @Override
    public void disconnect() {
        userDisconnect = true;
        realtimeWanted = false;
        main.removeCallbacks(reconnect);
        if (authenticated && realtimeStarted) {
            send(XiaomiBandMessages.request(XiaomiBandMessages.T_HEALTH, XiaomiBandMessages.HEALTH_RT_STOP));
        }
        closePort();
        resetSession();
        setState("disconnected");
        notifyConnected(false);
    }

    @Override
    public void startRealtime() {
        realtimeWanted = true;
        if (authenticated && !realtimeStarted) {
            main.removeCallbacks(startRealtime);
            main.postDelayed(startRealtime, START_DELAY_MS);
        }
    }

    private void resetSession() {
        main.removeCallbacks(versionTimeout);
        main.removeCallbacks(authTimeout);
        main.removeCallbacks(watch);
        main.removeCallbacks(startRealtime);
        rxLen = 0;
        version = 0;
        v1Serial = 0;
        v1EncCounter = 0;
        v2Seq = 0;
        keys = null;
        authStarted = false;
        authenticated = false;
        realtimeStarted = false;
        startRetries = 0;
        hrEvents = 0;
        packetsIn = 0;
        packetsOut = 0;
        streamStartMs = 0L;
        lastEventMs = 0L;
        firstEventMs = 0L;
        eventCount = 0;
        lastStatusPollMs = 0L;
        lastSteps = -1;
        lastCalories = -1;
        lastF3 = -1;
        lastF5 = -1;
        lastRawHr = -1;
        XiaomiBandStatus.reset();
    }

    private void closePort() {
        XiaomiBandSppPort p = port;
        port = null;
        if (p != null && p != testPort) {
            try {
                p.close();
            } catch (Throwable ignored) {
            }
        }
    }

    // ================================================================ port events

    void onPortOpened(XiaomiBandSppPort p) {
        if (p != port) {
            return;
        }
        log("spp", "socket open");
        setState("handshake");
        write(XiaomiBandSppFrames.v1Version());
        main.postDelayed(versionTimeout, VERSION_TIMEOUT_MS);
    }

    void onPortFailed(XiaomiBandSppPort p, String why) {
        if (p != port) {
            return;
        }
        log("spp", "open failed: " + why);
        port = null;
        if ("permission".equals(why)) {
            setState("no_bt_permission");
            return;
        }
        dropped("connect_fail");
    }

    void onPortClosed(XiaomiBandSppPort p, String why) {
        if (p != port) {
            return;
        }
        log("spp", "closed: " + why);
        closePort();
        dropped("disconnected");
    }

    /** Link lost: reconnect when a module still wants the stream, else stop. */
    private void dropped(String failState) {
        boolean wanted = realtimeWanted && !userDisconnect;
        boolean wasAuth = authenticated;
        resetSession();
        if (wasAuth) {
            notifyConnected(false);
        }
        if (wanted && appContext != null) {
            setState("reconnecting");
            main.removeCallbacks(reconnect);
            main.postDelayed(reconnect, RECONNECT_MS);
            return;
        }
        setState(failState);
    }

    void onPortBytes(XiaomiBandSppPort p, byte[] data) {
        if (p != port || data == null) {
            return;
        }
        if (rxLen + data.length > rx.length) {
            byte[] bigger = new byte[Math.max(rx.length * 2, rxLen + data.length)];
            System.arraycopy(rx, 0, bigger, 0, rxLen);
            rx = bigger;
        }
        System.arraycopy(data, 0, rx, rxLen, data.length);
        rxLen += data.length;
        while (rxLen > 0 && port == p) {
            XiaomiBandSppFrames.Packet pk = XiaomiBandSppFrames.parse(rx, rxLen);
            if (pk.kind == XiaomiBandSppFrames.KIND_INCOMPLETE) {
                break;
            }
            consume(pk.size);
            if (pk.kind == XiaomiBandSppFrames.KIND_GARBAGE) {
                log("spp", "skip " + pk.size + "B");
                continue;
            }
            packetsIn++;
            onPacket(pk);
        }
    }

    private void consume(int n) {
        int keep = rxLen - n;
        if (keep > 0) {
            System.arraycopy(rx, n, rx, 0, keep);
        }
        rxLen = Math.max(0, keep);
    }

    private void onPacket(XiaomiBandSppFrames.Packet pk) {
        if (pk.version == 1) {
            if (pk.channel == 0) {
                onVersion(pk.payload);
                return;
            }
            if (pk.channel != 1 && pk.channel != 2) {
                log("spp", "v1 channel " + pk.channel + " ignored");
                return;
            }
            byte[] body = pk.payload;
            if (pk.dataType == 1) {
                body = decryptV1(body);
                if (body == null) {
                    return;
                }
            }
            onCommand(body);
            return;
        }
        switch (pk.type) {
            case XiaomiBandSppFrames.V2_SESSION:
                log("spp", "v2 session reply");
                beginAuth();
                return;
            case XiaomiBandSppFrames.V2_ACK:
                return;
            case XiaomiBandSppFrames.V2_DATA:
                write(XiaomiBandSppFrames.v2Ack(pk.seq));
                if (pk.channel != 1) {
                    log("spp", "v2 channel " + pk.channel + " (" + pk.payload.length + "B) ignored");
                    return;
                }
                byte[] body = pk.payload;
                if (pk.opcode == 2) {
                    if (keys == null) {
                        log("spp", "encrypted packet before auth");
                        return;
                    }
                    try {
                        body = XiaomiBandSppFrames.ctr(keys.decKey, body);
                    } catch (Throwable t) {
                        log("ERR:ctr", String.valueOf(t));
                        return;
                    }
                }
                onCommand(body);
                return;
            default:
                log("spp", "v2 type " + pk.type + " ignored");
        }
    }

    private byte[] decryptV1(byte[] data) {
        if (keys == null) {
            return null;
        }
        try {
            return XiaomiBandCrypto.aesCcmDecrypt(keys.decKey, keys.decNonce, 0, data);
        } catch (Throwable first) {
            // Some firmwares prefix a u16 counter, like the phone does.
            try {
                if (data.length > 6) {
                    int ctr = XiaomiBandSppFrames.u16(data, 0);
                    return XiaomiBandCrypto.aesCcmDecrypt(keys.decKey, keys.decNonce, ctr,
                            XiaomiBandSppFrames.slice(data, 2, data.length - 2));
                }
            } catch (Throwable ignored) {
            }
            log("ERR:ccm", String.valueOf(first));
            return null;
        }
    }

    // ================================================================ handshake

    private void onVersion(byte[] payload) {
        main.removeCallbacks(versionTimeout);
        int v = payload != null && payload.length > 0 ? payload[0] & 0xFF : 0;
        log("spp", "protocol version " + v);
        if (v >= 2) {
            version = 2;
            write(XiaomiBandSppFrames.v2SessionStart());
            return;
        }
        version = 1;
        beginAuth();
    }

    void onVersionTimeout() {
        if (version != 0 || port == null) {
            return;
        }
        log("spp", "no version reply — assume v1");
        version = 1;
        beginAuth();
    }

    private void beginAuth() {
        if (authStarted) {
            return;
        }
        authStarted = true;
        setState("auth_start");
        random.nextBytes(phoneNonce);
        send(XiaomiBandMessages.authNonce(phoneNonce));
    }

    void onAuthTimeout() {
        if (!authenticated && port != null) {
            log("auth", "timeout");
            userDisconnect = true;
            closePort();
            resetSession();
            setState("auth_timeout");
        }
    }

    private void onCommand(byte[] raw) {
        Map<Integer, List<Object>> cmd = XiaomiBandProto.protoParse(raw);
        int type = XiaomiBandMessages.intField(cmd, 1);
        int sub = XiaomiBandMessages.intField(cmd, 2);
        if (type != XiaomiBandMessages.T_AUTH) {
            WearableBleDiagLog.appendRaw(RAW_FILE, System.currentTimeMillis() + "," + type + ","
                    + sub + "," + hex(raw));
        }
        if (type == XiaomiBandMessages.T_AUTH) {
            onAuth(cmd, sub);
        } else if (type == XiaomiBandMessages.T_HEALTH && sub == XiaomiBandMessages.HEALTH_RT_EVENT) {
            onRealtime(cmd);
        } else if (type == XiaomiBandMessages.T_SYSTEM) {
            if (XiaomiBandStatus.onSystemCommand(sub, cmd)) {
                log("status", "bat=" + XiaomiBandStatus.getBatteryPercent()
                        + " worn=" + XiaomiBandStatus.isKnownWorn()
                        + " off=" + XiaomiBandStatus.isKnownNotWorn()
                        + " fw=" + XiaomiBandStatus.getFirmware());
            }
        } else {
            log("cmd", "type=" + type + " sub=" + sub);
        }
    }

    private void onAuth(Map<Integer, List<Object>> cmd, int sub) {
        if (authenticated) {
            return;
        }
        if (sub == XiaomiBandMessages.AUTH_NONCE) {
            try {
                answerWatchNonce(cmd);
            } catch (Throwable t) {
                log("ERR:auth", String.valueOf(t));
                setState("auth_fail");
            }
            return;
        }
        if (sub == XiaomiBandMessages.AUTH_STEP3) {
            int status = XiaomiBandMessages.intField(cmd, 3);
            if (keys == null) {
                setState("auth_fail");
                return;
            }
            authenticated = true;
            main.removeCallbacks(authTimeout);
            setState("authenticated");
            notifyConnected(true);
            log("auth", "ok (" + getTransportName() + ", status=" + status + ")");
            afterAuth();
        }
    }

    private void answerWatchNonce(Map<Integer, List<Object>> cmd) throws Exception {
        Map<Integer, List<Object>> auth = XiaomiBandMessages.sub(cmd, 3);
        Map<Integer, List<Object>> wn = XiaomiBandMessages.sub(auth, 31);
        byte[] watchNonce = XiaomiBandMessages.bytesField(wn, 1);
        byte[] watchHmac = XiaomiBandMessages.bytesField(wn, 2);
        if (watchNonce == null || watchHmac == null) {
            throw new IllegalStateException("no watch nonce");
        }
        XiaomiBandCrypto.SessionKeys k = XiaomiBandCrypto.computeSessionKeys(authKey, phoneNonce, watchNonce);
        byte[] expected = XiaomiBandCrypto.hmacSha256(k.decKey, XiaomiBandProto.concat(watchNonce, phoneNonce));
        if (!XiaomiBandCrypto.bytesEqual(expected, watchHmac)) {
            // Wrong auth key: the band's proof does not match ours.
            setState("auth_fail");
            log("auth", "hmac mismatch — wrong auth key");
            return;
        }
        keys = k;
        byte[] nonces = XiaomiBandCrypto.hmacSha256(k.encKey, XiaomiBandProto.concat(phoneNonce, watchNonce));
        byte[] info = XiaomiBandCrypto.aesCcmEncrypt(k.encKey, k.encNonce, 0,
                XiaomiBandMessages.authDeviceInfo());
        send(XiaomiBandMessages.authStep3(nonces, info));
    }

    private void afterAuth() {
        setState("initialized");
        send(XiaomiBandMessages.clock());
        send(XiaomiBandMessages.request(XiaomiBandMessages.T_SYSTEM, XiaomiBandMessages.SYS_DEVICE_INFO));
        send(XiaomiBandMessages.userInfo(appContext));
        pollStatus();
        if (realtimeWanted) {
            main.postDelayed(startRealtime, START_DELAY_MS);
        }
    }

    private void pollStatus() {
        lastStatusPollMs = System.currentTimeMillis();
        send(XiaomiBandMessages.request(XiaomiBandMessages.T_SYSTEM, XiaomiBandMessages.SYS_STATE_GET));
        send(XiaomiBandMessages.request(XiaomiBandMessages.T_SYSTEM, XiaomiBandMessages.SYS_BATTERY));
    }

    // ================================================================ realtime

    void onStartRealtimeDue() {
        if (!authenticated || !realtimeWanted || realtimeStarted) {
            return;
        }
        setState("starting");
        log("health", "realtime START");
        send(XiaomiBandMessages.request(XiaomiBandMessages.T_HEALTH, XiaomiBandMessages.HEALTH_RT_START));
        realtimeStarted = true;
        streamStartMs = System.currentTimeMillis();
        main.removeCallbacks(watch);
        main.postDelayed(watch, WATCH_MS);
    }

    void onWatchTick() {
        if (!authenticated || !realtimeStarted || port == null) {
            return;
        }
        long now = System.currentTimeMillis();
        if (lastEventMs == 0L && now - streamStartMs > FIRST_EVENT_MS) {
            if (startRetries < 1) {
                startRetries++;
                log("health", "no first 8/47 — START once more");
                realtimeStarted = false;
                onStartRealtimeDue();
                return;
            }
            log("health", "no 8/47 — reconnect");
            closePort();
            dropped("disconnected");
            return;
        }
        if (lastEventMs > 0L && now - lastEventMs > STALL_MS) {
            log("health", "stream stalled — reconnect");
            closePort();
            dropped("disconnected");
            return;
        }
        if (now - lastStatusPollMs > STATUS_POLL_MS) {
            pollStatus();
        }
        main.postDelayed(watch, WATCH_MS);
    }

    void onReconnectTick() {
        if (userDisconnect || !realtimeWanted || appContext == null || authKey == null) {
            return;
        }
        log("spp", "reconnecting");
        boolean wanted = realtimeWanted;
        connect(appContext, mac, hex(authKey));
        realtimeWanted = wanted;
    }

    private void onRealtime(Map<Integer, List<Object>> cmd) {
        Map<Integer, List<Object>> rt = XiaomiBandMessages.sub(XiaomiBandMessages.sub(cmd, 10), 39);
        if (rt == null) {
            log("hr", "8/47 without realTimeStats");
            return;
        }
        long now = System.currentTimeMillis();
        long dt = lastEventMs > 0L ? now - lastEventMs : 0L;
        lastEventMs = now;
        if (firstEventMs == 0L) {
            firstEventMs = now;
        }
        eventCount++;
        int hr = Math.max(0, XiaomiBandMessages.intField(rt, 4));
        lastSteps = XiaomiBandMessages.intField(rt, 1);
        lastCalories = XiaomiBandMessages.intField(rt, 2);
        lastF3 = XiaomiBandMessages.intField(rt, 3);
        lastF5 = XiaomiBandMessages.intField(rt, 5);
        lastRawHr = hr;
        StringBuilder extra = new StringBuilder();
        for (Map.Entry<Integer, List<Object>> e : rt.entrySet()) {
            int f = e.getKey();
            if (f < 1 || f > 6) {
                Object v = e.getValue().get(0);
                extra.append(f).append('=').append(v instanceof byte[] ? hex((byte[]) v) : String.valueOf(v))
                        .append(';');
            }
        }
        WearableBleDiagLog.appendRaw(REALTIME_FILE, now + "," + dt + "," + lastSteps + ","
                + lastCalories + "," + lastF3 + "," + hr + "," + lastF5 + ","
                + XiaomiBandMessages.intField(rt, 6) + "," + extra);
        if (hr == 0) {
            setState("measuring");
            return;
        }
        if (hr <= 220) {
            hrEvents++;
            setState("streaming");
            if (listener != null) {
                listener.onHeartRate(hr);
            }
        }
    }

    // ================================================================ sending

    /** Auth commands go plain; everything after auth is encrypted. */
    private void send(byte[] proto) {
        if (port == null || proto == null) {
            return;
        }
        boolean auth = !authenticated;
        try {
            if (version == 2) {
                byte[] body = auth ? proto : XiaomiBandSppFrames.ctr(keys.encKey, proto);
                write(XiaomiBandSppFrames.v2Data(v2Seq++ & 0xFF, 1, auth ? 1 : 2, body));
            } else {
                byte[] body;
                int dataType;
                if (auth) {
                    body = proto;
                    dataType = 2;
                } else {
                    int ctr = ++v1EncCounter;
                    byte[] enc = XiaomiBandCrypto.aesCcmEncrypt(keys.encKey, keys.encNonce, ctr, proto);
                    body = new byte[enc.length + 2];
                    XiaomiBandSppFrames.putU16(body, 0, ctr);
                    System.arraycopy(enc, 0, body, 2, enc.length);
                    dataType = 1;
                }
                write(XiaomiBandSppFrames.v1(2, false, 2, v1Serial++ & 0xFF, dataType, body));
            }
        } catch (Throwable t) {
            log("ERR:send", String.valueOf(t));
            setState("send_fail");
        }
    }

    private void write(byte[] frame) {
        XiaomiBandSppPort p = port;
        if (p == null) {
            return;
        }
        packetsOut++;
        p.write(frame);
    }

    // ================================================================ helpers

    void log(String event, String detail) {
        WearableBleDiagLog.log(event, detail);
    }

    private void setState(String s) {
        state = s != null ? s : "";
        log("state", state);
        if (listener != null) {
            listener.onState(state);
        }
    }

    private void notifyConnected(boolean c) {
        if (listener != null) {
            listener.onConnected(c);
        }
    }

    static String hex(byte[] b) {
        if (b == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder(b.length * 2);
        for (byte x : b) {
            sb.append(Character.forDigit((x >> 4) & 0xF, 16)).append(Character.forDigit(x & 0xF, 16));
        }
        return sb.toString();
    }
}
