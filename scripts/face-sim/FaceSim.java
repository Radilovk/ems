import com.isaigu.gymapp.wearable.face.FaceArt;
import com.isaigu.gymapp.wearable.face.FaceProgram;

import java.io.File;
import java.io.FileOutputStream;
import java.util.List;
import java.util.Locale;

/**
 * Offline test of the face studio's pure parts (docs/xems-face.md): the drawing (FaceArt → SVG, so the picture is
 * looked at without a tablet), the anatomy distances it promises, the course and the timeline.
 * usage: java FaceSim <out dir>
 */
public class FaceSim {
    static int fails;

    static void check(boolean ok, String what) {
        if (!ok) {
            fails++;
            System.out.println("FAIL " + what);
        }
    }

    public static void main(String[] args) throws Exception {
        File out = new File(args.length > 0 ? args[0] : "face-sim-out");
        out.mkdirs();
        picture = args.length > 1 ? args[1] : null;
        anatomy();
        timeline();
        course();
        for (int id : FaceProgram.XEMS) {
            FaceProgram fp = FaceProgram.get(id);
            FaceArt.Scene s = scene(fp, true);
            s.nogo = true;
            svg(new File(out, "xems-" + id + "-place.svg"), s, true);
            s = scene(fp, true);
            s.outline = true;
            s.t = 0.3f;
            for (int site : fp.xemsSites()) {
                s.level[site] = 1f;
            }
            svg(new File(out, "xems-" + id + "-run.svg"), s, true);
        }
        for (int id : FaceProgram.BLUETENS) {
            FaceArt.Scene s = scene(FaceProgram.get(id), false);
            s.nogo = true;
            svg(new File(out, "blt-" + id + "-place.svg"), s, true);
        }
        if (fails > 0) {
            System.out.println("face sim FAILED: " + fails);
            System.exit(1);
        }
        System.out.println("face sim OK");
    }

    /**
     * What the picture promises (FaceArt.CM px = 1 cm): pads 2–3.5 cm apart on the muscle line, the upper one ≥ 2 cm
     * from the outer eye corner and outside the eye zone, clear of the nerve trunk (in projection — the side of the
     * face is foreshortened in a front view, so the real distance is larger), the chin pads ≥ 2 cm from the side of
     * the neck, the lower pad not on the lip.
     */
    static void anatomy() {
        float cm = FaceArt.CM;
        for (int site = 0; site < FaceArt.SITES; site++) {
            float[][] p = FaceArt.pads(site);
            float d = dist(p[0], p[1]) / cm;
            check(d >= 1.5f && d <= 3.6f, "site " + site + ": pads " + d + " cm apart");
            for (int k = 0; k < 2; k++) {
                for (int side = 0; side < 2; side++) {
                    float ex = Math.abs(p[k][0] - (side == 0 ? 2 * FaceArt.AXIS - FaceArt.EYE[0] : FaceArt.EYE[0])) / FaceArt.EYE_RX;
                    float ey = Math.abs(p[k][1] - FaceArt.EYE[1]) / FaceArt.EYE_RY;
                    check(ex * ex + ey * ey > 1, "site " + site + " pad " + k + " outside the eye zone");
                    float[] can = {side == 0 ? 2 * FaceArt.AXIS - FaceArt.CANTHUS[0] : FaceArt.CANTHUS[0], FaceArt.CANTHUS[1]};
                    check(dist(p[k], can) / cm >= 2.0f, "site " + site + " pad " + k + " ≥ 2 cm from the eye corner");
                    float[] tr = {side == 0 ? 2 * FaceArt.AXIS - FaceArt.TRUNK[0] : FaceArt.TRUNK[0], FaceArt.TRUNK[1]};
                    check(dist(p[k], tr) / cm >= 1.5f, "site " + site + " pad " + k + " clear of the nerve trunk " + dist(p[k], tr) / cm);
                    float[] nk = {side == 0 ? 2 * FaceArt.AXIS - FaceArt.NECK[0] : FaceArt.NECK[0], FaceArt.NECK[1]};
                    check(dist(p[k], nk) / cm >= 2.0f, "site " + site + " pad " + k + " ≥ 2 cm from the side of the neck");
                    float[] mo = {side == 0 ? 2 * FaceArt.AXIS - FaceArt.MOUTH[0] : FaceArt.MOUTH[0], FaceArt.MOUTH[1]};
                    check(site == FaceArt.CHIN || dist(p[k], mo) / cm >= 0.9f, "site " + site + " pad " + k + " not on the lip " + dist(p[k], mo) / cm);
                }
            }
        }
        // the sites a procedure uses together never overlap (the connector's 12 × 16 mm pads; Bluetens 16 × 19 mm)
        for (int id : FaceProgram.XEMS) {
            pads(FaceProgram.get(id).xemsSites(), true, "xems " + id);
            pads(FaceProgram.get(id).bluetensSites(), false, "bluetens " + id);
        }
        check((470 - FaceArt.pads(FaceArt.FOREHEAD)[0][1]) / cm >= 2.0f, "forehead pads 2 cm above the brows");
        float len = dist(FaceArt.ZM_O, FaceArt.ZM_I) / cm;
        check(len > 4.0f && len < 7.5f, "zygomaticus " + len + " cm");
    }

    static void pads(int[] sites, boolean small, String tag) {
        for (int a = 0; a < sites.length; a++) {
            for (int b = a; b < sites.length; b++) {
                for (int ka = 0; ka < 2; ka++) {
                    for (int kb = 0; kb < 2; kb++) {
                        if (a == b && ka >= kb) {
                            continue;
                        }
                        check(!overlap(corners(sites[a], ka, small), corners(sites[b], kb, small)),
                                tag + ": pads of sites " + sites[a] + "/" + ka + " and " + sites[b] + "/" + kb + " overlap");
                    }
                }
            }
        }
    }

    /** The Bluetens lift file read as a timeline: phases in order, holds ≈ 3 s, rests ≈ 6 s, the length exact. */
    static void timeline() {
        com.isaigu.gymapp.wearable.bluetens.BluetensLok lok =
                com.isaigu.gymapp.wearable.bluetens.BluetensPrograms.build(com.isaigu.gymapp.wearable.bluetens.BluetensPrograms.FACE, 10);
        com.isaigu.gymapp.wearable.face.FaceTimeline t = com.isaigu.gymapp.wearable.face.FaceTimeline.of(lok, 100);
        check(Math.abs(t.totalMs() - lok.ms()) < 2, "timeline length " + t.totalMs());
        int lastPhase = 0;
        boolean was = false;
        long since = 0;
        int holds = 0;
        for (long ms = 0; ms < t.totalMs(); ms += 50) {
            com.isaigu.gymapp.wearable.face.FaceTimeline.State st = t.at(ms);
            check(st.phase >= lastPhase, "phases go forward at " + ms);
            lastPhase = st.phase;
            check(!st.on || (st.level > 0 && st.level <= 1.0001f), "level " + st.level);
            check(!st.on || st.hz >= 20, "a hold under 20 Hz at " + ms);
            if (st.on != was) {
                long len = ms - since;
                if (was && st.phase == 1 && lastPhase == 1) {
                    holds++;
                    check(len >= 2800 && len <= 3300, "lift hold " + len + " ms");
                } else if (!was && st.phase == 1 && since > 0 && t.at(since).phase == 1) {
                    check(len >= 5800 && len <= 6200, "lift rest " + len + " ms");
                }
                was = st.on;
                since = ms;
            }
        }
        check(holds > 20, "lift holds " + holds);
        com.isaigu.gymapp.wearable.face.FaceTimeline.State c = com.isaigu.gymapp.wearable.face.FaceTimeline.cycle(1500, 3, 6, 500, 500, 70);
        check(c.on && c.level == 1f && c.leftMs == 1500, "suit cycle mid-hold");
        c = com.isaigu.gymapp.wearable.face.FaceTimeline.cycle(4000, 3, 6, 500, 500, 70);
        check(!c.on && c.leftMs == 5000, "suit cycle rest");
    }

    /** The lift course: 2 weeks × 3 then × 5 reaches the 56 planned; a 3-week break starts anew; never twice in 20 h. */
    static void course() {
        com.isaigu.gymapp.wearable.face.FaceProgram lift = com.isaigu.gymapp.wearable.face.FaceProgram.get(com.isaigu.gymapp.wearable.face.FaceProgram.LIFT);
        java.util.List<Long> t = new java.util.ArrayList<Long>();
        long day = com.isaigu.gymapp.wearable.face.FaceCourse.DAY;
        long now = 1_800_000_000_000L;
        for (int w = 0; w < 12; w++) {
            int per = w < 2 ? 3 : 5;
            for (int k = 0; k < per; k++) {
                t.add(now + w * 7 * day + k * (w < 2 ? 2 : 1) * day + 10 * 3600_000L);
            }
        }
        long end = t.get(t.size() - 1) + 3600_000L;
        com.isaigu.gymapp.wearable.face.FaceCourse.Stats st = com.isaigu.gymapp.wearable.face.FaceCourse.stats(t, lift, end);
        check(st.done == 56 && st.finished, "course " + st.done + " finished " + st.finished);
        check(st.nextMs - st.lastMs >= com.isaigu.gymapp.wearable.face.FaceCourse.MIN_GAP, "next ≥ 20 h later");
        java.util.List<Long> back = com.isaigu.gymapp.wearable.face.FaceCourse.decode(com.isaigu.gymapp.wearable.face.FaceCourse.encode(t));
        check(back.size() == t.size() && Math.abs(back.get(3) - t.get(3)) < 60000, "course round trip");
        st = com.isaigu.gymapp.wearable.face.FaceCourse.stats(t, lift, end + 30 * day);
        check(st.done == 0, "a break starts a new course");
        java.util.List<Long> one = new java.util.ArrayList<Long>();
        one.add(now);
        st = com.isaigu.gymapp.wearable.face.FaceCourse.stats(one, lift, now + 3600_000L);
        check(st.done == 1 && st.week == 1 && st.nextMs >= now + 2 * day - 4 * 3600_000L, "early weeks: every 2 days");
    }

    /** The scene of a procedure: its sites on, labelled F1… (XEMS) or 1… (Bluetens devices). */
    static FaceArt.Scene scene(FaceProgram p, boolean xems) {
        FaceArt.Scene s = new FaceArt.Scene();
        s.small = xems;
        s.drain = p.id == FaceProgram.DRAIN;
        s.sensory = p.sensory;
        int[] sites = xems ? p.xemsSites() : p.bluetensSites();
        for (int k = 0; k < sites.length; k++) {
            s.on[sites[k]] = true;
            s.label[sites[k]] = xems ? "F" + (sites[k] + 1) : String.valueOf(k + 1);
        }
        return s;
    }

    /** The four corners of a pad (picture px). */
    static float[][] corners(int site, int k, boolean small) {
        float[] c = FaceArt.pads(site)[k];
        double a = Math.toRadians(FaceArt.padAngle(site));
        float ux = (float) Math.cos(a), uy = (float) Math.sin(a);
        float hh = FaceArt.padHh(small), hw = FaceArt.padHw(small);
        float[][] q = new float[4][];
        int n = 0;
        for (int sx = -1; sx <= 1; sx += 2) {
            for (int sy = -1; sy <= 1; sy += 2) {
                q[n++] = new float[] {c[0] + ux * hh * sx - uy * hw * sy, c[1] + uy * hh * sx + ux * hw * sy};
            }
        }
        return q;
    }

    /** Separating-axis test of two rectangles given by their corners. */
    static boolean overlap(float[][] a, float[][] b) {
        float[][][] polys = {a, b};
        for (float[][] poly : polys) {
            float[][] axes = {{poly[1][0] - poly[0][0], poly[1][1] - poly[0][1]}, {poly[2][0] - poly[0][0], poly[2][1] - poly[0][1]}};
            for (float[] ax : axes) {
                float amin = Float.MAX_VALUE, amax = -Float.MAX_VALUE, bmin = Float.MAX_VALUE, bmax = -Float.MAX_VALUE;
                for (float[] v : a) {
                    float d = v[0] * ax[0] + v[1] * ax[1];
                    amin = Math.min(amin, d);
                    amax = Math.max(amax, d);
                }
                for (float[] v : b) {
                    float d = v[0] * ax[0] + v[1] * ax[1];
                    bmin = Math.min(bmin, d);
                    bmax = Math.max(bmax, d);
                }
                if (amax < bmin || bmax < amin) {
                    return false;
                }
            }
        }
        return true;
    }

    static float dist(float[] a, float[] b) {
        float dx = a[0] - b[0];
        float dy = a[1] - b[1];
        return (float) Math.sqrt(dx * dx + dy * dy);
    }

    // ---------------------------------------------------------------- SVG (the same roles FaceView paints)

    static String picture;

    static void svg(File f, FaceArt.Scene s, boolean dark) throws Exception {
        String accent = "#5eeaff";
        String rose = "#ff6f91";
        String danger = "#ff5a5a";
        StringBuilder o = new StringBuilder();
        o.append("<svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' viewBox='0 0 ")
                .append(FaceArt.W).append(' ').append(FaceArt.H).append("' width='600' height='656'>");
        o.append("<defs><filter id='glow'><feGaussianBlur stdDeviation='14'/></filter></defs>");
        if (picture != null) {
            o.append("<image href='").append(picture).append("' x='0' y='0' width='").append(FaceArt.W).append("' height='")
                    .append(FaceArt.H).append("'/>");
        } else {
            o.append("<rect width='100%' height='100%' fill='#06121e'/>");
        }
        for (FaceArt.Prim p : FaceArt.compose(s)) {
            if (p.text != null) {
                o.append(String.format(Locale.US, "<text x='%.1f' y='%.1f' font-size='38' font-family='sans-serif' font-weight='700' "
                        + "text-anchor='middle' dominant-baseline='central' fill='#04222c' opacity='%.2f'>%s</text>", p.x, p.y, p.alpha, p.text));
                continue;
            }
            String fill = "none";
            String stroke = "none";
            float w = 4f * p.width;
            float op = p.alpha;
            String extra = "";
            switch (p.role) {
                case FaceArt.MUSCLE: fill = rose; op *= 0.9f; break;
                case FaceArt.FIBRE: stroke = "#ffe1e8"; w = 2.4f * p.width; break;
                case FaceArt.GLOW: fill = rose; op *= 0.8f; extra = " filter='url(#glow)'"; break;
                case FaceArt.NOGO: stroke = danger; w = 3.4f * p.width; break;
                case FaceArt.PAD: fill = accent; op *= 0.55f; break;
                case FaceArt.PAD_LINE: stroke = "#e8fbff"; w = 3f; break;
                case FaceArt.ARROW: stroke = accent; w = 5f; break;
                case FaceArt.SPARK: fill = "#ffffff"; break;
                case FaceArt.RIPPLE: stroke = accent; w = 3f; break;
                case FaceArt.FLOW: stroke = accent; fill = accent; w = 3f; break;
                case FaceArt.CORNER: fill = "#ffffff"; extra = " filter='url(#glow)'"; break;
                default: stroke = "#ffffff"; break;
            }
            String dash = p.dashed ? " stroke-dasharray='14 10'" : "";
            o.append(String.format(Locale.US, "<path d='%s' fill='%s' stroke='%s' stroke-width='%.1f' stroke-linecap='round' "
                    + "stroke-linejoin='round' opacity='%.2f'%s%s/>", path(p.path), fill, stroke, w, Math.max(0, Math.min(1, op)), dash, extra));
        }
        o.append("</svg>");
        FileOutputStream fo = new FileOutputStream(f);
        fo.write(o.toString().getBytes("UTF-8"));
        fo.close();
    }

    static String path(float[] p) {
        StringBuilder b = new StringBuilder();
        int i = 0;
        while (i < p.length) {
            float op = p[i];
            if (op == FaceArt.M || op == FaceArt.L) {
                b.append(op == FaceArt.M ? "M" : "L").append(String.format(Locale.US, "%.1f %.1f ", p[i + 1], p[i + 2]));
                i += 3;
            } else if (op == FaceArt.C) {
                b.append(String.format(Locale.US, "C%.1f %.1f %.1f %.1f %.1f %.1f ", p[i + 1], p[i + 2], p[i + 3], p[i + 4], p[i + 5], p[i + 6]));
                i += 7;
            } else {
                b.append("Z ");
                i += 1;
            }
        }
        return b.toString();
    }
}
