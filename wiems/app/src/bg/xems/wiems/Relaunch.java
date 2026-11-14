package bg.xems.wiems;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/** After an update replaced the app (MY_PACKAGE_REPLACED) it opens again by itself, so the studio sees no gap (v1.24). */
public final class Relaunch extends BroadcastReceiver {
    @Override
    public void onReceive(Context c, Intent i) {
        if (!Intent.ACTION_MY_PACKAGE_REPLACED.equals(i.getAction())) return;
        try {
            Intent go = new Intent(c, MainActivity.class);
            go.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            c.startActivity(go);
        } catch (Throwable t) {
            android.util.Log.e(Ble.TAG, "relaunch: " + t);
        }
    }
}
