package com.isaigu.gymapp.wearable.face;

import java.util.ArrayList;
import java.util.List;

/**
 * The anatomy layer of the face studio (docs/xems-face.md §9) — pure Java, no Android. It is drawn over the owner's
 * picture ({@code branding/face/face.webp} → assets/xems/face/face.webp, {@link #W} × {@link #H} px), in that picture's
 * pixels: a list of primitives (paths and labels with a role). {@link FaceView} paints them on the tablet,
 * scripts/face-sim renders the same list over the picture to check it without a device.
 *
 * Ten sites, the face connector's sockets F1–F10 ({@link #ZM_L} … {@link #CHIN}; "L" = the person's left = the
 * viewer's right, x &gt; {@link #AXIS}; the right side mirrors). Every site: its muscle, a pair of pads, a label.
 * Landmarks measured on the picture (≈ {@link #CM} px = 1 cm from the distance between the pupils). Keep-out: 2 cm
 * around the eye, the nerve trunk in front of the ear, the side of the neck.
 */
public final class FaceArt {
    /** The picture's size and its scale. */
    public static final int W = 1199, H = 1312;
    public static final float CM = 46f;
    public static final float AXIS = 600f;

    /** Sites = the face connector's sockets F1–F10 (= suit channels 0–9, AutoCatalog.F_*). */
    public static final int ZM_L = 0, ZM_R = 1, NL_L = 2, NL_R = 3, LC_L = 4, LC_R = 5, JAW_L = 6, JAW_R = 7,
            FOREHEAD = 8, CHIN = 9, SITES = 10;

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
    /** A lymph node the drainage pumps towards. */
    public static final int FLOW = 18;

    // path commands in a float[]: M x y | L x y | C x1 y1 x2 y2 x y | Z
    public static final float M = 0, L = 1, C = 2, Z = 3;

    /** What to draw. */
    public static final class Scene {
        /** The sites of the procedure. */
        public final boolean[] on = new boolean[SITES];
        /** How strongly each site works now, 0…1. */
        public final float[] level = new float[SITES];
        /** Each site's label on its pads ("F3", "2"); null = none. */
        public final String[] label = new String[SITES];
        /** A site placed but not working now (a Bluetens pad missing) is drawn dim. */
        public final boolean[] dim = new boolean[SITES];
        public boolean pads = true;
        public boolean nogo;
        /** The muscles are shown (else only the pads). */
        public boolean muscle = true;
        /** Seconds, for the moving parts. */
        public float t;
        public int hz = 70;
        /** The placement step: the pads blink with their labels. */
        public boolean placing;
        /** The run: the pads only as outlines, so the working muscle shows through. */
        public boolean outline;
        /** Drainage: the fluid's way to the nodes in front of the ear and under the jaw. */
        public boolean drain;
        /** A sensory current (no contraction): the nerves shimmer, nothing shortens. */
        public boolean sensory;
        /** The XEMS connector's small pads (12 × 16 mm) instead of the Bluetens / single-pair 16 × 19 mm. */
        public boolean small;

        public void clear() {
            for (int i = 0; i < SITES; i++) {
                on[i] = false;
                level[i] = 0;
                label[i] = null;
                dim[i] = false;
            }
        }
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

    // ---------------------------------------------------------------- landmarks (viewer's right = the person's left)

    /** Zygomaticus major: origin on the cheekbone, insertion at the modiolus. */
    public static final float[] ZM_O = {815, 690};
    public static final float[] ZM_I = {722, 858};
    /** Nasolabial lifters (zygomaticus minor · levator labii superioris): low on the muscle, ≥ 2 cm under the eye. */
    public static final float[] NL_O = {700, 690};
    public static final float[] NL_I = {678, 842};
    /** Lower cheek (risorius · buccinator): from the modiolus out towards the masseter's front edge. */
    public static final float[] LC_O = {836, 888};
    public static final float[] LC_I = {716, 900};
    /** Mouth corner at rest. */
    public static final float[] MOUTH = {710, 872};
    /** Outer eye corner. */
    public static final float[] CANTHUS = {840, 550};
    /** Eye centre and the keep-out ellipse (2 cm beyond the eye). */
    public static final float[] EYE = {760, 566};
    public static final float EYE_RX = 80 + 2 * CM, EYE_RY = 24 + 2 * CM;
    /** Nerve trunk in front of the ear; side of the neck (carotid sinus). */
    public static final float[] TRUNK = {884, 712};
    public static final float[] NECK = {748, 1168};
    /**
     * Where the face's sensory nerves leave the bone (supraorbital notch, infraorbital and mental foramina): a pad on
     * one gives a strong radiating tingle or ache with little muscle work — the pads keep ≥ 1.5 cm off (§12).
     */
    public static final float[] SUPRAORBITAL = {757, 478}, INFRAORBITAL = {748, 650}, MENTAL = {690, 985};
    public static final float[][] FORAMINA = {SUPRAORBITAL, INFRAORBITAL, MENTAL};

    /** Masseter: from the zygomatic arch to the jaw angle. */
    public static final float[] MASS_TOP = {850, 735}, MASS_LOW = {806, 915};
    /** Lymph nodes the drainage pumps towards: in front of the ear, under the jaw. */
    public static final float[] NODE_EAR = {872, 690}, NODE_JAW = {790, 965};
    /** How far an insertion moves towards its origin at full contraction (share of the muscle length). */
    public static final float SHORTEN = 0.11f;

    /** Pad half sizes: across × along the muscle — 16 × 19 mm (Bluetens, single pair) / 12 × 16 mm (connector). */
    public static float padHw(boolean small) {
        return (small ? 0.6f : 0.95f) * CM;
    }

    public static float padHh(boolean small) {
        return (small ? 0.8f : 0.8f) * CM;
    }

    static float mx(float x) {
        return 2 * AXIS - x;
    }

    /** Is the site on the person's left (drawn at x &gt; axis), right (mirrored), or the midline. */
    static int sideOf(int site) {
        if (site == FOREHEAD || site == CHIN) {
            return -1;
        }
        return site % 2 == 0 ? 1 : 0;
    }

    static float[] lerp(float[] a, float[] b, float t) {
        return new float[] {a[0] + (b[0] - a[0]) * t, a[1] + (b[1] - a[1]) * t};
    }

    static float[] at(float[] p, int site) {
        return sideOf(site) == 0 ? new float[] {mx(p[0]), p[1]} : p.clone();
    }

    /** The two pad centres of a site (picture px) and the direction of the pair (degrees). */
    public static float[][] pads(int site) {
        switch (site) {
            case FOREHEAD:
                // close (2.2 cm centre to centre): the current stays in the skin, not along the bone (§12)
                return new float[][] {{549, 342}, {651, 342}};
            case CHIN:
                return new float[][] {{552, 1082}, {648, 1082}};
            case JAW_L:
            case JAW_R:
                return new float[][] {at(new float[] {836, 772}, site), at(new float[] {813, 872}, site)};
            case NL_L:
            case NL_R:
                // low on the muscle: ≥ 2 cm from the infraorbital foramen (the nerve to the upper lip and teeth)
                return new float[][] {at(lerp(NL_O, NL_I, 0.25f), site), at(lerp(NL_O, NL_I, 0.85f), site)};
            case LC_L:
            case LC_R:
                return new float[][] {at(new float[] {814, 894}, site), at(new float[] {734, 912}, site)};
            default:
                // both pads on the muscle belly, off the cheekbone (thin tissue over bone = periosteal ache, §12)
                return new float[][] {at(lerp(ZM_O, ZM_I, 0.20f), site), at(lerp(ZM_O, ZM_I, 0.60f), site)};
        }
    }

    /** The direction of a site's pads (degrees, the long side of each pad). */
    public static float padAngle(int site) {
        float[][] p = pads(site);
        if (site == FOREHEAD || site == CHIN) {
            return 0;
        }
        return (float) Math.toDegrees(Math.atan2(p[1][1] - p[0][1], p[1][0] - p[0][0]));
    }

    // ---------------------------------------------------------------- the scene

    public static List<Prim> compose(Scene s) {
        List<Prim> out = new ArrayList<Prim>();
        if (s.nogo) {
            nogo(out, s);
        }
        if (s.muscle) {
            for (int site = 0; site < SITES; site++) {
                if (!s.on[site]) {
                    continue;
                }
                switch (site) {
                    case FOREHEAD: forehead(out, s); break;
                    case CHIN: chin(out, s); break;
                    case JAW_L:
                    case JAW_R: spindle(out, s, site, MASS_TOP, MASS_LOW, 0.6f * CM, 0f); break;
                    case NL_L:
                    case NL_R: spindle(out, s, site, NL_O, NL_I, 0.32f * CM, SHORTEN); break;
                    case LC_L:
                    case LC_R: spindle(out, s, site, LC_O, LC_I, 0.3f * CM, SHORTEN * 0.6f); break;
                    default: spindle(out, s, site, ZM_O, ZM_I, 0.42f * CM, SHORTEN); break;
                }
            }
            for (int side = 0; side < 2; side++) {
                int zm = side == 1 ? ZM_L : ZM_R;
                if (s.drain && (s.on[zm] || s.on[side == 1 ? NL_L : NL_R])) {
                    flow(out, s, side);
                } else if (s.on[zm] && !s.sensory) {
                    lift(out, s, side, zm);
                }
            }
        }
        if (s.pads) {
            for (int site = 0; site < SITES; site++) {
                if (s.on[site]) {
                    pad2(out, s, site);
                }
            }
        }
        return out;
    }

    // ---------------------------------------------------------------- muscles

    /** A muscle as a spindle from origin to insertion (drawn for the viewer's right, mirrored for the other side). */
    private static void spindle(List<Prim> out, Scene s, int site, float[] O, float[] I, float belly0, float shorten) {
        float lv = s.sensory ? 0 : s.level[site];
        float glow = s.level[site];
        boolean dim = s.dim[site];
        float[] o = at(O, site);
        float[] i = at(lerp(I, O, shorten * lv), site);
        float dx = i[0] - o[0];
        float dy = i[1] - o[1];
        float len = (float) Math.sqrt(dx * dx + dy * dy);
        float nx = -dy / len;
        float ny = dx / len;
        float belly = belly0 * (1 + 0.3f * lv);
        float[] m = lerp(o, i, 0.45f);
        float[] sp = {M, o[0] + nx * belly * 0.7f, o[1] + ny * belly * 0.7f,
                C, m[0] + nx * belly * 1.2f - dx * 0.2f, m[1] + ny * belly * 1.2f - dy * 0.2f,
                m[0] + nx * belly + dx * 0.25f, m[1] + ny * belly + dy * 0.25f, i[0] + nx * belly * 0.4f, i[1] + ny * belly * 0.4f,
                C, i[0] + dx * 0.05f, i[1] + dy * 0.05f, i[0] + dx * 0.05f, i[1] + dy * 0.05f, i[0] - nx * belly * 0.4f, i[1] - ny * belly * 0.4f,
                C, m[0] - nx * belly + dx * 0.25f, m[1] - ny * belly + dy * 0.25f,
                m[0] - nx * belly * 1.2f - dx * 0.2f, m[1] - ny * belly * 1.2f - dy * 0.2f, o[0] - nx * belly * 0.7f, o[1] - ny * belly * 0.7f,
                C, o[0] - dx * 0.07f, o[1] - dy * 0.07f, o[0] - dx * 0.07f, o[1] - dy * 0.07f, o[0] + nx * belly * 0.7f, o[1] + ny * belly * 0.7f,
                Z};
        float d = dim ? 0.35f : 1f;
        if (glow > 0.02f && !dim) {
            Prim g = new Prim(GLOW, sp, true);
            g.alpha = s.sensory ? 0.45f * glow : glow;
            out.add(g);
        }
        Prim body = new Prim(MUSCLE, sp, true);
        body.alpha = (0.36f + 0.5f * lv) * d;
        out.add(body);
        for (int k = -2; k <= 2; k++) {
            float off = k * belly * 0.38f;
            float[] f = {M, o[0] + nx * off * 0.6f, o[1] + ny * off * 0.6f,
                    C, m[0] + nx * off * 1.05f - dx * 0.12f, m[1] + ny * off * 1.05f - dy * 0.12f,
                    m[0] + nx * off + dx * 0.2f, m[1] + ny * off + dy * 0.2f,
                    i[0] + nx * off * 0.35f, i[1] + ny * off * 0.35f};
            Prim fp = new Prim(FIBRE, f, false);
            fp.alpha = (0.45f + 0.55f * lv) * d;
            fp.width = 0.8f + 0.5f * lv;
            out.add(fp);
        }
        if (glow > 0.05f && !dim) {
            // the impulse: sparks running along the fibres (a sensory current: a slow scatter)
            float speed = s.sensory ? 0.25f : 0.35f + s.hz / 120f;
            for (int k = 0; k < 4; k++) {
                float ph = frac(s.t * speed + k * 0.25f + site * 0.07f);
                float[] p = lerp(i, o, ph);
                float off = ((k % 2) * 2 - 1) * belly * 0.35f * (float) Math.sin(ph * Math.PI);
                Prim sp2 = new Prim(SPARK, circle(p[0] + nx * off, p[1] + ny * off, 4f + 2.5f * glow), true);
                sp2.alpha = glow * (float) Math.sin(ph * Math.PI);
                out.add(sp2);
            }
        }
    }

    /** The lift: the mouth corner pulled up along the cheek muscle (a glowing point and a curved arrow). */
    private static void lift(List<Prim> out, Scene s, int side, int zm) {
        float lv = s.level[zm];
        if (lv < 0.1f || s.dim[zm]) {
            return;
        }
        float px = MOUTH[0] + (ZM_O[0] - ZM_I[0]) * SHORTEN * lv;
        float py = MOUTH[1] + (ZM_O[1] - ZM_I[1]) * SHORTEN * lv;
        Prim c = new Prim(CORNER, circle(side == 0 ? mx(px) : px, py, 7), true);
        c.alpha = lv;
        out.add(c);
        float[] a = {M, 870, 860, C, 890, 830, 896, 790, 884, 742};
        float[] head = {M, 872, 760, L, 884, 740, L, 897, 760};
        Prim p = new Prim(ARROW, side == 0 ? mirror(a) : a, false);
        p.alpha = lv;
        p.dashed = true;
        out.add(p);
        Prim h = new Prim(ARROW, side == 0 ? mirror(head) : head, false);
        h.alpha = lv;
        out.add(h);
    }

    /** Drainage: drops of fluid running from the cheek to the node in front of the ear and to the one under the jaw. */
    private static void flow(List<Prim> out, Scene s, int side) {
        int zm = side == 1 ? ZM_L : ZM_R;
        int nl = side == 1 ? NL_L : NL_R;
        int lc = side == 1 ? LC_L : LC_R;
        float lv = Math.max(s.level[zm], Math.max(s.level[nl], s.level[lc]));
        float[] from = lerp(ZM_O, ZM_I, 0.5f);
        float[][] to = {NODE_EAR, NODE_JAW};
        for (int k = 0; k < 2; k++) {
            float[] a = from.clone();
            float[] b = to[k].clone();
            if (side == 0) {
                a[0] = mx(a[0]);
                b[0] = mx(b[0]);
            }
            Prim p = new Prim(ARROW, new float[] {M, a[0], a[1], L, b[0], b[1]}, false);
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

    /** Forehead: the frontalis as a soft sheet; a sensory current makes it shimmer (no contraction). */
    private static void forehead(List<Prim> out, Scene s) {
        float lv = s.level[FOREHEAD];
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

    /** Under the chin: the two anterior digastric bellies over the mylohyoid sheet, chin → hyoid. */
    private static void chin(List<Prim> out, Scene s) {
        float lv = s.sensory ? 0 : s.level[CHIN];
        float up = 0.25f * CM * lv;
        float[] sheet = {M, 572, 1050, C, 590, 1056, 610, 1056, 628, 1050, L, 668, 1116 - up,
                C, 640, 1128 - up, 560, 1128 - up, 532, 1116 - up, Z};
        Prim sh = new Prim(MUSCLE, sheet, true);
        sh.alpha = 0.22f + 0.35f * lv;
        out.add(sh);
        for (int side = 0; side < 2; side++) {
            float[] b = {M, 588, 1050, C, 572, 1064, 556, 1088, 548, 1116 - up, C, 560, 1122 - up, 574, 1110 - up, 596, 1056, Z};
            float[] path = side == 1 ? mirror(b) : b;
            if (s.level[CHIN] > 0.02f) {
                Prim g = new Prim(GLOW, path, true);
                g.alpha = s.level[CHIN];
                out.add(g);
            }
            Prim m = new Prim(MUSCLE, path, true);
            m.alpha = 0.45f + 0.5f * lv;
            out.add(m);
        }
    }

    // ---------------------------------------------------------------- pads and keep-out zones

    /** A site's pair of pads (true size), outlines while it works, the label on both, a ripple while it works. */
    private static void pad2(List<Prim> out, Scene s, int site) {
        float blink = s.placing ? 0.55f + 0.45f * (float) Math.sin(s.t * 4 + site) : 1f;
        float[][] p = pads(site);
        float ang = padAngle(site);
        float lv = s.level[site];
        boolean dim = s.dim[site];
        for (int k = 0; k < 2; k++) {
            float[] c = p[k];
            if (lv > 0.05f && !dim) {
                float ph = frac(s.t * 1.6f + k * 0.5f);
                Prim rp = new Prim(RIPPLE, circle(c[0], c[1], padHh(s.small) + 0.6f * CM * ph), false);
                rp.alpha = lv * (1 - ph);
                out.add(rp);
            }
            float[] box = roundRect(c[0], c[1], padHw(s.small), padHh(s.small), 0.25f * CM, ang);
            Prim f = new Prim(PAD, box, true);
            f.alpha = (dim ? 0.2f : s.outline ? 0.12f : 0.55f) * blink;
            out.add(f);
            Prim e = new Prim(PAD_LINE, box, false);
            e.alpha = (dim ? 0.3f : s.outline ? 0.7f : 1f) * blink;
            e.dashed = s.outline;
            out.add(e);
            if (s.label[site] != null) {
                Prim l = new Prim(LABEL, s.label[site], c[0], c[1]);
                l.alpha = dim ? 0.4f : 1f;
                out.add(l);
            }
        }
    }

    private static void nogo(List<Prim> out, Scene s) {
        boolean eye = s.on[ZM_L] || s.on[ZM_R] || s.on[NL_L] || s.on[NL_R] || s.on[FOREHEAD];
        boolean trunk = s.on[ZM_L] || s.on[ZM_R] || s.on[JAW_L] || s.on[JAW_R] || s.on[LC_L] || s.on[LC_R];
        for (int side = 0; side < 2; side++) {
            if (eye) {
                Prim e = new Prim(NOGO, ellipse(side == 0 ? mx(EYE[0]) : EYE[0], EYE[1], EYE_RX, EYE_RY), false);
                e.dashed = true;
                e.alpha = 0.8f;
                out.add(e);
            }
            if (trunk) {
                out.add(nogoMark(side == 0 ? mx(TRUNK[0]) : TRUNK[0], TRUNK[1]));
            }
            out.add(nogoMark(side == 0 ? mx(NECK[0]) : NECK[0], NECK[1]));
            for (float[] f : FORAMINA) {
                // the nerve exits: a small dashed ring — keep the pads off
                Prim r = new Prim(NOGO, circle(side == 0 ? mx(f[0]) : f[0], f[1], 0.3f * CM), false);
                r.dashed = true;
                r.alpha = 0.6f;
                r.width = 0.8f;
                out.add(r);
            }
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
