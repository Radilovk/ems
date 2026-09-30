package com.isaigu.gymapp.ai;

import java.util.ArrayList;
import java.util.List;

/**
 * SVG path data → absolute M / L / C / Z only (what {@link ExerciseFigure} draws). The same as
 * scripts/exercise-paths.py, for the exercises the tablet downloads (the built-in ones are normalized at build time):
 * H/V → L, Q/T/S → C, A (elliptical arc) → C in ≤ 90° pieces, relative → absolute, numbers to 0.01.
 * scripts/ai-sim/PathNormSim.java checks it against the Python output for every library frame.
 */
public final class PathNorm {
    private PathNorm() {}

    private static boolean isCmd(char c) {
        return "MmZzLlHhVvCcSsQqTtAa".indexOf(c) >= 0;
    }

    /** Commands and numbers, the way the SVG grammar splits them ("1.5.5" is 1.5 and .5; "-1-2" is -1 and -2). */
    static List<String> tokens(String d) {
        List<String> out = new ArrayList<String>();
        int i = 0;
        int n = d.length();
        while (i < n) {
            char c = d.charAt(i);
            if (isCmd(c)) {
                out.add(String.valueOf(c));
                i++;
                continue;
            }
            if (c == '-' || c == '+' || c == '.' || Character.isDigit(c)) {
                int s = i;
                if (c == '-' || c == '+') {
                    i++;
                }
                boolean dot = false;
                boolean digits = false;
                while (i < n) {
                    char x = d.charAt(i);
                    if (Character.isDigit(x)) {
                        digits = true;
                        i++;
                    } else if (x == '.' && !dot) {
                        dot = true;
                        i++;
                    } else {
                        break;
                    }
                }
                if (i < n && digits && (d.charAt(i) == 'e' || d.charAt(i) == 'E')) {
                    int j = i + 1;
                    if (j < n && (d.charAt(j) == '-' || d.charAt(j) == '+')) {
                        j++;
                    }
                    if (j < n && Character.isDigit(d.charAt(j))) {
                        i = j;
                        while (i < n && Character.isDigit(d.charAt(i))) {
                            i++;
                        }
                    }
                }
                if (i > s && digits) {
                    out.add(d.substring(s, i));
                } else {
                    i = Math.max(i, s + 1);
                }
                continue;
            }
            i++;
        }
        return out;
    }

    static String fmt(double v) {
        // the exact binary value rounded half-even, like Python's "%.2f" (Java's Formatter rounds the shortest decimal)
        String s = new java.math.BigDecimal(v).setScale(2, java.math.RoundingMode.HALF_EVEN).toPlainString();
        if (s.indexOf('.') >= 0) {
            while (s.endsWith("0")) {
                s = s.substring(0, s.length() - 1);
            }
            if (s.endsWith(".")) {
                s = s.substring(0, s.length() - 1);
            }
        }
        return s.equals("-0") || s.isEmpty() ? "0" : s;
    }

    static final class Out {
        final StringBuilder b = new StringBuilder();

        void emit(char c, double... v) {
            b.append(c);
            for (int i = 0; i < v.length; i++) {
                if (i > 0) {
                    b.append(' ');
                }
                b.append(fmt(v[i]));
            }
        }
    }

    /** Endpoint arc → cubic pieces (SVG spec F.6). */
    static List<double[]> arc(double x1, double y1, double rx, double ry, double phi, int fa, int fs, double x2, double y2) {
        List<double[]> out = new ArrayList<double[]>();
        if (rx == 0 || ry == 0) {
            out.add(new double[] {x1, y1, x2, y2, x2, y2});
            return out;
        }
        rx = Math.abs(rx);
        ry = Math.abs(ry);
        double cp = Math.cos(Math.toRadians(phi));
        double sp = Math.sin(Math.toRadians(phi));
        double dx = (x1 - x2) / 2;
        double dy = (y1 - y2) / 2;
        double x1p = cp * dx + sp * dy;
        double y1p = -sp * dx + cp * dy;
        double lam = (x1p / rx) * (x1p / rx) + (y1p / ry) * (y1p / ry);
        if (lam > 1) {
            double s = Math.sqrt(lam);
            rx *= s;
            ry *= s;
        }
        double num = rx * rx * ry * ry - rx * rx * y1p * y1p - ry * ry * x1p * x1p;
        double den = rx * rx * y1p * y1p + ry * ry * x1p * x1p;
        double co = den != 0 ? Math.sqrt(Math.max(0.0, num / den)) : 0.0;
        if (fa == fs) {
            co = -co;
        }
        double cxp = co * rx * y1p / ry;
        double cyp = -co * ry * x1p / rx;
        double cx = cp * cxp - sp * cyp + (x1 + x2) / 2;
        double cy = sp * cxp + cp * cyp + (y1 + y2) / 2;
        double t1 = Math.atan2((y1p - cyp) / ry, (x1p - cxp) / rx);
        double ux = (x1p - cxp) / rx;
        double uy = (y1p - cyp) / ry;
        double vx = (-x1p - cxp) / rx;
        double vy = (-y1p - cyp) / ry;
        double dt = Math.atan2(ux * vy - uy * vx, ux * vx + uy * vy);
        if (fs == 0 && dt > 0) {
            dt -= 2 * Math.PI;
        } else if (fs != 0 && dt < 0) {
            dt += 2 * Math.PI;
        }
        int n = Math.max(1, (int) Math.ceil(Math.abs(dt) / (Math.PI / 2) - 1e-9));
        double seg = dt / n;
        double k = 4.0 / 3.0 * Math.tan(seg / 4);
        for (int i = 0; i < n; i++) {
            double a1 = t1 + i * seg;
            double a2 = a1 + seg;
            double c1 = Math.cos(a1);
            double s1 = Math.sin(a1);
            double c2 = Math.cos(a2);
            double s2 = Math.sin(a2);
            double[] u = {c1 - k * s1, s1 + k * c1, c2 + k * s2, s2 - k * c2, c2, s2};
            double[] p = new double[6];
            for (int j = 0; j < 3; j++) {
                double X = u[2 * j] * rx;
                double Y = u[2 * j + 1] * ry;
                p[2 * j] = cp * X - sp * Y + cx;
                p[2 * j + 1] = sp * X + cp * Y + cy;
            }
            out.add(p);
        }
        return out;
    }

    public static String normalize(String d) {
        List<String> t = tokens(d);
        Out o = new Out();
        int[] i = {0};
        char cmd = 0;
        double x = 0;
        double y = 0;
        double sx = 0;
        double sy = 0;
        double lcx = Double.NaN;
        double lcy = 0;
        double lqx = Double.NaN;
        double lqy = 0;
        while (i[0] < t.size()) {
            String tok = t.get(i[0]);
            if (tok.length() == 1 && isCmd(tok.charAt(0))) {
                cmd = tok.charAt(0);
                i[0]++;
                if (cmd == 'Z' || cmd == 'z') {
                    o.b.append('Z');
                    x = sx;
                    y = sy;
                    lcx = Double.NaN;
                    lqx = Double.NaN;
                    continue;
                }
            }
            if (cmd == 0) {
                i[0]++;
                continue;
            }
            boolean rel = Character.isLowerCase(cmd);
            char c = Character.toUpperCase(cmd);
            if (c == 'M') {
                double nx = num(t, i);
                double ny = num(t, i);
                if (rel) {
                    nx += x;
                    ny += y;
                }
                x = sx = nx;
                y = sy = ny;
                o.emit('M', x, y);
                cmd = rel ? 'l' : 'L';
                lcx = Double.NaN;
                lqx = Double.NaN;
            } else if (c == 'L') {
                double nx = num(t, i);
                double ny = num(t, i);
                if (rel) {
                    nx += x;
                    ny += y;
                }
                x = nx;
                y = ny;
                o.emit('L', x, y);
                lcx = Double.NaN;
                lqx = Double.NaN;
            } else if (c == 'H') {
                x = num(t, i) + (rel ? x : 0);
                o.emit('L', x, y);
                lcx = Double.NaN;
                lqx = Double.NaN;
            } else if (c == 'V') {
                y = num(t, i) + (rel ? y : 0);
                o.emit('L', x, y);
                lcx = Double.NaN;
                lqx = Double.NaN;
            } else if (c == 'C') {
                double[] v = new double[6];
                for (int k = 0; k < 6; k++) {
                    v[k] = num(t, i) + (rel ? (k % 2 == 0 ? x : y) : 0);
                }
                o.emit('C', v);
                lcx = v[2];
                lcy = v[3];
                x = v[4];
                y = v[5];
                lqx = Double.NaN;
            } else if (c == 'S') {
                double[] v = new double[4];
                for (int k = 0; k < 4; k++) {
                    v[k] = num(t, i) + (rel ? (k % 2 == 0 ? x : y) : 0);
                }
                double c1x = Double.isNaN(lcx) ? x : 2 * x - lcx;
                double c1y = Double.isNaN(lcx) ? y : 2 * y - lcy;
                o.emit('C', c1x, c1y, v[0], v[1], v[2], v[3]);
                lcx = v[0];
                lcy = v[1];
                x = v[2];
                y = v[3];
                lqx = Double.NaN;
            } else if (c == 'Q') {
                double[] v = new double[4];
                for (int k = 0; k < 4; k++) {
                    v[k] = num(t, i) + (rel ? (k % 2 == 0 ? x : y) : 0);
                }
                quad(o, x, y, v[0], v[1], v[2], v[3]);
                lqx = v[0];
                lqy = v[1];
                x = v[2];
                y = v[3];
                lcx = Double.NaN;
            } else if (c == 'T') {
                double ex = num(t, i);
                double ey = num(t, i);
                if (rel) {
                    ex += x;
                    ey += y;
                }
                double qx = Double.isNaN(lqx) ? x : 2 * x - lqx;
                double qy = Double.isNaN(lqx) ? y : 2 * y - lqy;
                quad(o, x, y, qx, qy, ex, ey);
                lqx = qx;
                lqy = qy;
                x = ex;
                y = ey;
                lcx = Double.NaN;
            } else if (c == 'A') {
                double rx = num(t, i);
                double ry = num(t, i);
                double phi = num(t, i);
                int fa = flag(t, i);
                int fs = flag(t, i);
                double ex = num(t, i);
                double ey = num(t, i);
                if (rel) {
                    ex += x;
                    ey += y;
                }
                for (double[] s : arc(x, y, rx, ry, phi, fa, fs, ex, ey)) {
                    o.emit('C', s);
                }
                x = ex;
                y = ey;
                lcx = Double.NaN;
                lqx = Double.NaN;
            } else {
                i[0]++;
            }
        }
        return o.b.toString();
    }

    private static void quad(Out o, double x, double y, double qx, double qy, double ex, double ey) {
        o.emit('C', x + 2.0 / 3.0 * (qx - x), y + 2.0 / 3.0 * (qy - y), ex + 2.0 / 3.0 * (qx - ex),
                ey + 2.0 / 3.0 * (qy - ey), ex, ey);
    }

    private static double num(List<String> t, int[] i) {
        String s = t.get(i[0]++);
        return Double.parseDouble(s);
    }

    /** A flag is one digit 0/1, possibly glued to the next number ("01.5"). */
    private static int flag(List<String> t, int[] i) {
        String s = t.get(i[0]);
        if (s.equals("0") || s.equals("1")) {
            i[0]++;
            return s.charAt(0) - '0';
        }
        int f = s.charAt(0) - '0';
        t.set(i[0], s.substring(1));
        return f;
    }

    /** The d of the single path in an SVG file (the library frames have one path each). */
    public static String pathOf(String svg) {
        StringBuilder all = new StringBuilder();
        int from = 0;
        while (true) {
            int p = svg.indexOf("<path", from);
            if (p < 0) {
                break;
            }
            int e = svg.indexOf('>', p);
            int d = svg.indexOf(" d=\"", p);
            if (d < 0 || (e >= 0 && d > e)) {
                from = p + 5;
                continue;
            }
            int q = svg.indexOf('"', d + 4);
            all.append(svg, d + 4, q);
            from = q + 1;
        }
        return all.toString();
    }
}
