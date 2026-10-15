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
        // ---- the session's unit operations (golden: wiems/PROTOCOL.md, the panel's test) ----
        Session s = new Session();
        s.linked();
        eq("link", "[0000000000000000000000, 0400]", drain(s, 0));
        s.setStrength(40);
        s.setZone(8, 50);                                // Ръце → unit channel 4
        s.start(1000);
        eq("waits for the count-down", Session.IDLE, s.state());
        eq("start ops", "[0129550404000" + "07e050205, 0205640000000000" + "00a5c4, 037f7f6d497f7f64527f52, 0000000000000000000000, 0425]",
                drain(s, 1000));
        s.runNotify(new byte[] {1});
        s.tick(5100);
        eq("running", Session.RUNNING, s.state());
        eq("begin", "[0000000000000000000000, 0129550404000" + "07e050007, 000a0a0a0a050a0a0a0a0a]", drain(s, 5100));
        s.tick(5700);
        List<String> f = drain(s, 5700);
        eq("ramp full", "0028282828142828282828", f.get(f.size() - 1));
        s.tick(9200);
        eq("pause → 0", "[0000000000000000000000]", drain(s, 9200));
        s.pause(9500);
        List<String> pz = drain(s, 9500);
        eq("pause → stop", "0400", pz.get(pz.size() - 1));
        Session.Program p = new Session.Program();
        p.hz = 120;
        p.onS = 10;
        p.offS = 1;
        String why = Safe.apply(p, true);
        eq("60+ limits", "85 6", p.hz + " " + p.onS);
        eq("pause from fatigue", true, p.offS > 1 && why.contains("Пауза"));

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
        shot(v, dir, "2-train-idle.png");
        h.note = "";
        h.session.setStrength(35);
        tap(v, 100, 470);                                   // СТАРТ (left column)
        drain(h.session, h.t);                              // the unit takes the program and starts counting down
        h.session.runNotify(new byte[] {1});
        h.session.tick(h.t);
        h.t += 1500;
        h.session.tick(h.t);
        drain(h.session, h.t);
        tap(v, 100, 300);                                   // the zone "Корем" (left column, row 4)
        tap(v, 960 - 90, 320);                              // "Ръце" (right column, row 4)
        v.tick(h.t);
        tap(v, 960 - 40, 567);                              // + : zones up, the % bubble shows
        shot(v, dir, "3-train-running.png");
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
