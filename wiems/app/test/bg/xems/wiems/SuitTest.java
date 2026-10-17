package bg.xems.wiems;

import com.isaigu.gymapp.bodytech.BtProto;

import java.util.ArrayList;
import java.util.List;

/**
 * The app's XEMS and bodytech suits (v1.15): frames byte for byte as the XBody panel's (xbody/panel/test/core_test.cpp
 * xemsFrames / xemsSession, bodytech/PROTOCOL.md), the tablet's own impulse / pause / rise, the channel maps, the
 * kind of an advertisement.
 */
public class SuitTest {
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
        for (byte x : b) s.append(String.format("%02X", x & 0xFF));
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

    /** bodytech's writes without its keep-alive (SYNC every 4.5 s, the battery every 10 s): checked on their own. */
    static List<String> work(Session s, long now) {
        List<String> r = drain(s, now);
        r.remove(hex(BtProto.sync(6)));
        r.remove(hex(BtProto.batterySync()));
        return r;
    }

    static Session suit(int kind, int suitStd) {
        Channels c = new Channels();
        c.setDev(kind);
        c.suit = suitStd;
        Session s = new Session(kind);
        s.setMap(c.map());
        return s;
    }

    public static void main(String[] args) {
        // ---- XEMS frames: the panel's goldens (computed there from the stock frame rule) ----
        eq("x start", "5305F10049", hex(XemsProto.start()));
        eq("x stop", "5305F2004A", hex(XemsProto.stop()));
        eq("x batt", "5304055C", hex(XemsProto.battery()));
        int[] all = {100, 100, 100, 100, 100, 100, 100, 100, 100, 100};
        eq("x str50", "530F01003232323232323232323257", hex(XemsProto.strengths(all, 50)));
        int[] mix = {100, 50, 0, 100, 100, 100, 100, 100, 100, 33};
        eq("x strmix", "530F01002814002828282828280D9C", hex(XemsProto.strengths(mix, 40)));
        eq("x run on", "530F030004B055070404000000017E", hex(XemsProto.run(1200, 85, 350, 4, 4, true)));
        eq("x run 3s", "530F030000055507040400000000CE", hex(XemsProto.run(3, 85, 350, 4, 4, false)));
        eq("x run 0s", "530F030000005507040100000000C6", hex(XemsProto.run(0, 85, 350, 4, 4, false)));
        eq("x batt%", 65, XemsProto.batteryPct(new byte[] {0x53, 5, 6, 0x41, 0, 0}));

        // ---- an XEMS suit: the tablet runs impulse / pause / the rise (the panel's xemsSession) ----
        Session x = suit(Dev.XEMS, Channels.XEMS);
        x.linked();
        List<String> f = drain(x, 0);
        eq("x link: stop, battery", "[5305F2004A, 5304055C]", f);
        Session.Program p = new Session.Program();
        p.totalS = 60;
        p.rampMs = 500;
        x.setProgram(p);
        for (int z = 0; z < x.zones(); z++) x.setZone(z, 100);
        x.setStrength(40);
        x.start(1000);
        f = drain(x, 1000);
        eq("x start frames", 3, f.size());
        eq("x start F1", "5305F10049", f.get(0));
        eq("x ramp 1/4 of 40 % on every channel", "0A0A0A0A0A0A0A0A0A0A", f.get(1).substring(8, 28));
        eq("x run flag on", "01", f.get(2).substring(26, 28));
        x.tick(1200);                                     // 200 ms of 500 → step 2
        f = drain(x, 1200);
        eq("x ramp 2/4", "14", f.size() > 0 ? f.get(0).substring(8, 10) : "-");
        x.tick(1600);
        eq("x ramp full", "28", drain(x, 1600).get(0).substring(8, 10));
        eq("x live", 40, x.liveLevel(0));
        x.tick(5000);                                     // impulse over → pause: output off
        f = drain(x, 5000);
        eq("x pause: one frame, output off", "1 00", f.size() + " " + f.get(0).substring(26, 28));
        eq("x pause live", 0, x.liveLevel(0));
        x.tick(9000);
        eq("x impulse again", true, x.impulse());
        drain(x, 9000);
        x.setZone(3, 50);                                 // Корем (part 5) → the XEMS suit's channel 1
        f = drain(x, 9000);
        eq("x one zone: its channel at half", "0A05", f.get(0).substring(8, 12));
        x.setStrength(41);
        x.setStrength(42);
        x.setStrength(43);                                // a quick ± run: only the newest level stays queued
        eq("x coalesced", true, x.busy());
        f = drain(x, 9100);
        eq("x coalesced: one step", 2, f.size());
        x.pause(9500);
        f = drain(x, 9500);
        eq("x pause → stop", "5305F2004A", f.get(f.size() - 1));
        eq("x left after pause", 52, x.secondsLeft(20000));
        x.start(20000);
        drain(x, 20000);
        x.tick(20000 + 52000);
        eq("x finished", true, x.finished());
        eq("x idle", Session.IDLE, x.state());
        x.suitNotify(new byte[] {0x53, 5, 6, 0x41, 0, 0});
        eq("x battery", 65, x.battery());
        // an XBody suit on the XEMS unit (the panel's XEMS_ZONES_XBODY): Корем → XEMS channel Ръце (4)
        Session xb = suit(Dev.XEMS, Channels.XBODY);
        eq("xbody suit: Корем → ch 4, Прасец → ch 0", "4 0", xb.unitCh(3) + " " + xb.unitCh(9));
        // the double impulse: in the pause its Hz and its % of the strength, output on
        Session xd = suit(Dev.XEMS, Channels.XEMS);
        xd.linked();
        drain(xd, 0);
        Session.Program dp = new Session.Program();
        dp.rampMs = 0;
        dp.dbl = true;
        dp.dblHz = 7;
        dp.dblPct = 50;
        xd.setProgram(dp);
        xd.setZone(0, 100);
        xd.setStrength(60);
        xd.start(0);
        drain(xd, 0);
        xd.tick(4000);
        f = drain(xd, 4000);
        eq("x second: 30 % at 7 Hz, output on", "1E 07 01", f.get(0).substring(12, 14) + " " + f.get(1).substring(12, 14) + " "
                + f.get(1).substring(26, 28));
        eq("x second live", 30, xd.liveLevel(7));

        // ---- bodytech: the program (~3 s), channels on once, a pause = strength 0, SEL off on pause / stop ----
        Session b = suit(Dev.BODYTECH, Channels.XBODY);
        eq("bt zones: 4 + 3, Бедра first", "7 4 Бедра", b.zones() + " " + b.zonesLeft() + " " + b.zoneName(0));
        eq("bt no chest / calf", "-1 -1", b.zoneOfPart(2) + " " + b.zoneOfPart(9));
        b.linked();
        eq("bt programming", true, b.preparing());
        f = drain(b, 0);
        eq("bt link frames: battery ×3, sync, reset, 8 × 13, all off", 4 + 1 + 8 * 13 + 1, f.size());
        eq("bt link sync", hex(BtProto.sync(6)), f.get(3));
        eq("bt link ends all off", hex(BtProto.allOff()), f.get(f.size() - 1));
        eq("bt ready", false, b.preparing());
        Session.Program bp = new Session.Program();
        bp.rampMs = 500;
        b.setProgram(bp);
        b.setZone(2, 100);                                 // Корем → C8
        b.setStrength(40);
        b.start(1000);
        f = work(b, 1000);
        eq("bt start: C8 at 1/4 then every channel on", "[" + hex(BtProto.intensity(8, 10)) + ", " + hex(BtProto.enable(0xFF)) + "]",
                f.toString());
        b.tick(1200);
        eq("bt ramp 2/4: one write", "[" + hex(BtProto.intensity(8, 20)) + "]", work(b, 1200).toString());
        b.tick(1600);
        work(b, 1600);
        b.tick(5000);                                      // the pause: strength 0, the channel stays on
        eq("bt pause = 0, SEL kept", "[" + hex(BtProto.intensity(8, 0)) + "]", work(b, 5000).toString());
        b.tick(9000);
        eq("bt impulse again: no SEL", "[" + hex(BtProto.intensity(8, 10)) + "]", work(b, 9000).toString());
        b.setZone(0, 50);                                  // Бедра: both thighs (C5 left, C7 right)
        f = work(b, 9000);
        eq("bt Бедра = C5 + C7", "[" + hex(BtProto.intensity(5, 5)) + ", " + hex(BtProto.intensity(7, 5)) + "]", f.toString());
        b.setZone(0, 60);
        b.setZone(0, 50);                                  // A → B → A before anything went: nothing to send
        eq("bt back to what the suit has: nothing", "[]", work(b, 9000).toString());
        Session bk = suit(Dev.BODYTECH, Channels.XBODY);
        bk.tick(1000);
        bk.linked();
        drain(bk, 1000);
        bk.tick(5400);
        eq("bt no keep-alive yet", "[]", drain(bk, 5400).toString());
        bk.tick(5600);
        eq("bt SYNC 6 s every 4.5 s", "[" + hex(BtProto.sync(6)) + "]", drain(bk, 5600).toString());
        bk.tick(11100);
        eq("bt battery every 10 s", "[" + hex(BtProto.sync(6)) + ", " + hex(BtProto.batterySync()) + "]", drain(bk, 11100).toString());
        b.pause(13200);
        List<String> bpz = work(b, 13200);
        eq("bt pause → all off", hex(BtProto.allOff()), bpz.get(bpz.size() - 1));
        b.start(14000);
        f = work(b, 14000);
        eq("bt resume: on again", hex(BtProto.enable(0xFF)), f.get(f.size() - 1));
        // the double impulse: a new Hz restarts the running channels (SEL off → on, the last two frames)
        Session bd = suit(Dev.BODYTECH, Channels.XBODY);
        bd.linked();
        drain(bd, 0);
        Session.Program bdp = new Session.Program();
        bdp.rampMs = 0;
        bdp.dbl = true;
        bdp.dblHz = 7;
        bdp.dblPct = 50;
        bd.setProgram(bdp);
        bd.setZone(2, 100);
        bd.setStrength(60);
        bd.start(0);
        drain(bd, 0);
        bd.tick(4000);
        f = drain(bd, 4000);
        eq("bt second: 8 × Hz 7, C8 30 %, off, on", 8 + 1 + 2, f.size());
        eq("bt second Hz", hex(BtProto.hz(1, 7)), f.get(0));
        eq("bt second C8", hex(BtProto.intensity(8, 30)), f.get(8));
        eq("bt second restart", hex(BtProto.allOff()) + " " + hex(BtProto.enable(0xFF)), f.get(9) + " " + f.get(10));
        bd.suitNotify(new byte[] {0x36, 0, 1, 8, 1, 0x06, 0x22, (byte) 0xC9});
        eq("bt battery 1570 raw", 35, bd.battery());
        eq("bt safe", hex(BtProto.allOff()), hex(bd.safeOp()));

        // ---- the kind of an advertisement (the panel's suitKind) ----
        eq("kind by service", "0 2 1 1", Dev.kindOf("WIEMS", null) + " " + Dev.kindOf("FE50", "x") + " " + Dev.kindOf("FFF0", null)
                + " " + Dev.kindOf("NUS", null));
        eq("kind by name", "0 2 2 1 1 -1", Dev.kindOf(null, "WIEMS - EMS Device") + " " + Dev.kindOf(null, "EMS08-05629") + " "
                + Dev.kindOf(null, "TZLJ12") + " " + Dev.kindOf(null, "nbee-01") + " " + Dev.kindOf(null, "XEMS") + " "
                + Dev.kindOf(null, "Mi Band 10"));

        // ---- channel maps: each kind its own, the suit per kind ----
        Channels c = new Channels();
        eq("WiEMS starts on the XBody suit", Channels.XBODY, c.suit);
        c.setDev(Dev.XEMS);
        eq("an XEMS unit starts on its own suit", Channels.XEMS, c.suit);
        c.suit = Channels.XBODY;
        c.setDev(Dev.WIEMS);
        eq("WiEMS keeps its suit", Channels.XBODY, c.suit);
        Channels r = new Channels();
        r.load(c.save());
        r.setDev(Dev.XEMS);
        eq("the XEMS unit's suit saved", Channels.XBODY, r.suit);
        for (int k = 0; k < 2; k++)
            for (int sd = 0; sd < 2; sd++) {
                int seen = 0;
                for (int q : Channels.DEFAULT[k][sd]) seen |= 1 << q;
                eq("every channel once " + k + "/" + sd, 1023, seen);
            }

        System.out.println(fails == 0 ? "SuitTest: ALL OK (" + checks + " checks)" : "SuitTest: " + fails + " FAIL");
        if (fails > 0) System.exit(1);
    }
}
