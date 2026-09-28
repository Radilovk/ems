package com.isaigu.gymapp.wearable;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import android.bluetooth.BluetoothProfile;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/**
 * Finds the band's MAC when the Mi Fitness log gave only the key: the tablet's paired and connected
 * Xiaomi bands first, then a short BLE search. A hint (the MAC's known end, e.g. "3FA2", from a masked MAC
 * or the band's name "… Band 10 3FA2") narrows the list. Result on the main thread as {mac, name} rows.
 * No lambdas / anonymous classes.
 */
final class BandMacFinder {

    interface Result {
        void onBands(List<String[]> bands);
    }

    private static final long SCAN_MS = 8000L;
    private static final Handler handler = new Handler(Looper.getMainLooper());

    private final Context c;
    private final String hint;
    private final Result cb;
    private final LinkedHashMap<String, String> seen = new LinkedHashMap<String, String>();
    private BluetoothAdapter adapter;
    private Scan scan;
    private boolean delivered;

    private BandMacFinder(Context c, String hint, Result cb) {
        this.c = c;
        this.hint = hint == null ? "" : hint.replace(":", "").toUpperCase(Locale.ROOT);
        this.cb = cb;
    }

    static void find(Context c, String hint, Result cb) {
        new BandMacFinder(c, hint, cb).start();
    }

    static boolean looksLikeBand(String name) {
        String n = name == null ? "" : name.toLowerCase(Locale.ROOT);
        return n.contains("band") || n.contains("xiaomi") || n.startsWith("mi ") || n.contains("redmi watch");
    }

    private void start() {
        try {
            adapter = BluetoothAdapter.getDefaultAdapter();
            if (adapter == null || !adapter.isEnabled()) {
                deliver();
                return;
            }
            Set<BluetoothDevice> bonded = adapter.getBondedDevices();
            if (bonded != null) {
                for (BluetoothDevice d : bonded) {
                    add(d);
                }
            }
            BluetoothManager bm = (BluetoothManager) c.getSystemService(Context.BLUETOOTH_SERVICE);
            if (bm != null) {
                List<BluetoothDevice> conn = bm.getConnectedDevices(BluetoothProfile.GATT);
                for (int i = 0; conn != null && i < conn.size(); i++) {
                    add(conn.get(i));
                }
            }
        } catch (Throwable t) {
            android.util.Log.w("xems", "BandMacFinder.bonded", t);
        }
        if (!matching().isEmpty()) {
            deliver();
            return;
        }
        try {
            scan = new Scan(this);
            if (adapter.startLeScan(scan)) {
                handler.postDelayed(new Stop(this), SCAN_MS);
                return;
            }
        } catch (Throwable t) {
            android.util.Log.w("xems", "BandMacFinder.scan", t);
        }
        deliver();
    }

    private synchronized void add(BluetoothDevice d) {
        String name = "";
        String mac = "";
        try {
            name = d.getName();
            mac = d.getAddress();
        } catch (Throwable ignored) {
        }
        if (mac == null || mac.length() == 0 || !looksLikeBand(name)) {
            return;
        }
        seen.put(mac.toUpperCase(Locale.ROOT), name == null ? "" : name);
    }

    /** Hint given: only the bands whose MAC or name ends with it; else every band seen. */
    private synchronized List<String[]> matching() {
        List<String[]> all = new ArrayList<String[]>();
        List<String[]> hit = new ArrayList<String[]>();
        for (java.util.Map.Entry<String, String> e : seen.entrySet()) {
            String[] row = new String[] {e.getKey(), e.getValue()};
            all.add(row);
            String bare = e.getKey().replace(":", "");
            String name = e.getValue().toUpperCase(Locale.ROOT).trim();
            if (hint.length() >= 4 && (bare.endsWith(hint) || name.endsWith(" " + hint))) {
                hit.add(row);
            }
        }
        return hint.length() >= 4 ? hit : all;
    }

    private void deliver() {
        if (delivered) {
            return;
        }
        delivered = true;
        try {
            if (scan != null) {
                adapter.stopLeScan(scan);
            }
        } catch (Throwable ignored) {
        }
        List<String[]> out = matching();
        if (out.isEmpty() && hint.length() >= 4) {
            // the hint matched nothing: still offer what was seen rather than nothing
            synchronized (this) {
                for (java.util.Map.Entry<String, String> e : seen.entrySet()) {
                    out.add(new String[] {e.getKey(), e.getValue()});
                }
            }
        }
        handler.post(new Deliver(cb, out));
    }

    private static final class Scan implements BluetoothAdapter.LeScanCallback {
        private final BandMacFinder f;

        Scan(BandMacFinder f) {
            this.f = f;
        }

        @Override
        public void onLeScan(BluetoothDevice d, int rssi, byte[] record) {
            f.add(d);
            if (f.hint.length() >= 4 && !f.matching().isEmpty()) {
                handler.post(new Stop(f));
            }
        }
    }

    private static final class Stop implements Runnable {
        private final BandMacFinder f;

        Stop(BandMacFinder f) {
            this.f = f;
        }

        @Override
        public void run() {
            f.deliver();
        }
    }

    private static final class Deliver implements Runnable {
        private final Result cb;
        private final List<String[]> bands;

        Deliver(Result cb, List<String[]> bands) {
            this.cb = cb;
            this.bands = bands;
        }

        @Override
        public void run() {
            cb.onBands(bands);
        }
    }
}
