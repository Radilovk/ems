package com.isaigu.gymapp.wearable;

import android.os.Handler;
import android.os.Looper;
import android.view.View;

import com.clj.fastble.BleManager;
import com.clj.fastble.callback.BleRssiCallback;
import com.clj.fastble.data.BleDevice;
import com.clj.fastble.exception.BleException;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.widget.XemsLang;

import java.lang.ref.WeakReference;
import java.util.List;

/**
 * Three quick taps on a row's Bluetooth signal icon show how close the suit is — 0..100 %, no metres or dBm (owner,
 * 1.1.407). The suit's link (stock XEMS or bodytech — both go through FastBle) is asked for its real RSSI; while the
 * note shows it is asked again every 0.7 s, so walking closer or away can be watched. The note stays until the signal
 * icon is tapped once more (owner, 1.1.409).
 */
public final class SignalProbe {
    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static final long WINDOW_MS = 1200L;
    private static final long EVERY_MS = 700L;
    /** Each reading's note lasts this long; the next one (0.7 s) renews it — a stopped poll lets it fade. */
    private static final long NOTE_MS = 1500L;

    private static volatile int lastRssi = Integer.MIN_VALUE;
    private static WeakReference<View> anchor;
    private static String mac;
    private static volatile boolean watching;

    private SignalProbe() {
    }

    /** Hook: the row's redraw (through DoubleImpulse.paint) — the icon gets its three-tap listener once. */
    static void attach(TrainItem it, View row, int idSignal) {
        try {
            if (row == null || idSignal == 0 || it == null) {
                return;
            }
            View icon = row.findViewById(idSignal);
            if (icon == null) {
                return;
            }
            icon.setOnClickListener(new Taps(it, icon));
        } catch (Throwable t) {
            WearableBleDiagLog.log("index", "signal attach: " + t);
        }
    }

    /** Counts taps: the third inside the window starts the reading. */
    static final class Taps implements View.OnClickListener {
        final WeakReference<TrainItem> item;
        final WeakReference<View> icon;
        int count;
        long first;

        Taps(TrainItem it, View icon) {
            this.item = new WeakReference<TrainItem>(it);
            this.icon = new WeakReference<View>(icon);
        }

        public void onClick(View v) {
            long now = System.currentTimeMillis();
            if (watching) {
                stop();                                // the closeness is up: one tap hides it
                count = 0;
                first = 0L;
                return;
            }
            if (now - first > WINDOW_MS) {
                first = now;
                count = 0;
            }
            if (++count >= 3) {
                count = 0;
                TrainItem it = item.get();
                String m = it != null && it.data != null ? it.data.macAddress : null;
                begin(v, m);
            }
        }
    }

    static void begin(View v, String address) {
        try {
            anchor = new WeakReference<View>(v);
            mac = address;
            lastRssi = Integer.MIN_VALUE;
            watching = true;
            MAIN.removeCallbacks(POLL);
            MAIN.post(POLL);
        } catch (Throwable t) {
            WearableBleDiagLog.log("index", "signal begin: " + t);
        }
    }

    /** The closeness note goes (a tap on the signal icon while it is up). */
    static void stop() {
        watching = false;
        try {
            MAIN.removeCallbacks(POLL);
            DoubleImpulse.Note.hide();
        } catch (Throwable t) {
            WearableBleDiagLog.log("index", "signal stop: " + t);
        }
    }

    /** Asks the link for its RSSI every 0.7 s while the note is up, and shows the last one. */
    static final class Poll implements Runnable {
        public void run() {
            try {
                View a = anchor != null ? anchor.get() : null;
                if (!watching) {
                    return;
                }
                if (a == null || a.getWindowToken() == null) {
                    watching = false;                  // the row / screen is gone: the note fades by itself
                    return;
                }
                BleDevice dev = device(mac);
                if (dev == null) {
                    lastRssi = Integer.MIN_VALUE;      // keeps watching: shows the closeness again once it is back
                    DoubleImpulse.Note.show(a, XemsLang.tr("Костюмът не е свързан", "The suit is not connected"),
                            XemsLang.tr("Няма сигнал · кликни иконата за скриване", "No signal · tap the icon to hide"),
                            0xFFFF5252, NOTE_MS);
                } else {
                    BleManager.getInstance().readRssi(dev, new Reading());
                    show(a, lastRssi);
                }
                MAIN.postDelayed(this, EVERY_MS);
            } catch (Throwable t) {
                WearableBleDiagLog.log("index", "signal poll: " + t);
            }
        }
    }

    static final Runnable POLL = new Poll();

    static void show(View a, int rssi) {
        if (rssi == Integer.MIN_VALUE) {
            DoubleImpulse.Note.show(a, XemsLang.tr("Близост до костюма…", "Closeness to the suit…"), hint(), 0xFFFFC107,
                    NOTE_MS);
            return;
        }
        int pct = percent(rssi);
        StringBuilder bar = new StringBuilder();
        for (int i = 0; i < 10; i++) {
            bar.append(i * 10 < pct ? '▮' : '▯');
        }
        int accent = pct >= 60 ? 0xFF4CAF50 : pct >= 30 ? 0xFFFFC107 : 0xFFFF5252;
        DoubleImpulse.Note.show(a, XemsLang.tr("Близост до костюма: ", "Closeness to the suit: ") + pct + " %",
                bar.toString() + "\n" + hint(), accent, NOTE_MS);
    }

    static String hint() {
        return XemsLang.tr("кликни иконата за скриване", "tap the icon to hide");
    }

    /** The link's RSSI as closeness: −40 dBm and stronger = 100 %, −90 dBm and weaker = 0 %. */
    static int percent(int rssi) {
        return Math.max(0, Math.min(100, (rssi + 90) * 2));
    }

    /** The suit's connected link by its address (FastBle: stock XEMS and bodytech suits alike). */
    static BleDevice device(String address) {
        try {
            if (address == null) {
                return null;
            }
            List<BleDevice> all = BleManager.getInstance().getAllConnectedDevice();
            if (all != null) {
                for (BleDevice d : all) {
                    if (d != null && address.equalsIgnoreCase(d.getMac())) {
                        return d;
                    }
                }
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("index", "signal device: " + t);
        }
        return null;
    }

    /** One RSSI answer from the link. */
    static final class Reading extends BleRssiCallback {
        public void onRssiSuccess(int rssi) {
            lastRssi = rssi;
        }

        public void onRssiFailure(BleException e) {
            // the next ask tries again
        }
    }
}
