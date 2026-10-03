package com.isaigu.gymapp.wearable.scale;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.bluetooth.BluetoothProfile;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;

import com.isaigu.gymapp.wearable.WearableBleDiagLog;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.TimeZone;

/**
 * The body-composition scale, straight over BLE (no Fitdays, no cloud), for as long as the page is open: find the
 * scale when someone steps on (it only advertises then), connect, subscribe, play the handshake of its generation
 * ({@link ScaleProtocol}), stream the live weight, deliver every result — and stay connected while the client
 * stands (a scale that measures again is heard; nobody has to step off). When the scale sleeps it drops the link;
 * the search starts again by itself, so the next step-on is found without a tap. Every callback runs on the main
 * thread. The suit's BLE is left alone: a scan and one GATT link run next to it.
 */
public final class ScaleLink {
    public interface Listener {
        void onState(int state);

        void onLive(double kg, boolean stable);

        /** A finished sweep (impedances in); more may follow while the client stands. */
        void onResult(ScaleProtocol.Reading r);
    }

    public static final int SEARCHING = 1, CONNECTING = 2, READY = 3, MEASURING = 4, DONE = 5, NO_BLUETOOTH = 6;

    static final long HELLO_WAIT_MS = 1500;
    static final long BEAT_MS = 400;
    static final long OP_TIMEOUT_MS = 1500;

    final Context app;
    final Listener listener;
    final Handler main = new Handler(Looper.getMainLooper());
    final long clientId;
    final boolean male;
    final int age;
    final int heightCm;
    final double lastKg;

    BluetoothAdapter adapter;
    Scan scan;
    BluetoothGatt gatt;
    BluetoothGattCharacteristic write;
    final Set<String> notScales = new HashSet<String>();
    boolean closed;
    /** Results delivered on this connection. */
    int results;
    /** Live frames on FFB2 that were not the 12-byte weight (logged once: an unknown scale variant). */
    boolean oddLive;
    int state;

    /**
     * 'A' (FFB4 present, framed messages) or 'B' (20-byte frames) — ICOMON; 'S' Senssun / MovingLife
     * ({@link ScaleSenssun}); 'X' a scale-named device that speaks neither: every service and frame is logged in full
     * (a capture to decode it from), nothing is measured.
     */
    char gen;
    int seq;
    boolean handshakeSent;
    boolean heard;
    // B
    final ScaleProtocol.AssemblerB asmLive = new ScaleProtocol.AssemblerB();
    final ScaleProtocol.AssemblerB asmFrames = new ScaleProtocol.AssemblerB();
    int replyIndex;
    boolean usersSent;
    double liveKg;
    boolean liveStable;
    int beatToken;
    // S / X
    final ScaleSenssun.Reader senssun = new ScaleSenssun.Reader();
    final ScaleSenssun.Assembler xsAsm = new ScaleSenssun.Assembler();
    /** XS identity seen in adverts (MAC → {version, model}); written by the scan thread. */
    final java.util.Map<String, int[]> xsSeen = java.util.Collections.synchronizedMap(
            new java.util.HashMap<String, int[]>());
    /** {version, model} of the connected scale when it advertised as XS; null = classic Senssun / unknown. */
    int[] xs;
    int xsSn;
    /** Raw frames logged on this connection (S: the first ones, to check the decode; X: up to the cap). */
    int rawLogged;

    final List<Op> ops = new ArrayList<Op>();
    boolean busy;
    int opToken;

    public ScaleLink(Context c, long clientId, boolean male, int age, int heightCm, double lastKg, Listener l) {
        this.app = c.getApplicationContext();
        this.clientId = clientId;
        this.male = male;
        this.age = age;
        this.heightCm = heightCm;
        this.lastKg = lastKg > 0 ? lastKg : 70;
        this.listener = l;
    }

    static void log(String s) {
        WearableBleDiagLog.log("scale", s);
    }

    // ------------------------------------------------------------------ search

    public void start() {
        closed = false;
        adapter = BluetoothAdapter.getDefaultAdapter();
        if (adapter == null || !adapter.isEnabled()) {
            setState(NO_BLUETOOTH);
            return;
        }
        startScan();
    }

    void startScan() {
        if (closed) {
            return;
        }
        setState(SEARCHING);
        try {
            stopScan();
            scan = new Scan(this);
            if (!adapter.startLeScan(scan)) {
                log("startLeScan refused");
                main.postDelayed(new Retry(this), 2000);
            }
        } catch (Throwable t) {
            log("scan: " + t);
            main.postDelayed(new Retry(this), 2000);
        }
    }

    void stopScan() {
        try {
            if (scan != null && adapter != null) {
                adapter.stopLeScan(scan);
            }
        } catch (Throwable ignored) {
        }
        scan = null;
    }

    /** The scale: the address it had last time, its FFB0 service in the advert, or a scale-like name (either family). */
    boolean isScale(BluetoothDevice d, byte[] adv) {
        String mac = d.getAddress();
        if (mac == null || notScales.contains(mac)) {
            return false;
        }
        if (mac.equalsIgnoreCase(ScaleStore.mac(app))) {
            return true;
        }
        if (advertisesFfb0(adv)) {
            return true;
        }
        int[] x = ScaleSenssun.xsAdvert(adv, mac);
        if (x != null) {
            xsSeen.put(mac.toUpperCase(Locale.ROOT), x);
            return true;
        }
        String name = null;
        try {
            name = d.getName();
        } catch (Throwable ignored) {
        }
        if (name == null) {
            name = advName(adv);
        }
        return looksLikeScale(name) || ScaleSenssun.looksLike(name);
    }

    static boolean looksLikeScale(String name) {
        if (name == null) {
            return false;
        }
        String n = name.toLowerCase(Locale.ROOT).trim();
        return n.contains("lescale") || n.contains("lepulse") || n.startsWith("le-p") || n.contains("scale")
                || n.contains("fitdays") || n.contains("icomon") || n.startsWith("e.volve") || n.contains("sacoma")
                || n.equals("p1") || n.startsWith("p1 ") || n.startsWith("p1-");
    }

    /** A 16-bit service UUID list (AD 0x02 / 0x03) with 0xFFB0. */
    static boolean advertisesFfb0(byte[] adv) {
        for (int i = 0; adv != null && i + 1 < adv.length; ) {
            int len = adv[i] & 0xFF;
            if (len == 0 || i + len >= adv.length + 1) {
                break;
            }
            int type = adv[i + 1] & 0xFF;
            if (type == 0x02 || type == 0x03) {
                for (int j = i + 2; j + 1 <= i + len; j += 2) {
                    if (j + 1 < adv.length && ((adv[j] & 0xFF) | (adv[j + 1] & 0xFF) << 8) == 0xFFB0) {
                        return true;
                    }
                }
            }
            i += len + 1;
        }
        return false;
    }

    static String advName(byte[] adv) {
        for (int i = 0; adv != null && i + 1 < adv.length; ) {
            int len = adv[i] & 0xFF;
            if (len == 0) {
                break;
            }
            int type = adv[i + 1] & 0xFF;
            if ((type == 0x08 || type == 0x09) && i + 1 + len <= adv.length) {
                try {
                    return new String(adv, i + 2, len - 1, "UTF-8").replace("\u0000", "").trim();
                } catch (Throwable ignored) {
                    return null;
                }
            }
            i += len + 1;
        }
        return null;
    }

    void found(BluetoothDevice d) {
        if (closed || gatt != null) {
            return;
        }
        stopScan();
        xs = xsSeen.get(String.valueOf(d.getAddress()).toUpperCase(Locale.ROOT));
        log("found " + d.getAddress() + (xs == null ? "" : String.format(Locale.US,
                " XS v%02X model %04X%s", xs[0], xs[1], ScaleSenssun.pro(xs[1]) ? " (8 electrodes)" : "")));
        setState(CONNECTING);
        resetSession();
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                gatt = d.connectGatt(app, false, new Gatt(this), BluetoothDevice.TRANSPORT_LE);
            } else {
                gatt = d.connectGatt(app, false, new Gatt(this));
            }
        } catch (Throwable t) {
            log("connect: " + t);
            gatt = null;
            main.postDelayed(new Retry(this), 1000);
        }
    }

    void resetSession() {
        gen = 0;
        seq = 0;
        handshakeSent = false;
        heard = false;
        replyIndex = 0;
        usersSent = false;
        liveKg = 0;
        liveStable = false;
        results = 0;
        senssun.reset();
        rawLogged = 0;
        xsSn = 0;
        ops.clear();
        busy = false;
        write = null;
    }

    // ------------------------------------------------------------------ GATT (posted to the main thread)

    void onConnection(BluetoothGatt g, int status, int newState) {
        if (g != gatt) {
            return;
        }
        if (newState == BluetoothProfile.STATE_CONNECTED) {
            log("connected");
            try {
                g.discoverServices();
            } catch (Throwable t) {
                log("discover: " + t);
            }
        } else if (newState == BluetoothProfile.STATE_DISCONNECTED) {
            log("disconnected " + status);
            closeGatt();
            if (!closed) {
                main.postDelayed(new Retry(this), 600);      // the scale sleeps between weigh-ins: listen again
            }
        }
    }

    void onServices(BluetoothGatt g) {
        if (g != gatt) {
            return;
        }
        String mac = g.getDevice().getAddress();
        BluetoothGattService s = g.getService(ScaleProtocol.SERVICE);
        if (s != null && s.getCharacteristic(ScaleProtocol.WRITE) != null) {
            ScaleStore.setMac(app, mac);
            write = s.getCharacteristic(ScaleProtocol.WRITE);
            gen = s.getCharacteristic(ScaleProtocol.NAME_IMAGE) != null ? 'A' : 'B';
            log("gen " + gen);
            subscribe(g, s.getCharacteristic(ScaleProtocol.LIVE));
            subscribe(g, s.getCharacteristic(ScaleProtocol.FRAMES));
            ops.add(new Op(Op.READY, null, null));
            pump();
            return;
        }
        BluetoothGattCharacteristic note = null, wr = null;
        BluetoothGattService sa = g.getService(ScaleSenssun.SERVICE_A);
        if (sa != null && sa.getCharacteristic(ScaleSenssun.NOTIFY_A) != null
                && sa.getCharacteristic(ScaleSenssun.WRITE_A) != null) {
            note = sa.getCharacteristic(ScaleSenssun.NOTIFY_A);
            wr = sa.getCharacteristic(ScaleSenssun.WRITE_A);
        } else if (s != null && s.getCharacteristic(ScaleSenssun.CHAR_B) != null) {
            note = wr = s.getCharacteristic(ScaleSenssun.CHAR_B);
        }
        String name = null;
        try {
            name = g.getDevice().getName();
        } catch (Throwable ignored) {
        }
        boolean named = looksLikeScale(name) || ScaleSenssun.looksLike(name) || mac.equalsIgnoreCase(ScaleStore.mac(app));
        // FFF0 is common outside scales: Senssun layout A only on a scale-like name (or the saved scale)
        if (note != null && (sa == null || named || xs != null)) {
            ScaleStore.setMac(app, mac);
            write = wr;
            gen = 'S';
            log("gen S (Senssun/MovingLife " + (sa != null ? "FFF0" : "FFB0") + ") " + name);
            logServices(g);
            subscribe(g, note);
            ops.add(new Op(Op.READY, null, null));
            pump();
            return;
        }
        if (named) {
            ScaleStore.setMac(app, mac);
            gen = 'X';
            log("gen X: unknown scale protocol, capturing " + name + " " + mac);
            logServices(g);
            for (BluetoothGattService sv : g.getServices()) {
                for (BluetoothGattCharacteristic ch : sv.getCharacteristics()) {
                    if ((ch.getProperties() & (BluetoothGattCharacteristic.PROPERTY_NOTIFY
                            | BluetoothGattCharacteristic.PROPERTY_INDICATE)) != 0) {
                        subscribe(g, ch);
                    }
                }
            }
            ops.add(new Op(Op.READY, null, null));
            pump();
            return;
        }
        log("not a scale: " + mac + " " + name);
        notScales.add(mac);
        closeGatt();
        main.postDelayed(new Retry(this), 300);
    }

    /** The GATT table in the diagnostics log: every service, characteristic and its properties. */
    void logServices(BluetoothGatt g) {
        try {
            for (BluetoothGattService sv : g.getServices()) {
                StringBuilder b = new StringBuilder("svc ").append(sv.getUuid());
                for (BluetoothGattCharacteristic ch : sv.getCharacteristics()) {
                    b.append("\n  chr ").append(ch.getUuid()).append(" props 0x")
                            .append(Integer.toHexString(ch.getProperties()));
                }
                log(b.toString());
            }
        } catch (Throwable t) {
            log("services: " + t);
        }
    }

    void subscribe(BluetoothGatt g, BluetoothGattCharacteristic ch) {
        if (ch == null) {
            return;
        }
        try {
            g.setCharacteristicNotification(ch, true);
        } catch (Throwable t) {
            log("notify: " + t);
        }
        BluetoothGattDescriptor d = ch.getDescriptor(ScaleProtocol.CCCD);
        if (d != null) {
            boolean indicate = (ch.getProperties() & BluetoothGattCharacteristic.PROPERTY_INDICATE) != 0
                    && (ch.getProperties() & BluetoothGattCharacteristic.PROPERTY_NOTIFY) == 0;
            ops.add(new Op(Op.DESC, d, indicate ? BluetoothGattDescriptor.ENABLE_INDICATION_VALUE
                    : BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE));
        }
    }

    void onChanged(java.util.UUID uuid, byte[] data) {
        if (data == null) {
            return;
        }
        if (gen == 'A') {
            onFrameA(uuid, data);
        } else if (gen == 'S') {
            onFrameS(uuid, data);
        } else if (gen == 'X') {
            if (rawLogged < RAW_CAP) {
                rawLogged++;
                log("rx " + uuid.toString().substring(4, 8) + " " + hexAll(data));
            }
        } else {
            onFrameB(uuid, data);
        }
    }

    void onReady() {
        setState(READY);
        if (gen == 'A') {
            main.postDelayed(new Unprompted(this), HELLO_WAIT_MS);
        } else if (gen == 'S' && xs != null) {
            if (xs[0] == ScaleSenssun.XS_V30) {
                log("XS v30 (encrypted) — not supported, frames logged");
            } else if (xs[0] >= 0x11) {
                send(ScaleSenssun.syncTime(xsSn++, utcOffsetMin(), unixNow()), true);
            }
        } else if (gen == 'S') {
            java.util.Calendar c = java.util.Calendar.getInstance();
            send(ScaleSenssun.date(c.get(java.util.Calendar.YEAR), c.get(java.util.Calendar.DAY_OF_YEAR)), true);
            send(ScaleSenssun.time(c.get(java.util.Calendar.HOUR_OF_DAY), c.get(java.util.Calendar.MINUTE),
                    c.get(java.util.Calendar.SECOND)), true);
        } else if (gen == 'X') {
            // nothing to say: listen and log
        } else {
            main.postDelayed(new Beat(this, ++beatToken), BEAT_MS);
        }
    }

    // ------------------------------------------------------------------ generation A

    long unixNow() {
        return System.currentTimeMillis() / 1000;
    }

    static int utcOffsetMin() {
        return TimeZone.getDefault().getOffset(System.currentTimeMillis()) / 60000;
    }

    void handshakeA() {
        if (handshakeSent) {
            return;
        }
        handshakeSent = true;
        List<byte[]> f = ScaleProtocol.handshakeA(seq, unixNow(), utcOffsetMin(), heightCm, lastKg, male, age,
                ScaleProtocol.uidBytes(clientId));
        seq += f.size();
        for (byte[] b : f) {
            send(b, true);
        }
    }

    void onFrameA(java.util.UUID uuid, byte[] data) {
        if (ScaleProtocol.LIVE.equals(uuid)) {
            double kg = ScaleProtocol.liveWeightA(data);
            if (kg > 0) {
                live(kg, false);
            } else if (Double.isNaN(kg) && !oddLive) {
                oddLive = true;
                log("live frame " + data.length + " B: " + hex(data));
            } else if (kg == 0 && liveKg > 5) {
                live(0, false);       // stepped off
            }
            return;
        }
        ScaleProtocol.FrameA f = ScaleProtocol.parseA(data);
        if (f == null) {
            return;
        }
        heard = true;
        if (f.type == ScaleProtocol.A_HELLO) {
            send(ScaleProtocol.ackA(seq++, f.seq), true);
            handshakeA();
        } else if (f.type == ScaleProtocol.A_RESULT || f.type == ScaleProtocol.A_STORED) {
            send(ScaleProtocol.ackA(seq++, f.seq), true);
            ScaleProtocol.Reading r = ScaleProtocol.decodeA(f);
            if (r != null && !r.stored) {
                finish(r);
            }
        }
    }

    // ------------------------------------------------------------------ generation B

    void onFrameB(java.util.UUID uuid, byte[] data) {
        boolean control = data.length == 20 && ((data[3] & 0xFF) == ScaleProtocol.B_COUNTER
                || (data[3] & 0xFF) == ScaleProtocol.B_RESULT) && data[2] == 0 && ScaleProtocol.validB(data);
        byte[] m = (ScaleProtocol.LIVE.equals(uuid) ? asmLive : asmFrames).add(data);
        if (control) {
            sendB(ScaleProtocol.ackB(replyIndex));
            replyIndex = (replyIndex + 1) & 0xFF;
        }
        ScaleProtocol.Reading r = ScaleProtocol.decodeB(m);
        if (r == null) {
            return;
        }
        heard = true;
        if (r.result) {
            finish(r);
        } else if (r.weightKg > 0 || liveKg > 5) {
            live(r.weightKg, r.stable);
        }
    }

    void sendB(byte[] payload) {
        for (byte[] f : ScaleProtocol.framesB(seq, payload)) {
            send(f, false);
        }
        seq = (seq + 1) & 0xFF;
    }

    /** The BA heartbeat that keeps the scale's composition screen unlocked; BB + BD once. */
    void beat(int token) {
        if (token != beatToken || closed || gatt == null || gen != 'B') {
            return;
        }
        double kg = liveKg > 0 ? liveKg : 0;
        if (kg > 0) {
            sendB(ScaleProtocol.syncB(unixNow(), ScaleProtocol.uidLong(clientId), heightCm, kg, male, age, false));
            if (!usersSent) {
                usersSent = true;
                sendB(ScaleProtocol.usersB(ScaleProtocol.uidLong(clientId), heightCm, kg, male, age));
                sendB(ScaleProtocol.otherB());
            }
        }
        main.postDelayed(new Beat(this, token), BEAT_MS);
    }

    // ------------------------------------------------------------------ Senssun / MovingLife

    static final int RAW_CAP = 400, RAW_S = 60;

    void onFrameS(java.util.UUID uuid, byte[] data) {
        if (rawLogged < RAW_S) {
            rawLogged++;
            log("rx S " + hexAll(data));
        }
        if (data.length >= 2 && (data[0] & 0xFF) == 0xFF && (data[1] & 0xFF) == 0xA5) {
            onClassicS(data);
            return;
        }
        byte[] f = xsAsm.add(data);
        if (f == null) {
            return;
        }
        ScaleSenssun.XsFrame x = ScaleSenssun.parseXs(f);
        if (x.ackWanted) {
            send(ScaleSenssun.ack(xsSn++, f), true);
        }
        if (x.kind == ScaleSenssun.XsFrame.LIVE) {
            heard = true;
            live(x.kg, x.stable);
        } else if (x.kind == ScaleSenssun.XsFrame.RESULT && ScaleSenssun.stored(x, unixNow())) {
            log("XS stored weigh-in skipped (" + x.time + ")");
        } else if (x.kind == ScaleSenssun.XsFrame.RESULT && !x.finished) {
            heard = true;
            log("XS result " + x.kg + " kg, error " + x.error + ", z20 " + java.util.Arrays.toString(x.z20)
                    + ", z100 " + java.util.Arrays.toString(x.z100));
            live(x.kg, true);
            finish(ScaleSenssun.reading(x));
        }
    }

    /** The classic Senssun frames (FF A5 …). */
    void onClassicS(byte[] data) {
        int k = senssun.add(data);
        if (k == ScaleSenssun.Reader.NONE) {
            return;
        }
        heard = true;
        if (k == ScaleSenssun.Reader.LIVE) {
            live(senssun.kg, false);
        } else if (k == ScaleSenssun.Reader.STABLE) {
            live(senssun.kg, true);
            send(ScaleSenssun.user(male, age, heightCm), true);
        } else {
            if (k == ScaleSenssun.Reader.ERROR) {
                log("S: fat test failed (contact) — weight only");
            }
            log("S result " + senssun.kg + " kg, fat " + senssun.fatPct + " %, water " + senssun.waterPct
                    + " %, muscle " + senssun.musclePct + " %, bone " + senssun.boneKg + " kg, kcal " + senssun.kcal);
            finish(senssun.reading());
        }
    }

    // ------------------------------------------------------------------ shared

    void live(double kg, boolean stable) {
        liveKg = kg;
        liveStable = stable;
        if (state != MEASURING && state != DONE && kg > 5) {
            setState(MEASURING);
        } else if (state == DONE && kg < 2) {
            setState(READY);          // stepped off after a result: the next one on is a new measurement
        }
        listener.onLive(kg, stable);
    }

    /** A result: delivered every time (the page drops a repeat); the link stays while the client stands. */
    void finish(ScaleProtocol.Reading r) {
        results++;
        log("result " + results + ": " + r.weightKg + " kg, z20 " + java.util.Arrays.toString(r.z20));
        setState(DONE);
        listener.onResult(r);
    }

    static String hex(byte[] d) {
        StringBuilder b = new StringBuilder();
        for (int i = 0; i < d.length && i < 24; i++) {
            b.append(String.format(Locale.US, "%02x", d[i] & 0xFF));
        }
        return b.toString();
    }

    static String hexAll(byte[] d) {
        StringBuilder b = new StringBuilder();
        for (int i = 0; i < d.length; i++) {
            b.append(String.format(Locale.US, i == 0 ? "%02x" : " %02x", d[i] & 0xFF));
        }
        return b.toString();
    }

    void setState(int s) {
        if (state != s) {
            state = s;
            listener.onState(s);
        }
    }

    /** Stop everything (the screen closed). */
    public void close() {
        closed = true;
        stopScan();
        closeGatt();
        main.removeCallbacksAndMessages(null);
    }

    void closeGatt() {
        BluetoothGatt g = gatt;
        gatt = null;
        write = null;
        ops.clear();
        busy = false;
        if (g != null) {
            try {
                g.disconnect();
            } catch (Throwable ignored) {
            }
            try {
                g.close();
            } catch (Throwable ignored) {
            }
        }
    }

    // ------------------------------------------------------------------ one GATT operation at a time

    void send(byte[] frame, boolean withResponse) {
        if (write == null) {
            return;
        }
        ops.add(new Op(withResponse ? Op.WRITE_ACKED : Op.WRITE_FAST, null, frame));
        pump();
    }

    void pump() {
        if (busy || gatt == null) {
            return;
        }
        while (!ops.isEmpty()) {
            Op op = ops.remove(0);
            boolean started = false;
            try {
                if (op.kind == Op.READY) {
                    onReady();
                    continue;
                } else if (op.kind == Op.DESC) {
                    op.desc.setValue(op.data);
                    started = gatt.writeDescriptor(op.desc);
                } else {
                    write.setWriteType(op.kind == Op.WRITE_ACKED
                            && (write.getProperties() & BluetoothGattCharacteristic.PROPERTY_WRITE) != 0
                            ? BluetoothGattCharacteristic.WRITE_TYPE_DEFAULT
                            : BluetoothGattCharacteristic.WRITE_TYPE_NO_RESPONSE);
                    write.setValue(op.data);
                    started = gatt.writeCharacteristic(write);
                }
            } catch (Throwable t) {
                log("op: " + t);
            }
            if (started) {
                busy = true;
                main.postDelayed(new OpTimeout(this, ++opToken), OP_TIMEOUT_MS);
                return;
            }
        }
    }

    void opDone() {
        busy = false;
        opToken++;
        pump();
    }

    static final class Op {
        static final int DESC = 1, WRITE_ACKED = 2, WRITE_FAST = 3, READY = 4;
        final int kind;
        final BluetoothGattDescriptor desc;
        final byte[] data;

        Op(int kind, BluetoothGattDescriptor desc, byte[] data) {
            this.kind = kind;
            this.desc = desc;
            this.data = data;
        }
    }

    // ------------------------------------------------------------------ named callbacks (dx: no anonymous classes)

    static final class Scan implements BluetoothAdapter.LeScanCallback {
        final ScaleLink link;

        Scan(ScaleLink link) {
            this.link = link;
        }

        @Override
        public void onLeScan(BluetoothDevice device, int rssi, byte[] scanRecord) {
            try {
                if (device != null && link.isScale(device, scanRecord)) {
                    link.main.post(new Found(link, device));
                }
            } catch (Throwable ignored) {
            }
        }
    }

    static final class Found implements Runnable {
        final ScaleLink link;
        final BluetoothDevice device;

        Found(ScaleLink link, BluetoothDevice device) {
            this.link = link;
            this.device = device;
        }

        @Override
        public void run() {
            link.found(device);
        }
    }

    static final class Gatt extends BluetoothGattCallback {
        final ScaleLink link;

        Gatt(ScaleLink link) {
            this.link = link;
        }

        @Override
        public void onConnectionStateChange(BluetoothGatt g, int status, int newState) {
            link.main.post(new Event(link, Event.CONNECTION, g, status, newState, null, null));
        }

        @Override
        public void onServicesDiscovered(BluetoothGatt g, int status) {
            link.main.post(new Event(link, Event.SERVICES, g, status, 0, null, null));
        }

        @Override
        public void onCharacteristicChanged(BluetoothGatt g, BluetoothGattCharacteristic ch) {
            byte[] v = ch.getValue();
            link.main.post(new Event(link, Event.CHANGED, g, 0, 0, ch.getUuid(), v != null ? v.clone() : null));
        }

        @Override
        public void onCharacteristicWrite(BluetoothGatt g, BluetoothGattCharacteristic ch, int status) {
            link.main.post(new Event(link, Event.OP_DONE, g, status, 0, null, null));
        }

        @Override
        public void onDescriptorWrite(BluetoothGatt g, BluetoothGattDescriptor d, int status) {
            link.main.post(new Event(link, Event.OP_DONE, g, status, 0, null, null));
        }
    }

    static final class Event implements Runnable {
        static final int CONNECTION = 1, SERVICES = 2, CHANGED = 3, OP_DONE = 4;
        final ScaleLink link;
        final int kind;
        final BluetoothGatt g;
        final int a;
        final int b;
        final java.util.UUID uuid;
        final byte[] data;

        Event(ScaleLink link, int kind, BluetoothGatt g, int a, int b, java.util.UUID uuid, byte[] data) {
            this.link = link;
            this.kind = kind;
            this.g = g;
            this.a = a;
            this.b = b;
            this.uuid = uuid;
            this.data = data;
        }

        @Override
        public void run() {
            try {
                if (link.closed) {
                    return;
                }
                if (kind == CONNECTION) {
                    link.onConnection(g, a, b);
                } else if (g != link.gatt) {
                    return;
                } else if (kind == SERVICES) {
                    link.onServices(g);
                } else if (kind == CHANGED) {
                    link.onChanged(uuid, data);
                } else {
                    link.opDone();
                }
            } catch (Throwable t) {
                com.isaigu.gymapp.widget.XemsGuard.report("ScaleLink.event", t);
            }
        }
    }

    static final class OpTimeout implements Runnable {
        final ScaleLink link;
        final int token;

        OpTimeout(ScaleLink link, int token) {
            this.link = link;
            this.token = token;
        }

        @Override
        public void run() {
            if (link.busy && link.opToken == token) {
                log("op timeout");
                link.opDone();
            }
        }
    }

    static final class Retry implements Runnable {
        final ScaleLink link;

        Retry(ScaleLink link) {
            this.link = link;
        }

        @Override
        public void run() {
            if (link.gatt == null) {
                link.startScan();
            }
        }
    }

    static final class Unprompted implements Runnable {
        final ScaleLink link;

        Unprompted(ScaleLink link) {
            this.link = link;
        }

        @Override
        public void run() {
            // the hello may have gone out before we subscribed: start the handshake ourselves
            if (!link.heard && link.gatt != null && link.results == 0) {
                link.handshakeA();
            }
        }
    }

    static final class Beat implements Runnable {
        final ScaleLink link;
        final int token;

        Beat(ScaleLink link, int token) {
            this.link = link;
            this.token = token;
        }

        @Override
        public void run() {
            link.beat(token);
        }
    }
}
