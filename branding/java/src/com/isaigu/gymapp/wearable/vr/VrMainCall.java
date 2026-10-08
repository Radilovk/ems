package com.isaigu.gymapp.wearable.vr;

/** Main-thread hops for {@link VrDrive} (named, dx-safe: no anonymous Runnables). */
final class VrMainCall implements Runnable {
    static final int TICK = 0;
    static final int LINK = 1;
    static final int SETTINGS = 2;

    private final int op;
    private final boolean up;
    private final String app;

    VrMainCall(int op, boolean up, String app) {
        this.op = op;
        this.up = up;
        this.app = app;
    }

    @Override
    public void run() {
        if (op == TICK) {
            VrDrive.tick();
        } else if (op == SETTINGS) {
            VrDrive.onSettingsChanged();
        } else {
            VrDrive.link(up, app);
        }
    }
}
