package bg.xems.wiems;

/**
 * Which unit channel drives which body part, per unit kind ({@link Dev}) and suit standard (XBody / XEMS) — set and
 * checked by hand in the hidden service mode (hold the logo 2 s on the training screen). The screen never changes:
 * its zones are body parts; only the unit channel behind a part moves. Pure Java (the offline test uses it as is).
 *
 * Part order = XBody's measured channel order (docs/xbody-protocol.md "Measured"): 0 Трапец, 1 Гръб, 2 Гърди,
 * 3 Кръст, 4 Ръце, 5 Корем, 6 Седалище, 7 Предно бедро, 8 Задно бедро, 9 Прасец.
 */
final class Channels {
    static final int XBODY = 0, XEMS = 1, PARTS = 10;
    static final String[] SUIT = {"XBody", "XEMS"};

    /**
     * Starting maps (part → unit channel, 0-based; the screen shows к.N = channel + 1) until the service mode checks
     * them, per unit kind.
     * WiEMS + XBody suit: measured on the body by the owner (v1.15, the service mode, 9 / 10 checked) — к.4 Трапец,
     * к.5 Гръб, к.7 Гърди, к.3 Кръст, к.8 Ръце, к.6 Корем, к.2 Седалище, к.9 Предно бедро, к.1 Задно бедро,
     * к.10 Прасец (the one left). WiEMS + XEMS suit: the owner's XEMS → XBody lead table (Трапец→Кръст,
     * Гръб→Седалище, Гърди→Допълнителен, Кръст→Гръб, Ръце→Корем, Корем→Задно бедро, Седалище→Трапец,
     * Предно бедро→Предно бедро, Задно бедро→Ръце, Прасец→Гърди) on that measured map.
     * XEMS unit (channels Гърди, Корем, Предно бедро, Прасец, Ръце, Трапец, Гръб, Кръст, Седалище, Задно бедро):
     * its own suit, and an XBody suit on its leads (the XBody panel's XEMS_ZONES / XEMS_ZONES_XBODY).
     * bodytech (C1..C8: Кръст, Седалище, Трапец, Гръб, Ляво бедро, Ръце, Дясно бедро, Корем): one layout, no chest /
     * calf channel (−1); its "Бедра" zone drives both thighs.
     */
    static final int[][][] DEFAULT = {
            {{3, 4, 6, 2, 7, 5, 1, 8, 0, 9}, {2, 1, 9, 4, 5, 0, 3, 8, 7, 6}},
            {{8, 7, 3, 5, 9, 4, 6, 2, 1, 0}, {5, 6, 0, 7, 4, 1, 8, 2, 9, 3}},
            {{2, 3, -1, 0, 5, 7, 1, 4, 6, -1}, {2, 3, -1, 0, 5, 7, 1, 4, 6, -1}}};
    /** The WiEMS starting maps before the owner measured them (1.14): a saved, never checked one moves to the new. */
    private static final int[][] OLD_WIEMS = {{0, 1, 2, 3, 4, 5, 6, 7, 8, 9}, {3, 6, 9, 1, 5, 8, 0, 7, 4, 2}};

    /** The suit standard in use (of the unit kind {@link #dev}). */
    int suit = XBODY;
    /** The unit kind linked now (its maps are the ones in use); change it with {@link #setDev}. */
    int dev = Dev.WIEMS;
    /** The suit per kind, kept while another kind is in use: WiEMS = XBody's, an XEMS unit = its own suit. */
    private final int[] suitOf = {XBODY, XEMS, XBODY};
    final int[][][] map = new int[Dev.KINDS][2][PARTS];
    final int[][] ok = new int[Dev.KINDS][2];        // per kind and suit: bit p = part p checked on the body

    Channels() {
        for (int d = 0; d < Dev.KINDS; d++) {
            dev = d;
            reset(XBODY);
            reset(XEMS);
        }
        dev = Dev.WIEMS;
    }

    /** Another kind is linked: its own suit standard and maps from now on. */
    void setDev(int d) {
        suitOf[dev] = suit;
        dev = d;
        suit = suitOf[d];
    }

    /** The map in use (part → unit channel, −1 = the unit has none for that part). */
    int[] map() {
        return map[dev][suit];
    }

    /** The service mode can remap this kind (bodytech's layout is fixed: its thighs are one zone). */
    boolean remappable() {
        return dev != Dev.BODYTECH;
    }

    boolean ok(int part) {
        return (ok[dev][suit] >> part & 1) != 0;
    }

    int okCount() {
        return Integer.bitCount(ok[dev][suit]);
    }

    void reset(int s) {
        System.arraycopy(DEFAULT[dev][s], 0, map[dev][s], 0, PARTS);
        ok[dev][s] = 0;
    }

    /**
     * The channel behind part {@code part} was felt in part {@code felt}: the same part = checked; else that channel
     * now belongs to {@code felt} (checked) and {@code part} takes the channel {@code felt} had (to be tried next).
     */
    void felt(int part, int felt) {
        int[] m = map[dev][suit];
        if (felt != part) {
            int u = m[part];
            m[part] = m[felt];
            m[felt] = u;
            ok[dev][suit] &= ~(1 << part);
        }
        ok[dev][suit] |= 1 << felt;
    }

    /**
     * "suit;w0;w1;wok0;wok1;x0;x1;xok0;xok1;xsuit" — WiEMS first (the 1.14 format, its suit first), then the XEMS
     * unit; maps as ten digits. bodytech's is fixed (not saved).
     */
    String save() {
        suitOf[dev] = suit;
        StringBuilder b = new StringBuilder().append(suitOf[Dev.WIEMS]);
        for (int d = 0; d < 2; d++) {
            for (int s = 0; s < 2; s++) {
                b.append(';');
                for (int p = 0; p < PARTS; p++) b.append(map[d][s][p]);
            }
            b.append(';').append(ok[d][0]).append(';').append(ok[d][1]);
        }
        return b.append(';').append(suitOf[Dev.XEMS]).toString();
    }

    /** Back from {@link #save()} (also the 1.14 five fields); anything malformed keeps the starting map for that one. */
    void load(String v) {
        if (v == null) return;
        String[] f = v.split(";");
        if (f.length != 5 && f.length != 10) return;
        try {
            suitOf[Dev.WIEMS] = Integer.parseInt(f[0]) == XEMS ? XEMS : XBODY;
            if (f.length == 10) suitOf[Dev.XEMS] = Integer.parseInt(f[9]) == XBODY ? XBODY : XEMS;
            suit = suitOf[dev];
            for (int d = 0; d < f.length / 4; d++)
                for (int s = 0; s < 2; s++) {
                    String m = f[1 + d * 4 + s];
                    int[] got = parse(m);
                    if (got == null) continue;
                    int k = Integer.parseInt(f[3 + d * 4 + s]) & ((1 << PARTS) - 1);
                    // a WiEMS map never checked and still the old start: the measured start replaces it
                    if (d == Dev.WIEMS && k == 0 && java.util.Arrays.equals(got, OLD_WIEMS[s])) continue;
                    System.arraycopy(got, 0, map[d][s], 0, PARTS);
                    ok[d][s] = k;
                }
        } catch (NumberFormatException e) {
            // keep what is set
        }
    }

    /** Ten digits that are a permutation of 0..9, else null. */
    private static int[] parse(String s) {
        if (s.length() != PARTS) return null;
        int[] m = new int[PARTS];
        int seen = 0;
        for (int p = 0; p < PARTS; p++) {
            m[p] = s.charAt(p) - '0';
            if (m[p] < 0 || m[p] >= PARTS) return null;
            seen |= 1 << m[p];
        }
        return seen == (1 << PARTS) - 1 ? m : null;
    }
}
