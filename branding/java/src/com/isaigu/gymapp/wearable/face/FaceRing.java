package com.isaigu.gymapp.wearable.face;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.view.View;

/**
 * The run's dial: the three phases as arcs (wake-up · work · let-go) with the time done filled, the time left big in
 * the middle, the phase name under it, and the beat of the work — "СТЯГАНЕ 2" in rose / "ОТДИХ 5" in the accent —
 * with a thin inner arc that empties with it. One look: where we are, what happens now, how long.
 */
public final class FaceRing extends View {
    private final Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final RectF box = new RectF();
    private final float d;
    private long[] phases = new long[3];
    private FaceTimeline.State st = new FaceTimeline.State();
    private String[] names = {"", "", ""};
    private String onWord = "", offWord = "", pausedWord = "";
    private boolean paused;
    /** A sensory current: one steady word in the pill (no hold / rest beat to count). */
    private String steady;
    private int accent = 0xFF37D0EB, rose = 0xFFFF6F91, ink = 0xFFE6F3FF, muted = 0xFF93AFC6, track = 0x22FFFFFF;
    /** The hold / rest's own length (for the inner arc), ms. */
    private long beatMs = 1;
    private boolean lastOn;
    private long beatStartLeft;

    public FaceRing(Context c) {
        super(c);
        d = c.getResources().getDisplayMetrics().density;
    }

    public void setColors(int accent, int rose, int ink, int muted, int track) {
        this.accent = accent;
        this.rose = rose;
        this.ink = ink;
        this.muted = muted;
        this.track = track;
    }

    public void setWords(String[] phaseNames, String on, String off, String paused) {
        names = phaseNames;
        onWord = on;
        offWord = off;
        pausedWord = paused;
    }

    public void setSteady(String word) {
        steady = word;
        invalidate();
    }

    public void set(long[] phases, FaceTimeline.State st, boolean paused) {
        this.phases = phases;
        if (st.on != lastOn || st.leftMs > beatStartLeft) {
            beatStartLeft = Math.max(1, st.leftMs);
            beatMs = beatStartLeft;
        }
        lastOn = st.on;
        this.st = st;
        this.paused = paused;
        invalidate();
    }

    @Override
    protected void onDraw(Canvas c) {
        float w = getWidth();
        float h = getHeight();
        float size = Math.min(w, h);
        float cx = w / 2;
        float cy = h / 2;
        float stroke = 14 * d;
        float r = size / 2 - stroke;
        box.set(cx - r, cy - r, cx + r, cy + r);
        long total = Math.max(1, phases[0] + phases[1] + phases[2]);
        float gap = 4f;
        float start = -90;
        p.setStyle(Paint.Style.STROKE);
        p.setStrokeCap(Paint.Cap.ROUND);
        p.setStrokeWidth(stroke);
        long done = Math.max(0, Math.min(total, st.elapsedMs));
        long acc = 0;
        int[] tint = {accent, rose, accent};
        for (int k = 0; k < 3; k++) {
            if (phases[k] <= 0) {
                continue;
            }
            float sweep = 360f * phases[k] / total - gap;
            p.setColor(track);
            c.drawArc(box, start + gap / 2, sweep, false, p);
            long inPhase = Math.max(0, Math.min(phases[k], done - acc));
            if (inPhase > 0) {
                p.setColor(tint[k]);
                p.setAlpha(k == st.phase ? 255 : 150);
                c.drawArc(box, start + gap / 2, sweep * inPhase / phases[k], false, p);
            }
            start += 360f * phases[k] / total;
            acc += phases[k];
        }
        // the beat: an inner arc that empties with the hold / the rest
        float r2 = r - stroke * 1.6f;
        box.set(cx - r2, cy - r2, cx + r2, cy + r2);
        p.setStrokeWidth(4 * d);
        p.setColor(track);
        c.drawArc(box, -90, 360, false, p);
        int beat = steady != null ? accent : st.on ? rose : accent;
        if (!paused && st.leftMs > 0 && steady == null) {
            p.setColor(beat);
            c.drawArc(box, -90, 360f * Math.min(1f, st.leftMs / (float) Math.max(1, beatMs)), false, p);
        }
        // the words
        p.setStyle(Paint.Style.FILL);
        p.setTextAlign(Paint.Align.CENTER);
        p.setTypeface(Typeface.create(Typeface.DEFAULT, Typeface.BOLD));
        long left = Math.max(0, st.totalMs - st.elapsedMs);
        String time = (left / 60000) + ":" + pad2((left / 1000) % 60);
        p.setColor(ink);
        p.setTextSize(size * 0.2f);
        c.drawText(time, cx, cy - size * 0.02f, p);
        p.setTypeface(Typeface.DEFAULT);
        p.setTextSize(size * 0.068f);
        p.setColor(muted);
        c.drawText(names[Math.max(0, Math.min(2, st.phase))], cx, cy + size * 0.085f, p);
        String beatWord = paused ? pausedWord : steady != null ? steady
                : (st.on ? onWord : offWord) + "  " + Math.max(1, (st.leftMs + 999) / 1000);
        p.setTypeface(Typeface.create(Typeface.DEFAULT, Typeface.BOLD));
        p.setTextSize(size * 0.064f);
        float tw = p.measureText(beatWord) + size * 0.09f;
        float th = size * 0.11f;
        float py = cy + size * 0.2f;
        box.set(cx - tw / 2, py - th / 2, cx + tw / 2, py + th / 2);
        int pill = paused ? muted : beat;
        p.setColor(pill);
        p.setAlpha(46);
        c.drawRoundRect(box, th / 2, th / 2, p);
        p.setColor(pill);
        p.setAlpha(255);
        Paint.FontMetrics fm = p.getFontMetrics();
        c.drawText(beatWord, cx, py - (fm.ascent + fm.descent) / 2, p);
    }

    static String pad2(long v) {
        return v < 10 ? "0" + v : String.valueOf(v);
    }
}
