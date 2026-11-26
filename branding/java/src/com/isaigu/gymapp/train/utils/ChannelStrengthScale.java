package com.isaigu.gymapp.train.utils;

/**
 * Encode-time correction for per-channel impulse strength sent over BLE.
 * UI and stored program values stay unchanged; only the PDU byte is scaled.
 * Arms: divided by a factor that follows the pulse width (a wider pulse carries more charge): ÷5 at 400 µs (default D),
 * ÷2.5 at 150 µs, linear in between and beyond (never below ÷1); Settings → Arms: D, or 1:1.
 * Other channels: a balance correction that keeps the felt proportions set at 350–400 µs when the pulse
 * narrows (e.g. training → massage at 150 µs). Strength–duration curve per zone:
 * threshold ∝ 1 + c/PW, c = the zone's effective chronaxie = 100 + 500·(type I fibre share) + 300·(tissue depth);
 * slow-fibre, deep zones fade more as the pulse narrows. The corrections are normalised to the zone that
 * fades most, so a channel is only ever lowered, never raised above what the trainer set.
 * Calves: × {@link #calfFactor()} on top of the balance (a finer step, like the arms' divider).
 */
public final class ChannelStrengthScale {

    /** buwei5 (arms) — index 4 in PartStrenthBean.buwei */
    private static final int ARMS_CHANNEL_INDEX = 4;

    /** Divider anchors: ÷D at ARMS_PW_HIGH µs, ÷D × ARMS_LOW_RATIO at ARMS_PW_LOW µs, linear and beyond (min ÷1). */
    private static final int ARMS_PW_LOW = 150;
    private static final int ARMS_PW_HIGH = 400;
    private static final float ARMS_LOW_RATIO = 0.5f;
    /** The default D (÷5 at 400 µs); Settings → Arms sets another. */
    private static final float ARMS_DIV_DEFAULT = 5f;

    /** buwei4 (calves) — index 3 in PartStrenthBean.buwei */
    private static final int CALF_CHANNEL_INDEX = 3;

    /**
     * Calves (owner, 2026-11-25: "the calves and the arms feel a 1 % step many times stronger than the body"):
     * the calf goes out at this share of its slider, so one point on the slider is half a suit unit — a finer
     * step and a little lower overall. Not in face mode (there every channel is a face site).
     */
    /** The calf's share of its slider = 1 / the calf divider of Settings → Calves (default ÷1: a point = a suit unit). */
    public static float calfFactor() {
        try {
            return 1f / Math.max(1f, com.isaigu.gymapp.widget.XemsLicense.calfDivider());
        } catch (Throwable t) {
            return 1f;
        }
    }

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

    /** The last arms value encoded: the byte sent, the exact value it was rounded from and the width it was reduced for. */
    private static int lastArmsByte = -1;
    private static float lastArmsExact;
    private static int lastArmsPw = ARMS_PW_HIGH;

    private ChannelStrengthScale() {
    }

    /** Called with ProgramDataBean.pulseWidth right before a parts PDU is built. */
    public static void setPulseWidth(int pwUs) {
        currentPulseWidth = pwUs;
    }

    /**
     * Face mode (docs/xems-face.md §9): the face connector puts every channel on the face — each gets the arms
     * divider (÷4 at 100 µs with D = 10) and no body balance correction: ten equal, gentle channels. Set by the
     * automatic mode while a face program owns the output, cleared when it ends.
     */
    private static volatile boolean face;

    public static void setFace(boolean on) {
        face = on;
    }

    public static boolean isFace() {
        return face;
    }

    public static float scaleOutput(int channelIndex, float encodedValue) {
        if (face && channelIndex != ARMS_CHANNEL_INDEX) {
            return Math.round(encodedValue * faceFactor(currentPulseWidth));
        }
        if (channelIndex == ARMS_CHANNEL_INDEX) {
            // to the nearest step, not down: at ÷10 the arms have only ~10 steps and flooring cost up to a whole one
            float exact = encodedValue * armsScale(currentPulseWidth);
            int sent = Math.round(exact);
            rememberArms(sent, exact, currentPulseWidth);
            return sent;
        }
        if (channelIndex == CALF_CHANNEL_INDEX) {
            return Math.round(encodedValue * balance(channelIndex, currentPulseWidth) * calfFactor());
        }
        return encodedValue * balance(channelIndex, currentPulseWidth);
    }

    /** What the suit gets from one point of this channel's slider beyond the balance: the calves' share, else 1. */
    public static float sentShare(int channelIndex) {
        return !face && channelIndex == CALF_CHANNEL_INDEX ? calfFactor() : 1f;
    }

    /**
     * Balance factor (≤ 1) for a non-arms channel at this pulse width; 1 at the reference width.
     * 150 µs: chest 0.91, traps 0.93, back 0.94, front thigh 0.95, calf/back thigh 0.96, lower back/abs 0.98, glutes 1.
     */
    public static float balance(int channelIndex, int pwUs) {
        if (face || channelIndex < 0 || channelIndex >= CHRONAXIE.length || channelIndex == ARMS_CHANNEL_INDEX || pwUs <= 0) {
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

    /** What the channel slider shows: the trainer's value with the balance for this width already applied. */
    public static float shown(int channelIndex, int value, int pwUs) {
        return value * balance(channelIndex, pwUs);
    }

    /** The slider was moved to {@code shown} at this width: the value to keep (at the reference width), 0..100. */
    public static int stored(int channelIndex, float shown, int pwUs) {
        float b = balance(channelIndex, pwUs);
        int v = Math.round(b > 0f ? shown / b : shown);
        return v < 0 ? 0 : (v > 100 ? 100 : v);
    }

    /** How much more current the zone needs at pwUs than at the reference width (strength–duration). */
    private static float gain(float chronaxie, int pwUs) {
        return (1f + chronaxie / pwUs) / (1f + chronaxie / BAL_REF_PW);
    }

    private static synchronized void rememberArms(int sent, float exact, int pwUs) {
        lastArmsByte = sent;
        lastArmsExact = exact;
        lastArmsPw = pwUs;
    }

    /**
     * The arms value behind byte {@code sent} before it was rounded (a suit that multiplies it, e.g. bodytech, then
     * does not multiply the rounding too), or {@code sent} itself when it is not the last arms byte encoded.
     * {@code pwUs} > 0: the channel runs at its own width, so the reduction is moved to that width.
     */
    public static synchronized float armsExact(int sent, int pwUs) {
        float v = sent == lastArmsByte ? lastArmsExact : sent;
        if (pwUs > 0 && pwUs != lastArmsPw) {
            v = v * armsScale(pwUs) / armsScale(lastArmsPw);
        }
        return v;
    }

    /** The arms factor for the pulse width last encoded. */
    public static float armsFactor() {
        return armsFactor(currentPulseWidth);
    }

    /**
     * 1/divider for this pulse width: ÷D at 400 µs … ÷D/2 at 150 µs, linear, never below ÷1 (owner, 2026-11-26: D is the
     * Settings slider — ÷1 is "1:1", ÷5 default, ÷10 the finest). Not chosen / admin setup = the default.
     */
    public static float armsFactor(int pwUs) {
        return 1f / armsDivider(pwUs);
    }

    /** The arms channel's scale: the face keeps its own gentle one. */
    private static float armsScale(int pwUs) {
        return face ? faceFactor(pwUs) : armsFactor(pwUs);
    }

    /** Face mode keeps the gentle ÷D = 10 scale it was tuned with (÷4 at 100 µs), whatever the arms setting says. */
    public static float faceFactor(int pwUs) {
        return 1f / armsDivider(pwUs, 10f);
    }

    /** ÷D at 400 µs, ÷D/2 at 150 µs, linear (D from Settings → Arms, default 5). */
    public static float armsDivider(int pwUs) {
        float top = ARMS_DIV_DEFAULT;
        try {
            top = com.isaigu.gymapp.widget.XemsLicense.armsDivider();
        } catch (Throwable ignored) {
        }
        return armsDivider(pwUs, top);
    }

    /** The same for a given divider at 400 µs. */
    public static float armsDivider(int pwUs, float top) {
        float low = top * ARMS_LOW_RATIO;
        float d = low + (pwUs - ARMS_PW_LOW) * (top - low) / (ARMS_PW_HIGH - ARMS_PW_LOW);
        return d < 1f ? 1f : d;
    }
}
