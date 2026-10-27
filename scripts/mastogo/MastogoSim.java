import com.isaigu.gymapp.wearable.mastogo.MastogoShell;

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
        runFor(5 * 60 * 1000);
        boolean found = false;
        for (String[] h : sh.hits) {
            if (h[0].equals("AT+CFRQ?")) {
                found = h[1].contains("+CFRQ:0,80");
            }
        }
        check(!sh.probing && sh.probeDone == sh.probeTotal, "exploration finished " + sh.probeDone + "/"
                + sh.probeTotal + " in " + (clock / 1000) + " s simulated");
        check(found, "hidden AT+CFRQ? found");
        check(!uRun && uLevel == 0, "after exploration: unit paused, strength 0");
        System.out.println("  hits: " + sh.hits.size());
        System.out.println(sh.report().split("\n\nfeedback")[0]);
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
            uLevel = 0;
            uRun = false;
            reply("+CMODE:OK");
        } else if (cmd.startsWith("AT+CSTR=0,")) {
            uLevel = Integer.parseInt(cmd.substring(10));
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
            reply("OK");
        } else {
            reply("ERROR");
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
