package com.isaigu.gymapp.wearable.bluetens;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.os.Handler;
import android.os.Looper;

import com.isaigu.gymapp.wearable.WearableBleDiagLog;

/** Finds Bluetens pads while the screen is open ({@link BluetensAdvert} tells a pad); results on the main thread. */
public final class BluetensScan {
    public interface Listener {
        void onPad(BluetoothDevice d, int kind);
    }

    final Handler main = new Handler(Looper.getMainLooper());
    final Listener listener;
    BluetoothAdapter adapter;
    Cb cb;

    public BluetensScan(Listener l) {
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
                WearableBleDiagLog.log("bluetens", "startLeScan refused");
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("bluetens", "scan: " + t);
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

    static final class Cb implements BluetoothAdapter.LeScanCallback {
        final BluetensScan scan;

        Cb(BluetensScan scan) {
            this.scan = scan;
        }

        @Override
        public void onLeScan(BluetoothDevice device, int rssi, byte[] scanRecord) {
            try {
                if (device == null) {
                    return;
                }
                String name = null;
                try {
                    name = device.getName();
                } catch (Throwable ignored) {
                }
                int kind = BluetensAdvert.classify(name, scanRecord);
                if (kind != 0) {
                    scan.main.post(new Found(scan, device, kind));
                }
            } catch (Throwable ignored) {
            }
        }
    }

    static final class Found implements Runnable {
        final BluetensScan scan;
        final BluetoothDevice device;
        final int kind;

        Found(BluetensScan scan, BluetoothDevice device, int kind) {
            this.scan = scan;
            this.device = device;
            this.kind = kind;
        }

        @Override
        public void run() {
            if (scan.cb != null) {
                scan.listener.onPad(device, kind);
            }
        }
    }
}
