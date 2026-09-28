package com.isaigu.gymapp.train.utils;

/**
 * Encode-time correction for per-channel impulse strength sent over BLE.
 * UI and stored program values stay unchanged; only the PDU byte is scaled.
 * Arms: divided by a factor that follows the pulse width (a wider pulse carries more charge):
 * 150 µs → ÷5, 400 µs → ÷10, linear in between and beyond (never below ÷1).
 * Other channels: a balance correction that keeps the felt proportions set at 350–400 µs when the pulse
 * narrows (e.g. training → massage at 150 µs). Strength–duration curve per zone:
 * threshold ∝ 1 + c/PW, c = the zone's effective chronaxie = 100 + 500·(type I fibre share) + 300·(tissue depth);
 * slow-fibre, deep zones fade more as the pulse narrows. The corrections are normalised to the zone that
 * fades most, so a channel is only ever lowered, never raised above what the trainer set.
 */
public final class ChannelStrengthScale {

    /** buwei5 (arms) — index 4 in PartStrenthBean.buwei */
    private static final int ARMS_CHANNEL_INDEX = 4;

    /** Divider anchors: ÷ARMS_DIV_LOW at ARMS_PW_LOW µs, ÷ARMS_DIV_HIGH at ARMS_PW_HIGH µs. */
    private static final int ARMS_PW_LOW = 150;
    private static final int ARMS_PW_HIGH = 400;
    private static final float ARMS_DIV_LOW = 5f;
    private static final float ARMS_DIV_HIGH = 10f;

    /** Balance reference: the width at which the trainer's proportions are set (training 350–400 µs). */
    private static final int BAL_REF_PW = 375;

    /**
     * Effective chronaxie (µs) per PartStrenthBean.buwei index; arms (4) follow their own divider.
     * 0 chest (type I ≈42 %, shallow), 1 abs (≈55 %, deep/fat), 2 front thigh (≈47 %), 3 calf (≈65 %, soleus),
     * 5 traps (≈54 %, shallow), 6 back (≈50 %), 7 lower back (≈60 %, erectors), 8 glutes (≈60 %, deepest),
     * 9 back thigh (≈47 %).
     */
    private static final float[] CHRONAXIE = {400f, 585f, 485f, 515f, 0f, 430f, 470f, 580f, 640f, 515f};

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
        return encodedValue * balance(channelIndex, currentPulseWidth);
    }

    /**
     * Balance factor (≤ 1) for a non-arms channel at this pulse width; 1 at the reference width.
     * 150 µs: chest 0.91, traps 0.93, back 0.94, front thigh 0.95, calf/back thigh 0.96, lower back/abs 0.98, glutes 1.
     */
    public static float balance(int channelIndex, int pwUs) {
        if (channelIndex < 0 || channelIndex >= CHRONAXIE.length || channelIndex == ARMS_CHANNEL_INDEX || pwUs <= 0) {
            return 1f;
        }
        float max = 0f;
        for (int i = 0; i < CHRONAXIE.length; i++) {
            if (i != ARMS_CHANNEL_INDEX) {
                max = Math.max(max, gain(CHRONAXIE[i], pwUs));
            }
        }
        return max > 0f ? gain(CHRONAXIE[channelIndex], pwUs) / max : 1f;
    }

    /** How much more current the zone needs at pwUs than at the reference width (strength–duration). */
    private static float gain(float chronaxie, int pwUs) {
        return (1f + chronaxie / pwUs) / (1f + chronaxie / BAL_REF_PW);
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
