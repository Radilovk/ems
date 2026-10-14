import com.isaigu.gymapp.wearable.bluetens.BluetensAdvert;
import com.isaigu.gymapp.wearable.bluetens.BluetensLibrary;
import com.isaigu.gymapp.wearable.bluetens.BluetensLok;
import com.isaigu.gymapp.wearable.bluetens.BluetensProgram;
import com.isaigu.gymapp.wearable.bluetens.BluetensPrograms;
import com.isaigu.gymapp.wearable.bluetens.BluetensShell;

import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

/**
 * Offline test of the Bluetens module (no Android, no pad): the real BluetensShell talks to a simulated pad that
 * answers like the firmware the vendor app expects, and every XEMS program is checked against its length and the
 * safety limits. Run: bash scripts/bluetens/run.sh
 */
public final class BluetensSim {
    static int fails;

    static void check(boolean ok, String what) {
        if (!ok) {
            fails++;
            System.out.println("FAIL " + what);
        }
    }

    // ------------------------------------------------------------------ virtual clock

    static long now;
    static final List<long[]> due = new ArrayList<long[]>();
    static final List<Runnable> jobs = new ArrayList<Runnable>();

    static void later(Runnable r, long ms) {
        due.add(new long[] {now + ms, jobs.size()});
        jobs.add(r);
    }

    static void advance(long ms) {
        long end = now + ms;
        while (true) {
            int best = -1;
            for (int i = 0; i < due.size(); i++) {
                if (due.get(i)[0] <= end && (best < 0 || due.get(i)[0] < due.get(best)[0])) {
                    best = i;
                }
            }
            if (best < 0) {
                break;
            }
            long[] d = due.remove(best);
            now = d[0];
            jobs.get((int) d[1]).run();
        }
        now = end;
    }

    // ------------------------------------------------------------------ the simulated pad

    static final class Pad implements BluetensShell.Io {
        BluetensShell shell;
        final Map<String, byte[]> files = new HashMap<String, byte[]>();
        final StringBuilder in = new StringBuilder();
        String catName;
        int catLeft;
        java.io.ByteArrayOutputStream catBuf;
        String running;
        int strength;
        final List<String> log = new ArrayList<String>();
        boolean mute;
        /** Firmware variants we cannot rule out: no upload while running; a stop line when a new program starts. */
        boolean busyCat;
        boolean stopOnSwitch;
        int stopsSent;
        final Random rnd = new Random(7);

        @Override
        public void send(byte[] data) {
            for (byte b : data) {
                if (catLeft > 0) {
                    catBuf.write(b);
                    if (--catLeft == 0) {
                        files.put(catName, catBuf.toByteArray());
                        answer("3: end of cat");
                    }
                    continue;
                }
                in.append((char) (b & 0xFF));
                int e = in.indexOf("\r\n");
                if (e >= 0) {
                    String cmd = in.substring(0, e);
                    in.delete(0, e + 2);
                    command(cmd);
                }
            }
        }

        @Override
        public void later(Runnable r, long delayMs) {
            BluetensSim.later(r, delayMs);
        }

        void command(String c) {
            log.add(c);
            if (mute) {
                return;
            }
            String[] p = c.split(" ");
            String k = p[0];
            if (">ver".equals(k)) {
                answer("v.1.3.12");
            } else if (">bat".equals(k)) {
                answer("4120 mv");
            } else if (">stat".equals(k)) {
                answer("tick=0,str=0,md5=,dmd5=");
            } else if (">md5".equals(k)) {
                byte[] f = files.get(p[1]);
                answer(f == null ? "-2: no such file" : BluetensShell.md5(f).toLowerCase());
            } else if (">cat".equals(k) && busyCat && running != null) {
                answer("-5: busy");
            } else if (">cat".equals(k)) {
                catName = p[1];
                catLeft = Integer.parseInt(p[2].substring(3));
                catBuf = new java.io.ByteArrayOutputStream();
            } else if (">ssta".equals(k)) {
                if (files.containsKey(p[1])) {
                    if (stopOnSwitch && running != null) {
                        stopsSent++;
                        answer("NOTIFY stop");
                    }
                    running = p[1];
                    strength = 1;
                    answer("0: ok");
                } else {
                    answer("-2: no such file");
                }
            } else if (">str".equals(k)) {
                strength = Integer.parseInt(p[1]);
                answer("str=" + strength);
            } else if (">osto".equals(k)) {
                running = null;
                answer("0: ok");
            } else {
                answer("-1: unknown");
            }
        }

        /** The answer comes back in random pieces, like BLE notifications. */
        void answer(String line) {
            byte[] b = BluetensShell.ascii(line + "\r\n");
            int i = 0;
            while (i < b.length) {
                int n = Math.min(b.length - i, 1 + rnd.nextInt(20));
                byte[] part = new byte[n];
                System.arraycopy(b, i, part, 0, n);
                later(new Deliver(this, part), 30);
                i += n;
            }
        }

        void push(String line) {
            answer(line);
        }
    }

    static final class Deliver implements Runnable {
        final Pad pad;
        final byte[] data;

        Deliver(Pad pad, byte[] data) {
            this.pad = pad;
            this.data = data;
        }

        @Override
        public void run() {
            pad.shell.onBytes(data);
        }
    }

    static final class Ev implements BluetensShell.Events {
        int strength = -1;
        boolean running;
        final List<Integer> notices = new ArrayList<Integer>();
        final List<String> failed = new ArrayList<String>();
        int uploads;
        boolean info;
        boolean fromPad;
        int stops;

        @Override
        public void onInfo(BluetensShell s) {
            info = true;
        }

        @Override
        public void onStrength(BluetensShell s, int value, boolean fromPad) {
            strength = value;
            this.fromPad = fromPad;
        }

        @Override
        public void onRunning(BluetensShell s, boolean running) {
            this.running = running;
            if (!running) {
                stops++;
            }
        }

        @Override
        public void onNotice(BluetensShell s, int notice) {
            notices.add(notice);
        }

        @Override
        public void onUpload(BluetensShell s, boolean busy) {
            if (busy) {
                uploads++;
            }
        }

        @Override
        public void onFailed(BluetensShell s, String what) {
            failed.add(what);
        }
    }

    // ------------------------------------------------------------------ tests

    static void shellFlow() {
        Pad pad = new Pad();
        Ev ev = new Ev();
        BluetensShell sh = new BluetensShell(pad, ev, false);
        pad.shell = sh;
        sh.hello();
        advance(1000);
        check("1.3.12".equals(sh.version), "version " + sh.version);
        check(sh.batteryMv == 4120 && sh.batteryPct() == 50, "battery " + sh.batteryMv + " " + sh.batteryPct());

        byte[] prog = BluetensShell.ascii(BluetensPrograms.build(BluetensPrograms.RECOVER, 20).build());
        String name = BluetensPrograms.fileName(BluetensPrograms.RECOVER, 20);
        sh.start(name, prog);
        advance(3000);
        check(ev.uploads == 1, "first start uploads once, got " + ev.uploads);
        check(java.util.Arrays.equals(pad.files.get(name), prog), "pad holds the program byte for byte");
        check(name.equals(pad.running) && ev.running && ev.strength == 1, "running at 1");

        sh.strength(5);
        sh.strength(9);
        sh.strength(14);                                  // 5 in flight, 9 replaced by 14
        advance(1000);
        check(pad.strength == 14 && ev.strength == 14, "strength 14, pad " + pad.strength);
        int strs = 0;
        for (String c : pad.log) {
            if (c.startsWith(">str")) {
                strs++;
            }
        }
        check(strs == 2, "coalesced strength sends: " + strs);
        sh.strength(99);
        advance(500);
        check(pad.strength == 60, "strength capped at 60, pad " + pad.strength);

        pad.push("NOTIFY strength 12");                   // the pad's own button
        advance(200);
        check(ev.strength == 12 && ev.fromPad, "pad button strength");
        pad.push("NOTIFY noload");
        advance(200);
        check(ev.notices.contains(BluetensShell.NOTICE_NOLOAD) && ev.running, "electrodes off is a notice, not a stop");

        int before = pad.log.size();
        advance(BluetensShell.KEEP_ALIVE_MS + 500);
        check(pad.log.size() > before && pad.log.get(pad.log.size() - 1).equals(">bat"), "keep-alive >bat");

        sh.stop();
        advance(500);
        check(pad.running == null && !ev.running, "stopped");
        before = pad.log.size();
        advance(BluetensShell.KEEP_ALIVE_MS * 2);
        check(pad.log.size() == before, "no keep-alive after stop");

        sh.start(name, prog);                             // same program again: md5 matches → no upload
        advance(1000);
        check(ev.uploads == 1 && ev.running, "second start reuses the file");
        pad.push("NOTIFY stop");
        advance(200);
        check(!ev.running && ev.notices.contains(BluetensShell.NOTICE_STOP), "program ended on the pad");

        pad.mute = true;                                  // the pad stops answering
        sh.strength(3);
        advance(BluetensShell.TIMEOUT_MS + 100);
        check(ev.failed.contains("str") && ev.strength == 3, "timeout: strength assumed, reported");
        pad.mute = false;
        sh.start("NOPE", new byte[0]);
        pad.files.remove("NOPE");
        advance(1000);
        check(ev.failed.size() >= 1, "a start of nothing fails, no crash");
    }

    /** Real-time change: the running program is replaced and the strength comes back, on every firmware variant. */
    static void liveSwap() {
        for (int variant = 0; variant < 3; variant++) {
            Pad pad = new Pad();
            Ev ev = new Ev();
            BluetensShell sh = new BluetensShell(pad, ev, true);
            pad.shell = sh;
            String tag = "variant " + variant + ": ";
            byte[] a = BluetensShell.ascii(live(5, 0).toLok().build());
            sh.start("XLIVA", a);
            advance(2000);
            sh.strength(20);
            advance(500);
            check(pad.strength == 20 && ev.running, tag + "live running at 20");
            pad.stopOnSwitch = variant == 1;
            pad.busyCat = variant == 2;
            byte[] b = BluetensShell.ascii(live(50, 4).toLok().build());
            sh.swap("XLIVB", b);
            check(sh.swapping, tag + "swapping shown");
            advance(4000);
            check("XLIVB".equals(pad.running) && java.util.Arrays.equals(pad.files.get("XLIVB"), b),
                    tag + "new program runs: " + pad.running);
            check(pad.strength == 20 && ev.strength == 20, tag + "strength back to 20: " + pad.strength);
            check(ev.stops == 0 && ev.running && !sh.swapping, tag + "no stop seen by the page: " + ev.stops);
            check(ev.failed.isEmpty(), tag + "no failure " + ev.failed);
            if (variant == 2) {
                check(pad.log.contains(">osto"), tag + "busy pad: stop first");
            }

            byte[] c = BluetensShell.ascii(live(8, 0).toLok().build());
            byte[] d = BluetensShell.ascii(live(9, 0).toLok().build());
            sh.swap("XLIVA", c);
            sh.strength(25);                                       // turned while the swap is on its way
            sh.swap("XLIVB", d);                                   // a newer change replaces the waiting one
            advance(5000);
            check(java.util.Arrays.equals(pad.files.get(pad.running), d), tag + "the newest values win");
            check(pad.strength == 25, tag + "strength turned during the swap kept: " + pad.strength);
            check(ev.stops == 0 && ev.running, tag + "still running");

            sh.stop();
            advance(1000);
            check(pad.running == null && !ev.running && ev.stops == 1, tag + "■ still stops");
        }
    }

    static BluetensProgram live(int hz, int burst) {
        BluetensProgram p = BluetensProgram.fresh("live", "");
        BluetensProgram.Step st = p.steps.get(0);
        st.hz = hz;
        st.burstMs = burst;
        st.us = 200;
        st.seconds = 600;
        BluetensProgram.safe(st);
        return p;
    }

    /** Australian current: 1 kHz pulses in bursts, the burst rate as the frequency, the pad's 1200 Hz ceiling. */
    static void aussie(File out) throws Exception {
        BluetensProgram p = BluetensProgram.fresh("au", "Австралийски");
        BluetensProgram.Step st = p.steps.get(0);
        st.seconds = 600; st.hz = 50; st.us = 300; st.burstMs = 4; st.workS = 0; st.restS = 8; st.riseMs = 1000;
        String[] why = BluetensProgram.safe(st);
        check(st.us == BluetensProgram.BURST_US_MAX && why[0].contains("Австралийски"), "aussie width capped: " + st.us);
        check(!st.continuous() && st.workS == 4, "50 bursts/s is tetanic → impulse " + st.workS);
        BluetensProgram.Step slow = new BluetensProgram.Step();
        slow.seconds = 300; slow.hz = 10; slow.us = 200; slow.burstMs = 2;
        BluetensProgram.safe(slow);
        check(slow.continuous(), "10 bursts/s may run continuously");
        p.steps.add(slow);
        BluetensProgram.Step pause = new BluetensProgram.Step();
        pause.seconds = 120; pause.hz = 100; pause.us = 150; pause.burstMs = 4; pause.workS = 3; pause.restS = 6;
        pause.restHz = 4;
        BluetensProgram.safe(pause);
        p.steps.add(pause);

        BluetensLok lok = p.toLok();
        String text = lok.build();
        BluetensLok back = BluetensLok.parse(text);
        check(back.sections.size() == 3, "aussie: one section per step");
        double[] want = {600000, 300000, 120000};
        for (int i = 0; i < 3; i++) {
            double ms = back.sections.get(i).ms();
            check(Math.abs(ms - want[i]) < want[i] * 0.03, "aussie step " + (i + 1) + " length " + ms);
        }
        int bursts = 0;
        for (BluetensLok.Section sec : back.sections) {
            for (BluetensLok.Block k : sec.blocks) {
                check(k.freq10 <= BluetensLok.MAX_FREQ * 10, "aussie within the pad's 1200 Hz");
                if (k.freq10 == BluetensProgram.CARRIER_HZ * 10) {
                    bursts++;
                    check(k.impulse <= BluetensProgram.BURST_US_MAX, "aussie pulse width " + k.impulse);
                    check(k.cluster >= 1 && k.cluster <= BluetensProgram.BURST_MAX_MS, "burst pulses " + k.cluster);
                }
            }
        }
        check(bursts > 0, "aussie bursts present");
        // step 1 hold block: 4 pulses at 1 kHz then 16 ms → 50 bursts a second
        BluetensLok.Block hold = null;
        for (BluetensLok.Block k : back.sections.get(0).blocks) {
            if (k.freq10 == 10000 && k.impulse == BluetensProgram.BURST_US_MAX) {
                hold = k;
                break;
            }
        }
        check(hold != null && hold.cluster == 4 && hold.interval == 16, "50 Hz × 4 ms bursts: "
                + (hold == null ? "none" : hold.cluster + " pulses + " + hold.interval + " ms"));
        BluetensProgram d = BluetensProgram.decode(p.encode());
        check(d != null && d.steps.get(0).burstMs == 4 && d.steps.get(1).burstMs == 2, "burst kept in storage");
        BluetensProgram old = BluetensProgram.decode("x\tOld\t600,5,250,0,4,0,0");
        check(old != null && old.steps.get(0).burstMs == 0, "old 7-number lines still read");
        FileOutputStream f = new FileOutputStream(new File(out, "XAUS.lok"));
        f.write(BluetensShell.ascii(text));
        f.close();
    }

    static void parsing() {
        check(BluetensShell.status("0: ok") == 0 && BluetensShell.status("-2: x") == -2
                && BluetensShell.status("str=3") == Integer.MIN_VALUE, "status");
        check(BluetensShell.strengthOf("str=7") == 7 && BluetensShell.strengthOf("11") == 11
                && BluetensShell.strengthOf("v.1.2") == -1, "strength parse");
        check(BluetensShell.batteryOf("32769: charging", false) == 5000 && BluetensShell.batteryOf("3900 mv", true) == 3900
                && BluetensShell.batteryOf("0: ok", false) == -1, "battery parse");
        check("1.3.12".equals(BluetensShell.versionOf("ver=1.3.12")), "version parse");
    }

    static byte[] advert(int id, String project) {
        byte[] name = BluetensShell.ascii(project);
        int len = 1 + 2 + 2 + 6 + name.length + 1;
        byte[] a = new byte[3 + len + 1];
        a[0] = 2; a[1] = 1; a[2] = 6;                      // flags
        a[3] = (byte) len;
        a[4] = (byte) 0xFF;
        a[5] = (byte) (id >> 8);
        a[6] = (byte) id;
        System.arraycopy(name, 0, a, 5 + 10, name.length);
        return a;
    }

    static void adverts() {
        int f = BluetensAdvert.FOUND, d = BluetensAdvert.DUO, v = BluetensAdvert.V2;
        check(BluetensAdvert.classify("Test.BLT", advert(0xFFBD, "bst")) == (f | d), "bst = duo");
        check(BluetensAdvert.classify(null, advert(0xFFBE, "duosport2")) == (f | d | v), "duosport2 = duo v2");
        check(BluetensAdvert.classify(null, advert(0xFFBD, "bluetens")) == f, "bluetens = classic");
        check(BluetensAdvert.classify(null, advert(0xFFBD, "pkt")) == (f | v), "pkt = classic v2");
        check(BluetensAdvert.classify("Bluetens", null) == f, "by name");
        check(BluetensAdvert.classify("Mi Band", advert(0x1234, "bst")) == 0, "other maker");
        check(BluetensAdvert.classify("JBL Flip", null) == 0, "not a pad");
    }

    /** The manual module: limits, conversion to the pad's file, storage line. */
    static void manual(File out) throws Exception {
        BluetensProgram p = BluetensProgram.fresh("t1", "Тест\tс|знаци");
        BluetensProgram.Step a = p.steps.get(0);                // 10 min · 5 Hz · 250 µs continuous
        BluetensProgram.Step b = new BluetensProgram.Step();
        b.seconds = 300; b.hz = 80; b.us = 350; b.workS = 9; b.restS = 1; b.restHz = 30; b.riseMs = 0;
        p.steps.add(b);
        BluetensProgram.Step c = new BluetensProgram.Step();
        c.seconds = 120; c.hz = 40; c.us = 300; c.workS = 0;   // continuous at 40 Hz: not allowed
        p.steps.add(c);
        String[] why = BluetensProgram.safe(b.copy());
        check(why[0].length() > 0 && why[1].length() > 0, "corrections are explained");
        BluetensProgram.Step bs = b.copy();
        BluetensProgram.safe(bs);
        check(bs.hz == 80 && bs.us == 350 && bs.workS == 6 && bs.restS >= 3 && bs.restHz == 10 && bs.riseMs >= 300,
                "80 Hz step held in limits: " + bs.workS + "s/" + bs.restS + "s " + bs.restHz + "Hz rise " + bs.riseMs);
        BluetensProgram.Step cs = c.copy();
        BluetensProgram.safe(cs);
        check(!cs.continuous(), "40 Hz cannot run continuously");
        BluetensProgram.Step hs = new BluetensProgram.Step();
        hs.hz = 110; hs.us = 400; hs.workS = 3; hs.restS = 5;
        BluetensProgram.safe(hs);
        check(hs.us == 300, "≥100 Hz → at most 300 µs");
        BluetensProgram.Step as = a.copy();
        check(BluetensProgram.safe(as)[0].length() == 0 && as.continuous(), "5 Hz continuous untouched");

        BluetensLok lok = p.toLok();
        BluetensLok back = BluetensLok.parse(lok.build());
        check(back.sections.size() == 3, "one section per step");
        check(Math.abs(back.sections.get(0).ms() - 600000) < 1, "step 1 = 10 min: " + back.sections.get(0).ms());
        check(Math.abs(back.sections.get(1).ms() - 300000) < 15000, "step 2 ≈ 5 min: " + back.sections.get(1).ms());
        check(Math.abs(back.sections.get(2).ms() - 120000) < 15000, "step 3 ≈ 2 min: " + back.sections.get(2).ms());
        for (BluetensLok.Section sec : back.sections) {
            for (BluetensLok.Block k : sec.blocks) {
                check(k.impulse <= 400 && k.freq10 <= 1200 && (k.freq10 < 1000 || k.impulse <= 300), "manual block in limits");
            }
        }
        FileOutputStream f = new FileOutputStream(new File(out, "XMINE.lok"));
        f.write(BluetensShell.ascii(lok.build()));
        f.close();

        BluetensProgram d = BluetensProgram.decode(p.encode());
        check(d != null && d.id.equals("t1") && d.steps.size() == 3 && d.steps.get(1).restHz == 30
                && d.name.indexOf('\t') < 0 && d.name.indexOf('|') < 0, "storage line round trip");
        check(BluetensProgram.decode("junk") == null && BluetensProgram.decode(null) == null, "bad lines ignored");
    }

    static void programs(File out) throws Exception {
        for (int p : BluetensPrograms.ALL) {
            for (int m : BluetensPrograms.MINUTES) {
                BluetensLok lok = BluetensPrograms.build(p, m);
                String text = lok.build();
                BluetensLok back = BluetensLok.parse(text);
                double ms = back.ms();
                String tag = BluetensPrograms.fileName(p, m);
                check(Math.abs(ms - lok.ms()) < 1, tag + " round trip");
                check(Math.abs(ms - m * 60000.0) <= 60000, tag + " length " + ms / 60000 + " min for " + m);
                check(tag.length() <= 8, tag + " file name length");
                check(text.length() < 2000, tag + " small file " + text.length());
                double fused = 0;
                for (BluetensLok.Section s : back.sections) {
                    for (BluetensLok.Block b : s.blocks) {
                        double hz = b.freq10 / 10.0;
                        check(b.impulse >= 50 && b.impulse <= 400, tag + " P " + b.impulse);
                        check(hz <= 120, tag + " Hz " + hz);
                        check(hz < 100 || b.impulse <= 300, tag + " 100 Hz+ at most 300 us");
                        double onMs = 1000.0 / hz * b.cluster;
                        if (hz >= 20) {
                            fused += onMs;
                            check(b.interval > 0 || fused <= 6000, tag + " fused impulse " + fused + " ms");
                            if (b.interval > 0) {
                                fused = 0;
                            }
                        } else {
                            fused = 0;
                        }
                    }
                }
                FileOutputStream f = new FileOutputStream(new File(out, tag + ".lok"));
                f.write(BluetensShell.ascii(text));
                f.close();
            }
        }
    }

    /** The Bluetens library shipped in XEMS (branding/bluetens/programs.json): every program reads, every part has some. */
    static void library(File repo) throws Exception {
        File f = new File(repo, "branding/bluetens/programs.json");
        String json = new String(java.nio.file.Files.readAllBytes(f.toPath()), "UTF-8");
        BluetensLibrary.Lib lib = BluetensLibrary.parse(json);
        org.json.JSONObject root = new org.json.JSONObject(json);
        int all = root.getJSONArray("programs").length();
        check(lib.progs.size() == all, "library: all " + all + " programs read, got " + lib.progs.size());
        check(lib.progs.size() >= 200, "library: 200+ programs");
        check(lib.parts.size() >= 15, "library: 15+ body parts");
        for (String[] part : lib.parts) {
            int n = 0;
            for (BluetensLibrary.Prog p : lib.progs) {
                n += p.on(part[0]) ? 1 : 0;
            }
            check(n > 0, "library: programs for " + part[0]);
            check(BluetensLibrary.placement(part[0], true).length() > 0, "library: placement for " + part[0]);
            check(!part[1].matches("[A-Za-z ]+"), "library: Bulgarian name for " + part[0]);
        }
        for (BluetensLibrary.Prog p : lib.progs) {
            check(p.secs > 0 && p.usHi <= 400, "library: " + p.file + " time / width");
            check(p.nameBg.length() > 0 && p.cat.length() > 0, "library: " + p.file + " name + category");
            check(BluetensShell.ascii(p.lok).length == p.lok.length(), "library: " + p.file + " is plain ASCII");
        }
        BluetensLibrary.Prog abs = lib.find("AEB_A");
        check(abs != null && abs.on("abdomen") && "Тонизиране на корема".equals(abs.nameBg), "library: AEB_A = belly toning");
        check(lib.desc.get("abdominal_tonicity") != null, "library: description kept");
    }

    public static void main(String[] a) throws Exception {
        parsing();
        adverts();
        shellFlow();
        liveSwap();
        File out = new File(a.length > 0 ? a[0] : ".");
        programs(out);
        manual(out);
        aussie(out);
        library(new File(System.getProperty("repo", ".")));
        if (fails > 0) {
            System.out.println(fails + " FAILED");
            System.exit(1);
        }
        System.out.println("bluetens sim OK");
    }
}
