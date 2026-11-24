package com.isaigu.gymapp.wearable;

/** JVM stand-in for the tablet's diag log (voice-sim tests). */
public final class WearableBleDiagLog {
    private WearableBleDiagLog() {}

    public static void log(String tag, String msg) {
        System.out.println("  [" + tag + "] " + msg);
    }
}
