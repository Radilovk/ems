package com.isaigu.gymapp.wearable.scale;

import java.util.UUID;

/**
 * The Senssun / MovingLife scale family (Senssun "Fat", IF_xx; Klausberg KB-7853 and the other scales sold for the
 * MovingLife app) over BLE — pure Java, no radio. The second scale language next to {@link ScaleProtocol} (ICOMON).
 *
 * <p>Protocol as reverse-engineered by openScale ({@code SenssunHandler}); two GATT layouts:
 * <ul>
 * <li>A — service FFF0, notify FFF1, write FFF2;</li>
 * <li>B — service FFB0, notify + write FFB2 (no FFB1: that is how it differs from ICOMON's FFB0).</li>
 * </ul>
 * Every notification is {@code FF A5 v1 v2 v3 v4 T …}: after the FF pad, {@code frame[5]} (= {@code d[6]}) is the type —
 * A0 live weight, AA weight settled ({@code v1v2} = kg×10, big-endian), B0 fat ‰ + water ‰, C0 muscle ‰ + bone
 * (kg×10, bytes swapped), D0 kcal, BE the fat test failed (no contact). Commands are 9 bytes {@code A5 cmd a b c 0 0
 * sum 0}, sum = low byte of bytes 1…6: 30 date (yy, day of year BE), 31 time (h m s), 10 the user (sex·user,
 * age, height) — sent once the weight settles, then the scale measures and sends B0 / C0 / D0.
 *
 * <p>No impedances come over this protocol: the reading is the weight and the scale's own fat %, saved as such
 * (no segments).
 *
 * <p><b>XS</b> — the protocol of the current MovingLife app (Senssun's "xshq" SDK, native {@code libprotocol.so},
 * decompiled from MovingLife 5.13.0; docs/xems-scale.md "Senssun / MovingLife"): the same FFF0 / FFF1 / FFF2, the
 * advert's manufacturer data = vendor (2) · protocol version (1) · model (2) · the scale's MAC (6). 8-electrode
 * models send the impedances of all five segments, so the KB-7853 gets the same tissue analysis as the P1:
 * <ul>
 * <li>v11…v15 — frames {@code 33 CC len snHi snLo 00 func …  sum} (sum = bytes 2…n−2), split over notifications;
 * 0x80 live weight, 0x81 result: weight (kg×100) at 10, flags at 17, then TLVs {@code len id data} from 22 — id 4
 * (or 5 after a u16 alg type) = ten u32: right hand, left hand, trunk, right foot, left foot at 20 kHz, the same at
 * 100 kHz. Byte 7 = 1 asks for an ack {@code 33 CC 0B sn 00 FF func scaleSn sum}. Time: {@code 33 CC 0F sn 00 10 01
 * tzMin(2) unix(4) sum}.</li>
 * <li>v1 (versions below 0x11) — frames {@code 10 00 00 C5 len 00 func …} (sum = bytes 4…n−2); 0x8C result: TLVs
 * {@code id len data} from 10, id 5 = weight (kg×10) then the same ten u32.</li>
 * <li>v30 is AES with a key agreed per connection — not supported (logged).</li>
 * </ul>
 * An impedance u32 {@code b0 b1 b2 b3} is Ω×10 = {@code (b2b3 << 16) | b0b1} (the SDK's {@code deImpedance}). A
 * single-frequency scale leaves the 100 kHz values at 0: its values are taken as 50 kHz ({@link ScaleModel#single}).
 */
public final class ScaleSenssun {
    private ScaleSenssun() {}

    public static final UUID SERVICE_A = ScaleProtocol.uuid16(0xFFF0);
    public static final UUID NOTIFY_A = ScaleProtocol.uuid16(0xFFF1);
    public static final UUID WRITE_A = ScaleProtocol.uuid16(0xFFF2);
    public static final UUID SERVICE_B = ScaleProtocol.uuid16(0xFFB0);
    public static final UUID CHAR_B = ScaleProtocol.uuid16(0xFFB2);

    public static final int T_LIVE = 0xA0, T_STABLE = 0xAA, T_FAT = 0xB0, T_MUSCLE = 0xC0, T_KCAL = 0xD0,
            T_ERROR = 0xBE;

    /** Names the family advertises (lower case, contains / starts-with). */
    public static boolean looksLike(String name) {
        if (name == null) {
            return false;
        }
        String n = name.toLowerCase(java.util.Locale.ROOT).trim();
        return n.contains("senssun") || n.contains("movinglife") || n.contains("moving life") || n.contains("klausberg")
                || n.startsWith("kb-78") || n.startsWith("kb78") || n.startsWith("if_") || n.startsWith("if-")
                || n.contains("body fat") || n.contains("fat scale");
    }

    /** One decoded notification: its type and the two 16-bit values after A5. */
    public static final class Frame {
        public final int type;
        public final int v1, v2;
        /** v2 with its bytes swapped (bone in C0). */
        public final int v2swap;

        Frame(int type, int v1, int v2, int v2swap) {
            this.type = type;
            this.v1 = v1;
            this.v2 = v2;
            this.v2swap = v2swap;
        }
    }

    /** {@code FF A5 …} with a type byte; null for anything else. */
    public static Frame parse(byte[] d) {
        if (d == null || d.length < 7 || (d[0] & 0xFF) != 0xFF || (d[1] & 0xFF) != 0xA5) {
            return null;
        }
        int v1 = (d[2] & 0xFF) << 8 | (d[3] & 0xFF);
        int v2 = (d[4] & 0xFF) << 8 | (d[5] & 0xFF);
        int v2s = (d[5] & 0xFF) << 8 | (d[4] & 0xFF);
        return new Frame(d[6] & 0xFF, v1, v2, v2s);
    }

    static byte[] command(int cmd, int a, int b, int c) {
        byte[] m = new byte[9];
        m[0] = (byte) 0xA5;
        m[1] = (byte) cmd;
        m[2] = (byte) a;
        m[3] = (byte) b;
        m[4] = (byte) c;
        int sum = 0;
        for (int i = 1; i < m.length - 2; i++) {
            sum += m[i] & 0xFF;
        }
        m[m.length - 2] = (byte) sum;
        return m;
    }

    /** Date: two-digit year, day of the year (big-endian). */
    public static byte[] date(int year, int dayOfYear) {
        return command(0x30, year % 100, dayOfYear >> 8 & 0xFF, dayOfYear & 0xFF);
    }

    public static byte[] time(int hour, int minute, int second) {
        return command(0x31, hour, minute, second);
    }

    /** The person on the scale (user slot 1): the scale measures the body with it. */
    public static byte[] user(boolean male, int age, int heightCm) {
        return command(0x10, (male ? 15 : 0) * 16 + 1, Math.max(10, Math.min(99, age)),
                Math.max(100, Math.min(220, heightCm)));
    }

    /**
     * One time on the scale, frame by frame: {@link #add} says what the frame was; the link sends {@link #user} on
     * {@link #STABLE} and delivers {@link #reading} on {@link #RESULT} / {@link #ERROR}.
     */
    public static final class Reader {
        public static final int NONE = 0, LIVE = 1, STABLE = 2, RESULT = 3, ERROR = 4;

        public double kg;
        public boolean stable;
        public double fatPct = Double.NaN, waterPct = Double.NaN, musclePct = Double.NaN, boneKg = Double.NaN;
        public int kcal;
        boolean done;

        public void reset() {
            kg = 0;
            stable = false;
            fatPct = waterPct = musclePct = boneKg = Double.NaN;
            kcal = 0;
            done = false;
        }

        static double pct(int permille) {
            double v = permille / 10.0;
            return v >= 3 && v <= 75 ? v : Double.NaN;
        }

        public int add(byte[] d) {
            Frame f = parse(d);
            if (f == null) {
                return NONE;
            }
            switch (f.type) {
                case T_LIVE:
                case T_STABLE: {
                    double w = f.v1 / 10.0;
                    if (w > 300) {
                        return NONE;
                    }
                    if (w < 2) {
                        if (kg >= 2 || done) {
                            reset();            // stepped off: the next one on is a new measurement
                        }
                        kg = w;
                        return LIVE;
                    }
                    if (done && Math.abs(w - kg) > 1.5) {
                        reset();                // someone else on without the scale going to zero
                    }
                    kg = w;
                    if (f.type == T_STABLE && !stable) {
                        stable = true;
                        return STABLE;
                    }
                    return LIVE;
                }
                case T_FAT:
                    fatPct = pct(f.v1);
                    waterPct = pct(f.v2);
                    if (!done && stable && kg >= 2) {
                        done = true;
                        return RESULT;
                    }
                    return NONE;
                case T_MUSCLE:
                    musclePct = pct(f.v1);
                    boneKg = f.v2swap > 0 && f.v2swap < 200 ? f.v2swap / 10.0 : Double.NaN;
                    return NONE;
                case T_KCAL:
                    kcal = f.v1;
                    return NONE;
                case T_ERROR:
                    if (!done && stable && kg >= 2) {
                        done = true;
                        fatPct = Double.NaN;
                        return ERROR;
                    }
                    return NONE;
                default:
                    return NONE;
            }
        }

        /** The finished reading: weight and the scale's fat % (NaN after BE); no impedances. */
        public ScaleProtocol.Reading reading() {
            ScaleProtocol.Reading r = new ScaleProtocol.Reading();
            r.weightKg = kg;
            r.stable = true;
            r.result = true;
            r.scaleFatPct = fatPct;
            return r;
        }
    }

    // ================================================================ XS (MovingLife SDK)

    public static final int XS_V30 = 0x30;
    /** 8-electrode models of the SDK's model table (product type 4). */
    static final int[] PRO_MODELS = {0x0309, 0x0319, 0x0320, 0x0323, 0x0324, 0x0327, 0x0333, 0x0335, 0x0336, 0x0337,
            0x0338};

    public static boolean pro(int model) {
        for (int m : PRO_MODELS) {
            if (m == model) {
                return true;
            }
        }
        return false;
    }

    /**
     * The advert's XS identity: {version, model} when a manufacturer-data field carries the device's own MAC at
     * bytes 5…10 of its value (after the company id); null otherwise. The MAC check makes it the scale's own claim.
     */
    public static int[] xsAdvert(byte[] adv, String mac) {
        if (adv == null || mac == null) {
            return null;
        }
        byte[] m = new byte[6];
        String h = mac.replace(":", "");
        if (h.length() != 12) {
            return null;
        }
        for (int i = 0; i < 6; i++) {
            m[i] = (byte) Integer.parseInt(h.substring(2 * i, 2 * i + 2), 16);
        }
        for (int i = 0; i + 1 < adv.length; ) {
            int len = adv[i] & 0xFF;
            if (len == 0 || i + len >= adv.length + 1) {
                break;
            }
            int type = adv[i + 1] & 0xFF;
            int v = i + 4;                 // value after the 2-byte company id
            if (type == 0xFF && len >= 3 + 11 && v + 11 <= adv.length) {
                boolean same = true;
                for (int k = 0; k < 6; k++) {
                    same &= adv[v + 5 + k] == m[k];
                }
                if (same) {
                    return new int[] {adv[v + 2] & 0xFF, (adv[v + 3] & 0xFF) << 8 | (adv[v + 4] & 0xFF)};
                }
            }
            i += len + 1;
        }
        return null;
    }

    static boolean headV11(byte[] d) {
        return d.length >= 3 && (d[0] & 0xFF) == 0x33 && (d[1] & 0xFF) == 0xCC;
    }

    static boolean headV1(byte[] d) {
        return d.length >= 5 && d[0] == 0x10 && d[1] == 0 && d[2] == 0 && (d[3] & 0xFF) == 0xC5;
    }

    /** An XS frame start (either generation). */
    public static boolean isXs(byte[] d) {
        return d != null && (headV11(d) || headV1(d));
    }

    static int sum(byte[] f, int from, int to) {
        int s = 0;
        for (int i = from; i <= to; i++) {
            s += f[i] & 0xFF;
        }
        return s & 0xFF;
    }

    /** Joins a frame sent over several notifications; {@link #add} returns it whole and checked, or null. */
    public static final class Assembler {
        byte[] buf;
        int have, need;

        public byte[] add(byte[] d) {
            if (d == null || d.length == 0) {
                return null;
            }
            if (isXs(d)) {
                need = headV11(d) ? d[2] & 0xFF : d[4] & 0xFF;
                if (need < 6) {
                    buf = null;
                    return null;
                }
                buf = new byte[need];
                have = 0;
            } else if (buf == null) {
                return null;
            }
            int n = Math.min(d.length, need - have);
            System.arraycopy(d, 0, buf, have, n);
            have += n;
            if (have < need) {
                return null;
            }
            byte[] f = buf;
            buf = null;
            boolean v11 = headV11(f);
            return sum(f, v11 ? 2 : 4, f.length - 2) == (f[f.length - 1] & 0xFF) ? f : null;
        }
    }

    /** What one XS frame said. */
    public static final class XsFrame {
        public static final int LIVE = 1, RESULT = 2, OTHER = 0;
        public int kind;
        public int func;
        public double kg = Double.NaN;
        public boolean stable;
        /** The scale's contact verdict (0 = fine; 2 hands, 3 feet, 4 both, 5 nothing — the SDK's errorCode). */
        public int error;
        /** End of the stored history (no data). */
        public boolean finished;
        /** Ω by segment index (0 trunk, 1 LA, 2 RA, 3 LL, 4 RL); NaN = not sent. */
        public final double[] z20 = ScaleProtocol.Reading.nan5();
        public final double[] z100 = ScaleProtocol.Reading.nan5();
        /** The scale's clock at the weigh-in (v11 results), Unix seconds; 0 = none. */
        public long time;
        /** The scale wants this frame acknowledged ({@link #ack}). */
        public boolean ackWanted;
        int sn;

        public boolean hasImpedance() {
            for (int i = 1; i < 5; i++) {
                if (!(z20[i] > 0)) {
                    return false;
                }
            }
            return true;
        }

        /** 100 kHz all missing: a single-frequency scale. */
        public boolean single() {
            for (int i = 0; i < 5; i++) {
                if (z100[i] > 0) {
                    return false;
                }
            }
            return true;
        }
    }

    /** One impedance from its u32 {@code b0 b1 b2 b3}: Ω = ((b2b3 << 16) | b0b1) / 10; NaN for 0 / all-ones. */
    static double ohm(byte[] f, int i) {
        int b0 = f[i] & 0xFF, b1 = f[i + 1] & 0xFF, b2 = f[i + 2] & 0xFF, b3 = f[i + 3] & 0xFF;
        long v = ((long) (b2 << 8 | b3) << 16) | (b0 << 8 | b1);
        return v == 0 || v >= 0xFFFFFFL ? Double.NaN : v / 10.0;
    }

    /** Wire order RH, LH, trunk, RF, LF → segment index. */
    static final int[] WIRE = {ScaleProtocol.RIGHT_ARM, ScaleProtocol.LEFT_ARM, ScaleProtocol.TRUNK,
            ScaleProtocol.RIGHT_LEG, ScaleProtocol.LEFT_LEG};

    static void tenOhms(byte[] f, int at, int end, XsFrame x) {
        for (int k = 0; k < 10 && at + 4 * k + 4 <= end; k++) {
            double z = ohm(f, at + 4 * k);
            (k < 5 ? x.z20 : x.z100)[WIRE[k % 5]] = z;
        }
    }

    static int u16(byte[] f, int i) {
        return (f[i] & 0xFF) << 8 | (f[i + 1] & 0xFF);
    }

    /** The contact verdict of a v11 result's flag byte (the SDK's errorCode). */
    static int error(int b) {
        if ((b & 0x40) != 0) {
            return 1;
        }
        if ((b & 0x30) == 0x30) {
            return 4;
        }
        if ((b & 0x20) != 0) {
            return 3;
        }
        if ((b & 0x10) != 0) {
            return 2;
        }
        if ((b & 0x08) != 0) {
            return 5;
        }
        return 0;
    }

    /** A whole, checked frame ({@link Assembler}) → what it says. */
    public static XsFrame parseXs(byte[] f) {
        XsFrame x = new XsFrame();
        if (f == null || f.length < 8) {
            return x;
        }
        if (headV11(f)) {
            x.func = f[6] & 0xFF;
            x.sn = u16(f, 3);
            x.ackWanted = f[7] == 1;
            if (x.func == 0x80 && f.length >= 17) {
                x.kind = XsFrame.LIVE;
                x.kg = u16(f, 8) / 100.0;
                x.stable = (f[15] & 0x80) != 0;
            } else if (x.func == 0x81 && f.length >= 22) {
                x.kind = XsFrame.RESULT;
                x.kg = u16(f, 10) / 100.0;
                x.stable = true;
                x.finished = (f[17] & 0x80) != 0;
                x.time = (long) u16(f, 18) << 16 | u16(f, 20);
                x.error = x.finished ? 0 : error(f[17] & 0xFF);
                for (int i = 22; !x.finished && i + 1 < f.length - 1; ) {
                    int len = f[i] & 0xFF, id = f[i + 1] & 0xFF;
                    if (len < 2) {
                        break;
                    }
                    int end = Math.min(i + len, f.length - 1);
                    if (id == 4) {
                        tenOhms(f, i + 2, end, x);
                    } else if (id == 5) {
                        tenOhms(f, i + 4, end, x);
                    }
                    i += len;
                }
            }
        } else if (headV1(f)) {
            x.func = f[6] & 0xFF;
            if (x.func == 0x80 && f.length >= 13) {
                x.kind = XsFrame.LIVE;
                int div = (f[11] & 0xFF) >> 4;
                x.kg = u16(f, 7) * (div == 1 || div == 2 ? 10 : 100) / 1000.0;
                x.stable = ((f[12] & 0xFF) | 0x10) == 0xBA;
            } else if (x.func == 0x8C && f.length >= 12) {
                x.kind = XsFrame.RESULT;
                x.stable = true;
                for (int i = 10; i + 1 < f.length - 1; ) {
                    int id = f[i] & 0xFF, len = f[i + 1] & 0xFF;
                    if (len < 2) {
                        break;
                    }
                    int end = Math.min(i + len, f.length - 1);
                    if (id == 5 && end - (i + 2) >= 2) {
                        x.kg = u16(f, i + 2) / 10.0;
                        tenOhms(f, i + 4, end, x);
                    } else if (id == 7 && end - (i + 2) >= 2 && Double.isNaN(x.kg)) {
                        x.kg = u16(f, i + 2) / 100.0;
                    }
                    i += len;
                }
                x.finished = !(x.kg > 0);
            }
        }
        return x;
    }

    /** A weigh-in the scale kept from before (its clock set and more than 10 minutes off now). */
    public static boolean stored(XsFrame x, long unixNow) {
        return x.time > 1600000000L && Math.abs(unixNow - x.time) > 600;
    }

    /** The ack a v11 frame with byte 7 = 1 asks for. */
    public static byte[] ack(int sn, byte[] frame) {
        byte[] a = new byte[11];
        a[0] = 0x33;
        a[1] = (byte) 0xCC;
        a[2] = 11;
        a[3] = (byte) (sn >> 8);
        a[4] = (byte) sn;
        a[5] = 0;
        a[6] = (byte) 0xFF;
        a[7] = frame[6];
        a[8] = frame[3];
        a[9] = frame[4];
        a[10] = (byte) sum(a, 2, 9);
        return a;
    }

    /** v11…v15 time sync: the scale stamps its results (minutes from UTC, Unix seconds). */
    public static byte[] syncTime(int sn, int tzMin, long unix) {
        byte[] a = new byte[15];
        a[0] = 0x33;
        a[1] = (byte) 0xCC;
        a[2] = 15;
        a[3] = (byte) (sn >> 8);
        a[4] = (byte) sn;
        a[5] = 0;
        a[6] = 0x10;
        a[7] = 1;
        a[8] = (byte) (tzMin >> 8);
        a[9] = (byte) tzMin;
        a[10] = (byte) (unix >> 24);
        a[11] = (byte) (unix >> 16);
        a[12] = (byte) (unix >> 8);
        a[13] = (byte) unix;
        a[14] = (byte) sum(a, 2, 13);
        return a;
    }

    /**
     * The reading of an XS result: weight and the five segments; a single-frequency scale's values go through
     * {@link ScaleModel#single}. Without impedances (no contact) it is weight only.
     */
    public static ScaleProtocol.Reading reading(XsFrame x) {
        ScaleProtocol.Reading r = new ScaleProtocol.Reading();
        r.weightKg = x.kg;
        r.stable = true;
        r.result = true;
        if (x.error == 0 && x.hasImpedance()) {
            if (x.single()) {
                ScaleModel.single(r, x.z20);
            } else {
                System.arraycopy(x.z20, 0, r.z20, 0, 5);
                System.arraycopy(x.z100, 0, r.z100, 0, 5);
            }
        }
        return r;
    }
}
