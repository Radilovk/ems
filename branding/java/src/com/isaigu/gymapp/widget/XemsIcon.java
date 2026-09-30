package com.isaigu.gymapp.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PixelFormat;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/**
 * Line icons drawn in code (one stroke weight, rounded caps) so the menu and the control panel
 * look like one family and stay sharp at any size. Drawn in a 24×24 box scaled to the bounds.
 */
public final class XemsIcon extends Drawable {
    public static final int BOLT = 1;
    public static final int PERSON = 2;
    public static final int GEAR = 3;
    public static final int GUIDE = 4;
    public static final int PLAN = 5;
    public static final int STOP = 6;
    public static final int PLAY = 7;
    public static final int PAUSE = 8;
    public static final int PLUS = 9;
    public static final int MINUS = 10;
    public static final int SLIDERS = 11;
    /** Rising line over a baseline: the client's progress report. */
    public static final int CHART = 12;
    /** A card with lines: the client's summary. */
    public static final int CARD = 13;
    /** A clock with a back arrow: the last trainings. */
    public static final int HISTORY = 14;
    /** A search glass. */
    public static final int SEARCH = 15;
    /** A dumbbell: the workouts. */
    public static final int DUMBBELL = 16;

    private final Paint stroke = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint fill = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Path path = new Path();
    private final RectF r = new RectF();
    private int type;

    public XemsIcon(int type, int color) {
        this.type = type;
        stroke.setStyle(Paint.Style.STROKE);
        stroke.setStrokeCap(Paint.Cap.ROUND);
        stroke.setStrokeJoin(Paint.Join.ROUND);
        fill.setStyle(Paint.Style.FILL);
        setColor(color);
    }

    public void setType(int t) {
        if (t != type) {
            type = t;
            invalidateSelf();
        }
    }

    public void setColor(int color) {
        stroke.setColor(color);
        fill.setColor(color);
        invalidateSelf();
    }

    @Override
    public void draw(Canvas c) {
        Rect b = getBounds();
        float size = Math.min(b.width(), b.height());
        if (size <= 0) {
            return;
        }
        float s = size / 24f;
        c.save();
        c.translate(b.exactCenterX() - size / 2f, b.exactCenterY() - size / 2f);
        c.scale(s, s);
        stroke.setStrokeWidth(2f);
        switch (type) {
            case DUMBBELL:
                r.set(2.5f, 8f, 6.5f, 16f);
                c.drawRoundRect(r, 1.5f, 1.5f, stroke);
                r.set(17.5f, 8f, 21.5f, 16f);
                c.drawRoundRect(r, 1.5f, 1.5f, stroke);
                r.set(6.5f, 6f, 9f, 18f);
                c.drawRoundRect(r, 1.2f, 1.2f, stroke);
                r.set(15f, 6f, 17.5f, 18f);
                c.drawRoundRect(r, 1.2f, 1.2f, stroke);
                c.drawLine(9f, 12f, 15f, 12f, stroke);
                break;
            case BOLT:
                path.reset();
                path.moveTo(13.5f, 2.5f);
                path.lineTo(5f, 13.5f);
                path.lineTo(11f, 13.5f);
                path.lineTo(10f, 21.5f);
                path.lineTo(19f, 10f);
                path.lineTo(13f, 10f);
                path.close();
                c.drawPath(path, stroke);
                break;
            case PERSON:
                c.drawCircle(12f, 8f, 4f, stroke);
                r.set(4.5f, 14f, 19.5f, 28f);
                c.drawArc(r, 180f, 180f, false, stroke);
                break;
            case GEAR:
                c.drawCircle(12f, 12f, 3f, stroke);
                c.drawCircle(12f, 12f, 7f, stroke);
                for (int i = 0; i < 8; i++) {
                    double a = Math.PI * i / 4.0;
                    float x1 = 12f + (float) Math.cos(a) * 7f;
                    float y1 = 12f + (float) Math.sin(a) * 7f;
                    float x2 = 12f + (float) Math.cos(a) * 9.8f;
                    float y2 = 12f + (float) Math.sin(a) * 9.8f;
                    c.drawLine(x1, y1, x2, y2, stroke);
                }
                break;
            case GUIDE:
                r.set(3f, 4f, 21f, 20f);
                c.drawRoundRect(r, 3f, 3f, stroke);
                path.reset();
                path.moveTo(10f, 8.5f);
                path.lineTo(15.5f, 12f);
                path.lineTo(10f, 15.5f);
                path.close();
                c.drawPath(path, fill);
                break;
            case PLAN:
                r.set(3.5f, 5f, 20.5f, 20.5f);
                c.drawRoundRect(r, 3f, 3f, stroke);
                c.drawLine(3.5f, 10f, 20.5f, 10f, stroke);
                c.drawLine(8f, 3f, 8f, 7f, stroke);
                c.drawLine(16f, 3f, 16f, 7f, stroke);
                c.drawCircle(8.5f, 14.5f, 1.1f, fill);
                c.drawCircle(12f, 14.5f, 1.1f, fill);
                c.drawCircle(15.5f, 14.5f, 1.1f, fill);
                break;
            case STOP:
                r.set(6f, 6f, 18f, 18f);
                c.drawRoundRect(r, 2.5f, 2.5f, fill);
                break;
            case PLAY:
                path.reset();
                path.moveTo(7.5f, 4.5f);
                path.lineTo(19.5f, 12f);
                path.lineTo(7.5f, 19.5f);
                path.close();
                stroke.setStrokeWidth(1.5f);
                c.drawPath(path, fill);
                c.drawPath(path, stroke);
                break;
            case PAUSE:
                r.set(6f, 5f, 10f, 19f);
                c.drawRoundRect(r, 1.5f, 1.5f, fill);
                r.set(14f, 5f, 18f, 19f);
                c.drawRoundRect(r, 1.5f, 1.5f, fill);
                break;
            case PLUS:
                stroke.setStrokeWidth(2.6f);
                c.drawLine(12f, 5f, 12f, 19f, stroke);
                c.drawLine(5f, 12f, 19f, 12f, stroke);
                break;
            case MINUS:
                stroke.setStrokeWidth(2.6f);
                c.drawLine(5f, 12f, 19f, 12f, stroke);
                break;
            case SLIDERS:
                c.drawLine(4f, 7f, 20f, 7f, stroke);
                c.drawLine(4f, 12f, 20f, 12f, stroke);
                c.drawLine(4f, 17f, 20f, 17f, stroke);
                c.drawCircle(15f, 7f, 2.2f, fill);
                c.drawCircle(9f, 12f, 2.2f, fill);
                c.drawCircle(13f, 17f, 2.2f, fill);
                break;
            case CHART:
                c.drawLine(4f, 20f, 20f, 20f, stroke);
                path.reset();
                path.moveTo(4.5f, 16f);
                path.lineTo(9.5f, 11f);
                path.lineTo(13f, 14f);
                path.lineTo(19.5f, 6.5f);
                c.drawPath(path, stroke);
                c.drawCircle(19.5f, 6.5f, 1.6f, fill);
                break;
            case CARD:
                r.set(3.5f, 5f, 20.5f, 19f);
                c.drawRoundRect(r, 3f, 3f, stroke);
                c.drawCircle(8.5f, 10.5f, 2f, stroke);
                c.drawLine(6f, 15.5f, 11f, 15.5f, stroke);
                c.drawLine(13.5f, 9.5f, 18f, 9.5f, stroke);
                c.drawLine(13.5f, 13f, 18f, 13f, stroke);
                c.drawLine(13.5f, 16.3f, 16.5f, 16.3f, stroke);
                break;
            case HISTORY:
                r.set(4f, 4f, 20f, 20f);
                c.drawArc(r, 200f, 290f, false, stroke);
                path.reset();
                path.moveTo(3.2f, 6.8f);
                path.lineTo(4.6f, 10.6f);
                path.lineTo(8.4f, 9.4f);
                c.drawPath(path, stroke);
                c.drawLine(12f, 8f, 12f, 12.5f, stroke);
                c.drawLine(12f, 12.5f, 15f, 14.5f, stroke);
                break;
            case SEARCH:
                c.drawCircle(10.5f, 10.5f, 6f, stroke);
                c.drawLine(15f, 15f, 20f, 20f, stroke);
                break;
            default:
                break;
        }
        c.restore();
    }

    @Override
    public void setAlpha(int alpha) {
        stroke.setAlpha(alpha);
        fill.setAlpha(alpha);
    }

    @Override
    public void setColorFilter(ColorFilter cf) {
        stroke.setColorFilter(cf);
        fill.setColorFilter(cf);
    }

    @Override
    public int getOpacity() {
        return PixelFormat.TRANSLUCENT;
    }
}
