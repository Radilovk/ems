package com.isaigu.gymapp.ai;

import java.io.File;
import java.nio.file.Files;
import java.util.Random;

/**
 * Two checks that only a tablet would show otherwise:
 * 1. the setup's cut: a word said after a pause goes through WakeWord's recording (as WakeSetup does) and the audio is
 *    cut with WakeListener.clip's arithmetic (ago0 / ago1 frames back, 30 ms each side) — the cut must hold the word;
 * 2. the live Detector scores the same windows as the training's batch features (Kws.logmel + Kws.window).
 * Usage: sh scripts/voice-kws/run-setup.sh <enroll dir with cut_*.raw>
 */
public class SetupSim {
    static int bad;

    static void check(boolean ok, String what) {
        System.out.println((ok ? "ok   " : "FAIL ") + what);
        if (!ok) {
            bad++;
        }
    }

    static float[] read(File f) throws Exception {
        byte[] b = Files.readAllBytes(f.toPath());
        float[] s = new float[b.length / 2];
        for (int i = 0; i < s.length; i++) {
            s[i] = (short) ((b[2 * i] & 0xff) | (b[2 * i + 1] << 8));
        }
        return s;
    }

    public static void main(String[] a) throws Exception {
        File[] cf = new File(a[0]).listFiles();
        java.util.Arrays.sort(cf);
        Random r = new Random(1);
        int n = 0;
        for (File f : cf) {
            if (!f.getName().startsWith("cut_")) {
                continue;
            }
            float[] w = read(f);
            // the room 1.5 s, the word, 1 s after; a ring of 3 s as WakeListener.RAW
            WakeWord ww = new WakeWord();
            short[] ring = new short[16000 * 3];
            int at = 0, fill = 0;
            float[] clip = null;
            int total = 24000 + w.length + 16000;
            for (int i = 0; i < total; i++) {
                if (i == 8000) {
                    ww.record();
                }
                double v = (i >= 24000 && i < 24000 + w.length ? w[i - 24000] : 0) + r.nextGaussian() * 6;
                short s = (short) Math.max(-32768, Math.min(32767, Math.round(v)));
                ring[at] = s;
                at = (at + 1) % ring.length;
                fill = Math.min(ring.length, fill + 1);
                if (ww.push(s) == WakeWord.RECORDED) {
                    int a0 = ww.ago0 * WakeWord.HOP + WakeWord.FRAME + 480, b0 = Math.max(0, ww.ago1 * WakeWord.HOP - 480);
                    a0 = Math.min(a0, fill);
                    int len = Math.max(0, a0 - b0);
                    clip = new float[len];
                    for (int k = 0; k < len; k++) {
                        clip[k] = ring[((at - a0 + k) % ring.length + ring.length) % ring.length];
                    }
                    // where the cut starts / ends in the stream
                    int start = i + 1 - a0, end = i + 1 - b0;
                    boolean holds = start <= 24000 + 800 && end >= 24000 + w.length - 800;
                    check(holds && len < w.length + 16000 * 6 / 10, f.getName() + ": cut " + start + ".." + end
                            + " holds the word 24000.." + (24000 + w.length) + " (" + len / 16 + " ms)");
                    break;
                }
            }
            if (clip == null) {
                check(false, f.getName() + ": the word was never recorded");
            }
            n++;
        }
        // 2. live = batch
        float[] w = read(new File(a[0], "cut_00.raw"));
        float[] x = new float[16000 * 2];
        for (int i = 0; i < x.length; i++) {
            x[i] = (float) (r.nextGaussian() * 200) + (i >= 8000 && i < 8000 + w.length ? w[i - 8000] : 0);
        }
        Kws m = new Kws();
        for (int i = 0; i < m.sd.length; i++) {
            m.sd[i] = 1;
        }
        Random q = new Random(2);
        for (int i = 0; i < m.w1.length; i++) {
            m.w1[i] = (float) (q.nextGaussian() * 0.05);
        }
        for (int i = 0; i < Kws.HID; i++) {
            m.w2[i] = (float) (q.nextGaussian() * 0.3);
        }
        m.threshold = 2;
        Kws.Detector d = new Kws.Detector(m);
        float[] lm = Kws.logmel(x);
        int k = 0;
        double worst = 0;
        int frames = 0;
        for (int i = 0; i < x.length; i++) {
            d.push((short) Math.round(x[i]));
            if (d.lastScore != 0) {
                // the detector scored the window ending at its latest frame: frames d.frames-W .. d.frames-1
                int start = d.frames - Kws.W;
                float b = m.score(Kws.window(lm, start));
                worst = Math.max(worst, Math.abs(b - d.lastScore));
                d.lastScore = 0;
                k++;
            }
        }
        check(k > 10 && worst < 1e-3, "the live detector = the training's features (" + k + " windows, worst " + worst + ")");
        System.out.println(bad == 0 ? "PASS" : "FAIL " + bad);
        System.exit(bad == 0 ? 0 : 1);
    }
}
