package com.xems.bhspy;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.nio.file.Files;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.List;
import java.util.zip.GZIPInputStream;

/** Host test (no Android): decoding by the table, the log's masking / thinning, packing, the answers. */
public class HostTest {
    static int fails;

    static void ok(boolean c, String m) {
        if (!c) {
            fails++;
            System.out.println("FAIL " + m);
        }
    }

    /** A reader fed from a script. */
    static final class Fake implements Sig.Reader {
        final ArrayDeque<Object> q = new ArrayDeque<Object>();

        Fake(Object... v) {
            q.addAll(Arrays.asList(v));
        }

        public String readString() { return (String) q.poll(); }
        public int readInt() { return (Integer) q.poll(); }
        public float readFloat() { return (Float) q.poll(); }
        public byte[] createByteArray() { return (byte[]) q.poll(); }
        public int[] createIntArray() { return (int[]) q.poll(); }
        public float[] createFloatArray() { return (float[]) q.poll(); }
    }

    static int idx(String n) {
        for (int i = 0; i < Sig.count(); i++) if (Sig.name(i).equals(n)) return i;
        throw new IllegalStateException(n);
    }

    public static void main(String[] a) throws Exception {
        ok(Sig.count() == 57, "57 methods, got " + Sig.count());
        // playMotors(appId, position, durationMs, int[] motors)
        Fake f = new Fake("app1", 0, 80, new int[]{3, 4, 5});
        Object[] v = Sig.decode(idx("playMotors"), f);
        ok(v.length == 4 && v[0].equals("app1") && (Integer) v[2] == 80 && ((int[]) v[3]).length == 3, "playMotors decode");
        ok(f.q.isEmpty(), "playMotors consumed everything");
        // enableDevice(String, boolean): a boolean is an int on the wire
        v = Sig.decode(idx("enableDevice"), new Fake("addr", 1));
        ok(v[1].equals(Boolean.TRUE), "boolean decode");
        // hapticEventPath(S,S,S,I,f,f,i,I)
        v = Sig.decode(idx("hapticEventPath"), new Fake("a", "b", "c", 7, new float[]{.1f}, new float[]{.2f}, new int[]{50}, 9));
        ok(v.length == 8, "path decode " + v.length);
        // the transaction code of a few: index + 1
        ok(idx("hapticEnable") + 1 == 1 && idx("initialize") + 1 == 29 && idx("playMotors") + 1 == 40, "codes");

        // log: masking, arrays, escapes
        File fl = File.createTempFile("spy", ".jsonl");
        CallLog log = new CallLog(fl);
        log.record(1_000_000_000L, "com.game", idx("initialize"), new Object[]{"app\"1", "SECRETKEY12345", "{}"}, "");
        log.record(1_050_000_000L, "com.game", idx("playMotors"), new Object[]{"app1", 0, 80, new int[]{1, 2}}, "1001");
        log.flush();
        String s = new String(Files.readAllBytes(fl.toPath()), "UTF-8");
        ok(!s.contains("SECRETKEY12345") && s.contains("SEC…(14)"), "api key masked");
        ok(s.contains("\"t\":50") && s.contains("[1,2]") && s.contains("app\\\"1"), "timing, arrays, escapes: " + s);
        ok(log.counts.get("playMotors") == 1 && log.callers.get("com.game") == 2, "counts");

        // pack + split + gunzip round trip
        byte[] gz = Uploader.pack(log.summary(), fl);
        GZIPInputStream in = new GZIPInputStream(new ByteArrayInputStream(gz));
        String back = new String(in.readAllBytes(), "UTF-8");
        ok(back.startsWith("{\"summary\"") && back.contains("playMotors"), "round trip");
        byte[] big = new byte[Uploader.PART * 3 + 5];
        List<byte[]> parts = Uploader.split(big);
        ok(parts.size() == 4 && parts.get(3).length == 5, "split in 4");
        ok(Uploader.split(new byte[Uploader.PART * 20]).size() == Uploader.PARTS_MAX, "capped at 8 parts");
        ok(Uploader.newCode().matches("^[A-Z2-9]{10}$"), "code matches the server's regex");

        // answers
        Responder r = new Responder();
        ok(Boolean.FALSE.equals(r.answer(idx("isRegistered"), new Object[]{"app", "hit"})), "not registered at first");
        r.answer(idx("registerHapticEvent"), new Object[]{"app", "hit", "{}"});
        ok(Boolean.TRUE.equals(r.answer(idx("isRegistered"), new Object[]{"app", "hit"})), "registered after register");
        ok(((List<?>) r.answer(idx("getDeviceList"), new Object[]{})).size() == 6, "six devices");
        ok(r.answer(idx("playMotors"), new Object[]{"a", 0, 1, new int[0]}) instanceof Integer, "request id");
        ok(Sig.ret(idx("getDeviceList")) == 'L' && Sig.ret(idx("getStatus")) == 'b', "return kinds");

        // the zone hits: a call of the real recording → region, ms, levels
        byte[] dots = new byte[20];
        dots[12] = 100;
        Object[] z = Regions.fromCall("hapticEventDot", new Object[]{"app", "id", "VestFront", dots, 100});
        ok(z != null && (Integer) z[0] == TabletLink.ZR_VEST_FRONT && (Integer) z[1] == 100 && ((int[]) z[2])[12] == 100, "dot → vest front");
        ok(Regions.fromCall("hapticEventDot", new Object[]{"app", "id", "Nowhere", dots, 100}) == null, "unknown position → none");
        ok(Regions.fromCall("playMotors", new Object[]{"app", 3, 80, new int[]{1, 2}}) != null, "playMotors head");
        ok(Regions.fromCall("hapticEventDot", new Object[]{"app"}) == null, "malformed call → none, no crash");
        byte[] z64 = TabletLink.zhit(7, 9, TabletLink.ZR_HEAD, 100, new int[]{100, 50});
        ok(z64.length == 64 && z64[5] == 6 && z64[24] == 5 && z64[28] == 2 && z64[32] == 100 && z64[33] == 50, "wire layout of T_ZHIT");

        // the /24 sweep: every host but the device itself, the network and the broadcast address
        List<byte[]> sw = TabletLink.sweep(new byte[]{(byte) 192, (byte) 168, 1, 20});
        ok(sw.size() == 253 && (sw.get(0)[3] & 0xFF) == 1 && (sw.get(sw.size() - 1)[3] & 0xFF) == 254, "sweep covers .1-.254 minus self: " + sw.size());
        ok(sw.stream().noneMatch(x -> (x[3] & 0xFF) == 20), "sweep skips self");

        // thinning: a big file keeps writing, hot methods every 10th
        File fl2 = File.createTempFile("spy2", ".jsonl");
        try (java.io.RandomAccessFile raf = new java.io.RandomAccessFile(fl2, "rw")) {
            raf.setLength(CallLog.THIN_AFTER + 10);
        }
        CallLog big2 = new CallLog(fl2);
        for (int i = 0; i < 100; i++) big2.record(i * 1_000_000L, "g", idx("playMotors"), new Object[]{"a", 0, 1, new int[]{1}}, "1");
        big2.flush();
        ok(big2.calls == 100 && big2.counts.get("playMotors") == 100, "thinned calls still counted");
        long lines = new String(Files.readAllBytes(fl2.toPath()), "ISO-8859-1").split("\n").length;
        ok(fl2.length() < CallLog.THIN_AFTER + 10 + 100 * 120 && lines < 30, "thinned: " + lines + " lines");

        System.out.println(fails == 0 ? "ALL OK" : fails + " FAILED");
        System.exit(fails == 0 ? 0 : 1);
    }
}
