package com.isaigu.gymapp.bodytech;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;

import com.clj.fastble.BleManager;
import com.clj.fastble.callback.BleNotifyCallback;
import com.clj.fastble.callback.BleReadCallback;
import com.clj.fastble.callback.BleWriteCallback;
import com.clj.fastble.data.BleDevice;
import com.clj.fastble.exception.BleException;
import com.isaigu.gymapp.train.ble.BleDeviceConfig;
import com.isaigu.gymapp.train.listener.OnReceiveCommandListener;
import com.isaigu.gymapp.wearable.WearableBleDiagLog;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * A WiEMS unit ("WIEMS - EMS Device", WiemsPro) driven from the stock XEMS training row — docs/xems-wiems.md.
 * The row's XEMS frames reach {@code BleDeviceManager.write}; BtBridge's hooks hand a WiEMS unit's ones here, the
 * {@link WiTranslator} turns them into writes to the unit's characteristics, written one at a time (each after the
 * write response of the one before); the XEMS command's callback fires after its last one.
 * <p>
 * The row's own link (config) is the unit's battery service: the stock code subscribes 2A19, its notifications come
 * back through {@link #reply} as the battery percent. The run characteristic is subscribed here (its "01" ends the
 * unit's count-down after a start). Nothing of BtBridge's bodytech state is touched.
 */
public final class WiBridge {
    private WiBridge() {}

    static final String TAG = "xems-wiems";
    static final long TICK_MS = 500L;
    static final long LINK_SETUP_MS = 1500L;

    private static final Handler main = new Handler(Looper.getMainLooper());
    private static final Map<String, Boolean> KIND = new HashMap<String, Boolean>();
    private static final Map<String, Dev> DEVS = new HashMap<String, Dev>();
    private static BleDeviceConfig config;
    private static boolean beating;
    private static final Beat BEAT = new Beat();
    private static final Map<byte[], Integer> TAGS = new java.util.WeakHashMap<byte[], Integer>();

    // ------------------------------------------------------------------ which device

    /** A WiEMS unit: its name (WIEMS…) or a MAC seen as one before. Like bodytech, only on an unlocked tablet. */
    public static synchronized boolean isWiems(BleDevice d) {
        if (d == null || !SuitStandard.unlocked()) return false;
        String mac = d.getMac();
        if (mac == null) return false;
        Boolean k = KIND.get(mac);
        if (k != null) return k.booleanValue();
        String n = d.getName();
        boolean r = WiProto.nameIsWiems(n) || known(mac);
        if (r && !known(mac)) remember(mac);
        if (n != null || r) KIND.put(mac, Boolean.valueOf(r));
        return r;
    }

    public static synchronized boolean isWiemsMac(String mac) {
        if (mac == null || !SuitStandard.unlocked()) return false;
        for (Map.Entry<String, Boolean> e : KIND.entrySet()) {
            if (e.getKey().equalsIgnoreCase(mac)) return e.getValue().booleanValue();
        }
        return known(mac);
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
        Context c = BtBridge.app();
        return c == null ? null : c.getSharedPreferences("xems_wiems_units", Context.MODE_PRIVATE);
    }

    // ------------------------------------------------------------------ hooks (through BtBridge)

    /** BleDeviceManager.getConfig: the battery service as the row's link (null = not a WiEMS unit). */
    public static synchronized BleDeviceConfig config(BleDevice d) {
        if (!isWiems(d)) return null;
        if (config == null) config = new BleDeviceConfig("ems", WiProto.BATTERY_SVC, WiProto.BATTERY_CHR,
                WiProto.BATTERY_CHR);
        return config;
    }

    public static void phase(BleDevice d, int p) {
        if (d == null || !isWiems(d)) return;
        dev(d).enqPhase = p;
    }

    public static void tag(BleDevice d, byte[] pdu) {
        try {
            if (d == null || pdu == null || !isWiems(d)) return;
            int p = dev(d).enqPhase;
            synchronized (TAGS) {
                TAGS.put(pdu, Integer.valueOf(p));
            }
        } catch (Throwable t) {
            Log.e(TAG, "tag: " + t);
        }
    }

    public static void sending(BleDevice d, byte[] pdu) {
        try {
            if (d == null || pdu == null || !isWiems(d)) return;
            Integer p;
            synchronized (TAGS) {
                p = TAGS.remove(pdu);
            }
            if (p != null) dev(d).tr.phase(p.intValue());
        } catch (Throwable t) {
            Log.e(TAG, "sending: " + t);
        }
    }

    /** TrainItem.reset: strengths 0 and the unit stopped. */
    public static void reset(BleDevice d) {
        try {
            if (d == null || !isWiems(d)) return;
            BtLoad.cancel(d);                               // a start that waited for the count-down is called off
            Dev v = dev(d);
            v.add(v.tr.reset(), null, null);
            startBeat();
        } catch (Throwable t) {
            Log.e(TAG, "reset: " + t);
        }
    }

    /**
     * BtLoad.hold (▶ on the row): true = the start waits for the unit's count-down (started here if the unit is
     * idle); false = the unit already runs, the row starts now.
     */
    public static boolean armForStart(BleDevice d) {
        try {
            if (d == null || !isWiems(d)) return false;
            Dev v = dev(d);
            long now = SystemClock.elapsedRealtime();
            if (v.tr.running() && !v.tr.counting()) return false;
            List<byte[]> ops = v.tr.arm(now);
            if (!ops.isEmpty()) v.add(ops, null, null);
            startBeat();
            return v.tr.counting();
        } catch (Throwable t) {
            Log.e(TAG, "arm: " + t);
            return false;
        }
    }

    /** The unit counts down after a start: 0..99 %; −1 = not (BtLoad lets the waiting start go). */
    public static int loadPercent(BleDevice d) {
        try {
            if (d == null || !isWiems(d)) return -1;
            return dev(d).tr.countdownPercent(SystemClock.elapsedRealtime());
        } catch (Throwable t) {
            return -1;
        }
    }

    /** BleDeviceManager.write for a WiEMS unit: the XEMS frame (0x53 | len | cmd | pdu | sum) translated and queued. */
    public static boolean write(BleDevice d, byte[] data, BleWriteCallback cb) {
        try {
            if (d == null || data == null || data.length < 4) return false;
            byte[] pdu = new byte[data.length - 4];
            System.arraycopy(data, 3, pdu, 0, pdu.length);
            int cmd = data[2] & 0xFF;
            Dev v = dev(d);
            v.tr.xemsSuit = SuitStandard.get(d.getMac()) == SuitStandard.XEMS;   // the suit chosen for this unit
            List<byte[]> ops = v.tr.command(cmd, pdu, SystemClock.elapsedRealtime());
            if (cmd == WiTranslator.CMD_BATTERY) {
                v.add(ops, null, null);
                v.read(cb, data);
            } else {
                v.add(ops, cb, data);
            }
            startBeat();
            return true;
        } catch (Throwable t) {
            Log.e(TAG, "write: " + t);
            return false;
        }
    }

    /** CommandReceiver.onReceiveData: a battery notification (one byte, %). Always handled for a WiEMS unit. */
    public static boolean reply(BleDevice d, byte[] data, OnReceiveCommandListener l) {
        try {
            if (d == null || !isWiems(d)) return false;
            Dev v = dev(d);
            if (l != null) v.listener = l;
            if (data != null && data.length == 1 && l != null) l.onReceiveBattery(data[0] & 0xFF);
            return true;
        } catch (Throwable t) {
            Log.e(TAG, "reply: " + t);
            return true;
        }
    }

    /** A unit connected: a new link (the old state is forgotten); its run notifications are subscribed shortly. */
    public static void linked(BleDevice d) {
        try {
            if (d == null || !isWiems(d)) return;
            Dev v = dev(d);
            v.relink();
            WearableBleDiagLog.log("suit", "linked " + d.getMac() + " wiems");
            main.postDelayed(new Setup(v), LINK_SETUP_MS);
        } catch (Throwable t) {
            Log.e(TAG, "linked: " + t);
        }
    }

    public static void dropped(BleDevice d) {
        try {
            if (d == null || !isWiems(d)) return;
            Dev v;
            synchronized (WiBridge.class) {
                v = DEVS.get(d.getMac());
            }
            if (v != null) v.fail(null);
        } catch (Throwable t) {
            Log.e(TAG, "dropped: " + t);
        }
    }

    // ------------------------------------------------------------------ one unit

    private static synchronized Dev dev(BleDevice d) {
        Dev v = DEVS.get(d.getMac());
        if (v == null) {
            v = new Dev(d);
            DEVS.put(d.getMac(), v);
        }
        v.d = d;
        return v;
    }

    /** A queued step: a write (op), a battery read, or the run notify set-up; cb rides on the command's last one. */
    static final class Item {
        static final int WRITE = 0, READ = 1, NOTIFY = 2, CALLBACK = 3;
        final int kind;
        final byte[] op;
        final BleWriteCallback cb;
        final byte[] orig;

        Item(int kind, byte[] op, BleWriteCallback cb, byte[] orig) {
            this.kind = kind;
            this.op = op;
            this.cb = cb;
            this.orig = orig;
        }
    }

    static final class Dev {
        BleDevice d;
        final WiTranslator tr = new WiTranslator();
        final ArrayDeque<Item> q = new ArrayDeque<Item>();
        boolean busy;
        Item inflight;
        OnReceiveCommandListener listener;
        volatile int enqPhase = WiTranslator.MAIN;
        final Ack ack = new Ack(this);
        final Read readCb = new Read(this);
        final RunNotify runCb = new RunNotify(this);

        Dev(BleDevice d) {
            this.d = d;
        }

        synchronized void relink() {
            busy = false;
            inflight = null;
            q.clear();
            tr.forget();
        }

        synchronized void add(List<byte[]> ops, BleWriteCallback cb, byte[] orig) {
            int n = ops.size();
            if (n == 0) {
                if (cb != null) q.addLast(new Item(Item.CALLBACK, null, cb, orig));
            } else {
                for (int i = 0; i < n; i++) q.addLast(new Item(Item.WRITE, ops.get(i), i == n - 1 ? cb : null, orig));
            }
            pump();
        }

        synchronized void read(BleWriteCallback cb, byte[] orig) {
            q.addLast(new Item(Item.READ, null, cb, orig));
            pump();
        }

        synchronized void subscribe() {
            q.addLast(new Item(Item.NOTIFY, null, null, null));
            pump();
        }

        synchronized void pump() {
            while (!busy) {
                Item it = q.pollFirst();
                if (it == null) return;
                if (it.kind == Item.CALLBACK) {
                    done(it);
                    continue;
                }
                busy = true;
                inflight = it;
                try {
                    BleManager m = BleManager.getInstance();
                    if (it.kind == Item.WRITE) {
                        m.write(d, WiProto.SVC, WiProto.chr(it.op), WiProto.value(it.op), ack);
                    } else if (it.kind == Item.READ) {
                        m.read(d, WiProto.BATTERY_SVC, WiProto.BATTERY_CHR, readCb);
                    } else {
                        m.notify(d, WiProto.SVC, WiProto.CHR_RUN, runCb);
                    }
                } catch (Throwable t) {
                    Log.e(TAG, "pump: " + t);
                    fail(null);
                }
                return;
            }
        }

        void done(Item it) {
            if (it != null && it.cb != null) it.cb.onWriteSuccess(1, 1, it.orig);
        }

        synchronized void next() {
            Item it = inflight;
            inflight = null;
            busy = false;
            done(it);
            pump();
        }

        /** A write failed or the link went: everything queued hears of it; the unit is unknown from now. */
        synchronized void fail(BleException e) {
            busy = false;
            Item it = inflight;
            inflight = null;
            tr.forget();
            if (it != null && it.cb != null) it.cb.onWriteFailure(e);
            while ((it = q.pollFirst()) != null) {
                if (it.cb != null) it.cb.onWriteFailure(e);
            }
        }
    }

    static final class Ack extends BleWriteCallback {
        final Dev v;

        Ack(Dev v) {
            this.v = v;
        }

        @Override
        public void onWriteSuccess(int current, int total, byte[] justWrite) {
            v.next();
        }

        @Override
        public void onWriteFailure(BleException e) {
            WearableBleDiagLog.log("suit", "wiems write failed " + v.d.getMac() + ": " + e);
            v.fail(e);
        }
    }

    static final class Read extends BleReadCallback {
        final Dev v;

        Read(Dev v) {
            this.v = v;
        }

        @Override
        public void onReadSuccess(byte[] data) {
            OnReceiveCommandListener l = v.listener;
            if (data != null && data.length == 1 && l != null) l.onReceiveBattery(data[0] & 0xFF);
            v.next();
        }

        @Override
        public void onReadFailure(BleException e) {
            v.next();                                       // a battery read is not worth the link
        }
    }

    static final class RunNotify extends BleNotifyCallback {
        final Dev v;

        RunNotify(Dev v) {
            this.v = v;
        }

        @Override
        public void onNotifySuccess() {
            v.next();
        }

        @Override
        public void onNotifyFailure(BleException e) {
            WearableBleDiagLog.log("suit", "wiems notify failed " + v.d.getMac() + ": " + e);
            v.next();                                       // the count-down then ends by its timeout
        }

        @Override
        public void onCharacteristicChanged(byte[] data) {
            try {
                List<byte[]> ops = v.tr.runNotify(data);
                if (!ops.isEmpty()) v.add(ops, null, null);
            } catch (Throwable t) {
                Log.e(TAG, "run notify: " + t);
            }
        }
    }

    static final class Setup implements Runnable {
        final Dev v;

        Setup(Dev v) {
            this.v = v;
        }

        @Override
        public void run() {
            try {
                if (BleManager.getInstance().isConnected(v.d)) v.subscribe();
            } catch (Throwable t) {
                Log.e(TAG, "setup: " + t);
            }
        }
    }

    // ------------------------------------------------------------------ heartbeat (count-down fallback, stale output)

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
            synchronized (WiBridge.class) {
                live.addAll(DEVS.values());
            }
            boolean any = false;
            for (Dev v : live) {
                boolean up;
                try {
                    up = BleManager.getInstance().isConnected(v.d);
                } catch (Throwable t) {
                    up = false;
                }
                if (!up) continue;
                any = true;
                try {
                    List<byte[]> ops = v.tr.heartbeat(now);
                    if (!ops.isEmpty()) v.add(ops, null, null);
                } catch (Throwable t) {
                    Log.e(TAG, "beat: " + t);
                }
            }
            synchronized (WiBridge.class) {
                if (any) main.postDelayed(this, TICK_MS);
                else beating = false;
            }
        }
    }
}
