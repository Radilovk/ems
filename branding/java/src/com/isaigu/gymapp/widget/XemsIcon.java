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
