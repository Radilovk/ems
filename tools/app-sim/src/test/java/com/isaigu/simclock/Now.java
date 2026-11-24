package com.isaigu.simclock;

/** In an instrumented package: what the app's own System.currentTimeMillis() returns. */
public final class Now {
    private Now() {}

    public static long ms() {
        return System.currentTimeMillis();
    }
}
