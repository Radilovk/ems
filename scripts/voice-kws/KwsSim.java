import com.isaigu.gymapp.ai.Kws;
import com.isaigu.gymapp.ai.KwsTrain;

import java.io.File;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.TreeSet;

/**
 * The personal "тренер" (ai/Kws + ai/KwsTrain) measured with the tablet's own code, the streaming Detector included.
 * The trainer's reading: cut_NN.raw (their "тренер") + own.raw (their other speech). Other voices: s_*.raw sentences and
 * t_ / tr_ / tp_ / tv_*.raw ("тренер", "треньор", "тренер, пауза", "тренировка"); a third of the voices only in the test.
 * 4 folds: trained on 8 (or 7) cuts, tested on the 3 (4) it never saw, in fixed halls; false wakes on an hour-scale
 * stream of the test voices over music + people talking.
 * Usage: sh scripts/voice-kws/run-kws.sh <enroll dir> <sentences dir> <words dir> [pack-out]
 */
public class KwsSim {
    static short[] read(File f) throws Exception {
        byte[] b = Files.readAllBytes(f.toPath());
        short[] s = new short[b.length / 2];
        for (int i = 0; i < s.length; i++) {
            s[i] = (short) ((b[2 * i] & 0xff) | (b[2 * i + 1] << 8));
        }
        return s;
    }

    static float[] f(short[] s) {
        float[] x = new float[s.length];
        for (int i = 0; i < s.length; i++) {
            x[i] = s[i];
        }
        return x;
    }

    static String voice(File f) {
        String n = f.getName();
        return n.substring(n.indexOf('_') + 1).replaceAll("_.*|\\.raw", "");
    }

    static float[] cat(List<float[]> parts, Random r, int gapMax) {
        int n = 0;
        for (float[] p : parts) {
            n += p.length + gapMax;
        }
        float[] out = new float[n];
        int at = 0;
        for (float[] p : parts) {
            System.arraycopy(p, 0, out, at, p.length);
            at += p.length + (int) (r.nextDouble() * gapMax);
        }
        return java.util.Arrays.copyOf(out, at);
    }

    /** The detector's score of every window of a clip (it never fires: the line is set over 1). */
    static float[] scores(Kws m, float[] clip) {
        float keep = m.threshold;
        m.threshold = 2f;
        Kws.Detector d = new Kws.Detector(m);
        float[] out = new float[clip.length / (Kws.HOP * Kws.STEP) + 2];
        int k = 0;
        int lastFrame = -1;
        for (float v : clip) {
            d.push((short) Math.max(-32768, Math.min(32767, Math.round(v))));
            if (d.lastScore != 0 && k < out.length) {
                out[k++] = d.lastScore;
                d.lastScore = 0;
            }
        }
        m.threshold = keep;
        return java.util.Arrays.copyOf(out, k);
    }

    /** Wakes in a score track at this line: two windows in a row over it, then 1.2 s (24 windows) of rest. */
    static int wakes(float[] sc, float th) {
        int n = 0, rest = 0;
        for (int i = 1; i < sc.length; i++) {
            if (rest > 0) {
                rest--;
                continue;
            }
            if (sc[i] > th && sc[i - 1] > th) {
                n++;
                rest = 24;
            }
        }
        return n;
    }

    public static void main(String[] a) throws Exception {
        File en = new File(a[0]), sd = new File(a[1]), wd = new File(a[2]);
        KwsTrain.EPOCHS = Integer.getInteger("epochs", KwsTrain.EPOCHS);
        KwsTrain.PER_CUT = Integer.getInteger("per", KwsTrain.PER_CUT);
        List<float[]> cuts = new ArrayList<float[]>();
        File[] cf = en.listFiles((d, n) -> n.startsWith("cut_"));
        java.util.Arrays.sort(cf);
        for (File c : cf) {
            cuts.add(f(read(c)));
        }
        float[] own = f(read(new File(en, "own.raw")));
        File[] sents = sd.listFiles((d, n) -> n.startsWith("s_") && n.endsWith(".raw"));
        File[] words = wd.listFiles((d, n) -> n.matches("(t|tr|tp|tv)_.*\\.raw"));
        TreeSet<String> vs = new TreeSet<String>();
        for (File x : sents) {
            vs.add(voice(x));
        }
        for (File x : words) {
            vs.add(voice(x));
        }
        List<String> vl = new ArrayList<String>(vs);
        TreeSet<String> test = new TreeSet<String>();
        for (int i = 0; i < vl.size(); i += 3) {
            test.add(vl.get(i));
        }
        boolean all = a.length > 3;                       // building the app's pack: every voice in it
        List<float[]> trS = new ArrayList<float[]>(), teS = new ArrayList<float[]>();
        for (File x : sents) {
            (all || !test.contains(voice(x)) ? trS : teS).add(f(read(x)));
        }
        List<float[]> trW = new ArrayList<float[]>(), teW = new ArrayList<float[]>();
        for (File x : words) {
            boolean neg = x.getName().startsWith("tv_");
            if (all || !test.contains(voice(x))) {
                trW.add(f(read(x)));
            } else if (!neg) {
                teW.add(f(read(x)));
            }
        }
        Random r = new Random(598);
        // people talking (the halls' "babble"): 4 sentences at once, 90 s
        int bl = Kws.SR * Integer.getInteger("people", 90);
        float[] people = new float[bl];
        for (int k = 0; k < bl / Kws.SR * 2; k++) {
            float[] s = trS.get(r.nextInt(trS.size()));
            int at = r.nextInt(Math.max(1, bl - s.length));
            double e = 0;
            for (float v : s) {
                e += v * v;
            }
            float g = (float) (3000 / Math.sqrt(e / s.length + 1));
            for (int i = 0; i < s.length && at + i < bl; i++) {
                people[at + i] += s[i] * g;
            }
        }
        long t0 = System.currentTimeMillis();
        List<float[]> packNeg = new ArrayList<float[]>();
        float[] allTr = cat(trS, r, 1);
        KwsTrain.negatives(allTr, Integer.getInteger("packneg", 9000), people, r, packNeg);
        for (float[] w : trW) {
            KwsTrain.otherWord(w, Integer.getInteger("packword", 25), people, r, packNeg);
        }
        KwsTrain.silence(Integer.getInteger("packsil", 1500), people, r, packNeg);
        KwsTrain.Pack pack = new KwsTrain.Pack();
        pack.neg.addAll(packNeg);
        pack.people = people;
        System.out.printf("pack: %d negative windows (%d voices for training, %d only in the test), %.1f s%n",
                packNeg.size(), vl.size() - test.size(), test.size(), (System.currentTimeMillis() - t0) / 1000.0);
        if (all) {
            byte[] b = KwsTrain.savePack(packNeg, people);
            Files.write(new File(a[3]).toPath(), b);
            System.out.println("pack written: " + a[3] + " (" + b.length / 1024 + " KB)");
            return;
        }
        int[][] folds = {{0, 4, 8}, {1, 5, 9}, {2, 6, 10}, {3, 7}};
        String[] cond = {"clean near", "music 10 dB", "music 5 dB", "music 0 dB", "people 5 dB", "far+echo+music 5 dB"};
        List<List<Float>> hits = new ArrayList<List<Float>>();
        for (int c = 0; c < cond.length; c++) {
            hits.add(new ArrayList<Float>());
        }
        List<float[]> faTracks = new ArrayList<float[]>();
        double faHours = 0;
        List<Float> other = new ArrayList<Float>();
        float[] tePeople = new float[bl];
        for (int k = 0; k < bl / Kws.SR * 2; k++) {
            float[] s = teS.get(r.nextInt(teS.size()));
            int at = r.nextInt(Math.max(1, bl - s.length));
            for (int i = 0; i < s.length && at + i < bl; i++) {
                tePeople[at + i] += s[i];
            }
        }
        for (int fi = 0; fi < folds.length; fi++) {
            List<float[]> tr = new ArrayList<float[]>();
            java.util.Set<Integer> ts = new java.util.HashSet<Integer>();
            for (int i : folds[fi]) {
                ts.add(i);
            }
            for (int i = 0; i < cuts.size(); i++) {
                if (!ts.contains(i)) {
                    tr.add(cuts.get(i));
                }
            }
            long t1 = System.currentTimeMillis();
            Kws m = KwsTrain.train(tr, own, pack, 598 + fi, null);
            System.out.printf("fold %d: trained in %.1f s%n", fi, (System.currentTimeMillis() - t1) / 1000.0);
            for (int i : folds[fi]) {
                for (int rep = 0; rep < 6; rep++) {
                    for (int c = 0; c < cond.length; c++) {
                        float[] x = cuts.get(i).clone();
                        if (c == 5) {
                            x = KwsTrain.reverb(x, 0.5, r);
                            for (int q = 0; q < x.length; q++) {
                                x[q] *= 0.178f;              // −15 dB
                            }
                        }
                        float[] clip = new float[2 * Kws.SR + x.length];
                        System.arraycopy(x, 0, clip, Kws.SR, x.length);
                        double snr = c == 1 ? 10 : c == 2 || c == 4 || c == 5 ? 5 : c == 3 ? 0 : 99;
                        if (c > 0) {
                            float[] bg = c == 4 ? KwsTrain.slice(tePeople, clip.length, r) : KwsTrain.music(clip.length, r);
                            KwsTrain.mix(clip, bg, snr);
                        }
                        for (int q = 0; q < clip.length; q++) {
                            clip[q] += (float) (r.nextGaussian() * 3);
                        }
                        float[] sc = scores(m, clip);
                        float best = 0;
                        for (int q = 1; q < sc.length; q++) {
                            best = Math.max(best, Math.min(sc[q], sc[q - 1]));
                        }
                        hits.get(c).add(best);
                    }
                }
            }
            // an hour-scale stream: the test voices' sentences ×3 over music + people at 8 dB
            List<float[]> parts = new ArrayList<float[]>();
            for (int rep = 0; rep < 3; rep++) {
                parts.addAll(teS);
            }
            java.util.Collections.shuffle(parts, r);
            float[] st = cat(parts, r, Kws.SR);
            float[] bg = KwsTrain.music(st.length, r);
            float[] pp = KwsTrain.slice(tePeople, st.length, r);
            for (int q = 0; q < st.length; q++) {
                bg[q] = 0.5f * bg[q] + 0.5f * pp[q];
            }
            KwsTrain.mix(st, bg, 8);
            faTracks.add(scores(m, st));
            faHours += st.length / (double) Kws.SR / 3600;
            for (float[] w : teW) {
                float[] clip = new float[w.length + Kws.SR];
                System.arraycopy(w, 0, clip, Kws.SR / 2, w.length);
                for (int q = 0; q < clip.length; q++) {
                    clip[q] += (float) (r.nextGaussian() * 3);
                }
                float[] sc = scores(m, clip);
                float best = 0;
                for (int q = 1; q < sc.length; q++) {
                    best = Math.max(best, Math.min(sc[q], sc[q - 1]));
                }
                other.add(best);
            }
        }
        System.out.printf("false-wake stream: %.2f h of other voices over music + people%n", faHours);
        for (float th : new float[] {0.5f, 0.7f, 0.8f, 0.9f, 0.95f, 0.98f, 0.99f}) {
            int fa = 0;
            for (float[] t : faTracks) {
                fa += wakes(t, th);
            }
            StringBuilder b = new StringBuilder(String.format("th %.2f: false wakes %5.1f/h |", th, fa / faHours));
            for (int c = 0; c < cond.length; c++) {
                int h = 0;
                for (float v : hits.get(c)) {
                    h += v > th ? 1 : 0;
                }
                b.append(String.format(" %s %3.0f%%", cond[c], 100.0 * h / hits.get(c).size()));
            }
            int o = 0;
            for (float v : other) {
                o += v > th ? 1 : 0;
            }
            b.append(String.format(" | other people's 'тренер' taken %3.0f%%", 100.0 * o / Math.max(1, other.size())));
            System.out.println(b);
        }
    }
}
