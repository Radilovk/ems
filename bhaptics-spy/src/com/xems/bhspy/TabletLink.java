package com.xems.bhspy;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.InterfaceAddress;
import java.net.NetworkInterface;
import java.net.SocketTimeoutException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

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
    private volatile String manualIp = "";
    // diagnostics (what the log and the screen say when "looking for the tablet" never ends)
    private volatile long helloSent;
    private volatile long acks;
    private volatile String lastAckFrom = "";
    private volatile String lastError = "";
    private volatile String nets = "";

    TabletLink(InetAddress target, int port) throws IOException {
        this.socket = new DatagramSocket();
        this.socket.setBroadcast(true);
        try {
            this.socket.setTrafficClass(0xB8);       // DSCP EF: the Wi-Fi voice queue, no waiting behind other traffic
        } catch (java.net.SocketException ignored) {
        }
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

    /** The tablet's address typed by hand (empty = discover). */
    void setManualIp(String ip) {
        manualIp = ip == null ? "" : ip.trim();
    }

    String diag() {
        return "local " + nets + " · hello " + helloSent + " · ack " + acks
            + (lastAckFrom.isEmpty() ? "" : " from " + lastAckFrom) + (manualIp.isEmpty() ? "" : " · hand " + manualIp)
            + (lastError.isEmpty() ? "" : " · err " + lastError);
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
            lastError = e.getClass().getSimpleName() + " " + to.getHostAddress();   // Wi-Fi blinked: next heartbeat
        }
    }

    /** Every host of the /24 around {@code ip} except the network, broadcast and the device itself. Pure. */
    static List<byte[]> sweep(byte[] ip) {
        List<byte[]> out = new ArrayList<byte[]>();
        for (int h = 1; h < 255; h++) {
            if (h == (ip[3] & 0xFF)) continue;
            out.add(new byte[] {ip[0], ip[1], ip[2], (byte) h});
        }
        return out;
    }

    /** The device's Wi-Fi style IPv4 addresses: {address, directed broadcast or null}. */
    private List<InetAddress[]> localNets() {
        List<InetAddress[]> out = new ArrayList<InetAddress[]>();
        StringBuilder sb = new StringBuilder();
        try {
            Enumeration<NetworkInterface> e = NetworkInterface.getNetworkInterfaces();
            while (e != null && e.hasMoreElements()) {
                NetworkInterface ni = e.nextElement();
                if (!ni.isUp() || ni.isLoopback()) continue;
                for (InterfaceAddress ia : ni.getInterfaceAddresses()) {
                    if (!(ia.getAddress() instanceof Inet4Address)) continue;
                    out.add(new InetAddress[] {ia.getAddress(), ia.getBroadcast()});
                    sb.append(ni.getName()).append(' ').append(ia.getAddress().getHostAddress()).append('/')
                        .append(ia.getNetworkPrefixLength()).append(' ');
                }
            }
        } catch (IOException ex) {
            lastError = "nets " + ex.getClass().getSimpleName();
        }
        nets = sb.toString().trim();
        return out;
    }

    /** One round of looking for the tablet: limited + directed broadcast, the typed address, every 3rd round a sweep. */
    private void discover(int round) {
        byte[] h = hello(session, ++seq, "xems-bhaptics-spy");
        send(h, target);
        helloSent++;
        List<InetAddress[]> ls = localNets();
        for (InetAddress[] a : ls) {
            if (a[1] != null) send(h, a[1]);
        }
        String m = manualIp;
        if (!m.isEmpty()) {
            try {
                send(h, InetAddress.getByName(m));
            } catch (IOException e) {
                lastError = "bad ip " + m;
            }
        }
        if (round % 3 == 0) {                         // broadcast filtered by the router: ask every host of the /24
            for (InetAddress[] a : ls) {
                byte[] ip = a[0].getAddress();
                if (ip[0] == (byte) 127 || (ip[0] == (byte) 169 && ip[1] == (byte) 254)) continue;
                for (byte[] t : sweep(ip)) {
                    try {
                        send(h, InetAddress.getByAddress(t));
                    } catch (IOException e) {
                        // skip
                    }
                }
            }
        }
    }

    @Override
    public void run() {
        byte[] rx = new byte[256];
        long nextHello = 0;
        int round = 0;
        while (running) {
            long now = System.currentTimeMillis();
            if (now >= nextHello) {
                if (peer != null && linked()) {
                    send(hello(session, ++seq, "xems-bhaptics-spy"), peer);     // heartbeat to the paired tablet
                    helloSent++;
                } else {
                    discover(round++);
                }
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
                    acks++;
                    lastAckFrom = p.getAddress().getHostAddress();
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
