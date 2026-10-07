package com.isaigu.gymapp.train.utils;

import android.view.View;

import com.isaigu.gymapp.ai.SafeLimits;
import com.isaigu.gymapp.bean.PartStrenthBean;
import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.dialog.ActivePauseStorage;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.wearable.DoubleImpulse;
import com.isaigu.gymapp.wearable.PartPick;
import com.isaigu.gymapp.wearable.SafeGuard;
import com.isaigu.gymapp.wearable.SecondParts;


/**
 * Selected muscle groups (channels) on the training screen: + / − and the avatar slider change the
 * impulse strength of those channels only.
 * <ul>
 *   <li>green — the main impulse alone;</li>
 *   <li>yellow (the row is in the second impulse's setup, wearable/DoubleImpulse) — the second impulse alone.</li>
 * </ul>
 * The unit gets one percent per channel for each impulse packet; the second impulse's percents are kept apart
 * (wearable/SecondParts, per client) whenever they differ from the main ones and go out with the second
 * impulse's packet ({@link #secondPdu}). While channels are selected only strength changes: MA / Hz / pause
 * selections do not take + / − or the slider.
 *
 * <p>A channel's real strength is {@code (int)(part% / 100f × strength)}. When the selected
 * channels go above the impulse's strength, it goes up and the other channels' percent is set so their
 * output stays exactly the same. With nothing selected the original code runs.
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
            boolean[] yel = yellow(item, b, sel);
            boolean[] green = without(sel, yel);
            PartPick.touch();
            if (any(green)) {
                change(item, b, green, delta);
            }
            if (any(yel)) {
                changeSecond(item, b, yel, delta);
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
            boolean[] yel = yellow(item, b, sel);
            boolean[] green = without(sel, yel);
            int now = any(green) ? level(b, green) : level2(item, b, yel);
            int to = Math.min(clamp(level), now + MAX_RAISE);
            // the strongest selected channel goes to the slider; the other selected ones move by
            // the same step (their differences stay, as with + / −)
            PartPick.touch();
            if (any(green)) {
                change(item, b, green, to - now);
            }
            if (any(yel)) {
                changeSecond(item, b, yel, to - now);
            }
            item.addAllPartValue(0, true);
            return true;
        } catch (Throwable t) {
            return false;
        }
    }

    /**
     * Slider position (0–75 scale) for the card: the selected channels' level; nothing selected — the second impulse's
     * strength while the ring is in its look (PartLook), else unchanged.
     */
    public static int seekValue(TrainItem item, int current) {
        try {
            ProgramDataBean b = bean(item);
            boolean[] sel = selection(item, b);
            if (sel == null) {
                return b != null ? PartLook.ringValue(item, b, current) : current;
            }
            boolean[] yel = yellow(item, b, sel);
            boolean[] green = without(sel, yel);
            int lv = any(green) ? level(b, green) : level2(item, b, yel);
            return lv * 75 / 100;
        } catch (Throwable t) {
            return current;
        }
    }

    // ================================================================ second impulse of a yellow channel

    /**
     * Hook: CommandSender.sendActivePause — the second impulse's channel packet. With the client's own
     * second-impulse percents (yellow channels) they replace the main ones; otherwise exactly the original.
     */
    public static byte[] secondPdu(ProgramDataBean b, boolean[] disabled, int strength) {
        try {
            int[] own = SecondParts.get(b);
            if (own != null && b.strenthBean != null && b.strenthBean.buwei != null
                    && own.length == b.strenthBean.buwei.length) {
                ProgramDataBean t = new ProgramDataBean();
                t.pulseWidth = b.pulseWidth;                 // the arms scale follows the pulse width
                PartStrenthBean s = new PartStrenthBean();
                s.buwei = own;
                t.strenthBean = s;
                return CommandUtil.getPartsParamsPduWithStrength(t, disabled, strength);
            }
        } catch (Throwable ignored) {
        }
        return CommandUtil.getPartsParamsPduWithStrength(b, disabled, strength);
    }

    /** The second impulse's strength as the suit gets it: the set one within the limits of the row. */
    static int secondStrength(TrainItem item, ProgramDataBean b) {
        return Math.min(b.pauseStrenthPercent, secondCap(item, b));
    }

    /** Highest second impulse strength the row sends (at most 1.5 × the main one, SafeLimits; a bodytech suit is free). */
    static int secondCap(TrainItem item, ProgramDataBean b) {
        try {
            if (SafeGuard.free2(item)) {
                return 150;
            }
        } catch (Throwable ignored) {
        }
        return SafeLimits.pauseCap(b.strenth);
    }

    /** What the slider stands for on yellow channels: the strongest one's second impulse. */
    static int level2(TrainItem item, ProgramDataBean b, boolean[] sel) {
        int[] e = SecondParts.effective(b, b.strenthBean.buwei);
        int p = secondStrength(item, b);
        int max = 0;
        for (int i = 0; i < e.length; i++) {
            if (sel[i]) {
                max = Math.max(max, real(e[i], p));
            }
        }
        return max;
    }

    /**
     * Yellow channels +delta on the second impulse only. Within the second impulse strength the channel percent
     * moves; above it the second impulse strength goes up (up to the limit) and the other channels' percents are
     * set so their second impulse stays exactly where it was. The main impulse is not touched.
     */
    static void changeSecond(TrainItem item, ProgramDataBean b, boolean[] yel, int delta) {
        changeSecond(item, item != null ? item.getTrainProgram() : null, b, yel, delta);
    }

    static void changeSecond(TrainItem item, TrainProgram prog, ProgramDataBean b, boolean[] yel, int delta) {
        int[] parts = b.strenthBean.buwei;
        int[] e = SecondParts.effective(b, parts);
        int cap = secondCap(item, b);
        int p = Math.min(b.pauseStrenthPercent, cap);
        int[] target = new int[parts.length];
        int maxSel = 0;
        for (int i = 0; i < parts.length; i++) {
            int r = real(e[i], p);
            target[i] = yel[i] ? clamp(r + delta) : r;
            if (yel[i]) {
                maxSel = Math.max(maxSel, target[i]);
            }
        }
        int np = p;
        if (maxSel > p && cap > p) {
            np = Math.min(cap, raisedStrength(target, yel, Math.min(100, maxSel)));
        }
        for (int i = 0; i < parts.length; i++) {
            if (yel[i] || np != p) {
                e[i] = percentFor(Math.min(target[i], np), np, e[i]);
            }
        }
        if (np != p) {
            b.pauseStrenthPercent = np;
            saveProgram(prog);
        }
        SecondParts.set(b, parts, e);
    }

    /**
     * The selected channels of {@code sel} that are yellow: all of them while the row is in the second impulse's
     * setup (wearable/DoubleImpulse), else none; null when none.
     */
    static boolean[] yellow(TrainItem item, ProgramDataBean b, boolean[] sel) {
        if (b == null || !b.activePause || !DoubleImpulse.active(item)) {
            return null;
        }
        boolean[] y = new boolean[sel.length];
        boolean any = false;
        for (int i = 0; i < sel.length; i++) {
            y[i] = sel[i];
            any |= y[i];
        }
        return any ? y : null;
    }

    static boolean[] without(boolean[] sel, boolean[] yel) {
        boolean[] g = sel.clone();
        if (yel != null) {
            for (int i = 0; i < g.length; i++) {
                g[i] = g[i] && !yel[i];
            }
        }
        return g;
    }

    static boolean any(boolean[] a) {
        if (a != null) {
            for (int i = 0; i < a.length; i++) {
                if (a[i]) {
                    return true;
                }
            }
        }
        return false;
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

    /**
     * Selected (green) channels +delta on the main impulse alone. The second impulse of every channel stays exactly
     * where it was: when the main percents move away from it, the second impulse keeps the old ones (SecondParts).
     * Without a second impulse a channel with no own second percents keeps sharing them, as always.
     */
    static void change(TrainItem item, ProgramDataBean b, boolean[] sel, int delta) {
        int[] parts = b.strenthBean.buwei;
        int[] second = b.activePause ? SecondParts.effective(b, parts) : SecondParts.get(b);
        b.strenth = apply(parts, b.strenth, sel, delta, false, !MusicSync.isRunning());
        if (second != null && second.length == parts.length) {
            SecondParts.set(b, parts, second);
        }
    }

    static void saveProgram(TrainItem item) {
        saveProgram(item != null ? item.getTrainProgram() : null);
    }

    static void saveProgram(TrainProgram prog) {
        try {
            if (prog != null) {
                ActivePauseStorage.save(prog);
            }
        } catch (Throwable ignored) {
        }
    }

    // ================================================================ a channel's own bar (row)

    /**
     * Hook: a channel's bar in the row released (TrainViewHolder$5.onStopTrackingTouch, {@code stored} = the bar's
     * percent). The row in the second impulse's setup, or the bar in the yellow look when the finger went down (the
     * pause phase, PartLook) — the channel's second impulse alone (percent of the second impulse's strength), the main
     * stays; otherwise a marked (green) channel — its main impulse alone, the second stays; not marked — both impulses
     * get the percent (the second keeps following the main, as its strength does).
     */
    public static void bar(View view, TrainProgram prog, ProgramDataBean b, int i, int stored) {
        int[] parts = b != null && b.strenthBean != null ? b.strenthBean.buwei : null;
        if (parts == null || i < 0 || i >= parts.length) {
            return;
        }
        try {
            boolean seenSecond = PartLook.lockedSecond(view);   // the look the bar had under the finger
            PartLook.release(view);
            PartPick.touch();
            boolean marked = PartPick.isMarked(i);
            if (b.activePause && (DoubleImpulse.active(prog) || seenSecond)) {
                boolean[] y = new boolean[parts.length];
                y[i] = true;
                int p2 = Math.min(b.pauseStrenthPercent, secondCap(null, b));
                int now = real(SecondParts.effective(b, parts)[i], p2);
                changeSecond(null, prog, b, y, real(stored, p2) - now);
                return;
            }
            int[] second = b.activePause ? SecondParts.effective(b, parts) : SecondParts.get(b);
            parts[i] = stored;
            if (second != null && second.length == parts.length) {
                if (!marked) {
                    second[i] = stored;                 // not marked: both impulses
                }
                SecondParts.set(b, parts, second);
            }
        } catch (Throwable t) {
            parts[i] = stored;
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
