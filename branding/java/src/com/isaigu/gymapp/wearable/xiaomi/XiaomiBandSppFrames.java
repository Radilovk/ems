package com.isaigu.gymapp.wearable.xiaomi;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/**
 * Byte framing of the Xiaomi link over Bluetooth Classic (RFCOMM / SPP).
 *
 * v1 (all little-endian):
 *   BA DC FE | channel | flags | len u16 (= payload + 3) | opcode | serial | dataType | payload | EF
 *   channel 0 version, 1 band→phone commands, 2 phone→band commands;
 *   flags 0x80 always, 0x40 = reply wanted; opcode 0 read, 2 send;
 *   dataType 0 plain, 1 encrypted (AES-CCM, phone adds a u16 counter), 2 auth (plain).
 * v2 (selected when the version reply says ≥ 2):
 *   A5 A5 | type | seq | len u16 | crc16 (ARC) of payload | payload
 *   type 1 ack, 2 session config, 3 data. Data payload = channel (1 commands) | opcode
 *   (1 plain, 2 encrypted) | body. Encrypted = AES-CTR with IV = key. Every data packet is acked.
 */
final class XiaomiBandSppFrames {
    static final int V1_HEADER = 10;
    static final int V2_HEADER = 8;

    static final int V2_ACK = 1;
    static final int V2_SESSION = 2;
    static final int V2_DATA = 3;

    static final int KIND_INCOMPLETE = 0;
    static final int KIND_PACKET = 1;
    static final int KIND_GARBAGE = 2;

    private XiaomiBandSppFrames() {}

    /** Result of scanning the receive buffer. */
    static final class Packet {
        int kind;
        /** Bytes consumed from the buffer. */
        int size;
        int version;
        int channel;
        int type;
        int seq;
        int opcode;
        int dataType;
        byte[] payload;
    }

    // ================================================================ v1

    static byte[] v1Version() {
        return v1(0, true, 0, 0, 0, new byte[0]);
    }

    static byte[] v1(int channel, boolean reply, int opcode, int serial, int dataType, byte[] payload) {
        int n = payload.length;
        byte[] out = new byte[V1_HEADER + n + 1];
        out[0] = (byte) 0xBA;
        out[1] = (byte) 0xDC;
        out[2] = (byte) 0xFE;
        out[3] = (byte) (channel & 0x0F);
        out[4] = (byte) (0x80 | (reply ? 0x40 : 0));
        putU16(out, 5, n + 3);
        out[7] = (byte) opcode;
        out[8] = (byte) serial;
        out[9] = (byte) dataType;
        System.arraycopy(payload, 0, out, V1_HEADER, n);
        out[out.length - 1] = (byte) 0xEF;
        return out;
    }

    // ================================================================ v2

    static byte[] v2SessionStart() {
        // opcode 1 (start), then key | len u16 | value: version 1.0.0, max packet 0xFC00,
        // tx window 32, send timeout 10000 ms.
        byte[] body = new byte[] {
                1,
                1, 3, 0, 1, 0, 0,
                2, 2, 0, 0x00, (byte) 0xFC,
                3, 2, 0, 0x20, 0x00,
                4, 2, 0, 0x10, 0x27,
        };
        return v2(V2_SESSION, 0, body);
    }

    static byte[] v2Ack(int seq) {
        return v2(V2_ACK, seq, new byte[0]);
    }

    static byte[] v2Data(int seq, int channel, int opcode, byte[] body) {
        byte[] p = new byte[body.length + 2];
        p[0] = (byte) (channel & 0x0F);
        p[1] = (byte) opcode;
        System.arraycopy(body, 0, p, 2, body.length);
        return v2(V2_DATA, seq, p);
    }

    static byte[] v2(int type, int seq, byte[] payload) {
        byte[] out = new byte[V2_HEADER + payload.length];
        out[0] = (byte) 0xA5;
        out[1] = (byte) 0xA5;
        out[2] = (byte) (type & 0x0F);
        out[3] = (byte) seq;
        putU16(out, 4, payload.length);
        putU16(out, 6, crc16(payload, 0, payload.length));
        System.arraycopy(payload, 0, out, V2_HEADER, payload.length);
        return out;
    }

    /** CRC-16/ARC: reflected polynomial 0xA001, initial value 0. */
    static int crc16(byte[] data, int off, int len) {
        int crc = 0;
        for (int i = off; i < off + len; i++) {
            crc ^= data[i] & 0xFF;
            for (int b = 0; b < 8; b++) {
                crc = (crc & 1) != 0 ? (crc >>> 1) ^ 0xA001 : crc >>> 1;
            }
        }
        return crc & 0xFFFF;
    }

    // ================================================================ parsing

    /** Look for one packet at the start of buf[0..len). */
    static Packet parse(byte[] buf, int len) {
        Packet p = new Packet();
        if (len < 2) {
            p.kind = KIND_INCOMPLETE;
            return p;
        }
        int b0 = buf[0] & 0xFF;
        int b1 = buf[1] & 0xFF;
        if (b0 == 0xA5 && b1 == 0xA5) {
            return parseV2(buf, len, p);
        }
        if (b0 == 0xBA && b1 == 0xDC) {
            return parseV1(buf, len, p);
        }
        p.kind = KIND_GARBAGE;
        p.size = nextStart(buf, len);
        return p;
    }

    private static Packet parseV1(byte[] buf, int len, Packet p) {
        if (len < V1_HEADER + 1) {
            p.kind = KIND_INCOMPLETE;
            return p;
        }
        if ((buf[2] & 0xFF) != 0xFE) {
            return garbage(buf, len, p);
        }
        int n = u16(buf, 5) - 3;
        if (n < 0 || n > 0xFFFF) {
            return garbage(buf, len, p);
        }
        int total = V1_HEADER + n + 1;
        if (len < total) {
            p.kind = KIND_INCOMPLETE;
            return p;
        }
        if ((buf[total - 1] & 0xFF) != 0xEF) {
            return garbage(buf, len, p);
        }
        p.kind = KIND_PACKET;
        p.version = 1;
        p.size = total;
        p.channel = buf[3] & 0x0F;
        p.opcode = buf[7] & 0xFF;
        p.seq = buf[8] & 0xFF;
        p.dataType = buf[9] & 0xFF;
        p.payload = slice(buf, V1_HEADER, n);
        return p;
    }

    private static Packet parseV2(byte[] buf, int len, Packet p) {
        if (len < V2_HEADER) {
            p.kind = KIND_INCOMPLETE;
            return p;
        }
        int n = u16(buf, 4);
        int total = V2_HEADER + n;
        if (len < total) {
            p.kind = KIND_INCOMPLETE;
            return p;
        }
        if (crc16(buf, V2_HEADER, n) != u16(buf, 6)) {
            return garbage(buf, len, p);
        }
        p.kind = KIND_PACKET;
        p.version = 2;
        p.size = total;
        p.type = buf[2] & 0x0F;
        p.seq = buf[3] & 0xFF;
        byte[] payload = slice(buf, V2_HEADER, n);
        if (p.type == V2_DATA && payload.length >= 2) {
            p.channel = payload[0] & 0x0F;
            p.opcode = payload[1] & 0xFF;
            p.payload = slice(payload, 2, payload.length - 2);
        } else {
            p.payload = payload;
        }
        return p;
    }

    private static Packet garbage(byte[] buf, int len, Packet p) {
        p.kind = KIND_GARBAGE;
        p.size = nextStart(buf, len);
        return p;
    }

    /** Skip to the next byte that could start a packet (never 0, so parsing always advances). */
    private static int nextStart(byte[] buf, int len) {
        for (int i = 1; i < len; i++) {
            int b = buf[i] & 0xFF;
            if (b == 0xA5 || b == 0xBA) {
                return i;
            }
        }
        return len;
    }

    // ================================================================ crypto (v2)

    static byte[] ctr(byte[] key, byte[] data) throws Exception {
        Cipher c = Cipher.getInstance("AES/CTR/NoPadding");
        c.init(Cipher.ENCRYPT_MODE, new SecretKeySpec(key, "AES"), new IvParameterSpec(key));
        return c.doFinal(data);
    }

    // ================================================================ bytes

    static int u16(byte[] b, int off) {
        return (b[off] & 0xFF) | ((b[off + 1] & 0xFF) << 8);
    }

    static void putU16(byte[] b, int off, int v) {
        b[off] = (byte) v;
        b[off + 1] = (byte) (v >>> 8);
    }

    static byte[] slice(byte[] src, int off, int len) {
        byte[] out = new byte[len];
        System.arraycopy(src, off, out, 0, len);
        return out;
    }
}
