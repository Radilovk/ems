package com.xems.bhspy;

/** bHaptics position names / numbers → the wire's body regions (TabletLink.ZR_*). Pure Java. */
final class Regions {
    private Regions() {}

    static int ofName(String p) {
        if (p == null) return TabletLink.ZR_UNKNOWN;
        switch (p) {
            case "VestFront": return TabletLink.ZR_VEST_FRONT;
            case "VestBack": return TabletLink.ZR_VEST_BACK;
            case "Head": return TabletLink.ZR_HEAD;
            case "ForearmL": return TabletLink.ZR_FOREARM_L;
            case "ForearmR": return TabletLink.ZR_FOREARM_R;
            case "HandL": return TabletLink.ZR_HAND_L;
            case "HandR": return TabletLink.ZR_HAND_R;
            case "FootL": return TabletLink.ZR_FOOT_L;
            case "FootR": return TabletLink.ZR_FOOT_R;
            case "GloveL": return TabletLink.ZR_GLOVE_L;
            case "GloveR": return TabletLink.ZR_GLOVE_R;
            default: return TabletLink.ZR_UNKNOWN;
        }
    }

    /** SDK position numbers (tact-android GettingStarted): 1/2 forearms, 3 head, 4/5 hands, 6/7 feet, 8/9 gloves. */
    static int ofNumber(int p) {
        switch (p) {
            case 1: return TabletLink.ZR_FOREARM_L;
            case 2: return TabletLink.ZR_FOREARM_R;
            case 3: return TabletLink.ZR_HEAD;
            case 4: return TabletLink.ZR_HAND_L;
            case 5: return TabletLink.ZR_HAND_R;
            case 6: return TabletLink.ZR_FOOT_L;
            case 7: return TabletLink.ZR_FOOT_R;
            case 8: return TabletLink.ZR_GLOVE_L;
            case 9: return TabletLink.ZR_GLOVE_R;
            default: return TabletLink.ZR_UNKNOWN;   // 0 = the whole vest in one array: not split yet
        }
    }

    /** Which calls carry a zone hit and where: returns {region, ms, levels...} or null. */
    static Object[] fromCall(String method, Object[] a) {
        try {
            if (method.equals("hapticEventDot")) {
                int r = ofName((String) a[2]);
                byte[] b = (byte[]) a[3];
                int[] lv = new int[b.length];
                for (int i = 0; i < b.length; i++) lv[i] = b[i] & 0xFF;
                return r == TabletLink.ZR_UNKNOWN ? null : new Object[] {Integer.valueOf(r), a[4], lv};
            }
            if (method.equals("playMotors") || method.equals("playMotorsV2")) {
                int r = ofNumber(((Integer) a[1]).intValue());
                int[] m = (int[]) a[3];
                return r == TabletLink.ZR_UNKNOWN ? null : new Object[] {Integer.valueOf(r), a[2], m};
            }
        } catch (RuntimeException e) {
            return null;                              // a malformed call must not break the game's
        }
        return null;
    }
}
