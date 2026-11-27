package com.isaigu.gymapp.ai;

import java.util.ArrayList;
import java.util.List;

/**
 * The wake word "тренер" on the tablet (owner, 1.1.541 — docs/xems-ai-coach.md): a small always-on keyword spotter
 * that understands nothing and sends nothing anywhere — it only knows how the trainer says "тренер", from 3 own
 * recordings. A port of the voice module's recogniser (voice/xems_voice/kws.h, docs/xems-voice.md): 16 kHz → 25 ms
 * frames / 10 ms → 26 mel bands → a word after a pause → noise out, 12 cepstra + energy, 20 ms frames → DTW against
 * the examples; accepted when d ≤ 2.5 × the mean distance between the examples × safety.
 * <p>One addition for a wake word: it is matched <b>while it is said</b> (the word so far against the examples, every
 * 50 ms once it is as long as them), so "Тренер, увеличи краката" said in one breath fires at the end of "тренер",
 * not after the whole phrase. Pure Java.
 */
public final class WakeWord {
    static final int SR = 16000, FRAME = 400, HOP = 160, NFFT = 512, NBIN = NFFT / 2 + 1, NMEL = 26, NCEP = 12;
    static final int DIM = NCEP + 1, MAXF = 128, RING = 300, MAXT = 3;
    static final int INF = 0x3fffffff;
    /** "Must be sure": a wake too many opens the command window for nothing (the voice module's start 0.9). */
    static final float SAFETY = 1.32f;   // WakeSim: with the look-alike 34/36 heard, 0/153 false (espeak, 3 voices × 3 noises)
    /** The wake word must be clearly closer than the look-alike ("тренировка"): ≤ 75 % of its distance (kws MARGIN). */
    static final int MARGIN = 75;
    static final int DEFAULT_THR = 1400;
    /** The widest limit ever (WakeSim: the wake phrase 700–1500, the closest ordinary words 1480+; speech 'добре тренер' 1165). */
    public static final int THR_CAP = 1700;
    /**
     * Examples further apart than this (worst pair) are not one phrase: the setup asks again. espeak's own spread is
     * ~550, but a live voice says "окей тренер" far less evenly (owner, 1.1.589: "the recordings differ, however I say
     * it") — 1000 rejected real speech. The limit itself stays capped (THR_CAP), so a looser check lets no random word
     * through; it only throws out what is clearly not one phrase (a cough, another word: 2500+).
     */
    public static final int WIDE_SPREAD = 2200;

    public static final int NONE = 0, WAKE = 1, RECORDED = 2, SKIPPED = 3;

    /** One word as matched: n frames × DIM int8. */
    static final class Word {
        int n;
        final byte[][] f = new byte[MAXF][DIM];

        byte[] pack() {
            byte[] b = new byte[1 + n * DIM];
            b[0] = (byte) n;
            for (int i = 0; i < n; i++) {
                System.arraycopy(f[i], 0, b, 1 + i * DIM, DIM);
            }
            return b;
        }

        static Word unpack(byte[] b) {
            Word w = new Word();
            w.n = Math.min(MAXF, b[0] & 0xff);
            for (int i = 0; i < w.n && 1 + (i + 1) * DIM <= b.length; i++) {
                System.arraycopy(b, 1 + i * DIM, w.f[i], 0, DIM);
            }
            return w;
        }
    }

    // ================================================================ front end

    static final class Front {
        final float[] hist = new float[FRAME], raw = new float[FRAME], win = new float[FRAME];
        final float[] re = new float[NFFT], im = new float[NFFT], cosT = new float[NFFT / 2], sinT = new float[NFFT / 2];
        final float[] binW = new float[NBIN];
        final int[] binIdx = new int[NBIN];
        final float[][] dct = new float[NCEP][NMEL];
        int fill, since;
        float prev;

        Front() {
            for (int i = 0; i < FRAME; i++) {
                win[i] = (float) (0.54 - 0.46 * Math.cos(2 * Math.PI * i / (FRAME - 1)));
            }
            for (int i = 0; i < NFFT / 2; i++) {
                cosT[i] = (float) Math.cos(2 * Math.PI * i / NFFT);
                sinT[i] = (float) Math.sin(2 * Math.PI * i / NFFT);
            }
            float mlo = mel(100), mhi = mel(7600);
            float[] pts = new float[NMEL + 2];
            for (int j = 0; j < NMEL + 2; j++) {
                pts[j] = mlo + (mhi - mlo) * j / (NMEL + 1);
            }
            for (int k = 0; k < NBIN; k++) {
                float m = mel((float) k * SR / NFFT);
                binIdx[k] = -1;
                for (int j = 0; j <= NMEL; j++) {
                    if (m >= pts[j] && m < pts[j + 1]) {
                        binIdx[k] = j;
                        binW[k] = (m - pts[j]) / (pts[j + 1] - pts[j]);
                    }
                }
            }
            for (int i = 0; i < NCEP; i++) {
                for (int j = 0; j < NMEL; j++) {
                    dct[i][j] = (float) Math.cos(Math.PI * (i + 1) * (j + 0.5) / NMEL);
                }
            }
        }

        static float mel(float f) {
            return (float) (1127.0 * Math.log(1 + f / 700.0));
        }

        /** One sample; true when a frame is out in bands / edb[0]. */
        boolean push(short s, float[] bands, float[] edb) {
            float x = s - 0.97f * prev;
            prev = s;
            hist[fill] = x;
            raw[fill] = s;
            fill = (fill + 1) % FRAME;
            if (++since < HOP) {
                return false;
            }
            since = 0;
            float dc = 0, e = 0;
            for (int i = 0; i < FRAME; i++) {
                dc += raw[i];
            }
            dc /= FRAME;
            for (int i = 0; i < FRAME; i++) {
                int k = (fill + i) % FRAME;
                float v = (raw[k] - dc) * win[i];
                e += v * v;
                re[i] = hist[k] * win[i];
                im[i] = 0;
            }
            for (int i = FRAME; i < NFFT; i++) {
                re[i] = 0;
                im[i] = 0;
            }
            edb[0] = (float) (10 * Math.log10(e / FRAME + 1));
            fft();
            for (int j = 0; j < NMEL; j++) {
                bands[j] = 0;
            }
            for (int k = 0; k < NBIN; k++) {
                int j = binIdx[k];
                if (j < 0) {
                    continue;
                }
                float p = re[k] * re[k] + im[k] * im[k];
                if (j < NMEL) {
                    bands[j] += binW[k] * p;
                }
                if (j > 0) {
                    bands[j - 1] += (1 - binW[k]) * p;
                }
            }
            return true;
        }

        void fft() {
            for (int i = 1, j = 0; i < NFFT; i++) {
                int bit = NFFT >> 1;
                for (; (j & bit) != 0; bit >>= 1) {
                    j ^= bit;
                }
                j ^= bit;
                if (i < j) {
                    float t = re[i]; re[i] = re[j]; re[j] = t;
                    t = im[i]; im[i] = im[j]; im[j] = t;
                }
            }
            for (int len = 2; len <= NFFT; len <<= 1) {
                int step = NFFT / len;
                for (int i = 0; i < NFFT; i += len) {
                    for (int k = 0; k < len / 2; k++) {
                        float wr = cosT[k * step], wi = -sinT[k * step];
                        int a = i + k, b = a + len / 2;
                        float xr = re[b] * wr - im[b] * wi, xi = re[b] * wi + im[b] * wr;
                        re[b] = re[a] - xr;
                        im[b] = im[a] - xi;
                        re[a] += xr;
                        im[a] += xi;
                    }
                }
            }
        }
    }

    // ================================================================ word finder (kws.h v6)

    static final class Finder {
        float ON_DB = 12, QUIET_DB = 6, OFF_DB = 8, LOUD_DB = 18;
        int PRE_Q = 20, POST_Q = 22, MINLEN = 16, MAXLEN = 250, REC_POST_Q = 45;
        static final int NH = 150, SETTLE = 40;
        final float[] hist = new float[NH];
        int nh, hi;
        boolean lenient;
        final float[][] ring = new float[RING][NMEL + 1];
        final float[] noise = new float[NMEL];
        int t;
        float floorDb, spread;
        int state, quietRun, above, loudRun;
        long qEnd = -1000;
        int s0, lastAct;
        float peak;
        int w0, w1;
        float wPeak;
        boolean skipped;

        boolean frame(float[] bands, float edb) {
            if (t < SETTLE) {
                t++;
                return false;
            }
            float[] r = ring[t % RING];
            System.arraycopy(bands, 0, r, 0, NMEL);
            r[NMEL] = edb;
            boolean out = false;
            if (t == SETTLE) {
                floorDb = edb;
                System.arraycopy(bands, 0, noise, 0, NMEL);
            }
            float onDb = Math.max(ON_DB, spread + 8);
            loudRun = state == 0 && edb >= floorDb + onDb ? loudRun + 1 : 0;
            if (state == 2 || loudRun > 100 || (state == 0 && (nh < 20 || edb < floorDb + onDb))) {
                hist[hi] = edb;
                hi = (hi + 1) % NH;
                if (nh < NH) {
                    nh++;
                }
                if (nh < 20) {
                    floorDb = Math.min(floorDb, edb);
                } else if (t % 10 == 0) {
                    stats();
                }
            }
            float qDb = Math.max(QUIET_DB, spread + 3);
            onDb = Math.max(ON_DB, spread + 8);
            float offDb = Math.max(OFF_DB, spread + 4);
            float loudDb = Math.max(LOUD_DB, spread + 12);
            boolean quiet = edb < floorDb + qDb;
            if (state != 1 && quiet) {
                for (int j = 0; j < NMEL; j++) {
                    noise[j] += 0.05f * (bands[j] - noise[j]);
                }
            }
            if (state == 0) {
                above = edb > floorDb + (lenient ? onDb - 3 : onDb) ? above + 1 : 0;
                if (above >= 3 && t - qEnd <= 30) {
                    state = 1;
                    long b = Math.min(qEnd - 2, t - 5);
                    s0 = (int) Math.max(0, b);
                    peak = edb;
                    lastAct = t;
                }
            } else if (state == 1) {
                peak = Math.max(peak, edb);
                float off = Math.max(floorDb + offDb, peak - 35);
                if (edb > off) {
                    lastAct = t;
                }
                int post = lenient ? REC_POST_Q : POST_Q;
                if (t - s0 > MAXLEN + post) {
                    state = 2;
                    skipped = true;
                } else if (t - lastAct >= post) {
                    state = 0;
                    above = 0;
                    int e = lastAct + 3;
                    int len = e - s0;
                    if (len >= MINLEN && len <= MAXLEN && peak > floorDb + (lenient ? loudDb - 6 : loudDb)) {
                        w0 = s0;
                        w1 = e;
                        wPeak = peak;
                        out = true;
                    } else {
                        skipped = true;
                    }
                }
            } else if (state == 2 && quiet && quietRun >= POST_Q) {
                state = 0;
                above = 0;
            }
            if (quiet) {
                quietRun++;
                if (quietRun >= (lenient ? 5 : PRE_Q)) {
                    qEnd = t + 1;
                }
            } else {
                quietRun = 0;
            }
            t++;
            return out;
        }

        void stats() {
            float[] c = new float[nh];
            System.arraycopy(hist, 0, c, 0, nh);
            java.util.Arrays.sort(c);
            floorDb = c[nh / 2];
            spread = Math.min(10, c[nh * 9 / 10] - floorDb);
        }

        /** Frames [a, b) of the ring as a matched word (kws.h span). */
        void span(Word w, Front fr, int a, int b0, float pk) {
            int len = b0 - a;
            int n = Math.min(MAXF, (len + 1) / 2);
            float[][] f = new float[n][DIM];
            float[][] b = new float[n][NMEL];
            float top = 0;
            float[] mean = new float[DIM];
            for (int i = 0; i < n; i++) {
                float[] x = ring[(a + 2 * i) % RING];
                float[] y = 2 * i + 1 < len ? ring[(a + 2 * i + 1) % RING] : x;
                for (int j = 0; j < NMEL; j++) {
                    float p = (x[j] + y[j]) / 2 - 1.5f * noise[j];
                    b[i][j] = p > 0 ? p : 0;
                    top = Math.max(top, b[i][j]);
                }
                f[i][NCEP] = (x[NMEL] + y[NMEL]) / 2;
            }
            float flo = top * 1e-3f + 1;
            for (int i = 0; i < n; i++) {
                for (int j = 0; j < NMEL; j++) {
                    b[i][j] = (float) Math.log(b[i][j] + flo);
                }
                for (int c = 0; c < NCEP; c++) {
                    float v = 0;
                    for (int j = 0; j < NMEL; j++) {
                        v += fr.dct[c][j] * b[i][j];
                    }
                    f[i][c] = v;
                    mean[c] += v / n;
                }
            }
            for (int i = 0; i < n; i++) {
                for (int d = 0; d < NCEP; d++) {
                    w.f[i][d] = q((f[i][d] - mean[d]) * 3);
                }
                w.f[i][NCEP] = q((f[i][NCEP] - pk) * 2);
            }
            w.n = n;
        }

        static byte q(float v) {
            return (byte) Math.max(-127, Math.min(127, Math.round(v)));
        }
    }

    // ================================================================ DTW (kws.h)

    static int dtw(Word a, Word b, int limit) {
        int n = a.n, m = b.n;
        if (n < 2 || m < 2 || n > 2 * m || m > 2 * n) {
            return INF;
        }
        int band = Math.max(n, m) / 4 + 4;
        int[] prev = new int[m + 1], cur = new int[m + 1];
        java.util.Arrays.fill(prev, INF);
        prev[0] = 0;
        long lim = limit >= INF ? INF : (long) limit * (n + m) / 16;
        for (int i = 1; i <= n; i++) {
            int c = (i - 1) * (m - 1) / (n - 1) + 1, lo = Math.max(1, c - band), hi = Math.min(m, c + band);
            java.util.Arrays.fill(cur, INF);
            int rowMin = INF;
            for (int j = lo; j <= hi; j++) {
                byte[] x = a.f[i - 1], y = b.f[j - 1];
                int d = 0;
                for (int k = 0; k < DIM; k++) {
                    d += Math.abs(x[k] - y[k]);
                }
                int best = prev[j - 1] < INF ? prev[j - 1] + 2 * d : INF;
                if (prev[j] < INF && prev[j] + d < best) {
                    best = prev[j] + d;
                }
                if (cur[j - 1] < INF && cur[j - 1] + d < best) {
                    best = cur[j - 1] + d;
                }
                cur[j] = best;
                rowMin = Math.min(rowMin, best);
            }
            if (rowMin >= INF || rowMin > lim) {
                return INF;
            }
            int[] t = prev;
            prev = cur;
            cur = t;
        }
        return prev[m] >= INF ? INF : (int) ((long) prev[m] * 16 / (n + m));
    }

    // ================================================================ the spotter

    final Front front = new Front();
    final Finder finder = new Finder();
    final List<Word> tpl = new ArrayList<Word>();
    /** The look-alike word ("тренировка", owner 1.1.541: "it must not mix it up") — never a wake, only a contrast. */
    final List<Word> neg = new ArrayList<Word>();
    private boolean recordingNeg;
    int thr = DEFAULT_THR;
    /** > 1 accepts more easily (the setting); the tablet lowers it itself after wakes that led to nothing. */
    public float sens = 1.0f;
    static final float SENS_MIN = 0.7f, SENS_MAX = 1.0f;
    /**
     * Words that woke it for nothing (the room's noise, a look-alike): the next word closer to one of them than to
     * "тренер" is not a wake. The assistants' way — the false alarms the user never wanted are learned as negatives.
     */
    final List<Word> falseNeg = new ArrayList<Word>();
    static final int MAXFALSE = 6;
    /** The word that last woke it, and how close it was (a clean match followed by silence is a hesitation, not noise). */
    private Word lastWakeWord;
    private int lastWakeD = INF;
    /** Set when a word was heard and not taken (the diag log: why "тренер" needed a second try), read once. */
    public String miss;
    boolean recording;
    /** The current word already fired (one wake per word). */
    private boolean fired;
    /** Last distance seen (diagnostics: the learning page shows how close). */
    public int lastD = INF;
    /** The 10 ms frame the wake fired at (the command begins after it). */
    public int wakeFrame;
    private final float[] bands = new float[NMEL];
    private final float[] edb = new float[1];
    /**
     * How loud the trainer said the examples: the peak level in dB on this tablet's microphone (mean; 0 = unknown,
     * older recordings). Absolute, not over the floor: a noisy hall raises the floor, the trainer's voice stays as loud.
     * A word much quieter than that is the room — a voice across the hall, the radio, the trainer muttering — and
     * never wakes (owner, 1.1.555: "the louder speech, my voice, decides that the command is for it").
     */
    public float loud;
    private float loudSum;
    private int loudN;
    /** dB below the examples' loudness a wake still counts (a step further, a head turned). */
    static final float LOUD_MARGIN = 10;
    /** The last word's peak level (diagnostics). */
    public float lastLoud;

    boolean loudEnough(float peak) {
        lastLoud = peak;
        return loud <= 0 || lastLoud >= loud - loudMargin();
    }

    /** A tablet where it needed repeats (sens up) hears quieter words too; one that fired for nothing (sens down) less. */
    float loudMargin() {
        return LOUD_MARGIN + Math.max(0f, sens - 1f) * 30f;
    }

    public boolean ready() {
        return tpl.size() >= MAXT;
    }

    public int examples() {
        return tpl.size();
    }

    public int threshold() {
        return (int) (thr * sens);
    }

    /** The next word is an example of "тренер". */
    public void record() {
        recording = true;
        recordingNeg = false;
    }

    /** The next word is the look-alike ("тренировка"): it teaches the spotter what NOT to wake on. */
    public void recordContrast() {
        recording = true;
        recordingNeg = true;
    }

    public boolean hasContrast() {
        return !neg.isEmpty();
    }

    public void clear() {
        tpl.clear();
        neg.clear();
        thr = DEFAULT_THR;
        falseNeg.clear();
        sens = 1.0f;
        loud = 0;
        loudSum = 0;
        loudN = 0;
    }

    /** One 16 kHz sample → NONE / WAKE / RECORDED / SKIPPED. */
    public int push(short s) {
        if (!front.push(s, bands, edb)) {
            return NONE;
        }
        finder.lenient = recording;
        boolean closed = finder.frame(bands, edb[0]);
        if (finder.skipped) {
            finder.skipped = false;
            fired = false;
            return recording ? SKIPPED : NONE;
        }
        if (closed) {
            boolean was = fired;
            fired = false;
            Word w = new Word();
            finder.span(w, front, finder.w0, finder.w1, finder.wPeak);
            if (recording) {
                recording = false;
                List<Word> into = recordingNeg ? neg : tpl;
                if (!recordingNeg) {
                    loudSum += finder.wPeak;
                    loudN++;
                    loud = loudSum / loudN;
                }
                if (into.size() == MAXT) {
                    into.remove(0);
                }
                into.add(w);
                retune();
                return RECORDED;
            }
            if (!was && ready()) {
                boolean loudOk = loudEnough(finder.wPeak);
                if (loudOk && accept(w, 1f)) {
                    wakeFrame = finder.w1;
                    woke(w);
                    return WAKE;
                }
                miss = "word not taken: d=" + lastD + " limit=" + threshold() + " loud=" + Math.round(finder.wPeak)
                        + " need>=" + Math.round(loud - loudMargin()) + " sens=" + sens;
            }
            return NONE;
        }
        // while the word is said: as soon as it is as long as the examples, match it so far (every 50 ms)
        if (!recording && !fired && ready() && finder.state == 1 && finder.t % 5 == 0) {
            int len = finder.t - finder.s0;
            int tl = 2 * meanLen();
            if (len >= (int) (tl * 0.8f) && len <= (int) (tl * 1.3f)) {
                Word w = new Word();
                finder.span(w, front, finder.s0, finder.t, finder.peak);
                if (loudEnough(finder.peak) && accept(w, 1f)) {
                    fired = true;
                    wakeFrame = finder.t;
                    woke(w);
                    return WAKE;
                }
            }
        }
        return NONE;
    }

    int meanLen() {
        int s = 0;
        for (Word w : tpl) {
            s += w.n;
        }
        return tpl.isEmpty() ? 40 : s / tpl.size();
    }

    /** Close to "тренер" and, when the look-alike is known, clearly closer to it than to the look-alike. */
    private void woke(Word w) {
        lastWakeWord = w;
        lastWakeD = lastD;
    }

    /**
     * What the wake led to: a command (real) or silence (the room). Silence after a loose match teaches it the word as
     * a false alarm and makes it a little stricter; a command makes it a little more willing again.
     */
    public void feedback(boolean real) {
        if (real) {
            sens = sens < 1f ? Math.min(1.0f, sens * 1.04f) : sens;
            return;
        }
        if (lastWakeWord == null || lastWakeD == INF || lastWakeD < threshold() * 0.6f) {
            return;                                   // a clean "тренер" and then a hesitation: not the room
        }
        falseNeg.add(lastWakeWord);
        if (falseNeg.size() > MAXFALSE) {
            falseNeg.remove(0);
        }
        sens = Math.max(SENS_MIN, sens * 0.92f);
        lastWakeWord = null;
    }

    boolean accept(Word w) {
        return accept(w, 1f);
    }

    boolean accept(Word w, float factor) {
        int d = match(w);
        if (d > (int) (threshold() * factor)) {
            return false;
        }
        for (Word f : falseNeg) {
            if (dtw(w, f, INF) < d) {
                return false;                         // closer to a known false alarm than to "тренер"
            }
        }
        int dn = INF;
        for (Word t : neg) {
            dn = Math.min(dn, dtw(w, t, INF));
        }
        // the look-alike so far: compare also its beginning (what is said up to now) — "трени…" of "тренировка"
        for (Word t : neg) {
            if (t.n > w.n + 2) {
                Word head = new Word();
                head.n = Math.min(t.n, w.n);
                for (int i = 0; i < head.n; i++) {
                    System.arraycopy(t.f[i], 0, head.f[i], 0, DIM);
                }
                dn = Math.min(dn, dtw(w, head, INF));
            }
        }
        return dn >= INF || (long) d * 100 <= (long) MARGIN * dn;
    }

    int match(Word w) {
        int best = INF;
        for (Word t : tpl) {
            best = Math.min(best, dtw(w, t, best));
        }
        lastD = best;
        return best;
    }

    void retune() {
        int n = tpl.size();
        float base = DEFAULT_THR;
        if (n >= 2) {
            long sum = 0;
            int k = 0;
            for (int i = 0; i < n; i++) {
                for (int j = i + 1; j < n; j++) {
                    int d = dtw(tpl.get(i), tpl.get(j), INF);
                    if (d < INF) {
                        sum += d;
                        k++;
                    }
                }
            }
            if (k > 0) {
                base = 2.5f * sum / k;
            }
        }
        // never looser than THR_CAP: examples that differ a lot (a noisy recording, two different words) would make
        // the limit so wide that ordinary words pass (owner, 2026-11-25: "it reacts to random words")
        thr = Math.min(THR_CAP, (int) (base * SAFETY));
    }

    /** How alike the 3 examples are (0 = not computed): the learning page warns when they differ too much. */
    public int spreadOfExamples() {
        if (tpl.size() < 2) {
            return 0;
        }
        int worst = 0;
        for (int i = 0; i < tpl.size(); i++) {
            for (int j = i + 1; j < tpl.size(); j++) {
                worst = Math.max(worst, dtw(tpl.get(i), tpl.get(j), INF));
            }
        }
        return worst;
    }

    // ================================================================ storage (prefs: base64 by the caller)

    public byte[] save() {
        java.io.ByteArrayOutputStream o = new java.io.ByteArrayOutputStream();
        o.write(3);
        o.write(tpl.size());
        for (Word w : tpl) {
            byte[] b = w.pack();
            o.write(b, 0, b.length);
        }
        o.write(neg.size());
        for (Word w : neg) {
            byte[] b = w.pack();
            o.write(b, 0, b.length);
        }
        o.write(Math.max(0, Math.min(127, Math.round(loud))));
        return o.toByteArray();
    }

    public boolean load(byte[] b) {
        if (b == null || b.length < 2 || b[0] < 1 || b[0] > 3) {
            return false;
        }
        tpl.clear();
        neg.clear();
        int[] p = {2};
        if (!read(b, p, b[1], tpl)) {
            return false;
        }
        if (b[0] >= 2 && p[0] < b.length) {
            int nn = b[p[0]++];
            if (!read(b, p, nn, neg)) {
                return false;
            }
        }
        loud = b[0] == 3 && p[0] < b.length ? b[p[0]] : 0;
        loudSum = loud;
        loudN = loud > 0 ? 1 : 0;
        retune();
        return true;
    }

    private static boolean read(byte[] b, int[] p, int n, List<Word> into) {
        for (int i = 0; i < n && p[0] < b.length; i++) {
            int f = b[p[0]] & 0xff;
            int sz = 1 + f * DIM;
            if (p[0] + sz > b.length) {
                return false;
            }
            byte[] one = new byte[sz];
            System.arraycopy(b, p[0], one, 0, sz);
            into.add(Word.unpack(one));
            p[0] += sz;
        }
        return true;
    }
}
