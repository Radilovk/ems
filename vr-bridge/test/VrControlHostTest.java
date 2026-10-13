import com.isaigu.gymapp.wearable.vr.VrControlSink;
import com.isaigu.gymapp.wearable.vr.VrHapticEvent;
import com.isaigu.gymapp.wearable.vr.VrHapticSink;
import com.isaigu.gymapp.wearable.vr.VrTelemetryReceiver;
import com.isaigu.gymapp.wearable.vr.VrWire;

import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.SocketTimeoutException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/**
 * Host test of the game's impulse dock path: a CTRL from the game's own socket on the paired headset's address
 * reaches the control sink and is answered with a STATE; a CTRL before pairing, or from another address, is ignored.
 */
public final class VrControlHostTest implements VrHapticSink, VrControlSink {
    int ops;
    int lastOp = -1;
    int lastArg = -1;
    int lastValue;

    public void onVrHaptic(VrHapticEvent e) {}

    public void onVrStop(int hand, int reason, long t) {}

    public void onVrLink(boolean up, String app) {}

    public synchronized void onVrControl(int op, int arg, int value) {
        ops++;
        lastOp = op;
        lastArg = arg;
        lastValue = value;
    }

    public void fillState(ByteBuffer b, int off) {
        b.put(off, (byte) (VrWire.ST_LINKED | VrWire.ST_DRIVING));
        b.put(off + 1, (byte) 2);
        b.put(off + 3, (byte) 25);
        b.putShort(off + 4, (short) 0x0A8);
        b.put(off + 7, (byte) 42);
        b.putInt(off + 8, 60);
        b.putInt(off + 12, 7);
    }

    static byte[] packet(int type, int len, int session) {
        ByteBuffer b = ByteBuffer.allocate(len).order(ByteOrder.LITTLE_ENDIAN);
        b.putInt(0, VrWire.MAGIC);
        b.put(4, (byte) VrWire.VERSION);
        b.put(5, (byte) type);
        b.putInt(8, session);
        b.putLong(16, System.nanoTime());
        return b.array();
    }

    static byte[] ctrl(int op, int arg, int value) {
        byte[] p = packet(VrWire.T_CTRL, VrWire.LEN_CTRL, 777);
        ByteBuffer b = ByteBuffer.wrap(p).order(ByteOrder.LITTLE_ENDIAN);
        b.put(24, (byte) op);
        b.put(25, (byte) arg);
        b.putInt(28, value);
        return p;
    }

    /** The STATE answering a CTRL sent from `s`, or null. */
    static ByteBuffer exchange(DatagramSocket s, int port, byte[] p) throws Exception {
        s.send(new DatagramPacket(p, p.length, InetAddress.getByName("127.0.0.1"), port));
        byte[] in = new byte[256];
        DatagramPacket rp = new DatagramPacket(in, in.length);
        long until = System.currentTimeMillis() + 400;
        while (System.currentTimeMillis() < until) {
            try {
                s.setSoTimeout(100);
                s.receive(rp);
            } catch (SocketTimeoutException e) {
                continue;
            }
            ByteBuffer b = ByteBuffer.wrap(in, 0, rp.getLength()).order(ByteOrder.LITTLE_ENDIAN);
            if (rp.getLength() == VrWire.LEN_STATE && (in[5] & 0xFF) == VrWire.T_STATE) return b;
        }
        return null;
    }

    static void check(boolean ok, String what) {
        System.out.println((ok ? "ok   " : "FAIL ") + what);
        if (!ok) System.exit(1);
    }

    public static void main(String[] a) throws Exception {
        int port = Integer.parseInt(a[0]);
        VrControlHostTest t = new VrControlHostTest();
        VrTelemetryReceiver r = new VrTelemetryReceiver(null, t, port, 60);
        r.setControl(t);
        r.start();
        DatagramSocket game = new DatagramSocket(new InetSocketAddress("127.0.0.1", 0));
        check(exchange(game, port, ctrl(VrWire.CTRL_QUERY, 0, 0)) == null, "no answer before a headset is paired");

        DatagramSocket layer = new DatagramSocket(new InetSocketAddress("127.0.0.1", 0));
        byte[] hello = packet(VrWire.T_HELLO, VrWire.LEN_HELLO, 4242);
        hello[VrWire.HEADER + 2] = 4;
        System.arraycopy("test".getBytes("UTF-8"), 0, hello, VrWire.HEADER + 3, 4);
        layer.send(new DatagramPacket(hello, hello.length, InetAddress.getByName("127.0.0.1"), port));
        long until = System.currentTimeMillis() + 1000;
        while (!r.isLinked() && System.currentTimeMillis() < until) Thread.sleep(10);
        check(r.isLinked(), "the layer pairs");

        ByteBuffer st = exchange(game, port, ctrl(VrWire.CTRL_REST, 5, 1));
        check(st != null, "the game's own socket (same address, other port) gets a STATE");
        synchronized (t) {
            check(t.lastOp == VrWire.CTRL_REST && t.lastArg == 5 && t.lastValue == 1, "the control reached the sink");
        }
        check((st.get(24) & 0xFF) == (VrWire.ST_LINKED | VrWire.ST_DRIVING) && st.get(25) == 2 && st.get(27) == 25
                && st.getShort(28) == 0x0A8 && st.get(31) == 42 && st.getInt(32) == 60 && st.getInt(36) == 7,
                "the STATE carries what the sink filled");
        exchange(game, port, ctrl(VrWire.CTRL_STRENGTH, 0, -3));
        synchronized (t) {
            check(t.lastOp == VrWire.CTRL_STRENGTH && t.lastValue == -3, "a negative value survives the wire");
        }

        DatagramSocket stranger = null;
        try {
            stranger = new DatagramSocket(new InetSocketAddress("127.0.0.2", 0));
        } catch (Exception e) {
            System.out.println("skip stranger check (no 127.0.0.2 here)");
        }
        if (stranger != null) {
            int before;
            synchronized (t) {
                before = t.ops;
            }
            check(exchange(stranger, port, ctrl(VrWire.CTRL_PAUSE, 1, 0)) == null, "another address gets no answer");
            synchronized (t) {
                check(t.ops == before, "and its control is ignored");
            }
        }
        r.stop();
        System.out.println("PASS control");
    }
}
