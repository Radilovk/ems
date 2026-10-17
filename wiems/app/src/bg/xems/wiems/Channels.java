package bg.xems.wiems;

/**
 * Which unit channel drives which body part, per suit standard (XBody / XEMS) — set and checked by hand in the hidden
 * service mode (hold the logo 2 s on the training screen). The screen never changes: its zones are body parts; only
 * the unit channel behind a part moves. Pure Java (the offline test uses it as is).
 *
 * Part order = XBody's measured channel order (docs/xbody-protocol.md "Measured"): 0 Трапец, 1 Гръб, 2 Гърди,
 * 3 Кръст, 4 Ръце, 5 Корем, 6 Седалище, 7 Предно бедро, 8 Задно бедро, 9 Прасец.
 */
final class Channels {
    static final int XBODY = 0, XEMS = 1, PARTS = 10;
    static final String[] SUIT = {"XBody", "XEMS"};

    /**
     * Starting maps (part → unit channel) until the service mode checks them. XBody: the unit's channels = XBody's
     * leads in XBody's order. XEMS suit on XBody-standard leads (owner's table, XEMS → XBody): Трапец→Кръст,
     * Гръб→Седалище, Гърди→Допълнителен, Кръст→Гръб, Ръце→Корем, Корем→Задно бедро, Седалище→Трапец,
     * Предно бедро→Предно бедро, Задно бедро→Ръце, Прасец→Гърди.
     */
    static final int[][] DEFAULT = {{0, 1, 2, 3, 4, 5, 6, 7, 8, 9}, {3, 6, 9, 1, 5, 8, 0, 7, 4, 2}};

    int suit = XBODY;
    final int[][] map = new int[2][PARTS];
    final int[] ok = new int[2];        // per suit: bit p = part p checked on the body

    Channels() {
        reset(XBODY);
        reset(XEMS);
    }

    /** The map in use (part → unit channel). */
    int[] map() {
        return map[suit];
    }

    boolean ok(int part) {
        return (ok[suit] >> part & 1) != 0;
    }

    int okCount() {
        return Integer.bitCount(ok[suit]);
    }

    void reset(int s) {
        System.arraycopy(DEFAULT[s], 0, map[s], 0, PARTS);
        ok[s] = 0;
    }

    /**
     * The channel behind part {@code part} was felt in part {@code felt}: the same part = checked; else that channel
     * now belongs to {@code felt} (checked) and {@code part} takes the channel {@code felt} had (to be tried next).
     */
    void felt(int part, int felt) {
        int[] m = map[suit];
        if (felt != part) {
            int u = m[part];
            m[part] = m[felt];
            m[felt] = u;
            ok[suit] &= ~(1 << part);
        }
        ok[suit] |= 1 << felt;
    }

    /** "suit;m0;m1;ok0;ok1", the maps as ten digits. */
    String save() {
        StringBuilder b = new StringBuilder().append(suit);
        for (int s = 0; s < 2; s++) {
            b.append(';');
            for (int p = 0; p < PARTS; p++) b.append(map[s][p]);
        }
        return b.append(';').append(ok[0]).append(';').append(ok[1]).toString();
    }

    /** Back from {@link #save()}; anything malformed (not a permutation) keeps the starting map for that suit. */
    void load(String v) {
        if (v == null) return;
        String[] f = v.split(";");
        if (f.length != 5) return;
        try {
            suit = Integer.parseInt(f[0]) == XEMS ? XEMS : XBODY;
            for (int s = 0; s < 2; s++) {
                int[] m = new int[PARTS];
                int seen = 0;
                for (int p = 0; p < PARTS && f[1 + s].length() == PARTS; p++) {
                    m[p] = f[1 + s].charAt(p) - '0';
                    if (m[p] >= 0 && m[p] < PARTS) seen |= 1 << m[p];
                }
                if (seen != (1 << PARTS) - 1) continue;
                System.arraycopy(m, 0, map[s], 0, PARTS);
                ok[s] = Integer.parseInt(f[3 + s]) & ((1 << PARTS) - 1);
            }
        } catch (NumberFormatException e) {
            // keep what is set
        }
    }
}
