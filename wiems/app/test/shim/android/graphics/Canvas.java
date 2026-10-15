package android.graphics;

import java.awt.BasicStroke;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.geom.AffineTransform;
import java.awt.geom.Ellipse2D;
import java.awt.geom.Line2D;
import java.awt.geom.Rectangle2D;
import java.awt.geom.RoundRectangle2D;
import java.util.ArrayDeque;

/** Render-test shim: android.graphics.Canvas on a Java2D Graphics2D. */
public class Canvas {
    final Graphics2D g;
    final ArrayDeque<AffineTransform> stack = new ArrayDeque<AffineTransform>();

    public Canvas(Graphics2D g) {
        this.g = g;
        g.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
        g.setRenderingHint(RenderingHints.KEY_TEXT_ANTIALIASING, RenderingHints.VALUE_TEXT_ANTIALIAS_ON);
        g.setRenderingHint(RenderingHints.KEY_FRACTIONALMETRICS, RenderingHints.VALUE_FRACTIONALMETRICS_ON);
    }

    public int save() { stack.push(g.getTransform()); return stack.size(); }

    public void restore() { g.setTransform(stack.pop()); }

    public void translate(float x, float y) { g.translate(x, y); }

    public void scale(float x, float y) { g.scale(x, y); }

    private void use(Paint p) {
        g.setColor(new java.awt.Color(p.color, true));
        int cap = p.cap == Paint.Cap.ROUND ? BasicStroke.CAP_ROUND : p.cap == Paint.Cap.SQUARE ? BasicStroke.CAP_SQUARE : BasicStroke.CAP_BUTT;
        g.setStroke(new BasicStroke(p.stroke, cap, BasicStroke.JOIN_ROUND));
    }

    private void shape(java.awt.Shape s, Paint p) {
        use(p);
        if (p.style == Paint.Style.STROKE) g.draw(s);
        else g.fill(s);
    }

    public void drawRect(float l, float t, float r, float b, Paint p) { shape(new Rectangle2D.Float(l, t, r - l, b - t), p); }

    public void drawRoundRect(RectF r, float rx, float ry, Paint p) {
        shape(new RoundRectangle2D.Float(r.left, r.top, r.right - r.left, r.bottom - r.top, rx * 2, ry * 2), p);
    }

    public void drawOval(RectF r, Paint p) { shape(new Ellipse2D.Float(r.left, r.top, r.right - r.left, r.bottom - r.top), p); }

    public void drawCircle(float cx, float cy, float rad, Paint p) { shape(new Ellipse2D.Float(cx - rad, cy - rad, rad * 2, rad * 2), p); }

    public void drawLine(float x0, float y0, float x1, float y1, Paint p) {
        use(p);
        g.draw(new Line2D.Float(x0, y0, x1, y1));
    }

    public void drawPath(Path path, Paint p) { shape(path.p, p); }

    public void drawBitmap(Bitmap b, Rect src, RectF dst, Paint p) {
        g.setRenderingHint(RenderingHints.KEY_INTERPOLATION, RenderingHints.VALUE_INTERPOLATION_BILINEAR);
        g.drawImage(b.img, Math.round(dst.left), Math.round(dst.top), Math.round(dst.right), Math.round(dst.bottom),
                src.left, src.top, src.right, src.bottom, null);
    }

    public void drawText(String s, float x, float y, Paint p) {
        use(p);
        g.setFont(p.font());
        g.drawString(s, x, y);
    }
}
