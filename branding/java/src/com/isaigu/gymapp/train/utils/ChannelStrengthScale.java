package com.isaigu.gymapp.train.utils;

/**
 * Encode-time correction for per-channel impulse strength sent over BLE.
 * UI and stored program values stay unchanged; only the PDU byte is scaled.
 * Arms: divided by a factor that follows the pulse width (a wider pulse carries more charge):
 * 150 µs → ÷5, 400 µs → ÷10, linear in between and beyond (never below ÷1).
 */
public final class ChannelStrengthScale {

    /** buwei5 (arms) — index 4 in PartStrenthBean.buwei */
    private static final int ARMS_CHANNEL_INDEX = 4;

    /** Divider anchors: ÷ARMS_DIV_LOW at ARMS_PW_LOW µs, ÷ARMS_DIV_HIGH at ARMS_PW_HIGH µs. */
    private static final int ARMS_PW_LOW = 150;
    private static final int ARMS_PW_HIGH = 400;
    private static final float ARMS_DIV_LOW = 5f;
    private static final float ARMS_DIV_HIGH = 10f;

    /** Pulse width of the program being encoded; set by CommandUtil before the per-channel values. */
    private static int currentPulseWidth = ARMS_PW_HIGH;

    private ChannelStrengthScale() {
    }

    /** Called with ProgramDataBean.pulseWidth right before a parts PDU is built. */
    public static void setPulseWidth(int pwUs) {
        currentPulseWidth = pwUs;
    }

    public static float scaleOutput(int channelIndex, float encodedValue) {
        if (channelIndex == ARMS_CHANNEL_INDEX) {
            return encodedValue * armsFactor(currentPulseWidth);
        }
        return encodedValue;
    }

    /** The arms factor for the pulse width last encoded. */
    public static float armsFactor() {
        return armsFactor(currentPulseWidth);
    }

    /** 1/divider for this pulse width, or 1 (normal strength) when the licence turns on "arms_full". */
    public static float armsFactor(int pwUs) {
        try {
            if (com.isaigu.gymapp.widget.XemsLicense.hasFeature(
                    com.isaigu.gymapp.widget.XemsLicense.FEAT_ARMS_FULL)) {
                return 1f;
            }
        } catch (Throwable ignored) {
        }
        return 1f / armsDivider(pwUs);
    }

    /** 150 µs → 5, 400 µs → 10, linear; at least 1. */
    public static float armsDivider(int pwUs) {
        float d = ARMS_DIV_LOW + (pwUs - ARMS_PW_LOW) * (ARMS_DIV_HIGH - ARMS_DIV_LOW) / (ARMS_PW_HIGH - ARMS_PW_LOW);
        return d < 1f ? 1f : d;
    }
}
