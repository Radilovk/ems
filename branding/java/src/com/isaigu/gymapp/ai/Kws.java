package com.isaigu.gymapp.ai;

import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.util.List;
import java.util.Random;

/**
 * The trainer's own "тренер" (owner, 1.1.598: "train the model on my voice, on the tablet, no servers"): a small neural
 * keyword spotter learnt on the tablet from one reading. Pure Java (no Android): the same code is trained and measured
 * on the JVM (scripts/voice-kws/KwsSim.java) and runs on the tablet.
 *
 * Features: log-mel (16 kHz, 25 ms / 10 ms, 512 FFT, 26 bands 100–7600 Hz — as scripts/voice-kws/feat.py), a 0.64 s
 * window mean-normalised per band (distance and microphone drop out), every 4th frame → 16 × 26 = 416 numbers.
 * Model: 416 → HID (ReLU) → 1 (sigmoid), trained with Adam on the trainer's cuts in random halls (positives) against
 * their own other words, other people's "тренер" / "треньор" / "тренировка", other speech, music and noise.
 */
public final class Kws {
    public static final int SR = 16000, FRAME = 400, HOP = 160, NFFT = 512, NMEL = 26;
    public static final int W = 64, SUB = Integer.getInteger("kws.sub", 4), STEP = 5, T = W / SUB, DIM = T * NMEL;
    public static final int HID = Integer.getInteger("kws.hid", 64);
    static final int NBIN = NFFT / 2 + 1;
    static final float[] WIN = new float[FRAME];
    static final float[][] FB = new float[NMEL][NBIN];
    static final float[] COS = new float[NFFT / 2], SIN = new float[NFFT / 2];

    static {
        for (int i = 0; i < FRAME; i++) {
            WIN[i] = (float) (0.54 - 0.46 * Math.cos(2 * Math.PI * i / (FRAME - 1)));
        }
        for (int i = 0; i < NFFT / 2; i++) {
            COS[i] = (float) Math.cos(2 * Math.PI * i / NFFT);
            SIN[i] = (float) Math.sin(2 * Math.PI * i / NFFT);
        }
        double mlo = mel(100), mhi = mel(7600);
        double[] pts = new double[NMEL + 2];
        for (int j = 0; j < NMEL + 2; j++) {
            pts[j] = mlo + (mhi - mlo) * j / (NMEL + 1);
        }
        for (int k = 0; k < NBIN; k++) {
            double m = mel((double) k * SR / NFFT);
            for (int j = 0; j <= NMEL; j++) {
                if (pts[j] <= m && m < pts[j + 1]) {
                    double w = (m - pts[j]) / (pts[j + 1] - pts[j]);
                    if (j < NMEL) {
                        FB[j][k] += (float) w;
                    }
                    if (j > 0) {
                        FB[j - 1][k] += (float) (1 - w);
                    }
                }
            }
        }
    }

    static double mel(double f) {
        return 1127.0 * Math.log(1 + f / 700.0);
    }

    // ================================================================ features

    /** One frame's log-mel from FRAME pre-emphasised samples (re / im are work arrays of NFFT). */
    static void frame(float[] pre, int off, float[] re, float[] im, float[] out, int outOff) {
        for (int i = 0; i < FRAME; i++) {
            re[i] = pre[off + i] * WIN[i];
            im[i] = 0;
        }
        for (int i = FRAME; i < NFFT; i++) {
            re[i] = 0;
            im[i] = 0;
        }
        fft(re, im);
        for (int j = 0; j < NMEL; j++) {
            double s = 0;
            float[] f = FB[j];
            for (int k = 0; k < NBIN; k++) {
                if (f[k] != 0) {
                    s += f[k] * (re[k] * re[k] + im[k] * im[k]);
                }
            }
            out[outOff + j] = (float) Math.log(s + 1.0);
        }
    }

    /** Log-mel of a whole clip: frames × NMEL, row-major (frame i covers samples [i·HOP, i·HOP + FRAME)). */
    public static float[] logmel(float[] x) {
        int n = x.length < FRAME ? 0 : 1 + (x.length - FRAME) / HOP;
        float[] pre = new float[x.length];
        if (x.length > 0) {
            pre[0] = x[0];
        }
        for (int i = 1; i < x.length; i++) {
            pre[i] = x[i] - 0.97f * x[i - 1];
        }
        float[] out = new float[n * NMEL];
        float[] re = new float[NFFT], im = new float[NFFT];
        for (int f = 0; f < n; f++) {
            frame(pre, f * HOP, re, im, out, f * NMEL);
        }
        return out;
    }

    public static int frames(float[] lm) {
        return lm.length / NMEL;
    }

    /** The window of W frames from {@code start} as features (mean-normalised per band, every SUB-th frame). */
    public static void window(float[] lm, int start, float[] out) {
        for (int j = 0; j < NMEL; j++) {
            double m = 0;
            for (int t = 0; t < W; t++) {
                m += lm[(start + t) * NMEL + j];
            }
            m /= W;
            for (int t = 0; t < T; t++) {
                out[t * NMEL + j] = (float) (lm[(start + t * SUB) * NMEL + j] - m);
            }
        }
    }

    public static float[] window(float[] lm, int start) {
        float[] o = new float[DIM];
        window(lm, start, o);
        return o;
    }

    static void fft(float[] re, float[] im) {
        int n = NFFT;
        for (int i = 1, j = 0; i < n; i++) {
            int bit = n >> 1;
            for (; (j & bit) != 0; bit >>= 1) {
                j ^= bit;
            }
            j ^= bit;
            if (i < j) {
                float t = re[i];
                re[i] = re[j];
                re[j] = t;
                t = im[i];
                im[i] = im[j];
                im[j] = t;
            }
        }
        for (int len = 2; len <= n; len <<= 1) {
            int step = n / len;
            for (int i = 0; i < n; i += len) {
                for (int k = 0; k < len / 2; k++) {
                    float c = COS[k * step], s = -SIN[k * step];
                    int a = i + k, b = i + k + len / 2;
                    float xr = re[b] * c - im[b] * s, xi = re[b] * s + im[b] * c;
                    re[b] = re[a] - xr;
                    im[b] = im[a] - xi;
                    re[a] += xr;
                    im[a] += xi;
                }
            }
        }
    }

    // ================================================================ the model

    final float[] mu = new float[DIM], sd = new float[DIM];
    final float[] w1 = new float[HID * DIM], b1 = new float[HID], w2 = new float[HID];
    float b2;
    /** The decision line (two windows in a row over it wake). */
    public float threshold = 0.9f;

    public float score(float[] x) {
        double o = b2;
        for (int h = 0; h < HID; h++) {
            double a = b1[h];
            int base = h * DIM;
            for (int i = 0; i < DIM; i++) {
                a += w1[base + i] * ((x[i] - mu[i]) / sd[i]);
            }
            if (a > 0) {
                o += w2[h] * a;
            }
        }
        return (float) (1 / (1 + Math.exp(-o)));
    }

    /** Progress of a training (0..1), for the setup's bar; may be null. */
    public interface Progress {
        void at(float done);
    }

    /**
     * Adam on the binary cross-entropy, L2 1e-3, batches of 128; positives weighted to balance the classes.
     */
    public static Kws train(List<float[]> pos, List<float[]> neg, int epochs, long seed, Progress p) {
        Kws m = new Kws();
        int n = pos.size() + neg.size();
        float[][] X = new float[n][];
        float[] y = new float[n];
        for (int i = 0; i < pos.size(); i++) {
            X[i] = pos.get(i);
            y[i] = 1;
        }
        for (int i = 0; i < neg.size(); i++) {
            X[pos.size() + i] = neg.get(i);
        }
        for (int d = 0; d < DIM; d++) {
            double s = 0, s2 = 0;
            for (float[] x : X) {
                s += x[d];
                s2 += x[d] * x[d];
            }
            double mean = s / n;
            m.mu[d] = (float) mean;
            m.sd[d] = (float) Math.sqrt(Math.max(1e-6, s2 / n - mean * mean)) + 1e-3f;
        }
        Random r = new Random(seed);
        double lim1 = Math.sqrt(6.0 / (DIM + HID)), lim2 = Math.sqrt(6.0 / (HID + 1));
        for (int i = 0; i < m.w1.length; i++) {
            m.w1[i] = (float) ((r.nextDouble() * 2 - 1) * lim1);
        }
        for (int h = 0; h < HID; h++) {
            m.w2[h] = (float) ((r.nextDouble() * 2 - 1) * lim2);
        }
        float wPos = Math.max(1f, neg.size() / (float) Math.max(1, pos.size()) / 3f);
        // normalised copies (once)
        float[][] Z = new float[n][DIM];
        for (int i = 0; i < n; i++) {
            for (int d = 0; d < DIM; d++) {
                Z[i][d] = (X[i][d] - m.mu[d]) / m.sd[d];
            }
        }
        float[] g1 = new float[m.w1.length], gb1 = new float[HID], g2 = new float[HID];
        float[] m1 = new float[m.w1.length], v1 = new float[m.w1.length], mb1 = new float[HID], vb1 = new float[HID];
        float[] m2 = new float[HID], v2 = new float[HID];
        float mb2 = 0, vb2 = 0;
        double lr = 1e-3, beta1 = 0.9, beta2 = 0.999, eps = 1e-8, l2 = 1e-3;
        int[] order = new int[n];
        for (int i = 0; i < n; i++) {
            order[i] = i;
        }
        float[] hAct = new float[HID];
        int stepN = 0;
        int batch = 128;
        for (int ep = 0; ep < epochs; ep++) {
            for (int i = n - 1; i > 0; i--) {
                int j = r.nextInt(i + 1);
                int t = order[i];
                order[i] = order[j];
                order[j] = t;
            }
            for (int b0 = 0; b0 < n; b0 += batch) {
                int b1n = Math.min(n, b0 + batch);
                java.util.Arrays.fill(g1, 0);
                java.util.Arrays.fill(gb1, 0);
                java.util.Arrays.fill(g2, 0);
                float gb2 = 0;
                float wsum = 0;
                for (int q = b0; q < b1n; q++) {
                    float[] z = Z[order[q]];
                    float yy = y[order[q]];
                    float wt = yy > 0 ? wPos : 1f;
                    double o = m.b2;
                    for (int h = 0; h < HID; h++) {
                        double a = m.b1[h];
                        int base = h * DIM;
                        for (int d = 0; d < DIM; d++) {
                            a += m.w1[base + d] * z[d];
                        }
                        hAct[h] = a > 0 ? (float) a : 0;
                        o += m.w2[h] * hAct[h];
                    }
                    float pr = (float) (1 / (1 + Math.exp(-o)));
                    float go = (pr - yy) * wt;
                    wsum += wt;
                    gb2 += go;
                    for (int h = 0; h < HID; h++) {
                        g2[h] += go * hAct[h];
                        if (hAct[h] > 0) {
                            float gh = go * m.w2[h];
                            gb1[h] += gh;
                            int base = h * DIM;
                            for (int d = 0; d < DIM; d++) {
                                g1[base + d] += gh * z[d];
                            }
                        }
                    }
                }
                stepN++;
                double c1 = 1 - Math.pow(beta1, stepN), c2 = 1 - Math.pow(beta2, stepN);
                float inv = 1f / wsum;
                for (int i = 0; i < m.w1.length; i++) {
                    float g = g1[i] * inv + (float) l2 * m.w1[i];
                    m1[i] = (float) (beta1 * m1[i] + (1 - beta1) * g);
                    v1[i] = (float) (beta2 * v1[i] + (1 - beta2) * g * g);
                    m.w1[i] -= (float) (lr * (m1[i] / c1) / (Math.sqrt(v1[i] / c2) + eps));
                }
                for (int h = 0; h < HID; h++) {
                    float g = gb1[h] * inv;
                    mb1[h] = (float) (beta1 * mb1[h] + (1 - beta1) * g);
                    vb1[h] = (float) (beta2 * vb1[h] + (1 - beta2) * g * g);
                    m.b1[h] -= (float) (lr * (mb1[h] / c1) / (Math.sqrt(vb1[h] / c2) + eps));
                    g = g2[h] * inv + (float) l2 * m.w2[h];
                    m2[h] = (float) (beta1 * m2[h] + (1 - beta1) * g);
                    v2[h] = (float) (beta2 * v2[h] + (1 - beta2) * g * g);
                    m.w2[h] -= (float) (lr * (m2[h] / c1) / (Math.sqrt(v2[h] / c2) + eps));
                }
                float g = gb2 * inv;
                mb2 = (float) (beta1 * mb2 + (1 - beta1) * g);
                vb2 = (float) (beta2 * vb2 + (1 - beta2) * g * g);
                m.b2 -= (float) (lr * (mb2 / c1) / (Math.sqrt(vb2 / c2) + eps));
            }
            if (p != null) {
                p.at((ep + 1) / (float) epochs);
            }
        }
        return m;
    }

    public byte[] save() {
        try {
            ByteArrayOutputStream bo = new ByteArrayOutputStream();
            DataOutputStream o = new DataOutputStream(bo);
            o.writeInt(0x4b575301);                       // "KWS" v1
            o.writeInt(DIM);
            o.writeInt(HID);
            o.writeFloat(threshold);
            for (float v : mu) {
                o.writeFloat(v);
            }
            for (float v : sd) {
                o.writeFloat(v);
            }
            for (float v : w1) {
                o.writeFloat(v);
            }
            for (float v : b1) {
                o.writeFloat(v);
            }
            for (float v : w2) {
                o.writeFloat(v);
            }
            o.writeFloat(b2);
            o.flush();
            return bo.toByteArray();
        } catch (Exception e) {
            return null;
        }
    }

    public static Kws load(byte[] b) {
        if (b == null) {
            return null;
        }
        try {
            DataInputStream in = new DataInputStream(new java.io.ByteArrayInputStream(b));
            if (in.readInt() != 0x4b575301 || in.readInt() != DIM || in.readInt() != HID) {
                return null;
            }
            Kws m = new Kws();
            m.threshold = in.readFloat();
            for (int i = 0; i < DIM; i++) {
                m.mu[i] = in.readFloat();
            }
            for (int i = 0; i < DIM; i++) {
                m.sd[i] = in.readFloat();
            }
            for (int i = 0; i < m.w1.length; i++) {
                m.w1[i] = in.readFloat();
            }
            for (int i = 0; i < HID; i++) {
                m.b1[i] = in.readFloat();
            }
            for (int i = 0; i < HID; i++) {
                m.w2[i] = in.readFloat();
            }
            m.b2 = in.readFloat();
            return m;
        } catch (Exception e) {
            return null;
        }
    }

    // ================================================================ listening: the live stream

    /**
     * The microphone, sample by sample: log-mel frames into a ring of W, a window scored every STEP frames; two windows
     * in a row over the line wake; then 1.2 s of rest (one word, one wake).
     */
    public static final class Detector {
        final Kws m;
        final float[] pre = new float[FRAME];
        final float[] preRing = new float[FRAME];
        final float[] re = new float[NFFT], im = new float[NFFT];
        final float[] ring = new float[W * NMEL];
        final float[] lin = new float[W * NMEL];
        final float[] feat = new float[DIM];
        final float[] fr = new float[NMEL];
        int fill, since, frames, rest, at;
        float prev, last;
        public float lastScore;

        public Detector(Kws m) {
            this.m = m;
        }

        public Kws model() {
            return m;
        }

        /** One 16 kHz sample; true = "тренер". */
        public boolean push(short s) {
            float x = s;
            float p = fill == 0 ? x : x - 0.97f * prev;
            prev = x;
            preRing[at] = p;
            at = (at + 1) % FRAME;
            if (fill < FRAME) {
                fill++;
                if (fill < FRAME) {
                    return false;
                }
                since = HOP;                              // the first frame at once
            }
            if (++since < HOP) {
                return false;
            }
            since = 0;
            for (int i = 0; i < FRAME; i++) {
                pre[i] = preRing[(at + i) % FRAME];       // the last FRAME samples, oldest first
            }
            frame(pre, 0, re, im, fr, 0);
            System.arraycopy(fr, 0, ring, (frames % W) * NMEL, NMEL);
            frames++;
            if (rest > 0) {
                rest--;
            }
            if (frames < W || frames % STEP != 0) {
                return false;
            }
            int head = frames % W;                        // the oldest frame of the ring
            for (int t = 0; t < W; t++) {
                System.arraycopy(ring, ((head + t) % W) * NMEL, lin, t * NMEL, NMEL);
            }
            window(lin, 0, feat);
            float sc = m.score(feat);
            lastScore = sc;
            boolean wake = rest == 0 && sc > m.threshold && last > m.threshold;
            last = sc;
            if (wake) {
                rest = 120;
                last = 0;
            }
            return wake;
        }
    }
}
