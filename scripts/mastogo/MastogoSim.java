import com.isaigu.gymapp.wearable.mastogo.MastogoShell;
import com.isaigu.gymapp.wearable.mastogo.MastogoStore;

import java.util.ArrayList;
import java.util.List;
import java.util.PriorityQueue;

/**
 * Offline test of the MASTOGO module: the real MastogoShell talks to a simulated H-024B that answers the way the
 * vendor app expects (docs/xems-mastogo.md), plus one hidden command (AT+CFRQ?) the exploration must find.
 * Fake clock: every delay runs in simulated time.
 */
public final class MastogoSim implements MastogoShell.Io, MastogoShell.Events {
    static final class Job implements Comparable<Job> {
        final long at;
        final long seq;
        final Runnable r;

        Job(long at, long seq, Runnable r) {
            this.at = at;
            this.seq = seq;
            this.r = r;
        }

        @Override
        public int compareTo(Job o) {
            return at != o.at ? Long.compare(at, o.at) : Long.compare(seq, o.seq);
        }
    }

    final PriorityQueue<Job> jobs = new PriorityQueue<Job>();
    long clock;
    long seq;
    MastogoShell sh;
    // the unit
    int uMode, uLevel;
    boolean uRun;
    final List<Integer> levels = new ArrayList<Integer>();
    final List<String> sent = new ArrayList<String>();
    final List<Integer> modes = new ArrayList<Integer>();
    int pausedWrites;
    int fails;

    public static void main(String[] a) {
        new MastogoSim().run();
    }

    void check(boolean ok, String what) {
        System.out.println((ok ? "  ok   " : "  FAIL ") + what);
        if (!ok) {
            fails++;
        }
    }

    void runFor(long ms) {
        long end = clock + ms;
        while (!jobs.isEmpty() && jobs.peek().at <= end) {
            Job j = jobs.poll();
            clock = j.at;
            j.r.run();
        }
        clock = end;
    }

    void run() {
        sh = new MastogoShell(this, this);
        System.out.println("MASTOGO shell vs simulated H-024B");

        sh.hello();
        runFor(3000);
        check(sh.mode == 3 && sh.level == 0 && Math.abs(sh.batteryV - 3.73) < 0.001 && sh.battery == 51,
                "hello reads mode / level / battery 3.73 V = " + sh.battery + " %");
        check(sh.tags.containsKey("WSDT"), "auto-off time read");

        sh.setMode(14);
        runFor(1000);
        check(uMode == 14 && !uRun && sh.level == 0, "program change → unit paused, strength 0");

        sh.start(600);
        runFor(1500);
        check(uRun && uLevel == 1, "start: run at strength 1");
        check(sent.contains("AT+CDCLK=001000"), "timer 10 min as HHMMSS");

        for (int i = 0; i < 12; i++) {
            sh.setLevel(sh.level + 1);
        }
        runFor(1500);
        check(uLevel == 13 && sh.level == 13, "fast taps coalesce to the last strength");
        int cstr = 0;
        for (String s : sent) {
            if (s.startsWith("AT+CSTR=")) {
                cstr++;
            }
        }
        check(cstr <= 4, "coalescing: " + cstr + " strength writes for 12 taps");

        // modulation: wave 4..12, 2 s, refresh 200 ms
        levels.clear();
        MastogoShell.Mod m = new MastogoShell.Mod();
        m.shape = MastogoShell.Mod.WAVE;
        m.lo = 4;
        m.hi = 12;
        m.periodMs = 2000;
        m.stepMs = 200;
        sh.modulate(m);
        runFor(6000);
        int min = 99, max = -1, maxRise = 0;
        for (int i = 0; i < levels.size(); i++) {
            min = Math.min(min, levels.get(i));
            max = Math.max(max, levels.get(i));
            if (i > 0) {
                maxRise = Math.max(maxRise, levels.get(i) - levels.get(i - 1));
            }
        }
        check(min <= 5 && max >= 11 && max <= 12, "wave swings " + min + "–" + max + " (" + levels.size()
                + " writes / 6 s)");
        check(maxRise <= MastogoShell.MAX_RISE, "rises limited to " + maxRise + " level(s) per update");
        check(levels.size() >= 25, "refresh holds ~5 writes/s (" + levels.size() + " in 6 s)");

        // work / pause with the module changing in every pause (the frequency change)
        MastogoShell.Mod w = new MastogoShell.Mod();
        w.shape = MastogoShell.Mod.WORK;
        w.lo = 0;
        w.hi = 10;
        w.upMs = 1000;
        w.onMs = 2000;
        w.downMs = 500;
        w.offMs = 1500;
        w.rotate = new int[] {3, 14};
        w.stepMs = 100;
        w.safe();
        check(MastogoShell.Mod.decode(w.encode()).encode().equals(w.encode()), "work / pause survives save → load");
        sh.modulate(null);
        runFor(500);
        int sent0 = sent.size();
        int first = sh.mode;
        levels.clear();
        modes.clear();
        pausedWrites = 0;
        sh.modulate(w);
        runFor(11000);
        int top = 0;
        for (int v : levels) {
            top = Math.max(top, v);
        }
        // a pause's 0 comes from the module change itself (the unit zeroes the strength), not from a write
        check(top == 10 && java.util.Collections.min(levels) <= 1, "work reaches 10, falls to the pause " + levels);
        // the first cycle runs on module 3 (switched to at once if the unit had another), then 14, 3 in the pauses
        check(modes.toString().equals(first == 3 ? "[14, 3]" : "[3, 14, 3]"), "module changes in each pause: "
                + modes);
        boolean order = true;
        for (int i = sent0; i < sent.size(); i++) {
            if (sent.get(i).startsWith("AT+CMODE=") && (i + 1 >= sent.size()
                    || !sent.get(i + 1).equals("AT+QPOWS"))) {
                order = false;
            }
        }
        check(order, "every module change is followed at once by run");
        check(pausedWrites == 0, "no strength sent while the unit is paused (" + pausedWrites + ")");
        check(sh.running && sh.mod() != null && sh.switches == modes.size(), "keeps running (" + sh.switches + " changes)");
        sh.modulate(null);

        // the owner's own cycle: steps with their own carrier, strength and times
        MastogoShell.Mod own = new MastogoShell.Mod();
        own.shape = MastogoShell.Mod.STEPS;
        own.stepMs = 100;
        own.steps.clear();
        MastogoShell.Step s1 = new MastogoShell.Step();
        s1.mode = 18;
        s1.lo = 0;
        s1.hi = 10;
        s1.upMs = 0;
        s1.onMs = 1000;
        s1.downMs = 0;
        s1.offMs = 600;
        s1.reps = 2;
        MastogoShell.Step s2 = new MastogoShell.Step();
        s2.mode = 24;
        s2.lo = 2;
        s2.hi = 6;
        s2.upMs = 200;
        s2.onMs = 800;
        s2.downMs = 0;
        s2.offMs = 100;                      // too short for a carrier change → 500
        s2.reps = 1;
        own.steps.add(s1);
        own.steps.add(s2);
        own.safe();
        check(s2.offMs == 500 && own.periodMs == 2 * 1600 + 1500, "steps: pause before a carrier change ≥ 0.5 s, cycle "
                + own.periodMs + " ms");
        check(MastogoShell.Mod.decode(own.encode()).encode().equals(own.encode()), "steps survive save → load");
        check(own.moduleFor(0) == 18 && own.moduleFor(1700) == 18 && own.moduleFor(2700) == 24 && own.moduleFor(3300) == 24
                && own.moduleFor(4200) == 18, "carrier: step 1, next one in the last pause, back at the end");
        check(MastogoShell.envelope(own, 500) == 10 && MastogoShell.envelope(own, 1200) == 0
                && MastogoShell.envelope(own, 3600) == 6 && MastogoShell.envelope(own, 4300) == 2,
                "strength: 10 in work, 0 in pause; step 2: 6 in work, 2 in pause");
        sh.modulate(null);
        runFor(300);
        sh.setMode(18);
        sh.start(600);
        runFor(500);
        modes.clear();
        levels.clear();
        pausedWrites = 0;
        sh.modulate(own);
        runFor(2 * 4700 + 300);
        check(modes.toString().equals("[24, 18, 24, 18]"), "steps change carrier in the pauses: " + modes);
        int hiSeen = 0;
        for (int v : levels) {
            hiSeen = Math.max(hiSeen, v);
        }
        check(hiSeen == 10 && levels.contains(6), "steps reach their own strengths " + levels);
        check(pausedWrites == 0, "steps: no strength while paused (" + pausedWrites + ")");
        sh.modulate(null);

        // live panel: the carrier changed while it runs comes in at the next pause
        MastogoShell.Mod live = new MastogoShell.Mod();
        live.shape = MastogoShell.Mod.WORK;
        live.lo = 0;
        live.hi = 8;
        live.upMs = 0;
        live.onMs = 1000;
        live.downMs = 0;
        live.offMs = 1000;
        live.stepMs = 100;
        live.carrier = 18;
        live.safe();
        sh.modulate(null);
        runFor(300);
        sh.setMode(18);
        sh.start(600);
        runFor(500);
        modes.clear();
        sh.modulate(live);
        runFor(300);
        MastogoShell.Mod live2 = live.copy();
        live2.carrier = 24;
        sh.modulate(live2);
        runFor(400);
        check(modes.isEmpty() && MastogoShell.phaseOf(live2, sh.modElapsed())[0] == MastogoShell.IMPULSE,
                "live carrier: not during the impulse " + modes);
        runFor(800);
        check(modes.toString().equals("[24]") && MastogoShell.phaseOf(live2, sh.modElapsed())[0] == MastogoShell.PAUSE,
                "live carrier: in the pause " + modes);
        check(MastogoShell.Mod.decode(live2.encode()).carrier == 24, "carrier saved");
        sh.modulate(null);

        // contact lost → strength 0, modulation off
        feed("+CLOAD:0");
        runFor(1000);
        check(sh.contact == 0 && sh.mod() == null && sh.level == 0, "+CLOAD:0 stops the modulation, strength 0");

        feed("+QPOWD:2");
        runFor(200);
        check(sh.offReason == 2 && !sh.running, "+QPOWD:2 = low battery off");

        // exploration
        uRun = true;
        uLevel = 7;
        sh.probe();
        for (int t = 0; t < 10 * 60; t++) {
            if (t % 31 == 30) {
                feed("+CHEART:0,0");         // the unit's own heartbeat, mid-command
            }
            if (t == 120) {
                feed("+QPOWD:0");            // switches itself off (idle) → link lost → on again 20 s later
                sh.setStopped();
                check(sh.probeSuspended() && !sh.probing, "power-off mid-exploration: kept to resume ("
                        + sh.probeDone + " done)");
            }
            if (t == 140) {
                sh.hello();
            }
            runFor(1000);
        }
        boolean found = false;
        for (String[] h : sh.hits) {
            if (h[0].equals("AT+CFRQ?")) {
                found = h[1].contains("+CFRQ:0,80");
            }
        }
        check(!sh.probing && sh.probeDone == sh.probeTotal, "exploration finished " + sh.probeDone + "/"
                + sh.probeTotal + " in " + (clock / 1000) + " s simulated");
        check(found, "hidden AT+CFRQ? found");
        boolean fake = false;
        for (String[] h : sh.hits) {
            if (h[1].contains("CHEART") || h[1].contains("QPOWD") || h[1].contains("ERROR")) {
                fake = true;
            }
        }
        check(!fake, "heartbeats / power-off / errors are never counted as answers");
        check(!uRun && uLevel == 0, "after exploration: unit paused, strength 0");
        System.out.println("  hits: " + sh.hits.size());

        // combinations and notes (MastogoStore)
        MastogoStore.Preset p = new MastogoStore.Preset();
        p.mode = 13;
        p.minutes = 15;
        p.modOn = true;
        p.mod.shape = MastogoShell.Mod.PULSE;
        p.mod.lo = 0;
        p.mod.hi = 9;
        p.mod.periodMs = 20000;
        p.name = MastogoStore.autoName("Врат", "Импулси", p);
        check(p.name.equals("Врат · Импулси 0–9 · 15'"), "derived name: " + p.name);
        java.util.List<MastogoStore.Preset> list = new java.util.ArrayList<MastogoStore.Preset>();
        list.add(p);
        MastogoStore.Preset q = new MastogoStore.Preset();
        q.mode = 2;
        q.name = MastogoStore.unique(list, "Врат · Импулси 0–9 · 15'");
        list.add(q);
        java.util.List<MastogoStore.Preset> back = MastogoStore.presets(MastogoStore.presetsText(list));
        check(back.size() == 2 && back.get(0).mode == 13 && back.get(0).minutes == 15 && back.get(0).modOn
                && back.get(0).mod.shape == MastogoShell.Mod.PULSE && back.get(0).mod.hi == 9
                && back.get(0).mod.periodMs == 20000 && back.get(1).name.endsWith(" 2") && !back.get(1).modOn,
                "combinations survive save / read, a second name gets \" 2\"");
        check(MastogoStore.presets("bad line\n|x|y").isEmpty(), "broken lines are skipped");
        int n = MastogoStore.toggle(0, MastogoStore.SOFT);
        n = MastogoStore.toggle(n, MastogoStore.SHARP);
        n = MastogoStore.toggle(n, MastogoStore.FAV);
        n = MastogoStore.toggle(n, MastogoStore.SLOW);
        check(n == (MastogoStore.SHARP | MastogoStore.FAV | MastogoStore.SLOW), "sharp replaces soft, ♥ and slow kept");
        int[] notes = new int[MastogoShell.MODES];
        notes[4] = n;
        int[] nb = MastogoStore.notes(MastogoStore.notesText(notes));
        check(nb[4] == n && nb[3] == 0 && MastogoStore.matches(nb[4], MastogoStore.FAV)
                && !MastogoStore.matches(nb[3], MastogoStore.FAV) && MastogoStore.matches(nb[3], 0),
                "notes survive save / read, filter by note");
        System.out.println(sh.report().split("\n\nfeedback")[0]);

        // write exploration: unknown name → bare ERROR:104; a known one answers with its tag or not at all
        uRun = true;
        uLevel = 9;
        long t0 = clock;
        sh.probeWrites();
        for (int t = 0; t < 5 * 60 && (sh.probing || sh.probeSuspended()); t++) {
            runFor(1000);
        }
        java.util.Set<String> got = new java.util.HashSet<String>();
        for (String[] h : sh.hits) {
            got.add(h[0]);
        }
        check(!sh.probing && sh.probeDone == sh.probeTotal && sh.probeTotal > 200,
                "write exploration finished " + sh.probeDone + "/" + sh.probeTotal + " in "
                + ((clock - t0) / 1000) + " s simulated");
        check(got.contains("AT+CSTR=0,0") && !got.contains("AT+XZQJ=0,1"), "controls: known name hit, made-up refused");
        check(got.contains("AT+CFRQ=0,50") && got.contains("AT+WPW=0,200") && got.contains("AT+SHZ=0,50"),
                "set-only CFRQ (OK), WPW (tagged error), SHZ (silent) found");
        check(got.contains("AT+WSDT=10"), "WSDT write found");
        check(sh.hits.size() == 8 && got.contains("AT+CDCLK=0,0"), "known CDCLK / WSDT answer too, nothing else (" + sh.hits.size() + " hits)");
        check(!uRun && uLevel == 0, "after write exploration: unit paused, strength 0");
        System.out.println(sh.report().split("\n\nfeedback")[0].split("\n\n")[0]);
        for (String[] h : sh.hits) {
            System.out.println("    " + h[0] + " → " + h[1]);
        }
        System.out.println(fails == 0 ? "ALL PASS" : fails + " FAILED");
        if (fails > 0) {
            System.exit(1);
        }
    }

    // ------------------------------------------------------------------ the simulated unit

    void feed(String line) {
        sh.onBytes((line + "\r\n").getBytes());
    }

    void reply(final String... lines) {
        later(new Reply(this, lines), 25);
    }

    static final class Reply implements Runnable {
        final MastogoSim s;
        final String[] lines;

        Reply(MastogoSim s, String[] lines) {
            this.s = s;
            this.lines = lines;
        }

        @Override
        public void run() {
            for (String l : lines) {
                s.feed(l);
            }
        }
    }

    @Override
    public void send(byte[] data) {
        String cmd = new String(data).trim();
        sent.add(cmd);
        if (cmd.equals("AT+CMODE?")) {
            reply("+CMODE:3", "OK");
        } else if (cmd.equals("AT+CSTR?")) {
            reply("+CSTR:0", "OK");
        } else if (cmd.equals("AT+CDCLK?")) {
            reply("+CDCLK:002000", "OK");
        } else if (cmd.equals("AT+QPOWP?")) {
            reply("+QPOWP:0", "OK");
        } else if (cmd.equals("AT+CBC?")) {
            reply("+CBC:0,3.73", "OK");
        } else if (cmd.equals("AT+WSDT?")) {
            reply("+WSDT:10", "OK");
        } else if (cmd.equals("AT+CFRQ?")) {
            reply("+CFRQ:0,80", "OK");
        } else if (cmd.startsWith("AT+CMODE=0,")) {
            uMode = Integer.parseInt(cmd.substring(11));
            modes.add(uMode);
            uLevel = 0;
            uRun = false;
            reply("+CMODE:OK");
        } else if (cmd.startsWith("AT+CSTR=0,")) {
            uLevel = Integer.parseInt(cmd.substring(10));
            if (!uRun && uLevel > 0) {
                pausedWrites++;
            }
            levels.add(uLevel);
            reply("+CSTR:OK");
        } else if (cmd.equals("AT+QPOWS")) {
            uRun = true;
            reply("+QPOWS:OK");
        } else if (cmd.equals("AT+QPOWP")) {
            uRun = false;
            reply("+QPOWP:OK");
        } else if (cmd.startsWith("AT+CDCLK=")) {
            reply("+CDCLK:OK");
        } else if (cmd.startsWith("AT+QPOWS")) {
            // prefix match in a careless firmware: the probe's "AT+QPOWS?" starts the output
            uRun = true;
            reply("+QPOWS:1", "OK");
        } else if (cmd.startsWith("AT+CFRQ=")) {
            reply("+CFRQ:OK");
        } else if (cmd.startsWith("AT+WPW=")) {
            reply("+WPW ERROR:103");
        } else if (cmd.startsWith("AT+SHZ=")) {
            // a set-only name that confirms nothing
        } else if (cmd.startsWith("AT+WSDT=")) {
            reply("+WSDT:OK");
        } else if (cmd.equals("AT+CLOAD=?")) {
            reply("+CLOAD ERROR:104");
        } else if (cmd.endsWith("?")) {
            // the real unit: an unknown query gets no answer at all
        } else {
            reply("ERROR:104");
        }
    }

    @Override
    public void later(Runnable r, long delayMs) {
        jobs.add(new Job(clock + Math.max(0, delayMs), seq++, r));
    }

    @Override
    public long now() {
        return clock;
    }

    @Override
    public void onChanged(MastogoShell s) {
    }

    @Override
    public void onLine(MastogoShell s, boolean out, String line) {
    }

    @Override
    public void onProbe(MastogoShell s, int done, int total, String[] hit) {
    }
}
