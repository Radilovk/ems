package com.isaigu.gymapp.wearable;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;

import com.isaigu.gymapp.MainActivity;
import com.isaigu.gymapp.wearable.xiaomi.XiaomiBandBleClient;

/** Keeps direct BLE HR alive while the dial is connected (Huawei battery saver). */
public final class NotifyHaForegroundService extends Service {
    private static final String CHANNEL_ID = "xems_ble_hr";
    private static final int NOTIFICATION_ID = 0x7e060001;

    public static void start(Context context) {
        if (context == null) {
            return;
        }
        Context app = context.getApplicationContext();
        Intent intent = new Intent(app, NotifyHaForegroundService.class);
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                app.startForegroundService(intent);
            } else {
                app.startService(intent);
            }
        } catch (Throwable ignored) {
        }
    }

    public static void stop(Context context) {
        if (context == null) {
            return;
        }
        try {
            context.getApplicationContext().stopService(
                    new Intent(context.getApplicationContext(), NotifyHaForegroundService.class));
        } catch (Throwable ignored) {
        }
    }

    @Override
    public void onCreate() {
        super.onCreate();
        ensureChannel();
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        ensureChannel();
        try {
            startForeground(NOTIFICATION_ID, buildNotification());
        } catch (Throwable ignored) {
        }
        return START_STICKY;
    }

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    private void ensureChannel() {
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        NotificationManager manager = (NotificationManager) getSystemService(NOTIFICATION_SERVICE);
        if (manager == null) {
            return;
        }
        NotificationChannel channel = new NotificationChannel(
                CHANNEL_ID,
                "XEMS pulse sync",
                NotificationManager.IMPORTANCE_LOW);
        channel.setDescription("Keeps direct BLE heart rate active during training");
        channel.setShowBadge(false);
        manager.createNotificationChannel(channel);
    }

    private Notification buildNotification() {
        String text;
        if (WearableConfig.isDirectBleMode(this)) {
            text = "Direct BLE: " + NotifyWearableBridge.getBleState()
                    + " · " + XiaomiBandBleClient.getBuildTag();
        } else {
            String pkg = NotifyWearableBridge.getResolvedGadgetbridgePackage(this);
            text = "Gadgetbridge HR: " + (pkg != null ? pkg : "not installed");
        }
        Intent launch = new Intent(this, MainActivity.class);
        launch.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_SINGLE_TOP);
        int pendingFlags = PendingIntent.FLAG_UPDATE_CURRENT;
        if (Build.VERSION.SDK_INT >= 23) {
            pendingFlags |= 0x04000000; // FLAG_IMMUTABLE
        }
        PendingIntent contentIntent = PendingIntent.getActivity(this, 0, launch, pendingFlags);
        Notification.Builder builder = Build.VERSION.SDK_INT >= 26
                ? new Notification.Builder(this, CHANNEL_ID)
                : new Notification.Builder(this);
        builder.setContentTitle("XEMS — пулс синхрон")
                .setContentText(text)
                .setSmallIcon(android.R.drawable.ic_menu_compass)
                .setOngoing(true)
                .setContentIntent(contentIntent);
        if (Build.VERSION.SDK_INT >= 21) {
            builder.setVisibility(Notification.VISIBILITY_PUBLIC);
        }
        return builder.build();
    }
}
