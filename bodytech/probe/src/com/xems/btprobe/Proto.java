package com.xems.btprobe;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/**
 * Bodytech (EMSFIT 5.1, com.emsfit.way8) suit protocol — every encoding mirrors the vendor's
 * zcontrol.protocol.commands classes byte for byte (bodytech/PROTOCOL.md).
 *
 * Frame: 8 bytes, big endian: 0x36 | u16 (channelId | register) | i32 value | 0xC9.
 * channelId = n·16 for channel n (1..8), 0 for the global registers.
 */
public final class Proto {
    private Proto() {}

    public static final int BEGIN = 0x36;
    public static final int END = 0xC9;

    // Global registers (channel 0)
    public static final int G_RESET = 0, G_STATUS = 1, G_SEL = 3, G_SYNC = 5, G_VER = 8;
    // Channel registers
    public static final int R_LENGTH_CLOCK = 0, R_STEP_NOR = 1, R_INTENSITY = 2, R_WIDTH = 3,
            R_WAVEFORM = 4, R_WORKLEN = 5, R_T_PERIOD = 6, R_T1 = 7, R_T2 = 8, R_T3 = 9, R_T4 = 10,
            R_T1_INT_STEP = 11, R_T1_W_STEP = 12, R_T3_INT_STEP = 13, R_T3_W_STEP = 14;

    static final String[] G_NAMES = {"RESET", "STATUS", "?2", "SEL", "?4", "SYNC", "?6", "?7", "VER"};
    static final String[] R_NAMES = {"HZ_CLOCK", "STEP_NOR", "INTENSITY", "WIDTH", "WAVEFORM",
            "WORKLEN", "T_PERIOD", "T1_RAMP_UP", "T2_WORK", "T3_RAMP_DOWN", "T4_PAUSE",
            "T1_INT_STEP", "T1_W_STEP", "T3_INT_STEP", "T3_W_STEP", "?15"};

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
    public static byte[] hz(int ch, int hz) {
        return frame(ch, R_LENGTH_CLOCK, (hz <= 0 || hz > 1000000) ? 0 : (1000000 / hz) & 0xFFFFF);
    }

    /** Period straight in 1 MHz ticks (1 µs each): 10000 = 100 Hz, 10010 ≈ 99.9 Hz. Isolation test (beat). */
    public static byte[] period(int ch, int ticks) {
        return frame(ch, R_LENGTH_CLOCK, ticks & 0xFFFFF);
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

    // ---- logging ----

    public static String hex(byte[] b) {
        if (b == null) return "null";
        StringBuilder s = new StringBuilder(b.length * 3);
        for (int i = 0; i < b.length; i++) {
            if (i > 0) s.append(' ');
            s.append(String.format("%02X", b[i] & 0xFF));
        }
        return s.toString();
    }

    /** Human reading of one frame, e.g. "C3 INTENSITY=5" or "SEL on=00000101". */
    public static String decode(byte[] b) {
        if (b == null || b.length != 8 || (b[0] & 0xFF) != BEGIN || (b[7] & 0xFF) != END) {
            return ascii(b);
        }
        int sr = ((b[1] & 0xFF) << 8) | (b[2] & 0xFF);
        int ch = sr >> 4, reg = sr & 0xF;
        int val = ((b[3] & 0xFF) << 24) | ((b[4] & 0xFF) << 16) | ((b[5] & 0xFF) << 8) | (b[6] & 0xFF);
        if (ch == 0) {
            String n = reg < G_NAMES.length ? G_NAMES[reg] : "G?" + reg;
            if (reg == G_SEL) {
                return "SEL on=" + bits(val & 0xFF) + " off=" + bits((val >> 16) & 0xFF);
            }
            if (reg == G_SYNC) return "SYNC watchdog=" + (val / 10000000.0) + "s";
            if (reg == G_STATUS) {
                int raw = batteryRaw(b);
                if (raw > 0) return String.format("BATTERY raw=%d %.3fV %d%%", raw, volts(raw), percent(raw));
                return String.format("STATUS 0x%08X", val);
            }
            return n + "=" + val;
        }
        String n = R_NAMES[reg];
        String human = "";
        switch (reg) {
            case R_LENGTH_CLOCK: human = val > 0 ? " (" + (1000000 / val) + " Hz)" : ""; break;
            case R_WIDTH: human = " (" + (val * 2 / 10) + " µs)"; break;
            case R_T1: case R_T2: case R_T3: case R_T4: human = " (" + (val * 1024 / 10000) + " ms)"; break;
            default: break;
        }
        return "C" + ch + " " + n + "=" + val + human;
    }

    static String bits(int m) {
        StringBuilder s = new StringBuilder();
        for (int i = 7; i >= 0; i--) s.append((m >> i & 1) == 1 ? '1' : '0');
        return s.toString();
    }

    static String ascii(byte[] b) {
        if (b == null) return "";
        StringBuilder s = new StringBuilder();
        for (byte x : b) {
            int c = x & 0xFF;
            if (c < 32 || c > 126) return "raw";
            s.append((char) c);
        }
        return "text \"" + s + "\"";
    }
}
