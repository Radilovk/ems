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
 * amber → magenta → red high), height = pulse width (deeper = taller); rest blocks are a thin grey bar. An exercise
 * block carries its still figure on top. Touch: tap selects; drag the selected block's right edge to make it longer
 * or shorter (repetitions / rest seconds); long-press and drag moves a block; the round + and − above the selected
 * block clone and remove it. Read-only (compact) in lists and the run card, with a playhead.
 * docs/xems-workouts.md
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
    private int selected = -1;
    /** Seconds from the start (the run card), < 0 = none. */
    private float playhead = -1;

    private final float d;
    private final Paint fill = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint stroke = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint text = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint fig = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint axis = new Paint(Paint.ANTI_ALIAS_FLAG);

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
        ExerciseFigure.preload(c);
    }

    public void setMap(Workout w, boolean editable) {
        this.map = w;
        this.editable = editable;
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

    private float heightFor(Workout.Block b) {
        if (b.isRest()) {
            return 8 * d;
        }
        float k = (b.pw - Workout.PW_MIN) / (float) (Workout.PW_MAX - Workout.PW_MIN);
        return maxH * (0.35f + 0.65f * Math.max(0, Math.min(1, k)));
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
        float minW = editable ? 30 * d : 6 * d;
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
                if (b.seconds() * s < minW) {
                    fixed += minW;
                } else {
                    free += b.seconds();
                }
            }
            s = free > 0 ? Math.max(0.01f, (avail - fixed) / free) : s;
        }
        scale = s;
        float x = pad;
        for (int i = 0; i < n; i++) {
            width[i] = Math.max(minW, map.blocks.get(i).seconds() * s);
            left[i] = x;
            x += width[i] + 3 * d;
        }
        float top = editable ? 64 * d : 4 * d;             // room for the figures and the + / − buttons
        baseY = getHeight() - (editable ? 20 * d : 4 * d);
        maxH = Math.max(10 * d, baseY - top - (editable ? 34 * d : 0));
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
        for (int i = 0; i < map.blocks.size(); i++) {
            Workout.Block b = map.blocks.get(i);
            float h = heightFor(b);
            RectF r = new RectF(left[i], baseY - h, left[i] + width[i], baseY);
            int col = b.isRest() ? 0xFF5A5F6B : colorFor(b.hz);
            boolean sel = i == selected;
            fill.setColor(col);
            fill.setAlpha(b.isRest() ? 200 : Math.round(80 + 150 * Math.max(0.2f, b.rel / 100f)));
            float rad = Math.min(8 * d, width[i] / 3);
            c.drawRoundRect(r, rad, rad, fill);
            if (sel) {
                stroke.setColor(0xFFFFFFFF);
                stroke.setStrokeWidth(2.5f * d);
                c.drawRoundRect(r, rad, rad, stroke);
            }
            if (editable && width[i] > 26 * d && !b.isRest()) {
                String t = "×" + b.reps;
                text.setTextSize(12 * d);
                c.drawText(t, r.centerX() - text.measureText(t) / 2, r.bottom - 7 * d, text);
                if (h > 42 * d) {
                    String hz = b.hz + " Hz";
                    text.setTextSize(10 * d);
                    c.drawText(hz, r.centerX() - text.measureText(hz) / 2, r.top + 14 * d, text);
                }
            } else if (editable && b.isRest() && width[i] > 34 * d) {
                String t = b.reps + "s";
                axis.setColor(0xAAFFFFFF);
                c.drawText(t, r.centerX() - axis.measureText(t) / 2, r.top - 4 * d, axis);
            }
            if (b.hasExercise() && editable) {
                float fs = Math.min(56 * d, Math.max(22 * d, width[i] - 4 * d));
                RectF box = new RectF(r.centerX() - fs / 2, r.top - fs - 4 * d, r.centerX() + fs / 2, r.top - 4 * d);
                fig.setColor(sel ? 0xFFFFFFFF : col);
                if (!ExerciseFigure.drawStill(c, b.ex, box, fig)) {
                    waiting = true;
                }
            }
            if (sel && editable) {
                // the resize grip on the right edge
                handle.set(r.right - 7 * d, r.top + 4 * d, r.right + 7 * d, r.bottom - 4 * d);
                fill.setColor(0xFFFFFFFF);
                fill.setAlpha(230);
                c.drawRoundRect(new RectF(r.right - 2.5f * d, r.centerY() - 12 * d, r.right + 2.5f * d,
                        r.centerY() + 12 * d), 3 * d, 3 * d, fill);
                // + clone and − remove above the block
                float cy = 18 * d;                                 // the top strip, above the figures
                float cx = Math.max(40 * d, Math.min(getWidth() - 40 * d, r.centerX()));
                plusBtn.set(cx - 38 * d, cy - 15 * d, cx - 8 * d, cy + 15 * d);
                minusBtn.set(cx + 8 * d, cy - 15 * d, cx + 38 * d, cy + 15 * d);
                drawRound(c, plusBtn, 0xFF43A047, "+");
                drawRound(c, minusBtn, 0xFFEF5350, "−");
            }
        }
        if (editable) {
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

    private void drawRound(Canvas c, RectF r, int color, String t) {
        fill.setColor(color);
        fill.setAlpha(255);
        c.drawOval(r, fill);
        text.setTextSize(20 * d);
        c.drawText(t, r.centerX() - text.measureText(t) / 2, r.centerY() + 7 * d, text);
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
                downIndex = indexAt(x);
                getParent().requestDisallowInterceptTouchEvent(true);
                if (selected >= 0 && selected < map.blocks.size()) {
                    RectF grip = new RectF(handle.left - 10 * d, handle.top, handle.right + 10 * d, handle.bottom);
                    if (grip.contains(x, y)) {
                        gesture = RESIZE;
                        frozen = true;
                        startSeconds = map.blocks.get(selected).seconds();
                    }
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
                    width[selected] = Math.max(30 * d, b.seconds() * scale);
                    for (int i = selected + 1; i < left.length; i++) {
                        left[i] = left[i - 1] + width[i - 1] + 3 * d;
                    }
                    invalidate();
                    changed();
                    return true;
                }
                if (gesture == NONE && downIndex >= 0 && Math.abs(dx) > touchSlop
                        && e.getEventTime() - downAt > ViewConfiguration.getLongPressTimeout()) {
                    gesture = MOVE;                                // long press, then drag: move the block
                    frozen = true;
                    selected = downIndex;
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
                if (gesture == NONE && Math.abs(x - downX) < touchSlop && Math.abs(y - downY) < touchSlop) {
                    if (selected >= 0 && plusBtn.contains(x, y)) {
                        map.blocks.add(selected + 1, map.blocks.get(selected).copy());
                        selected++;
                        frozen = false;
                        changed();
                    } else if (selected >= 0 && minusBtn.contains(x, y)) {
                        map.blocks.remove(selected);
                        selected = Math.min(selected, map.blocks.size() - 1);
                        frozen = false;
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
                gesture = NONE;
                frozen = false;
                invalidate();
                return true;
            default:
                return true;
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
