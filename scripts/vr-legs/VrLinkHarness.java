package bg.xems.motion;

/** Test only (scripts/vr-legs/run.sh): the phone side's real VrLink, sending a numbered pose every 20 ms for 4 s. */
public final class VrLinkHarness {
    public static void main(String[] a) throws Exception {
        VrLink v = new VrLink();
        v.start();
        long t0 = System.currentTimeMillis();
        int n = 0;
        while (System.currentTimeMillis() - t0 < 4000) {
            if (v.linked().length() > 0) {
                v.send("{\"v\":1,\"n\":" + (n++) + ",\"t\":" + System.currentTimeMillis() + ",\"H\":1.75,\"L\":{\"kl\":[0.05,0.1,-1.2],\"kr\":[0,-0.1,-1.2],\"fl\":[0.1,0.1,-1.6],\"fr\":[0,-0.1,-1.6]},\"V\":{\"kl\":[0,0,0],\"kr\":[0,0,0],\"fl\":[2,0,0],\"fr\":[0,0,0]},\"air\":[0,0]}");
            }
            Thread.sleep(20);
        }
        System.out.println("harness: sent " + n + " poses to " + v.linked());
        v.stop();
    }
}
