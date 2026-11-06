package com.isaigu.gymapp.wearable.face;

import java.util.ArrayList;
import java.util.List;

/**
 * The anatomy layer of the face studio (docs/xems-face.md) — pure Java, no Android. It is drawn over the owner's
 * picture ({@code branding/face/face.webp} → assets/xems/face/face.webp, {@link #W} × {@link #H} px), in that picture's
 * pixels: a list of primitives (paths and labels with a role). {@link FaceView} paints them on the tablet,
 * scripts/face-sim renders the same list over the picture to check it without a device.
 *
 * Landmarks measured on the picture (front view; ≈ {@link #CM} px = 1 cm from the distance between the pupils):
 * the zygomaticus major runs from the cheekbone (origin, under the outer eye corner) to the modiolus beside the
 * mouth corner; the cheek pads sit on that line. Keep-out: 2 cm around the eye, the nerve trunk in front of the
 * ear, the side of the neck (carotid sinus). The sides are mirrored about {@link #AXIS}.
 */
public final class FaceArt {
    /** The picture's size and its scale. */
    public static final int W = 1199, H = 1312;
    public static final float CM = 46f;
    public static final float AXIS = 600f;

    // ---------------------------------------------------------------- roles (the painter picks colour and width)
    public static final int MUSCLE = 6;
    public static final int FIBRE = 7;
    public static final int GLOW = 8;
    public static final int NOGO = 9;
    public static final int PAD = 10;
    public static final int PAD_LINE = 11;
    public static final int LABEL = 12;
    public static final int ARROW = 13;
    public static final int SPARK = 14;
    public static final int RIPPLE = 15;
    public static final int CORNER = 17;
    /** Fluid moving towards the lymph nodes (drainage). */
    public static final int FLOW = 18;

    // path commands in a float[]: M x y | L x y | C x1 y1 x2 y2 x y | Z
    public static final float M = 0, L = 1, C = 2, Z = 3;

    /** What to draw. */
    public static final class Scene {
        /** {@link FaceProgram#CHEEK} or {@link FaceProgram#CHIN}; −1 = the picture only. */
        public int target = FaceProgram.CHEEK;
        /** Contraction 0…1 per side: [0] = the person's right (viewer's left), [1] = the person's left. */
        public final float[] level = new float[2];
        /** A side with no pad (Bluetens with one pad) is drawn dim. */
        public final boolean[] side = {true, true};
        public boolean pads = true;
        public boolean nogo;
        /** The muscle is shown (program pick, work); off = only the pads (a calm placement view). */
        public boolean muscle = true;
        /** Seconds, for the moving parts (impulses along the fibres, ripples, the blinking pads). */
        public float t;
        public int hz = 70;
        /** The placement step: the pads blink with their numbers. */
        public boolean placing;
        /** The run: the pads only as outlines, so the working muscle shows through. */
        public boolean outline;
        /** Drainage: the fluid's way to the nodes in front of the ear and under the jaw. */
        public boolean drain;
        /** A sensory current (no contraction): the nerves shimmer, nothing shortens. */
        public boolean sensory;
        /** XEMS on the forehead: both arm cables → a pair on each half (else one pair across the middle). */
        public boolean pairs2;
    }

    /** One primitive: a path (or a label) with its role, opacity and width factor. */
    public static final class Prim {
        public final int role;
        public final float[] path;
        public final String text;
        public final float x;
        public final float y;
        public float alpha = 1f;
        public float width = 1f;
        public boolean fill;
        public boolean dashed;

        Prim(int role, float[] path, boolean fill) {
            this.role = role;
            this.path = path;
            this.fill = fill;
            this.text = null;
            this.x = 0;
            this.y = 0;
        }

        Prim(int role, String text, float x, float y) {
            this.role = role;
            this.path = null;
            this.text = text;
            this.x = x;
            this.y = y;
        }
    }

    private FaceArt() {}

    // ---------------------------------------------------------------- landmarks (viewer's right side; the other mirrors)

    /** Zygomaticus major: origin on the cheekbone, insertion at the modiolus. */
    public static final float[] ZM_O = {815, 690};
    public static final float[] ZM_I = {722, 858};
    /** Mouth corner at rest. */
    public static final float[] MOUTH = {710, 872};
    /** Outer eye corner. */
    public static final float[] CANTHUS = {840, 550};
    /** Cheek pads along the muscle: fraction from origin to insertion. */
    public static final float PAD_UP = 0.12f, PAD_DOWN = 0.70f;
    /** Eye centre and the keep-out ellipse (2 cm beyond the eye). */
    public static final float[] EYE = {760, 566};
    public static final float EYE_RX = 80 + 2 * CM, EYE_RY = 24 + 2 * CM;
    /** Nerve trunk in front of the ear. */
    public static final float[] TRUNK = {884, 712};
    /** Side of the neck (carotid sinus). */
    public static final float[] NECK = {748, 1168};
    /** Under the chin: the two pads (viewer's left, right). */
    public static final float[] CHIN_PAD_L = {552, 1082}, CHIN_PAD_R = {648, 1082};
    /** Forehead (frontalis, sensory nerves above the brows): pads ≥ 2 cm above the brows, below the hair. */
    public static final float[] FOREHEAD_PAD = {675, 342};
    public static final float[] FOREHEAD_PAIR = {675, 342, 772, 342};
    /** Masseter (viewer's right): the muscle from the zygomatic arch to the jaw angle, and its two pads. */
    public static final float[] MASS_TOP = {850, 735}, MASS_LOW = {806, 915};
    public static final float[] JAW_PAD_UP = {836, 772}, JAW_PAD_LOW = {813, 872};
    /** Lymph nodes the drainage pumps towards: in front of the ear, under the jaw (viewer's right). */
    public static final float[] NODE_EAR = {872, 690}, NODE_JAW = {790, 965};
    /** How far the insertion moves towards the origin at full contraction (share of the muscle length). */
    public static final float SHORTEN = 0.11f;
    /** Pad half sizes, true to scale: 19 mm across the muscle, 16 mm along it. */
    public static final float PAD_HW = 0.95f * CM, PAD_HH = 0.8f * CM;

    static float mx(float x) {
        return 2 * AXIS - x;
    }

    /** The cheek pad centres for one side (0 = viewer's left = person's right, 1 = viewer's right). */
    public static float[][] cheekPads(int side) {
        float[][] p = {lerp(ZM_O, ZM_I, PAD_UP), lerp(ZM_O, ZM_I, PAD_DOWN)};
        if (side == 0) {
            p[0][0] = mx(p[0][0]);
            p[1][0] = mx(p[1][0]);
        }
        return p;
    }

    static float[] lerp(float[] a, float[] b, float t) {
        return new float[] {a[0] + (b[0] - a[0]) * t, a[1] + (b[1] - a[1]) * t};
    }

    // ---------------------------------------------------------------- the scene

    public static List<Prim> compose(Scene s) {
        List<Prim> out = new ArrayList<Prim>();
        if (s.nogo) {
            nogo(out, s);
        }
        if (s.target == FaceProgram.CHIN && s.muscle) {
            chin(out, s);
        }
        if (s.target == FaceProgram.CHEEK && s.muscle) {
            for (int side = 0; side < 2; side++) {
                zygomaticus(out, s, side);
                if (s.drain) {
                    flow(out, s, side);
                } else {
                    lift(out, s, side);
                }
            }
        }
        if (s.target == FaceProgram.FOREHEAD && s.muscle) {
            forehead(out, s);
        }
        if (s.target == FaceProgram.JAW && s.muscle) {
            for (int side = 0; side < 2; side++) {
                masseter(out, s, side);
            }
        }
        if (s.pads && s.target >= 0) {
            pads(out, s);
        }
        return out;
    }

    // ---------------------------------------------------------------- muscles

    /** The zygomaticus major of one side: a spindle from origin to insertion, its fibres, impulses, glow. */
    private static void zygomaticus(List<Prim> out, Scene s, int side) {
        float lv = s.level[side];
        boolean on = s.side[side];
        float[] o = ZM_O.clone();
        float[] i = lerp(ZM_I, ZM_O, SHORTEN * lv);
        if (side == 0) {
            o[0] = mx(o[0]);
            i[0] = mx(i[0]);
        }
        float dx = i[0] - o[0];
        float dy = i[1] - o[1];
        float len = (float) Math.sqrt(dx * dx + dy * dy);
        float nx = -dy / len;
        float ny = dx / len;
        float belly = 0.42f * CM * (1 + 0.3f * lv);
        float[] m = lerp(o, i, 0.45f);
        float[] spindle = {M, o[0] + nx * belly * 0.7f, o[1] + ny * belly * 0.7f,
                C, m[0] + nx * belly * 1.2f - dx * 0.2f, m[1] + ny * belly * 1.2f - dy * 0.2f,
                m[0] + nx * belly + dx * 0.25f, m[1] + ny * belly + dy * 0.25f, i[0] + nx * belly * 0.4f, i[1] + ny * belly * 0.4f,
                C, i[0] + dx * 0.05f, i[1] + dy * 0.05f, i[0] + dx * 0.05f, i[1] + dy * 0.05f, i[0] - nx * belly * 0.4f, i[1] - ny * belly * 0.4f,
                C, m[0] - nx * belly + dx * 0.25f, m[1] - ny * belly + dy * 0.25f,
                m[0] - nx * belly * 1.2f - dx * 0.2f, m[1] - ny * belly * 1.2f - dy * 0.2f, o[0] - nx * belly * 0.7f, o[1] - ny * belly * 0.7f,
                C, o[0] - dx * 0.07f, o[1] - dy * 0.07f, o[0] - dx * 0.07f, o[1] - dy * 0.07f, o[0] + nx * belly * 0.7f, o[1] + ny * belly * 0.7f,
                Z};
        float dim = on ? 1f : 0.35f;
        if (lv > 0.02f && on) {
            Prim g = new Prim(GLOW, spindle, true);
            g.alpha = lv;
            out.add(g);
        }
        Prim body = new Prim(MUSCLE, spindle, true);
        body.alpha = (0.38f + 0.5f * lv) * dim;
        out.add(body);
        for (int k = -2; k <= 2; k++) {
            float off = k * belly * 0.38f;
            float[] f = {M, o[0] + nx * off * 0.6f, o[1] + ny * off * 0.6f,
                    C, m[0] + nx * off * 1.05f - dx * 0.12f, m[1] + ny * off * 1.05f - dy * 0.12f,
                    m[0] + nx * off + dx * 0.2f, m[1] + ny * off + dy * 0.2f,
                    i[0] + nx * off * 0.35f, i[1] + ny * off * 0.35f};
            Prim fp = new Prim(FIBRE, f, false);
            fp.alpha = (0.45f + 0.55f * lv) * dim;
            fp.width = 0.8f + 0.5f * lv;
            out.add(fp);
        }
        // the impulse along the fibres: sparks running to the origin, faster at a higher rate
        if (lv > 0.05f && on) {
            float speed = 0.35f + s.hz / 120f;
            for (int k = 0; k < 4; k++) {
                float ph = frac(s.t * speed + k * 0.25f);
                float[] p = lerp(i, o, ph);
                float off = ((k % 2) * 2 - 1) * belly * 0.35f * (float) Math.sin(ph * Math.PI);
                Prim sp = new Prim(SPARK, circle(p[0] + nx * off, p[1] + ny * off, 4f + 2.5f * lv), true);
                sp.alpha = lv * (float) Math.sin(ph * Math.PI);
                out.add(sp);
            }
        }
    }

    /** The lift: the mouth corner pulled up along the muscle (a glowing point and a curved arrow). */
    private static void lift(List<Prim> out, Scene s, int side) {
        float lv = s.level[side];
        if (lv < 0.1f || !s.side[side]) {
            return;
        }
        float px = MOUTH[0] + (ZM_O[0] - ZM_I[0]) * SHORTEN * lv;
        float py = MOUTH[1] + (ZM_O[1] - ZM_I[1]) * SHORTEN * lv;
        Prim c = new Prim(CORNER, circle(side == 0 ? mx(px) : px, py, 7), true);
        c.alpha = lv;
        out.add(c);
        float[] a = {M, 742, 900, C, 800, 892, 846, 836, 860, 760};
        float[] head = {M, 845, 776, L, 860, 758, L, 872, 780};
        Prim p = new Prim(ARROW, side == 0 ? mirror(a) : a, false);
        p.alpha = lv;
        p.dashed = true;
        out.add(p);
        Prim h = new Prim(ARROW, side == 0 ? mirror(head) : head, false);
        h.alpha = lv;
        out.add(h);
    }

    /** Under the chin: the two anterior digastric bellies over the mylohyoid sheet, chin → hyoid. */
    private static void chin(List<Prim> out, Scene s) {
        float lv = Math.max(s.level[0], s.level[1]);
        float up = 0.25f * CM * lv;
        float[] sheet = {M, 572, 1050, C, 590, 1056, 610, 1056, 628, 1050, L, 668, 1116 - up,
                C, 640, 1128 - up, 560, 1128 - up, 532, 1116 - up, Z};
        Prim sh = new Prim(MUSCLE, sheet, true);
        sh.alpha = 0.22f + 0.35f * lv;
        out.add(sh);
        for (int side = 0; side < 2; side++) {
            float[] b = {M, 588, 1050, C, 572, 1064, 556, 1088, 548, 1116 - up, C, 560, 1122 - up, 574, 1110 - up, 596, 1056, Z};
            float[] path = side == 1 ? mirror(b) : b;
            if (lv > 0.02f) {
                Prim g = new Prim(GLOW, path, true);
                g.alpha = lv;
                out.add(g);
            }
            Prim m = new Prim(MUSCLE, path, true);
            m.alpha = 0.45f + 0.5f * lv;
            out.add(m);
        }
    }

    /** Drainage: drops of fluid running from the cheek to the node in front of the ear and to the one under the jaw. */
    private static void flow(List<Prim> out, Scene s, int side) {
        float lv = s.level[side];
        if (!s.side[side]) {
            return;
        }
        float[] from = lerp(ZM_O, ZM_I, 0.5f);
        float[][] to = {NODE_EAR, NODE_JAW};
        for (int k = 0; k < 2; k++) {
            float[] a = from.clone();
            float[] b = to[k].clone();
            if (side == 0) {
                a[0] = mx(a[0]);
                b[0] = mx(b[0]);
            }
            float[] line = {M, a[0], a[1], L, b[0], b[1]};
            Prim p = new Prim(ARROW, line, false);
            p.dashed = true;
            p.alpha = 0.35f + 0.4f * lv;
            p.width = 0.6f;
            out.add(p);
            Prim node = new Prim(FLOW, circle(b[0], b[1], 0.22f * CM), false);
            node.alpha = 0.5f + 0.5f * lv;
            out.add(node);
            for (int d = 0; d < 3; d++) {
                float ph = frac(s.t * (0.45f + 0.5f * lv) + d / 3f);
                float[] q = lerp(a, b, ph);
                Prim drop = new Prim(SPARK, circle(q[0], q[1], 4.5f), true);
                drop.alpha = (0.35f + 0.65f * lv) * (float) Math.sin(ph * Math.PI);
                out.add(drop);
            }
        }
    }

    /** Forehead: the frontalis as a soft sheet; a sensory current makes it shimmer around the pads (no contraction). */
    private static void forehead(List<Prim> out, Scene s) {
        float lv = Math.max(s.level[0], s.level[1]);
        float[] sheet = {M, 600, 262, C, 700, 262, 800, 300, 820, 380, C, 760, 410, 680, 420, 620, 425,
                L, 580, 425, C, 520, 420, 440, 410, 380, 380, C, 400, 300, 500, 262, 600, 262, Z};
        if (lv > 0.02f) {
            Prim g = new Prim(GLOW, sheet, true);
            g.alpha = 0.35f * lv;
            out.add(g);
        }
        Prim m = new Prim(MUSCLE, sheet, true);
        m.alpha = 0.18f + 0.12f * lv;
        out.add(m);
        for (int k = -3; k <= 3; k++) {
            float x = 600 + k * 52;
            float[] f = {M, x, 280 + Math.abs(k) * 10, C, x + k * 4, 330, x + k * 6, 380, x + k * 8, 418 - Math.abs(k) * 4};
            Prim fp = new Prim(FIBRE, f, false);
            fp.alpha = 0.3f + 0.2f * lv;
            fp.width = 0.7f;
            out.add(fp);
        }
        if (lv > 0.05f) {
            // the tingle: quick sparks scattered over the forehead
            for (int k = 0; k < 10; k++) {
                float ph = frac(s.t * 1.7f + k * 0.137f);
                float x = 430 + frac(k * 0.618f + 0.11f) * 340;
                float y = 300 + frac(k * 0.382f + s.t * 0.05f) * 100;
                Prim sp = new Prim(SPARK, circle(x, y, 3.5f), true);
                sp.alpha = lv * (float) Math.sin(ph * Math.PI);
                out.add(sp);
            }
        }
    }

    /** Masseter: a thick spindle from the zygomatic arch to the jaw angle; the bursts beat in it. */
    private static void masseter(List<Prim> out, Scene s, int side) {
        float lv = s.level[side];
        boolean on = s.side[side];
        float[] o = MASS_TOP.clone();
        float[] i = MASS_LOW.clone();
        if (side == 0) {
            o[0] = mx(o[0]);
            i[0] = mx(i[0]);
        }
        float dx = i[0] - o[0];
        float dy = i[1] - o[1];
        float len = (float) Math.sqrt(dx * dx + dy * dy);
        float nx = -dy / len;
        float ny = dx / len;
        float w = 0.6f * CM;
        float[] m = lerp(o, i, 0.5f);
        float[] sp = {M, o[0] + nx * w * 0.6f, o[1] + ny * w * 0.6f,
                C, m[0] + nx * w * 1.2f, m[1] + ny * w * 1.2f, m[0] + nx * w * 1.1f, m[1] + ny * w * 1.1f, i[0] + nx * w * 0.7f, i[1] + ny * w * 0.7f,
                L, i[0] - nx * w * 0.7f, i[1] - ny * w * 0.7f,
                C, m[0] - nx * w * 1.1f, m[1] - ny * w * 1.1f, m[0] - nx * w * 1.2f, m[1] - ny * w * 1.2f, o[0] - nx * w * 0.6f, o[1] - ny * w * 0.6f, Z};
        float dim = on ? 1f : 0.35f;
        if (lv > 0.02f && on) {
            Prim g = new Prim(GLOW, sp, true);
            g.alpha = 0.6f * lv;
            out.add(g);
        }
        Prim body = new Prim(MUSCLE, sp, true);
        body.alpha = (0.3f + 0.35f * lv) * dim;
        out.add(body);
        for (int k = -2; k <= 2; k++) {
            float off = k * w * 0.4f;
            float[] f = {M, o[0] + nx * off * 0.6f, o[1] + ny * off * 0.6f, L, i[0] + nx * off * 0.8f, i[1] + ny * off * 0.8f};
            Prim fp = new Prim(FIBRE, f, false);
            fp.alpha = (0.35f + 0.5f * lv) * dim;
            fp.width = 0.7f;
            out.add(fp);
        }
    }

    // ---------------------------------------------------------------- pads and keep-out zones

    private static void pads(List<Prim> out, Scene s) {
        float blink = s.placing ? 0.55f + 0.45f * (float) Math.sin(s.t * 4) : 1f;
        if (s.target == FaceProgram.CHIN) {
            pad(out, s, CHIN_PAD_L, 0, 1, blink, true, 0);
            pad(out, s, CHIN_PAD_R, 0, 2, blink, true, 1);
            return;
        }
        if (s.target == FaceProgram.FOREHEAD) {
            if (s.pairs2) {
                for (int side = 0; side < 2; side++) {
                    float a = side == 0 ? mx(FOREHEAD_PAIR[2]) : FOREHEAD_PAIR[0];
                    float b = side == 0 ? mx(FOREHEAD_PAIR[0]) : FOREHEAD_PAIR[2];
                    pad(out, s, new float[] {a, FOREHEAD_PAIR[1]}, 0, 1, blink, s.side[side], side);
                    pad(out, s, new float[] {b, FOREHEAD_PAIR[1]}, 0, 2, blink, s.side[side], side);
                }
            } else {
                pad(out, s, new float[] {mx(FOREHEAD_PAD[0]), FOREHEAD_PAD[1]}, 0, 1, blink, true, 0);
                pad(out, s, FOREHEAD_PAD, 0, 2, blink, true, 1);
            }
            return;
        }
        if (s.target == FaceProgram.JAW) {
            for (int side = 0; side < 2; side++) {
                float ang = (float) Math.toDegrees(Math.atan2(MASS_LOW[1] - MASS_TOP[1], (MASS_LOW[0] - MASS_TOP[0]) * (side == 0 ? -1 : 1)));
                float[] u = JAW_PAD_UP.clone();
                float[] d = JAW_PAD_LOW.clone();
                if (side == 0) {
                    u[0] = mx(u[0]);
                    d[0] = mx(d[0]);
                }
                pad(out, s, u, ang, 1, blink, s.side[side], side);
                pad(out, s, d, ang, 2, blink, s.side[side], side);
            }
            return;
        }
        for (int side = 0; side < 2; side++) {
            float[][] p = cheekPads(side);
            float ang = (float) Math.toDegrees(Math.atan2(ZM_I[1] - ZM_O[1], (ZM_I[0] - ZM_O[0]) * (side == 0 ? -1 : 1)));
            pad(out, s, p[0], ang, 1, blink, s.side[side], side);
            pad(out, s, p[1], ang, 2, blink, s.side[side], side);
        }
    }

    /** One pad (16 × 19 mm, true size), its outline and its number; a ripple while it works. */
    private static void pad(List<Prim> out, Scene s, float[] c, float angDeg, int number, float blink, boolean on, int side) {
        float lv = s.level[side];
        if (lv > 0.05f && on) {
            float ph = frac(s.t * 1.6f);
            Prim rp = new Prim(RIPPLE, circle(c[0], c[1], PAD_HH + 0.7f * CM * ph), false);
            rp.alpha = lv * (1 - ph);
            out.add(rp);
        }
        float[] box = roundRect(c[0], c[1], PAD_HW, PAD_HH, 0.3f * CM, angDeg);
        Prim p = new Prim(PAD, box, true);
        p.alpha = (on ? (s.outline ? 0.12f : 0.55f) : 0.2f) * blink;
        out.add(p);
        Prim e = new Prim(PAD_LINE, box, false);
        e.alpha = (on ? (s.outline ? 0.7f : 1f) : 0.3f) * blink;
        e.dashed = s.outline;
        out.add(e);
        Prim l = new Prim(LABEL, String.valueOf(number), c[0], c[1]);
        l.alpha = on ? 1f : 0.4f;
        out.add(l);
    }

    private static void nogo(List<Prim> out, Scene s) {
        for (int side = 0; side < 2; side++) {
            float cx = side == 0 ? mx(EYE[0]) : EYE[0];
            if (s.target == FaceProgram.FOREHEAD) {
                Prim e = new Prim(NOGO, ellipse(cx, EYE[1], EYE_RX, EYE_RY), false);
                e.dashed = true;
                e.alpha = 0.8f;
                out.add(e);
                continue;
            }
            if (s.target == FaceProgram.JAW) {
                float tx = side == 0 ? mx(TRUNK[0]) : TRUNK[0];
                out.add(nogoMark(tx, TRUNK[1]));
                float nx = side == 0 ? mx(NECK[0]) : NECK[0];
                out.add(nogoMark(nx, NECK[1]));
                continue;
            }
            if (s.target == FaceProgram.CHEEK) {
                Prim e = new Prim(NOGO, ellipse(cx, EYE[1], EYE_RX, EYE_RY), false);
                e.dashed = true;
                e.alpha = 0.8f;
                out.add(e);
                float tx = side == 0 ? mx(TRUNK[0]) : TRUNK[0];
                out.add(nogoMark(tx, TRUNK[1]));
            }
            float nx = side == 0 ? mx(NECK[0]) : NECK[0];
            out.add(nogoMark(nx, NECK[1]));
        }
    }

    /** ⊘: a ring with a slash. */
    private static Prim nogoMark(float x, float y) {
        float r = 0.42f * CM;
        float d = r * 0.7071f;
        float[] ring = circle(x, y, r);
        float[] p = new float[ring.length + 6];
        System.arraycopy(ring, 0, p, 0, ring.length);
        int k = ring.length;
        p[k] = M;
        p[k + 1] = x - d;
        p[k + 2] = y + d;
        p[k + 3] = L;
        p[k + 4] = x + d;
        p[k + 5] = y - d;
        Prim m = new Prim(NOGO, p, false);
        m.width = 1.4f;
        return m;
    }

    // ---------------------------------------------------------------- shapes

    static float[] circle(float x, float y, float r) {
        return ellipse(x, y, r, r);
    }

    static float[] ellipse(float x, float y, float rx, float ry) {
        float k = 0.5523f;
        return new float[] {M, x + rx, y,
                C, x + rx, y + ry * k, x + rx * k, y + ry, x, y + ry,
                C, x - rx * k, y + ry, x - rx, y + ry * k, x - rx, y,
                C, x - rx, y - ry * k, x - rx * k, y - ry, x, y - ry,
                C, x + rx * k, y - ry, x + rx, y - ry * k, x + rx, y, Z};
    }

    /** A rounded rectangle centred on (x, y), half sizes hw × hh, its long side along {@code deg}. */
    static float[] roundRect(float x, float y, float hw, float hh, float r, float deg) {
        float k = 0.5523f * r;
        float[] p = {M, -hw + r, -hh, L, hw - r, -hh, C, hw - r + k, -hh, hw, -hh + r - k, hw, -hh + r,
                L, hw, hh - r, C, hw, hh - r + k, hw - r + k, hh, hw - r, hh,
                L, -hw + r, hh, C, -hw + r - k, hh, -hw, hh - r + k, -hw, hh - r,
                L, -hw, -hh + r, C, -hw, -hh + r - k, -hw + r - k, -hh, -hw + r, -hh, Z};
        double a = Math.toRadians(deg - 90);
        float cs = (float) Math.cos(a);
        float sn = (float) Math.sin(a);
        int i = 0;
        while (i < p.length) {
            float op = p[i];
            int n = op == M || op == L ? 1 : op == C ? 3 : 0;
            for (int j = 0; j < n; j++) {
                float px = p[i + 1 + j * 2];
                float py = p[i + 2 + j * 2];
                p[i + 1 + j * 2] = x + px * cs - py * sn;
                p[i + 2 + j * 2] = y + px * sn + py * cs;
            }
            i += 1 + n * 2;
        }
        return p;
    }

    /** The same path mirrored to the other side of the face. */
    static float[] mirror(float[] p) {
        float[] q = p.clone();
        int i = 0;
        while (i < q.length) {
            float op = q[i];
            int n = op == M || op == L ? 1 : op == C ? 3 : 0;
            for (int j = 0; j < n; j++) {
                q[i + 1 + j * 2] = mx(q[i + 1 + j * 2]);
            }
            i += 1 + n * 2;
        }
        return q;
    }

    static float frac(float v) {
        return v - (float) Math.floor(v);
    }
}
