package android.graphics;

import java.awt.geom.Path2D;

public class Path {
    final Path2D.Float p = new Path2D.Float();

    public void reset() { p.reset(); }

    public void moveTo(float x, float y) { p.moveTo(x, y); }

    public void lineTo(float x, float y) { p.lineTo(x, y); }

    public void cubicTo(float a, float b, float c, float d, float e, float f) { p.curveTo(a, b, c, d, e, f); }

    public void close() { p.closePath(); }
}
