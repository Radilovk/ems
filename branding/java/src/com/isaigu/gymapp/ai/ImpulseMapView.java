package com.isaigu.gymapp.ai;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;

/**
 * The impulse map as a line: blocks side by side, width = time, colour = frequency (blue low → cyan → green →
 * amber → magenta → red high), height = pulse width (deeper = taller); a ramp leans the block's side (a trapezoid:
 * the longer the ramp, the flatter the side); rest blocks are low and grey. An exercise block carries its still
 * figure on top. In the editor every block shows its values with symbols ({@link ImpulseGlyph}: wave Hz, clock
 * seconds, pulse+pause or two pulses ON:OFF, arrow µs); the selected one has − and + inside (remove / clone), as
 * bare symbols in the theme's ink (white on dark, black on light). Touch: tap selects; drag the selected block's
 * right edge to make it longer or shorter; long-press and drag moves a block. Blocks keep a readable width: a long
 * map is wider than the screen and scrolls (the editor wraps it in a HorizontalScrollView). Read-only (compact) in
 * lists and the run card, with a playhead. docs/xems-workouts.md
 */
public final class ImpulseMapView extends View {
    public interface Listener {
        void onSelect(int index);

        /** Blocks changed (length, order, clone, remove). */
        void onChanged();
    }

    private Workout map;
    private Listener listener;
    private boolean editable;
    /** Values inside the blocks, blocks as tall as their values (the editor and a ready program's preview). */
    private boolean detailed;
    private int selected = -1;
    /** Seconds from the start (the run card), < 0 = none. */
    private float playhead = -1;

    private final float d;
    private final Paint fill = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint stroke = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint text = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint fig = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint axis = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint ink = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final android.graphics.Path shape = new android.graphics.Path();

    // layout (px): left edge and width of each block, frozen during a drag
    private float[] left = new float[0];
    private float[] width = new float[0];
    private float scale;
    private float baseY;
    private float maxH;

    // gestures
    private static final int NONE = 0;
    private static final int RESIZE = 1;
    private static final int MOVE = 2;
    private int gesture = NONE;
    private float downX;
    private float downY;
    private long downAt;
    private int downIndex = -1;
    private int startSeconds;
    private boolean frozen;
    private final int touchSlop;
    private final RectF plusBtn = new RectF();
    private final RectF minusBtn = new RectF();
    private final RectF handle = new RectF();
    private final Runnable lift = new Lift();
    /** A long press picked the block up (it moves with the finger). */
    private boolean lifted;

    public ImpulseMapView(Context c) {
        super(c);
        d = c.getResources().getDisplayMetrics().density;
        stroke.setStyle(Paint.Style.STROKE);
        text.setColor(0xFFFFFFFF);
        text.setTextSize(12 * d);
        text.setFakeBoldText(true);
        fig.setStyle(Paint.Style.FILL);
        axis.setColor(0x55FFFFFF);
        axis.setStrokeWidth(Math.max(1, d));
        axis.setTextSize(10 * d);
        touchSlop = ViewConfiguration.get(c).getScaledTouchSlop();
        ink.setStrokeWidth(1.6f * d);
        ink.setStrokeCap(Paint.Cap.ROUND);
        ink.setStrokeJoin(Paint.Join.ROUND);
        ink.setFakeBoldText(true);
        fill.setPathEffect(new android.graphics.CornerPathEffect(6 * d));
        stroke.setPathEffect(new android.graphics.CornerPathEffect(6 * d));
        ExerciseFigure.preload(c);
    }

    /** The editor's narrowest block (dp): room for the values and the − / +; a rest is narrower. */
    static final float MIN_W_DP = 104;
    static final float MIN_REST_DP = 92;

    private float minWidth(Workout.Block b) {
        return detailed ? (b.isRest() ? MIN_REST_DP : MIN_W_DP) * d : 6 * d;
    }

    // detailed block heights (dp): the four value rows with even padding; deeper impulses stand a little taller,
    // the selected block grows by the − / + row
    static final float VALUES_DP = 86;
    static final float DEPTH_DP = 26;
    static final float REST_DP = 38;
    static final float TOOLS_DP = 34;
    static final float AXIS_DP = 20;

    private boolean figures() {
        if (map != null) {
            for (Workout.Block b : map.blocks) {
                if (b.hasExercise()) {
                    return true;
                }
            }
        }
        return false;
    }

    private float topRoom() {
        return figures() ? 62 * d : 10 * d;                 // the figures stand above the blocks
    }

    /** In the editor a long map is as wide as its blocks need (the parent scrolls); else the given width. */
    @Override
    protected void onMeasure(int ws, int hs) {
        int w = MeasureSpec.getSize(ws);
        if (detailed && map != null) {
            float need = 16 * d;
            for (Workout.Block b : map.blocks) {
                need += minWidth(b) + 3 * d;
            }
            w = Math.max(w, (int) Math.ceil(need));
            // as tall as the blocks need: figures, the tallest block (+ the − / + row when editing), the minutes
            int h = (int) Math.ceil(topRoom() + (VALUES_DP + DEPTH_DP + (editable ? TOOLS_DP + 8 : 0) + AXIS_DP) * d);
            setMeasuredDimension(w, h);
            return;
        }
        setMeasuredDimension(w, getDefaultSize(getSuggestedMinimumHeight(), hs));
    }

    public void setMap(Workout w, boolean editable) {
        setMap(w, editable, editable);
    }

    /** detailed: values inside every block and blocks sized to them, also when the map is read-only. */
    public void setMap(Workout w, boolean editable, boolean detailed) {
        this.map = w;
        this.editable = editable;
        this.detailed = detailed || editable;
        if (w == null || selected >= w.blocks.size()) {
            selected = -1;
        }
        frozen = false;
        requestLayout();
        invalidate();
    }

    public void setListener(Listener l) {
        this.listener = l;
    }

    public int getSelected() {
        return selected;
    }

    public void select(int index) {
        selected = map != null && index >= 0 && index < map.blocks.size() ? index : -1;
        invalidate();
    }

    public void setPlayhead(float seconds) {
        playhead = seconds;
        invalidate();
    }

    // ------------------------------------------------------------------ colour and size

    private static final int[] HZ = {1, 10, 30, 60, 85, 120};
    private static final int[] COL = {0xFF3D7BFF, 0xFF22E3FF, 0xFF2EE59D, 0xFFFFC23D, 0xFFFF3BD4, 0xFFFF4D4D};

    /** Frequency → colour along the design's scale (blue low … red high). */
    public static int colorFor(int hz) {
        if (hz <= HZ[0]) {
            return COL[0];
        }
        for (int i = 1; i < HZ.length; i++) {
            if (hz <= HZ[i]) {
                float t = (hz - HZ[i - 1]) / (float) (HZ[i] - HZ[i - 1]);
                return mix(COL[i - 1], COL[i], t);
            }
        }
        return COL[COL.length - 1];
    }

    static int mix(int a, int b, float t) {
        int ar = (a >> 16) & 0xFF;
        int ag = (a >> 8) & 0xFF;
        int ab = a & 0xFF;
        int br = (b >> 16) & 0xFF;
        int bg = (b >> 8) & 0xFF;
        int bb = b & 0xFF;
        return 0xFF000000 | ((int) (ar + (br - ar) * t) << 16) | ((int) (ag + (bg - ag) * t) << 8)
                | (int) (ab + (bb - ab) * t);
    }

    private float heightFor(Workout.Block b, boolean sel) {
        float tools = sel && editable ? TOOLS_DP * d : 0;
        if (b.isRest()) {
            return detailed ? REST_DP * d + tools : 8 * d;
        }
        float k = Math.max(0, Math.min(1, (b.pw - Workout.PW_MIN) / (float) (Workout.PW_MAX - Workout.PW_MIN)));
        return detailed ? (VALUES_DP + DEPTH_DP * k) * d + tools : maxH * (0.35f + 0.65f * k);
    }

    /** The ramp's lean (px) for a side: 1 s of ramp leans it 24 dp, at most a third of the block. */
    private float lean(int rampMs, float w, float h) {
        if (rampMs <= 0) {
            return 0;
        }
        return Math.min(Math.min(w * 0.3f, h * 0.9f), rampMs / 1000f * (detailed ? 24 : 6) * d);
    }

    /** The theme's ink for symbols inside blocks: white on dark, black on light. */
    private static int ink() {
        return com.isaigu.gymapp.widget.XemsUi.dark ? 0xFFFFFFFF : 0xFF111111;
    }

    private static int restColor() {
        return com.isaigu.gymapp.widget.XemsUi.dark ? 0xFF5A5F6B : 0xFFC9CED6;
    }

    // ------------------------------------------------------------------ layout

    private void layoutBlocks() {
        int n = map != null ? map.blocks.size() : 0;
        if (frozen && left.length == n) {
            return;
        }
        left = new float[n];
        width = new float[n];
        float pad = 8 * d;
        float avail = getWidth() - 2 * pad - Math.max(0, n - 1) * 3 * d;
        int total = 0;
        for (Workout.Block b : map != null ? map.blocks : new java.util.ArrayList<Workout.Block>()) {
            total += b.seconds();
        }
        // blocks under the minimum take it; the rest share what is left by time
        float s = total > 0 ? avail / total : 1;
        for (int pass = 0; pass < 3 && total > 0; pass++) {
            float fixed = 0;
            int free = 0;
            for (Workout.Block b : map.blocks) {
                if (b.seconds() * s < minWidth(b)) {
                    fixed += minWidth(b);
                } else {
                    free += b.seconds();
                }
            }
            s = free > 0 ? Math.max(0.01f, (avail - fixed) / free) : s;
        }
        scale = s;
        float x = pad;
        for (int i = 0; i < n; i++) {
            width[i] = Math.max(minWidth(map.blocks.get(i)), map.blocks.get(i).seconds() * s);
            left[i] = x;
            x += width[i] + 3 * d;
        }
        float top = detailed ? topRoom() : 4 * d;          // room for the figures above the blocks
        baseY = getHeight() - (detailed ? AXIS_DP * d : 4 * d);
        maxH = Math.max(10 * d, baseY - top);
    }

    @Override
    protected void onSizeChanged(int w, int h, int ow, int oh) {
        frozen = false;
    }

    // ------------------------------------------------------------------ draw

    @Override
    protected void onDraw(Canvas c) {
        if (map == null) {
            return;
        }
        layoutBlocks();
        boolean waiting = false;
        plusBtn.setEmpty();
        minusBtn.setEmpty();
        for (int i = 0; i < map.blocks.size(); i++) {
            Workout.Block b = map.blocks.get(i);
            float h = heightFor(b, i == selected);
            float lift = lifted && i == selected ? 8 * d : 0;
            RectF r = new RectF(left[i], baseY - h - lift, left[i] + width[i], baseY - lift);
            int col = b.isRest() ? restColor() : colorFor(b.hz);
            boolean sel = i == selected;
            // the block: a trapezoid when the impulse ramps (the side leans by the ramp's length)
            float li = b.isRest() ? 0 : lean(b.rampIn, r.width(), r.height());
            float lo = b.isRest() ? 0 : lean(b.rampOut, r.width(), r.height());
            shape.reset();
            shape.moveTo(r.left, r.bottom);
            shape.lineTo(r.left + li, r.top);
            shape.lineTo(r.right - lo, r.top);
            shape.lineTo(r.right, r.bottom);
            shape.close();
            fill.setColor(col);
            fill.setAlpha(b.isRest() ? 220 : Math.round(90 + 150 * Math.max(0.2f, b.rel / 100f)));
            c.drawPath(shape, fill);
            if (sel) {
                stroke.setColor(ink());
                stroke.setStrokeWidth(2.5f * d);
                c.drawPath(shape, stroke);
            }
            if (detailed) {
                waiting |= drawInside(c, i, b, r, li, lo, sel && editable, col);
            }
        }
        if (detailed) {
            // minute marks under the line
            int total = map.totalSeconds();
            axis.setColor(0x55FFFFFF);
            c.drawLine(8 * d, baseY + 2 * d, getWidth() - 8 * d, baseY + 2 * d, axis);
            for (int m = 1; m * 60 < total; m++) {
                int bi = map.blockAt(m * 60);
                if (bi < 0) {
                    break;
                }
                float x = left[bi] + (m * 60 - map.startOf(bi)) * width[bi] / Math.max(1, map.blocks.get(bi).seconds());
                c.drawLine(x, baseY + 2 * d, x, baseY + 6 * d, axis);
                if (m % (total > 1200 ? 5 : 1) == 0) {
                    String t = m + "'";
                    axis.setColor(0x99FFFFFF);
                    c.drawText(t, x - axis.measureText(t) / 2, baseY + 17 * d, axis);
                    axis.setColor(0x55FFFFFF);
                }
            }
        }
        if (playhead >= 0) {
            int bi = map.blockAt(playhead);
            float x = bi < 0 ? (left.length > 0 ? left[left.length - 1] + width[width.length - 1] : 0)
                    : left[bi] + (playhead - map.startOf(bi)) * width[bi] / Math.max(1, map.blocks.get(bi).seconds());
            stroke.setColor(0xFFFFFFFF);
            stroke.setStrokeWidth(2 * d);
            c.drawLine(x, 0, x, getHeight(), stroke);
        }
        if (waiting) {
            postInvalidateDelayed(300);                        // a figure still loading
        }
    }

    /** Inside a block: the values with their symbols, centred in the block, the figure above, and on the selected
     *  one (editor) the resize grip and the − / + as bare symbols. True while a figure is still loading. */
    private boolean drawInside(Canvas c, int i, Workout.Block b, RectF r, float li, float lo, boolean sel, int col) {
        boolean waiting = false;
        int k = ink();
        ink.setColor(k);
        text.setColor(k);
        float row = 18 * d;
        float gs = 12 * d;
        float gap = 5 * d;
        float bottom = r.bottom - (sel ? TOOLS_DP * d : 0);  // the − / + live at the bottom of the selected block
        float cx = r.centerX() + (li - lo) / 4;                // the middle of a leaning block
        String[] v;
        int[] g;
        if (b.isRest()) {
            v = new String[] {b.reps + AiText.t(" сек", " s")};
            g = new int[] {ImpulseGlyph.TIME};
        } else {
            v = new String[] {b.hz + " Hz", b.seconds() + AiText.t(" сек", " s"),
                    b.dbl ? b.on + "/" + b.off2() + " · " + b.hz2 + " Hz" : b.on + ":" + Math.max(1, b.off) + AiText.t(" сек", " s"),
                    b.pw + " µs"};
            g = new int[] {ImpulseGlyph.HZ, ImpulseGlyph.TIME, b.dbl ? ImpulseGlyph.DOUBLE : ImpulseGlyph.PULSE_PAUSE,
                    ImpulseGlyph.DEPTH};
        }
        text.setTextSize(11.5f * d);
        float tw = 0;
        for (String t : v) {
            tw = Math.max(tw, text.measureText(t));
        }
        float x = Math.max(r.left + li * 0.5f + 4 * d, cx - (gs + gap + tw) / 2);   // one column, centred
        float rows = (v.length - 1) * row + gs;
        float y = (r.top + bottom) / 2 - rows / 2;
        for (int n = 0; n < v.length; n++) {
            ImpulseGlyph.draw(c, g[n], x, y, gs, ink);
            c.drawText(v[n], x + gs + gap, y + gs - 1.5f * d, text);
            y += row;
        }
        if (b.lock && !b.isRest()) {
            c.drawText("🔒", r.left + li * 0.5f + 4 * d, r.top + 14 * d, text);   // exactly as drawn (1.1.326)
        }
        if (b.hasExercise()) {
            float fs = Math.min(56 * d, Math.max(22 * d, width[i] - 4 * d));
            RectF box = new RectF(r.centerX() - fs / 2, r.top - fs - 4 * d, r.centerX() + fs / 2, r.top - 4 * d);
            fig.setColor(sel ? k : col);
            if (!ExerciseFigure.drawStill(c, b.ex, box, fig)) {
                waiting = true;
            }
        }
        if (sel) {
            // the resize grip on the right edge, above the − / + row
            float gb = r.bottom - 38 * d;
            handle.set(r.right - 7 * d, r.top + 4 * d, r.right + 7 * d, Math.max(r.top + 12 * d, gb));
            float gc = (handle.top + handle.bottom) / 2;
            float gh = Math.min(12 * d, (handle.bottom - handle.top) / 2);
            fill.setColor(k);
            fill.setAlpha(230);
            c.drawRoundRect(new RectF(r.right - 2.5f * d, gc - gh, r.right + 2.5f * d, gc + gh), 3 * d, 3 * d, fill);
            // − removes (left), + clones (right): bare symbols in the ink, a 44 dp touch area each
            float cy = r.bottom - 17 * d;
            float arm = 7 * d;
            ink.setStrokeWidth(2.6f * d);
            float mx = r.left + Math.max(18 * d, li + 12 * d);
            float px = r.right - 22 * d;
            c.drawLine(mx - arm, cy, mx + arm, cy, ink);
            c.drawLine(px - arm, cy, px + arm, cy, ink);
            c.drawLine(px, cy - arm, px, cy + arm, ink);
            ink.setStrokeWidth(1.6f * d);
            minusBtn.set(mx - 22 * d, cy - 22 * d, mx + 22 * d, cy + 22 * d);
            plusBtn.set(px - 22 * d, cy - 22 * d, px + 22 * d, cy + 22 * d);
        }
        return waiting;
    }

    // ------------------------------------------------------------------ touch

    private int indexAt(float x) {
        for (int i = 0; i < left.length; i++) {
            if (x >= left[i] - 1.5f * d && x <= left[i] + width[i] + 1.5f * d) {
                return i;
            }
        }
        return -1;
    }

    @Override
    public boolean onTouchEvent(MotionEvent e) {
        if (!editable || map == null) {
            return false;
        }
        float x = e.getX();
        float y = e.getY();
        switch (e.getActionMasked()) {
            case MotionEvent.ACTION_DOWN:
                downX = x;
                downY = y;
                downAt = e.getEventTime();
                gesture = NONE;
                lifted = false;
                downIndex = indexAt(x);
                if (selected >= 0 && selected < map.blocks.size()
                        && !plusBtn.contains(x, y) && !minusBtn.contains(x, y)) {      // − / + win over the grip
                    RectF grip = new RectF(handle.left - 12 * d, handle.top - 8 * d, handle.right + 12 * d, handle.bottom + 4 * d);
                    if (grip.contains(x, y)) {
                        gesture = RESIZE;
                        frozen = true;
                        startSeconds = map.blocks.get(selected).seconds();
                        getParent().requestDisallowInterceptTouchEvent(true);   // the sheet must not scroll now
                    }
                }
                if (gesture == NONE && downIndex >= 0) {
                    postDelayed(lift, ViewConfiguration.getLongPressTimeout());
                }
                return true;
            case MotionEvent.ACTION_MOVE: {
                float dx = x - downX;
                if (gesture == RESIZE) {
                    Workout.Block b = map.blocks.get(selected);
                    float secs = startSeconds + dx / Math.max(0.01f, scale);
                    if (b.isRest()) {
                        b.reps = Workout.clamp(Math.round(secs / 5f) * 5, Workout.REST_MIN_S, Workout.REST_MAX_S);
                    } else {
                        b.reps = Workout.clamp(Math.round(secs / Math.max(1, b.on + Math.max(1, b.off))), Workout.REPS_MIN, Workout.REPS_MAX);
                    }
                    width[selected] = Math.max(minWidth(b), b.seconds() * scale);
                    for (int i = selected + 1; i < left.length; i++) {
                        left[i] = left[i - 1] + width[i - 1] + 3 * d;
                    }
                    invalidate();
                    changed();
                    return true;
                }
                if (gesture == NONE && !lifted && (Math.abs(dx) > touchSlop || Math.abs(y - downY) > touchSlop)) {
                    removeCallbacks(lift);                         // a swipe, not a hold: the sheet may scroll
                }
                if (gesture == MOVE) {
                    int to = indexAt(x);
                    if (to >= 0 && to != selected) {
                        map.move(selected, to);
                        selected = to;
                        frozen = false;
                        layoutBlocks();
                        frozen = true;
                        changed();
                    }
                    invalidate();
                    return true;
                }
                return true;
            }
            case MotionEvent.ACTION_UP:
                removeCallbacks(lift);
                if (lifted) {
                    lifted = false;
                    gesture = NONE;
                    frozen = false;
                    invalidate();
                    return true;
                }
                if (gesture == NONE && Math.abs(x - downX) < touchSlop && Math.abs(y - downY) < touchSlop) {
                    if (selected >= 0 && plusBtn.contains(x, y)) {
                        map.blocks.add(selected + 1, map.blocks.get(selected).copy());
                        selected++;
                        frozen = false;
                        requestLayout();                       // one block wider: the scroll width grows
                        changed();
                    } else if (selected >= 0 && minusBtn.contains(x, y)) {
                        map.blocks.remove(selected);
                        selected = Math.min(selected, map.blocks.size() - 1);
                        frozen = false;
                        requestLayout();
                        changed();
                    } else {
                        selected = downIndex;
                    }
                    if (listener != null) {
                        listener.onSelect(selected);
                    }
                    performClick();
                }
                gesture = NONE;
                frozen = false;
                invalidate();
                return true;
            case MotionEvent.ACTION_CANCEL:
                removeCallbacks(lift);
                lifted = false;
                gesture = NONE;
                frozen = false;
                invalidate();
                return true;
            default:
                return true;
        }
    }

    /** The long press: pick the block up — it follows the finger, the sheet stops scrolling, a short buzz. */
    final class Lift implements Runnable {
        @Override
        public void run() {
            if (downIndex < 0 || map == null || downIndex >= map.blocks.size()) {
                return;
            }
            lifted = true;
            gesture = MOVE;
            frozen = true;
            selected = downIndex;
            getParent().requestDisallowInterceptTouchEvent(true);
            performHapticFeedback(android.view.HapticFeedbackConstants.LONG_PRESS);
            if (listener != null) {
                listener.onSelect(selected);
            }
            invalidate();
        }
    }

    @Override
    public boolean performClick() {
        return super.performClick();
    }

    private void changed() {
        if (listener != null) {
            listener.onChanged();
        }
    }
}
