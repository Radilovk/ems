package com.isaigu.gymapp.wearable;

import android.bluetooth.BluetoothGatt;
import android.os.Handler;
import android.os.Looper;
import android.view.View;

import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.widget.XemsLang;

import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Map;

/**
 * Three quick taps on a row's Bluetooth signal icon show how close the suit is — 0..100 %, no metres or dBm (owner,
 * 1.1.407). The suit's link is read with the real GATT RSSI (the vendor already asks for it and dispatches event 0x3ee
 * "rssi", which nothing listens to); while the note shows it is asked again every 0.7 s, so walking closer or away can
 * be watched. Pure reflection on the vendor's controller / message bus — no vendor stubs.
 */
public final class SignalProbe {
    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static final short EVENT_RSSI = 0x3ee;
    private static final long WINDOW_MS = 1200L;
    private static final long WATCH_MS = 9000L;
    private static final long EVERY_MS = 700L;

    private static boolean listening;
    private static volatile int lastRssi = Integer.MIN_VALUE;
    private static WeakReference<View> anchor;
    private static String mac;
    private static long watchUntil;

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
            listen();
            anchor = new WeakReference<View>(v);
            mac = address;
            lastRssi = Integer.MIN_VALUE;
            watchUntil = System.currentTimeMillis() + WATCH_MS;
            MAIN.removeCallbacks(POLL);
            MAIN.post(POLL);
        } catch (Throwable t) {
            WearableBleDiagLog.log("index", "signal begin: " + t);
        }
    }

    /** Asks the link for its RSSI every 0.7 s while the note should be up, and shows the last one. */
    static final Runnable POLL = new Runnable() {
        public void run() {
            try {
                View a = anchor != null ? anchor.get() : null;
                if (a == null || System.currentTimeMillis() > watchUntil) {
                    return;
                }
                BluetoothGatt gatt = gatt(mac);
                if (gatt == null) {
                    DoubleImpulse.Note.show(a, XemsLang.tr("Костюмът не е свързан", "The suit is not connected"),
                            XemsLang.tr("Няма сигнал", "No signal"), 0xFFFF5252, 2500L);
                    return;
                }
                gatt.readRemoteRssi();
                show(a, lastRssi);
                MAIN.postDelayed(this, EVERY_MS);
            } catch (Throwable t) {
                WearableBleDiagLog.log("index", "signal poll: " + t);
            }
        }
    };

    static void show(View a, int rssi) {
        if (rssi == Integer.MIN_VALUE) {
            DoubleImpulse.Note.show(a, XemsLang.tr("Близост до костюма…", "Closeness to the suit…"), "", 0xFFFFC107,
                    1500L);
            return;
        }
        int pct = percent(rssi);
        StringBuilder bar = new StringBuilder();
        for (int i = 0; i < 10; i++) {
            bar.append(i * 10 < pct ? '▮' : '▯');
        }
        int accent = pct >= 60 ? 0xFF4CAF50 : pct >= 30 ? 0xFFFFC107 : 0xFFFF5252;
        DoubleImpulse.Note.show(a, XemsLang.tr("Близост до костюма: ", "Closeness to the suit: ") + pct + " %",
                bar.toString(), accent, 1500L);
    }

    /** The link's RSSI as closeness: −40 dBm and stronger = 100 %, −90 dBm and weaker = 0 %. */
    static int percent(int rssi) {
        return Math.max(0, Math.min(100, (rssi + 90) * 2));
    }

    /** The suit's open GATT link by its address (the vendor keeps them in the controller's map, link → model). */
    static BluetoothGatt gatt(String address) {
        try {
            if (address == null) {
                return null;
            }
            Class<?> mgr = Class.forName("com.isaigu.gymapp.mgr.BleMgr");
            Object controller = mgr.getMethod("getController").invoke(null);
            Object map = controller.getClass().getMethod("getmGattMap").invoke(controller);
            for (Object k : ((Map<?, ?>) map).keySet()) {
                if (k instanceof BluetoothGatt && ((BluetoothGatt) k).getDevice() != null
                        && address.equalsIgnoreCase(((BluetoothGatt) k).getDevice().getAddress())) {
                    return (BluetoothGatt) k;
                }
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("index", "signal gatt: " + t);
        }
        return null;
    }

    /** Listens (once) to the vendor's "remote RSSI" message; the value is read through reflection. */
    static void listen() {
        if (listening) {
            return;
        }
        try {
            Class<?> listener = Class.forName("com.isaigu.gymapp.message.EventListener");
            Class<?> bundle = Class.forName("com.isaigu.gymapp.message.DataBundle");
            final Method getInt = bundle.getMethod("getInt", String.class, int.class);
            Object proxy = Proxy.newProxyInstance(listener.getClassLoader(), new Class<?>[] {listener},
                    new InvocationHandler() {
                        public Object invoke(Object p, Method m, Object[] args) {
                            try {
                                if ("handleEvent".equals(m.getName()) && args != null && args.length == 1) {
                                    lastRssi = ((Integer) getInt.invoke(args[0], "rssi", Integer.MIN_VALUE)).intValue();
                                }
                            } catch (Throwable ignored) {
                                // a bad message is no reading
                            }
                            return null;
                        }
                    });
            Class<?> disp = Class.forName("com.isaigu.gymapp.message.MessageDispatcher");
            disp.getMethod("attachEventListener", short.class, listener).invoke(null, Short.valueOf(EVENT_RSSI), proxy);
            listening = true;
        } catch (Throwable t) {
            WearableBleDiagLog.log("index", "signal listen: " + t);
        }
    }
}
