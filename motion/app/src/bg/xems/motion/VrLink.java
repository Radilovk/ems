package bg.xems.motion;

import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;

/**
 * Legs for the VR game (vr-workout, XEMS Studio on the Quest): the game says "XEMS-LEGS?" to the whole Wi-Fi every
 * second (UDP broadcast to port 47811); this phone answers by sending each solved pose straight to that headset
 * (unicast, ~50 per second, a few hundred bytes of JSON). No pairing screen: the first headset heard is the one.
 * A headset silent for 5 s is forgotten (it left, or the game closed). docs/xems-motion.md "VR legs".
 * dx-safe: named classes only.
 */
final class VrLink {
    static final int PORT = 47811;
    DatagramSocket sock;
    volatile InetSocketAddress target;
    volatile long heardAt;
    volatile boolean running;

    void start() {
        if (running) {
            return;
        }
        running = true;
        new Thread(new Listen(), "xems-vr-link").start();
    }

    void stop() {
        running = false;
        try {
            if (sock != null) {
                sock.close();
            }
        } catch (Throwable ignored) {
        }
    }

    /** "" when no headset; else its address */
    String linked() {
        InetSocketAddress t = target;
        if (t == null || System.currentTimeMillis() - heardAt > 5000) {
            return "";
        }
        return t.getAddress().getHostAddress();
    }

    void send(String json) {
        InetSocketAddress t = target;
        DatagramSocket s = sock;
        if (t == null || s == null || System.currentTimeMillis() - heardAt > 5000) {
            return;
        }
        try {
            byte[] b = json.getBytes("UTF-8");
            s.send(new DatagramPacket(b, b.length, t));
        } catch (Throwable ignored) {
        }
    }

    final class Listen implements Runnable {
        @Override
        public void run() {
            try {
                sock = new DatagramSocket(null);
                sock.setReuseAddress(true);
                sock.setBroadcast(true);
                sock.bind(new InetSocketAddress(PORT));
                try {
                    sock.setTrafficClass(0xB8);       // DSCP EF: low latency on the Wi-Fi
                } catch (Throwable ignored) {
                }
                byte[] buf = new byte[512];
                while (running) {
                    DatagramPacket p = new DatagramPacket(buf, buf.length);
                    sock.receive(p);
                    String s = new String(p.getData(), 0, p.getLength(), "UTF-8");
                    if (s.startsWith("XEMS-LEGS?")) {
                        // the game's own port follows the question ("XEMS-LEGS? 47812"), else the sender's port
                        int port = p.getPort();
                        String[] parts = s.trim().split(" ");
                        if (parts.length > 1) {
                            try {
                                port = Integer.parseInt(parts[1]);
                            } catch (Throwable ignored) {
                            }
                        }
                        InetAddress a = p.getAddress();
                        InetSocketAddress t = target;
                        if (t == null || System.currentTimeMillis() - heardAt > 5000 || t.getAddress().equals(a)) {
                            target = new InetSocketAddress(a, port);
                            heardAt = System.currentTimeMillis();
                        }
                    }
                }
            } catch (Throwable t) {
                running = false;
            }
        }
    }
}
