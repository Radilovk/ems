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
        FaceArt.Scene s = new FaceArt.Scene();
        s.nogo = true;
        s.placing = false;
        svg(new File(out, "cheek-place.svg"), s, true);
        s = new FaceArt.Scene();
        s.level[0] = 1f;
        s.level[1] = 1f;
        s.t = 0.3f;
        svg(new File(out, "cheek-lift.svg"), s, true);
        s = new FaceArt.Scene();
        s.level[0] = 0.6f;
        s.level[1] = 0f;
        s.side[1] = false;
        s.t = 0.6f;
        svg(new File(out, "cheek-one-side.svg"), s, false);
        s = new FaceArt.Scene();
        s.target = FaceProgram.CHIN;
        s.nogo = true;
        s.level[0] = 0.8f;
        s.level[1] = 0.8f;
        svg(new File(out, "chin.svg"), s, true);
        s = new FaceArt.Scene();
        s.target = -1;
        svg(new File(out, "face.svg"), s, false);
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
        for (int side = 0; side < 2; side++) {
            float[][] p = FaceArt.cheekPads(side);
            float d = dist(p[0], p[1]) / cm;
            check(d >= 2.0f && d <= 3.5f, "pads " + d + " cm apart");
            float[] can = {side == 0 ? 2 * FaceArt.AXIS - FaceArt.CANTHUS[0] : FaceArt.CANTHUS[0], FaceArt.CANTHUS[1]};
            float e = dist(p[0], can) / cm;
            check(e >= 2.0f, "upper pad " + e + " cm from the eye corner");
            float ex = Math.abs(p[0][0] - (side == 0 ? 2 * FaceArt.AXIS - FaceArt.EYE[0] : FaceArt.EYE[0])) / FaceArt.EYE_RX;
            float ey = Math.abs(p[0][1] - FaceArt.EYE[1]) / FaceArt.EYE_RY;
            check(ex * ex + ey * ey > 1, "upper pad outside the eye zone");
            float t = dist(p[0], new float[] {side == 0 ? 2 * FaceArt.AXIS - FaceArt.TRUNK[0] : FaceArt.TRUNK[0], FaceArt.TRUNK[1]}) / cm;
            check(t >= 1.5f, "upper pad " + t + " cm from the nerve trunk");
            float[] mouth = {side == 0 ? 2 * FaceArt.AXIS - FaceArt.MOUTH[0] : FaceArt.MOUTH[0], FaceArt.MOUTH[1]};
            float lip = dist(p[1], mouth) / cm;
            check(lip >= 1.2f, "lower pad " + lip + " cm from the mouth corner");
        }
        float n = dist(FaceArt.CHIN_PAD_R, FaceArt.NECK) / cm;
        check(n >= 2.0f, "chin pad " + n + " cm from the side of the neck");
        float len = dist(FaceArt.ZM_O, FaceArt.ZM_I) / cm;
        check(len > 4.0f && len < 7.5f, "zygomaticus " + len + " cm");
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
