package com.isaigu.gymapp.train.utils;

import com.isaigu.gymapp.bean.PartStrenthBean;
import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.train.model.TrainItem;

/**
 * Main + / − and the slider around the avatar act on the selected muscle groups only.
 *
 * <p>A channel's real strength is {@code part% × master / 100} (part values are percent of the
 * master strength). With groups selected on the training screen:
 * <ul>
 *   <li>the selected channels get the new real strength;</li>
 *   <li>when that is above the master, the master goes up and every other channel's percent is
 *       scaled down so its real strength stays where it was;</li>
 *   <li>while music drives the master, the master is left alone (channels stop at it).</li>
 * </ul>
 * With nothing selected nothing changes: the original master behaviour runs.
 */
public final class PartStrength {
    /** Same safety as the master slider: at most +20 in one release. */
    static final int MAX_RAISE = 20;

    private PartStrength() {}

    /** + / −: every selected channel one step (1 of real strength) up or down. True when handled. */
    public static boolean addSelected(TrainItem item, int delta) {
        try {
            ProgramDataBean b = bean(item);
            boolean[] sel = selection(item, b);
            if (sel == null) {
                return false;
            }
            int[] part = b.strenthBean.buwei;
            double[] target = realLevels(b);
            for (int i = 0; i < part.length; i++) {
                if (sel[i]) {
                    target[i] = clamp(Math.round(target[i]) + delta);
                }
            }
            apply(item, b, sel, target);
            return true;
        } catch (Throwable t) {
            return false;
        }
    }

    /** Slider released at {@code level} (0–100 real strength): selected channels there. True when handled. */
    public static boolean setSelected(TrainItem item, int level) {
        try {
            ProgramDataBean b = bean(item);
            boolean[] sel = selection(item, b);
            if (sel == null) {
                return false;
            }
            int now = displayLevel(item, b.strenth);
            int to = Math.min(clamp(level), now + MAX_RAISE);
            double[] target = realLevels(b);
            for (int i = 0; i < target.length; i++) {
                if (sel[i]) {
                    target[i] = to;
                }
            }
            apply(item, b, sel, target);
            return true;
        } catch (Throwable t) {
            return false;
        }
    }

    /** What the slider shows: the strongest selected channel, else the master. */
    public static int displayLevel(TrainItem item, int master) {
        try {
            ProgramDataBean b = bean(item);
            boolean[] sel = selection(item, b);
            if (sel == null) {
                return master;
            }
            double[] real = realLevels(b);
            double max = 0;
            for (int i = 0; i < real.length; i++) {
                if (sel[i]) {
                    max = Math.max(max, real[i]);
                }
            }
            return (int) Math.round(max);
        } catch (Throwable t) {
            return master;
        }
    }

    // ================================================================ internals

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

    static double[] realLevels(ProgramDataBean b) {
        int[] part = b.strenthBean.buwei;
        double[] real = new double[part.length];
        for (int i = 0; i < part.length; i++) {
            real[i] = part[i] * b.strenth / 100.0;
        }
        return real;
    }

    /** Write the new real levels back as master + part percent, then send once. */
    static void apply(TrainItem item, ProgramDataBean b, boolean[] sel, double[] target) {
        int[] part = b.strenthBean.buwei;
        int master = b.strenth;
        double maxSel = 0;
        for (int i = 0; i < part.length; i++) {
            if (sel[i]) {
                maxSel = Math.max(maxSel, target[i]);
            }
        }
        boolean musicDrives = MusicSync.isRunning();
        int newMaster = master;
        if (maxSel > master && !musicDrives) {
            newMaster = (int) Math.min(100, Math.ceil(maxSel));
        }
        for (int i = 0; i < part.length; i++) {
            if (sel[i]) {
                double t = Math.min(target[i], newMaster);
                part[i] = newMaster > 0 ? clamp(Math.round(t * 100.0 / newMaster)) : part[i];
            } else if (newMaster != master && newMaster > 0) {
                // keep this channel's real strength: part% × master stays the same
                part[i] = clamp(Math.round(part[i] * (double) master / newMaster));
            }
        }
        if (newMaster != master) {
            // Active pause strength is left as it is: whether the unit scales it by the part
            // percent is not known, and raising it could make the pause stronger for everyone.
            b.strenth = newMaster;
        }
        item.addAllPartValue(0, true);             // nothing added: just send and refresh
    }

    static int clamp(long v) {
        return (int) Math.max(0, Math.min(100, v));
    }
}
