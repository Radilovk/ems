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

        // --- the run gate: before start (F1) an impulse only keeps its values, nothing goes out
        tr.phase(BtTranslator.MAIN);
        eq("impulse before start: nothing out", 0, tr.command(3, run(600, 85, 350, 4, 4, 1), t).size());
        eq("impulse before start: not on", false, tr.isOn());
        tr.command(0xF1, new byte[1], t);

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

        // --- pause (F2): SEL off and every strength 0; a parameter change then (the row re-sends its impulse) stays silent
        f = tr.command(0xF2, new byte[1], t);
        eq("F2: SEL off first", hex(BtProto.allOff()), hex(f.get(0)));
        eq("F2: strengths to 0", true, has(f, BtProto.intensity(1, 0)) && has(f, BtProto.intensity(8, 0)));
        eq("change in pause: nothing out", 0, pair(tr, setting(70), run(600, 90, 350, 4, 4, 1), t).size());
        tr.phase(BtTranslator.SECOND);
        eq("2nd impulse in pause: nothing out", 0, pair(tr, setting(70), run(600, 8, 350, 4, 4, 1), t).size());
        eq("pause: not on", false, tr.isOn());
        tr.command(0xF1, new byte[1], t);
        tr.phase(BtTranslator.MAIN);
        f = pair(tr, setting(50), run(600, 85, 350, 4, 4, 1), t);
        eq("start again: on with the new values", true, has(f, BtProto.hz(1, 90)) || has(f, BtProto.intensity(1, 50)));
        eq("start again: SEL last", hex(BtProto.enable(0xFF)), hex(f.get(f.size() - 1)));

        // --- stop (TrainItem.reset): off, strengths 0, the full program again; the gate stays closed
        f = tr.reset();
        eq("reset: SEL off first", hex(BtProto.allOff()), hex(f.get(0)));
        eq("reset: reprogrammed", true, has(f, BtProto.reset()));
        eq("after reset: impulse silent", 0, pair(tr, setting(50), run(600, 85, 350, 4, 4, 1), t).size());
        eq("reset of an unused suit: no second program", false, has(tr.reset(), BtProto.reset()));
        tr.command(0xF1, new byte[1], t);
        f = pair(tr, setting(50), run(600, 85, 350, 4, 4, 1), t);
        eq("after reset + start: on", hex(BtProto.enable(0xFF)), hex(f.get(f.size() - 1)));

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
        tr.command(0xF1, new byte[1], 0);           // start: the run gate opens
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
        tr.command(0xF1, new byte[1], 0);           // start: the run gate opens
        BtSettings.setSlider(3, BtSettings.NO_SLIDER);
        tr.command(1, setting(50), t);
        f = tr.command(3, run(600, 85, 360, 4, 4, 1), t);
        eq("no slider: C3 not in SEL", hex(BtProto.enable(0xFF & ~0x04)), hex(f.get(f.size() - 1)));
        BtSettings.reset();

        // --- keep-alive: an output nobody renewed goes off after the phase + 3 s
        tr = new BtTranslator();
        tr.command(0xF1, new byte[1], 0);           // start: the run gate opens
        tr.command(1, setting(50), 0);
        tr.command(3, run(600, 85, 360, 4, 4, 1), 0);
        eq("heartbeat inside the phase: nothing", 0, tr.heartbeat(6900).size());
        eq("heartbeat after phase + 3 s: SEL all off", hexAll(java.util.Arrays.asList(BtProto.allOff())),
                hexAll(tr.heartbeat(7100)));
        eq("then nothing more", 0, tr.heartbeat(9000).size());
        // the session ends sooner than the phase: its end counts
        tr = new BtTranslator();
        tr.command(0xF1, new byte[1], 0);           // start: the run gate opens
        tr.command(1, setting(50), 0);
        tr.command(3, run(2, 85, 360, 20, 4, 1), 0);
        eq("session end is the limit", 1, tr.heartbeat(5100).size());
        // second-impulse phase counts the pause length
        tr = new BtTranslator();
        tr.command(0xF1, new byte[1], 0);           // start: the run gate opens
        tr.phase(BtTranslator.SECOND);
        tr.command(1, setting(50), 0);
        tr.command(3, run(600, 8, 360, 20, 2, 1), 0);
        eq("second phase: pause length", 1, tr.heartbeat(5100).size());

        // --- a failed write: the next frame is SEL all off, then the program again
        tr = new BtTranslator();
        tr.command(0xF1, new byte[1], 0);           // start: the run gate opens
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
        tr.command(0xF1, new byte[1], 0);           // start: the run gate opens
        tr.command(1, setting(50), 0);
        f = tr.command(3, run(600, 0, 360, 4, 4, 1), 0);
        eq("Hz 0: stays off", false, tr.isOn());

        // --- per-channel parameters: strength %, width, Hz of each impulse (only below the program's)
        tr = new BtTranslator();
        tr.command(0xF1, new byte[1], 0);           // start: the run gate opens
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
        tr.command(0xF1, new byte[1], 0);           // start: the run gate opens
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
        tr.command(0xF1, new byte[1], 0);           // start: the run gate opens
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
        tr.command(0xF1, new byte[1], 4150);
        pair(tr, setting(50), run(600, 85, 350, 4, 4, 1), 4200);
        eq("training running", true, tr.training());
        eq("test refused during a training", 0, tr.testOn(3, 5, 4300).size());

        // --- extended test: Hz up to 10000, width up to half the period, waveform; no strength cap
        eq("no cap at 85 Hz x 360 us", 99, BtTranslator.testCap(85, 360));
        eq("no cap at 1000 Hz x 511 us", 99, BtTranslator.testCap(1000, 511));
        eq("max width at 1000 Hz", 500, BtTranslator.maxUsAt(1000));
        eq("max width at 2500 Hz", 200, BtTranslator.maxUsAt(2500));
        eq("max width at 85 Hz: the register's", BtProto.WIDTH_RAW_MAX, BtTranslator.maxUsAt(85));
        tr = new BtTranslator();
        f = tr.testOn(2, 50, 400, 360, 1, 0);
        eq("ext test: waveform sine on C2", true, has(f, BtProto.waveform(2, 1)));
        eq("ext test: 400 Hz on C2", true, has(f, BtProto.hz(2, 400)));
        eq("ext test: strength as asked, 50", true, has(f, BtProto.intensity(2, 50)));
        eq("ext test: waveform before SEL", true, indexOf(f, BtProto.waveform(2, 1)) < indexOf(f, BtProto.enable(0x02)));
        f = tr.testOn(2, 80, 1000, 511, 1, 400);
        eq("ext test: 1000 Hz, width cut to 500, 80 %", true, has(f, BtProto.hz(2, 1000))
                && has(f, BtProto.width(2, 500)) && has(f, BtProto.intensity(2, 80)));
        // Australian: 1 kHz, 500 us, burst 4 / 16 ms; then Russian 2.5 kHz, 200 us, 10 / 10 ms, gain x3
        f = tr.testOn(2, 30, 1000, 500, 1, 4, 16, 1, 420);
        eq("australian: T2 4 ms", true, has(f, BtProto.t(2, 2, 4)));
        eq("australian: T4 16 ms", true, has(f, BtProto.t(2, 4, 16)));
        List<byte[]> fa = new BtTranslator().testOn(2, 30, 1000, 500, 1, 4, 16, 1, 0);
        eq("australian: burst before SEL", true, indexOf(fa, BtProto.t(2, 2, 4)) >= 0
                && indexOf(fa, BtProto.t(2, 2, 4)) < indexOf(fa, BtProto.enable(0x02)));
        f = tr.testOn(2, 30, 2500, 200, 1, 10, 10, 3, 440);
        eq("russian: 2500 Hz", true, has(f, BtProto.hz(2, 2500)));
        eq("russian: T2 / T4 10 ms", true, has(f, BtProto.t(2, 2, 10)) && has(f, BtProto.t(2, 4, 10)));
        eq("russian: gain x3", true, has(f, BtProto.stepNorByte(2, 3)));
        f = tr.testOn(2, 30, 85, 1200, 1, 0, 0, 1, 460);
        eq("wide test pulse 1200 us: raw register", true, has(f, BtProto.widthRaw(2, 1200)));
        eq("continuous again: T2 back, T4 0, gain x1", true, has(f, BtProto.t(2, 2, 100000))
                && has(f, BtProto.t(2, 4, 0)) && has(f, BtProto.stepNorByte(2, 1)));
        eq("10 kHz accepted", true, has(new BtTranslator().testOn(1, 1, 10000, 50, -1, 0), BtProto.hz(1, 10000)));
        tr.testOn(2, 30, 1000, 500, 1, 4, 16, 2, 470);
        tr.testOff();
        tr.command(0xF1, new byte[1], 480);
        f = pair(tr, setting(50), run(600, 85, 350, 4, 4, 1), 490);
        eq("training after a burst test: continuous, x1", true, has(f, BtProto.t(2, 2, 100000))
                && has(f, BtProto.t(2, 4, 0)) && has(f, BtProto.stepNorByte(2, 1)));
        tr = new BtTranslator();
        tr.testOn(2, 5, 85, 360, 1, 400);
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
        eq("out of range Hz is held", true, has(new BtTranslator().testOn(1, 1, 50000, 9000, -1, 0),
                BtProto.hz(1, 10000)));

        // --- which suit
        eq("FE50 in scan record", true, BtProto.has16(new byte[]{2, 1, 6, 3, 3, 0x50, (byte) 0xFE}, 0xFE50));
        eq("FFF0 is not FE50", false, BtProto.has16(new byte[]{2, 1, 6, 3, 3, (byte) 0xF0, (byte) 0xFF}, 0xFE50));
        eq("name EMS08-05629", true, BtProto.nameIsBodytech("EMS08-05629"));
        eq("name NB-1", false, BtProto.nameIsBodytech("NB-1234"));
        eq("name xems", false, BtProto.nameIsBodytech("xems"));
        eq("name ems", false, BtProto.nameIsBodytech("ems"));
        eq("battery reply", 1571, BtProto.batteryRaw(new byte[]{0x36, 0, 1, 8, 1, 0x06, 0x23, (byte) 0xC9}));

        // the legs (1.1.377): C5 left thigh → slider 2, C7 right thigh → slider 9
        BtSettings.reset();
        BtSettings.loaded = true;
        BtTranslator lg = new BtTranslator();
        lg.reset();
        int[] r1 = {50, 50, 60, 50, 50, 50, 50, 50, 50, 40};
        lg.command(1, setting(r1), 0);
        eq("legs equal: left", 60, lg.legValue(r1, 2));
        eq("legs equal: right gets the higher", 60, lg.legValue(r1, 9));
        eq("not a leg: as is", 50, lg.legValue(r1, 8));
        int[] r2 = {50, 50, 66, 50, 50, 50, 50, 50, 50, 44};      // a ± moves everything: still equal
        lg.command(1, setting(r2), 0);
        eq("± keeps them equal", 66, lg.legValue(r2, 9));
        int[] r3 = {50, 50, 66, 50, 50, 50, 50, 50, 50, 55};      // the hand on the right leg alone
        lg.command(1, setting(r3), 0);
        eq("hand: right at the finger", 55, lg.legValue(r3, 9));
        eq("hand: left stays", 66, lg.legValue(r3, 2));
        int[] r4 = {25, 25, 33, 25, 25, 25, 25, 25, 25, 28};      // then a ± halves the row: both in proportion
        lg.command(1, setting(r4), 0);
        eq("after hand, ± left", 33, lg.legValue(r4, 2));
        eq("after hand, ± right", 28, lg.legValue(r4, 9));
        int[] r5 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
        lg.command(1, setting(r5), 0);
        eq("0 stays 0", 0, lg.legValue(r5, 9));
        int[] r6 = {50, 50, 60, 50, 50, 50, 50, 50, 50, 40};      // left raised by hand from an equal start
        BtTranslator lg2 = new BtTranslator();
        lg2.reset();
        lg2.command(1, setting(r6), 0);
        int[] r7 = {50, 50, 70, 50, 50, 50, 50, 50, 50, 40};
        lg2.command(1, setting(r7), 0);
        eq("hand on left: left at the finger", 70, lg2.legValue(r7, 2));
        eq("hand on left: right keeps the equal 60, not the program's 40", 60, lg2.legValue(r7, 9));
        lg2.reset();
        lg2.command(1, setting(r6), 0);
        eq("stop: equal again", 60, lg2.legValue(r6, 9));
        BtSettings.loaded = false;
        BtSettings.reset();

        // --- pulse slots: one SEL from all-off, then channels 2..n slower by d_k for SLIDE_MS (k/n of the period)
        BtSettings.reset();
        BtSettings.setSlots(true);
        tr = new BtTranslator();
        tr.command(0xF2, new byte[1], t);
        tr.command(0xF1, new byte[1], t);
        tr.phase(BtTranslator.MAIN);
        f = pair(tr, setting(50), run(600, 85, 350, 4, 4, 1), t);
        int sel = indexOf(f, BtProto.enable(0xFF));
        eq("slots: one SEL with all channels", true, sel >= 0);
        eq("slots: no slide frame for the first channel", false, has(f, BtProto.period(1, 11764)));
        // channel k of 8 (k = 1..7, C2..C8): off = k·P/8, d = round(off·P / (2e6 − off)); after SEL
        for (int ch = 2; ch <= 8; ch++) {
            double off = (ch - 1) * 11764.0 / 8;
            int d = (int) Math.round(off * 11764 / (2e6 - off));
            int at = indexOf(f, BtProto.period(ch, 11764 + d));
            eq("slots: C" + ch + " slower by " + d + " µs, after SEL", true, at > sel);
        }
        long[] sl = tr.takeSlide();
        eq("slots: slide pending 2 s", "2000", sl == null ? "null" : String.valueOf(sl[0]));
        eq("slots: taken once", null, tr.takeSlide());
        // a strength step during the slide: no new SEL, no slide end
        f = pair(tr, setting(55), run(600, 85, 350, 4, 4, 1), t);
        eq("slots: strength step keeps the slide", false, has(f, BtProto.hz(2, 85)) || has(f, BtProto.enable(0xFF)));
        // slide end → C8..C2 back on the plain period (85 Hz)
        f = tr.slideEnd(sl[1]);
        eq("slots: slide end, 7 channels back", 7, f.size());
        eq("slots: slide end, fastest (C8) first", hex(BtProto.hz(8, 85)), hex(f.get(0)));
        eq("slots: stale slide end does nothing", 0, tr.slideEnd(sl[1]).size());
        // pause → SEL off; next impulse → SEL + slide again (places laid every impulse)
        tr.phase(BtTranslator.PAUSE);
        tr.command(3, run(600, 85, 350, 4, 4, 0), t);
        tr.phase(BtTranslator.MAIN);
        f = tr.command(3, run(600, 85, 350, 4, 4, 1), t);
        eq("slots: next impulse lays the places again", true, has(f, BtProto.enable(0xFF))
                && f.size() == 8 && tr.takeSlide() != null);
        // pause in the middle of a slide: the slow channels go back at once
        tr.phase(BtTranslator.PAUSE);
        f = tr.command(3, run(600, 85, 350, 4, 4, 0), t);
        eq("slots: pause mid-slide restores the periods", true, has(f, BtProto.hz(2, 85)) && has(f, BtProto.allOff()));
        // 2nd impulse at 8 Hz: no slots (pulses hardly meet), plain SEL, no slide
        tr.phase(BtTranslator.SECOND);
        f = tr.command(3, run(600, 8, 350, 4, 4, 1), t);
        eq("slots: 8 Hz has no slide", null, tr.takeSlide());
        // back to 85 Hz in the main impulse: new Hz → laid again
        tr.phase(BtTranslator.PAUSE);
        tr.command(3, run(600, 8, 350, 4, 4, 0), t);
        tr.phase(BtTranslator.MAIN);
        f = tr.command(3, run(600, 85, 350, 4, 4, 1), t);
        eq("slots: back to 85 Hz lays the places", true, tr.takeSlide() != null && has(f, BtProto.hz(1, 85)));
        // slots off: as before (no slide)
        BtSettings.setSlots(false);
        tr.phase(BtTranslator.PAUSE);
        tr.command(3, run(600, 85, 350, 4, 4, 0), t);
        tr.phase(BtTranslator.MAIN);
        f = tr.command(3, run(600, 85, 350, 4, 4, 1), t);
        eq("slots off: only SEL", hexAll(java.util.Arrays.asList(BtProto.enable(0xFF))), hexAll(f));
        BtSettings.reset();

        if (fails == 0) System.out.println("BtTranslatorTest: OK");
        else {
            System.out.println("BtTranslatorTest: " + fails + " FAILED");
            System.exit(1);
        }
    }
}
