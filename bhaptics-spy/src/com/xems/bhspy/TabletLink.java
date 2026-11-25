package com.xems.bhspy;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketTimeoutException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

/**
 * The listener's line to the XEMS tablet: the same UDP protocol the OpenXR layer speaks (vr-bridge/quest-layer/src/
 * xems_wire.h, tablet side VrTelemetryReceiver), plus one message, T_ZHIT = a hit on a body region with a level per
 * motor. HELLO is broadcast once a second until the tablet ACKs (then unicast, as a heartbeat); PING is answered with
 * PONG (clock sync). Pure Java.
 */
final class TabletLink implements Runnable {
    static final int PORT = 47800;
    static final int MAGIC = 0x48525658;
    static final int T_HELLO = 0x03, T_PONG = 0x04, T_ZHIT = 0x06, T_ACK = 0x81, T_PING = 0x82;
    static final int HEADER = 24, LEN_HELLO = 120, LEN_PONG = 40, LEN_ZHIT = 64, LEVELS = 32;

    // body regions (VrWire.ZR_*)
    static final int ZR_UNKNOWN = 0, ZR_HAND_L = 1, ZR_HAND_R = 2, ZR_VEST_FRONT = 3, ZR_VEST_BACK = 4, ZR_HEAD = 5,
        ZR_FOREARM_L = 6, ZR_FOREARM_R = 7, ZR_FOOT_L = 8, ZR_FOOT_R = 9, ZR_GLOVE_L = 10, ZR_GLOVE_R = 11;

    private final DatagramSocket socket;
    private final InetAddress target;       // broadcast address, or the tablet when known
    private final int port;
    private final int session;
    private volatile InetAddress peer;
    private volatile boolean running = true;
    private volatile long lastAckMs;
    private int seq;
    private long sent;

    TabletLink(InetAddress target, int port) throws IOException {
        this.socket = new DatagramSocket();
        this.socket.setBroadcast(true);
        this.target = target;
        this.port = port;
        this.session = new java.util.Random().nextInt();
    }

    void start() {
        Thread t = new Thread(this, "tablet-link");
        t.setDaemon(true);
        t.start();
    }

    void stop() {
        running = false;
        socket.close();
    }

    boolean linked() {
        return System.currentTimeMillis() - lastAckMs < 4000 && peer != null;
    }

    long sent() {
        return sent;
    }

    static ByteBuffer packet(int len, int type, int session, int seq, long tNs) {
        ByteBuffer b = ByteBuffer.allocate(len).order(ByteOrder.LITTLE_ENDIAN);
        b.putInt(0, MAGIC);
        b.put(4, (byte) 1);
        b.put(5, (byte) type);
        b.putInt(8, session);
        b.putInt(12, seq);
        b.putLong(16, tNs);
        return b;
    }

    static byte[] hello(int session, int seq, String name) {
        ByteBuffer b = packet(LEN_HELLO, T_HELLO, session, seq, System.nanoTime());
        byte[] n = name.getBytes(Charset.forName("UTF-8"));
        int len = Math.min(n.length, LEN_HELLO - HEADER - 3);
        b.putShort(24, (short) 0);
        b.put(26, (byte) len);
        for (int i = 0; i < len; i++) b.put(27 + i, n[i]);
        return b.array();
    }

    static byte[] zhit(int session, int seq, int region, int ms, int[] levels) {
        ByteBuffer b = packet(LEN_ZHIT, T_ZHIT, session, seq, System.nanoTime());
        int n = Math.min(levels.length, LEVELS);
        b.put(24, (byte) region);
        b.putShort(26, (short) Math.max(0, Math.min(65535, ms)));
        b.put(28, (byte) n);
        for (int i = 0; i < n; i++) b.put(32 + i, (byte) Math.max(0, Math.min(100, levels[i])));
        return b.array();
    }

    /** A hit on a region. Dropped silently while the tablet is not linked (nothing to do with a stale hit). */
    void hit(int region, int ms, int[] levels) {
        InetAddress p = peer;
        if (p == null || !linked()) return;
        send(zhit(session, ++seq, region, ms, levels), p);
        sent++;
    }

    private void send(byte[] d, InetAddress to) {
        try {
            socket.send(new DatagramPacket(d, d.length, to, port));
        } catch (IOException e) {
            // Wi-Fi blinked: the next heartbeat tries again
        }
    }

    @Override
    public void run() {
        byte[] rx = new byte[256];
        long nextHello = 0;
        while (running) {
            long now = System.currentTimeMillis();
            if (now >= nextHello) {
                InetAddress to = peer != null ? peer : target;
                send(hello(session, ++seq, "xems-bhaptics-spy"), to);
                nextHello = now + 1000;
            }
            try {
                socket.setSoTimeout(200);
                DatagramPacket p = new DatagramPacket(rx, rx.length);
                socket.receive(p);
                ByteBuffer b = ByteBuffer.wrap(rx, 0, p.getLength()).order(ByteOrder.LITTLE_ENDIAN);
                if (p.getLength() < HEADER || b.getInt(0) != MAGIC) continue;
                int type = rx[5] & 0xFF;
                if (type == T_ACK) {
                    peer = p.getAddress();
                    lastAckMs = System.currentTimeMillis();
                } else if (type == T_PING) {
                    long t1 = System.nanoTime();
                    long t0 = b.getLong(16);
                    ByteBuffer o = packet(LEN_PONG, T_PONG, session, ++seq, System.nanoTime());
                    o.putLong(24, t0);
                    o.putLong(32, t1);
                    send(o.array(), p.getAddress());
                    lastAckMs = System.currentTimeMillis();
                }
            } catch (SocketTimeoutException e) {
                // loop: heartbeat
            } catch (IOException e) {
                if (!running) return;
            }
        }
    }
}
