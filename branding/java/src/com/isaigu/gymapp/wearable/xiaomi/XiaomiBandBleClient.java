package com.isaigu.gymapp.wearable.xiaomi;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.content.Context;
import android.os.Build;

import com.isaigu.gymapp.wearable.WearableBleDiagLog;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

/**
 * Direct BLE client for Xiaomi Band 8 (encrypted V1 protocol on service 0xFE95).
 */
public final class XiaomiBandBleClient {
    public interface Listener {
        void onState(String state);

        void onHeartRate(int hr);

        void onConnected(boolean connected);
    }

    private static final int AUTH_CMD_TYPE = 1;
    private static final int AUTH_CMD_NONCE = 26;
    private static final int AUTH_CMD_AUTH = 27;
    private static final int AUTH_CMD_SEND_USERID = 5;
    private static final int HEALTH_CMD_TYPE = 8;
    private static final int HEALTH_CMD_SET_USER_INFO = 0;
    private static final int HEALTH_CMD_REALTIME_START = 45;
    private static final int HEALTH_CMD_REALTIME_STOP = 46;
    private static final int HEALTH_CMD_REALTIME_EVENT = 47;

    private static final long AUTH_TIMEOUT_MS = 45000L;

    private static XiaomiBandBleClient instance;

    private final Random random = new Random();
    private final Map<Integer, byte[]> chunkMap = new HashMap<Integer, byte[]>();
    private final XiaomiBandGattCallback gattCallback = new XiaomiBandGattCallback(this);
    private final XiaomiBandWriteQueue writeQueue = new XiaomiBandWriteQueue(this);

    private Context appContext;
    private Listener listener;
    private BluetoothGatt gatt;
    private BluetoothGattCharacteristic charRead;
    private BluetoothGattCharacteristic charWrite;
    private byte[] authKey;
    private byte[] phoneNonce = new byte[16];
    private XiaomiBandCrypto.SessionKeys session;
    private boolean frameEncrypt;
    private int chunkNum;
    private boolean chunkEncrypted;
    private boolean authenticated;
    private boolean userInfoSent;
    private boolean realtimeActive;
    private String targetMac = "";
    private int hrEventCount;
    private int notifyEventCount;
    private String lastState = "idle";
    private Runnable authTimeoutRunnable;

    private XiaomiBandBleClient() {}

    public static synchronized XiaomiBandBleClient getInstance() {
        if (instance == null) {
            instance = new XiaomiBandBleClient();
        }
        return instance;
    }

    public int getHrEventCount() {
        return hrEventCount;
    }

    public int getNotifyEventCount() {
        return notifyEventCount;
    }

    public String getLastState() {
        return lastState;
    }

    public boolean isAuthenticated() {
        return authenticated;
    }

    public boolean isConnected() {
        return gatt != null && authenticated;
    }

    public void setListener(Listener listener) {
        this.listener = listener;
    }

    BluetoothGatt getGatt() {
        return gatt;
    }

    BluetoothGattCharacteristic getWriteCharacteristic() {
        return charWrite;
    }

    void log(String event, String detail) {
        WearableBleDiagLog.log(event, detail);
    }

    void logHex(String event, byte[] data, int maxBytes) {
        WearableBleDiagLog.logHex(event, data, maxBytes);
    }

    void logError(String event, Throwable t) {
        String msg = t != null ? t.getClass().getSimpleName() + ": " + t.getMessage() : "null";
        WearableBleDiagLog.log("ERR:" + event, msg);
    }

    public void connect(Context context, String mac, String authKeyHex) {
        if (context == null) {
            return;
        }
        WearableBleDiagLog.init(context);
        WearableBleDiagLog.clear();
        appContext = context.getApplicationContext();
        targetMac = mac != null ? mac.trim() : "";
        authKey = parseAuthKey(authKeyHex);
        if (authKey == null || authKey.length != 16) {
            setState("bad_auth_key");
            return;
        }
        random.nextBytes(phoneNonce);
        authenticated = false;
        userInfoSent = false;
        frameEncrypt = false;
        realtimeActive = false;
        hrEventCount = 0;
        notifyEventCount = 0;
        session = null;
        chunkMap.clear();
        writeQueue.clear();
        disconnectGatt();
        if (!isValidMac(targetMac)) {
            setState("bad_mac");
            return;
        }
        setState("connecting");
        log("connect", "mac=" + targetMac);
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
        } catch (Throwable ignored) {
        }
        BluetoothDevice device;
        try {
            device = adapter.getRemoteDevice(targetMac);
        } catch (IllegalArgumentException e) {
            setState("bad_mac");
            return;
        } catch (Throwable t) {
            setState("connect_fail");
            return;
        }
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                gatt = device.connectGatt(appContext, false, gattCallback,
                        BluetoothDevice.TRANSPORT_LE);
            } else {
                gatt = device.connectGatt(appContext, false, gattCallback);
            }
        } catch (SecurityException e) {
            logError("connectGatt", e);
            setState("no_bt_permission");
            return;
        } catch (Throwable t) {
            logError("connectGatt", t);
            setState("connect_fail");
            return;
        }
        if (gatt == null) {
            setState("connect_fail");
            return;
        }
        scheduleAuthTimeout();
    }

    public void disconnect() {
        cancelAuthTimeout();
        if (realtimeActive && authenticated) {
            sendRealtimeStop();
        }
        realtimeActive = false;
        authenticated = false;
        userInfoSent = false;
        writeQueue.clear();
        disconnectGatt();
        setState("disconnected");
        notifyConnected(false);
    }

    public void startRealtime() {
        realtimeActive = true;
        if (authenticated && userInfoSent) {
            sendRealtimeStart();
            setState("streaming");
        }
    }

    void onGattConnected(BluetoothGatt g) {
        gatt = g;
        setState("discovering");
        try {
            g.discoverServices();
        } catch (SecurityException e) {
            logError("discoverServices", e);
            setState("no_bt_permission");
        } catch (Throwable t) {
            logError("discoverServices", t);
            setState("service_fail");
        }
    }

    void onGattDisconnected() {
        authenticated = false;
        userInfoSent = false;
        realtimeActive = false;
        writeQueue.clear();
        setState("disconnected");
        notifyConnected(false);
    }

    void onGattCharsReady(BluetoothGatt g, BluetoothGattCharacteristic read,
            BluetoothGattCharacteristic write) {
        charRead = read;
        charWrite = write;
        gatt = g;
        log("gatt", "chars 51/52 ready");
    }

    void beginNotificationSetup(BluetoothGatt g, BluetoothGattCharacteristic read,
            BluetoothGattCharacteristic write) {
        writeQueue.enqueueEnableNotify(g, read);
        writeQueue.enqueueEnableNotify(g, write);
        writeQueue.enqueueRunnable(new XiaomiBandAuthStartRunnable(this));
    }

    void onGattState(String state) {
        setState(state);
    }

    void onGattSendAuthNonce() {
        sendAuthPhoneNonce();
    }

    void onGattNotify(byte[] data) {
        notifyEventCount++;
        handleNotify(data);
    }

    void onGattWriteDone() {
        writeQueue.onWriteFinished();
    }

    boolean writeFrameNow(BluetoothGatt gattRef, BluetoothGattCharacteristic writeChar,
            byte[] frame) {
        if (gattRef == null || writeChar == null || frame == null) {
            return false;
        }
        writeChar.setWriteType(BluetoothGattCharacteristic.WRITE_TYPE_NO_RESPONSE);
        writeChar.setValue(frame);
        try {
            if (gattRef.writeCharacteristic(writeChar)) {
                return true;
            }
        } catch (Throwable ignored) {
        }
        writeChar.setWriteType(BluetoothGattCharacteristic.WRITE_TYPE_DEFAULT);
        writeChar.setValue(frame);
        try {
            return gattRef.writeCharacteristic(writeChar);
        } catch (Throwable t) {
            logError("writeFrame", t);
            return false;
        }
    }

    private void disconnectGatt() {
        if (gatt != null) {
            try {
                gatt.disconnect();
            } catch (Throwable ignored) {
            }
            try {
                gatt.close();
            } catch (Throwable ignored) {
            }
            gatt = null;
        }
        charRead = null;
        charWrite = null;
    }

    private void sendAuthPhoneNonce() {
        log("auth", "send phone nonce");
        byte[] phoneNonceMsg = XiaomiBandProto.protoFieldBytes(1, phoneNonce);
        byte[] authMsg = XiaomiBandProto.protoFieldMessage(30, phoneNonceMsg);
        byte[] payload = XiaomiBandProto.protoFieldMessage(3, authMsg);
        byte[] cmd = makeCommand(AUTH_CMD_TYPE, AUTH_CMD_NONCE, payload);
        writeQueue.enqueueBytes(XiaomiBandFraming.buildPlainFrame(cmd));
    }

    private void sendUserInfo() {
        log("health", "setUserInfo");
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
        byte[] cmd = makeCommand(HEALTH_CMD_TYPE, HEALTH_CMD_SET_USER_INFO,
                XiaomiBandProto.protoFieldMessage(10, health));
        sendCommand(cmd);
        userInfoSent = true;
    }

    private void sendRealtimeStart() {
        log("health", "realtime START");
        byte[] cmd = makeCommand(HEALTH_CMD_TYPE, HEALTH_CMD_REALTIME_START, null);
        sendCommand(cmd);
    }

    private void sendRealtimeStop() {
        byte[] cmd = makeCommand(HEALTH_CMD_TYPE, HEALTH_CMD_REALTIME_STOP, null);
        sendCommand(cmd);
    }

    private void sendCommand(byte[] protoBytes) {
        try {
            byte[] frame;
            if (frameEncrypt && session != null) {
                byte[] enc = XiaomiBandCrypto.aesCcmEncrypt(
                        session.encKey, session.encNonce, session.encIndex, protoBytes);
                session.encIndex++;
                frame = XiaomiBandFraming.buildEncFrame(enc, session.encIndex - 1);
            } else {
                frame = XiaomiBandFraming.buildPlainFrame(protoBytes);
            }
            writeQueue.enqueueBytes(frame);
        } catch (Throwable t) {
            logError("sendCommand", t);
            setState("send_fail");
        }
    }

    private void handleNotify(byte[] data) {
        XiaomiBandFraming.Frame frame = XiaomiBandFraming.parseFrame(data);
        if ("chunk_start".equals(frame.kind)) {
            chunkNum = frame.numChunks;
            chunkEncrypted = frame.encrypted;
            chunkMap.clear();
            writeQueue.enqueueBytes(XiaomiBandFraming.CHUNK_START_ACK);
            return;
        }
        if ("chunk_data".equals(frame.kind)) {
            chunkMap.put(frame.chunkId, frame.payload);
            if (chunkMap.size() == chunkNum) {
                writeQueue.enqueueBytes(XiaomiBandFraming.CHUNK_END_ACK);
                byte[] payload = new byte[0];
                for (int i = 1; i <= chunkNum; i++) {
                    byte[] part = chunkMap.get(i);
                    if (part != null) {
                        payload = XiaomiBandProto.concat(payload, part);
                    }
                }
                if (chunkEncrypted && session != null) {
                    try {
                        payload = decrypt(payload);
                    } catch (Throwable t) {
                        logError("chunk_decrypt", t);
                    }
                }
                handleCommand(payload);
            }
            return;
        }
        if ("single".equals(frame.kind)) {
            writeQueue.enqueueBytes(XiaomiBandFraming.ACK_FRAME);
            byte[] payload = frame.payload;
            if (frame.encrypted && session != null) {
                try {
                    payload = decrypt(payload);
                } catch (Throwable t) {
                    logError("decrypt", t);
                    return;
                }
            }
            handleCommand(payload);
        }
    }

    private byte[] decrypt(byte[] data) {
        XiaomiBandCrypto.SessionKeys s = session;
        for (int sign : new int[] {0, -1, 1}) {
            int idx = Math.max(0, s.decIndex + sign);
            try {
                byte[] plain = XiaomiBandCrypto.aesCcmDecrypt(
                        s.decKey, s.decNonce, idx, data);
                s.decIndex = idx + 1;
                return plain;
            } catch (Throwable ignored) {
            }
        }
        throw new RuntimeException("decrypt failed");
    }

    private void handleCommand(byte[] raw) {
        Map<Integer, java.util.List<Object>> cmd = XiaomiBandProto.protoParse(raw);
        int type = intField(cmd, 1);
        int subtype = intField(cmd, 2);
        log("cmd", "type=" + type + " sub=" + subtype);
        if (type == AUTH_CMD_TYPE) {
            handleAuth(cmd, subtype);
            return;
        }
        if (type == HEALTH_CMD_TYPE) {
            if (subtype == HEALTH_CMD_SET_USER_INFO) {
                log("health", "userInfo ack");
                if (realtimeActive) {
                    sendRealtimeStart();
                    setState("streaming");
                }
                return;
            }
            if (subtype == HEALTH_CMD_REALTIME_EVENT) {
                handleRealtimeStats(cmd);
            }
        }
    }

    private void handleAuth(Map<Integer, java.util.List<Object>> cmd, int subtype) {
        if (subtype == AUTH_CMD_NONCE) {
            try {
                handleWatchNonce(cmd);
            } catch (Throwable t) {
                logError("auth_nonce", t);
                setState("auth_fail");
            }
            return;
        }
        if (subtype == AUTH_CMD_AUTH || subtype == AUTH_CMD_SEND_USERID) {
            frameEncrypt = subtype == AUTH_CMD_AUTH;
            authenticated = true;
            cancelAuthTimeout();
            setState("authenticated");
            notifyConnected(true);
            log("auth", "success frameEncrypt=" + frameEncrypt);
            sendUserInfo();
            if (realtimeActive) {
                sendRealtimeStart();
                setState("streaming");
            }
        }
    }

    private void handleWatchNonce(Map<Integer, java.util.List<Object>> cmd) throws Exception {
        byte[] authBytes = bytesField(cmd, 3);
        if (authBytes == null) {
            throw new RuntimeException("no auth");
        }
        Map<Integer, java.util.List<Object>> auth = XiaomiBandProto.protoParse(authBytes);
        byte[] watchNonceBytes = bytesField(auth, 31);
        if (watchNonceBytes == null) {
            throw new RuntimeException("no watchNonce");
        }
        Map<Integer, java.util.List<Object>> wn = XiaomiBandProto.protoParse(watchNonceBytes);
        byte[] watchNonce = bytesField(wn, 1);
        byte[] watchHmac = bytesField(wn, 2);
        if (watchNonce == null || watchHmac == null) {
            throw new RuntimeException("missing nonce/hmac");
        }
        session = XiaomiBandCrypto.computeSessionKeys(authKey, phoneNonce, watchNonce);
        byte[] expected = XiaomiBandCrypto.hmacSha256(
                session.decKey, XiaomiBandProto.concat(watchNonce, phoneNonce));
        if (!XiaomiBandCrypto.bytesEqual(expected, watchHmac)) {
            throw new RuntimeException("hmac mismatch");
        }
        byte[] encNonces = XiaomiBandCrypto.hmacSha256(
                session.encKey, XiaomiBandProto.concat(phoneNonce, watchNonce));
        byte[] deviceInfo = buildAuthDeviceInfo();
        byte[] encDevInfo = XiaomiBandCrypto.aesCcmEncrypt(
                session.encKey, session.encNonce, 0, deviceInfo);
        byte[] step3 = XiaomiBandProto.concat(
                XiaomiBandProto.protoFieldBytes(1, encNonces),
                XiaomiBandProto.protoFieldBytes(2, encDevInfo));
        byte[] authMsg = XiaomiBandProto.protoFieldMessage(32, step3);
        byte[] payload = XiaomiBandProto.protoFieldMessage(3, authMsg);
        byte[] protoCmd = makeCommand(AUTH_CMD_TYPE, AUTH_CMD_AUTH, payload);
        writeQueue.enqueueBytes(XiaomiBandFraming.buildPlainFrame(protoCmd));
    }

    private void handleRealtimeStats(Map<Integer, java.util.List<Object>> cmd) {
        byte[] healthBytes = bytesField(cmd, 10);
        if (healthBytes == null) {
            log("hr", "no health field");
            return;
        }
        Map<Integer, java.util.List<Object>> health = XiaomiBandProto.protoParse(healthBytes);
        byte[] rtBytes = bytesField(health, 39);
        if (rtBytes == null) {
            log("hr", "no realTimeStats field");
            return;
        }
        Map<Integer, java.util.List<Object>> rt = XiaomiBandProto.protoParse(rtBytes);
        int hr = intField(rt, 4);
        int steps = intField(rt, 1);
        log("hr", "raw hr=" + hr + " steps=" + steps);
        if (hr > 0 && hr <= 220) {
            hrEventCount++;
            if (listener != null) {
                listener.onHeartRate(hr);
            }
        }
    }

    private static byte[] buildAuthDeviceInfo() {
        return XiaomiBandProto.concat(
                XiaomiBandProto.protoFieldVarint(1, 0),
                XiaomiBandProto.protoFieldFloat(2, 30.0f),
                XiaomiBandProto.protoFieldString(3, "XEMS"),
                XiaomiBandProto.protoFieldVarint(4, 224),
                XiaomiBandProto.protoFieldString(5, "EN"));
    }

    private static byte[] makeCommand(int type, int subtype, byte[] extra) {
        byte[] msg = XiaomiBandProto.concat(
                XiaomiBandProto.protoFieldVarint(1, type),
                XiaomiBandProto.protoFieldVarint(2, subtype));
        if (extra != null) {
            msg = XiaomiBandProto.concat(msg, extra);
        }
        return msg;
    }

    private void scheduleAuthTimeout() {
        cancelAuthTimeout();
        authTimeoutRunnable = new XiaomiBandAuthTimeoutTask(this);
        android.os.Handler handler = new android.os.Handler(android.os.Looper.getMainLooper());
        handler.postDelayed(authTimeoutRunnable, AUTH_TIMEOUT_MS);
    }

    private void cancelAuthTimeout() {
        if (authTimeoutRunnable != null) {
            android.os.Handler handler = new android.os.Handler(android.os.Looper.getMainLooper());
            handler.removeCallbacks(authTimeoutRunnable);
            authTimeoutRunnable = null;
        }
    }

    void onAuthTimeout() {
        if (!authenticated) {
            log("auth", "timeout");
            setState("auth_timeout");
            disconnect();
        }
    }

    private void setState(String state) {
        lastState = state != null ? state : "";
        log("state", lastState);
        if (listener != null) {
            listener.onState(lastState);
        }
    }

    private void notifyConnected(boolean connected) {
        if (listener != null) {
            listener.onConnected(connected);
        }
    }

    private static boolean isValidMac(String mac) {
        if (mac == null || mac.length() == 0) {
            return false;
        }
        return mac.matches("([0-9A-Fa-f]{2}:){5}[0-9A-Fa-f]{2}");
    }

    private static byte[] parseAuthKey(String hex) {
        if (hex == null) {
            return null;
        }
        String clean = hex.replace(" ", "").replace(":", "").replace("-", "");
        if (clean.startsWith("0x") || clean.startsWith("0X")) {
            clean = clean.substring(2);
        }
        if (clean.length() != 32) {
            return null;
        }
        byte[] out = new byte[16];
        try {
            for (int i = 0; i < 16; i++) {
                out[i] = (byte) Integer.parseInt(clean.substring(i * 2, i * 2 + 2), 16);
            }
            return out;
        } catch (Throwable t) {
            return null;
        }
    }

    private static int intField(Map<Integer, java.util.List<Object>> map, int key) {
        java.util.List<Object> list = map.get(key);
        if (list == null || list.isEmpty() || !(list.get(0) instanceof Integer)) {
            return 0;
        }
        return (Integer) list.get(0);
    }

    private static byte[] bytesField(Map<Integer, java.util.List<Object>> map, int key) {
        java.util.List<Object> list = map.get(key);
        if (list == null || list.isEmpty() || !(list.get(0) instanceof byte[])) {
            return null;
        }
        return (byte[]) list.get(0);
    }
}
