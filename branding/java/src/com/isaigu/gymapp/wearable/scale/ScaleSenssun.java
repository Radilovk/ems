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
 * (no segments). The KB-7853 has 8 electrodes; if it speaks a richer protocol, {@link ScaleLink} logs every frame in
 * full so it can be decoded from a capture.
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
}
