package com.isaigu.gymapp.wearable.xiaomi;

import java.security.MessageDigest;
import java.util.List;
import java.util.Map;
import java.util.zip.CRC32;

/**
 * Installs a quick app (.rpk) on the band over the link XEMS already holds (Band 9 / 10, SPP).
 *
 * <ol>
 *   <li>20/1 install request: Rpk.rpkInfo{id = package, version, size}.</li>
 *   <li>Band answers 20/1 with Rpk.rpkInstallStart{cmd}; 0 = go.</li>
 *   <li>22/0 upload request: DataUpload.dataUploadRequest{type 64 (app), md5, size}.</li>
 *   <li>Band answers 22/0 with dataUploadAck{status, resume position, chunk size (default 2048)}.</li>
 *   <li>The file goes over the data channel as
 *       [0][type][md5 ×16][size u32][bytes…][crc32 u32 of everything before], split into parts
 *       of chunk−4 bytes, each prefixed with u16 total parts and u16 part number (from 1).</li>
 *   <li>Band reports 20/2 when the app is installed.</li>
 * </ol>
 */
public final class XiaomiBandInstaller {
    public interface Listener {
        void onProgress(int percent, String state);

        void onDone(boolean ok, String message);
    }

    static final int T_RPK = 20;
    static final int RPK_LIST = 0;
    static final int RPK_INSTALL = 1;
    static final int RPK_INSTALLED = 2;
    static final int T_UPLOAD = 22;
    static final int UPLOAD_START = 0;
    static final int UPLOAD_TYPE_APP = 64;
    static final int DEFAULT_CHUNK = 2048;

    private static byte[] file;
    private static String pkg;
    private static int version;
    private static Listener listener;
    private static XiaomiBandSppClient client;
    private static boolean uploading;

    private XiaomiBandInstaller() {}

    public static boolean isBusy() {
        return file != null;
    }

    /** Start; the band must be connected over Bluetooth Classic (Band 9 / 10). */
    public static boolean install(byte[] rpk, String packageName, int versionCode, Listener l) {
        XiaomiBandLink link = XiaomiBand.link();
        if (!(link instanceof XiaomiBandSppClient) || !link.isConnected()) {
            if (l != null) {
                l.onDone(false, "not_connected");
            }
            return false;
        }
        if (file != null || rpk == null || rpk.length == 0) {
            return false;
        }
        client = (XiaomiBandSppClient) link;
        file = rpk;
        pkg = packageName;
        version = versionCode;
        listener = l;
        uploading = false;
        byte[] info = XiaomiBandProto.concat(
                XiaomiBandProto.protoFieldString(1, packageName),
                XiaomiBandProto.protoFieldVarint(2, versionCode),
                XiaomiBandProto.protoFieldVarint(3, rpk.length));
        byte[] rpkMsg = XiaomiBandProto.protoFieldMessage(2, info);
        client.log("install", pkg + " v" + version + " " + rpk.length + "B");
        progress(0, "request");
        client.sendCommand(XiaomiBandMessages.command(T_RPK, RPK_INSTALL,
                XiaomiBandProto.protoFieldMessage(22, rpkMsg)));
        return true;
    }

    /** Commands from the band; true when consumed. */
    static boolean onCommand(int type, int sub, Map<Integer, List<Object>> cmd) {
        if (type == T_RPK) {
            if (sub == RPK_INSTALL && file != null && !uploading) {
                Map<Integer, List<Object>> start = XiaomiBandMessages.sub(XiaomiBandMessages.sub(cmd, 22), 3);
                int status = XiaomiBandMessages.intField(start, 1);
                client.log("install", "start status=" + status);
                if (status != 0 && status != -1) {
                    finish(false, "rejected " + status);
                    return true;
                }
                requestUpload();
                return true;
            }
            if (sub == RPK_INSTALLED) {
                // install_result{code: 0 ok, 1 failed, 2 verify failed}
                int code = XiaomiBandMessages.intField(
                        XiaomiBandMessages.sub(XiaomiBandMessages.sub(cmd, 22), 4), 1);
                client.log("install", "band reports result " + code);
                if (file != null) {
                    finish(code <= 0, code <= 0 ? "installed" : code == 2 ? "verify failed" : "failed " + code);
                }
                return true;
            }
            return false;
        }
        if (type == T_UPLOAD && sub == UPLOAD_START && file != null) {
            Map<Integer, List<Object>> ack = XiaomiBandMessages.sub(XiaomiBandMessages.sub(cmd, 24), 2);
            int status = XiaomiBandMessages.intField(ack, 2);
            int resume = Math.max(0, XiaomiBandMessages.intField(ack, 4));
            int chunk = XiaomiBandMessages.intField(ack, 5);
            client.log("install", "upload ack status=" + status + " resume=" + resume + " chunk=" + chunk);
            if (status > 0) {
                finish(false, "upload refused " + status);
                return true;
            }
            upload(resume, chunk > 16 ? chunk : DEFAULT_CHUNK);
            return true;
        }
        return false;
    }

    private static void requestUpload() {
        uploading = true;
        byte[] req = XiaomiBandProto.concat(
                XiaomiBandProto.protoFieldVarint(1, UPLOAD_TYPE_APP),
                XiaomiBandProto.protoFieldBytes(2, md5(file)),
                XiaomiBandProto.protoFieldVarint(3, file.length));
        progress(3, "upload_request");
        client.sendCommand(XiaomiBandMessages.command(T_UPLOAD, UPLOAD_START,
                XiaomiBandProto.protoFieldMessage(24, XiaomiBandProto.protoFieldMessage(1, req))));
    }

    private static void upload(int resume, int chunkSize) {
        byte[] md5 = md5(file);
        int n = file.length - Math.min(resume, file.length);
        byte[] body = new byte[2 + 16 + 4 + n];
        body[0] = 0;
        body[1] = (byte) UPLOAD_TYPE_APP;
        System.arraycopy(md5, 0, body, 2, 16);
        putU32(body, 18, file.length);
        System.arraycopy(file, file.length - n, body, 22, n);
        CRC32 crc = new CRC32();
        crc.update(body, 0, body.length);
        byte[] payload = new byte[body.length + 4];
        System.arraycopy(body, 0, payload, 0, body.length);
        putU32(payload, body.length, (int) crc.getValue());

        int part = chunkSize - 4;
        int total = (payload.length + part - 1) / part;
        for (int i = 0; i < total; i++) {
            int from = i * part;
            int len = Math.min(part, payload.length - from);
            byte[] c = new byte[4 + len];
            c[0] = (byte) total;
            c[1] = (byte) (total >>> 8);
            c[2] = (byte) (i + 1);
            c[3] = (byte) ((i + 1) >>> 8);
            System.arraycopy(payload, from, c, 4, len);
            client.sendData(c);
            progress(5 + (int) (90L * (i + 1) / total), "upload");
        }
        client.log("install", "sent " + total + " parts of " + chunkSize);
        progress(96, "installing");
    }

    private static void progress(int pct, String state) {
        if (listener != null) {
            listener.onProgress(pct, state);
        }
    }

    private static void finish(boolean ok, String msg) {
        Listener l = listener;
        if (ok && client != null) {
            XiaomiBandAppLink.refresh(client);
        }
        file = null;
        pkg = null;
        listener = null;
        uploading = false;
        if (l != null) {
            l.onDone(ok, msg);
        }
    }

    /** Link dropped mid-install. */
    static void onDisconnected() {
        if (file != null) {
            finish(false, "disconnected");
        }
    }

    static byte[] md5(byte[] b) {
        try {
            return MessageDigest.getInstance("MD5").digest(b);
        } catch (Exception e) {
            return new byte[16];
        }
    }

    private static void putU32(byte[] b, int off, int v) {
        b[off] = (byte) v;
        b[off + 1] = (byte) (v >>> 8);
        b[off + 2] = (byte) (v >>> 16);
        b[off + 3] = (byte) (v >>> 24);
    }
}
