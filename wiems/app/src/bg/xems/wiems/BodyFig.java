package bg.xems.wiems;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;

import java.io.InputStream;

/**
 * One XEMS body figure (the tablet's anatomical art, branding/body: female / male, front / back) with its zone map:
 * art = the grey figure, idx = R channel + 1 (1..10 the XEMS suit channels), G shade, B coverage
 * (scripts/gen-body-figures.py). The zones are recoloured like the tablet's live board (ai/AutoViews.BodyHeat): the
 * shade keeps the muscle's volume, the colour is XBody's red, as strong as the zone's impulse now.
 */
final class BodyFig {
    /** idx R − 1 (XEMS order: Гърди, Корем, Предно бедро, Прасец, Ръце, Трапец, Гръб, Кръст, Седалище, Задно бедро) → screen zone. */
    static final int[] XEMS_TO_ZONE = {7, 3, 0, 9, 8, 6, 5, 4, 2, 1};

    Bitmap art, over;
    int w, h;
    private int[] idx, px;
    private byte[] zone, shade, cov, map;
    private String painted = "";

    static BodyFig load(Host host, String key) {
        BodyFig f = new BodyFig();
        try {
            f.art = lighten(decode(host, "body/" + key + "-art.webp", false));
            Bitmap ix = decode(host, "body/" + key + "-idx.webp", false);
            if (f.art == null || ix == null) return null;
            f.w = ix.getWidth();
            f.h = ix.getHeight();
            int[] all = new int[f.w * f.h];
            ix.getPixels(all, 0, f.w, 0, 0, f.w, f.h);
            ix.recycle();
            int n = 0;
            for (int p : all) if (zoneOf(p) >= 0) n++;
            f.idx = new int[n];
            f.zone = new byte[n];
            f.shade = new byte[n];
            f.cov = new byte[n];
            f.map = new byte[f.w * f.h];
            int j = 0;
            for (int i = 0; i < all.length; i++) {
                int z = zoneOf(all[i]);
                if (z < 0) continue;
                f.map[i] = (byte) (z + 1);
                f.idx[j] = i;
                f.zone[j] = (byte) z;
                f.shade[j] = (byte) ((all[i] >> 8) & 0xFF);
                f.cov[j] = (byte) (all[i] & 0xFF);
                j++;
            }
            f.px = new int[f.w * f.h];
            f.over = Bitmap.createBitmap(f.w, f.h, Bitmap.Config.ARGB_8888);
            return f;
        } catch (Throwable t) {
            android.util.Log.e("xems-wiems", "figure " + key + ": " + t);
            return null;
        }
    }

    /**
     * The tablet's figures are near black; on XBody's light screen they weighed too much (owner): lifted to a light,
     * slightly cool grey (85 + 0.65·v, blue +6) — the muscles keep their volume, the red of a working zone stands out.
     */
    static int lift(int argb) {
        int r = (argb >> 16) & 0xFF, g = (argb >> 8) & 0xFF, b = argb & 0xFF;
        r = 85 + r * 65 / 100;
        g = 85 + g * 65 / 100;
        b = Math.min(255, 91 + b * 65 / 100);
        return (argb & 0xFF000000) | (r << 16) | (g << 8) | b;
    }

    private static Bitmap lighten(Bitmap a) {
        if (a == null) return null;
        int w = a.getWidth(), h = a.getHeight();
        int[] px = new int[w * h];
        a.getPixels(px, 0, w, 0, 0, w, h);
        for (int i = 0; i < px.length; i++) px[i] = lift(px[i]);
        Bitmap out = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888);
        out.setPixels(px, 0, w, 0, 0, w, h);
        a.recycle();
        return out;
    }

    private static Bitmap decode(Host host, String asset, boolean premultiplied) throws java.io.IOException {
        InputStream in = host.openAsset(asset);
        if (in == null) return null;
        try {
            BitmapFactory.Options o = new BitmapFactory.Options();
            o.inScaled = false;
            o.inPreferredConfig = Bitmap.Config.ARGB_8888;
            o.inPremultiplied = premultiplied;
            return BitmapFactory.decodeStream(in, null, o);
        } finally {
            in.close();
        }
    }

    /** Screen zone of an idx pixel (−1: none, the deltoid included — no WiEMS channel). */
    static int zoneOf(int p) {
        int r = (p >> 16) & 0xFF;
        if ((p & 0xFF) <= 8) return -1;
        return r >= 1 && r <= 10 ? XEMS_TO_ZONE[r - 1] : -1;
    }

    /** Screen zone under a point of the figure (fractions of its width / height); −1 = none. */
    int zoneAt(float fx, float fy) {
        int x = (int) (fx * w), y = (int) (fy * h);
        for (int r = 0; r <= 6; r += 3)            // a finger is wider than a pixel: look around a little
            for (int dy = -r; dy <= r; dy += Math.max(1, r))
                for (int dx = -r; dx <= r; dx += Math.max(1, r)) {
                    int xx = x + dx, yy = y + dy;
                    if (xx < 0 || yy < 0 || xx >= w || yy >= h) continue;
                    int z = map[yy * w + xx] - 1;
                    if (z >= 0) return z;
                }
        return -1;
    }

    /** Recolour the zones: colour and opacity (0..1) per screen zone; skipped when nothing changed. */
    void paint(int[] color, float[] alpha) {
        StringBuilder k = new StringBuilder();
        for (int z = 0; z < color.length; z++) k.append(color[z]).append(':').append((int) (alpha[z] * 100)).append(',');
        String key = k.toString();
        if (key.equals(painted)) return;
        painted = key;
        java.util.Arrays.fill(px, 0);
        for (int j = 0; j < idx.length; j++) {
            int z = zone[j];
            float a = alpha[z];
            if (a <= 0f) continue;
            px[idx[j]] = shadeOf(color[z], (shade[j] & 0xFF) / 255f, (int) ((cov[j] & 0xFF) * a));
        }
        over.setPixels(px, 0, w, 0, 0, w, h);
    }

    /** The report's recolour: the shade keeps the volume (dark → black, mid → the colour, light → white). */
    static int shadeOf(int c, float l, int alpha) {
        l = 0.22f + 0.78f * l;                     // softer darks: the lighter figure, the red stays red
        int r = (c >> 16) & 0xFF, g = (c >> 8) & 0xFF, b = c & 0xFF;
        if (l < 0.5f) {
            r = (int) (r * 2 * l);
            g = (int) (g * 2 * l);
            b = (int) (b * 2 * l);
        } else {
            float k2 = (2 * l - 1) * 0.55f;
            r = (int) (r + (255 - r) * k2);
            g = (int) (g + (255 - g) * k2);
            b = (int) (b + (255 - b) * k2);
        }
        return (alpha << 24) | (r << 16) | (g << 8) | b;
    }
}
