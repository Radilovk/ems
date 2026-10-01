package com.isaigu.gymapp.wearable;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/**
 * After an update the app opens by itself (owner's requirement): Android tells the updated app
 * (MY_PACKAGE_REPLACED) and this starts its main screen. From Android 10 a start from the background needs "draw
 * over other apps", which {@link XemsAccess} asks for on the first start. A first install cannot do this — Android
 * sends nothing to an app before it was opened once; there the installer's "Отвори" is the way.
 * Manifest: scripts/apply-wearable-permissions.py.
 */
public final class XemsAutoStart extends BroadcastReceiver {
    @Override
    public void onReceive(Context c, Intent intent) {
        try {
            if (intent == null || !Intent.ACTION_MY_PACKAGE_REPLACED.equals(intent.getAction())) {
                return;
            }
            Intent launch = c.getPackageManager().getLaunchIntentForPackage(c.getPackageName());
            if (launch != null) {
                launch.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TOP);
                c.startActivity(launch);
            }
        } catch (Throwable t) {
            android.util.Log.w("xems", "XemsAutoStart", t);
        }
    }
}
