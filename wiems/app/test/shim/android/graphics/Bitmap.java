package android.graphics;

import java.awt.image.BufferedImage;

/** Render-test shim on a BufferedImage (ARGB, not premultiplied). */
public class Bitmap {
    public enum Config { ARGB_8888 }

    final BufferedImage img;

    Bitmap(BufferedImage img) { this.img = img; }

    public static Bitmap createBitmap(int w, int h, Config c) { return new Bitmap(new BufferedImage(w, h, BufferedImage.TYPE_INT_ARGB)); }

    public int getWidth() { return img.getWidth(); }

    public int getHeight() { return img.getHeight(); }

    public void getPixels(int[] px, int off, int stride, int x, int y, int w, int h) { img.getRGB(x, y, w, h, px, off, stride); }

    public void setPixels(int[] px, int off, int stride, int x, int y, int w, int h) { img.setRGB(x, y, w, h, px, off, stride); }

    public void recycle() {}
}
