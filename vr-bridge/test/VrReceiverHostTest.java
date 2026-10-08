import com.isaigu.gymapp.vr.VrHapticEvent;
import com.isaigu.gymapp.vr.VrHapticSink;
import com.isaigu.gymapp.vr.VrTelemetryReceiver;
import com.isaigu.gymapp.vr.VrWire;

/** Host test: receiver on 127.0.0.1:port, checks what the scripted host_driver run delivers. */
public final class VrReceiverHostTest implements VrHapticSink {
    int left, right, both, pcm, stops, unfocus, ups, downs;
    float lastAmp;
    long maxLatency;

    public synchronized void onVrHaptic(VrHapticEvent e) {
        if (e.hand == VrWire.HAND_LEFT) left++;
        if (e.hand == VrWire.HAND_RIGHT) right++;
        if (e.hand == VrWire.HAND_BOTH) {
            both++;
            if ((e.flags & VrWire.HF_PCM) != 0 && e.isAppend() && Math.abs(e.amplitude - 0.9f) < 1e-3
                    && e.durationUs == 80000) pcm++;
        } else {
            lastAmp = e.amplitude;
            if (e.durationUs != 40000 || (e.flags & VrWire.HF_FREQ_UNSPEC) == 0) throw new AssertionError(e.toString());
        }
        maxLatency = Math.max(maxLatency, e.latencyNs);
    }

    public synchronized void onVrStop(int hand, int reason, long t) {
        System.out.println("stop hand=" + hand + " reason=" + reason);
        if (hand == VrWire.HAND_LEFT && reason == VrWire.SR_APP) stops++;
        if (hand == VrWire.HAND_BOTH && reason == VrWire.SR_UNFOCUS) unfocus++;
    }

    public synchronized void onVrLink(boolean up, String app) {
        System.out.println("link " + up + " " + app);
        if (up) ups++; else downs++;
    }

    public static void main(String[] a) throws Exception {
        int port = Integer.parseInt(a[0]);
        long waitMs = Long.parseLong(a[1]);
        VrReceiverHostTest t = new VrReceiverHostTest();
        VrTelemetryReceiver r = new VrTelemetryReceiver(null, t, port, 60);
        r.start();
        System.out.println("READY");
        Thread.sleep(waitMs);
        boolean linked = r.isLinked();
        r.stop();
        synchronized (t) {
            System.out.println("left=" + t.left + " right=" + t.right + " both=" + t.both + " pcm=" + t.pcm
                    + " stops=" + t.stops + " unfocus=" + t.unfocus + " ups=" + t.ups + " downs=" + t.downs
                    + " lastAmp=" + t.lastAmp + " maxLatencyUs=" + t.maxLatency / 1000 + " rttUs=" + r.rttNs() / 1000
                    + " stale=" + r.droppedStale() + " reordered=" + r.droppedReordered() + " linkedAtEnd=" + linked);
            boolean ok = t.left == 20 && t.right == 20 && t.both == 1 && t.pcm == 1 && t.stops == 1 && t.unfocus == 1
                    && t.ups == 1 && Math.abs(t.lastAmp - 1.0f) < 1e-6 && t.maxLatency >= 0 && r.rttNs() > 0;
            System.out.println(ok ? "PASS" : "FAIL");
            System.exit(ok ? 0 : 1);
        }
    }
}
