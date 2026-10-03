package com.isaigu.gymapp.wearable.scale;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/**
 * The ICOMON body-composition scale (Lepulse Lescale P1, Fitdays app) over BLE service FFB0, plaintext — pure
 * Java, no radio. Two generations of the same family, see docs/xems-scale.md:
 *
 * <ul>
 *   <li><b>A</b> (iCOMON FG2305ULB; Fitman, MIT): FFB1 write, FFB2 live weight (12 B), FFB3 indicate, FFB4 name
 *       image. Frame {@code [seq u16 LE][len u16 LE = 1 + payload][type][payload][sum(type+payload) & 0x1F]}.
 *       The scale computes body fat from the BF profile; the A7 result carries it plus 4 + 4 limb impedances.</li>
 *   <li><b>B</b> (SACOMA Ultra; sacoma-lib, MIT): FFB1 write, FFB2 / FFB3 notify, 20-byte frames
 *       {@code [seq][len][frag][16 B payload][sum(payload) & 0x1F]}. The A3 result carries 10 impedances
 *       (trunk included); body fat is computed here ({@link ScaleBody}).</li>
 * </ul>
 *
 * Segment index everywhere: 0 trunk, 1 left arm, 2 right arm, 3 left leg, 4 right leg.
 */
public final class ScaleProtocol {
    private ScaleProtocol() {}

    public static final UUID SERVICE = uuid16(0xFFB0);
    public static final UUID WRITE = uuid16(0xFFB1);
    public static final UUID LIVE = uuid16(0xFFB2);
    public static final UUID FRAMES = uuid16(0xFFB3);
    public static final UUID NAME_IMAGE = uuid16(0xFFB4);
    public static final UUID CCCD = UUID.fromString("00002902-0000-1000-8000-00805f9b34fb");

    public static final int TRUNK = 0, LEFT_ARM = 1, RIGHT_ARM = 2, LEFT_LEG = 3, RIGHT_LEG = 4;

    static UUID uuid16(int v) {
        return UUID.fromString(String.format("0000%04x-0000-1000-8000-00805f9b34fb", v));
    }

    /** One decoded thing the scale said: a live weight or a finished measurement. */
    public static final class Reading {
        public double weightKg;
        /** Live weight settled (B) / a result (A7, A3). */
        public boolean stable;
        /** A finished measurement with impedances. */
        public boolean result;
        /** A weigh-in the scale stored while nothing was connected (A5). */
        public boolean stored;
        /** Body fat % the scale computed itself (A only); NaN = compute it from the impedances. */
        public double scaleFatPct = Double.NaN;
        /** Ω by segment index; NaN = not measured (A has no usable trunk). */
        public final double[] z20 = nan5();
        public final double[] z100 = nan5();
        /** The scale's clock (A), Unix seconds; 0 = none. */
        public long scaleTime;

        static double[] nan5() {
            return new double[] {Double.NaN, Double.NaN, Double.NaN, Double.NaN, Double.NaN};
        }

        public boolean hasTrunk() {
            return !Double.isNaN(z20[TRUNK]) && !Double.isNaN(z100[TRUNK]);
        }
    }

    // ================================================================ generation A

    /** A parsed A frame. */
    public static final class FrameA {
        public final int seq;
        public final int type;
        public final byte[] payload;

        FrameA(int seq, int type, byte[] payload) {
            this.seq = seq;
            this.type = type;
            this.payload = payload;
        }
    }

    public static final int A_HELLO = 0xAA, A_ACK = 0xA0, A_RESULT = 0xA7, A_STORED = 0xA5;

    static int checkA(byte[] body, int from, int to) {
        int s = 0;
        for (int i = from; i < to; i++) {
            s += body[i] & 0xFF;
        }
        return s & 0x1F;
    }

    public static byte[] frameA(int seq, int type, byte[] payload) {
        int n = payload.length + 1;
        byte[] f = new byte[4 + n + 1];
        f[0] = (byte) seq;
        f[1] = (byte) (seq >> 8);
        f[2] = (byte) n;
        f[3] = (byte) (n >> 8);
        f[4] = (byte) type;
        System.arraycopy(payload, 0, f, 5, payload.length);
        f[f.length - 1] = (byte) checkA(f, 4, f.length - 1);
        return f;
    }

    /** null when this is not a valid A frame (wrong length field or check byte). */
    public static FrameA parseA(byte[] d) {
        if (d == null || d.length < 6) {
            return null;
        }
        int seq = (d[0] & 0xFF) | (d[1] & 0xFF) << 8;
        int len = (d[2] & 0xFF) | (d[3] & 0xFF) << 8;
        if (len != d.length - 5 || checkA(d, 4, d.length - 1) != (d[d.length - 1] & 0xFF)) {
            return null;
        }
        byte[] p = new byte[len - 1];
        System.arraycopy(d, 5, p, 0, p.length);
        return new FrameA(seq, d[4] & 0xFF, p);
    }

    static byte[] kg100(double kg) {
        int v = (int) Math.round(Math.max(0, kg) * 100);
        return new byte[] {(byte) (v >> 8), (byte) v};
    }

    static int sexAge(boolean male, int age) {
        return (male ? 0x80 : 0) | Math.max(1, Math.min(127, age));
    }

    static int height(int cm) {
        return Math.max(50, Math.min(255, cm));
    }

    public static byte[] ackA(int seq, int scaleSeq) {
        return frameA(seq, 0xB0, new byte[] {(byte) scaleSeq, (byte) (scaleSeq >> 8)});
    }

    /** BF: the profile the scale computes body fat from. */
    public static byte[] profileA(int seq, int heightCm, double lastKg, boolean male, int age, byte[] uid) {
        byte[] w = kg100(lastKg);
        return frameA(seq, 0xBF, new byte[] {1, 1, (byte) height(heightCm), w[0], w[1], (byte) sexAge(male, age),
                0, 0, 0, 0, 0x0F, uid[0], uid[1], uid[2], uid[3], 1, 1});
    }

    static byte[] recordA(int seq, long unix, int utcOffsetMin, int heightCm, double kg, boolean male, int age,
            double prevKg, double targetKg, int flag, byte[] uid, byte[] tail) {
        byte[] w = kg100(kg), pw = kg100(prevKg), tw = kg100(targetKg);
        byte[] p = new byte[] {(byte) (unix >> 24), (byte) (unix >> 16), (byte) (unix >> 8), (byte) unix,
                (byte) (utcOffsetMin >> 8), (byte) utcOffsetMin, 1, (byte) height(heightCm), w[0], w[1],
                (byte) sexAge(male, age), pw[0], pw[1], tw[0], tw[1], (byte) flag, uid[0], uid[1], uid[2], uid[3],
                tail[0], tail[1]};
        return frameA(seq, 0xBE, p);
    }

    /** BE for the built-in guest, as Fitdays sends it first; also sets the scale's clock. */
    public static byte[] guestA(int seq, long unix, int utcOffsetMin) {
        return recordA(seq, unix, utcOffsetMin, 172, 60.0, true, 24, 50.0, 50.0, 0x2F, new byte[4], new byte[2]);
    }

    /** BE for the client; also sets the scale's clock. */
    public static byte[] userA(int seq, long unix, int utcOffsetMin, int heightCm, double lastKg, boolean male,
            int age, byte[] uid) {
        return recordA(seq, unix, utcOffsetMin, heightCm, lastKg, male, age, lastKg, lastKg, 0x0F, uid,
                new byte[] {1, 1});
    }

    public static byte[] bdA(int seq) {
        return frameA(seq, 0xBD, new byte[] {0x09});
    }

    /** BC as Fitdays sent it (replayed with our user id): the scale keeps the name it shows. */
    public static byte[] bcA(int seq, byte[] uid) {
        return frameA(seq, 0xBC, new byte[] {1, 0, 0, 0, 4, 0x62, 0, 0, 4, 0x62, (byte) 0xED, (byte) 0xDE,
                uid[0], uid[1], uid[2], uid[3], 0x19, 0x15});
    }

    /** The whole handshake after the hello (guest, profile, user, BD, BC); seq numbers from {@code seq0}. */
    public static List<byte[]> handshakeA(int seq0, long unix, int utcOffsetMin, int heightCm, double lastKg,
            boolean male, int age, byte[] uid) {
        List<byte[]> out = new ArrayList<byte[]>();
        out.add(guestA(seq0, unix, utcOffsetMin));
        out.add(profileA(seq0 + 1, heightCm, lastKg, male, age, uid));
        out.add(userA(seq0 + 2, unix, utcOffsetMin, heightCm, lastKg, male, age, uid));
        out.add(bdA(seq0 + 3));
        out.add(bcA(seq0 + 4, uid));
        return out;
    }

    static double ohmLE(byte[] p, int i) {
        return ((p[i] & 0xFF) | (p[i + 1] & 0xFF) << 8) / 10.0;
    }

    /** A7 result / A5 stored weigh-in (37-byte payload); null for anything else. */
    public static Reading decodeA(FrameA f) {
        if (f == null || (f.type != A_RESULT && f.type != A_STORED) || f.payload.length != 37) {
            return null;
        }
        byte[] p = f.payload;
        Reading r = new Reading();
        r.scaleTime = ((long) (p[0] & 0xFF) << 24) | (p[1] & 0xFF) << 16 | (p[2] & 0xFF) << 8 | (p[3] & 0xFF);
        // bit 0 of the status byte is weight bit 16 (65.536 kg and up)
        r.weightKg = (((p[5] & 1) << 16) | (p[6] & 0xFF) << 8 | (p[7] & 0xFF)) / 1000.0;
        r.scaleFatPct = ((p[35] & 0xFF) << 8 | (p[36] & 0xFF)) / 10.0;
        r.result = true;
        r.stable = true;
        r.stored = f.type == A_STORED;
        // frame bytes 16-23 at 20 kHz, 26-33 at 100 kHz: left arm, right arm, right leg, left leg
        r.z20[LEFT_ARM] = ohmLE(p, 11);
        r.z20[RIGHT_ARM] = ohmLE(p, 13);
        r.z20[RIGHT_LEG] = ohmLE(p, 15);
        r.z20[LEFT_LEG] = ohmLE(p, 17);
        r.z100[LEFT_ARM] = ohmLE(p, 21);
        r.z100[RIGHT_ARM] = ohmLE(p, 23);
        r.z100[RIGHT_LEG] = ohmLE(p, 25);
        r.z100[LEFT_LEG] = ohmLE(p, 27);
        return r;
    }

    /** Live weight from a 12-byte FFB2 notification (A); NaN for anything else. */
    public static double liveWeightA(byte[] d) {
        if (d == null || d.length != 12) {
            return Double.NaN;
        }
        return (((d[7] & 1) << 16) | (d[8] & 0xFF) << 8 | (d[9] & 0xFF)) / 1000.0;
    }

    // ================================================================ generation B

    public static final int B_COUNTER = 0xA0, B_STATUS = 0xA1, B_WEIGHT = 0xA2, B_RESULT = 0xA3;

    static int checkB(byte[] f) {
        int s = 0;
        for (int i = 3; i < 19; i++) {
            s += f[i] & 0xFF;
        }
        return s & 0x1F;
    }

    public static boolean validB(byte[] f) {
        return f != null && f.length == 20 && (f[19] & 0xFF) == checkB(f);
    }

    /** One message → 20-byte frames ({@code len} = the whole payload length in every fragment). */
    public static List<byte[]> framesB(int seq, byte[] payload) {
        List<byte[]> out = new ArrayList<byte[]>();
        int frag = 0;
        int off = 0;
        do {
            byte[] f = new byte[20];
            f[0] = (byte) seq;
            f[1] = (byte) payload.length;
            f[2] = (byte) frag;
            System.arraycopy(payload, off, f, 3, Math.min(16, payload.length - off));
            f[19] = (byte) checkB(f);
            out.add(f);
            off += 16;
            frag++;
        } while (off < payload.length);
        return out;
    }

    /** Fragments → whole messages. The two A3 fragments carry different seq numbers, so key on the fragment. */
    public static final class AssemblerB {
        private byte[] buf;
        private int have;

        /** The complete message payload, or null while waiting / for a bad frame. */
        public byte[] add(byte[] f) {
            if (!validB(f)) {
                return null;
            }
            int len = f[1] & 0xFF;
            if (f[2] == 0) {
                if (len <= 16) {
                    byte[] m = new byte[len];
                    System.arraycopy(f, 3, m, 0, len);
                    return m;
                }
                buf = new byte[len];
                have = 0;
            } else if (buf == null) {
                return null;
            }
            int n = Math.min(16, buf.length - have);
            System.arraycopy(f, 3, buf, have, n);
            have += n;
            if (have >= buf.length) {
                byte[] m = buf;
                buf = null;
                return m;
            }
            return null;
        }
    }

    static byte[] recordB(long uid, int heightCm, double kg, boolean male, int age) {
        int w = (int) Math.round(Math.max(0, kg) * 100) & 0x7FFF;
        if (w != 0) {
            w |= 0x8000;
        }
        return new byte[] {(byte) (uid >> 24), (byte) (uid >> 16), (byte) (uid >> 8), (byte) uid,
                (byte) (heightCm & 0xFF), (byte) (w >> 8), (byte) w, (byte) sexAge(male, age)};
    }

    /** BA: the heartbeat (time + the client's record + flags 0x2F normal / 0x0F athlete). */
    public static byte[] syncB(long unix, long uid, int heightCm, double kg, boolean male, int age,
            boolean athlete) {
        byte[] r = recordB(uid, heightCm, kg, male, age);
        byte[] p = new byte[16];
        p[0] = (byte) 0xBA;
        p[1] = (byte) (unix >> 24);
        p[2] = (byte) (unix >> 16);
        p[3] = (byte) (unix >> 8);
        p[4] = (byte) unix;
        p[5] = 0x00;
        p[6] = 0x78;
        System.arraycopy(r, 0, p, 7, 8);
        p[15] = (byte) (athlete ? 0x0F : 0x2F);
        return p;
    }

    /** BB: the user list (one record: the client). */
    public static byte[] usersB(long uid, int heightCm, double kg, boolean male, int age) {
        byte[] r = recordB(uid, heightCm, kg, male, age);
        byte[] p = new byte[10];
        p[0] = (byte) 0xBB;
        p[1] = 1;
        System.arraycopy(r, 0, p, 2, 8);
        return p;
    }

    public static byte[] ackB(int replyIndex) {
        return new byte[] {(byte) 0xB0, (byte) replyIndex, 0};
    }

    public static byte[] otherB() {
        return new byte[] {(byte) 0xBD, 0x09};
    }

    /** A2 live weight / A3 result from a whole message; null for counters, status and the unknown. */
    public static Reading decodeB(byte[] m) {
        if (m == null || m.length < 6) {
            return null;
        }
        int type = m[0] & 0xFF;
        Reading r = new Reading();
        if (type == B_WEIGHT) {
            r.weightKg = ((m[3] & 0xFF) << 16 | (m[4] & 0xFF) << 8 | (m[5] & 0xFF)) / 1000.0;
            r.stable = m[1] == 0x02 || m[1] == 0x03;
            return r;
        }
        if (type == B_RESULT && m.length >= 26) {
            r.weightKg = ((m[2] & 0xFF) << 16 | (m[3] & 0xFF) << 8 | (m[4] & 0xFF)) / 1000.0;
            r.result = true;
            r.stable = true;
            // imp1..imp10, u16 BE / 10: trunk, LA, RA, LL, RL at 20 kHz, then the same at 100 kHz
            for (int i = 0; i < 10; i++) {
                double z = ((m[6 + 2 * i] & 0xFF) << 8 | (m[7 + 2 * i] & 0xFF)) / 10.0;
                if (i < 5) {
                    r.z20[i] = z;
                } else {
                    r.z100[i - 5] = z;
                }
            }
            return r;
        }
        return null;
    }

    /** A 4-byte scale user id that stays the same for one client (the scale keeps history per id). */
    public static byte[] uidBytes(long clientId) {
        long h = clientId * 0x9E3779B97F4A7C15L + 0x5851F42DL;
        h ^= h >>> 29;
        int v = (int) h | 0x01000000;      // never all-zero (that is the guest)
        return new byte[] {(byte) (v >> 24), (byte) (v >> 16), (byte) (v >> 8), (byte) v};
    }

    public static long uidLong(long clientId) {
        byte[] b = uidBytes(clientId);
        return ((long) (b[0] & 0xFF) << 24) | (b[1] & 0xFF) << 16 | (b[2] & 0xFF) << 8 | (b[3] & 0xFF);
    }
}
