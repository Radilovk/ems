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
    public static final int T_CTRL = 0x05;   // a game's own impulse control (XEMS Studio dock) -> answered by T_STATE
    public static final int T_ACK = 0x81;
    public static final int T_PING = 0x82;
    public static final int T_STATE = 0x83;  // the suit side as the tablet sees it, to the sender of a T_CTRL

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
    public static final int LEN_CTRL = 32;   // + op u8, arg u8, res u16, value i32
    public static final int LEN_STATE = 48;  // + flags u8, sens u8, smooth u8, floor u8, rests u16, level u8, applied i8,
                                             //   ceiling i32, passed u32, dropped u32, res u32

    public static final int CTRL_QUERY = 0;
    public static final int CTRL_PAUSE = 1;     // arg 1 = the game stops driving the strength
    public static final int CTRL_STRENGTH = 2;  // value = step of the trainer's strength (ceiling), while VR drives
    public static final int CTRL_FLOOR = 3;     // value = weakest hit, % of the trainer's strength
    public static final int CTRL_SENS = 4;      // arg = gate preset (VrNoiseGate)
    public static final int CTRL_SMOOTH = 5;    // arg = rise preset (VrSettings.SMOOTHNESS index)
    public static final int CTRL_REST = 6;      // arg = channel (partsDisabled index), value 1 = rests in VR
    public static final int CTRL_RESET = 7;

    public static final int ST_LINKED = 0x01;   // the haptic layer is paired
    public static final int ST_DRIVING = 0x02;  // VR drives a running row
    public static final int ST_PAUSED = 0x04;   // "the game drives the strength" is off
    public static final int ST_MUSIC = 0x08;    // the music player owns the strength
}
