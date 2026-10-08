package com.isaigu.gymapp.wearable.vr;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Process;
import android.util.Log;

import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/**
 * UDP gateway for the Quest 3 OpenXR haptic layer (vr-bridge/quest-layer). One thread does everything:
 * receive, pairing (ACK), clock sync (PING every {@link #PING_INTERVAL_MS}), session / sequence filtering,
 * staleness drop and dispatch to the {@link VrHapticSink}. One headset at a time; a new game session
 * (new HELLO session id) replaces the old one.
 */
public final class VrTelemetryReceiver implements Runnable {
    private static final String TAG = "XemsVr";

    public static final int PING_INTERVAL_MS = 250;
    public static final int LINK_TIMEOUT_MS = 5000;
    public static final int DEFAULT_MAX_STALE_MS = 60;

    private final VrHapticSink sink;
    private final int port;
    private final long maxStaleNs;
    private final Context context;
    private final VrClockSync clock = new VrClockSync();

    private final byte[] rx = new byte[256];
    private final ByteBuffer rxb = ByteBuffer.wrap(rx).order(ByteOrder.LITTLE_ENDIAN);
    private final byte[] tx = new byte[VrWire.HEADER];
    private final ByteBuffer txb = ByteBuffer.wrap(tx).order(ByteOrder.LITTLE_ENDIAN);
    private final DatagramPacket rxp = new DatagramPacket(rx, rx.length);
    private final DatagramPacket txp = new DatagramPacket(tx, tx.length);

    private volatile boolean running;
    private volatile DatagramSocket socket;
    private Thread thread;
    private WifiManager.WifiLock wifiLock;
    private WifiManager.MulticastLock mcLock;

    // Peer state — receiver thread only.
    private InetAddress peerAddr;
    private int peerPort;
    private int peerSession;
    private boolean peerUp;
    private String peerApp = "";
    private long lastRxNs;
    private long nextPingNs;
    private int txSeq;
    private int lastSeq;
    private boolean haveSeq;

    // Stats — read from any thread.
    private volatile long statHaptics;
    private volatile long statStale;
    private volatile long statReordered;
    private volatile long statLastLatencyNs = -1;
    private volatile long statRttNs = -1;

    /** @param context may be null (no Wi-Fi locks — host tests). */
    public VrTelemetryReceiver(Context context, VrHapticSink sink) {
        this(context, sink, VrWire.PORT, DEFAULT_MAX_STALE_MS);
    }

    public VrTelemetryReceiver(Context context, VrHapticSink sink, int port, int maxStaleMs) {
        this.context = context == null ? null : context.getApplicationContext();
        this.sink = sink;
        this.port = port;
        this.maxStaleNs = maxStaleMs * 1000000L;
    }

    public synchronized void start() throws SocketException {
        if (running) return;
        DatagramSocket s = new DatagramSocket(null);
        s.setReuseAddress(true);
        s.setBroadcast(true);
        s.setReceiveBufferSize(64 * 1024);
        try {
            s.setTrafficClass(0xB8);  // DSCP EF -> WMM voice queue
        } catch (SocketException ignored) {
        }
        s.bind(new InetSocketAddress(port));
        socket = s;
        acquireWifi();
        running = true;
        thread = new Thread(this, "xems-vr-rx");
        thread.start();
    }

    public synchronized void stop() {
        if (!running) return;
        running = false;
        DatagramSocket s = socket;
        if (s != null) s.close();
        try {
            if (thread != null) thread.join(500);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
        thread = null;
        releaseWifi();
    }

    public boolean isLinked() {
        return peerUp;
    }

    public long haptics() {
        return statHaptics;
    }

    public long droppedStale() {
        return statStale;
    }

    public long droppedReordered() {
        return statReordered;
    }

    /** Last delivered event: Quest call -> tablet receive, ns (-1 = unsynced). */
    public long lastLatencyNs() {
        return statLastLatencyNs;
    }

    public long rttNs() {
        return statRttNs;
    }

    @Override
    public void run() {
        try {
            Process.setThreadPriority(Process.THREAD_PRIORITY_URGENT_AUDIO);
        } catch (Throwable ignored) {
        }
        DatagramSocket s = socket;
        while (running) {
            long now = System.nanoTime();
            if (peerUp && now - lastRxNs > LINK_TIMEOUT_MS * 1000000L) linkDown();
            if (peerUp && now >= nextPingNs) {
                sendSmall(s, VrWire.T_PING, now);
                nextPingNs = now + PING_INTERVAL_MS * 1000000L;
            }
            long waitNs = peerUp ? nextPingNs - System.nanoTime() : 1000000000L;
            try {
                s.setSoTimeout((int) Math.max(1, waitNs / 1000000L));
                rxp.setLength(rx.length);
                s.receive(rxp);
            } catch (SocketTimeoutException e) {
                continue;
            } catch (Exception e) {
                if (running) Log.w(TAG, "receive", e);
                break;
            }
            try {
                handle(s, rxp.getLength(), System.nanoTime());
            } catch (RuntimeException e) {
                Log.e(TAG, "dispatch", e);  // a faulty sink must not kill the link (stops would be lost)
            }
        }
        if (peerUp) linkDown();
    }

    private void handle(DatagramSocket s, int len, long t3) {
        if (len < VrWire.HEADER) return;
        if (rxb.getInt(0) != VrWire.MAGIC || (rx[4] & 0xFF) != VrWire.VERSION) return;
        int type = rx[5] & 0xFF;
        int session = rxb.getInt(8);
        int seq = rxb.getInt(12);
        long tNs = rxb.getLong(16);
        InetAddress from = rxp.getAddress();
        int fromPort = rxp.getPort();

        boolean fromPeer = peerUp && session == peerSession && fromPort == peerPort && from.equals(peerAddr);
        if (!fromPeer) {
            // Only a HELLO opens a session (it carries the app name); anything else from a stranger is ignored.
            if (type != VrWire.T_HELLO || len < VrWire.LEN_HELLO) return;
            adopt(from, fromPort, session);
        }
        lastRxNs = t3;

        switch (type) {
            case VrWire.T_HELLO:
                if (!fromPeer) {
                    int n = Math.min(rx[VrWire.HEADER + 2] & 0xFF, VrWire.LEN_HELLO - VrWire.HEADER - 3);
                    peerApp = new String(rx, VrWire.HEADER + 3, n, java.nio.charset.Charset.forName("UTF-8"));
                    peerUp = true;
                    Log.i(TAG, "link up " + peerApp + " @" + from.getHostAddress() + ":" + fromPort);
                    sink.onVrLink(true, peerApp);
                }
                sendSmall(s, VrWire.T_ACK, t3);
                if (!fromPeer) {
                    sendSmall(s, VrWire.T_PING, System.nanoTime());
                    nextPingNs = System.nanoTime() + PING_INTERVAL_MS * 1000000L;
                }
                return;
            case VrWire.T_PONG:
                if (len < VrWire.LEN_PONG) return;
                if (clock.add(rxb.getLong(24), rxb.getLong(32), tNs, t3)) statRttNs = clock.rttNs();
                return;
            case VrWire.T_HAPTIC:
                if (len < VrWire.LEN_HAPTIC || !inOrder(seq)) return;
                onHaptic(seq, tNs, t3);
                return;
            case VrWire.T_STOP:
                if (len < VrWire.LEN_STOP || !inOrder(seq)) return;
                // Never dropped as stale: a late stop is still a stop.
                int reason = rx[25] & 0xFF;
                sink.onVrStop(rx[24] & 0xFF, reason, clock.synced() ? clock.toTablet(tNs) : t3);
                if (reason == VrWire.SR_SHUTDOWN) {  // game closed: drop the link now, not after the timeout
                    peerUp = false;
                    Log.i(TAG, "link closed " + peerApp);
                    sink.onVrLink(false, peerApp);
                }
                return;
            default:
        }
    }

    private void onHaptic(int seq, long tNs, long t3) {
        long eventNs = t3;
        long latency = -1;
        if (clock.synced()) {
            eventNs = clock.toTablet(tNs);
            latency = Math.max(0, t3 - eventNs);
            if (latency > maxStaleNs) {
                statStale++;
                return;
            }
        }
        int hand = rx[24] & 0xFF;
        int flags = rx[25] & 0xFF;
        float amp = rxb.getFloat(28);
        if (!(amp > 0f)) amp = 0f;
        else if (amp > 1f) amp = 1f;
        long durUs = rxb.getInt(32) & 0xFFFFFFFFL;
        float hz = rxb.getFloat(36);
        statLastLatencyNs = latency;
        statHaptics++;
        sink.onVrHaptic(new VrHapticEvent(hand, amp, durUs, hz, flags, seq, eventNs, latency, peerApp));
    }

    /** Wrap-safe: rejects duplicates and anything older than the newest packet seen. */
    private boolean inOrder(int seq) {
        if (haveSeq && seq - lastSeq <= 0) {
            statReordered++;
            return false;
        }
        haveSeq = true;
        lastSeq = seq;
        return true;
    }

    private void adopt(InetAddress addr, int p, int session) {
        if (peerUp) linkDown();
        peerAddr = addr;
        peerPort = p;
        peerSession = session;
        haveSeq = false;
        clock.reset();
        statRttNs = -1;
        statLastLatencyNs = -1;
    }

    private void linkDown() {
        peerUp = false;
        Log.i(TAG, "link down " + peerApp);
        sink.onVrStop(VrWire.HAND_BOTH, VrWire.SR_SHUTDOWN, System.nanoTime());
        sink.onVrLink(false, peerApp);
    }

    private void sendSmall(DatagramSocket s, int type, long tNs) {
        txb.putInt(0, VrWire.MAGIC);
        tx[4] = (byte) VrWire.VERSION;
        tx[5] = (byte) type;
        txb.putShort(6, (short) 0);
        txb.putInt(8, peerSession);
        txb.putInt(12, txSeq++);
        txb.putLong(16, tNs);
        txp.setAddress(peerAddr);
        txp.setPort(peerPort);
        try {
            s.send(txp);
        } catch (Exception e) {
            if (running) Log.w(TAG, "send", e);
        }
    }

    private void acquireWifi() {
        if (context == null) return;
        try {
            WifiManager wm = (WifiManager) context.getSystemService(Context.WIFI_SERVICE);
            if (wm == null) return;
            int mode = Build.VERSION.SDK_INT >= 29 ? 4 /* WIFI_MODE_FULL_LOW_LATENCY */
                    : 3 /* WIFI_MODE_FULL_HIGH_PERF */;
            wifiLock = wm.createWifiLock(mode, "xems-vr");
            wifiLock.setReferenceCounted(false);
            wifiLock.acquire();
            mcLock = wm.createMulticastLock("xems-vr");  // HELLO discovery is a broadcast
            mcLock.setReferenceCounted(false);
            mcLock.acquire();
        } catch (Throwable t) {
            Log.w(TAG, "wifi locks", t);
        }
    }

    private void releaseWifi() {
        try {
            if (wifiLock != null && wifiLock.isHeld()) wifiLock.release();
            if (mcLock != null && mcLock.isHeld()) mcLock.release();
        } catch (Throwable ignored) {
        }
        wifiLock = null;
        mcLock = null;
    }
}
