package com.isaigu.gymapp.bodytech;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/**
 * Bodytech (EMSFIT 5.1, com.emsfit.way8) suit protocol (copy of bodytech/probe Proto without logging) — every encoding mirrors the vendor's
 * zcontrol.protocol.commands classes byte for byte (bodytech/PROTOCOL.md).
 *
 * Frame: 8 bytes, big endian: 0x36 | u16 (channelId | register) | i32 value | 0xC9.
 * channelId = n·16 for channel n (1..8), 0 for the global registers.
 */
public final class BtProto {
    private BtProto() {}

    public static final int BEGIN = 0x36;
    public static final int END = 0xC9;

    // Global registers (channel 0)
    public static final int G_RESET = 0, G_STATUS = 1, G_SEL = 3, G_SYNC = 5, G_VER = 8;
    // Channel registers
    public static final int R_LENGTH_CLOCK = 0, R_STEP_NOR = 1, R_INTENSITY = 2, R_WIDTH = 3,
            R_WAVEFORM = 4, R_WORKLEN = 5, R_T_PERIOD = 6, R_T1 = 7, R_T2 = 8, R_T3 = 9, R_T4 = 10,
            R_T1_INT_STEP = 11, R_T1_W_STEP = 12, R_T3_INT_STEP = 13, R_T3_W_STEP = 14;

    /** Status codes written to G_STATUS (vendor SetBattery*Command). */
    public static final int BATTERY_INIT = 0x00020102;
    public static final int BATTERY_INIT2 = 0x00020010;
    public static final int BATTERY_SYNC = 0x08010000;

    /** Vendor default for IMPULSE_STEP_VALUE_NOR (ZProgramFactory). */
    public static final int STEP_NOR_DEFAULT = 0x01010101;

    /** SetEN: all eight channels off (CH.ALLOFF). */
    public static final int EN_ALL_OFF = 0x00FF0000;

    public static byte[] frame(int channel, int register, int value) {
        ByteBuffer b = ByteBuffer.allocate(8).order(ByteOrder.BIG_ENDIAN);
        b.put((byte) BEGIN);
        b.putShort((short) ((channel << 4) | register));
        b.putInt(value);
        b.put((byte) END);
        return b.array();
    }

    // ---- global commands ----
    public static byte[] reset() { return frame(0, G_RESET, 1); }
    public static byte[] batteryInit() { return frame(0, G_STATUS, BATTERY_INIT); }
    public static byte[] batteryInit2() { return frame(0, G_STATUS, BATTERY_INIT2); }
    public static byte[] batterySync() { return frame(0, G_STATUS, BATTERY_SYNC); }

    /** Watchdog / heartbeat (SetSyncPriCommand): seconds ≤ 360 → seconds·10⁷ (0.1 µs units). */
    public static byte[] sync(int seconds) {
        return frame(0, G_SYNC, seconds <= 360 ? seconds * 1000 * 1000 * 10 : 0);
    }

    /** SetENCommand: low byte = channels on (bit n-1), bits 16..23 = channels off. */
    public static byte[] enable(int onMask) {
        int on = onMask & 0xFF;
        return frame(0, G_SEL, on | ((~on & 0xFF) << 16));
    }

    public static byte[] allOff() { return frame(0, G_SEL, EN_ALL_OFF); }

    // ---- channel commands (ch = 1..8) ----
    /** Period straight in 1 MHz ticks (1 µs each): 11764 = 85 Hz. Pulse slots slide a channel with it (BtTranslator). */
    public static byte[] period(int ch, int ticks) {
        return frame(ch, R_LENGTH_CLOCK, ticks & 0xFFFFF);
    }

    public static byte[] hz(int ch, int hz) {
        return frame(ch, R_LENGTH_CLOCK, (hz <= 0 || hz > 1000000) ? 0 : (1000000 / hz) & 0xFFFFF);
    }

    public static byte[] stepNor(int ch, int v) {
        return frame(ch, R_STEP_NOR, (v <= 0 || v >= 0x20202020) ? STEP_NOR_DEFAULT : v & 0x1F1F1F1F);
    }

    public static byte[] intensity(int ch, int pct) {
        return frame(ch, R_INTENSITY, (pct < 0 || pct >= 100) ? 0 : pct & 127);
    }

    /** Pulse width in µs (1..511) → 0.2 µs units; vendor falls back to 800 (160 µs). */
    public static byte[] width(int ch, int us) {
        return frame(ch, R_WIDTH, (us <= 0 || us >= 512) ? 800 : ((us * 10) / 2) & 8191);
    }

    /** Pulse width in µs straight into the register's 13 bits (0.2 µs units): 1..1638 µs, no vendor fallback (test only). */
    public static byte[] widthRaw(int ch, int us) {
        int u = us < 1 ? 1 : (us > WIDTH_RAW_MAX ? WIDTH_RAW_MAX : us);
        return frame(ch, R_WIDTH, ((u * 10) / 2) & 8191);
    }

    public static final int WIDTH_RAW_MAX = 1638;

    /** STEP_NOR with every byte = b (1..31); the vendor sends 1 in every byte. */
    public static byte[] stepNorByte(int ch, int b) {
        int v = b < 1 ? 1 : (b > 31 ? 31 : b);
        return stepNor(ch, v | (v << 8) | (v << 16) | (v << 24));
    }

    public static byte[] waveform(int ch, int w) { return frame(ch, R_WAVEFORM, w & 3); }

    public static byte[] tPeriod(int ch, int v) {
        return frame(ch, R_T_PERIOD, (v <= 0 || v >= 16) ? 0 : (v * 10) & 15);
    }

    /** T1..T4 in ms → ms·10000/1024 (vendor SetImpulseTxWorkLengthMsCommand). */
    public static byte[] t(int ch, int which, int ms) {
        int v;
        if (which == 2) {
            v = (ms <= 0 || ms * 10 >= 1048575) ? 9765 : ((ms * 10000) / 1024) & 0xFFFFF;
        } else {
            v = (ms < 0 || ms * 10 >= 1048575) ? 0 : ((ms * 10000) / 1024) & 0xFFFFF;
        }
        return frame(ch, R_T1 + which - 1, v);
    }

    public static byte[] t1IntStep(int ch, int v) { return frame(ch, R_T1_INT_STEP, (v < 0 || v >= 100) ? 0 : v & 127); }
    public static byte[] t1WidthStep(int ch, int v) { return frame(ch, R_T1_W_STEP, (v < 0 || v >= 256) ? 0 : (v * 10) & 4095); }
    public static byte[] t3IntStep(int ch, int v) { return frame(ch, R_T3_INT_STEP, (v < 0 || v >= 100) ? 0 : v & 127); }
    public static byte[] t3WidthStep(int ch, int v) { return frame(ch, R_T3_W_STEP, (v < 0 || v >= 256) ? 0 : (v * 10) & 4095); }

    // ---- replies ----

    /** Battery reply (vendor BleUtils notify): 8 bytes, [2]=1, [3]=8, [4]=1, raw = [5]<<8 | [6]. −1 if not one. */
    public static int batteryRaw(byte[] v) {
        if (v == null || v.length != 8 || v[2] != 1 || v[3] != 8 || v[4] != 1) return -1;
        if (v[5] == 0 && v[6] == 0) return -1;
        return ((v[5] & 0xFF) << 8) | (v[6] & 0xFF);
    }

    public static float volts(int raw) { return raw * 0.0024f; }

    /** Vendor's percent: 3.60 V = 0 %, 4.08 V = 100 %. */
    public static int percent(int raw) {
        float f = volts(raw);
        return Math.min(100, Math.max(0, (int) (((f - 3.6f) * 100.0f) / 0.48f)));
    }

    // ---- which suit ----

    static boolean nameIsBodytech(String n) {
        if (n == null) return false;
        String u = n.toUpperCase();
        if (u.startsWith("TZLJ") || u.startsWith("ADT")) return true;
        return u.length() > 4 && u.startsWith("EMS") && Character.isDigit(u.charAt(3)) && u.indexOf('-') > 3;
    }

    /** Is the 16-bit service uuid in a scan record's 0x02 / 0x03 (incomplete / complete list) entries. */
    static boolean has16(byte[] rec, int uuid) {
        int i = 0;
        while (i + 1 < rec.length) {
            int len = rec[i] & 0xFF;
            if (len == 0 || i + len >= rec.length) break;
            int type = rec[i + 1] & 0xFF;
            if (type == 0x02 || type == 0x03) {
                for (int j = i + 2; j + 1 <= i + len; j += 2) {
                    if ((rec[j] & 0xFF | (rec[j + 1] & 0xFF) << 8) == uuid) return true;
                }
            }
            i += len + 1;
        }
        return false;
    }
}
