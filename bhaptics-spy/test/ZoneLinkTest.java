package com.xems.bhspy;

import com.isaigu.gymapp.wearable.vr.VrHapticEvent;
import com.isaigu.gymapp.wearable.vr.VrHapticSink;
import com.isaigu.gymapp.wearable.vr.VrTelemetryReceiver;
import com.isaigu.gymapp.wearable.vr.VrWire;
import com.isaigu.gymapp.wearable.vr.VrZoneHit;
import com.isaigu.gymapp.wearable.vr.VrZoneMap;
import com.isaigu.gymapp.wearable.vr.VrZoneSink;

import java.net.InetAddress;
import java.util.concurrent.CopyOnWriteArrayList;

/** End to end on loopback: the listener's real TabletLink → the tablet's real VrTelemetryReceiver → zone sink → map. */
public class ZoneLinkTest {
    static int fails;

    static void ok(boolean c, String m) {
        if (!c) {
            fails++;
            System.out.println("FAIL " + m);
        }
    }

    static final class Sink implements VrHapticSink {
        volatile boolean up;
        public void onVrHaptic(VrHapticEvent e) { }
        public void onVrStop(int hand, int reason, long t) { }
        public void onVrLink(boolean u, String app) { up = u; }
    }

    static final class Zones implements VrZoneSink {
        final CopyOnWriteArrayList<VrZoneHit> hits = new CopyOnWriteArrayList<VrZoneHit>();
        public void onVrZoneHit(VrZoneHit h) { hits.add(h); }
    }

    static int[] lit(int total, int... idx) {
        int[] l = new int[total];
        for (int i : idx) l[i] = 100;
        return l;
    }

    public static void main(String[] a) throws Exception {
        int port = Integer.parseInt(a[0]);
        Sink sink = new Sink();
        Zones z = new Zones();
        VrTelemetryReceiver rx = new VrTelemetryReceiver(null, sink, port, 1000);
        rx.setZoneSink(z);
        rx.start();
        TabletLink link = new TabletLink(InetAddress.getByName("127.0.0.1"), port);
        link.start();
        long until = System.currentTimeMillis() + 5000;
        while (!(link.linked() && sink.up) && System.currentTimeMillis() < until) Thread.sleep(20);
        ok(sink.up && link.linked(), "link up both ways (HELLO → ACK)");

        link.hit(TabletLink.ZR_VEST_FRONT, 100, lit(20, 12, 13, 16, 17));
        link.hit(TabletLink.ZR_FOREARM_R, 100, lit(20, 6, 7, 8, 9));
        link.hit(TabletLink.ZR_HEAD, 100, lit(6, 0, 1, 2, 3, 4));
        link.hit(TabletLink.ZR_HAND_R, 100, lit(20, 0, 1, 2));
        until = System.currentTimeMillis() + 3000;
        while (z.hits.size() < 4 && System.currentTimeMillis() < until) Thread.sleep(20);
        ok(z.hits.size() == 4, "4 hits arrived, got " + z.hits.size());
        VrZoneHit h0 = z.hits.get(0);
        ok(h0.region == VrWire.ZR_VEST_FRONT && h0.durationMs == 100 && h0.levels.length == 20 && h0.levels[12] == 100
            && h0.levels[0] == 0, "vest front decoded");
        ok(z.hits.get(2).region == VrWire.ZR_HEAD && z.hits.get(2).levels.length == 6, "head, six motors");
        ok(link.sent() == 4, "sent 4");

        // what the owner asked: arms → arms, belly → abs, torso (vest front top / back) → back
        ok(VrZoneMap.channels(VrWire.ZR_FOREARM_L, lit(20, 6)) == 1 << VrZoneMap.CH_ARMS, "forearm → arms");
        ok(VrZoneMap.channels(VrWire.ZR_VEST_FRONT, lit(20, 12, 13, 16, 17)) == 1 << VrZoneMap.CH_ABS, "low front → abs");
        ok(VrZoneMap.channels(VrWire.ZR_VEST_FRONT, lit(20, 2, 3, 6, 7)) == 1 << VrZoneMap.CH_BACK, "upper front → back");
        ok(VrZoneMap.channels(VrWire.ZR_VEST_FRONT, lit(20, 10, 11, 14, 15, 18, 19)) == 1 << VrZoneMap.CH_ABS, "right low → abs");
        ok(VrZoneMap.channels(VrWire.ZR_VEST_BACK, lit(20, 0, 4)) == 1 << VrZoneMap.CH_BACK, "back → back");
        ok(VrZoneMap.channels(VrWire.ZR_HEAD, lit(6, 0, 1)) == 0, "head: no suit channel");
        ok(VrZoneMap.channels(VrWire.ZR_FOREARM_R, new int[20]) == 0, "nothing lit → nothing");
        ok(VrZoneMap.taken(VrWire.ZR_HEAD) && !VrZoneMap.taken(VrWire.ZR_HAND_L), "own punches are not hits taken");

        link.stop();
        rx.stop();
        System.out.println(fails == 0 ? "ZONE LINK OK" : fails + " FAILED");
        System.exit(fails == 0 ? 0 : 1);
    }
}
