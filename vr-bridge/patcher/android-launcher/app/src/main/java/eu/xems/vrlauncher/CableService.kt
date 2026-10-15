package eu.xems.vrlauncher

import android.annotation.SuppressLint
import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.app.Service
import android.content.Context
import android.content.Intent
import android.content.pm.ServiceInfo
import android.hardware.usb.UsbDevice
import android.os.Build
import android.os.Handler
import android.os.IBinder
import android.os.Looper
import android.os.PowerManager

/**
 * Keeps the cable relay ([UsbBridge]) alive while Termux is on screen. The relay lives in this app's process, and a
 * 250 MB install runs with Termux in front: as a plain background app the process was frozen by Android (cached apps
 * freezer) and the install stood still at "качвам на шлема" for good. As a foreground service (connected device,
 * with its notification) it keeps running, and a partial wake lock keeps the CPU on if the screen goes off.
 * Ends with [stop] (cable out, a new plug-in) or by itself once the relay has ended.
 */
class CableService : Service() {

    private var wake: PowerManager.WakeLock? = null
    private val main = Handler(Looper.getMainLooper())
    private val watch = Watch()

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        val d = pending
        pending = null
        goForeground()
        if (d != null) {
            bridge?.stop()
            bridge = UsbBridge(applicationContext, d).also { it.start() }
            bridgeId = d.deviceId
        }
        if (bridge == null) {
            stopSelf()
            return START_NOT_STICKY
        }
        if (wake == null) {
            wake = getSystemService(PowerManager::class.java)
                .newWakeLock(PowerManager.PARTIAL_WAKE_LOCK, "xems:cable").apply { setReferenceCounted(false) }
        }
        wake?.acquire(WAKE_MS)
        main.removeCallbacks(watch)
        main.postDelayed(watch, WATCH_MS)
        return START_NOT_STICKY
    }

    /** The relay ended by itself (cable out, headset asleep): the service goes too. */
    private inner class Watch : Runnable {
        override fun run() {
            if (bridge?.alive == true) {
                wake?.acquire(WAKE_MS)                  // renewed while the relay lives; lapses by itself if we die
                main.postDelayed(this, WATCH_MS)
            } else {
                stopSelf()
            }
        }
    }

    override fun onDestroy() {
        main.removeCallbacks(watch)
        runCatching { wake?.release() }
        wake = null
        super.onDestroy()
    }

    private fun goForeground() {
        val nm = getSystemService(NotificationManager::class.java)
        if (Build.VERSION.SDK_INT >= 26) {
            nm.createNotificationChannel(NotificationChannel(CHANNEL, getString(R.string.cable_channel),
                NotificationManager.IMPORTANCE_LOW))
        }
        val open = PendingIntent.getActivity(this, 0, Intent(this, MainActivity::class.java),
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE)
        @Suppress("DEPRECATION")
        val b = if (Build.VERSION.SDK_INT >= 26) Notification.Builder(this, CHANNEL) else Notification.Builder(this)
        val n = b.setSmallIcon(android.R.drawable.stat_sys_data_bluetooth)
            .setContentTitle(getString(R.string.cable_title))
            .setContentText(getString(R.string.cable_text))
            .setContentIntent(open)
            .setOngoing(true)
            .build()
        if (Build.VERSION.SDK_INT >= 29) {
            startForeground(NOTE_ID, n, ServiceInfo.FOREGROUND_SERVICE_TYPE_CONNECTED_DEVICE)
        } else {
            startForeground(NOTE_ID, n)
        }
    }

    companion object {
        private const val CHANNEL = "cable"
        private const val NOTE_ID = 1
        private const val WATCH_MS = 2_000L
        private const val WAKE_MS = 60_000L
        @Volatile private var pending: UsbDevice? = null
        /** The relay of the headset on the cable (null: none); it outlives the screen (it holds the app context only). */
        @SuppressLint("StaticFieldLeak")
        @Volatile var bridge: UsbBridge? = null
            private set
        @Volatile var bridgeId = -1
            private set

        /** Starts relaying this headset (a running relay is replaced). */
        fun start(c: Context, d: UsbDevice) {
            pending = d
            val i = Intent(c, CableService::class.java)
            if (Build.VERSION.SDK_INT >= 26) c.startForegroundService(i) else c.startService(i)
        }

        fun stop(c: Context) {
            bridge?.stop()
            bridge = null
            bridgeId = -1
            c.stopService(Intent(c, CableService::class.java))
        }
    }
}
