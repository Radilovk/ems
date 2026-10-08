package com.isaigu.gymapp.wearable.vr;

/** Wire constants — mirror of vr-bridge/quest-layer/src/xems_wire.h (little-endian, packed). */
public final class VrWire {
    private VrWire() {}

    public static final int MAGIC = 0x48525658;  // 'X' 'V' 'R' 'H'
    public static final int VERSION = 1;
    public static final int PORT = 47800;

    public static final int T_HAPTIC = 0x01;
    public static final int T_STOP = 0x02;
    public static final int T_HELLO = 0x03;
    public static final int T_PONG = 0x04;
    public static final int T_ACK = 0x81;
    public static final int T_PING = 0x82;

    public static final int HAND_UNKNOWN = 0;
    public static final int HAND_LEFT = 1;
    public static final int HAND_RIGHT = 2;
    public static final int HAND_BOTH = 3;

    public static final int HF_MIN_DURATION = 0x01;
    public static final int HF_FREQ_UNSPEC = 0x02;
    public static final int HF_ENVELOPE = 0x04;
    public static final int HF_PCM = 0x08;
    public static final int HF_APPEND = 0x10;

    public static final int SR_APP = 0;
    public static final int SR_UNFOCUS = 1;
    public static final int SR_SHUTDOWN = 2;

    public static final int HEADER = 24;    // magic u32, ver u8, type u8, res u16, session u32, seq u32, tNs u64
    public static final int LEN_HAPTIC = 40; // + hand u8, flags u8, res u16, amplitude f32, durationUs u32, freqHz f32
    public static final int LEN_STOP = 28;   // + hand u8, reason u8, res u16
    public static final int LEN_HELLO = 120; // + caps u16, nameLen u8, name[93]
    public static final int LEN_PONG = 40;   // + t0 u64, t1 u64 (header tNs = t2)
}
