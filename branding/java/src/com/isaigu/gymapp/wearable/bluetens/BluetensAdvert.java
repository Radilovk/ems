package com.isaigu.gymapp.wearable.bluetens;

import java.util.Locale;

/**
 * Tells a Bluetens pad by its advert the way the vendor app does (docs/xems-bluetens.md) — pure Java: manufacturer
 * data that starts FF BC / FF BD / FF BE (then the project name: "bst", "duosport2" … = Duo / Sport, "bluetens",
 * "pkt" … = classic) or, failing that, a name with "bluetens" / ".blt" / "duo" / "sport".
 */
public final class BluetensAdvert {
    public static final int FOUND = 1, DUO = 2, V2 = 4;

    private BluetensAdvert() {}

    /** FOUND | DUO | V2 bits, 0 = not a Bluetens pad. Pure: tested offline. */
    public static int classify(String name, byte[] adv) {
        String project = projectName(adv);
        if (project != null) {
            String p = project.toLowerCase(Locale.ROOT);
            boolean duo = p.equals("bst") || p.contains("duo") || p.contains("sport");
            boolean v2 = p.equals("pkt") || p.equals("bluetens2") || p.equals("bt2") || p.equals("mdt")
                    || p.equals("duosport2");
            return FOUND | (duo ? DUO : 0) | (v2 ? V2 : 0);
        }
        if (manufacturer(adv) == 0xFFBC) {
            return FOUND;                                      // the oldest classic: no name in the advert
        }
        String n = name != null ? name.toLowerCase(Locale.ROOT) : "";
        if (n.contains("bluetens") || n.endsWith(".blt")) {
            return FOUND | (n.contains("duo") || n.contains("sport") ? DUO : 0);
        }
        if (n.startsWith("duo") || n.contains("duosport")) {
            return FOUND | DUO;
        }
        return 0;
    }

    /** The vendor id in the manufacturer data (FFBC / FFBD / FFBE), else 0. */
    public static int manufacturer(byte[] adv) {
        byte[] m = field(adv, 0xFF);
        if (m == null || m.length < 2) {
            return 0;
        }
        int id = (m[0] & 0xFF) << 8 | (m[1] & 0xFF);
        return id == 0xFFBC || id == 0xFFBD || id == 0xFFBE ? id : 0;
    }

    /** FFBD / FFBE: id(2) version(2) MAC(6) then the project name up to a 0 byte. */
    public static String projectName(byte[] adv) {
        int id = manufacturer(adv);
        if (id != 0xFFBD && id != 0xFFBE) {
            return null;
        }
        byte[] m = field(adv, 0xFF);
        if (m.length <= 10) {
            return null;
        }
        int end = 10;
        while (end < m.length && m[end] != 0) {
            end++;
        }
        if (end == 10) {
            return null;
        }
        StringBuilder b = new StringBuilder();
        for (int i = 10; i < end; i++) {
            b.append((char) (m[i] & 0xFF));
        }
        return b.toString();
    }

    /** The first AD structure of this type (its payload), or null. */
    static byte[] field(byte[] adv, int type) {
        for (int i = 0; adv != null && i + 1 < adv.length; ) {
            int len = adv[i] & 0xFF;
            if (len == 0 || i + 1 + len > adv.length) {
                break;
            }
            if ((adv[i + 1] & 0xFF) == type) {
                byte[] out = new byte[len - 1];
                System.arraycopy(adv, i + 2, out, 0, len - 1);
                return out;
            }
            i += len + 1;
        }
        return null;
    }

}
