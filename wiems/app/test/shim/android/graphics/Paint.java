package android.graphics;

import java.awt.Font;
import java.awt.font.FontRenderContext;
import java.awt.geom.AffineTransform;

/** Render-test shim on Java2D (DejaVu Sans stands in for Roboto). */
public class Paint {
    public static final int ANTI_ALIAS_FLAG = 1, FILTER_BITMAP_FLAG = 2;

    public enum Style { FILL, STROKE }

    public enum Cap { BUTT, ROUND, SQUARE }

    public static class FontMetrics {
        public float ascent, descent;
    }

    int color = 0xFF000000;
    Style style = Style.FILL;
    float stroke = 1, size = 12, spacing;
    Cap cap = Cap.BUTT;
    boolean bold;
    static final FontRenderContext FRC = new FontRenderContext(new AffineTransform(), true, true);

    public Paint(int flags) {}

    public void setColor(int c) { color = c; }

    public void setStyle(Style s) { style = s; }

    public void setStrokeWidth(float w) { stroke = w; }

    public void setStrokeCap(Cap c) { cap = c; }

    public void setTypeface(Typeface t) { bold = t.bold; }

    public void setTextSize(float s) { size = s; }

    public void setLetterSpacing(float s) { spacing = s; }

    Font font() {
        Font f = new Font("DejaVu Sans", bold ? Font.BOLD : Font.PLAIN, 1).deriveFont(size);
        if (spacing != 0) {
            java.util.Map<java.awt.font.TextAttribute, Object> m = new java.util.HashMap<java.awt.font.TextAttribute, Object>();
            m.put(java.awt.font.TextAttribute.TRACKING, spacing);
            f = f.deriveFont(m);
        }
        return f;
    }

    public float measureText(String s) { return (float) font().getStringBounds(s, FRC).getWidth(); }

    public FontMetrics getFontMetrics() {
        java.awt.font.LineMetrics lm = font().getLineMetrics("Ag", FRC);
        FontMetrics m = new FontMetrics();
        m.ascent = -lm.getAscent();
        m.descent = lm.getDescent();
        return m;
    }
}
