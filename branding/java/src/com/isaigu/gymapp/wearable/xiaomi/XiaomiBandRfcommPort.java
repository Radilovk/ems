package com.isaigu.gymapp.wearable.xiaomi;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.UUID;

/**
 * RFCOMM (Serial Port Profile) socket to the band. Connect + read run on their own thread,
 * writes on a second one; every event is handed to the client on the main thread.
 */
final class XiaomiBandRfcommPort implements XiaomiBandSppPort, Runnable {
    static final UUID SPP_UUID = UUID.fromString("00001101-0000-1000-8000-00805f9b34fb");

    private static final Handler main = new Handler(Looper.getMainLooper());

    private final XiaomiBandSppClient client;
    private final BluetoothDevice device;
    private volatile BluetoothSocket socket;
    private volatile OutputStream out;
    private volatile boolean closed;
    private HandlerThread writerThread;
    private Handler writer;

    XiaomiBandRfcommPort(XiaomiBandSppClient client, BluetoothDevice device) {
        this.client = client;
        this.device = device;
    }

    void start() {
        writerThread = new HandlerThread("xems-spp-write");
        writerThread.start();
        writer = new Handler(writerThread.getLooper());
        Thread t = new Thread(this, "xems-spp-read");
        t.setDaemon(true);
        t.start();
    }

    @Override
    public void run() {
        BluetoothSocket s = open();
        if (s == null) {
            return;
        }
        byte[] buf = new byte[2048];
        try {
            InputStream in = s.getInputStream();
            while (!closed) {
                int n = in.read(buf);
                if (n < 0) {
                    break;
                }
                if (n > 0) {
                    byte[] copy = new byte[n];
                    System.arraycopy(buf, 0, copy, 0, n);
                    main.post(new XiaomiBandSppTask(client, XiaomiBandSppTask.BYTES, this, copy, null));
                }
            }
            if (!closed) {
                main.post(new XiaomiBandSppTask(client, XiaomiBandSppTask.CLOSED, this, null, "eof"));
            }
        } catch (Throwable t) {
            if (!closed) {
                main.post(new XiaomiBandSppTask(client, XiaomiBandSppTask.CLOSED, this, null,
                        t.getClass().getSimpleName() + ": " + t.getMessage()));
            }
        }
    }

    /** Secure socket first, insecure as fallback (some bands are bonded without MITM keys). */
    private BluetoothSocket open() {
        try {
            BluetoothAdapter a = BluetoothAdapter.getDefaultAdapter();
            if (a != null) {
                a.cancelDiscovery();
            }
        } catch (Throwable ignored) {
        }
        String err = "";
        for (int attempt = 0; attempt < 2 && !closed; attempt++) {
            BluetoothSocket s = null;
            try {
                s = attempt == 0 ? device.createRfcommSocketToServiceRecord(SPP_UUID)
                        : device.createInsecureRfcommSocketToServiceRecord(SPP_UUID);
                s.connect();
                socket = s;
                out = s.getOutputStream();
                if (closed) {
                    quietClose(s);
                    return null;
                }
                main.post(new XiaomiBandSppTask(client, XiaomiBandSppTask.OPENED, this, null,
                        attempt == 0 ? "secure" : "insecure"));
                return s;
            } catch (SecurityException e) {
                err = "permission";
                quietClose(s);
                break;
            } catch (Throwable t) {
                err = t.getClass().getSimpleName() + ": " + t.getMessage();
                quietClose(s);
            }
        }
        if (!closed) {
            main.post(new XiaomiBandSppTask(client, XiaomiBandSppTask.FAILED, this, null, err));
        }
        return null;
    }

    @Override
    public void write(byte[] data) {
        Handler w = writer;
        if (w == null || closed || data == null) {
            return;
        }
        w.post(new Write(this, data));
    }

    void writeNow(byte[] data) {
        OutputStream o = out;
        if (o == null || closed) {
            return;
        }
        try {
            o.write(data);
            o.flush();
        } catch (Throwable t) {
            if (!closed) {
                main.post(new XiaomiBandSppTask(client, XiaomiBandSppTask.CLOSED, this, null,
                        "write: " + t.getMessage()));
            }
        }
    }

    @Override
    public void close() {
        closed = true;
        quietClose(socket);
        socket = null;
        out = null;
        HandlerThread t = writerThread;
        writerThread = null;
        writer = null;
        if (t != null) {
            try {
                t.quit();
            } catch (Throwable ignored) {
            }
        }
    }

    private static void quietClose(BluetoothSocket s) {
        if (s == null) {
            return;
        }
        try {
            s.close();
        } catch (Throwable ignored) {
        }
    }

    static final class Write implements Runnable {
        private final XiaomiBandRfcommPort port;
        private final byte[] data;

        Write(XiaomiBandRfcommPort port, byte[] data) {
            this.port = port;
            this.data = data;
        }

        @Override
        public void run() {
            port.writeNow(data);
        }
    }
}
