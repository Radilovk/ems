package com.isaigu.gymapp.ai;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PixelFormat;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/**
 * The impulse symbols, drawn as vector paths (no font glyphs, crisp at any size): frequency = a sharp wave,
 * time = a clock, impulse + pause = one pulse then a flat line, double impulse = two pulses (the second lower),
 * depth (pulse width) = an arrow down to a line, ramp = a trapezoid. Used inside the map's blocks
 * ({@link ImpulseMapView}), in the legend and on the block panel ({@link WorkoutsUi}), so one symbol means one thing
 * everywhere. As a Drawable it sits next to a TextView's text.
 */
public final class ImpulseGlyph extends Drawable {
    public static final int HZ = 0;
    public static final int TIME = 1;
    public static final int PULSE_PAUSE = 2;
    public static final int DOUBLE = 3;
    public static final int DEPTH = 4;
    public static final int RAMP = 5;
    public static final int STRENGTH = 6;

    private final int type;
    private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);

    public ImpulseGlyph(int type, int color, float strokePx) {
        this.type = type;
        paint.setColor(color);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(strokePx);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeJoin(Paint.Join.ROUND);
    }

    /** The symbol in the square (x, y, size); the paint's colour and stroke width are the caller's. */
    public static void draw(Canvas c, int type, float x, float y, float s, Paint p) {
        Paint.Style keep = p.getStyle();
        p.setStyle(Paint.Style.STROKE);
        Path path = new Path();
        switch (type) {
            case HZ:                                           // a sharp wave
                pts(path, x, y, s, new float[] {0f, .62f, .17f, .18f, .38f, .82f, .59f, .18f, .8f, .82f, 1f, .38f});
                c.drawPath(path, p);
                break;
            case TIME: {                                       // a clock
                c.drawCircle(x + s * .5f, y + s * .5f, s * .44f, p);
                pts(path, x, y, s, new float[] {.5f, .24f, .5f, .5f, .7f, .62f});
                c.drawPath(path, p);
                break;
            }
            case PULSE_PAUSE:                                  // one pulse, then the pause
                pts(path, x, y, s, new float[] {0f, .78f, .1f, .78f, .1f, .2f, .46f, .2f, .46f, .78f, 1f, .78f});
                c.drawPath(path, p);
                break;
            case DOUBLE:                                       // two pulses, the second lower
                pts(path, x, y, s, new float[] {0f, .78f, .06f, .78f, .06f, .18f, .42f, .18f, .42f, .78f, .54f, .78f,
                        .54f, .46f, .92f, .46f, .92f, .78f, 1f, .78f});
                c.drawPath(path, p);
                break;
            case DEPTH:                                        // an arrow down to the skin
                pts(path, x, y, s, new float[] {.5f, .06f, .5f, .74f});
                c.drawPath(path, p);
                path.reset();
                pts(path, x, y, s, new float[] {.27f, .52f, .5f, .76f, .73f, .52f});
                c.drawPath(path, p);
                path.reset();
                pts(path, x, y, s, new float[] {.12f, .94f, .88f, .94f});
                c.drawPath(path, p);
                break;
            case RAMP:                                         // a trapezoid: rise, hold, fall
                pts(path, x, y, s, new float[] {0f, .84f, .3f, .2f, .7f, .2f, 1f, .84f});
                c.drawPath(path, p);
                break;
            default:                                           // strength: three rising bars
                pts(path, x, y, s, new float[] {.18f, .9f, .18f, .64f});
                c.drawPath(path, p);
                path.reset();
                pts(path, x, y, s, new float[] {.5f, .9f, .5f, .4f});
                c.drawPath(path, p);
                path.reset();
                pts(path, x, y, s, new float[] {.82f, .9f, .82f, .12f});
                c.drawPath(path, p);
                break;
        }
        p.setStyle(keep);
    }

    private static void pts(Path path, float x, float y, float s, float[] xy) {
        path.moveTo(x + xy[0] * s, y + xy[1] * s);
        for (int i = 2; i + 1 < xy.length; i += 2) {
            path.lineTo(x + xy[i] * s, y + xy[i + 1] * s);
        }
    }

    @Override
    public void draw(Canvas c) {
        Rect b = getBounds();
        float s = Math.min(b.width(), b.height()) - paint.getStrokeWidth();
        draw(c, type, b.left + (b.width() - s) / 2f, b.top + (b.height() - s) / 2f, s, paint);
    }

    @Override
    public void setAlpha(int a) {
        paint.setAlpha(a);
    }

    @Override
    public void setColorFilter(ColorFilter cf) {
        paint.setColorFilter(cf);
    }

    @Override
    public int getOpacity() {
        return PixelFormat.TRANSLUCENT;
    }
}
