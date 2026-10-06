package com.isaigu.gymapp.train.utils;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.widget.TextView;

import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.utils.ThemeUtils;
import com.isaigu.gymapp.wearable.PartPick;
import com.isaigu.gymapp.wearable.SafeGuard;
import com.isaigu.gymapp.wearable.SecondParts;
import com.isaigu.gymapp.widget.CircleSeekBar;
import com.isaigu.gymapp.widget.VerticalColorSeekBar;

import java.util.WeakHashMap;

/**
 * What the row shows, main impulse (green) or second impulse (yellow), per control.
 * <ul>
 *   <li><b>Follows the impulse that runs:</b> while the second impulse goes out (pause phase of a running row) the
 *       channel bars fill yellow and show the second impulse's own percents and strength per channel, the avatar
 *       ring shows its total strength in yellow; in the impulse phase all is green again.</li>
 *   <li><b>What is being set keeps its look:</b> a marked channel (green = main, yellow = second), the selected index
 *       (MA / Hz = main, 2nd MA / 2nd Hz = second), a bar or the ring under the finger (the look it had when the
 *       finger went down) — plus {@link #HOLD_MS} after the release, so the result is seen where it was set.</li>
 *   <li>What a release changes follows one rule (owner): nothing selected — both impulses; green — the main
 *       impulse; yellow — the second. A yellow-looking ring with nothing selected moves both impulses by the same
 *       ratio (the value under the finger is the second impulse's).</li>
 * </ul>
 * Hooks (scripts/apply-part-look.py): end of TrainViewHolder.updateUI ({@link #paint}), the bar's move
 * ({@link #drag}) and release (PartStrength.bar), the ring's move ({@link #ringMove}) and release ({@link #ringEnd});
 * the ring's value goes through PartStrength.seekValue.
 */
public final class PartLook {
    /** After a release the control keeps its look this long. */
    static final long HOLD_MS = 1500L;
    /** A drag with no move for this long is over (its release did not come). */
    static final long STALE_MS = 2000L;
    /** CircleSeekBar's own ring colours. */
    static final int[] RING_MAIN = {0xFF00FF00, 0xFFFFFF00, 0xFFFF0000};
    static final int[] RING_SECOND = {0xFFFFE082, 0xFFFFC107, 0xFFFF8F00};
    static final float HUE_SECOND = 45f;

    /** A control held in one look while it is being set. */
    static final class Lock {
        boolean second;
        boolean dragging;
        float p;
        long last;
        long until;
    }

    private static final WeakHashMap<Object, Lock> LOCKS = new WeakHashMap<Object, Lock>();
    /** Bar / ring → the look it is painted in now (TRUE = second). */
    private static final WeakHashMap<View, Boolean> PAINTED = new WeakHashMap<View, Boolean>();

    /** The window whose channel icons got their hold listeners (again for a new window). */
    private static java.lang.ref.WeakReference<View> holds;

    private PartLook() {}

    // ================================================================ which look

    /** The second impulse goes out on this row right now: a running row in its pause phase, within the limits. */
    public static boolean live(TrainItem item, ProgramDataBean b) {
        try {
            return item != null && item.data != null && b != null && b.activePause
                    && item.data.start && !item.data.inStart
                    && SafeGuard.pause(b, SafeGuard.free2(item)) != null;
        } catch (Throwable t) {
            return false;
        }
    }

    /** The lock of a control being set (or just released), else null. */
    static Lock held(Object key) {
        Lock l = key != null ? LOCKS.get(key) : null;
        if (l == null) {
            return null;
        }
        long now = System.currentTimeMillis();
        if (l.dragging ? now - l.last < STALE_MS : now < l.until) {
            return l;
        }
        LOCKS.remove(key);
        return null;
    }

    /** Channel {@code i}'s bar: true = second impulse look. */
    static boolean barSecond(TrainItem item, ProgramDataBean b, Object bar, int i, boolean live) {
        Lock l = held(bar);
        if (l != null) {
            return l.second;
        }
        if (b == null || !b.activePause) {
            return false;
        }
        if (item.partsControl != null && i < item.partsControl.length && item.partsControl[i]) {
            return PartPick.isYellow(i);                  // a marked channel: its mark
        }
        if (item.isPauseMaSelected() || item.isPauseHzSelected()) {
            return true;
        }
        if (item.isMaSelected() || item.isHzSelected()) {
            return false;
        }
        return live;
    }

    /** The avatar ring: true = second impulse look. */
    static boolean ringSecond(TrainItem item, ProgramDataBean b, boolean live) {
        if (b == null || !b.activePause || MusicSync.isRunning()) {
            return false;                                 // music drives the ring
        }
        Lock l = held(item);
        if (l != null) {
            return l.second;
        }
        if (item.isPauseMaSelected() || item.isPauseHzSelected()) {
            return true;
        }
        if (item.isMaSelected() || item.isHzSelected()) {
            return false;
        }
        boolean[] sel = PartStrength.selection(item, b);
        if (sel != null) {
            return PartStrength.any(PartStrength.yellow(b, sel))
                    && !PartStrength.any(PartStrength.without(sel, PartStrength.yellow(b, sel)));
        }
        return live;
    }

    /** No index and no channel selected: the ring stands for the row's strength (main, or second when yellow). */
    static boolean ringFree(TrainItem item, ProgramDataBean b) {
        return !item.isMaSelected() && !item.isHzSelected() && !item.isPauseMaSelected() && !item.isPauseHzSelected()
                && PartStrength.selection(item, b) == null;
    }

    // ================================================================ hooks

    /**
     * Hook: end of TrainViewHolder.updateUI (the stock code has drawn every bar and text from the main impulse).
     * Channels in the second impulse's look get its percents and strength and the yellow fill; the ring its colours.
     */
    public static void paint(TrainItem item, ProgramDataBean b, VerticalColorSeekBar[] bars, TextView[] texts,
            CircleSeekBar ring) {
        try {
            if (bars != null) {
                columns(item, bars);
            }
            if (item == null || b == null || bars == null || b.strenthBean == null || b.strenthBean.buwei == null) {
                return;
            }
            boolean live = live(item, b);
            int[] main = b.strenthBean.buwei;
            int[] second = b.activePause ? SecondParts.effective(b, main) : main;
            int p2 = PartStrength.secondStrength(item, b);
            for (int i = 0; i < bars.length && i < main.length; i++) {
                VerticalColorSeekBar bar = bars[i];
                if (bar == null) {
                    continue;
                }
                boolean yellow = barSecond(item, b, bar, i, live);
                Lock l = held(bar);
                TextView t = texts != null && i < texts.length ? texts[i] : null;
                float shown = -1f;
                if (l != null && l.dragging) {
                    shown = l.p;                          // the finger's place, not the stored one
                } else if (yellow) {
                    shown = ChannelStrengthScale.shown(i, second[i], b.pulseWidth);
                }
                if (shown >= 0f) {
                    bar.setProgress(shown);
                    if (t != null) {
                        t.setText(percent((int) (shown / 100.0f * (yellow ? p2 : b.strenth))));
                    }
                }
                if (t != null && yellow) {
                    t.setTextColor(textColor(t.getContext()));
                }
                look(bar, yellow);
            }
            if (ring != null) {
                lookRing(ring, ringSecond(item, b, live));
            }
            legs(item, b, bars, texts);
            legTags(item, texts);
            if (bars.length > 0 && bars[0] != null && bars[0].isAttachedToWindow()) {
                View root = bars[0].getRootView();
                if (holds == null || holds.get() != root) {
                    holds = new java.lang.ref.WeakReference<View>(root);
                    PartPick.installHolds(root);          // press and hold on a channel icon (sync)
                }
            }
        } catch (Throwable ignored) {
        }
    }

    /**
     * A bodytech row (owner, 1.1.376): the legs are left / right, not front / back — the two thigh sliders carry
     * "Л" / "Д" before their percent (the muscle icons above are shared by every row, so the tag is on the row).
     */
    /**
     * A bodytech row (owner, 1.1.378): a slider no channel of the suit answers (the chest — on bodytech that channel is
     * a leg; the calf by default) is hidden. INVISIBLE, not GONE: the columns stay under the muscle icons above, which
     * every row shares. Rows are recycled, so every other row gets its columns back.
     */
    static void columns(TrainItem item, VerticalColorSeekBar[] bars) {
        boolean bt = item != null && item.data != null
                && com.isaigu.gymapp.bodytech.BtBridge.isBodytechMac(item.data.macAddress);
        for (int i = 0; i < bars.length; i++) {
            if (bars[i] == null || !(bars[i].getParent() instanceof View)) {
                continue;
            }
            View col = (View) bars[i].getParent();
            int want = !bt || com.isaigu.gymapp.bodytech.BtSettings.hasChannel(i) ? View.VISIBLE : View.INVISIBLE;
            if (col.getVisibility() != want) {
                col.setVisibility(want);
            }
        }
    }

    /**
     * A bodytech row (owner, 1.1.377): the two leg bars and texts show what the suit gets (BtTranslator.legValue —
     * equal legs until a hand moves one, then each in proportion). A bar under the finger or in the second impulse's
     * look is left alone.
     */
    static void legs(TrainItem item, ProgramDataBean b, VerticalColorSeekBar[] bars, TextView[] texts) {
        if (item == null || item.data == null) {
            return;
        }
        String mac = item.data.macAddress;
        if (!com.isaigu.gymapp.bodytech.BtBridge.isBodytechMac(mac)) {
            return;
        }
        int[] legs = com.isaigu.gymapp.bodytech.BtSettings.legSliders();
        int[] main = b.strenthBean.buwei;
        boolean live = live(item, b);
        for (int s : legs) {
            if (s >= bars.length || s >= main.length || bars[s] == null) {
                continue;
            }
            int v = com.isaigu.gymapp.bodytech.BtBridge.legValue(mac, main, s);
            if (v < 0 || v == main[s]) {
                continue;
            }
            VerticalColorSeekBar bar = bars[s];
            Lock l = held(bar);
            if ((l != null && l.dragging) || barSecond(item, b, bar, s, live)) {
                continue;
            }
            float shown = ChannelStrengthScale.shown(s, v, b.pulseWidth);
            bar.setProgress(shown);
            TextView t = texts != null && s < texts.length ? texts[s] : null;
            if (t != null) {
                t.setText(percent((int) (shown / 100.0f * b.strenth)));
            }
        }
    }

    static void legTags(TrainItem item, TextView[] texts) {
        if (texts == null || item == null || item.data == null
                || !com.isaigu.gymapp.bodytech.BtBridge.isBodytechMac(item.data.macAddress)) {
            return;
        }
        for (int i = 0; i < texts.length; i++) {
            TextView t = texts[i];
            String tag = t != null ? com.isaigu.gymapp.bodytech.BtSettings.rowTag(i) : null;
            if (tag == null) {
                continue;
            }
            CharSequence cur = t.getText();
            String s = cur == null ? "" : cur.toString();
            if (!s.startsWith(tag + " ")) {
                t.setText(tag + " " + s);
            }
        }
    }

    /**
     * Hook: a channel's bar moves under the finger (TrainViewHolder$5.OnStateChangeListener). The first move locks
     * the bar in the look it had. Returns the strength its text is shown at (the look's impulse).
     */
    public static int drag(TrainItem item, View bar, int i, float p) {
        ProgramDataBean b = PartStrength.bean(item);
        if (b == null) {
            return 0;
        }
        try {
            Lock l = held(bar);
            if (l == null || !l.dragging) {
                boolean second = barSecond(item, b, bar, i, live(item, b));
                l = new Lock();
                l.second = second;
                LOCKS.put(bar, l);
            }
            l.dragging = true;
            l.p = p;
            l.last = System.currentTimeMillis();
            if (bar instanceof VerticalColorSeekBar) {
                look((VerticalColorSeekBar) bar, l.second);
            }
            PartPick.touch();
            return l.second ? PartStrength.secondStrength(item, b) : b.strenth;
        } catch (Throwable t) {
            return b.strenth;
        }
    }

    /** A bar's release (PartStrength.bar): it keeps its look {@link #HOLD_MS} more. */
    static void release(View bar) {
        Lock l = held(bar);
        if (l != null) {
            l.dragging = false;
            l.until = System.currentTimeMillis() + HOLD_MS;
        }
    }

    /**
     * Hook: start of the ring's move (TrainViewHolder$4.onChanged). The first move locks the ring in its look.
     * True = the free ring in the second impulse's look: the 2nd MA label follows the finger (not MA).
     */
    public static boolean ringMove(TrainItem item) {
        try {
            ProgramDataBean b = PartStrength.bean(item);
            if (b == null) {
                return false;
            }
            Lock l = held(item);
            if (l == null || !l.dragging) {
                boolean second = ringSecond(item, b, live(item, b));
                l = new Lock();
                l.second = second;
                LOCKS.put(item, l);
            }
            l.dragging = true;
            l.last = System.currentTimeMillis();
            return l.second && ringFree(item, b);
        } catch (Throwable t) {
            return false;
        }
    }

    /**
     * Hook: the ring released (TrainViewHolder$4.onChangedEnd, after the selected channels' turn), {@code level}
     * 0–100. Nothing selected and the ring in the second impulse's look (it showed the second impulse's strength):
     * both impulses move by the same ratio, so the second one lands on the finger's value — the main one at most +20
     * in one release, the second within its limit. True = handled.
     */
    public static boolean ringEnd(TrainItem item, int level) {
        try {
            ProgramDataBean b = PartStrength.bean(item);
            Lock l = held(item);
            if (l != null) {
                l.dragging = false;
                l.until = System.currentTimeMillis() + HOLD_MS;
            }
            if (b == null || !b.activePause || l == null || !l.second || !ringFree(item, b)
                    || b.pauseStrenthPercent <= 0 || b.strenth <= 0) {
                return false;
            }
            int to = Math.min(PartStrength.clamp(level), PartStrength.secondCap(item, b));
            int main = (int) Math.round(to * (double) b.strenth / b.pauseStrenthPercent);
            main = Math.max(0, Math.min(Math.min(100, b.strenth + PartStrength.MAX_RAISE), main));
            // the stock coupling (TrainItem.setMainAndPauseStrenthFromSlider): the second keeps its share of the main
            int pause = (int) ((main * (long) b.pauseStrenthPercent + b.strenth / 2) / b.strenth);
            b.pauseStrenthPercent = Math.max(0, Math.min(100, pause));
            b.strenth = main;
            PartStrength.saveProgram(item);
            return true;
        } catch (Throwable t) {
            return false;
        }
    }

    /** The ring's value (0–75) when the free ring is in the second impulse's look, else {@code current}. */
    static int ringValue(TrainItem item, ProgramDataBean b, int current) {
        if (ringFree(item, b) && ringSecond(item, b, live(item, b))) {
            return PartStrength.secondStrength(item, b) * 75 / 100;
        }
        return current;
    }

    // ================================================================ colours

    /** A bar's fill: the stock green gradient, or the same gradient turned yellow. */
    static void look(VerticalColorSeekBar bar, boolean second) {
        Boolean was = PAINTED.get(bar);
        if (was != null && was.booleanValue() == second) {
            return;
        }
        Context c = bar.getContext();
        int light = color(c, "light_green_color");
        int dark = color(c, "dark_green_color");
        if (second) {
            light = yellow(light);
            dark = yellow(dark);
        }
        bar.setColorArray(light, light, dark);
        bar.invalidate();
        PAINTED.put(bar, Boolean.valueOf(second));
    }

    static void lookRing(CircleSeekBar ring, boolean second) {
        Boolean was = PAINTED.get(ring);
        if (was != null && was.booleanValue() == second) {
            return;
        }
        int[] s = second ? RING_SECOND : RING_MAIN;
        ring.setSectionColors(s[0], s[1], s[2]);
        ring.invalidate();
        PAINTED.put(ring, Boolean.valueOf(second));
    }

    /** The same shade turned yellow: hue 45°, at least the saturation of a clear yellow. */
    static int yellow(int green) {
        float[] hsv = new float[3];
        Color.colorToHSV(green, hsv);
        hsv[0] = HUE_SECOND;
        hsv[1] = Math.max(hsv[1], 0.6f);
        return Color.HSVToColor(Color.alpha(green), hsv);
    }

    /** A channel's text, as the stock "maValue" ("%1$d%%"). */
    static String percent(int v) {
        return v + "%";
    }

    static int textColor(Context c) {
        return ThemeUtils.isDarkMode(c) ? 0xFFFFC107 : 0xFFE09B00;
    }

    static int color(Context c, String name) {
        int id = c.getResources().getIdentifier(name, "color", c.getPackageName());
        return id != 0 ? c.getResources().getColor(id) : 0xFF66BB6A;
    }
}
