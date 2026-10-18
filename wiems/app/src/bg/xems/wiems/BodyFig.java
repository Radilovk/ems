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

    Bitmap art, artDark, over, glow;
    int w, h;
    private int[] idx, px, gpx;
    private float[] gr, gg, gb, ga, tr, tg, tb, ta;
    private byte[] zone, shade, cov, map, tone;
    private String painted = "";

    static BodyFig load(Host host, String key) {
        BodyFig f = new BodyFig();
        try {
            f.art = lighten(decode(host, "body/" + key + "-art.webp", false), f);
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
                f.shade[j] = f.tone != null && f.tone.length == all.length && f.tone[i] != 0 ? f.tone[i] : (byte) ((all[i] >> 8) & 0xFF);
                f.cov[j] = (byte) (all[i] & 0xFF);
                j++;
            }
            f.px = new int[f.w * f.h];
            f.over = Bitmap.createBitmap(f.w, f.h, Bitmap.Config.ARGB_8888);
            f.glow = Bitmap.createBitmap(f.w, f.h, Bitmap.Config.ARGB_8888);
            return f;
        } catch (Throwable t) {
            android.util.Log.e("xems-wiems", "figure " + key + ": " + t);
            return null;
        }
    }

    /** The figure's tone: deep slate in the hollows → pale cool grey on the lights (the screen's slate family). */
    static final int DARK = 0xFF3F4552, LIGHT = 0xFFEEF0F4;

    /**
     * The dark theme's tone (owner, v1.16: the silver figure was the loudest thing on the dark screen): graphite, the
     * hollows near the background, the lights a muted slate — the body sits back like the screen's surfaces, and a
     * cool rim light keeps its silhouette off the near-black.
     */
    static final int G_DARK = 0xFF1B1F25, G_LIGHT = 0xFF7A828E, G_RIM = 0xFFA9B1BC;

    /**
     * The tablet's figures are near black and nearly flat: half the body sits in 52..68 of 255. A plain lift
     * (v1.2: 85 + 0.65·v) kept that 16-step range, so on XBody's light screen the body read as one grey blot
     * (owner). Now the figure's own range is spread out — its 1..99.5 % luminance stretched to slate … pale grey,
     * a third of it by its histogram so the muscles' relief opens up — after a 3×3 blur (the webp's steps would
     * show as grain), and its silhouette gets a soft slate rim so a light body still stands off the light background.
     * The tone is kept: the working zones' red follows the same volume ({@link #paint}).
     */
    private static Bitmap lighten(Bitmap a, BodyFig f) {
        if (a == null) return null;
        int w = a.getWidth(), h = a.getHeight(), n = w * h;
        int[] px = new int[n];
        a.getPixels(px, 0, w, 0, 0, w, h);
        a.recycle();
        int[] lum = new int[n];
        for (int i = 0; i < n; i++) lum[i] = (((px[i] >> 16) & 0xFF) + ((px[i] >> 8) & 0xFF) + (px[i] & 0xFF)) / 3;
        float[] l = new float[n];
        int[] hist = new int[256];
        int body = 0;
        for (int y = 0; y < h; y++)
            for (int x = 0; x < w; x++) {
                int i = y * w + x;
                if (!opaque(px[i])) continue;
                int sum = 0, k = 0;
                for (int dy = -1; dy <= 1; dy++)
                    for (int dx = -1; dx <= 1; dx++) {
                        int xx = x + dx, yy = y + dy;
                        if (xx < 0 || yy < 0 || xx >= w || yy >= h || !opaque(px[yy * w + xx])) continue;
                        sum += lum[yy * w + xx];
                        k++;
                    }
                l[i] = (float) sum / k;
                hist[Math.min(255, (int) l[i])]++;
                body++;
            }
        float[] cdf = new float[256];
        int acc = 0, lo = -1, hi = 255;
        for (int v = 0; v < 256; v++) {
            acc += hist[v];
            cdf[v] = body == 0 ? 0 : (float) acc / body;
            if (lo < 0 && cdf[v] >= 0.01f) lo = v;
            if (hi == 255 && cdf[v] >= 0.995f) hi = v;
        }
        if (lo < 0 || hi <= lo) { lo = 0; hi = 255; }
        f.tone = new byte[n];
        int[] dk = new int[n];
        for (int y = 0; y < h; y++)
            for (int x = 0; x < w; x++) {
                int i = y * w + x;
                if (!opaque(px[i])) continue;
                float lin = Math.max(0f, Math.min(1f, (l[i] - lo) / (hi - lo)));
                float t = (float) Math.pow(0.35f * cdf[Math.min(255, (int) l[i])] + 0.65f * lin, 0.85);
                f.tone[i] = (byte) (t * 255);
                int edge = edge(px, w, h, x, y);         // the rim: 1 px → 55 % slate, 2 px → 25 %
                int g = mix(G_DARK, G_LIGHT, t);         // dark: graphite, the rim lit instead of shaded
                if (edge > 0) g = mix(g, G_RIM, edge == 1 ? 0.55f : 0.22f);
                dk[i] = (px[i] & 0xFF000000) | (g & 0xFFFFFF);
                if (edge > 0) t *= edge == 1 ? 0.45f : 0.75f;
                px[i] = (px[i] & 0xFF000000) | (mix(DARK, LIGHT, t) & 0xFFFFFF);
            }
        for (int i = 0; i < n; i++) if (!opaque(px[i])) dk[i] = px[i] & 0xFF000000;
        f.artDark = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888);
        f.artDark.setPixels(dk, 0, w, 0, 0, w, h);
        Bitmap out = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888);
        out.setPixels(px, 0, w, 0, 0, w, h);
        return out;
    }

    private static boolean opaque(int argb) {
        return (argb >>> 24) > 128;
    }

    /** 1 / 2 = the distance of a body pixel from the silhouette's edge, 0 = further in. */
    private static int edge(int[] px, int w, int h, int x, int y) {
        for (int r = 1; r <= 2; r++)
            for (int dy = -r; dy <= r; dy++)
                for (int dx = -r; dx <= r; dx++) {
                    int xx = x + dx, yy = y + dy;
                    if (xx < 0 || yy < 0 || xx >= w || yy >= h || !opaque(px[yy * w + xx])) return r;
                }
        return 0;
    }

    private static int mix(int x, int y, float t) {
        int r = (int) (((x >> 16) & 0xFF) + (((y >> 16) & 0xFF) - ((x >> 16) & 0xFF)) * t);
        int g = (int) (((x >> 8) & 0xFF) + (((y >> 8) & 0xFF) - ((x >> 8) & 0xFF)) * t);
        int b = (int) ((x & 0xFF) + ((y & 0xFF) - (x & 0xFF)) * t);
        return 0xFF000000 | (r << 16) | (g << 8) | b;
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

    /**
     * Recolour the zones: colour and opacity (0..1) per screen zone; skipped when nothing changed. Dark: the red keeps
     * more of its colour on the lights (no pale pink on graphite) and {@link #glow} gets its soft halo.
     */
    void paint(int[] color, float[] alpha, boolean dark) {
        StringBuilder k = new StringBuilder(dark ? "d" : "l");
        for (int z = 0; z < color.length; z++) k.append(color[z]).append(':').append((int) (alpha[z] * 100)).append(',');
        String key = k.toString();
        if (key.equals(painted)) return;
        painted = key;
        java.util.Arrays.fill(px, 0);
        for (int j = 0; j < idx.length; j++) {
            int z = zone[j];
            float a = alpha[z];
            if (a <= 0f) continue;
            int cv = (int) ((cov[j] & 0xFF) * a);
            px[idx[j]] = dark ? shadeDark(color[z], (shade[j] & 0xFF) / 255f, cv)
                    : shadeOf(color[z], (shade[j] & 0xFF) / 255f, cv);
        }
        over.setPixels(px, 0, w, 0, 0, w, h);
        if (dark) halo();
    }

    /** The working zones' light on the dark figure: their colour, blurred wide (two box passes ≈ a soft gaussian). */
    private void halo() {
        int n = w * h;
        if (gpx == null) {
            gpx = new int[n];
            gr = new float[n]; gg = new float[n]; gb = new float[n]; ga = new float[n];
            tr = new float[n]; tg = new float[n]; tb = new float[n]; ta = new float[n];
        }
        for (int i = 0; i < n; i++) {
            float al = (px[i] >>> 24) / 255f;
            ga[i] = al;
            gr[i] = ((px[i] >> 16) & 0xFF) * al;
            gg[i] = ((px[i] >> 8) & 0xFF) * al;
            gb[i] = (px[i] & 0xFF) * al;
        }
        for (int pass = 0; pass < 2; pass++) {
            box(gr, tr, 7, true); box(tr, gr, 7, false);
            box(gg, tg, 7, true); box(tg, gg, 7, false);
            box(gb, tb, 7, true); box(tb, gb, 7, false);
            box(ga, ta, 7, true); box(ta, ga, 7, false);
        }
        for (int i = 0; i < n; i++) {
            float al = ga[i];
            if (al < 0.004f) {
                gpx[i] = 0;
                continue;
            }
            int a8 = Math.min(255, (int) (al * 0.85f * 255));
            gpx[i] = (a8 << 24) | (Math.min(255, (int) (gr[i] / al)) << 16) | (Math.min(255, (int) (gg[i] / al)) << 8)
                    | Math.min(255, (int) (gb[i] / al));
        }
        glow.setPixels(gpx, 0, w, 0, 0, w, h);
    }

    /** A box blur of radius r along rows (horizontal) or columns, src → dst. */
    private void box(float[] src, float[] dst, int r, boolean horizontal) {
        int len = horizontal ? w : h, lines = horizontal ? h : w, step = horizontal ? 1 : w;
        float k = 1f / (2 * r + 1);
        for (int ln = 0; ln < lines; ln++) {
            int base = horizontal ? ln * w : ln;
            float sum = 0;
            for (int i = -r; i <= r; i++) sum += src[base + Math.max(0, Math.min(len - 1, i)) * step];
            for (int i = 0; i < len; i++) {
                dst[base + i * step] = sum * k;
                sum += src[base + Math.min(len - 1, i + r + 1) * step] - src[base + Math.max(0, i - r) * step];
            }
        }
    }

    /** The dark theme's recolour: the hollows stay red-dark, the lights only a little paler — a saturated muscle. */
    static int shadeDark(int c, float l, int alpha) {
        l = 0.30f + 0.70f * l;
        int r = (c >> 16) & 0xFF, g = (c >> 8) & 0xFF, b = c & 0xFF;
        if (l < 0.6f) {
            float k = 0.35f + l / 0.6f * 0.65f;
            r = (int) (r * k);
            g = (int) (g * k);
            b = (int) (b * k);
        } else {
            float k2 = (l - 0.6f) / 0.4f * 0.22f;
            r = (int) (r + (255 - r) * k2);
            g = (int) (g + (255 - g) * k2);
            b = (int) (b + (255 - b) * k2);
        }
        return (alpha << 24) | (r << 16) | (g << 8) | b;
    }

    /** The report's recolour: the shade keeps the volume (dark → black, mid → the colour, light → white). */
    static int shadeOf(int c, float l, int alpha) {
        l = 0.16f + 0.84f * l;                     // the figure's tone: hollows deep, lights brighter — the red keeps its volume
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
