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
        boolean female = true;
        public boolean female() { return female; }
        public void setFemale(boolean f) { female = f; }
        public java.io.InputStream openAsset(String name) {
            try {
                return new java.io.FileInputStream(new File(System.getProperty("assets"), name));
            } catch (java.io.IOException e) {
                return null;
            }
        }
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

    /** A tap at design coordinates (600 high, centred). */
    static void tap(XView v, float dxDesign, float dyDesign) {
        BufferedImage scratch = new BufferedImage(v.getWidth(), v.getHeight(), BufferedImage.TYPE_INT_RGB);
        v.draw(new Canvas(scratch.createGraphics()));   // the hits of what is on the screen now (as a real frame)
        float k = v.getHeight() / 600f, dw = Math.max(800f, v.getWidth() / k);
        float ox = (v.getWidth() - dw * k) / 2;
        v.onTouchEvent(new MotionEvent(MotionEvent.ACTION_DOWN, ox + dxDesign * k, dyDesign * k));
        v.onTouchEvent(new MotionEvent(MotionEvent.ACTION_UP, ox + dxDesign * k, dyDesign * k));
    }

    public static void main(String[] args) throws Exception {
        // ---- the session's unit operations (golden: wiems/PROTOCOL.md + the vendor's own writes in the capture) ----
        // The vendor writes the strengths only when they change (one write per tap, ~1 s apart) and never in the
        // pause — the unit runs its own work / rest. Strength byte = the vendor's scale (100 % ≈ 20).
        Session s = new Session();
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
        eq("begin: zero, the program, the strengths once", "[0000000000000000000000, 012955040401007e050006, 0000000000040000000000]", drain(s, 5100));
        for (int z = 0; z < Session.ZONES; z++) s.setZone(z, 100);   // ten taps in a row …
        eq("… held a moment", "[]", drain(s, 5200));
        eq("… then ONE write (40 % → 8)", "[0008080808080808080808]", drain(s, 5800));
        s.setZone(3, 50);                                // one zone (Корем → ch 6) mid-run: the owner's failing case
        eq("one zone = one write, the rest unchanged", "[0008080808080804080808]", drain(s, 6500));
        s.setZone(3, 50);
        eq("the same value is not written again", "[]", drain(s, 7200));
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
        eq("resume: the strengths again", "0008080808080804080808", drain(s, 18100).get(2));
        s.runNotify(new byte[] {0}, 19000);                     // the unit stopped by itself
        eq("unit stop seen", Session.PAUSED + " true", s.state() + " " + s.takeUnitStopped());
        eq("… and it gets 0 + stop", "[0000000000000000000000, 0400]", drain(s, 19000));
        s.start(20000);
        eq("▶ arms it again", "0425", drain(s, 20000).get(4));
        eq("scale", "0 1 10 20", Session.unitValue(0) + " " + Session.unitValue(5) + " " + Session.unitValue(50) + " " + Session.unitValue(100));
        // the double impulse: the unit's own rest = Hz₂ at its %; the strengths stay as they are
        Session d = new Session();
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
        Session cs = new Session();
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
        Session ps = new Session();
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
        // W_CELL in WiEMS order × the warm-up's envelope 60 % × strength 50 %, on the unit's scale
        eq("warm-up shares", "0000000004030604060604", w0.get(w0.size() - 1));
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
        eq("a new client: ВСИЧКИ selected", true, v.selAll());
        tap(v, 480, 78);                                    // ВСИЧКИ off → СИЛА
        h.session.setZone(0, 30);
        h.session.setZone(5, 60);
        tap(v, 100, 111);                                   // Предно бедро (30 %)
        tap(v, 960 - 90, 111);                              // Гръб (60 %)
        tap(v, 960 - 40, 567);                              // + on both
        eq("two zones + keep their difference", "35 65", h.session.zone(0) + " " + h.session.zone(5));
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
        h.session.stop();
        tap(v, 480, 28);                                    // the unit's name while idle → disconnect?
        shot(v, dir, "6-confirm.png");

        System.out.println(fails == 0 ? "AppTest: ALL OK (" + checks + " checks)" : "AppTest: " + fails + " FAIL");
        if (fails != 0) System.exit(1);
    }
}
