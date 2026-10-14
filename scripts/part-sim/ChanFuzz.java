package com.isaigu.gymapp.train.utils;
import com.isaigu.gymapp.bean.*;
import com.isaigu.gymapp.wearable.SecondParts;
import java.util.Random;
/**
 * Offline test of the focus board's chip slide (PartStrength.channelBy, 1.1.444): random rows, a channel slid up by
 * 20 up to 5 times and back. Other channels never move (both impulses); Интензитет 1 / 2 come back; the slid channel
 * reaches its top; green keeps the channel's ratio (rounding / the unit's top aside).
 */
public class ChanFuzz {
    public static void main(String[] a) {
        Random r = new Random(3); int backK = 0, fails = 0, runs = 0, notBack = 0, ratioOff = 0, notMax = 0;
        for (int n = 0; n < 20000; n++) {
            ProgramDataBean b = new ProgramDataBean(); b.strenthBean = new PartStrenthBean(); b.strenthBean.buwei = new int[10];
            for (int i = 0; i < 10; i++) b.strenthBean.buwei[i] = r.nextInt(5) == 0 ? 0 : 20 + r.nextInt(81);
            b.strenth = 10 + r.nextInt(80); b.activePause = r.nextInt(4) != 0; b.pauseStrenthPercent = 5 + r.nextInt(Math.max(1, b.strenth));
            TrainProgram tp = new TrainProgram(); tp.programDataBean = b; PartSim.Item it = new PartSim.Item(tp);
            if (b.activePause && r.nextBoolean()) { int[] e = b.strenthBean.buwei.clone(); for (int i = 0; i < 10; i++) e[i] = Math.max(0, Math.min(100, e[i] - 30 + r.nextInt(60))); SecondParts.set(b, b.strenthBean.buwei, e); }
            int k = r.nextInt(10);
            boolean yellow = b.activePause && r.nextInt(3) == 0;
            PartSim.Mgr mg = new PartSim.Mgr(); mg.list.add(it); PartSim.taps(new PartSim.Frag(mg), mg, it.partsControl, k, yellow ? 2 : 1);
            int I1 = b.strenth, I2 = b.pauseStrenthPercent;
            int[] om = PartSim.mainReal(b), os = PartSim.secondReal(it, b);
            int ups = 1 + r.nextInt(5); runs++;
            for (int u = 0; u < ups; u++) PartStrength.channelBy(it, k, 20);
            int[] m = PartSim.mainReal(b), s = PartSim.secondReal(it, b);
            for (int i = 0; i < 10; i++) if (i != k && (m[i] != om[i] || (b.activePause && s[i] != os[i]))) { fails++; if (fails < 6) System.out.println("other moved n=" + n + " ch" + i + " " + om[i] + "/" + os[i] + "->" + m[i] + "/" + s[i] + " I1 " + I1 + "->" + b.strenth + " I2 " + I2 + "->" + b.pauseStrenthPercent + " ap=" + b.activePause + " yel=" + yellow + " k=" + k + " ups=" + ups + " cap=" + PartStrength.secondCap(it,b)); }
            if (yellow) { if (m[k] != om[k]) { fails++; System.out.println("yellow moved main"); } if (s[k] < Math.min(100, os[k] + 20 * ups) - 1) notMax++; }
            else { if (m[k] < Math.min(100, om[k] + 20 * ups) - 1) notMax++;
                   if (b.activePause && om[k] >= 10 && os[k] >= 10 && m[k] > 0 && Math.abs(s[k] - os[k] * (double) m[k] / om[k]) > 1.5 && s[k] < PartStrength.secondCap(it,b)) { ratioOff++; if (ratioOff < 5) System.out.println("ratio n=" + n + " " + om[k] + "/" + os[k] + " -> " + m[k] + "/" + s[k] + " I1 " + I1 + "->" + b.strenth + " I2 " + I2 + "->" + b.pauseStrenthPercent + " cap=" + PartStrength.secondCap(it,b)); } }
            for (int u = 0; u < ups; u++) PartStrength.channelBy(it, k, -20);
            int[] m2 = PartSim.mainReal(b), s2 = PartSim.secondReal(it, b);
            for (int i = 0; i < 10; i++) if (i != k && (m2[i] != om[i] || (b.activePause && s2[i] != os[i]))) { fails++; if (fails < 6) System.out.println("other moved after down n=" + n + " ch" + i); }
            boolean room = yellow ? os[k] + 20 * ups <= 100 : om[k] + 20 * ups <= 100 && (!b.activePause || os[k] * (om[k] + 20.0 * ups) / Math.max(1, om[k]) <= 99);
            if (room && (m2[k] != om[k] || (b.activePause && Math.abs(s2[k] - os[k]) > 1))) { backK++; if (backK < 4) System.out.println("k not back n=" + n + " " + om[k] + "/" + os[k] + " -> " + m2[k] + "/" + s2[k] + " yel=" + yellow + " ups=" + ups + " I1 " + I1 + "->" + b.strenth + " I2 " + I2 + "->" + b.pauseStrenthPercent); }
            if (Math.abs(b.strenth - I1) > 1 || (b.activePause && Math.abs(b.pauseStrenthPercent - I2) > 1)) { notBack++; if (notBack < 4) System.out.println("not back n=" + n + " I1 " + I1 + "->" + b.strenth + " I2 " + I2 + "->" + b.pauseStrenthPercent + " yellow=" + yellow + " om=" + om[k] + " os=" + os[k]); }
        }
        // ring ± with 1–3 marked muscles (boardSelected, 1.1.445): ring 1 (green both / yellow second) and ring 2
        int bFails = 0, bBack = 0, bRuns = 0;
        for (int n = 0; n < 20000; n++) {
            ProgramDataBean b = new ProgramDataBean(); b.strenthBean = new PartStrenthBean(); b.strenthBean.buwei = new int[10];
            for (int i = 0; i < 10; i++) b.strenthBean.buwei[i] = r.nextInt(5) == 0 ? 0 : 20 + r.nextInt(81);
            b.strenth = 10 + r.nextInt(80); b.activePause = true; b.pauseStrenthPercent = 5 + r.nextInt(Math.max(1, b.strenth));
            TrainProgram tp = new TrainProgram(); tp.programDataBean = b; PartSim.Item it = new PartSim.Item(tp);
            PartSim.Mgr mg = new PartSim.Mgr(); mg.list.add(it); PartSim.Frag fr = new PartSim.Frag(mg);
            for (int i = 0; i < 10; i++) PartSim.taps(fr, mg, it.partsControl, i, 0);
            int marks = 1 + r.nextInt(3);
            for (int c = 0; c < marks; c++) PartSim.taps(fr, mg, it.partsControl, r.nextInt(10), 1 + r.nextInt(2));
            boolean ring2 = r.nextInt(3) == 0;
            int I1 = b.strenth, I2 = b.pauseStrenthPercent;
            int[] om = PartSim.mainReal(b), os = PartSim.secondReal(it, b);
            int ups = 1 + r.nextInt(30); bRuns++;
            for (int u = 0; u < ups; u++) PartStrength.boardSelected(it, 1, ring2);
            int[] m = PartSim.mainReal(b), s2 = PartSim.secondReal(it, b);
            for (int i = 0; i < 10; i++) if (!it.partsControl[i] && (m[i] != om[i] || s2[i] != os[i])) { bFails++; if (bFails < 4) System.out.println("ring: other moved n=" + n + " ch" + i); }
            for (int u = 0; u < ups; u++) PartStrength.boardSelected(it, -1, ring2);
            int[] mb = PartSim.mainReal(b), sb = PartSim.secondReal(it, b);
            for (int i = 0; i < 10; i++) if (!it.partsControl[i] && (mb[i] != om[i] || sb[i] != os[i])) { bFails++; if (bFails < 4) System.out.println("ring: other moved after n=" + n + " ch" + i); }
            boolean clipped = false;
            for (int i = 0; i < 10; i++) if (it.partsControl[i] && (om[i] + ups > 100 || os[i] + ups > 99 || om[i] < 1)) clipped = true;
            if (!clipped && (Math.abs(b.strenth - I1) > 1 || Math.abs(b.pauseStrenthPercent - I2) > 1)) { bBack++; if (bBack < 4) System.out.println("ring: not back n=" + n + " I1 " + I1 + "->" + b.strenth + " I2 " + I2 + "->" + b.pauseStrenthPercent + " ring2=" + ring2); }
        }
        System.out.println("ChanFuzz ring runs=" + bRuns + " otherMoved=" + bFails + " notBack=" + bBack);
        fails += bFails; notBack += bBack;
        System.out.println("ChanFuzz runs=" + runs + " otherMoved=" + fails + " notBack=" + notBack + " ratioOff=" + ratioOff + " notMax=" + notMax + " kNotBack=" + backK);
        if (fails > 0 || notBack > 0 || notMax > 0) { System.out.println("ChanFuzz: FAIL"); System.exit(1); }
        System.out.println("ChanFuzz: OK");
    }
}
