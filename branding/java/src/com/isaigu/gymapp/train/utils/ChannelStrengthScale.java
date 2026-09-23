package com.isaigu.gymapp.train.utils;

/**
 * Encode-time correction for per-channel impulse strength sent over BLE.
 * UI and stored program values stay unchanged; only the PDU byte is scaled.
 */
public final class ChannelStrengthScale {

    /** buwei5 (arms) — index 4 in PartStrenthBean.buwei */
    private static final int ARMS_CHANNEL_INDEX = 4;

    /** Each UI percent for arms maps to 0.05 effective (20× reduction). */
    private static final float ARMS_SCALE = 0.05f;

    private ChannelStrengthScale() {
    }

    public static float scaleOutput(int channelIndex, float encodedValue) {
        if (channelIndex == ARMS_CHANNEL_INDEX) {
            return encodedValue * ARMS_SCALE;
        }
        return encodedValue;
    }
}
