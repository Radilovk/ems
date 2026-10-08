package com.isaigu.gymapp.train.utils;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.widget.TextView;

import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.utils.ThemeUtils;
import com.isaigu.gymapp.wearable.DoubleImpulse;
import com.isaigu.gymapp.wearable.PartPick;
import com.isaigu.gymapp.wearable.SafeGuard;
import com.isaigu.gymapp.wearable.SecondParts;
import com.isaigu.gymapp.widget.CircleSeekBar;
import com.isaigu.gymapp.widget.VerticalColorSeekBar;

import java.util.WeakHashMap;

/**
 * What the row shows, main impulse (green) or second impulse (yellow), per control.
 * <ul>
 *   <li><b>The channel bars and their percents follow the impulse that runs</b> (owner, 1.1.384): in the pause phase of
 *       a running row with the double impulse they fill yellow and show the second impulse's own percents and strength
 *       per channel; in the impulse phase all is green again. In the second impulse's setup (wearable/DoubleImpulse —
 *       the suit gets the second impulse only then) they stay yellow.</li>
 *   <li><b>The avatar ring</b> is the main impulse's, except in the setup (yellow, the second impulse's strength,
 *       unless the main MA / Hz is picked): it is the row's master control and never jumps with the phase.</li>
 *   <li><b>What is being set keeps its look:</b> a bar or the ring under the finger (the look it had when the finger
 *       went down) — plus {@link #HOLD_MS} after the release, so the result is seen where it was set. A bar released
 *       in the yellow look sets that channel's second impulse (what was seen is what is set); the setup sets the
 *       second impulse everywhere; otherwise the main one (the second keeps its share of its strength — the stock
 *       coupling).</li>
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

    private PartLook() {}

    // ================================================================ which look

    /**
     * The second impulse is what the row shows now: the setup (wearable/DoubleImpulse), or a running row in its pause
     * phase with the second impulse within the limits.
     */
    public static boolean live(TrainItem item, ProgramDataBean b) {
        try {
            if (item == null || b == null || !b.activePause) {
                return false;
            }
            if (DoubleImpulse.active(item)) {
                return true;
            }
            return item.data != null && item.data.start && !item.data.inStart
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

    /** Channel {@code i}'s bar: true = second impulse look (the setup, or the pause phase it shows). */
    static boolean barSecond(TrainItem item, ProgramDataBean b, Object bar, int i, boolean live) {
        Lock l = held(bar);
        if (l != null) {
            return l.second;
        }
        return b != null && b.activePause && live;
    }

    /** The avatar ring: true = second impulse look (the setup, unless the main MA / Hz is picked; or only yellow channels marked). */
    static boolean ringSecond(TrainItem item, ProgramDataBean b, boolean live) {
        if (b == null || !b.activePause || MusicSync.isRunning()) {
            return false;                                 // music drives the ring
        }
        Lock l = held(item);
        if (l != null) {
            return l.second;
        }
        if (DoubleImpulse.active(item) && !item.isMaSelected() && !item.isHzSelected()) {
            return true;
        }
        boolean[] sel = PartStrength.selection(item, b);     // only yellow channels marked: the ring is their 2nd impulse
        boolean[] yel = sel != null ? PartStrength.yellow(item, b, sel) : null;
        return yel != null && !PartStrength.any(PartStrength.without(sel, yel));
    }

    /** A bar under the finger (or just released) in the second impulse's look: its release sets the second impulse. */
    static boolean lockedSecond(View bar) {
        Lock l = bar != null ? held(bar) : null;
        return l != null && l.second;
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
            if (ring != null) {
                DoubleImpulse.paint(item, ring, bars, texts);   // the button, the 2nd-impulse index buttons, the glow
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
            idle(bars, texts);
        } catch (Throwable ignored) {
        }
    }

    /**
     * A bodytech row (owner, 1.1.376): the legs are left / right, not front / back — the two thigh sliders carry
     * "Л" / "Д" before their percent (the muscle icons above are shared by every row, so the tag is on the row).
     */
    /**
     * A bodytech row (owner, 1.1.394): the columns in the XEMS order, but the two legs (Л, Д — the XEMS channels the
     * leg channels are on) right after the calf, side by side, when the header above is the bodytech one; a column no
     * bodytech channel is on (by default calf and back thigh) stays in its place, at 0, dimmed and not touchable — no
     * empty gap. Recycled rows get the stock order and every column back. The header follows ({@link #header}).
     */
    static void columns(TrainItem item, VerticalColorSeekBar[] bars) {
        boolean bt = item != null && item.data != null
                && com.isaigu.gymapp.bodytech.BtBridge.isBodytechMac(item.data.macAddress);
        boolean on = false;
        if (bars.length > 0 && bars[0] != null) {
            on = header(item, bars[0], bt);
        }
        View[] cols = new View[bars.length];
        for (int i = 0; i < bars.length; i++) {
            if (bars[i] == null || !(bars[i].getParent() instanceof View)) {
                continue;
            }
            View col = (View) bars[i].getParent();
            cols[i] = col;
            if (col.getVisibility() != View.VISIBLE) {
                col.setVisibility(View.VISIBLE);           // 1.1.391–1.1.393 hid them (an empty gap)
            }
            boolean idle = bt && !com.isaigu.gymapp.bodytech.BtSettings.hasChannel(i);
            if (idle) {
                IDLE.put(bars[i], Boolean.TRUE);
            } else {
                IDLE.remove(bars[i]);
            }
            bars[i].setOnTouchListener(BLOCK);
            float a = idle ? IDLE_ALPHA : 1f;
            if (col.getAlpha() != a) {
                col.setAlpha(a);
            }
        }
        arrange(cols, order(bt && on));
    }

    private static final float IDLE_ALPHA = 0.35f;
    /** Bars of columns a bodytech suit has no channel for: not touchable, shown at 0. */
    private static final WeakHashMap<View, Boolean> IDLE = new WeakHashMap<View, Boolean>();
    private static final Block BLOCK = new Block();

    /** Swallows a touch on an idle bar (VerticalColorSeekBar ignores setEnabled). */
    static final class Block implements View.OnTouchListener {
        @Override
        public boolean onTouch(View v, android.view.MotionEvent e) {
            return IDLE.containsKey(v);
        }
    }

    /** Idle bars at 0 (after the stock code and the looks drew them). */
    static void idle(VerticalColorSeekBar[] bars, TextView[] texts) {
        for (int i = 0; i < bars.length; i++) {
            if (bars[i] == null || !IDLE.containsKey(bars[i])) {
                continue;
            }
            bars[i].setProgress(0f);
            TextView t = texts != null && i < texts.length ? texts[i] : null;
            if (t != null) {
                t.setText(percent(0));
            }
        }
    }

    /** XEMS order (calf, front thigh, back thigh, glutes, abs, lower back, back, traps, chest, arms) as slider indexes. */
    private static final int[] STOCK = {3, 2, 9, 8, 1, 7, 6, 5, 0, 4};

    /** The column order: stock, or (bodytech) the legs moved right after the calf, the rest as in XEMS. */
    static int[] order(boolean bt) {
        if (!bt) {
            return STOCK;
        }
        int l = com.isaigu.gymapp.bodytech.BtSettings.legSlider(false);
        int r = com.isaigu.gymapp.bodytech.BtSettings.legSlider(true);
        if (l < 0 || r < 0 || l > 9 || r > 9 || l == r) {
            return STOCK;
        }
        int[] out = new int[10];
        int n = 0;
        for (int s : STOCK) {
            if (s == l || s == r) {
                continue;
            }
            out[n++] = s;
            if (s == 3) {                                  // after the calf: Л, Д
                out[n++] = l;
                out[n++] = r;
            }
        }
        if (n != 10) {                                     // a leg on the calf itself: Л, Д first
            out[0] = l;
            out[1] = r;
            n = 2;
            for (int s : STOCK) {
                if (s != l && s != r) {
                    out[n++] = s;
                }
            }
        }
        return out;
    }

    /**
     * Puts the views (by slider index) in this order, in the places they hold now in their parent. Only when the ten
     * are siblings next to each other (the row's columns, the header's cells); anything else is left as it is.
     */
    static void arrange(View[] byIndex, int[] order) {
        if (byIndex == null || byIndex.length < 10 || byIndex[0] == null
                || !(byIndex[0].getParent() instanceof android.view.ViewGroup)) {
            return;
        }
        android.view.ViewGroup g = (android.view.ViewGroup) byIndex[0].getParent();
        int min = Integer.MAX_VALUE, max = -1;
        for (int i = 0; i < 10; i++) {
            if (byIndex[i] == null || byIndex[i].getParent() != g) {
                return;
            }
            int k = g.indexOfChild(byIndex[i]);
            min = Math.min(min, k);
            max = Math.max(max, k);
        }
        if (max - min != 9) {
            return;
        }
        boolean same = true;
        for (int k = 0; k < 10 && same; k++) {
            same = g.getChildAt(min + k) == byIndex[order[k]];
        }
        if (same) {
            return;
        }
        for (int k = 0; k < 10; k++) {
            View v = byIndex[order[k]];
            if (g.indexOfChild(v) != min + k) {
                g.removeView(v);
                g.addView(v, min + k);
            }
        }
    }

    /** Rows on screen with a suit: bodytech or not (the header is the bodytech one only when every such row is). */
    private static final WeakHashMap<TrainItem, Object[]> ROWS = new WeakHashMap<TrainItem, Object[]>();
    /** The stock header labels / leg icons, to put back when an XEMS suit is on the screen again. */
    private static final WeakHashMap<View, Object> HEADER_ORIG = new WeakHashMap<View, Object>();

    /**
     * The muscle header above the rows (shared by every row; cells buwei1..10, icon + label): when every row on the
     * screen with a suit runs a bodytech one, the columns of the two legs (the XEMS channels their bodytech channels
     * are on: by default XEMS chest and front thigh) read "Ляво бедро" / "Дясно бедро", and the columns no bodytech
     * channel is on go (owner, 1.1.391: 8 zones). Any XEMS suit → the stock header.
     */
    static boolean header(TrainItem item, View bar, boolean bt) {
        boolean on = false;
        try {
            if (item != null) {
                boolean suit = item.data != null && item.data.macAddress != null && item.data.macAddress.length() > 0;
                if (suit) {
                    ROWS.put(item, new Object[] {new java.lang.ref.WeakReference<View>(bar), Boolean.valueOf(bt)});
                } else {
                    ROWS.remove(item);
                }
            }
            boolean anyBt = false, anyXems = false;
            for (Object[] v : ROWS.values()) {
                @SuppressWarnings("unchecked")
                View b = ((java.lang.ref.WeakReference<View>) v[0]).get();
                if (b == null || !b.isAttachedToWindow()) {
                    continue;
                }
                if (((Boolean) v[1]).booleanValue()) {
                    anyBt = true;
                } else {
                    anyXems = true;
                }
            }
            on = anyBt && !anyXems;
            View root = bar.getRootView();
            if (root == null) {
                return on;
            }
            View[] cells = new View[10];
            String pkg = root.getContext().getPackageName();
            int legL = com.isaigu.gymapp.bodytech.BtSettings.legSlider(false);
            int legR = com.isaigu.gymapp.bodytech.BtSettings.legSlider(true);
            for (int i = 0; i < 10; i++) {
                int id = root.getResources().getIdentifier("buwei" + (i + 1), "id", pkg);
                View cell = id != 0 ? root.findViewById(id) : null;
                if (!(cell instanceof android.view.ViewGroup)) {
                    continue;
                }
                android.view.ViewGroup g = (android.view.ViewGroup) cell;
                cells[i] = g;
                if (g.getVisibility() != View.VISIBLE) {
                    g.setVisibility(View.VISIBLE);             // 1.1.391–1.1.393 hid them (an empty gap)
                }
                // bodytech: a column no bodytech channel is on stays, dimmed and not clickable (owner, 1.1.394)
                boolean idle = on && !com.isaigu.gymapp.bodytech.BtSettings.hasChannel(i);
                float alpha = idle ? IDLE_ALPHA : 1f;
                if (g.getAlpha() != alpha) {
                    g.setAlpha(alpha);
                }
                if (g.isClickable() == idle && (idle || g.hasOnClickListeners())) {
                    g.setClickable(!idle);
                }
                View icon = g.getChildCount() > 0 ? g.getChildAt(0) : null;
                if (icon != null && icon.getTag() == LEG_TAG) {   // the copied leg icon of 1.1.379–1.1.387
                    icon.setBackgroundDrawable((android.graphics.drawable.Drawable) HEADER_ORIG.get(icon));
                    icon.setTag(null);
                }
                TextView label = g.getChildCount() > 1 && g.getChildAt(1) instanceof TextView ? (TextView) g.getChildAt(1) : null;
                if (label == null) {
                    continue;
                }
                if (!HEADER_ORIG.containsKey(label)) {
                    HEADER_ORIG.put(label, label.getText());
                }
                CharSequence want = (CharSequence) HEADER_ORIG.get(label);
                if (on && i == legL && legL != legR) {
                    want = "Ляво бедро";
                } else if (on && i == legR && legL != legR) {
                    want = "Дясно бедро";
                }
                if (want != null && !want.toString().equals(label.getText().toString())) {
                    label.setText(want);
                }
            }
            arrange(cells, order(on));
        } catch (Throwable ignored) {
        }
        return on;
    }

    private static final Object LEG_TAG = new Object();

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
            DoubleImpulse.touch(item);
            return l.second && ringFree(item, b);
        } catch (Throwable t) {
            return false;
        }
    }

    /**
     * Hook: the ring released (TrainViewHolder$4.onChangedEnd, after the selected channels' turn), {@code level}
     * 0–100. Nothing selected and the ring in the second impulse's look (the setup): the second impulse's strength
     * goes to the finger's value, within its limit; the main one stays. True = handled.
     */
    public static boolean ringEnd(TrainItem item, int level) {
        try {
            ProgramDataBean b = PartStrength.bean(item);
            Lock l = held(item);
            if (l != null) {
                l.dragging = false;
                l.until = System.currentTimeMillis() + HOLD_MS;
            }
            DoubleImpulse.touch(item);
            if (b == null || !b.activePause || l == null || !l.second || !ringFree(item, b)) {
                return false;
            }
            b.pauseStrenthPercent = Math.max(0, Math.min(PartStrength.clamp(level), PartStrength.secondCap(item, b)));
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
