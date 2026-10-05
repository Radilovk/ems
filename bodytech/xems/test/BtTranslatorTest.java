package com.isaigu.gymapp.bodytech;

import java.util.List;

/** Offline check of BtTranslator: what the bodytech suit is told for what the XEMS row says (no suit, no Android). */
public class BtTranslatorTest {
    static int fails;

    static void eq(String what, Object want, Object got) {
        if (!String.valueOf(want).equals(String.valueOf(got))) {
            fails++;
            System.out.println("FAIL " + what + ": want " + want + " got " + got);
        }
    }

    static String hex(byte[] f) {
        StringBuilder b = new StringBuilder();
        for (byte x : f) b.append(String.format("%02X", x & 0xFF));
        return b.toString();
    }

    static String hexAll(List<byte[]> l) {
        StringBuilder b = new StringBuilder();
        for (byte[] f : l) b.append(hex(f)).append(' ');
        return b.toString().trim();
    }

    /** XEMS cmd 1: 11 bytes, [0] = 0, [1..10] = the sliders. */
    static byte[] setting(int... s) {
        byte[] p = new byte[11];
        for (int i = 0; i < 10; i++) p[1 + i] = (byte) (i < s.length ? s[i] : 0);
        return p;
    }

    static byte[] setting(int all) {
        int[] s = new int[10];
        java.util.Arrays.fill(s, all);
        return setting(s);
    }

    /** XEMS cmd 3 (CommandUtil.getWorkParamsPdu). */
    static byte[] run(int workLen, int hz, int us, int cont, int pause, int flag) {
        byte[] p = new byte[11];
        p[1] = (byte) (workLen >> 8);
        p[2] = (byte) workLen;
        p[3] = (byte) hz;
        p[4] = (byte) (us / 50);
        p[5] = (byte) cont;
        p[6] = (byte) pause;
        p[10] = (byte) flag;
        return p;
    }

    /** The row's pair: cmd 1 (sliders) then cmd 3 (run); returns the frames of the pair. */
    static List<byte[]> pair(BtTranslator tr, byte[] sliders, byte[] run, long t) {
        List<byte[]> f = new java.util.ArrayList<byte[]>(tr.command(1, sliders, t));
        f.addAll(tr.command(3, run, t));
        return f;
    }

    static boolean has(List<byte[]> l, byte[] want) {
        for (byte[] f : l) if (hex(f).equals(hex(want))) return true;
        return false;
    }

    static int indexOf(List<byte[]> l, byte[] want) {
        for (int i = 0; i < l.size(); i++) if (hex(l.get(i)).equals(hex(want))) return i;
        return -1;
    }

    public static void main(String[] a) {
        BtSettings.reset();
        long t = 1000;

        // --- first command: SEL all off, then the vendor's program, outputs at 0
        BtTranslator tr = new BtTranslator();
        List<byte[]> f = tr.command(0xF2, new byte[1], t);
        eq("program starts with SEL all off", "36000300FF0000C9", hex(f.get(0)));
        eq("program: battery init", "36000100020102C9", hex(f.get(1)));
        eq("program: reset", "36000000000001C9", hex(f.get(3)));
        eq("program length", 1 + 2 + 1 + 8 * 13 + 1, f.size());
        eq("program ends with SEL all off", "36000300FF0000C9", hex(f.get(f.size() - 1)));
        eq("program: T2 of C1 = 100 s (vendor ms*10000/1024)", hex(BtProto.t(1, 2, 100000)),
                hex(f.get(3 + 1 + 6)));
        eq("second stop: nothing to send", 0, tr.command(0xF2, new byte[1], t).size());

        // --- strength alone changes nothing while the output is off
        eq("setting while off", 0, tr.command(1, setting(50), t).size());

        // --- impulse on: width differs from the program (350 vs 360) → width, strength, then SEL
        tr.phase(BtTranslator.MAIN);
        f = tr.command(3, run(600, 85, 350, 4, 4, 1), t);
        eq("on: no Hz frame (85 = programmed)", false, has(f, BtProto.hz(1, 85)));
        eq("on: width C1", true, has(f, BtProto.width(1, 350)));
        eq("on: strength C1", true, has(f, BtProto.intensity(1, 50)));
        eq("on: strength C8", true, has(f, BtProto.intensity(8, 50)));
        eq("on: SEL last", hex(BtProto.enable(0xFF)), hex(f.get(f.size() - 1)));
        eq("on: strength before SEL", true, indexOf(f, BtProto.intensity(5, 50)) < indexOf(f, BtProto.enable(0xFF)));
        eq("on: width before strength", true, indexOf(f, BtProto.width(1, 350)) < indexOf(f, BtProto.intensity(1, 50)));

        // --- the owner's map: C1 → slider 7 (lower back). Only that slider moves → only C1 changes
        f = pair(tr, setting(50, 50, 50, 50, 50, 50, 50, 60, 50, 50), run(600, 85, 350, 4, 4, 1), t);
        eq("slider 7 → only C1", hexAll(java.util.Arrays.asList(BtProto.intensity(1, 60))), hexAll(f));

        // --- to zero: strength 0 first, then SEL without the channel
        f = pair(tr, setting(50, 50, 50, 50, 50, 50, 50, 0, 50, 50), run(600, 85, 350, 4, 4, 1), t);
        eq("to zero: intensity then SEL", hexAll(java.util.Arrays.asList(BtProto.intensity(1, 0), BtProto.enable(0xFE))),
                hexAll(f));
        f = pair(tr, setting(50, 50, 50, 50, 50, 50, 50, 20, 50, 50), run(600, 85, 350, 4, 4, 1), t);
        eq("back from zero: intensity then SEL", hexAll(java.util.Arrays.asList(BtProto.intensity(1, 20), BtProto.enable(0xFF))),
                hexAll(f));

        // --- the same command again sends nothing
        eq("repeat: nothing", 0, pair(tr, setting(50, 50, 50, 50, 50, 50, 50, 20, 50, 50), run(600, 85, 350, 4, 4, 1), t).size());

        // --- pause (flag 0): SEL all off once
        tr.phase(BtTranslator.PAUSE);
        f = tr.command(3, run(600, 85, 350, 4, 4, 0), t);
        eq("pause: SEL all off", hexAll(java.util.Arrays.asList(BtProto.allOff())), hexAll(f));
        eq("pause again: nothing", 0, tr.command(3, run(600, 85, 350, 4, 4, 0), t).size());
        eq("not on", false, tr.isOn());

        // --- impulse back on: strengths are already in the suit → only SEL
        tr.phase(BtTranslator.MAIN);
        f = tr.command(3, run(600, 85, 350, 4, 4, 1), t);
        eq("on again: only SEL", hexAll(java.util.Arrays.asList(BtProto.enable(0xFF))), hexAll(f));

        // --- second impulse: owner's groups. C2 (glutes) main-only, C7 (thighs) second-only
        BtSettings.setGroup(2, BtSettings.GROUP_MAIN);
        BtSettings.setGroup(7, BtSettings.GROUP_SECOND);
        tr.phase(BtTranslator.SECOND);
        f = pair(tr, setting(40), run(600, 8, 350, 4, 4, 1), t);
        eq("second: C2 off", true, has(f, BtProto.intensity(2, 0)));
        eq("second: C2 not in SEL (C7 is, so bit 6 set, bit 1 clear)", hex(BtProto.enable(0xFF & ~0x02)),
                hex(f.get(f.size() - 1)));
        eq("second: C7 gets Hz 8", true, has(f, BtProto.hz(7, 8)));
        eq("second: C2 gets no Hz frame (not working)", false, has(f, BtProto.hz(2, 8)));
        tr.phase(BtTranslator.MAIN);
        f = pair(tr, setting(50), run(600, 85, 350, 4, 4, 1), t);
        eq("main: C7 off", true, has(f, BtProto.intensity(7, 0)));
        eq("main: C2 on at 50", true, has(f, BtProto.intensity(2, 50)));
        eq("main: C2 never left 85 Hz: no Hz frame", false, has(f, BtProto.hz(2, 85)));
        eq("main: C7 (was at 8 Hz, now silent) keeps no Hz frame", false, has(f, BtProto.hz(7, 85)));
        BtSettings.reset();

        // --- gain and the 99 % ceiling
        tr = new BtTranslator();
        BtSettings.setGain(150);
        tr.command(1, setting(60), t);
        f = tr.command(3, run(600, 85, 360, 4, 4, 1), t);
        eq("gain 150 % of 60", true, has(f, BtProto.intensity(1, 90)));
        f = pair(tr, setting(120), run(600, 85, 360, 4, 4, 1), t);
        eq("ceiling 99", true, has(f, BtProto.intensity(1, 99)));
        eq("never above 99", false, has(f, BtProto.intensity(1, 100)));
        BtSettings.reset();

        // --- a slider with no channel does nothing; a channel without slider never works
        tr = new BtTranslator();
        BtSettings.setSlider(3, BtSettings.NO_SLIDER);
        tr.command(1, setting(50), t);
        f = tr.command(3, run(600, 85, 360, 4, 4, 1), t);
        eq("no slider: C3 not in SEL", hex(BtProto.enable(0xFF & ~0x04)), hex(f.get(f.size() - 1)));
        BtSettings.reset();

        // --- keep-alive: an output nobody renewed goes off after the phase + 3 s
        tr = new BtTranslator();
        tr.command(1, setting(50), 0);
        tr.command(3, run(600, 85, 360, 4, 4, 1), 0);
        eq("heartbeat inside the phase: nothing", 0, tr.heartbeat(6900).size());
        eq("heartbeat after phase + 3 s: SEL all off", hexAll(java.util.Arrays.asList(BtProto.allOff())),
                hexAll(tr.heartbeat(7100)));
        eq("then nothing more", 0, tr.heartbeat(9000).size());
        // the session ends sooner than the phase: its end counts
        tr = new BtTranslator();
        tr.command(1, setting(50), 0);
        tr.command(3, run(2, 85, 360, 20, 4, 1), 0);
        eq("session end is the limit", 1, tr.heartbeat(5100).size());
        // second-impulse phase counts the pause length
        tr = new BtTranslator();
        tr.phase(BtTranslator.SECOND);
        tr.command(1, setting(50), 0);
        tr.command(3, run(600, 8, 360, 20, 2, 1), 0);
        eq("second phase: pause length", 1, tr.heartbeat(5100).size());

        // --- a failed write: the next frame is SEL all off, then the program again
        tr = new BtTranslator();
        tr.command(1, setting(50), 0);
        tr.command(3, run(600, 85, 360, 4, 4, 1), 0);
        tr.forget();
        eq("forgotten: not on", false, tr.isOn());
        f = tr.command(1, setting(50), 0);
        eq("after failure: SEL all off first", hex(BtProto.allOff()), hex(f.get(0)));
        eq("after failure: program again", true, f.size() > 100);

        // --- battery
        eq("battery query", hex(BtProto.batterySync()), hex(tr.command(5, new byte[0], 0).get(0)));

        // --- hz 0 or a bad frame never turns anything on
        tr = new BtTranslator();
        tr.command(1, setting(50), 0);
        f = tr.command(3, run(600, 0, 360, 4, 4, 1), 0);
        eq("Hz 0: stays off", false, tr.isOn());

        // --- per-channel parameters: strength %, width, Hz of each impulse (only below the program's)
        tr = new BtTranslator();
        BtSettings.setUnlimited(false);                // the old rule: only below the program's
        BtSettings.setChGain(1, 50);
        BtSettings.setChWidth(2, 200);
        BtSettings.setChWidth(3, 450);                 // above the program's 360: ignored
        BtSettings.setChHz(4, false, 40);
        BtSettings.setChHz(4, true, 5);
        BtSettings.setChHz(5, false, 120);             // above the program's 85: ignored
        f = pair(tr, setting(60), run(600, 85, 350, 4, 4, 1), t);
        eq("channel gain 50 %", true, has(f, BtProto.intensity(1, 30)));
        eq("channel width 200", true, has(f, BtProto.width(2, 200)));
        eq("width above program ignored", true, has(f, BtProto.width(3, 350)));
        eq("C4 main Hz 40", true, has(f, BtProto.hz(4, 40)));
        eq("C5 Hz above program ignored", false, has(f, BtProto.hz(5, 120)));
        tr.phase(BtTranslator.SECOND);
        f = pair(tr, setting(60), run(600, 8, 350, 4, 4, 1), t);
        eq("C4 second Hz 5", true, has(f, BtProto.hz(4, 5)));
        eq("C6 second Hz = program's 8", true, has(f, BtProto.hz(6, 8)));
        BtSettings.reset();

        // --- unlimited (default): the owner's per-channel values rule as they are, up to the suit's own range
        tr = new BtTranslator();
        BtSettings.setChHz(1, false, 1000);
        BtSettings.setChWidth(1, false, 511);
        BtSettings.setChHz(2, true, 300);
        BtSettings.setChWidth(2, true, 500);
        BtSettings.setChWave(3, false, 1);
        BtSettings.setChWave(3, true, 3);
        BtSettings.setChGain(4, 300);
        eq("unlimited by default", true, BtSettings.unlimited());
        f = pair(tr, setting(40), run(600, 85, 350, 4, 4, 1), t);
        eq("unlimited: C1 1000 Hz (program 85)", true, has(f, BtProto.hz(1, 1000)));
        eq("unlimited: C1 width 511 (program 350)", true, has(f, BtProto.width(1, 511)));
        eq("per channel waveform, main impulse", true, has(f, BtProto.waveform(3, 1)));
        eq("other channels: no waveform frame", false, has(f, BtProto.waveform(2, 1)));
        eq("channel strength x3 of 40 = 99 (cap)", true, has(f, BtProto.intensity(4, 99)));
        tr.phase(BtTranslator.SECOND);
        f = pair(tr, setting(40), run(600, 8, 350, 4, 4, 1), t);
        eq("unlimited: C2 2nd impulse 300 Hz (program 8)", true, has(f, BtProto.hz(2, 300)));
        eq("unlimited: C2 2nd impulse width 500", true, has(f, BtProto.width(2, 500)));
        eq("2nd impulse waveform of C3", true, has(f, BtProto.waveform(3, 3)));
        tr.phase(BtTranslator.MAIN);
        f = pair(tr, setting(40), run(600, 85, 350, 4, 4, 1), t);
        eq("back to main: C3 waveform again", true, has(f, BtProto.waveform(3, 1)));
        eq("back to main: C2 Hz back to the program's", true, has(f, BtProto.hz(2, 85)));
        BtSettings.setChWave(3, false, -1);
        BtSettings.setChWave(3, true, -1);
        f = pair(tr, setting(40), run(600, 85, 350, 4, 4, 1), t);
        eq("waveform cleared: square again", true, has(f, BtProto.waveform(3, 0)));
        BtSettings.copyToAll(1);
        eq("copied to all: C7 Hz", 1000, BtSettings.chHz(7, false));
        BtSettings.clearChannel(7);
        eq("cleared: C7 Hz auto", 0, BtSettings.chHz(7, false));
        BtSettings.reset();

        // --- the same channel can work in one impulse only, another in the other, another in none
        tr = new BtTranslator();
        BtSettings.setGroup(1, BtSettings.GROUP_MAIN);
        BtSettings.setGroup(2, BtSettings.GROUP_SECOND);
        BtSettings.setSlider(3, BtSettings.NO_SLIDER);
        tr.phase(BtTranslator.MAIN);
        f = pair(tr, setting(40), run(600, 85, 350, 4, 4, 1), t);
        eq("main: C1 yes C2 no C3 none", hex(BtProto.enable(0xFF & ~0x02 & ~0x04)), hex(f.get(f.size() - 1)));
        tr.phase(BtTranslator.SECOND);
        f = pair(tr, setting(40), run(600, 8, 350, 4, 4, 1), t);
        eq("second: C1 no C2 yes C3 none", hex(BtProto.enable(0xFF & ~0x01 & ~0x04)), hex(f.get(f.size() - 1)));
        BtSettings.reset();

        // --- held test of one channel: only that channel, low, refused during a training, off on release / timeout
        tr = new BtTranslator();
        f = tr.testOn(3, 5, 0);
        eq("test: C3 at 5 %", true, has(f, BtProto.intensity(3, 5)));
        eq("test: only C3 in SEL", hex(BtProto.enable(0x04)), hex(f.get(f.size() - 1)));
        eq("test: not a training", false, tr.training());
        eq("test renewed: nothing new", 0, tr.testOn(3, 5, 400).size());
        eq("test up to 99 %", true, has(tr.testOn(3, 150, 500), BtProto.intensity(3, 99)));
        eq("test timeout → SEL all off", hexAll(java.util.Arrays.asList(BtProto.allOff())), hexAll(tr.heartbeat(2200)));
        tr.testOn(3, 5, 3000);
        eq("test release → SEL all off", hexAll(java.util.Arrays.asList(BtProto.allOff())), hexAll(tr.testOff()));
        tr.testOn(3, 5, 4000);
        f = tr.command(1, setting(50), 4100);
        eq("the row speaking ends the test", hex(BtProto.allOff()), hex(f.get(0)));
        pair(tr, setting(50), run(600, 85, 350, 4, 4, 1), 4200);
        eq("training running", true, tr.training());
        eq("test refused during a training", 0, tr.testOn(3, 5, 4300).size());

        // --- extended test: Hz up to 1000, width up to 511, waveform; strength held to the charge cap
        eq("cap at default 85 Hz x 360 us", 99, BtTranslator.testCap(85, 360));
        eq("cap lower Hz: still 99", 99, BtTranslator.testCap(10, 100));
        eq("cap at 1000 Hz x 511 us", 5, BtTranslator.testCap(1000, 511));
        eq("cap at 400 Hz x 360 us", 21, BtTranslator.testCap(400, 360));
        eq("charge cap off", 99, BtTranslator.testCap(1000, 511, true));
        tr = new BtTranslator();
        f = tr.testOn(2, 50, 400, 360, 1, 0);
        eq("ext test: waveform sine on C2", true, has(f, BtProto.waveform(2, 1)));
        eq("ext test: 400 Hz on C2", true, has(f, BtProto.hz(2, 400)));
        eq("ext test: strength held to cap 21", true, has(f, BtProto.intensity(2, 21)));
        eq("ext test: waveform before SEL", true, indexOf(f, BtProto.waveform(2, 1)) < indexOf(f, BtProto.enable(0x02)));
        f = tr.testOn(2, 20, 1000, 511, 1, 400);
        eq("ext test: 1000 Hz, 511 us, cap 5", true, has(f, BtProto.hz(2, 1000)) && has(f, BtProto.width(2, 511))
                && has(f, BtProto.intensity(2, 5)));
        eq("charge cap off: 80 % at 1000 Hz", true, has(tr.testOn(2, 80, 1000, 511, 1, true, 450), BtProto.intensity(2, 80)));
        f = tr.testOff();
        eq("release: SEL off then waveform back to square", hexAll(java.util.Arrays.asList(BtProto.allOff(),
                BtProto.waveform(2, 0))), hexAll(f));
        BtSettings.setWave(2);
        tr.testOn(2, 5, 85, 360, 3, 1000);
        f = tr.testOff();
        eq("release: waveform back to the owner's", true, has(f, BtProto.waveform(2, 2)));
        BtSettings.reset();
        tr.testOn(2, 5, 85, 360, 1, 2000);
        f = tr.testOn(5, 5, 85, 360, 1, 2100);
        eq("other channel: the first one is restored", true, has(f, BtProto.waveform(2, 0)));
        eq("other channel: new waveform", true, has(f, BtProto.waveform(5, 1)));
        f = tr.testOn(5, 5, 85, 360, -1, 2200);
        eq("suit's own waveform again: restored", true, has(f, BtProto.waveform(5, 0)));
        tr.testOff();
        eq("out of range Hz and width are held", true, has(new BtTranslator().testOn(1, 1, 5000, 9000, -1, 0),
                BtProto.hz(1, 1000)));

        // --- which suit
        eq("FE50 in scan record", true, BtProto.has16(new byte[]{2, 1, 6, 3, 3, 0x50, (byte) 0xFE}, 0xFE50));
        eq("FFF0 is not FE50", false, BtProto.has16(new byte[]{2, 1, 6, 3, 3, (byte) 0xF0, (byte) 0xFF}, 0xFE50));
        eq("name EMS08-05629", true, BtProto.nameIsBodytech("EMS08-05629"));
        eq("name NB-1", false, BtProto.nameIsBodytech("NB-1234"));
        eq("name xems", false, BtProto.nameIsBodytech("xems"));
        eq("name ems", false, BtProto.nameIsBodytech("ems"));
        eq("battery reply", 1571, BtProto.batteryRaw(new byte[]{0x36, 0, 1, 8, 1, 0x06, 0x23, (byte) 0xC9}));

        if (fails == 0) System.out.println("BtTranslatorTest: OK");
        else {
            System.out.println("BtTranslatorTest: " + fails + " FAILED");
            System.exit(1);
        }
    }
}
