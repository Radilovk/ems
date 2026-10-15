package android.graphics;

import java.awt.image.BufferedImage;
import java.io.InputStream;

/** Render-test shim: ImageIO (the test converts the WebP assets to PNG first). */
public class BitmapFactory {
    public static class Options {
        public boolean inScaled = true, inPremultiplied = true;
        public Bitmap.Config inPreferredConfig;
    }

    public static Bitmap decodeStream(InputStream in) {
        return decodeStream(in, null, null);
    }

    public static Bitmap decodeStream(InputStream in, Rect pad, Options o) {
        try {
            BufferedImage src = javax.imageio.ImageIO.read(in);
            BufferedImage b = new BufferedImage(src.getWidth(), src.getHeight(), BufferedImage.TYPE_INT_ARGB);
            b.getGraphics().drawImage(src, 0, 0, null);
            return new Bitmap(b);
        } catch (java.io.IOException e) {
            return null;
        }
    }
}
