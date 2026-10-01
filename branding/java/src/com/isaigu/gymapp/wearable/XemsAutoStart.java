package com.isaigu.gymapp.wearable;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.provider.Settings;

/**
 * After an update the app opens by itself (owner's requirement): Android tells the updated app
 * (MY_PACKAGE_REPLACED) and this starts its main screen. From Android 10 a start from the background is allowed only
 * with "draw over other apps"; that is not asked for (no settings pages at start), so there a notification "XEMS е
 * обновен — докосни, за да го отвориш" is posted instead — one tap, no permission needed. A first install cannot do
 * either — Android sends nothing to an app before it was opened once; there the installer's "Отвори" is the way.
 * Manifest: scripts/apply-wearable-permissions.py.
 */
public final class XemsAutoStart extends BroadcastReceiver {
    private static final String CHANNEL = "xems_update";
    private static final int NOTE_ID = 0x5755;

    @Override
    public void onReceive(Context c, Intent intent) {
        try {
            if (intent == null || !Intent.ACTION_MY_PACKAGE_REPLACED.equals(intent.getAction())) {
                return;
            }
            Intent launch = c.getPackageManager().getLaunchIntentForPackage(c.getPackageName());
            if (launch == null) {
                return;
            }
            launch.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TOP);
            boolean canStart = Build.VERSION.SDK_INT < 29 || Settings.canDrawOverlays(c);
            if (canStart) {
                c.startActivity(launch);
            } else {
                notifyUpdated(c, launch);
            }
        } catch (Throwable t) {
            android.util.Log.w("xems", "XemsAutoStart", t);
        }
    }

    private static void notifyUpdated(Context c, Intent launch) {
        NotificationManager nm = (NotificationManager) c.getSystemService(Context.NOTIFICATION_SERVICE);
        if (nm == null) {
            return;
        }
        boolean bg = !"en".equals(java.util.Locale.getDefault().getLanguage());
        Notification.Builder b;
        if (Build.VERSION.SDK_INT >= 26) {
            nm.createNotificationChannel(new NotificationChannel(CHANNEL, bg ? "Обновления" : "Updates",
                    NotificationManager.IMPORTANCE_HIGH));
            b = new Notification.Builder(c, CHANNEL);
        } else {
            b = new Notification.Builder(c);
            b.setPriority(Notification.PRIORITY_HIGH);
        }
        int flags = PendingIntent.FLAG_UPDATE_CURRENT | (Build.VERSION.SDK_INT >= 23 ? PendingIntent.FLAG_IMMUTABLE : 0);
        PendingIntent open = PendingIntent.getActivity(c, NOTE_ID, launch, flags);
        b.setSmallIcon(c.getApplicationInfo().icon)
                .setContentTitle(bg ? "XEMS е обновен" : "XEMS updated")
                .setContentText(bg ? "Докосни, за да го отвориш" : "Tap to open")
                .setContentIntent(open)
                .setAutoCancel(true);
        nm.notify(NOTE_ID, b.build());
    }
}
