package com.isaigu.gymapp.bodytech;

import java.util.List;

/** Offline check of WiProto / WiTranslator against the owner's capture (wiems/PROTOCOL.md) — no unit, no Android. */
public class WiTranslatorTest {
    static int fails, checks;

    static void eq(String what, Object want, Object got) {
        checks++;
        if (!String.valueOf(want).equals(String.valueOf(got))) {
            fails++;
            System.out.println("FAIL " + what + ":\n  want " + want + "\n  got  " + got);
        }
    }

    static String hex(byte[] f) {
        StringBuilder b = new StringBuilder();
        for (int i = 0; i < f.length; i++) b.append(i == 1 ? ":" : "").append(String.format("%02x", f[i] & 0xFF));
        return b.toString();
    }

    static String all(List<byte[]> l) {
        StringBuilder b = new StringBuilder();
        for (byte[] f : l) b.append(hex(f)).append(' ');
        return b.toString().trim();
    }

    static byte[] setting(int... s) {
        byte[] p = new byte[11];
        for (int i = 0; i < 10; i++) p[1 + i] = (byte) (i < s.length ? s[i] : 0);
        return p;
    }

    /** XEMS cmd 3: [1..2] seconds left, [3] Hz, [4] width/50 µs, [5] impulse s, [6] pause s, [10] 1 = on. */
    static byte[] run(int hz, int on, int off, boolean flag) {
        byte[] p = new byte[11];
        p[1] = 0x04;
        p[2] = (byte) 0xB0;
        p[3] = (byte) hz;
        p[4] = 7;
        p[5] = (byte) on;
        p[6] = (byte) off;
        p[10] = (byte) (flag ? 1 : 0);
        return p;
    }

    static byte[] b(int... v) {
        byte[] r = new byte[v.length];
        for (int i = 0; i < v.length; i++) r[i] = (byte) v[i];
        return r;
    }

    public static void main(String[] a) {
        // ---- frames byte for byte as the vendor app wrote them (capture 1)
        eq("program 84 arm", "01:2954040800007e050208", hex(WiProto.program(84, 4, 8, 0, 0, 2)));
        eq("program 84 run", "01:2954040800007e05000a", hex(WiProto.program(84, 4, 8, 0, 0, 0)));
        eq("program 89 arm", "01:2959040800007e050205", hex(WiProto.program(89, 4, 8, 0, 0, 2)));
        eq("program 92 rd1", "01:295c040800017e050003", hex(WiProto.program(92, 4, 8, 0, 1, 0)));
        eq("rest 5 exact", "02:0564000000000000a5c4", hex(WiProto.rest(5, 100)));
        eq("rest 6", "02:0664000000000000a5c7", hex(WiProto.rest(6, 100)));
        eq("rest 7", "02:0764000000000000a5c6", hex(WiProto.rest(7, 100)));
        eq("widths", "03:7f7f6d497f7f64527f52", hex(WiProto.widths()));
        eq("currents", "00:0c00020f0f0f0d0d000f", hex(WiProto.currents(new int[] {12, 0, 2, 15, 15, 15, 13, 13, 0, 15})));
        eq("currents cap", "00:64000000000000000000", hex(WiProto.currents(new int[] {300})));
        eq("start", "04:25", hex(WiProto.run(true)));
        eq("stop", "04:00", hex(WiProto.run(false)));
        eq("clock work", "5 true", WiProto.clockTenths(b(0xb0, 0x30, 0x30, 0x30, 0x30, 0x35)) + " "
                + WiProto.clockWork(b(0xb0, 0x30, 0x30, 0x30, 0x30, 0x35)));
        eq("clock rest", "43 false", WiProto.clockTenths(b(0x30, 0x30, 0x30, 0x30, 0x34, 0x33)) + " "
                + WiProto.clockWork(b(0x30, 0x30, 0x30, 0x30, 0x34, 0x33)));
        eq("name", "true false", WiProto.nameIsWiems("WIEMS - EMS Device") + " " + WiProto.nameIsWiems("EMS08-05629"));
        eq("chr", WiProto.CHR_PROGRAM, WiProto.chr(WiProto.program(84, 4, 8, 0, 0, 2)));

        // ---- a training as the stock row says it
        WiTranslator t = new WiTranslator();
        long now = 1000;
        // the row's init after connect: stop → the unit is stopped first (it may run from before)
        eq("init stop", "00:00000000000000000000 04:00", all(t.command(0xF2, new byte[1], now)));
        eq("battery", "", all(t.command(5, new byte[1], now)));
        // parameters before the start: kept, nothing out
        eq("setting idle", "", all(t.command(1, setting(10, 0, 20), now)));
        eq("run idle", "", all(t.command(3, run(84, 4, 8, true), now)));
        // start: F1, sliders, impulse → the vendor's start sequence
        eq("F1", "", all(t.command(0xF1, new byte[1], now)));
        eq("setting", "", all(t.command(1, setting(10, 0, 20), now)));
        eq("impulse → start", "01:2954040800007e050208 02:0564000000000000a5c4 03:7f7f6d497f7f64527f52 04:25",
                all(t.command(3, run(84, 4, 8, true), now)));
        eq("counting", "true", t.counting());
        // the row ramps during the count-down: remembered only
        eq("ramp in count-down", "", all(t.command(1, setting(12, 0, 24), now + 500)) + all(t.command(3, run(84, 4, 8, true), now + 500)));
        // the unit's first "01": program phase 0, then the strengths
        eq("count-down over", "01:2954040800007e05000a 00:0c001800000000000000", all(t.runNotify(b(1))));
        eq("again 01", "", all(t.runNotify(b(1))));
        // a slider change in the impulse
        eq("change", "00:0f001800000000000000", all(t.command(1, setting(15, 0, 24), now + 1000)) + all(t.command(3, run(84, 4, 8, true), now + 1000)));
        // pause without second impulse: strengths 0
        eq("pause", "00:00000000000000000000", all(t.command(3, run(84, 4, 8, false), now + 4000)));
        // second impulse in the pause: rest Hz to the unit, its sliders
        t.phase(WiTranslator.SECOND);
        eq("second", "", all(t.command(1, setting(5, 0, 5), now + 4500)));
        eq("second run", "02:0864000000000000a5c9 00:05000500000000000000", all(t.command(3, run(8, 4, 8, true), now + 4500)));
        // next impulse with a new Hz: zeros, program phase 0, strengths
        t.phase(WiTranslator.MAIN);
        t.command(1, setting(15, 0, 24), now + 12000);
        eq("new hz", "00:00000000000000000000 01:2959040800007e050007 00:0f001800000000000000",
                all(t.command(3, run(89, 4, 8, true), now + 12000)));
        // nobody renews: strengths 0 after the longer phase + 3 s
        eq("heartbeat early", "", all(t.heartbeat(now + 12000 + 8000)));
        eq("heartbeat late", "00:00000000000000000000", all(t.heartbeat(now + 12000 + 11001)));
        // pause / stop: the unit stops
        eq("F2", "04:00", all(t.command(0xF2, new byte[1], now + 30000)));
        eq("running after F2", "false", t.running());
        eq("reset idle", "", all(t.reset()));

        // ---- count-down without the unit's "01": goes on after its timeout
        WiTranslator u = new WiTranslator();
        u.command(0xF2, new byte[1], 0);
        u.command(0xF1, new byte[1], 0);
        u.command(1, setting(7), 0);
        u.command(3, run(85, 4, 4, true), 0);
        eq("no 01 yet", "", all(u.heartbeat(5000)));
        eq("no 01 → run", "01:2955040400007e050007 00:07000000000000000000", all(u.heartbeat(6001)));
        // a lost link: the next command stops the unit first
        u.forget();
        eq("after forget", "00:00000000000000000000 04:00", all(u.command(5, new byte[1], 7000)));
        // F2 during the count-down stops it
        u.command(0xF1, new byte[1], 8000);
        u.command(1, setting(7), 8000);
        u.command(3, run(85, 4, 4, true), 8000);
        eq("F2 in count-down", "04:00", all(u.command(0xF2, new byte[1], 8500)));

        // ---- ▶ on the row: the unit is started at once (program last heard), the row waits for its count-down
        WiTranslator w = new WiTranslator();
        w.command(0xF2, new byte[1], 0);
        w.command(3, run(70, 5, 10, true), 0);                 // a parameter heard before the start
        eq("arm", "01:2946050a00007e050219 02:0564000000000000a5c4 03:7f7f6d497f7f64527f52 04:25", all(w.arm(100)));
        eq("arm twice", "", all(w.arm(200)));
        eq("percent", "44", w.countdownPercent(2100));
        eq("01 before F1: strengths stay 0", "01:2946050a00007e05001b", all(w.runNotify(b(1))));
        eq("percent after", "-1", w.countdownPercent(4600));
        w.command(0xF1, new byte[1], 4700);
        w.command(1, setting(9, 9), 4700);
        eq("row starts: strengths only", "00:09090000000000000000", all(w.command(3, run(70, 5, 10, true), 4700)));

        // ---- the unit runs after its count-down but the row never starts: stopped after 30 s
        WiTranslator z = new WiTranslator();
        z.command(0xF2, new byte[1], 0);
        z.arm(0);
        z.runNotify(b(1));
        eq("idle run 1", "", all(z.heartbeat(1000)));
        eq("idle run 30 s", "", all(z.heartbeat(31000)));
        eq("idle run stop", "04:00", all(z.heartbeat(31001)));

        System.out.println(fails == 0 ? "WiTranslatorTest: ALL OK (" + checks + " checks)" : "WiTranslatorTest: " + fails + " FAIL");
        if (fails != 0) System.exit(1);
    }
}
