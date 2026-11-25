package com.isaigu.gymapp.wearable.vr;

/**
 * Which suit channels a zone hit contracts (owner, 2026-11-25: "hits in the arms tighten the arms channel, hits in
 * the belly the belly, hits in the torso the back"). Channels are partsDisabled indices (buweiN − 1): chest 0, abs 1,
 * front thigh 2, calf 3, arms 4, traps 5, back 6, lower back 7, glutes 8, back thigh 9. Pure Java.
 *
 * Vest faces are 4 columns x 5 rows (motor index = row * 4 + column, row 0 on top — NOT yet proven on a real vest):
 * front rows 0–1 = torso → back, rows 2–4 = belly → abs; the vest's back = back. Head: no suit channel (the
 * Mastogo on the shoulder takes it). The player's own punches (hands) are not hits taken.
 */
public final class VrZoneMap {
    public static final int CH_ABS = 1, CH_ARMS = 4, CH_BACK = 6;

    private VrZoneMap() {}

    /** A hit the player TAKES (not his own punch). */
    public static boolean taken(int region) {
        return region == VrWire.ZR_VEST_FRONT || region == VrWire.ZR_VEST_BACK || region == VrWire.ZR_HEAD
                || region == VrWire.ZR_FOREARM_L || region == VrWire.ZR_FOREARM_R;
    }

    /** Bit i = channel i (partsDisabled index) contracts. 0 = no suit channel. */
    public static int channels(int region, int[] levels) {
        int mask = 0;
        switch (region) {
            case VrWire.ZR_FOREARM_L:
            case VrWire.ZR_FOREARM_R:
                return lit(levels, 0, levels.length) ? 1 << CH_ARMS : 0;
            case VrWire.ZR_VEST_BACK:
                return lit(levels, 0, levels.length) ? 1 << CH_BACK : 0;
            case VrWire.ZR_VEST_FRONT:
                if (lit(levels, 0, 8)) {
                    mask |= 1 << CH_BACK;            // rows 0–1: the torso
                }
                if (lit(levels, 8, levels.length)) {
                    mask |= 1 << CH_ABS;             // rows 2–4: the belly
                }
                return mask;
            default:
                return 0;
        }
    }

    private static boolean lit(int[] v, int from, int to) {
        for (int i = from; i < to && i < v.length; i++) {
            if (v[i] > 0) {
                return true;
            }
        }
        return false;
    }
}
