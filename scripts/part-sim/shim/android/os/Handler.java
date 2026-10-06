package android.os;

/** Test shim: the android.jar stub throws in the constructor. */
public class Handler {
    public Handler(Looper l) {}
    public boolean post(Runnable r) { return true; }
}
