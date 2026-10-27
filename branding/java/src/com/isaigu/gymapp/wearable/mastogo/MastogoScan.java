package com.isaigu.gymapp.wearable.mastogo;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.os.Handler;
import android.os.Looper;

import com.isaigu.gymapp.wearable.WearableBleDiagLog;

/** Finds MASTOGO H- units (the vendor app's name prefix) while the page is open; results on the main thread. */
public final class MastogoScan {
    public interface Listener {
        void onUnit(BluetoothDevice d, String name);
    }

    public static final String PREFIX = "MASTOGO H-";

    final Handler main = new Handler(Looper.getMainLooper());
    final Listener listener;
    BluetoothAdapter adapter;
    Cb cb;

    public MastogoScan(Listener l) {
        this.listener = l;
    }

    /** false = Bluetooth is off or missing. */
    public boolean start() {
        adapter = BluetoothAdapter.getDefaultAdapter();
        if (adapter == null || !adapter.isEnabled()) {
            return false;
        }
        stop();
        try {
            cb = new Cb(this);
            if (!adapter.startLeScan(cb)) {
                WearableBleDiagLog.log("mastogo", "startLeScan refused");
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("mastogo", "scan: " + t);
        }
        return true;
    }

    public void stop() {
        try {
            if (cb != null && adapter != null) {
                adapter.stopLeScan(cb);
            }
        } catch (Throwable ignored) {
        }
        cb = null;
    }

    /** The advertised name: the device's, or the one in the scan record (type 0x08 / 0x09). */
    static String nameOf(BluetoothDevice d, byte[] rec) {
        String n = null;
        try {
            n = d.getName();
        } catch (Throwable ignored) {
        }
        if (n != null && n.length() > 0) {
            return n;
        }
        if (rec == null) {
            return null;
        }
        int i = 0;
        while (i + 1 < rec.length) {
            int len = rec[i] & 0xFF;
            if (len == 0 || i + len >= rec.length) {
                break;
            }
            int type = rec[i + 1] & 0xFF;
            if (type == 0x08 || type == 0x09) {
                return new String(rec, i + 2, len - 1);
            }
            i += len + 1;
        }
        return null;
    }

    static final class Cb implements BluetoothAdapter.LeScanCallback {
        final MastogoScan scan;

        Cb(MastogoScan scan) {
            this.scan = scan;
        }

        @Override
        public void onLeScan(BluetoothDevice device, int rssi, byte[] scanRecord) {
            try {
                if (device == null) {
                    return;
                }
                String name = nameOf(device, scanRecord);
                if (name != null && name.startsWith(PREFIX)) {
                    scan.main.post(new Found(scan, device, name));
                }
            } catch (Throwable ignored) {
            }
        }
    }

    static final class Found implements Runnable {
        final MastogoScan scan;
        final BluetoothDevice device;
        final String name;

        Found(MastogoScan scan, BluetoothDevice device, String name) {
            this.scan = scan;
            this.device = device;
            this.name = name;
        }

        @Override
        public void run() {
            if (scan.cb != null) {
                scan.listener.onUnit(device, name);
            }
        }
    }
}
