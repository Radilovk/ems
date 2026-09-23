package com.isaigu.gymapp.wearable.xiaomi;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattService;
import android.content.Context;
import android.os.Build;

import com.isaigu.gymapp.wearable.WearableBleDiagLog;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

/**
 * Direct BLE client for Xiaomi Band 8 (encrypted V1 protocol on service 0xFE95).
 * Protocol flow: auth → post-auth init → one realtime START (8/45) → wait for 8/47 on 0051.
 * Every command waits for the band's ACK; every inbound frame is ACKed on the characteristic
 * it arrived on. No START keepalive — resending START restarts measurement.
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

    private static final int SYSTEM_CMD_TYPE = 2;
    private static final int SYSTEM_CMD_DEVICE_INFO = 2;

    private static final String BLE_BUILD_TAG = "v1.1.53-ble";
    private static final long AUTH_TIMEOUT_MS = 45000L;
    private static final long STALL_CHECK_MS = 3000L;
    private static final long FIRST_HR_TIMEOUT_MS = 12000L;
    private static final long STALL_TIMEOUT_MS = 15000L;
    private static final long CONFIG_TO_START_DELAY_MS = 400L;
    private static final long BAND_ACK_TIMEOUT_MS = 3000L;
    private static final long MTU_FALLBACK_MS = 2500L;
    private static final int DEFAULT_ATT_MTU = 23;

    private static final android.os.Handler mainHandler =
            new android.os.Handler(android.os.Looper.getMainLooper());

    private static XiaomiBandBleClient instance;

    private final Random random = new Random();
    // Chunk reassembly is per characteristic (0x51 commands, 0x53 activity data).
    private final Map<String, Map<Integer, byte[]>> chunkMaps =
            new HashMap<String, Map<Integer, byte[]>>();
    private final Map<String, Integer> chunkCounts = new HashMap<String, Integer>();
    private final Map<String, Boolean> chunkEncryptedByChar = new HashMap<String, Boolean>();
    private final XiaomiBandGattCallback gattCallback = new XiaomiBandGattCallback(this);
    private final XiaomiBandWriteQueue writeQueue = new XiaomiBandWriteQueue(this);
    private final XiaomiBandPostAuthInit postAuthInit = new XiaomiBandPostAuthInit(this);
    private Context appContext;
    private Listener listener;
    private BluetoothGatt gatt;
    private BluetoothGattCharacteristic charRead;
    private BluetoothGattCharacteristic charWrite;
    private byte[] authKey;
    private byte[] phoneNonce = new byte[16];
    private XiaomiBandCrypto.SessionKeys session;
    private boolean frameEncrypt;
    private boolean authenticated;
    private boolean realtimeActive;
    private boolean realtimeStarted;
    private String targetMac = "";
    private int hrEventCount;
    private int notifyEventCount;
    private int notifyCount51;
    private int notifyCount52;
    private String lastState = "idle";
    private Runnable authTimeoutRunnable;
    private Runnable stallCheckRunnable;
    private long streamStartMs;
    private long lastHrEventMs;
    private Runnable reconnectRunnable;
    private boolean gattServicesReady;
    private boolean userRequestedDisconnect;
    private int realtimeStartRetries;
    private String lastNotifyChar = "";
    private final Runnable bandAckTimeoutTask = new XiaomiBandAckTimeoutTask(this);
    private final Runnable mtuFallbackTask = new XiaomiBandMtuFallbackTask(this);
    private BluetoothGatt mtuPendingGatt;
    private boolean discoveryRequested;
    private int attMtu = DEFAULT_ATT_MTU;

    private XiaomiBandBleClient() {}

    public static synchronized XiaomiBandBleClient getInstance() {
        if (instance == null) {
            instance = new XiaomiBandBleClient();
        }
        return instance;
    }

    public static String getBuildTag() {
        return BLE_BUILD_TAG;
    }

    public int getHrEventCount() {
        return hrEventCount;
    }

    public int getNotifyEventCount() {
        return notifyEventCount;
    }

    public int getNotifyCount51() {
        return notifyCount51;
    }

    public int getNotifyCount52() {
        return notifyCount52;
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
        if (!com.isaigu.gymapp.wearable.WearableBlePermissions.gateGattOrNotify(context)) {
            setState("no_bt_permission");
            return;
        }
        WearableBleDiagLog.init(context);
        WearableBleDiagLog.clear();
        log("build", BLE_BUILD_TAG);
        com.isaigu.gymapp.wearable.WearableBlePermissions.logPermissionState(context);
        appContext = context.getApplicationContext();
        targetMac = mac != null ? mac.trim() : "";
        authKey = parseAuthKey(authKeyHex);
        if (authKey == null || authKey.length != 16) {
            setState("bad_auth_key");
            return;
        }
        random.nextBytes(phoneNonce);
        userRequestedDisconnect = false;
        cancelReconnect();
        authenticated = false;
        frameEncrypt = false;
        realtimeStarted = false;
        hrEventCount = 0;
        notifyEventCount = 0;
        notifyCount51 = 0;
        notifyCount52 = 0;
        session = null;
        clearChunks();
        discoveryRequested = false;
        attMtu = DEFAULT_ATT_MTU;
        cancelBandAckTimeout();
        mainHandler.removeCallbacks(mtuFallbackTask);
        postAuthInit.reset();
        stopStallWatch();
        streamStartMs = 0L;
        lastHrEventMs = 0L;
        gattServicesReady = false;
        realtimeStartRetries = 0;
        cancelAuthTimeout();
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
            log("connect", "bond=" + device.getBondState());
        } catch (Throwable ignored) {
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
        log("gatt", "disconnect requested");
        userRequestedDisconnect = true;
        cancelReconnect();
        cancelAuthTimeout();
        stopStallWatch();
        if (realtimeStarted && authenticated) {
            sendRealtimeStop();
        }
        realtimeActive = false;
        realtimeStarted = false;
        authenticated = false;
        writeQueue.clear();
        disconnectGatt();
        setState("disconnected");
        notifyConnected(false);
    }

    public void startRealtime() {
        realtimeActive = true;
        if (authenticated && postAuthInit.isComplete()) {
            beginRealtimeStreaming();
        }
    }

    void onPostAuthInitComplete() {
        setState("initialized");
        if (realtimeActive) {
            beginRealtimeStreaming();
        }
    }

    void sendInitCommand(int type, int subtype, byte[] commandExtra) {
        byte[] cmd = makeTypedCommand(type, subtype, commandExtra);
        sendCommand(cmd);
    }

    void onMtuChanged(BluetoothGatt g, int mtu, int status) {
        log("gatt", "mtu=" + mtu + " status=" + status);
        mainHandler.removeCallbacks(mtuFallbackTask);
        if (status == BluetoothGatt.GATT_SUCCESS && mtu > 0) {
            attMtu = mtu;
        }
        beginServiceDiscovery(g);
    }

    /** onMtuChanged may never arrive when another app already negotiated the MTU. */
    void scheduleMtuFallback(BluetoothGatt g) {
        mtuPendingGatt = g;
        mainHandler.removeCallbacks(mtuFallbackTask);
        mainHandler.postDelayed(mtuFallbackTask, MTU_FALLBACK_MS);
    }

    void onMtuFallback() {
        if (discoveryRequested || mtuPendingGatt == null || mtuPendingGatt != gatt) {
            return;
        }
        log("gatt", "no MTU callback in " + MTU_FALLBACK_MS + "ms — discovering anyway");
        beginServiceDiscovery(mtuPendingGatt);
    }

    void scheduleBandAckTimeout() {
        mainHandler.removeCallbacks(bandAckTimeoutTask);
        mainHandler.postDelayed(bandAckTimeoutTask, BAND_ACK_TIMEOUT_MS);
    }

    void cancelBandAckTimeout() {
        mainHandler.removeCallbacks(bandAckTimeoutTask);
    }

    void onBandAckTimeout() {
        if (writeQueue.onBandAckTimeout()) {
            log("ack", "band ACK timeout — continuing");
            postAuthInit.onCommandAcked();
        }
    }

    void onGattConnected(BluetoothGatt g) {
        gatt = g;
        beginServiceDiscovery(g);
    }

    private void beginServiceDiscovery(BluetoothGatt g) {
        if (g == null || gattServicesReady || discoveryRequested) {
            log("gatt", "skip discover (ready=" + gattServicesReady
                    + " requested=" + discoveryRequested + ")");
            return;
        }
        discoveryRequested = true;
        mainHandler.removeCallbacks(mtuFallbackTask);
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
        realtimeStarted = false;
        gattServicesReady = false;
        discoveryRequested = false;
        cancelBandAckTimeout();
        mainHandler.removeCallbacks(mtuFallbackTask);
        clearChunks();
        postAuthInit.reset();
        stopStallWatch();
        cancelAuthTimeout();
        writeQueue.clear();
        notifyConnected(false);
        if (!userRequestedDisconnect && realtimeActive && appContext != null) {
            setState("reconnecting");
            log("gatt", "unexpected drop — reconnect in 2s");
            scheduleReconnect();
            return;
        }
        setState("disconnected");
    }

    void onGattCharsReady(BluetoothGatt g, BluetoothGattCharacteristic read,
            BluetoothGattCharacteristic write) {
        charRead = read;
        charWrite = write;
        gatt = g;
        log("gatt", "chars 51/52 ready");
    }

    void beginNotificationSetup(BluetoothGatt g, BluetoothGattCharacteristic read,
            BluetoothGattCharacteristic write, BluetoothGattService service) {
        if (gattServicesReady) {
            log("gatt", "skip duplicate notify setup");
            return;
        }
        gattServicesReady = true;
        writeQueue.enqueueEnableNotify(g, read);
        writeQueue.enqueueEnableNotify(g, write);
        BluetoothGattCharacteristic activity = XiaomiBandGattCallback.findOptionalChar(
                service, XiaomiBandGattCallback.charActivityUuid());
        BluetoothGattCharacteristic upload = XiaomiBandGattCallback.findOptionalChar(
                service, XiaomiBandGattCallback.charUploadUuid());
        if (activity != null) {
            writeQueue.enqueueEnableNotify(g, activity);
            log("gatt", "notify 53 enabled");
        }
        if (upload != null) {
            writeQueue.enqueueEnableNotify(g, upload);
            log("gatt", "notify 55 enabled");
        }
        log("gatt", "notify 51/52 enabled");
        writeQueue.enqueueRunnable(new XiaomiBandAuthStartRunnable(this));
    }

    void onGattState(String state) {
        setState(state);
    }

    void onGattSendAuthNonce() {
        sendAuthPhoneNonce();
    }

    void onGattNotify(String charLabel, BluetoothGattCharacteristic source, byte[] data) {
        lastNotifyChar = charLabel != null ? charLabel : "";
        notifyEventCount++;
        if ("51".equals(charLabel)) {
            notifyCount51++;
        } else if ("52".equals(charLabel)) {
            notifyCount52++;
        }
        handleNotify(charLabel, source, data);
    }

    public String getLastNotifyChar() {
        return lastNotifyChar;
    }

    void onGattWriteDone() {
        writeQueue.onWriteFinished();
    }

    boolean writeFrameNow(BluetoothGatt gattRef, BluetoothGattCharacteristic writeChar,
            byte[] frame) {
        if (gattRef == null || writeChar == null || frame == null) {
            return false;
        }
        if (frame.length > attMtu - 3) {
            log("write", "frame " + frame.length + "B > mtu " + attMtu + "-3 (may be truncated)");
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
        writeQueue.enqueueCommand(XiaomiBandFraming.buildPlainFrame(cmd));
    }

    private void sendRealtimeStart() {
        if (realtimeStarted) {
            log("health", "skip duplicate START");
            return;
        }
        if (authenticated && session != null && !frameEncrypt) {
            frameEncrypt = true;
            log("auth", "force frameEncrypt before realtime");
        }
        int encIdx = session != null ? session.encIndex : -1;
        log("health", "realtime START enc=" + frameEncrypt + " encIdx=" + encIdx);
        byte[] cmd = makeCommand(HEALTH_CMD_TYPE, HEALTH_CMD_REALTIME_START, null);
        sendCommand(cmd);
        realtimeStarted = true;
        streamStartMs = System.currentTimeMillis();
        lastHrEventMs = 0L;
    }

    private void sendRealtimeStop() {
        log("health", "realtime STOP");
        byte[] cmd = makeCommand(HEALTH_CMD_TYPE, HEALTH_CMD_REALTIME_STOP, null);
        sendCommand(cmd);
        realtimeStarted = false;
    }

    private void beginRealtimeStreaming() {
        if (!authenticated || !realtimeActive) {
            return;
        }
        if (realtimeStarted) {
            return;
        }
        setState("starting");
        mainHandler.postDelayed(new XiaomiBandRealtimeStartRunnable(this), CONFIG_TO_START_DELAY_MS);
    }

    void onConfigToStartDelay() {
        if (!authenticated || !realtimeActive || realtimeStarted) {
            return;
        }
        sendRealtimeStart();
        startStallWatch();
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
            writeQueue.enqueueCommand(frame);
        } catch (Throwable t) {
            logError("sendCommand", t);
            setState("send_fail");
        }
    }

    private void clearChunks() {
        chunkMaps.clear();
        chunkCounts.clear();
        chunkEncryptedByChar.clear();
    }

    private void handleNotify(String label, BluetoothGattCharacteristic source, byte[] data) {
        if (data == null || data.length < 3) {
            return;
        }
        String key = label != null ? label : "";
        boolean commandChannel = "51".equals(key);
        XiaomiBandFraming.Frame frame = XiaomiBandFraming.parseFrame(data);
        if ("ack".equals(frame.kind)) {
            if (frame.result != 0) {
                log("ack", "NACK result=" + frame.result + " on " + key);
            }
            writeQueue.onBandAck();
            postAuthInit.onCommandAcked();
            return;
        }
        if ("chunk_start".equals(frame.kind)) {
            chunkCounts.put(key, frame.numChunks);
            chunkEncryptedByChar.put(key, frame.encrypted);
            chunkMaps.put(key, new HashMap<Integer, byte[]>());
            writeQueue.enqueueAckTo(source, XiaomiBandFraming.CHUNK_START_ACK);
            return;
        }
        if ("chunk_data".equals(frame.kind)) {
            Map<Integer, byte[]> parts = chunkMaps.get(key);
            Integer expected = chunkCounts.get(key);
            if (parts == null || expected == null || frame.chunkId > expected) {
                log("chunk", "unexpected chunk " + frame.chunkId + " on " + key);
                return;
            }
            parts.put(frame.chunkId, frame.payload);
            if (parts.size() == expected) {
                writeQueue.enqueueAckTo(source, XiaomiBandFraming.CHUNK_END_ACK);
                byte[] payload = new byte[0];
                for (int i = 1; i <= expected; i++) {
                    byte[] part = parts.get(i);
                    if (part != null) {
                        payload = XiaomiBandProto.concat(payload, part);
                    }
                }
                chunkMaps.remove(key);
                chunkCounts.remove(key);
                Boolean enc = chunkEncryptedByChar.remove(key);
                if (!commandChannel) {
                    log("chunk", "ignored " + payload.length + "B payload on " + key);
                    return;
                }
                if (enc != null && enc && session != null) {
                    try {
                        payload = decrypt(payload);
                    } catch (Throwable t) {
                        logError("chunk_decrypt", t);
                        return;
                    }
                }
                handleCommand(payload);
            }
            return;
        }
        if ("single".equals(frame.kind)) {
            writeQueue.enqueueAckTo(source, XiaomiBandFraming.ACK_FRAME);
            if (!commandChannel) {
                log("notify", "single frame on " + key + " acked, not a command channel");
                return;
            }
            byte[] payload = frame.payload;
            if (frame.encrypted && session != null) {
                try {
                    payload = decryptInbound(payload);
                } catch (Throwable t) {
                    logError("decrypt", t);
                    logHex("decrypt_fail", payload, 32);
                    return;
                }
            }
            handleCommand(payload);
        }
    }

    private byte[] decryptInbound(byte[] data) {
        XiaomiBandCrypto.SessionKeys s = session;
        if (s == null) {
            throw new RuntimeException("no session");
        }
        try {
            return XiaomiBandCrypto.aesCcmDecrypt(s.decKey, s.decNonce, 0, data);
        } catch (Throwable first) {
            if (data.length > 8) {
                int counter = (data[0] & 0xff) | ((data[1] & 0xff) << 8);
                byte[] trimmed = new byte[data.length - 2];
                System.arraycopy(data, 2, trimmed, 0, trimmed.length);
                return XiaomiBandCrypto.aesCcmDecrypt(s.decKey, s.decNonce, counter, trimmed);
            }
            throw first;
        }
    }

    private byte[] decrypt(byte[] data) {
        return decryptInbound(data);
    }

    private void handleCommand(byte[] raw) {
        Map<Integer, java.util.List<Object>> cmd = XiaomiBandProto.protoParse(raw);
        int type = intField(cmd, 1);
        int subtype = intField(cmd, 2);
        log("cmd", "type=" + type + " sub=" + subtype);
        if (type == AUTH_CMD_TYPE) {
            if (authenticated && (subtype == AUTH_CMD_NONCE || subtype == AUTH_CMD_AUTH
                    || subtype == AUTH_CMD_SEND_USERID)) {
                log("auth", "ignore echo sub=" + subtype);
                return;
            }
            handleAuth(cmd, subtype);
            return;
        }
        if (type == HEALTH_CMD_TYPE) {
            if (subtype == HEALTH_CMD_REALTIME_EVENT) {
                handleRealtimeStats(cmd);
            } else {
                log("health", "sub=" + subtype);
            }
            return;
        }
        log("cmd", "unhandled type=" + type);
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
        if (subtype == AUTH_CMD_SEND_USERID) {
            log("auth", "userid step (not final)");
            return;
        }
        if (subtype == AUTH_CMD_AUTH) {
            frameEncrypt = true;
            authenticated = true;
            if (session != null) {
                session.encIndex = 1;
                session.decIndex = 0;
            }
            cancelAuthTimeout();
            setState("authenticated");
            notifyConnected(true);
            log("auth", "success frameEncrypt=true encIndex=1");
            postAuthInit.start();
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
        frameEncrypt = true;
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
        writeQueue.enqueueCommand(XiaomiBandFraming.buildPlainFrame(protoCmd));
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
        lastHrEventMs = System.currentTimeMillis();
        if (hr == 0) {
            setState("measuring");
            return;
        }
        if (hr > 0 && hr <= 220) {
            hrEventCount++;
            setState("streaming");
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
        return makeTypedCommand(type, subtype, extra);
    }

    private static byte[] makeTypedCommand(int type, int subtype, byte[] extra) {
        byte[] msg = XiaomiBandProto.concat(
                XiaomiBandProto.protoFieldVarint(1, type),
                XiaomiBandProto.protoFieldVarint(2, subtype));
        if (extra != null && extra.length > 0) {
            msg = XiaomiBandProto.concat(msg, extra);
        }
        return msg;
    }

    void onKeepaliveTick() {
        if (!realtimeActive || !authenticated || !realtimeStarted) {
            return;
        }
        long now = System.currentTimeMillis();
        if (lastHrEventMs == 0L && streamStartMs > 0L
                && now - streamStartMs > FIRST_HR_TIMEOUT_MS) {
            if (realtimeStartRetries < 1 && gatt != null) {
                realtimeStartRetries++;
                log("health", "no first 8/47 — retry START once");
                realtimeStarted = false;
                sendRealtimeStart();
                streamStartMs = System.currentTimeMillis();
                scheduleStallCheck();
                return;
            }
            log("health", "no first 8/47 — reconnect");
            scheduleReconnect();
            return;
        }
        if (lastHrEventMs > 0L && now - lastHrEventMs > STALL_TIMEOUT_MS) {
            log("health", "HR stall — reconnect");
            scheduleReconnect();
            return;
        }
        scheduleStallCheck();
    }

    private void startStallWatch() {
        stopStallWatch();
        stallCheckRunnable = new XiaomiBandKeepaliveTask(this);
        android.os.Handler handler = new android.os.Handler(android.os.Looper.getMainLooper());
        handler.postDelayed(stallCheckRunnable, STALL_CHECK_MS);
    }

    private void scheduleStallCheck() {
        if (stallCheckRunnable == null) {
            return;
        }
        android.os.Handler handler = new android.os.Handler(android.os.Looper.getMainLooper());
        handler.postDelayed(stallCheckRunnable, STALL_CHECK_MS);
    }

    private void stopStallWatch() {
        if (stallCheckRunnable != null) {
            android.os.Handler handler = new android.os.Handler(android.os.Looper.getMainLooper());
            handler.removeCallbacks(stallCheckRunnable);
            stallCheckRunnable = null;
        }
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

    void onReconnectTick() {
        if (userRequestedDisconnect || !realtimeActive || appContext == null) {
            return;
        }
        log("gatt", "reconnecting");
        connect(appContext, targetMac, bytesToHex(authKey));
    }

    private void scheduleReconnect() {
        cancelReconnect();
        reconnectRunnable = new XiaomiBandReconnectTask(this);
        android.os.Handler handler = new android.os.Handler(android.os.Looper.getMainLooper());
        handler.postDelayed(reconnectRunnable, 2000L);
    }

    private void cancelReconnect() {
        if (reconnectRunnable != null) {
            android.os.Handler handler = new android.os.Handler(android.os.Looper.getMainLooper());
            handler.removeCallbacks(reconnectRunnable);
            reconnectRunnable = null;
        }
    }

    private static String bytesToHex(byte[] bytes) {
        if (bytes == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder(bytes.length * 2);
        for (int i = 0; i < bytes.length; i++) {
            sb.append(String.format("%02x", bytes[i] & 0xff));
        }
        return sb.toString();
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
