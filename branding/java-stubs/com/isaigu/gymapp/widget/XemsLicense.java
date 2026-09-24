package com.isaigu.gymapp.widget;

import android.content.Context;
import java.util.Set;

public final class XemsLicense {
    public static final String FEAT_ARMS_FULL = "arms_full";
    public static void init(Context c) {}
    public static boolean hasFeature(String id) { return false; }
    public static boolean isSetupMode() { return false; }
    public static void finishSetup() {}
    public static Set<String> allowedEms() { return null; }
    public static String key() { return ""; }
    public static boolean isAdminKey() { return false; }
}
