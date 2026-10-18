package bg.xems.wiems;

import android.graphics.Canvas;
import android.view.MotionEvent;

import java.awt.image.BufferedImage;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/**
 * Offline test of the WiEMS tablet app: the unit operations of a session (same as the XBody panel's WIEMS suit,
 * xbody/panel/test/core_test.cpp) and screenshots of the real XView painted through a Java2D shim at the Lenovo 8"
 * size (1280×800) — wiems/app/test/run.sh OUTDIR.
 */
public class AppTest {
    static int fails, checks;

    static void eq(String what, Object want, Object got) {
        checks++;
        if (!String.valueOf(want).equals(String.valueOf(got))) {
            fails++;
            System.out.println("FAIL " + what + ":\n  want " + want + "\n  got  " + got);
        }
    }

    static String hex(byte[] b) {
        StringBuilder s = new StringBuilder();
        for (byte x : b) s.append(String.format("%02x", x & 0xFF));
        return s.toString();
    }

    static List<String> drain(Session s, long now) {
        List<String> r = new ArrayList<String>();
        byte[] op;
        while ((op = s.next(now)) != null) {
            r.add(hex(op));
            s.ack();
        }
        return r;
    }

    static final class Fake implements Host {
        long t = 100000;
        int kind = MainActivity.VIEW_PICK;
        List<Seen> seen = new ArrayList<Seen>();
        Session session;
        String note = "";
        boolean warn;

        public long now() { return t; }
        public int viewKind() { return kind; }
        public String note() { return note; }
        public boolean noteWarn() { return warn; }
        public List<Seen> seen() { return seen; }
        public Session session() { return session; }
        public String linkedName() { return "WIEMS - EMS Device"; }
        public String linkingMac() { return null; }
        public boolean age60() { return false; }
        public void askPermission() {}
        public void askBluetooth() {}
        public void connectTo(String mac) {}
        public void startPause() {
            if (session.state() == Session.RUNNING) session.pause(t);
            else session.start(t);
        }
        public void applyProgram(Session.Program p, boolean a) {}
        public void forget() {}
        int mode = -1;
        public int mode() { return mode; }
        public void chooseMode(int m) {
            Session.Program q = Procs.mode(m);
            Safe.apply(q, false);
            session.setProgram(q);
            mode = m;
        }
        public void chooseProc(String id, int minutes) {
            session.setPlan(Procs.plan(Procs.byId(id), minutes), false);
            mode = Procs.MODE_PROC;
        }
        public void backToModes() { mode = -1; }
        public boolean held() { return false; }
        public void shareLog() {}
        public boolean xemsWiring() { return channels.suit == Channels.XEMS; }
        public void setXemsWiring(boolean x) { channels.suit = x ? Channels.XEMS : Channels.XBODY; channelsChanged(); }
        boolean female = true;
        Channels channels = new Channels();
        public Channels channels() { return channels; }
        public void channelsChanged() { if (session != null) session.setMap(channels.map()); }
        public boolean female() { return female; }
        boolean dark;
        public boolean dark() { return dark; }
        public void setDark(boolean d) { dark = d; }
        public int kind() { return session != null ? session.kind : Dev.WIEMS; }
        public void setFemale(boolean f) { female = f; }
        public java.io.InputStream openAsset(String name) {
            try {
                return new java.io.FileInputStream(new File(System.getProperty("assets"), name));
            } catch (java.io.IOException e) {
                return null;
            }
        }
    }

    /** The protocol checks keep the unit's channels = XBody's part order (the map is tested on its own below). */
    static final int[] ID = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};

    static Session wi() {
        Session s = new Session();
        s.setMap(ID);
        return s;
    }

    static String digits(int[] m) {
        StringBuilder b = new StringBuilder();
        for (int x : m) b.append(x);
        return b.toString();
    }

    /** The strong-red pixels in the first program tile (Мускули) of the modes screen at 1280×800. */
    static int tileRed(XView v) {
        BufferedImage img = new BufferedImage(v.getWidth(), v.getHeight(), BufferedImage.TYPE_INT_RGB);
        v.draw(new Canvas(img.createGraphics()));
        int n = 0;
        for (int y = 170; y < 350; y++)
            for (int x = 220; x < 400; x++) {
                int c = img.getRGB(x, y), r = (c >> 16) & 255, g = (c >> 8) & 255;
                if (r > 180 && g < 80) n++;
            }
        return n;
    }

    static void shot(XView v, String dir, String name) throws Exception {
        BufferedImage img = new BufferedImage(v.getWidth(), v.getHeight(), BufferedImage.TYPE_INT_RGB);
        java.awt.Graphics2D g = img.createGraphics();
        g.setColor(java.awt.Color.WHITE);
        g.fillRect(0, 0, v.getWidth(), v.getHeight());
        v.draw(new Canvas(g));
        g.dispose();
        javax.imageio.ImageIO.write(img, "png", new File(dir, name));
    }

    /** A slide at design coordinates: down at (x0, y), moves to (x1, y); up only when {@code up} (then x0.. unused). */
    static void slide(XView v, float x0, float y0, float x1, float y1, boolean up) {
        BufferedImage scratch = new BufferedImage(v.getWidth(), v.getHeight(), BufferedImage.TYPE_INT_RGB);
        v.draw(new Canvas(scratch.createGraphics()));
        float k = v.getHeight() / 600f, dw = Math.max(800f, v.getWidth() / k);
        float ox = (v.getWidth() - dw * k) / 2;
        if (x0 != x1 || y0 != y1) {
            v.onTouchEvent(new MotionEvent(MotionEvent.ACTION_DOWN, ox + x0 * k, y0 * k));
            for (int i = 1; i <= 10; i++)
                v.onTouchEvent(new MotionEvent(MotionEvent.ACTION_MOVE, ox + (x0 + (x1 - x0) * i / 10) * k, (y0 + (y1 - y0) * i / 10) * k));
            lastX = ox + x1 * k;
            lastY = y1 * k;
        }
        if (up) v.onTouchEvent(new MotionEvent(MotionEvent.ACTION_UP, lastX, lastY));
    }

    static float lastX, lastY;

    /** A tap at design coordinates (600 high, centred). */
    static void tap(XView v, float dxDesign, float dyDesign) {
        BufferedImage scratch = new BufferedImage(v.getWidth(), v.getHeight(), BufferedImage.TYPE_INT_RGB);
        v.draw(new Canvas(scratch.createGraphics()));   // the hits of what is on the screen now (as a real frame)
        float k = v.getHeight() / 600f, dw = Math.max(800f, v.getWidth() / k);
        float ox = (v.getWidth() - dw * k) / 2;
        v.onTouchEvent(new MotionEvent(MotionEvent.ACTION_DOWN, ox + dxDesign * k, dyDesign * k));
        v.onTouchEvent(new MotionEvent(MotionEvent.ACTION_UP, ox + dxDesign * k, dyDesign * k));
    }

    /** A finger put down at x0, moved to x1 in steps and lifted (design coordinates). */
    static void swipe(XView v, float x0, float x1, float y) {
        BufferedImage scratch = new BufferedImage(v.getWidth(), v.getHeight(), BufferedImage.TYPE_INT_RGB);
        v.draw(new Canvas(scratch.createGraphics()));
        float k = v.getHeight() / 600f, dw = Math.max(800f, v.getWidth() / k);
        float ox = (v.getWidth() - dw * k) / 2;
        v.onTouchEvent(new MotionEvent(MotionEvent.ACTION_DOWN, ox + x0 * k, y * k));
        for (int i = 1; i <= 8; i++)
            v.onTouchEvent(new MotionEvent(MotionEvent.ACTION_MOVE, ox + (x0 + (x1 - x0) * i / 8) * k, y * k));
        v.onTouchEvent(new MotionEvent(MotionEvent.ACTION_UP, ox + x1 * k, y * k));
    }

    public static void main(String[] args) throws Exception {
        // ---- the session's unit operations (golden: wiems/PROTOCOL.md + the vendor's own writes in the capture) ----
        // The vendor writes the strengths only when they change (one write per tap, ~1 s apart) and never in the
        // pause — the unit runs its own work / rest. Strength byte = the vendor's scale (100 % ≈ 20).
        Session s = wi();
        s.linked();
        eq("link", "[0000000000000000000000, 0400]", drain(s, 0));
        eq("zones start at 0", "0 0", s.zone(0) + " " + s.zone(9));
        s.setStrength(40);
        s.setZone(8, 50);                                // Ръце → unit channel 4: 50 % × 40 % = 20 % → byte 4
        s.start(1000);
        eq("waits for the count-down", Session.IDLE, s.state());
        eq("start ops (Ru 1 s, nothing in the pause)", "[012955040401007e050204, 0205000000000000" + "00a5a0, 037f7f6d497f7f64527f52, 0000000000000000000000, 0425]",
                drain(s, 1000));
        s.runNotify(new byte[] {1}, 5100);
        s.tick(5100);
        eq("running", Session.RUNNING, s.state());
        eq("begin: zero, the program, the strengths once", "[0000000000000000000000, 012955040401007e050006, 0000000000048000000000]", drain(s, 5100));
        for (int z = 0; z < Session.ZONES; z++) s.setZone(z, 100);   // ten taps in a row …
        eq("… held a moment", "[]", drain(s, 5200));
        eq("… then ONE write (40 % → 8)", "[0008080808080808080808]", drain(s, 6000));
        s.setZone(3, 50);                                // one zone (Корем → part 5 → ch 5, XBody's measured order)
        eq("one zone = one write, the rest unchanged", "[0008080808888408080808]", drain(s, 7000));
        s.setZone(3, 50);
        eq("the same value is not written again", "[]", drain(s, 8000));
        s.runNotify(new byte[] {1}, 9200);
        s.tick(9200);
        eq("the unit's own pause: nothing written", "[]", drain(s, 9200));
        s.runNotify(new byte[] {1}, 13300);
        s.tick(13300);
        eq("the next impulse: nothing written", "[]", drain(s, 13300));
        s.pause(13500);
        eq("pause → 0 + stop", "[0000000000000000000000, 0400]", drain(s, 13500));
        s.start(14000);
        drain(s, 14000);
        s.runNotify(new byte[] {1}, 14600);              // a "01" left from before the stop …
        s.tick(14600);
        eq("… does not end the new count-down", "[]", drain(s, 14600));
        s.runNotify(new byte[] {1}, 18100);
        s.tick(18100);
        eq("resume: the strengths again", "0008080808888408080808", drain(s, 18100).get(2));
        s.runNotify(new byte[] {0}, 19000);                     // the unit stopped by itself
        eq("unit stop seen", Session.PAUSED + " true", s.state() + " " + s.takeUnitStopped());
        eq("… and it gets 0 + stop", "[0000000000000000000000, 0400]", drain(s, 19000));
        s.start(20000);
        eq("▶ arms it again", "0425", drain(s, 20000).get(4));
        // the unit's check bits = the vendor's own frames from the capture, byte for byte
        eq("vendor frame 1", "0009000000800000800000", hex(com.isaigu.gymapp.bodytech.WiProto.currents(new int[] {9, 0, 0, 0, 0, 0, 0, 0, 0, 0})));
        eq("vendor frame 2", "00120f0f8f0f0f0f8f0c00", hex(com.isaigu.gymapp.bodytech.WiProto.currents(new int[] {18, 15, 15, 15, 15, 15, 15, 15, 12, 0})));
        eq("vendor frame 3", "00110f0e8f8e0e8f0f0b0e", hex(com.isaigu.gymapp.bodytech.WiProto.currents(new int[] {17, 15, 14, 15, 14, 14, 15, 15, 11, 14})));
        eq("vendor frame 4", "000c00020f8f8f8d0d000f", hex(com.isaigu.gymapp.bodytech.WiProto.currents(new int[] {12, 0, 2, 15, 15, 15, 13, 13, 0, 15})));
        eq("equal = no bits", "000e0c0c0c0c0c0c0c090b", hex(com.isaigu.gymapp.bodytech.WiProto.currents(new int[] {14, 12, 12, 12, 12, 12, 12, 12, 9, 11})));

        // ---- the service mode's channel map: one swap per wrong part; zones / procedures stay on body parts ----
        Channels cm = new Channels();
        // the owner's measurement (v1.15, service mode on an XBody suit): к.4 Трапец, к.5 Гръб, к.7 Гърди, к.3 Кръст,
        // к.8 Ръце, к.6 Корем, к.2 Седалище, к.9 Предно бедро, к.1 Задно бедро, к.10 Прасец
        eq("XBody suit starts as the owner measured it", "3462751809", digits(cm.map()));
        eq("XEMS suit: the owner's XEMS → XBody table on that map", "2194503876", digits(cm.map[Dev.WIEMS][Channels.XEMS]));
        cm.felt(5, 5);                                   // Корем's channel felt on the belly
        eq("the same part = checked", "1 3462751809", cm.okCount() + " " + digits(cm.map()));
        cm.felt(6, 1);                                   // Седалище's channel (к.2) felt on the back
        eq("another part: that part gets the channel (checked), Седалище gets the back's (to try)",
                "2 3162754809 true false", cm.okCount() + " " + digits(cm.map()) + " " + cm.ok(1) + " " + cm.ok(6));
        Channels cn = new Channels();
        cn.load(cm.save());
        eq("saved and read back", cm.save(), cn.save());
        Channels cb = new Channels();
        cb.load("1;0000000000;12;0;0");                  // not a permutation / too short: the starting maps stay
        eq("a broken saved value keeps the starting maps", "1 3462751809 2194503876", cb.suit + " "
                + digits(cb.map[0][0]) + " " + digits(cb.map[0][1]));
        Channels co14 = new Channels();                  // app 1.14: the old starts, never checked → the measured ones
        co14.load("0;0123456789;3691580742;0;0");
        eq("1.14's unchecked starts move to the measured", "3462751809 2194503876", digits(co14.map[0][0]) + " " + digits(co14.map[0][1]));
        Channels ck = new Channels();                    // a checked one stays as the owner set it
        ck.load("0;0123456789;3691580742;5;0");
        eq("a checked map stays", "0123456789 2", digits(ck.map[0][0]) + " " + ck.okCount());
        ck.dev = Dev.XEMS;
        eq("an XEMS unit: XBody suit / XEMS suit", "8735946210 5607418293", digits(ck.map[1][0]) + " " + digits(ck.map[1][1]));
        ck.dev = Dev.BODYTECH;
        eq("bodytech: fixed", false, ck.remappable());
        Session sm = new Session();
        sm.linked();
        drain(sm, 0);
        sm.setMap(cm.map());
        sm.setStrength(100);
        sm.setZone(2, 50);                               // Седалище: part 6 → unit channel 4 after the swap
        sm.start(1000);
        drain(sm, 1000);
        sm.runNotify(new byte[] {1}, 5100);
        sm.tick(5100);
        eq("Седалище goes out on channel 4 (50 % → 10)", hex(com.isaigu.gymapp.bodytech.WiProto.currents(new int[] {0, 0, 0, 0, 10, 0, 0, 0, 0, 0})),
                drain(sm, 5100).get(2));
        sm.setMap(Channels.DEFAULT[Dev.WIEMS][Channels.XBODY]);
        eq("a new map while running: one write, Седалище back on channel 1 (к.2)",
                "[" + hex(com.isaigu.gymapp.bodytech.WiProto.currents(new int[] {0, 10, 0, 0, 0, 0, 0, 0, 0, 0})) + "]", drain(sm, 6000));
        eq("scale", "0 1 10 20", Session.unitValue(0) + " " + Session.unitValue(5) + " " + Session.unitValue(50) + " " + Session.unitValue(100));
        // the suit's standard: an XEMS suit on the unit's leads — Ръце drives the lead "Корем" (ch 5), the zone keeps its %
        Session w = new Session();
        w.setStrength(100);
        w.setZone(8, 50);                                // Ръце 50 %
        eq("xbody standard: Ръце → ch 7 (к.8)", 50 + " " + 7, w.zone(8) + " " + w.unitCh(8));
        w.setMap(Channels.DEFAULT[Dev.WIEMS][Channels.XEMS]);
        eq("xems standard: Ръце → ch 5, still 50 %", 50 + " " + 5, w.zone(8) + " " + w.unitCh(8));
        int[] seen = new int[10];
        for (int z = 0; z < Session.ZONES; z++) seen[w.unitCh(z)]++;
        eq("xems standard: every channel once", "[1, 1, 1, 1, 1, 1, 1, 1, 1, 1]", java.util.Arrays.toString(seen));
        String[] lead = {"Предно бедро", "Ръце", "Трапец", "Задно бедро", "Гръб", "Седалище", "Кръст", "Прасец", "Корем", "Гърди"};
        StringBuilder owner = new StringBuilder();          // the zone → the unit lead's name (XBody's channel names)
        String[] partName = {"Трапец", "Гръб", "Гърди", "Кръст", "Ръце", "Корем", "Седалище", "Предно бедро", "Задно бедро", "Прасец"};
        String[] chName = new String[10];                // the unit channel → the XBody lead on it (the measured map)
        for (int q = 0; q < 10; q++) chName[Channels.DEFAULT[Dev.WIEMS][Channels.XBODY][q]] = partName[q];
        for (int z = 0; z < Session.ZONES; z++) owner.append(chName[w.unitCh(z)]).append(z < 9 ? "," : "");
        eq("the owner's table", String.join(",", lead), owner.toString());
        w.linked();
        drain(w, 0);
        w.start(-4000);
        drain(w, -4000);
        w.runNotify(new byte[] {1}, 100);
        w.tick(100);
        List<String> wl = drain(w, 100);
        eq("xems standard on the wire: ch 5 = 10 (+ check bits)", "0000000000800a80000000", wl.get(wl.size() - 1));

        // the double impulse: the unit's own rest = Hz₂ at its %; the strengths stay as they are
        Session d = wi();
        d.linked();
        drain(d, 0);
        Session.Program dp = new Session.Program();
        dp.dbl = true;
        dp.dblHz = 7;
        dp.dblPct = 60;
        d.setProgram(dp);
        d.setStrength(50);
        for (int z = 0; z < Session.ZONES; z++) d.setZone(z, 100);
        d.start(-4000);
        List<String> ds = drain(d, -4000);
        eq("dbl rest", "02073c000000000000a59e", ds.get(1));
        d.runNotify(new byte[] {1}, 100);
        d.tick(100);
        drain(d, 100);
        d.tick(4200);
        eq("dbl pause: nothing written", "[]", drain(d, 4200));
        eq("dbl live level", 30, d.liveLevel(0));
        Session.Program p = new Session.Program();
        p.hz = 120;
        p.onS = 10;
        p.offS = 1;
        String why = Safe.apply(p, true);
        eq("60+ limits", "85 6", p.hz + " " + p.onS);
        eq("pause from fatigue", true, p.offS > 1 && why.contains("Пауза"));
        Session.Program rp = new Session.Program();
        rp.onS = 4;
        rp.rampMs = 5000;
        String rw = Safe.apply(rp, false);
        eq("ramp inside the impulse (4 s → ≤ 3 s)", 3000, rp.rampMs);
        eq("ramp note", true, rw.contains("Рампа"));
        rp.rampMs = 0;
        Safe.apply(rp, false);
        eq("85 Hz rises ≥ 1 s", 1000, rp.rampMs);

        // ---- XBody's modes: Cardio is continuous — the unit's rest at the same Hz, full
        Session cs = wi();
        cs.linked();
        drain(cs, 0);
        Session.Program cp = Procs.mode(Procs.MODE_CARDIO);
        eq("cardio safe as XBody has it", "", Safe.apply(cp, false));
        cs.setProgram(cp);
        cs.setStrength(40);
        for (int z = 0; z < Session.ZONES; z++) cs.setZone(z, 100);
        cs.start(-4000);
        List<String> co = drain(cs, -4000);
        eq("cardio program 7 Hz 20/10", "012907140a00007e0502", co.get(0).substring(0, 20));
        eq("cardio rest = 7 Hz 100 %", "020764", co.get(1).substring(0, 6));
        cs.runNotify(new byte[] {1}, 100);
        cs.tick(100);
        drain(cs, 100);
        cs.runNotify(new byte[] {1}, 20200);
        cs.tick(20200);
        eq("cardio rest: nothing written", "[]", drain(cs, 20200));
        eq("cardio rest is live", 40, cs.liveLevel(3));
        Session.Program mp = Procs.mode(Procs.MODE_MUSCLE);
        Safe.apply(mp, false);
        eq("muscle 80 Hz 4 s, rise 1 s", "80 4 1000", mp.hz + " " + mp.onS + " " + mp.rampMs);

        // ---- a passive procedure: the phases play by the clock, each phase's rhythm goes to the unit
        Procs.Plan cel = Procs.plan(Procs.byId("cellulite"), 0);
        eq("cellulite own length", 25 * 60, cel.totalMs() / 1000);
        Session ps = wi();
        ps.linked();
        drain(ps, 0);
        ps.setPlan(cel, false);
        ps.setStrength(50);
        for (int z = 0; z < Session.ZONES; z++) ps.setZone(z, 100);
        eq("plan sets the time", 25 * 60, ps.secondsLeft(0));
        ps.start(-4000);
        eq("warm-up 5 Hz 10/1", "0129050a0100007e0502", drain(ps, -4000).get(0).substring(0, 20));
        ps.runNotify(new byte[] {1}, 100);
        ps.tick(100);
        List<String> w0 = drain(ps, 100);
        // W_CELL per body part (abdomen 75 → ch 5, bottom 100 → ch 6: XBody's measured order) × the warm-up's
        // envelope 60 % × strength 50 %, on the unit's scale
        eq("warm-up shares", "0000000004030406860604", w0.get(w0.size() - 1));
        ps.runNotify(new byte[] {1}, 150200);
        ps.tick(150200);                                   // into "Стягане": 85 Hz with its second impulse
        List<String> w1 = drain(ps, 150200);
        eq("phase 2 → zero first", "0000000000000000000000", w1.get(0));
        eq("phase 2 program 85 Hz", "012955", w1.get(1).substring(0, 6));
        eq("phase 2 rest 8 Hz 50 %", "020832", w1.get(2).substring(0, 6));
        eq("phase 2 seg", 1, ps.seg());
        // the drainage wave: one group per impulse, the previous at half; the first after a rest alone
        Procs.Plan dr = Procs.plan(Procs.byId("drain"), 0);
        Procs.Seg legs = dr.segs[1];
        eq("wave step 0 (calf)", "0 45", Procs.share(legs, 0, 0, 8) / 2 + " " + Procs.share(legs, 0, 0, 9) / 2);
        eq("wave step 1 (thighs, calf at half)", "90 45", Procs.share(legs, 1, 0, 7) + " " + Procs.share(legs, 1, 0, 9));
        eq("wave rest step", 0, Procs.share(legs, 4, 0, 9) + Procs.share(legs, 4, 0, 6));

        // ---- screenshots at the Lenovo Tab M8 HD size ----
        String dir = args.length > 0 ? args[0] : ".";
        Fake h = new Fake();
        XView v = new XView(new android.content.Context(), h);
        Seen u = new Seen();
        u.mac = "88:6B:0F:CC:BE:49";
        u.name = "WIEMS - EMS Device";
        u.rssi = -58;
        u.lastMs = h.t;
        h.seen.add(u);
        Seen u2 = new Seen();
        u2.mac = "88:6B:0F:CC:BE:50";
        u2.name = "WIEMS - EMS Device";
        u2.rssi = -74;
        u2.lastMs = h.t;
        h.seen.add(u2);
        Seen u3 = new Seen();                               // v1.15: an XEMS suit and a bodytech suit in the same list
        u3.mac = "C4:4F:33:10:20:30";
        u3.name = "nbee-0412";
        u3.kind = Dev.XEMS;
        u3.rssi = -66;
        u3.lastMs = h.t;
        h.seen.add(u3);
        Seen u4 = new Seen();
        u4.mac = "02:BC:34:D6:2D:93";
        u4.name = "EMS08-05629";
        u4.kind = Dev.BODYTECH;
        u4.rssi = -70;
        u4.lastMs = h.t;
        h.seen.add(u4);
        shot(v, dir, "1-pick.png");
        h.kind = MainActivity.VIEW_TRAIN;
        h.session = new Session();
        h.session.linked();
        h.session.setBattery(81);
        drain(h.session, h.t);
        h.note = "Свързан ✓  WIEMS - EMS Device";
        shot(v, dir, "2a-modes.png");                      // XBody's program screen after the link
        h.note = "";
        tap(v, 80 + 524, 405);                              // ПАСИВНИ ПРОЦЕДУРИ
        tap(v, 80 + 24 + 2 * 128 + 60, 170);                // Антицелулит
        tap(v, 80 + 566 + 4 * 39 + 18, 178);                // 30 min
        shot(v, dir, "2b-procs.png");
        tap(v, 80 + 566 + 98, 540);                         // НАПРЕД
        eq("procedure chosen", Procs.MODE_PROC, h.mode);
        eq("30 min plan", 30 * 60, h.session.secondsLeft(h.t));
        shot(v, dir, "2c-proc-idle.png");
        h.session.setStrength(45);
        for (int z = 0; z < Session.ZONES; z++) h.session.setZone(z, 100);   // the trainer raises the zones
        tap(v, 100, 470);                                   // СТАРТ
        drain(h.session, h.t);
        h.t += 4100;                                        // the unit's count-down
        h.session.runNotify(new byte[] {1}, h.t);
        if (h.session.state() == Session.RUNNING) h.session.runNotify(new byte[] {1}, h.t);
        h.session.tick(h.t);
        drain(h.session, h.t);
        for (int i = 0; i < 18000 * 3 / 2; i++) {          // 15 min on: the wave over the legs
            h.t += 100;
            if (h.session.state() == Session.RUNNING) h.session.runNotify(new byte[] {1}, h.t);
            if (h.session.state() == Session.RUNNING) h.session.runNotify(new byte[] {1}, h.t);
        h.session.tick(h.t);
            drain(h.session, h.t);
            if (h.session.seg() == 2 && h.session.impulse() && h.session.liveLevel(7) > 30) break;
        }
        shot(v, dir, "2d-proc-running.png");
        tap(v, 960 - 70, 28);                               // the phase block → the sheet
        shot(v, dir, "2e-proc-sheet.png");
        tap(v, 80 + 164, 524);                              // Откажи
        h.session.stop();
        drain(h.session, h.t);
        tap(v, 70, 28);                                     // ← Програми
        tap(v, 70, 28);                                     // ← (the procedures page) → the program screen
        tap(v, 80 + 276, 405);                              // РЪЧНИ НАСТРОЙКИ
        eq("manual chosen", Procs.MODE_MANUAL, h.mode);
        h.note = "Свързан ✓  WIEMS - EMS Device";
        shot(v, dir, "2-train-idle.png");
        h.note = "";
        h.session.setStrength(35);
        tap(v, 100, 470);                                   // СТАРТ (left column)
        drain(h.session, h.t);                              // the unit takes the program and starts counting down
        h.t += 4100;                                        // the unit's count-down
        h.session.runNotify(new byte[] {1}, h.t);
        if (h.session.state() == Session.RUNNING) h.session.runNotify(new byte[] {1}, h.t);
        h.session.tick(h.t);
        h.t += 1500;
        if (h.session.state() == Session.RUNNING) h.session.runNotify(new byte[] {1}, h.t);
        h.session.tick(h.t);
        drain(h.session, h.t);
        Session keep = h.session;
        h.session = new Session();                          // a new client on a new link
        h.session.setStrength(100);
        tap(v, 2, 300);                                     // (a frame: nothing there)
        eq("a new client: nothing picked (СИЛА)", 0, v.selMask());
        h.session.setZone(0, 30);
        h.session.setZone(5, 60);
        tap(v, 100, 111);                                   // Предно бедро (30 %)
        tap(v, 960 - 90, 111);                              // Гръб (60 %)
        tap(v, 960 - 40, 567);                              // + on both
        eq("two zones + keep their difference", "35 65", h.session.zone(0) + " " + h.session.zone(5));
        // the slider moves only from its fader (owner): a tap or a swipe beside it changes nothing
        float sx0 = 104, sx1 = 960 - 98, knob = sx0 + (sx1 - sx0) * 0.35f;
        tap(v, 700, 567);
        tap(v, 150, 567);
        swipe(v, 700, 800, 567);
        eq("a touch on the bar beside the fader: nothing", "35 65", h.session.zone(0) + " " + h.session.zone(5));
        tap(v, knob + 10, 567);
        eq("a tap on the fader itself: nothing", "35 65", h.session.zone(0) + " " + h.session.zone(5));
        swipe(v, knob + 20, knob + 20 + (sx1 - sx0) * 0.10f, 567);   // grabbed off-centre: no jump, + 10 %
        eq("the fader dragged + 10 %", "45 75", h.session.zone(0) + " " + h.session.zone(5));
        swipe(v, knob + 2, knob - (sx1 - sx0) * 0.20f, 567);         // the fader is at 45 % now: a grab at 35 % misses
        eq("a drag from where the fader was: nothing", "45 75", h.session.zone(0) + " " + h.session.zone(5));
        h.session.setZone(0, 35);
        h.session.setZone(5, 65);
        // the owner's rules: a pick ends by itself after 5 s with no touch; any touch keeps it
        h.t += 4000;
        v.tick(h.t);
        eq("4 s: still picked", true, v.selMask() != 0);
        tap(v, 2, 300);                                     // a touch anywhere = activity
        h.t += 4000;
        v.tick(h.t);
        eq("activity keeps it", true, v.selMask() != 0);
        h.t += 1100;
        v.tick(h.t);
        eq("5 s idle → back to СИЛА", 0, v.selMask());
        // a slide on a zone label = its strength (the XEMS focus chip): right = more, the label's width = 20 %
        h.session.setZone(0, 35);
        slide(v, 60, 111, 60 + 239, 111, false);           // (the slide starts after the first 12 units, as XEMS)
        eq("slide: shown, not sent before release", 35, h.session.zone(0));
        slide(v, 0, 0, 0, 0, true);
        eq("slide +20 on release (picked first)", "55 true", h.session.zone(0) + " " + ((v.selMask() & 1) != 0));
        slide(v, 200, 111, 200 - 430, 111, true);
        eq("a slide is ≤ 20", 35, h.session.zone(0));
        tap(v, 2, 300);
        h.t += 5100;
        v.tick(h.t);
        // a tap on a muscle of the figure picks its zone like its label
        tap(v, 80 + 290 - 30, 106 + 372 * 0.55f);           // front thigh (left figure)
        eq("figure tap picks Предно бедро", true, (v.selMask() & 1) != 0);
        h.session = keep;
        tap(v, 100, 111);
        tap(v, 960 - 90, 111);
        tap(v, 100, 300);                                   // the zone "Корем" (left column, row 4)
        tap(v, 960 - 90, 320);                              // "Ръце" (right column, row 4)
        v.tick(h.t);
        tap(v, 960 - 40, 567);                              // + : zones up, the % bubble shows
        for (int z = 0; z < Session.ZONES; z++) h.session.setZone(z, 20 + z * 9);   // a gradient over the zones
        shot(v, dir, "3-train-running.png");
        h.session.setStrength(80);
        h.t += 600;
        if (h.session.state() == Session.RUNNING) h.session.runNotify(new byte[] {1}, h.t);
        h.session.tick(h.t);
        drain(h.session, h.t);
        shot(v, dir, "3b-strong.png");
        h.female = false;
        shot(v, dir, "3c-male.png");
        h.female = true;
        Session.Program dp2 = h.session.program().copy();
        dp2.dbl = true;
        h.session.setProgram(dp2);
        h.t += 4000;
        h.session.tick(h.t);                                // into the pause: the second impulse in yellow
        drain(h.session, h.t);
        shot(v, dir, "3d-second.png");
        h.t += 5000;
        tap(v, 100, 470);                                   // ПАУЗА
        shot(v, dir, "4-paused.png");
        tap(v, 960 - 70, 28);                               // the program block → the sheet
        shot(v, dir, "5-sheet.png");
        tap(v, 80 + 600, 524);                              // ✓ Готово
        // ---- the hidden service mode: hold the logo 2 s ----
        String before = digits(h.channels.map());
        tap(v, 2, 300);                                     // (a frame: the hits of the screen now)
        float sk = 800 / 600f, sox = (1280 - 960 * sk) / 2;
        v.onTouchEvent(new MotionEvent(MotionEvent.ACTION_DOWN, sox + 40 * sk, 28 * sk));
        h.t += 2100;
        v.tick(h.t);
        v.onTouchEvent(new MotionEvent(MotionEvent.ACTION_UP, sox + 40 * sk, 28 * sk));
        eq("service in: every zone 0", "0 0", h.session.zone(0) + " " + h.session.zone(9));
        shot(v, dir, "7a-service.png");
        tap(v, 100, 86 + 2 * 70 + 25);                      // try the zone Седалище
        h.session.setZone(2, 30);
        shot(v, dir, "7b-service-zone.png");
        tap(v, 575, 259);                                   // felt on the back (Гръб, right column, first row)
        eq("felt elsewhere: the back gets that channel, checked", "true " + h.session.unitCh(5) + " 1",
                h.channels.ok(1) + " " + h.session.unitCh(5) + " " + h.channels.map()[1]);
        eq("… and Седалище now tries the back's old channel", 4, h.session.unitCh(2));
        shot(v, dir, "7c-service-felt.png");
        tap(v, 615, 448);                                   // ✓ Готово: out
        eq("service out: zones 0, the map kept", "0 " + "3162754809", h.session.zone(2) + " " + digits(h.channels.map()));
        shot(v, dir, "7d-after-service.png");
        h.channels.reset(Channels.XBODY);
        h.channelsChanged();
        eq("reset: the starting map again", before, digits(h.channels.map()));
        h.session.stop();
        tap(v, 480, 28);                                    // the unit's name while idle → disconnect?
        shot(v, dir, "6-confirm.png");

        // ---- v1.15: the dark theme, an XEMS suit and a bodytech suit on the same screen ----
        XView v2 = new XView(new android.content.Context(), h);
        h.session = null;
        h.kind = MainActivity.VIEW_PICK;
        h.mode = -1;
        tap(v2, 960 - 70, 28);                              // the header's moon
        eq("the moon turns the theme dark", true, h.dark);
        shot(v2, dir, "8a-dark-pick.png");
        h.kind = MainActivity.VIEW_TRAIN;
        Channels bc = new Channels();
        bc.setDev(Dev.BODYTECH);
        h.session = new Session(Dev.BODYTECH);
        h.session.setMap(bc.map());
        h.session.linked();
        h.session.setBattery(64);
        drain(h.session, h.t);
        shot(v2, dir, "8b-dark-modes.png");
        int redDark = tileRed(v2);
        h.dark = false;
        int redLight = tileRed(v2);
        h.dark = true;
        eq("dark program tiles = XBody's own pictures, as in light", true,
                redLight > 500 && Math.abs(redDark - redLight) * 20 < redLight);
        h.chooseMode(Procs.MODE_MUSCLE);
        h.session.setStrength(70);
        for (int z = 0; z < h.session.zones(); z++) h.session.setZone(z, 40 + z * 8);
        h.session.start(h.t);
        drain(h.session, h.t);
        h.t += 1500;
        h.session.tick(h.t);
        drain(h.session, h.t);
        tap(v2, 100, 86 + 25);                              // Бедра
        tap(v2, 400, 300);                                  // the figure's thigh: out of the selection again
        tap(v2, 100, 86 + 25);
        shot(v2, dir, "8c-dark-bodytech.png");
        tap(v2, 960 - 70, 28);                              // the program block → the sheet
        shot(v2, dir, "8d-dark-sheet.png");
        tap(v2, 80 + 640, 56);                              // the sheet's sun: light again
        eq("the sheet's sun turns it light", false, h.dark);
        tap(v2, 80 + 160, 524);                             // Откажи
        Channels xc = new Channels();
        xc.setDev(Dev.XEMS);
        h.session = new Session(Dev.XEMS);
        h.session.setMap(xc.map());
        h.session.linked();
        h.session.setBattery(92);
        drain(h.session, h.t);
        h.chooseMode(Procs.MODE_MANUAL);
        h.session.setStrength(55);
        for (int z = 0; z < h.session.zones(); z++) h.session.setZone(z, 60);
        h.session.start(h.t);
        h.t += 1500;
        h.session.tick(h.t);
        drain(h.session, h.t);
        shot(v2, dir, "8e-xems.png");

        System.out.println(fails == 0 ? "AppTest: ALL OK (" + checks + " checks)" : "AppTest: " + fails + " FAIL");
        if (fails != 0) System.exit(1);
    }
}
