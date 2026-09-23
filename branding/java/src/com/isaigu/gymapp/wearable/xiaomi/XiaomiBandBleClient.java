package com.isaigu.gymapp.wearable.xiaomi;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

/**
 * Direct BLE client for Xiaomi Band 8 (encrypted V1 protocol on service 0xFE95).
 * Ported from miband-7-pro-monitor / Gadgetbridge XiaomiAuthService.
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
    private static final int HEALTH_CMD_REALTIME_START = 45;
    private static final int HEALTH_CMD_REALTIME_STOP = 46;
    private static final int HEALTH_CMD_REALTIME_EVENT = 47;

    private static final long KEEPALIVE_MS = 15000L;
    private static final long AUTH_TIMEOUT_MS = 30000L;

    private static XiaomiBandBleClient instance;

    private final Handler mainHandler = new Handler(Looper.getMainLooper());
    private final Random random = new Random();
    private final Object writeLock = new Object();
    private final Map<Integer, byte[]> chunkMap = new HashMap<Integer, byte[]>();
    private final XiaomiBandGattCallback gattCallback = new XiaomiBandGattCallback(this);

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
    private boolean realtimeActive;
    private String targetMac = "";
    private int hrEventCount;
    private String lastState = "idle";
    private Runnable keepaliveRunnable;
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

    public void connect(Context context, String mac, String authKeyHex) {
        if (context == null) {
            return;
        }
        appContext = context.getApplicationContext();
        targetMac = mac != null ? mac.trim() : "";
        authKey = parseAuthKey(authKeyHex);
        if (authKey == null || authKey.length != 16) {
            setState("bad_auth_key");
            return;
        }
        random.nextBytes(phoneNonce);
        authenticated = false;
        frameEncrypt = false;
        realtimeActive = false;
        hrEventCount = 0;
        session = null;
        chunkMap.clear();
        disconnectGatt();
        if (!isValidMac(targetMac)) {
            setState("bad_mac");
            return;
        }
        setState("connecting");
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
            setState("no_bt_permission");
            return;
        } catch (Throwable t) {
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
        stopKeepalive();
        cancelAuthTimeout();
        if (realtimeActive) {
            sendRealtimeStop();
        }
        realtimeActive = false;
        authenticated = false;
        disconnectGatt();
        setState("disconnected");
        notifyConnected(false);
    }

    public void startRealtime() {
        realtimeActive = true;
        if (!authenticated || charWrite == null) {
            return;
        }
        sendRealtimeStart();
        startKeepalive();
        setState("streaming");
    }

    void onGattConnected(BluetoothGatt g) {
        setState("discovering");
        g.discoverServices();
    }

    void onGattDisconnected() {
        authenticated = false;
        realtimeActive = false;
        setState("disconnected");
        notifyConnected(false);
    }

    void onGattCharsReady(BluetoothGatt g, BluetoothGattCharacteristic read,
            BluetoothGattCharacteristic write) {
        charRead = read;
        charWrite = write;
    }

    void onGattState(String state) {
        setState(state);
    }

    void onGattSendAuthNonce() {
        sendAuthPhoneNonce();
    }

    void onGattNotify(byte[] data) {
        handleNotify(data);
    }

    void onGattWriteDone() {
        synchronized (writeLock) {
            writeLock.notifyAll();
        }
    }

    void onKeepaliveTick() {
        if (authenticated && realtimeActive) {
            sendRealtimeStart();
            mainHandler.postDelayed(keepaliveRunnable, KEEPALIVE_MS);
        }
    }

    void onAuthTimeout() {
        if (!authenticated) {
            setState("auth_timeout");
            disconnect();
        }
    }

    void writeRaw(byte[] frame) {
        if (charWrite == null || gatt == null) {
            return;
        }
        charWrite.setWriteType(BluetoothGattCharacteristic.WRITE_TYPE_NO_RESPONSE);
        charWrite.setValue(frame);
        try {
            gatt.writeCharacteristic(charWrite);
        } catch (Throwable ignored) {
            charWrite.setWriteType(BluetoothGattCharacteristic.WRITE_TYPE_DEFAULT);
            charWrite.setValue(frame);
            try {
                gatt.writeCharacteristic(charWrite);
            } catch (Throwable ignored2) {
            }
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
        byte[] phoneNonceMsg = XiaomiBandProto.protoFieldBytes(1, phoneNonce);
        byte[] authMsg = XiaomiBandProto.protoFieldMessage(30, phoneNonceMsg);
        byte[] payload = XiaomiBandProto.protoFieldMessage(3, authMsg);
        byte[] cmd = makeCommand(AUTH_CMD_TYPE, AUTH_CMD_NONCE, payload);
        enqueueWrite(XiaomiBandFraming.buildPlainFrame(cmd));
    }

    private void sendRealtimeStart() {
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
            enqueueWrite(frame);
        } catch (Throwable t) {
            setState("send_fail");
        }
    }

    private void handleNotify(byte[] data) {
        XiaomiBandFraming.Frame frame = XiaomiBandFraming.parseFrame(data);
        if ("chunk_start".equals(frame.kind)) {
            chunkNum = frame.numChunks;
            chunkEncrypted = frame.encrypted;
            chunkMap.clear();
            enqueueWrite(XiaomiBandFraming.CHUNK_START_ACK);
            return;
        }
        if ("chunk_data".equals(frame.kind)) {
            chunkMap.put(frame.chunkId, frame.payload);
            if (chunkMap.size() == chunkNum) {
                enqueueWrite(XiaomiBandFraming.CHUNK_END_ACK);
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
                    } catch (Throwable ignored) {
                    }
                }
                handleCommand(payload);
            }
            return;
        }
        if ("single".equals(frame.kind)) {
            enqueueWrite(XiaomiBandFraming.ACK_FRAME);
            byte[] payload = frame.payload;
            if (frame.encrypted && session != null) {
                try {
                    payload = decrypt(payload);
                } catch (Throwable ignored) {
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
        if (type == AUTH_CMD_TYPE) {
            handleAuth(cmd, subtype);
        } else if (type == HEALTH_CMD_TYPE && subtype == HEALTH_CMD_REALTIME_EVENT) {
            handleRealtimeStats(cmd);
        }
    }

    private void handleAuth(Map<Integer, java.util.List<Object>> cmd, int subtype) {
        if (subtype == AUTH_CMD_NONCE) {
            try {
                handleWatchNonce(cmd);
            } catch (Throwable t) {
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
            if (realtimeActive) {
                sendRealtimeStart();
                startKeepalive();
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
        enqueueWrite(XiaomiBandFraming.buildPlainFrame(protoCmd));
    }

    private void handleRealtimeStats(Map<Integer, java.util.List<Object>> cmd) {
        byte[] healthBytes = bytesField(cmd, 10);
        if (healthBytes == null) {
            return;
        }
        Map<Integer, java.util.List<Object>> health = XiaomiBandProto.protoParse(healthBytes);
        byte[] rtBytes = bytesField(health, 39);
        if (rtBytes == null) {
            return;
        }
        Map<Integer, java.util.List<Object>> rt = XiaomiBandProto.protoParse(rtBytes);
        int hr = intField(rt, 4);
        if (hr >= 40 && hr <= 220) {
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

    private void enqueueWrite(byte[] frame) {
        mainHandler.post(new XiaomiBandWriteTask(this, frame));
    }

    private void startKeepalive() {
        stopKeepalive();
        keepaliveRunnable = new XiaomiBandKeepaliveTask(this);
        mainHandler.postDelayed(keepaliveRunnable, KEEPALIVE_MS);
    }

    private void stopKeepalive() {
        if (keepaliveRunnable != null) {
            mainHandler.removeCallbacks(keepaliveRunnable);
            keepaliveRunnable = null;
        }
    }

    private void scheduleAuthTimeout() {
        cancelAuthTimeout();
        authTimeoutRunnable = new XiaomiBandAuthTimeoutTask(this);
        mainHandler.postDelayed(authTimeoutRunnable, AUTH_TIMEOUT_MS);
    }

    private void cancelAuthTimeout() {
        if (authTimeoutRunnable != null) {
            mainHandler.removeCallbacks(authTimeoutRunnable);
            authTimeoutRunnable = null;
        }
    }

    private void setState(String state) {
        lastState = state != null ? state : "";
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
