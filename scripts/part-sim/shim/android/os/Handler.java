package android.os;

/** Test shim: the android.jar stub throws in the constructor. Nothing posted runs (the tests call the steps). */
public class Handler {
    public Handler(Looper l) {}
    public boolean post(Runnable r) { return true; }
    public boolean postDelayed(Runnable r, long ms) { return true; }
    public void removeCallbacks(Runnable r) {}
}
