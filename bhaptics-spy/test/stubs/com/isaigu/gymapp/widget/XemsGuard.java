package com.isaigu.gymapp.widget;

/** Test-only stand-in: the real XemsGuard needs the whole app. */
public final class XemsGuard {
    public static void report(String where, Throwable t) {
        System.out.println("report " + where + " " + t);
    }
}
