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
 *   <li>green — the main impulse, and with the double impulse on the second one moves with it, keeping the channel's
 *       ratio of the two (owner, 1.1.385);</li>
 *   <li>yellow (2nd tap on the channel's icon, wearable/PartPick, or the row in the second impulse's setup,
 *       wearable/DoubleImpulse) — the second impulse alone.</li>
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
                int[] m0 = mainReal(b), s0 = b.activePause ? secondReal(item, b) : null;
                change(item, b, green, delta);
                if (s0 != null) {
                    follow(item, item.getTrainProgram(), b, green, m0, s0);   // both impulses, same ratio
                }
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
                int[] m0 = mainReal(b), s0 = b.activePause ? secondReal(item, b) : null;
                change(item, b, green, to - now);
                if (s0 != null) {
                    follow(item, item.getTrainProgram(), b, green, m0, s0);
                }
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
        int p = Math.min(b.pauseStrenthPercent, secondCap(item, b));
        int[] target = new int[parts.length];
        for (int i = 0; i < parts.length; i++) {
            int r = real(e[i], p);
            target[i] = yel[i] ? clamp(r + delta) : r;
        }
        secondTo(item, prog, b, yel, target);
    }

    /**
     * The second impulse of the {@code sel} channels to {@code target} (real strength); the others keep theirs
     * exactly. Above the second impulse's strength it goes up (up to the limit) and the other channels' percents are
     * set so their second impulse stays where it was. The main impulse is not touched.
     */
    static void secondTo(TrainItem item, TrainProgram prog, ProgramDataBean b, boolean[] sel, int[] target) {
        int[] parts = b.strenthBean.buwei;
        int[] e = SecondParts.effective(b, parts);
        int cap = secondCap(item, b);
        int p = Math.min(b.pauseStrenthPercent, cap);
        int maxSel = 0;
        for (int i = 0; i < parts.length; i++) {
            target[i] = clamp(target[i]);
            if (sel[i]) {
                maxSel = Math.max(maxSel, target[i]);
            }
        }
        int np = p;
        if (maxSel > p && cap > p) {
            np = Math.min(cap, raisedStrength(target, sel, Math.min(100, maxSel)));
        }
        for (int i = 0; i < parts.length; i++) {
            if (sel[i] || np != p) {
                e[i] = percentFor(Math.min(target[i], np), np, e[i]);
            }
        }
        if (np != p) {
            b.pauseStrenthPercent = np;
            saveProgram(prog);
        }
        SecondParts.set(b, parts, e);
    }

    /** Real strength of every channel in the second impulse (as it goes out). */
    static int[] secondReal(TrainItem item, ProgramDataBean b) {
        int[] parts = b.strenthBean.buwei;
        int[] e = SecondParts.effective(b, parts);
        int p = Math.min(b.pauseStrenthPercent, secondCap(item, b));
        int[] r = new int[parts.length];
        for (int i = 0; i < parts.length; i++) {
            r[i] = real(e[i], p);
        }
        return r;
    }

    /** Real strength (0–100) of every channel, main impulse ({@code second} false) or second — for the screen. */
    public static int[] levels(TrainItem item, ProgramDataBean b, boolean second) {
        try {
            return second ? secondReal(item, b) : mainReal(b);
        } catch (Throwable t) {
            return null;
        }
    }

    /** Real strength of every channel in the main impulse. */
    static int[] mainReal(ProgramDataBean b) {
        int[] parts = b.strenthBean.buwei;
        int[] r = new int[parts.length];
        for (int i = 0; i < parts.length; i++) {
            r[i] = real(parts[i], b.strenth);
        }
        return r;
    }

    /**
     * Green channels with the double impulse on (owner, 1.1.385): after their main impulse moved from {@code m0},
     * their second impulse moves with it and keeps its ratio to the main ({@code s0} before); a channel at 0 takes the
     * ratio of the two strengths. The other channels' second impulse stays exactly.
     */
    static void follow(TrainItem item, TrainProgram prog, ProgramDataBean b, boolean[] sel, int[] m0, int[] s0) {
        if (b == null || !b.activePause || sel == null) {
            return;
        }
        int[] m1 = mainReal(b);
        int[] target = secondReal(item, b);
        boolean any = false;
        for (int i = 0; i < target.length; i++) {
            if (!sel[i] || m1[i] == m0[i]) {
                continue;
            }
            any = true;
            if (m0[i] > 0) {
                target[i] = (int) Math.round(s0[i] * (double) m1[i] / m0[i]);
            } else if (b.strenth > 0) {
                target[i] = (int) Math.round(m1[i] * (double) Math.min(b.pauseStrenthPercent, secondCap(item, b))
                        / b.strenth);
            }
        }
        if (any) {
            secondTo(item, prog, b, sel, target);
        }
    }

    /**
     * The selected channels of {@code sel} that are yellow: all of them while the row is in the second impulse's
     * setup (wearable/DoubleImpulse), else none; null when none.
     */
    static boolean[] yellow(TrainItem item, ProgramDataBean b, boolean[] sel) {
        if (b == null || !b.activePause) {
            return null;
        }
        boolean setup = DoubleImpulse.active(item);
        boolean[] y = new boolean[sel.length];
        boolean any = false;
        for (int i = 0; i < sel.length; i++) {
            y[i] = sel[i] && (setup || PartPick.tappedYellow(i));   // the setup, or the channel's 2nd tap
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

    // ================================================================ one channel by a step (focus board)

    /** Per program bean: what the chip slides lifted — {Интензитет 1, 2 before; 1, 2 as set}. */
    private static final java.util.Map<ProgramDataBean, int[]> LIFT =
            new java.util.WeakHashMap<ProgramDataBean, int[]>();
    /** Per program bean, per channel: {second ÷ main when its slides began, main, second as left}. */
    private static final java.util.Map<ProgramDataBean, double[]> RATIO =
            new java.util.WeakHashMap<ProgramDataBean, double[]>();

    /**
     * The focus board's chip slide released (owner, 1.1.444): channel {@code k} by {@code delta} of real strength.
     * <ul>
     *   <li>green / unmarked — both impulses of the channel, its ratio kept;</li>
     *   <li>yellow (2nd tap) or the second impulse's setup — its second impulse alone, up to 100: above the 1.5 ×
     *       limit Интензитет 1 goes up first with every channel's main output kept exactly;</li>
     *   <li>then {@link #settle}: what the slides lifted Интензитет 1 / 2 by comes back down as the channel comes
     *       down, never under where they were; 2 moves in proportion to 1; every other channel keeps its output.</li>
     * </ul>
     */
    public static void channelBy(TrainItem item, int k, int delta) {
        ProgramDataBean b = bean(item);
        int[] parts = b != null && b.strenthBean != null ? b.strenthBean.buwei : null;
        if (parts == null || k < 0 || k >= parts.length) {
            return;
        }
        boolean[] one = new boolean[parts.length];
        one[k] = true;
        boolean y = b.activePause && (DoubleImpulse.active(item) || PartPick.tappedYellow(k));
        move(item, b, y ? null : one, y ? one : null, delta);
    }

    /**
     * The focus board's ring ± (and ring slide) with muscles marked (owner, 1.1.445): ring 1 — the marked muscles as
     * their chips slide (green both impulses, yellow the second alone); ring 2 — their second impulse alone. Интензитет
     * 1 / 2 go up as needed and come back down the same way. False when nothing is marked (the ring's own path).
     */
    public static boolean boardSelected(TrainItem item, int delta, boolean secondRing) {
        try {
            ProgramDataBean b = bean(item);
            boolean[] sel = selection(item, b);
            if (sel == null || (secondRing && !b.activePause)) {
                return false;
            }
            if (secondRing) {
                move(item, b, null, sel, delta);
            } else {
                boolean[] yel = yellow(item, b, sel);
                boolean[] green = without(sel, yel);
                move(item, b, any(green) ? green : null, yel, delta);
            }
            item.addAllPartValue(0, true);          // nothing added: just send and refresh
            return true;
        } catch (Throwable t) {
            return false;
        }
    }

    /** {@code green} channels: both impulses by delta (ratio kept); {@code yel}: the second alone; then settle. */
    static void move(TrainItem item, ProgramDataBean b, boolean[] green, boolean[] yel, int delta) {
        int[] parts = b.strenthBean.buwei;
        if (delta == 0 || (!any(green) && !any(yel))) {
            return;
        }
        PartPick.touch();
        boolean music = MusicSync.isRunning();
        int[] lift = LIFT.get(b);
        if (lift != null && (lift[2] != b.strenth || lift[3] != b.pauseStrenthPercent)) {
            lift = null;                            // the strengths moved some other way since: start afresh
        }
        int base1 = lift != null ? lift[0] : b.strenth;
        int base2 = lift != null ? lift[1] : b.pauseStrenthPercent;
        int top = -1;                               // the strongest moved channel (a step short at the unit's top)
        int[] m0 = mainReal(b);
        for (int i = 0; i < parts.length; i++) {
            if (((green != null && green[i]) || (yel != null && yel[i])) && (top < 0 || m0[i] > m0[top])) {
                top = i;
            }
        }
        if (any(yel) && b.activePause) {
            int[] s = secondReal(item, b);
            int t = 0;
            for (int i = 0; i < parts.length; i++) {
                if (yel[i]) {
                    t = Math.max(t, clamp(s[i] + (long) delta));
                }
            }
            if (!music && t > secondCap(item, b)) {
                int need = (int) Math.ceil(t * 100.0 / SafeLimits.PAUSE_PCT_MAX);
                int[] m = mainReal(b);
                write(item, b, m, s, exactFrom(Math.max(b.strenth, need), 100, m, top), b.pauseStrenthPercent);
            }
            changeSecond(item, b, yel, delta);
        }
        if (any(green)) {
            int[] s0 = b.activePause ? secondReal(item, b) : null;
            m0 = mainReal(b);
            change(item, b, green, delta);
            if (s0 != null) {
                // both impulses, each channel's ratio as it was when its changes began (no rounding creep)
                double[] r = RATIO.get(b);
                if (r == null || r.length != parts.length * 3) {
                    r = new double[parts.length * 3];
                    RATIO.put(b, r);
                }
                int[] m1 = mainReal(b);
                int[] t = secondReal(item, b);
                boolean[] byRatio = new boolean[parts.length];
                boolean[] byFollow = new boolean[parts.length];
                for (int i = 0; i < parts.length; i++) {
                    if (!green[i]) {
                        continue;
                    }
                    boolean same = r[3 * i + 1] == m0[i] && r[3 * i + 2] == s0[i];
                    double q = same ? r[3 * i] : m0[i] > 0 ? s0[i] / (double) m0[i] : -1;
                    r[3 * i] = q;
                    if (q >= 0) {
                        t[i] = clamp(Math.round(m1[i] * q));
                        byRatio[i] = true;
                    } else {
                        byFollow[i] = true;
                    }
                }
                if (any(byRatio)) {
                    secondTo(item, item.getTrainProgram(), b, byRatio, t);
                }
                if (any(byFollow)) {
                    follow(item, item.getTrainProgram(), b, byFollow, m0, s0);
                }
                int[] m2 = mainReal(b), s2 = secondReal(item, b);
                for (int i = 0; i < parts.length; i++) {
                    if (green[i]) {
                        if (byFollow[i]) {
                            r[3 * i] = m2[i] > 0 ? s2[i] / (double) m2[i] : -1;
                        }
                        r[3 * i + 1] = m2[i];
                        r[3 * i + 2] = s2[i];
                    }
                }
            }
        }
        if (!music) {
            settle(item, b, top, base1, base2);
        }
    }

    /**
     * Интензитет 1 / 2 after a chip slide: as low as the channels' outputs allow, never under {@code base1 / base2}
     * (where they were before the slides); 2 in proportion to 1. Every channel's output stays exactly.
     */
    static void settle(TrainItem item, ProgramDataBean b, int k, int base1, int base2) {
        int[] m = mainReal(b);
        int[] s = b.activePause ? secondReal(item, b) : null;
        boolean free = SafeGuard.free2(item);
        int need1 = Math.max(base1, max(m));
        if (s != null && !free) {
            need1 = Math.max(need1, (int) Math.ceil(max(s) * 100.0 / SafeLimits.PAUSE_PCT_MAX));
        }
        int i1 = exactFrom(need1, 100, m, k);
        int i2 = b.pauseStrenthPercent;
        if (s != null) {
            int want = i1 == base1 ? base2 : base1 > 0 ? (int) Math.round(base2 * (double) i1 / base1) : base2;
            int cap = free ? 150 : SafeLimits.pauseCap(i1);
            i2 = Math.max(want, max(s));
            if (i1 != base1 || i2 != base2) {
                i2 = exactFrom(Math.min(i2, cap), cap, s, k);
            }
        }
        if (i1 != b.strenth || i2 != b.pauseStrenthPercent) {
            write(item, b, m, s, i1, i2);
        }
        if (b.strenth != base1 || b.pauseStrenthPercent != base2) {
            LIFT.put(b, new int[] {base1, base2, b.strenth, b.pauseStrenthPercent});
        } else {
            LIFT.remove(b);
        }
    }

    /** Интензитет 1 / 2 to {@code i1 / i2}, the percents set so every channel gives {@code m} / {@code s} again. */
    static void write(TrainItem item, ProgramDataBean b, int[] m, int[] s, int i1, int i2) {
        int[] parts = b.strenthBean.buwei;
        int[] e = s != null ? SecondParts.effective(b, parts).clone() : SecondParts.get(b);
        for (int i = 0; i < parts.length; i++) {
            parts[i] = percentFor(Math.min(m[i], i1), i1, parts[i]);
        }
        b.strenth = i1;
        if (s != null) {
            int p2 = Math.min(i2, secondCap(item, b));
            for (int i = 0; i < parts.length; i++) {
                e[i] = percentFor(Math.min(s[i], p2), p2, e[i]);
            }
        }
        if (e != null && e.length == parts.length) {
            SecondParts.set(b, parts, e);
        }
        if (i2 != b.pauseStrenthPercent) {
            b.pauseStrenthPercent = i2;
            saveProgram(item);
        }
    }

    /**
     * The lowest strength from {@code lo} up to {@code hi} at which every value of {@code t} comes out exactly; at
     * the top, the highest one under {@code lo} that keeps every channel but {@code k} exact (k a step short instead).
     */
    static int exactFrom(int lo, int hi, int[] t, int k) {
        lo = clamp(lo);
        for (int st = lo; st <= hi; st++) {
            if (exactAt(st, t, -1)) {
                return st;
            }
        }
        for (int st = lo - 1; st > 0; st--) {
            if (exactAt(st, t, k)) {
                return st;
            }
        }
        return lo;
    }

    private static boolean exactAt(int st, int[] t, int skip) {
        for (int i = 0; i < t.length; i++) {
            if (i != skip && (t[i] > st || real(percentFor(t[i], st, 0), st) != t[i])) {
                return false;
            }
        }
        return true;
    }

    static int max(int[] a) {
        int m = 0;
        for (int i = 0; a != null && i < a.length; i++) {
            m = Math.max(m, a[i]);
        }
        return m;
    }

    /** The marked channels' second impulse (the strongest), −1 when none is marked. */
    public static int selectedSecond(TrainItem item) {
        try {
            ProgramDataBean b = bean(item);
            boolean[] sel = selection(item, b);
            if (sel == null || !b.activePause) {
                return -1;
            }
            return level2(item, b, sel);
        } catch (Throwable t) {
            return -1;
        }
    }

    // ================================================================ mode change (row's mode keys)

    /**
     * Hook: start of TrainItem.setUserType (scripts/apply-double-impulse.py) — the row's mode keys, the focus board's
     * mode tabs press them. Going into Масаж (useType 3) the massage starts from the strength and the channel
     * percents of the mode it leaves — the preset Основен or what the client had (owner, 1.1.440: it started at the
     * massage's own 100 %). The massage's times, Hz and 2nd impulse stay its own.
     */
    public static void modeCarry(TrainItem item, int to) {
        try {
            TrainProgram p = item != null ? item.getTrainProgram() : null;
            if (p == null || to != 3 || p.useType == to) {
                return;
            }
            ProgramDataBean from = p.matchProgram();
            ProgramDataBean m = p.massageModeProgramDataBean;
            if (from == null || m == null || from == m || from.strenthBean == null || from.strenthBean.buwei == null) {
                return;
            }
            int[] src = from.strenthBean.buwei;
            if (m.strenthBean == null) {
                m.strenthBean = new PartStrenthBean();
            }
            int[] dst = m.strenthBean.buwei;
            if (dst == null || dst.length != src.length) {
                m.strenthBean.buwei = src.clone();
            } else {
                System.arraycopy(src, 0, dst, 0, src.length);
            }
            m.strenth = clamp(from.strenth);
        } catch (Throwable ignored) {
        }
    }

    // ================================================================ a channel's own bar (row)

    /**
     * Hook: a channel's bar in the row released (TrainViewHolder$5.onStopTrackingTouch, {@code stored} = the bar's
     * percent). The row in the second impulse's setup, or a yellow-marked channel — the channel's second impulse alone
     * (percent of the second impulse's strength), the main stays. Otherwise (owner, 1.1.409: nothing picked = both,
     * whatever phase the bar showed under the finger) both impulses move and keep their ratio on this channel: a bar
     * held in the yellow look (pause phase) sets the second impulse and the main follows; a green one sets the main and
     * the second follows.
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
            boolean[] one = new boolean[parts.length];
            one[i] = true;
            if (b.activePause && (DoubleImpulse.active(prog) || PartPick.tappedYellow(i))) {
                int p2 = Math.min(b.pauseStrenthPercent, secondCap(null, b));
                int now = real(SecondParts.effective(b, parts)[i], p2);
                changeSecond(null, prog, b, one, real(stored, p2) - now);   // picked yellow: the second alone
                return;
            }
            if (b.activePause && seenSecond) {
                // the bar showed the second impulse: it goes to the finger, the main follows with the same ratio
                int p2 = Math.min(b.pauseStrenthPercent, secondCap(null, b));
                int s0 = secondReal(null, b)[i];
                int s1 = real(stored, p2);
                int m0 = real(parts[i], b.strenth);
                long m1 = s0 > 0 ? Math.round(m0 * (double) s1 / s0)
                        : p2 > 0 ? Math.round(s1 * (double) b.strenth / p2) : m0;
                int[] target = secondReal(null, b);
                int[] second = SecondParts.effective(b, parts);   // before the main moves (no own percents = the main's)
                parts[i] = percentFor((int) Math.min(m1, b.strenth), b.strenth, parts[i]);
                SecondParts.set(b, parts, second);
                target[i] = s1;
                secondTo(null, prog, b, one, target);
                return;
            }
            int[] second = b.activePause ? SecondParts.effective(b, parts) : SecondParts.get(b);
            int[] m0 = b.activePause ? mainReal(b) : null;
            int[] s0 = m0 != null ? secondReal(null, b) : null;
            parts[i] = stored;
            if (second != null && second.length == parts.length) {
                if (m0 == null) {
                    second[i] = stored;                 // no double impulse: the stored own percent follows
                }
                SecondParts.set(b, parts, second);
            }
            if (m0 != null) {
                follow(null, prog, b, one, m0, s0);     // both impulses, same ratio
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
