package com.isaigu.gymapp.train.utils;

import com.isaigu.gymapp.bean.PartStrenthBean;
import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.dialog.ActivePauseStorage;
import com.isaigu.gymapp.train.model.TrainItem;

import java.util.Map;
import java.util.WeakHashMap;

/**
 * Selected muscle groups (channels) on the training screen: + / − and the avatar slider change the
 * impulse strength of those channels only. The usual rule is kept, just narrowed to them:
 * <ul>
 *   <li>main impulse index selected (MA) — the main impulse only;</li>
 *   <li>second impulse index selected (pause MA) — the second impulse only;</li>
 *   <li>neither — both impulses together (main only when there is no second impulse).</li>
 * </ul>
 * While channels are selected only strength changes: an Hz / pause Hz selection does not route
 * + / − or the slider to the frequency.
 *
 * <p>A channel's real strength is {@code part% × strength / 100}; the unit gets the same channel
 * percent for both impulses, once with the main strength and once with the second one. To change
 * one impulse of some channels alone, the second impulse gets its own channel percents here
 * (starting as a copy of the main ones) and {@link #secondPdu} sends them. When selected channels
 * go above their impulse's strength, that strength goes up and the other channels' percent is
 * scaled so their real strength stays. With nothing selected the original code runs unchanged.
 */
public final class PartStrength {
    /** Same safety as the master slider: at most +20 in one release. */
    static final int MAX_RAISE = 20;

    static final int MAIN = 1;
    static final int SECOND = 2;
    static final int BOTH = 3;

    /** Second impulse channel percents per program (the main ones stay in strenthBean.buwei). */
    private static final Map<ProgramDataBean, int[]> SECOND_PARTS = new WeakHashMap<ProgramDataBean, int[]>();

    private PartStrength() {}

    // ================================================================ + / −

    /** + / −: the selected channels' strength one step (1 of real strength). True when handled. */
    public static boolean addSelected(TrainItem item, int delta) {
        try {
            ProgramDataBean b = bean(item);
            boolean[] sel = selection(item, b);
            if (sel == null) {
                return false;
            }
            int mode = mode(item, b);
            if (mode == MAIN || mode == BOTH) {
                changeMain(b, sel, delta, false);
            }
            if (mode == SECOND || mode == BOTH) {
                changeSecond(item, b, sel, delta, false);
            }
            item.addAllPartValue(0, true);          // nothing added: just send and refresh
            return true;
        } catch (Throwable t) {
            return false;
        }
    }

    // ================================================================ slider

    /** Slider released at {@code level} (0–100): the selected channels' strength there. True when handled. */
    public static boolean setSelected(TrainItem item, int level) {
        try {
            ProgramDataBean b = bean(item);
            boolean[] sel = selection(item, b);
            if (sel == null) {
                return false;
            }
            int mode = mode(item, b);
            int now = level(item, b, sel, mode);
            int to = Math.min(clamp(level), now + MAX_RAISE);
            int delta = to - now;
            // the strongest selected channel goes to the slider; the other selected ones move by
            // the same step (their differences stay, as with + / −)
            if (mode == MAIN || mode == BOTH) {
                changeMain(b, sel, delta, false);
            }
            if (mode == SECOND || mode == BOTH) {
                changeSecond(item, b, sel, delta, false);
            }
            item.addAllPartValue(0, true);
            return true;
        } catch (Throwable t) {
            return false;
        }
    }

    /** Slider position (0–75 scale) for the card: the selected channels' level, else unchanged. */
    public static int seekValue(TrainItem item, int current) {
        try {
            ProgramDataBean b = bean(item);
            boolean[] sel = selection(item, b);
            if (sel == null) {
                return current;
            }
            return level(item, b, sel, mode(item, b)) * 75 / 100;
        } catch (Throwable t) {
            return current;
        }
    }

    // ================================================================ second impulse packet

    /**
     * Channel packet for the second impulse: the second impulse's own channel percents when
     * some were changed, else exactly the app's usual packet.
     */
    public static byte[] secondPdu(ProgramDataBean b, boolean[] partsDisabled, int strength) {
        int[] second = b != null ? SECOND_PARTS.get(b) : null;
        if (second == null || b.strenthBean == null || b.strenthBean.buwei == null) {
            return CommandUtil.getPartsParamsPduWithStrength(b, partsDisabled, strength);
        }
        int[] main = b.strenthBean.buwei;
        b.strenthBean.buwei = second;
        try {
            return CommandUtil.getPartsParamsPduWithStrength(b, partsDisabled, strength);
        } finally {
            b.strenthBean.buwei = main;
        }
    }

    // ================================================================ internals

    static int mode(TrainItem item, ProgramDataBean b) {
        if (item.isPauseMaSelected() && b.activePause) {
            return SECOND;
        }
        if (item.isMaSelected() || !b.activePause) {
            return MAIN;
        }
        return BOTH;
    }

    /** What the slider stands for: the strongest selected channel of the impulse in play. */
    static int level(TrainItem item, ProgramDataBean b, boolean[] sel, int mode) {
        int[] parts = mode == SECOND ? secondParts(b, false) : b.strenthBean.buwei;
        int strength = mode == SECOND ? b.pauseStrenthPercent : b.strenth;
        int max = 0;
        for (int i = 0; i < parts.length; i++) {
            if (sel[i]) {
                max = Math.max(max, real(parts[i], strength));
            }
        }
        return max;
    }

    /** Main impulse of the selected channels: +delta, or =value when absolute. */
    static void changeMain(ProgramDataBean b, boolean[] sel, int value, boolean absolute) {
        if (b.activePause) {
            secondParts(b, true);                  // second impulse keeps its channel values
        }
        int[] parts = b.strenthBean.buwei;
        b.strenth = apply(parts, b.strenth, sel, value, absolute, !MusicSync.isRunning());
    }

    /** Second impulse of the selected channels: +delta, or =value when absolute. */
    static void changeSecond(TrainItem item, ProgramDataBean b, boolean[] sel, int value, boolean absolute) {
        if (!b.activePause) {
            return;
        }
        int[] parts = secondParts(b, true);
        int before = b.pauseStrenthPercent;
        b.pauseStrenthPercent = apply(parts, before, sel, value, absolute, true);
        if (b.pauseStrenthPercent != before) {
            try {
                ActivePauseStorage.save(item.getTrainProgram());
            } catch (Throwable ignored) {
            }
        }
    }

    /**
     * New real strengths for the selected channels written back as channel percent (+ impulse
     * strength when they go above it; the others keep their real strength). Returns the strength.
     * Real strength is computed exactly as the packet does: (int) (percent / 100f × strength).
     */
    static int apply(int[] parts, int strength, boolean[] sel, int value, boolean absolute, boolean mayRaise) {
        int[] target = new int[parts.length];
        int maxSel = 0;
        for (int i = 0; i < parts.length; i++) {
            int real = real(parts[i], strength);
            target[i] = sel[i] ? clamp(absolute ? value : real + value) : real;
            if (sel[i]) {
                maxSel = Math.max(maxSel, target[i]);
            }
        }
        int newStrength = strength;
        if (maxSel > strength && mayRaise) {
            newStrength = raisedStrength(target, sel, Math.min(100, maxSel));
        }
        for (int i = 0; i < parts.length; i++) {
            if (sel[i] || newStrength != strength) {
                parts[i] = percentFor(Math.min(target[i], newStrength), newStrength, parts[i]);
            }
        }
        return newStrength;
    }

    /**
     * The lowest strength from {@code from} up to 100 at which every channel's target is exactly
     * reachable (the packet's float math skips some values, e.g. 53 at 100 gives 52). The other
     * channels never move; if needed the selected ones stop one step short instead.
     */
    static int raisedStrength(int[] target, boolean[] sel, int from) {
        for (int st = from; st <= 100; st++) {
            if (exact(target, sel, st, false)) {
                return st;
            }
        }
        // at the top (100) some values cannot be made: keep the other channels exact and let the
        // selected ones stop a step lower
        for (int st = from - 1; st > 0; st--) {
            if (exact(target, sel, st, true)) {
                return st;
            }
        }
        return from;
    }

    static boolean exact(int[] target, boolean[] sel, int st, boolean othersOnly) {
        for (int i = 0; i < target.length; i++) {
            if (othersOnly && sel[i]) {
                continue;
            }
            int t = Math.min(target[i], st);
            if (real(percentFor(t, st, 0), st) != t) {
                return false;
            }
        }
        return true;
    }

    /** The unit's value for a channel: same float math as the app's packet. */
    static int real(int percent, int strength) {
        return (int) (percent / 100.0f * strength);
    }

    /** Smallest percent whose packet value is exactly {@code target} (keeps {@code old} if 0 strength). */
    static int percentFor(int target, int strength, int old) {
        if (strength <= 0) {
            return old;
        }
        int p = clamp((long) Math.ceil(target * 100.0 / strength));
        while (p > 0 && real(p, strength) > target) {
            p--;
        }
        while (p < 100 && real(p, strength) < target) {
            p++;
        }
        if (p > 0 && real(p, strength) > target) {
            p--;                                   // unreachable value: rather one weaker than stronger
        }
        return p;
    }

    /** The second impulse's channel percents (a copy of the main ones until first changed). */
    static int[] secondParts(ProgramDataBean b, boolean create) {
        int[] second = SECOND_PARTS.get(b);
        if (second == null || second.length != b.strenthBean.buwei.length) {
            second = b.strenthBean.buwei.clone();
            if (create) {
                SECOND_PARTS.put(b, second);
            }
        }
        return second;
    }

    static ProgramDataBean bean(TrainItem item) {
        if (item == null) {
            return null;
        }
        TrainProgram p = item.getTrainProgram();
        return p != null ? p.matchProgram() : null;
    }

    /** Selected, enabled channels; null when none (or no part data). */
    static boolean[] selection(TrainItem item, ProgramDataBean b) {
        if (item == null || b == null || item.partsControl == null) {
            return null;
        }
        PartStrenthBean parts = b.strenthBean;
        if (parts == null || parts.buwei == null) {
            return null;
        }
        int n = Math.min(parts.buwei.length, item.partsControl.length);
        boolean[] sel = new boolean[parts.buwei.length];
        boolean any = false;
        for (int i = 0; i < n; i++) {
            boolean off = item.partsDisabled != null && i < item.partsDisabled.length && item.partsDisabled[i];
            sel[i] = item.partsControl[i] && !off;
            any |= sel[i];
        }
        return any ? sel : null;
    }

    static int clamp(long v) {
        return (int) Math.max(0, Math.min(100, v));
    }
}
