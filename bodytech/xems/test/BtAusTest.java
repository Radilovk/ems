package com.isaigu.gymapp.bodytech;

import java.util.List;

/** Offline check of the Australian-current templates, the timeline and the multi-channel program (no suit, no Android). */
public class BtAusTest {
    static int fails;

    static void eq(String what, Object want, Object got) {
        if (!String.valueOf(want).equals(String.valueOf(got))) {
            fails++;
            System.out.println("FAIL " + what + ": want " + want + " got " + got);
        }
    }

    static boolean has(List<byte[]> l, byte[] f) {
        for (byte[] x : l) if (java.util.Arrays.equals(x, f)) return true;
        return false;
    }

    public static void main(String[] args) {
        // bursts: 50 Hz × 4 ms = 4 / 16, 100 Hz × 4 ms = 4 / 6, 10 Hz × 2 ms = 2 / 98, none = 0 / 0
        eq("burst 50", "4/16", BtAus.burst(50, 4)[0] + "/" + BtAus.burst(50, 4)[1]);
        eq("burst 100", "4/6", BtAus.burst(100, 4)[0] + "/" + BtAus.burst(100, 4)[1]);
        eq("burst 10", "2/98", BtAus.burst(10, 2)[0] + "/" + BtAus.burst(10, 2)[1]);
        eq("burst none", "0/0", BtAus.burst(0, 4)[0] + "/" + BtAus.burst(0, 4)[1]);
        eq("burst longer than the period", "0/0", BtAus.burst(500, 4)[0] + "/" + BtAus.burst(500, 4)[1]);
        eq("width at 1 kHz", 500, BtAus.widthFor(1000, 500));
        eq("width at 2 kHz is half the period", 250, BtAus.widthFor(2000, 500));

        // every procedure is sane: passive, phases that fit the suit
        for (BtAus.T t : BtAus.ALL) {
            eq(t.id + " passive", BtAus.PASSIVE, t.kind);
            eq(t.id + " zones", true, t.zones.length > 0);
            eq(t.id + " minutes", true, t.minutes >= 10 && t.minutes <= 45);
            for (BtAus.Ph p : t.ph) {
                String w = t.id + "/" + p.name;
                eq(w + " width ok", true, p.us <= BtTranslator.maxUsAt(p.carrier) && p.us >= BtTranslator.MIN_US);
                eq(w + " level", true, p.level >= 1 && p.level <= 10);
                eq(w + " hz", true, p.carrier >= 1 && p.carrier <= BtTranslator.TEST_HZ_MAX);
                if (p.burstHz > 0) {
                    int[] bb = BtAus.burst(p.burstHz, p.burstMs);
                    eq(w + " burst fits", true, bb[0] > 0);
                    eq(w + " burst duty <= 20 %", true, bb[0] * 100 <= 20 * (bb[0] + bb[1]));
                }
                if (p.carrier >= 4000) eq(w + " 4 kHz at 125 us", 125, BtAus.widthFor(p.carrier, p.us));
            }
        }
        eq("9 procedures", 9, BtAus.ALL.length);
        eq("byId", "ifc-acute", BtAus.byId("ifc-acute").id);
        eq("byId none", null, BtAus.byId("strength"));
        eq("only tone is advanced", true, BtAus.byId("tone").advanced && !BtAus.byId("shape").advanced);
        eq("lipolysis 40 min", 40, BtAus.byId("lipolysis").minutes);

        // chain of phases
        int[] mins = {5, 13, 6, 5};
        eq("phase 0 at 0", 0, BtAus.phaseAt(mins, 0)[0]);
        eq("phase 0 at 299", 0, BtAus.phaseAt(mins, 299)[0]);
        eq("phase 1 at 300", 1, BtAus.phaseAt(mins, 300)[0]);
        eq("phase 1 start", 300, BtAus.phaseAt(mins, 300)[1]);
        eq("phase 3 start", (5 + 13 + 6) * 60, BtAus.phaseAt(mins, 1500)[1]);
        eq("past the end", -1, BtAus.phaseAt(mins, 29 * 60)[0]);
        eq("a skipped (0 min) phase is passed", 2, BtAus.phaseAt(new int[]{5, 0, 6}, 300)[0]);

        // timeline: on 10 (ramps 2) off 30
        BtAus.Pos p = BtAus.at(10, 30, 2, 0);
        eq("t0 ramp up", BtAus.RAMP_UP, p.phase);
        eq("t0 factor", 0.0f, p.factor);
        eq("t1 half", 0.5f, BtAus.at(10, 30, 2, 1).factor);
        eq("t5 hold", BtAus.HOLD, BtAus.at(10, 30, 2, 5).phase);
        eq("t5 full", 1.0f, BtAus.at(10, 30, 2, 5).factor);
        eq("t9 ramp down", BtAus.RAMP_DOWN, BtAus.at(10, 30, 2, 9).phase);
        eq("t9 half", 0.5f, BtAus.at(10, 30, 2, 9).factor);
        eq("t10 rest", BtAus.REST, BtAus.at(10, 30, 2, 10).phase);
        eq("t10 rest left", 30, BtAus.at(10, 30, 2, 10).left);
        eq("t39.5 rest", BtAus.REST, BtAus.at(10, 30, 2, 39.5).phase);
        eq("t40 next cycle", BtAus.RAMP_UP, BtAus.at(10, 30, 2, 40).phase);
        eq("continuous: ramp at start", BtAus.RAMP_UP, BtAus.at(0, 0, 2, 1).phase);
        eq("continuous: steady", BtAus.STEADY, BtAus.at(0, 0, 2, 5).phase);
        eq("continuous: full", 1.0f, BtAus.at(0, 0, 2, 5).factor);
        eq("ramps share a short on", 0.5f, BtAus.at(2, 2, 5, 0.5).factor);

        // strength
        eq("pct full", 20, BtAus.pct(20, 1f, 100));
        eq("pct half", 10, BtAus.pct(20, 0.5f, 100));
        eq("pct channel gain 150", 30, BtAus.pct(20, 1f, 150));
        eq("pct zero factor", 0, BtAus.pct(20, 0f, 100));
        eq("pct tiny rises to 1", 1, BtAus.pct(5, 0.01f, 100));
        eq("pct cap 99", 99, BtAus.pct(99, 1f, 150));

        // interferential: 2 Hz beat needs a lower carrier, 100 Hz at 2 kHz
        int[] c = BtAus.ifcPair(1400, 2);
        double beat = BtAus.realHz(c[1]) - BtAus.realHz(c[0]);
        eq("ifc 2 Hz beat", true, Math.abs(beat - 2.0) < 0.3);
        int[] a = BtAus.ifcPair(2000, 100);
        double b2 = BtAus.realHz(a[1]) - BtAus.realHz(a[0]);
        eq("ifc 100 Hz beat", true, Math.abs(b2 - 100.0) < 2.5);
        int hb = BtAus.ifcB(2000, 80);
        eq("ifc sweep low", true, Math.abs(BtAus.realHz(hb) - 2000 - 80) < 2.5);
        eq("sweep start", 80.0, BtAus.beatAt(80, 100, 6, 0));
        eq("sweep middle", 100.0, BtAus.beatAt(80, 100, 6, 3));
        eq("sweep fixed", 2.0, BtAus.beatAt(2, 2, 0, 5));

        // a program on several channels: strengths, per-channel Hz, burst, one SEL
        BtSettings.reset();
        BtTranslator tr = new BtTranslator();
        int[] pc = new int[9];
        int[] hz = new int[9];
        pc[2] = 10;
        pc[7] = 12;
        hz[2] = 1000;
        hz[7] = 1000;
        List<byte[]> f = tr.programOn(pc, hz, 500, 1, 4, 16, 1, 0);
        eq("prog: strength ch2", true, has(f, BtProto.intensity(2, 10)));
        eq("prog: strength ch7", true, has(f, BtProto.intensity(7, 12)));
        eq("prog: Hz ch2", true, has(f, BtProto.hz(2, 1000)));
        eq("prog: width ch7", true, has(f, BtProto.width(7, 500)));
        eq("prog: sine ch2", true, has(f, BtProto.waveform(2, 1)));
        eq("prog: sine ch7", true, has(f, BtProto.waveform(7, 1)));
        eq("prog: burst on", true, has(f, BtProto.t(2, 2, 4)));
        eq("prog: burst off", true, has(f, BtProto.t(7, 4, 16)));
        eq("prog: SEL ch2+ch7", true, has(f, BtProto.enable((1 << 1) | (1 << 6))));
        eq("prog is not a training", false, tr.training());
        eq("prog renewed: nothing new", 0, tr.programOn(pc, hz, 500, 1, 4, 16, 1, 400).size());
        pc[2] = 5;
        f = tr.programOn(pc, hz, 500, 1, 4, 16, 1, 800);
        eq("prog: only ch2 changes", 1, f.size());
        eq("prog: ch2 5 %", true, has(f, BtProto.intensity(2, 5)));
        pc[7] = 0;
        f = tr.programOn(pc, hz, 500, 1, 4, 16, 1, 1200);
        eq("prog: ch7 silent leaves the SEL", true, has(f, BtProto.enable(1 << 1)));
        // two carriers (interferential)
        hz[2] = 2000;
        hz[7] = 2100;
        pc[7] = 4;
        f = tr.programOn(pc, hz, 500, 1, 0, 0, 1, 1600);
        eq("ifc: ch2 2000 Hz", true, has(f, BtProto.hz(2, 2000)));
        eq("ifc: ch7 2100 Hz", true, has(f, BtProto.hz(7, 2100)));
        eq("ifc: width cut to the narrower half period", true, has(f, BtProto.width(2, 238)) && has(f, BtProto.width(7, 238)));
        // off when nobody renews
        eq("prog ends without a renewal", true, tr.heartbeat(1600 + BtTranslator.TEST_MS + 10).size() > 0);
        // all zero = off
        tr.programOn(pc, hz, 500, 1, 0, 0, 1, 5000);
        java.util.Arrays.fill(pc, 0);
        f = tr.programOn(pc, hz, 500, 1, 0, 0, 1, 5100);
        eq("zero strengths = SEL off", true, has(f, BtProto.allOff()));
        // a refused start while a training runs
        BtTranslator t2 = new BtTranslator();
        t2.command(BtTranslator.CMD_START, new byte[1], 0);
        byte[] s = new byte[11];
        s[1] = 20;
        t2.command(BtTranslator.CMD_SETTING, s, 0);
        byte[] run = new byte[11];
        run[1] = 0;
        run[2] = 60;
        run[3] = 85;
        run[4] = 7;
        run[5] = 6;
        run[6] = 4;
        run[10] = 1;
        t2.command(BtTranslator.CMD_RUN, run, 10);
        pc[2] = 5;
        eq("program refused during a training", 0, t2.programOn(pc, hz, 500, 1, 0, 0, 1, 20).size());

        if (fails == 0) System.out.println("BtAusTest: OK");
        else {
            System.out.println("BtAusTest: " + fails + " FAILED");
            System.exit(1);
        }
    }
}
