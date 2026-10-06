package com.isaigu.gymapp.train.utils;

import com.isaigu.gymapp.bean.PartStrenthBean;
import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.dialog.ActivePauseStorage;
import com.isaigu.gymapp.train.model.TrainItem;


/**
 * Selected muscle groups (channels) on the training screen: + / − and the avatar slider change the
 * impulse strength of those channels only.
 * <ul>
 *   <li>no second impulse — the main impulse;</li>
 *   <li>second impulse on — both impulses together.</li>
 * </ul>
 * The unit has one percent per channel for both impulses (sent once with the main strength and
 * once with the second one), so a channel's two impulses always move together. While channels are
 * selected only strength changes: MA / Hz / pause selections do not take + / − or the slider.
 *
 * <p>A channel's real strength is {@code (int)(part% / 100f × strength)}. When the selected
 * channels go above the main strength, it goes up and the other channels' percent is set so their
 * output stays exactly the same; the second impulse strength rises in the same ratio, so the
 * other channels' second impulse stays too. With nothing selected the original code runs.
 */
public final class PartStrength {
    /** Same safety as the master slider: at most +20 in one release. */
    static final int MAX_RAISE = 20;

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
            change(item, b, sel, delta);
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
            int now = level(b, sel);
            int to = Math.min(clamp(level), now + MAX_RAISE);
            // the strongest selected channel goes to the slider; the other selected ones move by
            // the same step (their differences stay, as with + / −)
            change(item, b, sel, to - now);
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
            return level(b, sel) * 75 / 100;
        } catch (Throwable t) {
            return current;
        }
    }

    // ================================================================ internals

    /** What the slider stands for: the strongest selected channel (main impulse). */
    static int level(ProgramDataBean b, boolean[] sel) {
        int[] parts = b.strenthBean.buwei;
        int max = 0;
        for (int i = 0; i < parts.length; i++) {
            if (sel[i]) {
                max = Math.max(max, real(parts[i], b.strenth));
            }
        }
        return max;
    }

    /** Selected channels +delta; the second impulse (when on) follows in the same ratio. */
    static void change(TrainItem item, ProgramDataBean b, boolean[] sel, int delta) {
        int[] parts = b.strenthBean.buwei;
        int before = b.strenth;
        int pause = b.pauseStrenthPercent;
        int[] second = new int[parts.length];
        for (int i = 0; i < parts.length; i++) {
            second[i] = real(parts[i], pause);
        }
        b.strenth = apply(parts, before, sel, delta, false, !MusicSync.isRunning());
        if (b.activePause && b.strenth != before && before > 0) {
            // other channels got a smaller percent for a bigger strength: raise the second impulse
            // strength about the same ratio — the value that keeps their second impulse closest
            b.pauseStrenthPercent = bestPause(parts, sel, second, pause * (double) b.strenth / before);
            try {
                ActivePauseStorage.save(item.getTrainProgram());
            } catch (Throwable ignored) {
            }
        }
    }

    /** Second impulse strength near {@code ideal} that keeps the other channels' output closest (never above). */
    static int bestPause(int[] parts, boolean[] sel, int[] wanted, double ideal) {
        int centre = (int) Math.round(ideal);
        int best = clamp(centre);
        long bestCost = Long.MAX_VALUE;
        for (int p = Math.max(0, centre - 4); p <= Math.min(100, centre + 4); p++) {
            long cost = 0;
            for (int i = 0; i < parts.length; i++) {
                if (!sel[i]) {
                    int d = real(parts[i], p) - wanted[i];
                    cost += d > 0 ? 2L * d : -d;          // stronger than before counts double
                }
            }
            cost = cost * 16 + Math.abs(p - centre);
            if (cost < bestCost) {
                bestCost = cost;
                best = p;
            }
        }
        return best;
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
