package com.isaigu.gymapp.ai;

import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/**
 * How the tablet learns the trainer's "тренер" (Kws) from one reading — the same recipe measured on the JVM
 * (scripts/voice-kws/KwsSim.java). Pure Java.
 *
 * Positives: each cut of the trainer's "тренер", many times, each in a random hall — speed ±10 %, distance (−20…+3 dB,
 * room echo 0.2–0.7 s), music / people talking / hiss at 0–25 dB under it. Negatives: the trainer's own other words
 * (same halls), the word half outside the window, and the pack shipped with the app (other people's "тренер" /
 * "треньор" / "тренировка", other speech, halls without a voice — feature windows made by the same code).
 */
public final class KwsTrain {
    private KwsTrain() {}

    static final int SR = Kws.SR;

    // ================================================================ the sounds of a hall

    /** Music: chords changing every 2 beats, a kick on each beat, a hi-hat between; unit power. */
    public static float[] music(int n, Random r) {
        float[] out = new float[n];
        double bpm = 90 + r.nextDouble() * 50, beat = 60 / bpm;
        int seg = (int) (2 * beat * SR);
        for (int a = 0; a < n; a += seg) {
            double root = 110 * Math.pow(2, r.nextInt(12) / 12.0);
            int b = Math.min(n, a + seg);
            for (int iv : new int[] {0, 4, 7, 12}) {
                double f = root * Math.pow(2, iv / 12.0);
                for (int i = a; i < b; i++) {
                    double t = i / (double) SR;
                    out[i] += (float) (0.25 * Math.sin(2 * Math.PI * f * t) + 0.1 * Math.sin(4 * Math.PI * f * t));
                }
            }
        }
        int bt = (int) (beat * SR);
        for (int a = 0; a < n; a += bt) {
            int m = Math.min(n - a, (int) (0.15 * SR));
            for (int i = 0; i < m; i++) {
                double t = i / (double) SR;
                out[a + i] += (float) (2.0 * Math.sin(2 * Math.PI * (60 + 80 * Math.exp(-t * 30)) * t) * Math.exp(-t * 18));
            }
            int h = a + bt / 2, m2 = Math.min(n - h, (int) (0.04 * SR));
            for (int i = 0; i < m2; i++) {
                out[h + i] += (float) (r.nextGaussian() * Math.exp(-i / (double) SR * 80) * 0.6);
            }
        }
        return unit(out);
    }

    /** Hiss: white + a one-pole low-passed part (pinkish); unit power. */
    public static float[] hiss(int n, Random r) {
        float[] out = new float[n];
        double acc = 0;
        for (int i = 0; i < n; i++) {
            double w = r.nextGaussian();
            acc = 0.98 * acc + 0.02 * w;
            out[i] = (float) (0.3 * w + 3 * acc);
        }
        return unit(out);
    }

    /** A random slice of n samples of a background (people talking), unit power. */
    public static float[] slice(float[] bg, int n, Random r) {
        float[] out = new float[n];
        if (bg == null || bg.length == 0) {
            return out;
        }
        int a = bg.length > n ? r.nextInt(bg.length - n) : 0;
        for (int i = 0; i < n; i++) {
            out[i] = bg[(a + i) % bg.length];
        }
        return unit(out);
    }

    static float[] unit(float[] x) {
        double s = 0;
        for (float v : x) {
            s += v * v;
        }
        float k = (float) (1 / Math.sqrt(s / Math.max(1, x.length) + 1e-9));
        for (int i = 0; i < x.length; i++) {
            x[i] *= k;
        }
        return x;
    }

    public static float[] reverb(float[] x, double rt60, Random r) {
        int n = (int) (rt60 * SR);
        float[] ir = new float[n];
        double e = 0;
        for (int i = 0; i < n; i++) {
            ir[i] = (float) (r.nextGaussian() * Math.exp(-6.9 * i / n));
            e += ir[i] * ir[i];
        }
        ir[0] = 1;
        e += 1;
        float k = (float) (1 / Math.sqrt(e));
        // sparse taps are enough for a room (every 4th sample of the tail): ~4× faster
        float[] y = new float[x.length];
        for (int i = 0; i < x.length; i++) {
            y[i] += x[i] * k;
        }
        for (int j = 1; j < n; j += 4) {
            float w = ir[j] * k * 2;
            for (int i = j; i < x.length; i++) {
                y[i] += x[i - j] * w;
            }
        }
        double sx = 0, sy = 0;
        for (int i = 0; i < x.length; i++) {
            sx += x[i] * x[i];
            sy += y[i] * y[i];
        }
        float g = (float) Math.sqrt(sx / (sy + 1e-9));
        for (int i = 0; i < y.length; i++) {
            y[i] *= g;
        }
        return y;
    }

    public static float[] speed(float[] x, double f) {
        int n = (int) (x.length / f);
        float[] y = new float[n];
        for (int i = 0; i < n; i++) {
            double p = i * f;
            int a = (int) p;
            double t = p - a;
            y[i] = a + 1 < x.length ? (float) (x[a] * (1 - t) + x[a + 1] * t) : x[Math.min(a, x.length - 1)];
        }
        return y;
    }

    /** sig + bg so that the voice (its loud part) stands snr dB over the background. */
    public static void mix(float[] sig, float[] bg, double snrDb) {
        float mx = 0;
        for (float v : sig) {
            mx = Math.max(mx, Math.abs(v));
        }
        double ps = 0;
        int c = 0;
        for (float v : sig) {
            if (Math.abs(v) > 0.1 * mx) {
                ps += v * v;
                c++;
            }
        }
        ps = c > 0 ? ps / c : 1;
        double pb = 0;
        for (float v : bg) {
            pb += v * v;
        }
        pb = pb / Math.max(1, bg.length) + 1e-9;
        float k = (float) Math.sqrt(ps / pb / Math.pow(10, snrDb / 10));
        for (int i = 0; i < sig.length && i < bg.length; i++) {
            sig[i] += bg[i] * k;
        }
    }

    /** A random hall under the clip: music / people / hiss / quiet, 0–25 dB; a little sensor hiss always. */
    static void hall(float[] clip, float[] people, Random r) {
        int kind = r.nextInt(4);
        if (kind < 3) {
            float[] bg = kind == 0 ? music(clip.length, r) : kind == 1 ? slice(people, clip.length, r) : hiss(clip.length, r);
            mix(clip, bg, r.nextDouble() * 25);
        }
        for (int i = 0; i < clip.length; i++) {
            clip[i] += (float) (r.nextGaussian() * 3);
        }
    }

    // ================================================================ examples

    /**
     * {@code per} positives from one cut of the word, each in a random hall, the word fully inside the window — and
     * as many negatives with the word half outside (where the word is matters).
     */
    public static void positives(float[] word, int per, float[] people, Random r, List<float[]> pos, List<float[]> neg) {
        for (int k = 0; k < per; k++) {
            float[] x = speed(word, 0.9 + r.nextDouble() * 0.2);
            if (r.nextBoolean()) {
                x = reverb(x, 0.2 + r.nextDouble() * 0.5, r);
            }
            float g = (float) Math.pow(10, (-20 + r.nextDouble() * 23) / 20);
            int lead = (int) ((0.05 + r.nextDouble() * 0.17) * SR);
            float[] clip = new float[lead + x.length + (int) (0.3 * SR)];
            for (int i = 0; i < x.length; i++) {
                clip[lead + i] = x[i] * g;
            }
            hall(clip, people, r);
            float[] lm = Kws.logmel(clip);
            int nf = Kws.frames(lm);
            if (nf < Kws.W) {
                continue;
            }
            int f0 = lead / Kws.HOP, wl = x.length / Kws.HOP;
            int st = f0 - (2 + r.nextInt(Math.max(1, Kws.W - Math.min(wl, Kws.W - 4) - 3)));
            st = Math.max(0, Math.min(st, nf - Kws.W));
            pos.add(Kws.window(lm, st));
            int st2 = Math.min(nf - Kws.W, f0 + wl / 2);
            if (neg != null && st2 >= 0 && st2 != st) {
                neg.add(Kws.window(lm, st2));
            }
        }
    }

    /** {@code k} windows of a speech recording (the trainer's own other words, other voices) in random halls. */
    public static void negatives(float[] audio, int k, float[] people, Random r, List<float[]> neg) {
        int len = Kws.W * Kws.HOP + Kws.FRAME;
        if (audio.length < len + 1) {
            return;
        }
        for (int q = 0; q < k; q++) {
            int a = r.nextInt(audio.length - len);
            float g = (float) Math.pow(10, (-20 + r.nextDouble() * 23) / 20);
            float[] seg = new float[len];
            for (int i = 0; i < len; i++) {
                seg[i] = audio[a + i] * g;
            }
            hall(seg, people, r);
            neg.add(Kws.window(Kws.logmel(seg), 0));
        }
    }

    /** Other people's "тренер": the word in random halls, as a negative (the trainer's timbre decides). */
    public static void otherWord(float[] word, int per, float[] people, Random r, List<float[]> neg) {
        List<float[]> tmp = new ArrayList<float[]>();
        positives(word, per, people, r, tmp, null);
        neg.addAll(tmp);
    }

    /** Halls with no voice at all. */
    public static void silence(int k, float[] people, Random r, List<float[]> neg) {
        int len = Kws.W * Kws.HOP + Kws.FRAME;
        for (int q = 0; q < k; q++) {
            int kind = r.nextInt(3);
            float[] bg = kind == 0 ? music(len, r) : kind == 1 ? slice(people, len, r) : hiss(len, r);
            float g = (float) Math.pow(10, 1 + r.nextDouble() * 2.5);
            for (int i = 0; i < len; i++) {
                bg[i] = bg[i] * g + (float) (r.nextGaussian() * 3);
            }
            neg.add(Kws.window(Kws.logmel(bg), 0));
        }
    }

    // ================================================================ the pack shipped with the app

    /** The pack: negative windows (int8, ×12) + people talking (µ-law 16 kHz) for the positives' halls. */
    public static final class Pack {
        public final List<float[]> neg = new ArrayList<float[]>();
        public float[] people = new float[0];
    }

    static final float Q = 12f;

    public static byte[] savePack(List<float[]> neg, float[] people) throws Exception {
        ByteArrayOutputStream bo = new ByteArrayOutputStream();
        DataOutputStream o = new DataOutputStream(bo);
        o.writeInt(0x4b575350);                           // "KWSP"
        o.writeInt(Kws.DIM);
        o.writeInt(neg.size());
        byte[] row = new byte[Kws.DIM];
        for (float[] f : neg) {
            for (int i = 0; i < Kws.DIM; i++) {
                row[i] = (byte) Math.max(-127, Math.min(127, Math.round(f[i] * Q)));
            }
            o.write(row);
        }
        o.writeInt(people.length);
        for (float v : people) {
            o.writeByte(mulaw(v));
        }
        o.flush();
        return bo.toByteArray();
    }

    public static Pack loadPack(InputStream is) throws Exception {
        DataInputStream in = new DataInputStream(new java.io.BufferedInputStream(is));
        if (in.readInt() != 0x4b575350 || in.readInt() != Kws.DIM) {
            throw new IllegalStateException("not a KWS pack");
        }
        Pack p = new Pack();
        int n = in.readInt();
        byte[] row = new byte[Kws.DIM];
        for (int k = 0; k < n; k++) {
            in.readFully(row);
            float[] f = new float[Kws.DIM];
            for (int i = 0; i < Kws.DIM; i++) {
                f[i] = row[i] / Q;
            }
            p.neg.add(f);
        }
        int m = in.readInt();
        p.people = new float[m];
        for (int i = 0; i < m; i++) {
            p.people[i] = unmulaw(in.readByte());
        }
        return p;
    }

    static byte mulaw(float v) {
        int s = (int) Math.max(-32767, Math.min(32767, v));
        int sign = s < 0 ? 0x80 : 0;
        int a = Math.min(32635, Math.abs(s)) + 0x84;
        int exp = 7;
        for (int mask = 0x4000; (a & mask) == 0 && exp > 0; mask >>= 1) {
            exp--;
        }
        int man = (a >> (exp + 3)) & 0x0f;
        return (byte) ~(sign | (exp << 4) | man);
    }

    static float unmulaw(byte b) {
        int u = ~b & 0xff;
        int sign = u & 0x80, exp = (u >> 4) & 7, man = u & 0x0f;
        int a = (((man << 3) + 0x84) << exp) - 0x84;
        return sign != 0 ? -a : a;
    }

    // ================================================================ the whole training

    /** Cuts per positive and windows of the trainer's other speech (tablet: ~20–40 s on a mid tablet). */
    public static int PER_CUT = 150, OWN_NEG = 2500;
    public static int EPOCHS = 50;

    /**
     * The trainer's model: their cuts of "тренер", their other speech (may be empty), the pack. {@code threshold}: the
     * decision line measured on the JVM (KwsSim).
     */
    public static Kws train(List<float[]> cuts, float[] ownSpeech, Pack pack, long seed, Kws.Progress p) {
        Random r = new Random(seed);
        List<float[]> pos = new ArrayList<float[]>();
        List<float[]> neg = new ArrayList<float[]>(pack.neg);
        for (float[] c : cuts) {
            positives(c, PER_CUT, pack.people, r, pos, neg);
        }
        if (ownSpeech != null) {
            negatives(ownSpeech, OWN_NEG, pack.people, r, neg);
        }
        Kws m = Kws.train(pos, neg, EPOCHS, seed, p);
        m.threshold = THRESHOLD;
        return m;
    }

    /** The decision line (KwsSim: the lowest with < 1 false wake an hour on held-out voices over music). */
    public static float THRESHOLD = 0.96f;
}
