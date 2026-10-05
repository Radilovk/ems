package com.isaigu.gymapp.bodytech;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;

import com.clj.fastble.BleManager;
import com.clj.fastble.callback.BleWriteCallback;
import com.clj.fastble.data.BleDevice;
import com.clj.fastble.exception.BleException;
import com.isaigu.gymapp.train.ble.BleDeviceConfig;
import com.isaigu.gymapp.train.ble.BleDeviceManager;
import com.isaigu.gymapp.train.listener.OnReceiveCommandListener;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * A bodytech suit (EMSFIT 5.1 hardware, service FE50) driven from the stock XEMS training row. Everything the row
 * says to its suit goes through {@code BleDeviceManager.write} as the XEMS frame (0x53 …); for a bodytech suit that
 * frame is turned into bodytech frames here ({@link BtTranslator}) and written one at a time, each after the ACK of
 * the one before. The row's own CommandSender waits for the last of them, so its pacing, SoftRamp, safety limits
 * and reconnect work unchanged. Hooks: scripts/apply-bodytech.py.
 * <p>
 * Keep-alive: SYNC 6 s every 4.5 s (the suit's watchdog) while the link is up; an output nobody renewed in time is
 * switched off ({@link BtTranslator#heartbeat}). Battery answers become the percent the row expects.
 */
public final class BtBridge {
    private BtBridge() {}

    static final String TAG = "xems-bt";
    static final String SVC = "0000fe50-0000-1000-8000-00805f9b34fb";
    static final String CHR = "0000fe51-0000-1000-8000-00805f9b34fb";
    static final long SYNC_EVERY_MS = 4500L;
    static final long TICK_MS = 500L;

    private static final Handler main = new Handler(Looper.getMainLooper());
    private static final Map<String, Boolean> KIND = new HashMap<String, Boolean>();
    private static final Map<String, Dev> DEVS = new HashMap<String, Dev>();
    private static BleDeviceConfig config;
    private static boolean beating;
    private static final Beat BEAT = new Beat();

    // ------------------------------------------------------------------ hooks (smali)

    /** BleDeviceManager.getConfig: the service / characteristics of a bodytech suit (null = not one: stock). */
    public static synchronized BleDeviceConfig config(BleDevice d) {
        if (!isBodytech(d)) return null;
        if (config == null) config = new BleDeviceConfig("ems", SVC, CHR, CHR);
        return config;
    }

    /** CommandSender.sendDuration / sendActivePause / sendPause start: which phase the next commands belong to. */
    public static void phase(BleDevice d, int p) {
        if (d == null || !isBodytech(d)) return;
        dev(d).tr.phase(p);
    }

    /** TrainItem.reset start (stop, end of the time, connect): all off, strengths 0, the suit programmed afresh. */
    public static void reset(BleDevice d) {
        try {
            if (d == null || !isBodytech(d)) return;
            Dev v = dev(d);
            v.begin();
            v.add(v.tr.reset(), null, null, false);
        } catch (Throwable t) {
            Log.e(TAG, "reset: " + t);
        }
    }

    /**
     * BleDeviceManager.write start. true = taken (a bodytech suit and an XEMS frame): translated and queued, the
     * callback fires after the last frame. false = the stock write goes on (not a bodytech suit, or one of our own
     * bodytech frames).
     */
    public static boolean write(BleDevice d, byte[] data, BleWriteCallback cb) {
        try {
            if (d == null || data == null || data.length < 4) return false;
            if ((data[0] & 0xFF) == BtProto.BEGIN) return false;
            if (!isBodytech(d)) return false;
            byte[] pdu = new byte[data.length - 4];
            System.arraycopy(data, 3, pdu, 0, pdu.length);
            Dev v = dev(d);
            v.begin();
            boolean was = v.tr.armed();
            v.add(v.tr.command(data[2] & 0xFF, pdu, SystemClock.elapsedRealtime()), cb, data, false);
            boolean now = v.tr.armed();
            if (!was && now) BtBeep.start();
            else if (was && !now) BtBeep.stop();
            return true;
        } catch (Throwable t) {
            Log.e(TAG, "write: " + t);
            return false;
        }
    }

    /**
     * Settings sheet: hold "test" on one channel (which muscle it is; which Hz / width / waveform feels how). down = on at pct %
     * (renew every ≤ 1 s), !down = off. Returns "ok", "no_suit" (no connected bodytech suit has been used yet — connect it
     * from Тренировка first) or "training" (a real training runs on it).
     */
    public static String test(String mac, int ch, int pct, int hz, int us, int wave, boolean uncapped, boolean down) {
        try {
            Dev v = null;
            synchronized (BtBridge.class) {
                for (Dev x : DEVS.values()) {
                    if (mac != null && !mac.equalsIgnoreCase(x.d.getMac())) continue;
                    if (BleManager.getInstance().isConnected(x.d)) {
                        v = x;
                        break;
                    }
                }
            }
            if (v == null) return "no_suit";
            if (v.tr.training()) return "training";
            v.begin();
            if (down) v.add(v.tr.testOn(ch, pct, hz, us, wave, uncapped, SystemClock.elapsedRealtime()), null, null, false);
            else v.add(v.tr.testOff(), null, null, true);
            return "ok";
        } catch (Throwable t) {
            Log.e(TAG, "test: " + t);
            return "no_suit";
        }
    }

    /** Is the suit with this MAC a bodytech one (seen as such when it was connected)? */
    public static synchronized boolean isBodytechMac(String mac) {
        if (mac == null) return false;
        for (Map.Entry<String, Boolean> e : KIND.entrySet()) {
            if (e.getKey().equalsIgnoreCase(mac)) return e.getValue().booleanValue();
        }
        return known(mac);
    }

    /** CommandReceiver.onReceiveData start: a bodytech reply → battery percent for the row. true = handled. */
    public static boolean reply(BleDevice d, byte[] data, OnReceiveCommandListener l) {
        try {
            if (d == null || data == null || !isBodytech(d)) return false;
            int raw = BtProto.batteryRaw(data);
            if (raw > 0 && l != null) l.onReceiveBattery(BtProto.percent(raw));
            return true;
        } catch (Throwable t) {
            Log.e(TAG, "reply: " + t);
            return true;
        }
    }

    // ------------------------------------------------------------------ which suit

    /**
     * Bodytech: its advertisement lists service FE50 (an XEMS suit lists FFF0), else the vendor's names
     * (EMS08-…, TZLJ…, ADT…). A suit seen once as bodytech stays one (kept across runs).
     */
    public static synchronized boolean isBodytech(BleDevice d) {
        String mac = d.getMac();
        if (mac == null) return false;
        Boolean k = KIND.get(mac);
        if (k != null) return k.booleanValue();
        boolean r = false;
        byte[] rec = d.getScanRecord();
        if (rec != null && BtProto.has16(rec, 0xFE50)) r = true;
        else if (rec != null && BtProto.has16(rec, 0xFFF0)) r = false;
        else r = BtProto.nameIsBodytech(d.getName()) || known(mac);
        if (r && !known(mac)) remember(mac);
        if (rec != null || r) KIND.put(mac, Boolean.valueOf(r));
        return r;
    }

    private static boolean known(String mac) {
        SharedPreferences p = prefs();
        return p != null && p.getBoolean("mac_" + mac, false);
    }

    private static void remember(String mac) {
        SharedPreferences p = prefs();
        if (p != null) p.edit().putBoolean("mac_" + mac, true).apply();
    }

    private static SharedPreferences prefs() {
        Context c = app();
        return c == null ? null : c.getSharedPreferences("xems_bodytech_suits", Context.MODE_PRIVATE);
    }

    static Context app() {
        try {
            Class<?> at = Class.forName("android.app.ActivityThread");
            Context c = (Context) at.getMethod("currentApplication").invoke(null);
            if (c != null) BtSettings.load(c);
            return c;
        } catch (Throwable t) {
            return null;
        }
    }

    // ------------------------------------------------------------------ one suit

    private static synchronized Dev dev(BleDevice d) {
        String mac = d.getMac();
        Dev v = DEVS.get(mac);
        if (v == null) {
            app();
            v = new Dev(d);
            DEVS.put(mac, v);
        }
        // a new GATT connection of the same suit (it dropped and came back): the suit lost its program and its
        // outputs — everything is learned again, nothing queued for the old link is sent
        Object g = gattOf(d);
        if (g != null) {
            if (v.gatt != null && v.gatt != g) v.relink();
            v.gatt = g;
        }
        v.d = d;
        return v;
    }

    private static Object gattOf(BleDevice d) {
        try {
            return BleManager.getInstance().getBluetoothGatt(d);
        } catch (Throwable t) {
            return null;
        }
    }

    /** A queued frame; cb (the XEMS command's callback) rides on the command's last frame. */
    static final class Item {
        final byte[] frame;
        final BleWriteCallback cb;
        final byte[] orig;

        Item(byte[] frame, BleWriteCallback cb, byte[] orig) {
            this.frame = frame;
            this.cb = cb;
            this.orig = orig;
        }
    }

    static final class Dev {
        BleDevice d;
        final BtTranslator tr = new BtTranslator();
        final ArrayDeque<Item> q = new ArrayDeque<Item>();
        boolean busy;
        Item inflight;
        boolean started;
        Object gatt;
        long lastSync;
        final Ack ack = new Ack(this);

        Dev(BleDevice d) {
            this.d = d;
        }

        /** The link is new: forget the old one's state and whatever waited for it. */
        synchronized void relink() {
            started = false;
            busy = false;
            inflight = null;
            q.clear();
            tr.forget();
        }

        /** First command of this suit: ask for the fast link and start the keep-alive. */
        void begin() {
            if (started) return;
            started = true;
            lastSync = 0;
            try {
                BleManager.getInstance().requestConnectionPriority(d, 1);
            } catch (Throwable t) {
                Log.w(TAG, "priority: " + t);
            }
            startBeat();
        }

        synchronized void add(List<byte[]> frames, BleWriteCallback cb, byte[] orig, boolean urgent) {
            int n = frames.size();
            if (n == 0) {
                if (cb != null) q.addLast(new Item(null, cb, orig));
            } else if (urgent) {
                for (int i = n - 1; i >= 0; i--) q.addFirst(new Item(frames.get(i), null, null));
            } else {
                for (int i = 0; i < n; i++) q.addLast(new Item(frames.get(i), i == n - 1 ? cb : null, orig));
            }
            pump();
        }

        /** Next item: a frame → written (one in flight); a bare callback → answered. */
        synchronized void pump() {
            while (!busy) {
                Item it = q.pollFirst();
                if (it == null) return;
                if (it.frame == null) {
                    done(it);
                    continue;
                }
                busy = true;
                inflight = it;
                try {
                    BleDeviceManager.write(d, it.frame, ack);
                } catch (Throwable t) {
                    BtBeep.lost();
                    fail(null);
                }
                return;
            }
        }

        void done(Item it) {
            if (it.cb != null) it.cb.onWriteSuccess(1, 1, it.orig);
        }

        /** A write failed: everything queued is dropped (each waiting command hears of it); the suit is re-learned. */
        synchronized void fail(BleException e) {
            if (tr.armed()) BtBeep.lost();                  // the link gone mid-training
            busy = false;
            Item it = inflight;
            inflight = null;
            tr.forget();
            if (it != null && it.cb != null) it.cb.onWriteFailure(e);
            while ((it = q.pollFirst()) != null) {
                if (it.cb != null) it.cb.onWriteFailure(e);
            }
        }

        /** The frame in flight was ACKed: its command (if it was the last frame) is answered, the next goes. */
        synchronized void acked() {
            Item it = inflight;
            inflight = null;
            busy = false;
            if (it != null) done(it);
            pump();
        }
    }

    /** ACK of one frame. */
    static final class Ack extends BleWriteCallback {
        final Dev v;

        Ack(Dev v) {
            this.v = v;
        }

        @Override
        public void onWriteSuccess(int current, int total, byte[] justWrite) {
            v.acked();
        }

        @Override
        public void onWriteFailure(BleException e) {
            BtBeep.lost();                                  // a write refused: the link is in trouble
            v.fail(e);
        }
    }

    // ------------------------------------------------------------------ keep-alive

    private static synchronized void startBeat() {
        if (beating) return;
        beating = true;
        main.postDelayed(BEAT, TICK_MS);
    }

    static final class Beat implements Runnable {
        @Override
        public void run() {
            long now = SystemClock.elapsedRealtime();
            List<Dev> live = new ArrayList<Dev>();
            synchronized (BtBridge.class) {
                for (Dev v : DEVS.values()) live.add(v);
            }
            boolean any = false;
            for (Dev v : live) {
                boolean up;
                try {
                    up = BleManager.getInstance().isConnected(v.d);
                } catch (Throwable t) {
                    up = false;
                }
                if (!up) {
                    synchronized (v) {
                        v.started = false;
                        v.fail(null);
                    }
                    continue;
                }
                any = true;
                List<byte[]> urgent = new ArrayList<byte[]>(v.tr.heartbeat(now));
                if (now - v.lastSync >= SYNC_EVERY_MS) {
                    urgent.add(BtProto.sync(6));
                    v.lastSync = now;
                }
                if (!urgent.isEmpty()) v.add(urgent, null, null, true);
            }
            synchronized (BtBridge.class) {
                if (any) main.postDelayed(this, TICK_MS);
                else beating = false;
            }
        }
    }
}
