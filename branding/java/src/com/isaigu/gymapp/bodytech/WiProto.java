package com.isaigu.gymapp.bodytech;

/**
 * WiEMS unit (WiemsPro "WIEMS - EMS Device", app com.medcab.wiems 1.8.45) — frames as wiems/PROTOCOL.md decoded
 * them from the owner's capture (HCI log + the app's own log). Pure Java, no Android.
 * <p>
 * The unit has one value per characteristic (all in service 7764d8fe-…), so an operation here is a byte[] whose
 * first byte names the characteristic ({@link #OP_CURRENTS} …) and the rest is the value written to it — the same
 * shape the XBody bridge takes (`W <mac> <hex>`, docs/xbody-xems-panel.md). {@link WiBridge} maps it to a UUID.
 */
public final class WiProto {
    private WiProto() {}

    public static final String SVC = "7764d8fe-c6a9-11e4-8731-1681e6b88ec1";
    /** Live strength of the 10 channels (bits 0..6; bit 7 of bytes 0..7 = the XOR check, see {@link #currents}). */
    public static final String CHR_CURRENTS = "966e06c6-c717-11e4-8731-1681e6b88ec1";
    /** Program: Dur fr w r Ru Rd dec_lo dec_hi phase XOR (log "CCC-Dur,fr,w,r,Ru,Rd,dec"). */
    public static final String CHR_PROGRAM = "776439af-c717-11e4-8731-1681e6b88ec1";
    /** Rest (pause) frequency: Hz pct 0 0 0 0 0 0 a5 XOR (log "frecuenciaResting"). */
    public static final String CHR_REST = "7764e8bc-c6a9-11e4-8731-1681e6b88ec1";
    /** Pulse width per channel, 10 bytes (log "Configurar anchuras"), coded as {@link #widthByte}. */
    public static final String CHR_WIDTHS = "7764e556-c6a9-11e4-8731-1681e6b88ec1";
    /** Run control: 0x25 start, 0x00 stop; notifies 01 each second while running (log "Arrancar"). */
    public static final String CHR_RUN = "7764eda8-c6a9-11e4-8731-1681e6b88ec1";
    /** Session clock: 6 ASCII digits, 0.1 s; bit 7 of the first = a work phase began. */
    public static final String CHR_CLOCK = "7764f042-c6a9-11e4-8731-1681e6b88ec1";
    public static final String BATTERY_SVC = "0000180f-0000-1000-8000-00805f9b34fb";
    public static final String BATTERY_CHR = "00002a19-0000-1000-8000-00805f9b34fb";

    public static final int OP_CURRENTS = 0, OP_PROGRAM = 1, OP_REST = 2, OP_WIDTHS = 3, OP_RUN = 4;
    private static final String[] CHR = {CHR_CURRENTS, CHR_PROGRAM, CHR_REST, CHR_WIDTHS, CHR_RUN};

    public static final int CHANNELS = 10;
    public static final int RUN_START = 0x25, RUN_STOP = 0x00;
    /** Program byte 8: 2 while the unit counts down after a start, 0 once it runs. */
    public static final int PHASE_ARM = 2, PHASE_RUN = 0;
    /** Fields of the vendor's program the capture does not explain — sent as the vendor sent them. */
    static final int DUR = 41, DEC_LO = 0x7E, DEC_HI = 0x05;
    /**
     * Pulse width (µs) of the muscle on each channel of the vendor's (XBody-standard) suit, к.1..к.10 = Задно бедро,
     * Седалище, Кръст, Трапец, Гръб, Корем, Гърди, Ръце, Предно бедро, Прасец — what the vendor app sent in the
     * owner's session (capture 1: 7f 7f 6d 49 7f 7f 64 52 7f 52). The vendor's code (Wiems Easy / NooFit Pro,
     * ChannelModel) keeps widths per channel of its program, so a muscle carries its width with it: an XEMS suit on
     * other leads must move the widths with the muscles ({@link #widths(int[])}).
     */
    public static final int[] WIDTH_US = {400, 400, 300, 100, 400, 400, 250, 150, 400, 150};
    /** The gap between the two half-waves (µs), as the vendor (pulso_neutro 50). */
    public static final int WIDTH_GAP_US = 50;

    /** Characteristic UUID of an operation (null: not one). */
    public static String chr(byte[] op) {
        if (op == null || op.length < 2) return null;
        int k = op[0] & 0xFF;
        return k < CHR.length ? CHR[k] : null;
    }

    /** The value an operation writes (without its first byte). */
    public static byte[] value(byte[] op) {
        byte[] v = new byte[op.length - 1];
        System.arraycopy(op, 1, v, 0, v.length);
        return v;
    }

    private static byte[] op(int k, int[] v) {
        byte[] b = new byte[v.length + 1];
        b[0] = (byte) k;
        for (int i = 0; i < v.length; i++) b[i + 1] = (byte) v[i];
        return b;
    }

    static int xor(int[] v, int n) {
        int x = 0;
        for (int i = 0; i < n; i++) x ^= v[i] & 0xFF;
        return x;
    }

    static int clamp(int v, int lo, int hi) {
        return v < lo ? lo : (v > hi ? hi : v);
    }

    /**
     * The unit's top strength byte = our 100 % — the vendor's own top: its "+" raises a channel while it is under 125
     * and the value goes out as it is (Wiems Easy / NooFit Pro: ClientsTrainingModel.Mas, ParseCanal2Envio,
     * DispositivoConectado.ConfigRealCurrents with percent 100). Was 20, then 31 — guesses, both far under the vendor.
     */
    public static final int UNIT_MAX = 125;

    /** A strength in % (0..100) → the unit's byte (0..{@link #UNIT_MAX}). */
    public static int unit(int pct) {
        return (clamp(pct, 0, 100) * UNIT_MAX + 50) / 100;
    }

    /**
     * Strengths of the 10 channels in the unit's bytes (0..{@link #UNIT_MAX}) — with the vendor's check
     * (DispositivoConectado.getCurrentsCoded): the XOR of the ten values, bit 7 − i of it in bit 7 of byte i, i = 0..7
     * (byte 0 = bit 7 … byte 7 = bit 0). A write without it whose XOR is not 0 (= any unequal channels) makes the unit
     * stop with "86" (owner's traces); equal channels XOR to 0 — why "all together" always worked.
     */
    public static byte[] currents(int[] c) {
        int[] v = new int[CHANNELS];
        for (int i = 0; i < CHANNELS; i++) v[i] = c != null && i < c.length ? clamp(c[i], 0, UNIT_MAX) : 0;
        int x = 0;
        for (int i = 0; i < CHANNELS; i++) x ^= v[i];
        for (int i = 0; i < 8; i++) v[i] |= (x << i) & 0x80;
        return op(OP_CURRENTS, v);
    }

    public static byte[] zero() {
        return currents(null);
    }

    /** Program: Hz, work / rest seconds, ramp up / down seconds, phase ({@link #PHASE_ARM} / {@link #PHASE_RUN}). */
    public static byte[] program(int hz, int workS, int restS, int rampUpS, int rampDownS, int phase) {
        int[] v = {DUR, clamp(hz, 1, 255), clamp(workS, 1, 255), clamp(restS, 0, 255), clamp(rampUpS, 0, 255),
                clamp(rampDownS, 0, 255), DEC_LO, DEC_HI, phase & 0xFF, 0};
        v[9] = xor(v, 9);
        return op(OP_PROGRAM, v);
    }

    /** Rest frequency (Hz in the unit's pause) and its strength in % (the vendor: 100). */
    public static byte[] rest(int hz, int pct) {
        int[] v = {clamp(hz, 1, 255), clamp(pct, 0, 100), 0, 0, 0, 0, 0, 0, 0xA5, 0};
        v[9] = xor(v, 9);
        return op(OP_REST, v);
    }

    /** Width code of one half-wave, as the vendor: 100 µs → 1, 150 → 2 … 350 → 6, ≥ 400 → 7 (other: 0). */
    static int widthCode(int us) {
        if (us >= 400) return 7;
        return us >= 100 && us % 50 == 0 ? us / 50 - 1 : 0;
    }

    /**
     * One channel's width byte (DispositivoConectado.getAnchuraCoded): bits 0..2 = positive half-wave, 3..5 =
     * negative, 6..7 = the gap (0 → 0, 50 µs → 1, ≥ 100 → 2). 400 / 400 / 50 → 0x7F.
     */
    public static int widthByte(int us) {
        int g = WIDTH_GAP_US >= 100 ? 2 : WIDTH_GAP_US == 50 ? 1 : 0;
        return widthCode(us) | widthCode(us) << 3 | g << 6;
    }

    /** The widths of the vendor's suit, muscle k on channel k (= capture 1). */
    public static byte[] widths() {
        return widths(null);
    }

    /**
     * The widths with the muscles moved: muscleOf[ch] = the vendor-suit channel (0..9) whose muscle a channel
     * drives now (an XEMS suit on the unit's leads); null or −1 = its own.
     */
    public static byte[] widths(int[] muscleOf) {
        int[] v = new int[CHANNELS];
        for (int ch = 0; ch < CHANNELS; ch++) {
            int m = muscleOf != null && ch < muscleOf.length && muscleOf[ch] >= 0 && muscleOf[ch] < CHANNELS
                    ? muscleOf[ch] : ch;
            v[ch] = widthByte(WIDTH_US[m]);
        }
        return op(OP_WIDTHS, v);
    }

    public static byte[] run(boolean start) {
        return op(OP_RUN, new int[] {start ? RUN_START : RUN_STOP});
    }

    /** Elapsed time in 0.1 s of a clock notification (−1: not one). */
    public static int clockTenths(byte[] n) {
        if (n == null || n.length != 6) return -1;
        int t = 0;
        for (int i = 0; i < 6; i++) {
            int c = (n[i] & 0x7F) - '0';
            if (c < 0 || c > 9) return -1;
            t = t * 10 + c;
        }
        return t;
    }

    /** A clock notification that marks the start of a work phase. */
    public static boolean clockWork(byte[] n) {
        return clockTenths(n) >= 0 && (n[0] & 0x80) != 0;
    }

    /** Is this advertised name a WiEMS unit ("WIEMS - EMS Device"). */
    public static boolean nameIsWiems(String n) {
        return n != null && n.toUpperCase().startsWith("WIEMS");
    }
}
