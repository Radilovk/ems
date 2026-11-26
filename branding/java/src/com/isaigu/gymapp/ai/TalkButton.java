package com.isaigu.gymapp.ai;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;

import com.isaigu.gymapp.widget.XemsUi;

/**
 * The round button beside the chat's line (owner, 2026-11-25: "the symbol is ugly and I do not understand it"). It was
 * a text button with the emoji 🎤 / ➤, which every tablet draws differently. Now it is drawn here, the same
 * everywhere: empty line → a microphone (outlined, "speak"); text in the line → a paper plane on a filled green
 * disc ("send"). One glance tells which it is, and the colour change tells that it changed.
 */
public final class TalkButton extends View {
    private final Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final RectF r = new RectF();
    private final Path path = new Path();
    private boolean send;

    public TalkButton(Context c) {
        super(c);
        setClickable(true);
        setContentDescription("Говори");
    }

    /** true = the line has text: the paper plane. */
    public void setSend(boolean s) {
        if (s != send) {
            send = s;
            setContentDescription(s ? "Изпрати" : "Говори");
            invalidate();
        }
    }

    public boolean isSend() {
        return send;
    }

    @Override
    public void setPressed(boolean pressed) {
        super.setPressed(pressed);
        setAlpha(pressed ? 0.72f : 1f);
    }

    @Override
    protected void onDraw(Canvas cv) {
        float w = getWidth(), h = getHeight();
        float s = Math.min(w, h);
        float cx = w / 2, cy = h / 2;
        float line = Math.max(2f, s / 24f);
        float rad = s / 2 - line;
        int accent = XemsUi.ACCENT;
        p.setStyle(Paint.Style.FILL);
        p.setColor(send ? XemsUi.GO : XemsUi.alpha(accent, 0x22));
        cv.drawCircle(cx, cy, rad, p);
        p.setStyle(Paint.Style.STROKE);
        p.setStrokeWidth(line);
        p.setColor(send ? XemsUi.GO : accent);
        cv.drawCircle(cx, cy, rad, p);
        if (send) {
            // the paper plane: a triangle pointing right with a notch at the back
            p.setStyle(Paint.Style.FILL);
            p.setColor(XemsUi.BG);
            path.reset();
            path.moveTo(cx + 0.27f * s, cy);
            path.lineTo(cx - 0.21f * s, cy - 0.23f * s);
            path.lineTo(cx - 0.10f * s, cy);
            path.lineTo(cx - 0.21f * s, cy + 0.23f * s);
            path.close();
            cv.drawPath(path, p);
            return;
        }
        // the microphone: a capsule, a cradle under it, a stem and a foot
        p.setColor(accent);
        p.setStyle(Paint.Style.FILL);
        float cw = 0.17f * s, ch = 0.27f * s;
        r.set(cx - cw / 2, cy - 0.27f * s, cx + cw / 2, cy - 0.27f * s + ch + 0.04f * s);
        cv.drawRoundRect(r, cw / 2, cw / 2, p);
        p.setStyle(Paint.Style.STROKE);
        p.setStrokeWidth(line);
        p.setStrokeCap(Paint.Cap.ROUND);
        float ax = 0.15f * s;
        r.set(cx - ax, cy - 0.20f * s, cx + ax, cy + 0.10f * s);
        cv.drawArc(r, 0, 180, false, p);
        cv.drawLine(cx, cy + 0.10f * s, cx, cy + 0.21f * s, p);
        cv.drawLine(cx - 0.09f * s, cy + 0.21f * s, cx + 0.09f * s, cy + 0.21f * s, p);
    }
}
