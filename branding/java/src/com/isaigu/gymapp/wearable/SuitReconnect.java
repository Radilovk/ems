package com.isaigu.gymapp.wearable;

import android.app.Activity;
import android.bluetooth.BluetoothGatt;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PixelFormat;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.View;

import com.clj.fastble.BleManager;
import com.clj.fastble.callback.BleGattCallback;
import com.clj.fastble.data.BleDevice;
import com.clj.fastble.exception.BleException;
import com.isaigu.gymapp.BaseActivity;
import com.isaigu.gymapp.train.TrainItemManager;
import com.isaigu.gymapp.train.events.DeviceDisConnectedEvent;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.widget.XemsLang;

import org.greenrobot.eventbus.EventBus;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.WeakHashMap;

/**
 * The suit's Bluetooth link dropped during a training: the row stays (client, program, time left, all
 * settings), paused and marked "свързвам отново…", and the tablet keeps trying the same suit. Back →
 * the row is bound to it again, still paused ("✓ Свързано отново · натисни ▶"): the trainer resumes with
 * one tap, from where it stopped. No answer for {@link #GIVE_UP_MS} → the row closes as before.
 * <p>
 * Before: the row was closed at once (stock TrainItemManager.disConnected → TrainItem.close) and the only way
 * back was leaving the training screen and connecting the suit again as a new training.
 * <p>
 * Hooks (scripts/apply-suit-reconnect.py): TrainItemManager.disConnected (start), TrainViewHolder.updateUI
 * (end: the row's banner); TrainItem.xemsHold / xemsRebind are added there too.
 */
public final class SuitReconnect {
    static final long GIVE_UP_MS = 5 * 60 * 1000L;
    static final long RETRY_MS = 4000L;
    /** A connect attempt with no answer for this long is over (fastble's own timeout is shorter). */
    static final long ATTEMPT_MS = 20000L;
    static final long DONE_SHOW_MS = 4000L;

    private static final Handler handler = new Handler(Looper.getMainLooper());
    private static final List<Lost> LOST = new ArrayList<Lost>();
    private static final WeakHashMap<View, Banner> BANNERS = new WeakHashMap<View, Banner>();
    private static WeakReference<TrainItemManager> manager;
    private static WeakReference<View> anyRow;
    private static boolean ticking;

    private SuitReconnect() {}

    /** One row waiting for its suit. */
    static final class Lost {
        final TrainItem item;
        final String mac;
        final long since = SystemClock.uptimeMillis();
        long attemptAt;
        boolean connecting;
        long doneAt;                                       // > 0: back, the "✓" banner is showing

        Lost(TrainItem item, String mac) {
            this.item = item;
            this.mac = mac;
        }
    }

    // ------------------------------------------------------------------ hooks

    /**
     * Hook: start of TrainItemManager.disConnected(mac). True = handled here (the stock close is skipped):
     * a connected row of this suit with training time left.
     */
    public static boolean lost(TrainItemManager m, String mac) {
        try {
            if (m == null || mac == null) {
                return false;
            }
            manager = new WeakReference<TrainItemManager>(m);
            List<TrainItem> items = m.getItemList();
            if (items == null) {
                return false;
            }
            boolean held = false;
            for (int i = 0; i < items.size(); i++) {
                TrainItem it = items.get(i);
                if (it == null || it.isEmpty() || it.data == null || !it.data.connected
                        || !mac.equalsIgnoreCase(it.data.macAddress)) {
                    continue;
                }
                if (it.workLength <= 0) {
                    continue;                              // the training is over: close as before
                }
                it.xemsHold();
                drop(it);
                LOST.add(new Lost(it, mac));
                held = true;
                WearableBleDiagLog.log("suit", "lost " + mac + ", " + it.workLength + " s left — reconnecting");
                tip("Връзката с костюма на " + who(it) + " прекъсна — свързвам отново…",
                        "Suit link lost for " + who(it) + " — reconnecting…");
            }
            if (held) {
                tick();
            }
            return held;
        } catch (Throwable t) {
            WearableBleDiagLog.log("suit", "lost: " + t);
            return false;
        }
    }

    /** Hook: end of TrainViewHolder.updateUI — the row's banner while it waits for its suit, and "✓" after. */
    public static void mark(TrainItem item, View row) {
        try {
            if (row == null) {
                return;
            }
            anyRow = new WeakReference<View>(row);
            Lost l = find(item);
            Banner b = BANNERS.get(row);
            if (l == null) {
                if (b != null) {
                    row.getOverlay().remove(b);
                    BANNERS.remove(row);
                }
                return;
            }
            if (b == null) {
                b = new Banner(row.getResources().getDisplayMetrics().density);
                BANNERS.put(row, b);
                row.getOverlay().add(b);
            }
            b.setBounds(0, 0, row.getWidth(), row.getHeight());
            if (l.doneAt > 0) {
                b.set(true, XemsLang.tr("✓ Костюмът е свързан отново", "✓ Suit connected again"),
                        XemsLang.tr("Натисни ▶ — продължава от там, където спря", "Tap ▶ — it goes on from where it stopped"));
            } else {
                long s = (SystemClock.uptimeMillis() - l.since) / 1000;
                b.set(false, XemsLang.tr("Връзката с костюма прекъсна", "Suit link lost"),
                        XemsLang.tr("Свързвам отново…  ", "Reconnecting…  ")
                                + String.format(Locale.ROOT, "%d:%02d", s / 60, s % 60));
            }
            b.invalidateSelf();
        } catch (Throwable t) {
            WearableBleDiagLog.log("suit", "mark: " + t);
        }
    }

    // ------------------------------------------------------------------ the loop

    private static void tick() {
        if (ticking) {
            return;
        }
        ticking = true;
        handler.postDelayed(new Tick(), 1000);
    }

    static final class Tick implements Runnable {
        @Override
        public void run() {
            ticking = false;
            try {
                step();
            } catch (Throwable t) {
                WearableBleDiagLog.log("suit", "tick: " + t);
            }
            if (!LOST.isEmpty()) {
                tick();
            }
        }
    }

    static void step() {
        long now = SystemClock.uptimeMillis();
        TrainItemManager m = manager != null ? manager.get() : null;
        List<TrainItem> items = m != null ? m.getItemList() : null;
        for (int i = LOST.size() - 1; i >= 0; i--) {
            Lost l = LOST.get(i);
            TrainItem it = l.item;
            boolean gone = items == null || !items.contains(it) || it.isEmpty() || it.data == null
                    || !l.mac.equalsIgnoreCase(it.data.macAddress);
            if (gone) {
                LOST.remove(i);                            // the row was removed or given another suit
                continue;
            }
            if (l.doneAt > 0) {
                if (now - l.doneAt > DONE_SHOW_MS) {
                    LOST.remove(i);
                }
                it.xemsRefresh();
                continue;
            }
            if (it.data.connected) {
                LOST.remove(i);                            // connected again some other way
                it.xemsRefresh();
                continue;
            }
            if (now - l.since > GIVE_UP_MS) {
                LOST.remove(i);
                giveUp(it);
                continue;
            }
            if (l.connecting && now - l.attemptAt > ATTEMPT_MS) {
                l.connecting = false;
            }
            if (!l.connecting && now - l.attemptAt >= RETRY_MS) {
                l.connecting = true;
                l.attemptAt = now;
                try {
                    BleManager.getInstance().connect(l.mac, new Gatt(l));
                } catch (Throwable t) {
                    l.connecting = false;
                    WearableBleDiagLog.log("suit", "connect " + l.mac + ": " + t);
                }
            }
            it.xemsRefresh();                              // the banner's clock
        }
    }

    /** No suit for {@link #GIVE_UP_MS}: the row closes the stock way. */
    private static void giveUp(TrainItem it) {
        WearableBleDiagLog.log("suit", "gave up " + (it.data != null ? it.data.macAddress : "?"));
        tip("Костюмът на " + who(it) + " не се върна — редът е затворен",
                "The suit of " + who(it) + " did not come back — row closed");
        it.data.connected = true;                          // close() only acts on a connected row
        it.close();
    }

    static final class Gatt extends BleGattCallback {
        private final Lost lost;

        Gatt(Lost lost) {
            this.lost = lost;
        }

        @Override
        public void onStartConnect() {}

        @Override
        public void onConnectFail(BleDevice device, BleException exception) {
            lost.connecting = false;
            try {
                if (device != null) {
                    BleManager.getInstance().disconnect(device);
                }
            } catch (Throwable ignored) {
            }
        }

        @Override
        public void onConnectSuccess(BleDevice device, BluetoothGatt gatt, int status) {
            com.isaigu.gymapp.bodytech.BtBridge.linked(device);   // a bodytech suit: keep-alive at once
            handler.post(new Back(lost, device));
        }

        @Override
        public void onDisConnected(boolean active, BleDevice device, BluetoothGatt gatt, int status) {
            com.isaigu.gymapp.bodytech.BtBridge.dropped(device, active, status);   // the reason, into the diag log
            // the stock path again: TrainItemManager.disConnected → lost() (a later drop is a new wait)
            try {
                EventBus.getDefault().post(new DeviceDisConnectedEvent(device));
            } catch (Throwable t) {
                WearableBleDiagLog.log("suit", "drop event: " + t);
            }
        }
    }

    /** On the main thread: the suit answered. */
    static final class Back implements Runnable {
        private final Lost lost;
        private final BleDevice device;

        Back(Lost lost, BleDevice device) {
            this.lost = lost;
            this.device = device;
        }

        @Override
        public void run() {
            lost.connecting = false;
            TrainItem it = lost.item;
            try {
                if (!LOST.contains(lost) || it.data == null || it.data.connected
                        || !lost.mac.equalsIgnoreCase(it.data.macAddress)) {
                    BleManager.getInstance().disconnect(device);   // nobody waits for it any more
                    return;
                }
                it.xemsRebind(device);
                lost.doneAt = SystemClock.uptimeMillis();
                WearableBleDiagLog.log("suit", "back " + lost.mac + ", " + it.workLength + " s left");
                tip("✓ Костюмът на " + who(it) + " е свързан отново — натисни ▶",
                        "✓ Suit of " + who(it) + " connected again — tap ▶");
                it.xemsRefresh();
                tick();
            } catch (Throwable t) {
                WearableBleDiagLog.log("suit", "back: " + t);
            }
        }
    }

    // ------------------------------------------------------------------ helpers

    private static Lost find(TrainItem item) {
        for (int i = 0; i < LOST.size(); i++) {
            if (LOST.get(i).item == item) {
                return LOST.get(i);
            }
        }
        return null;
    }

    private static void drop(TrainItem item) {
        Lost l = find(item);
        if (l != null) {
            LOST.remove(l);
        }
    }

    private static String who(TrainItem it) {
        try {
            if (it.data.trainUser != null && it.data.trainUser.name != null) {
                return it.data.trainUser.name;
            }
            return it.data.deviceName != null ? it.data.deviceName : "";
        } catch (Throwable t) {
            return "";
        }
    }

    private static void tip(String bg, String en) {
        try {
            View v = anyRow != null ? anyRow.get() : null;
            Context c = v != null ? v.getContext() : null;
            while (c instanceof ContextWrapper && !(c instanceof Activity)) {
                c = ((ContextWrapper) c).getBaseContext();
            }
            if (c instanceof BaseActivity) {
                ((BaseActivity) c).showTips(XemsLang.tr(bg, en));
            }
        } catch (Throwable ignored) {
        }
    }

    /** The row's overlay: a calm scrim with two lines (amber while waiting, green when back). */
    static final class Banner extends Drawable {
        private final Paint fill = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint big = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint small = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final float d;
        private final RectF box = new RectF();
        private String line1 = "";
        private String line2 = "";
        private boolean ok;

        Banner(float density) {
            d = density;
            big.setTextAlign(Paint.Align.CENTER);
            big.setTextSize(22 * d);
            big.setTypeface(Typeface.DEFAULT_BOLD);
            small.setTextAlign(Paint.Align.CENTER);
            small.setTextSize(16 * d);
        }

        void set(boolean ok, String line1, String line2) {
            this.ok = ok;
            this.line1 = line1;
            this.line2 = line2;
        }

        @Override
        public void draw(Canvas c) {
            Rect r = getBounds();
            if (r.width() <= 0 || r.height() <= 0) {
                return;
            }
            if (ok) {
                // back: a pill at the top only — ▶ and the rest of the row stay in sight
                float w = Math.max(big.measureText(line1), small.measureText(line2)) + 40 * d;
                float cx = r.exactCenterX();
                box.set(cx - w / 2, r.top + 6 * d, cx + w / 2, r.top + 62 * d);
                fill.setColor(0xF01E3A2C);
                c.drawRoundRect(box, 14 * d, 14 * d, fill);
                big.setColor(0xFF7CF0A8);
                small.setColor(0xFFE6E9ED);
                c.drawText(line1, cx, box.top + 26 * d, big);
                c.drawText(line2, cx, box.top + 48 * d, small);
                return;
            }
            box.set(r.left + 4 * d, r.top + 4 * d, r.right - 4 * d, r.bottom - 4 * d);
            fill.setColor(ok ? 0xE01E3A2C : 0xE0262A30);
            c.drawRoundRect(box, 14 * d, 14 * d, fill);
            fill.setColor(ok ? 0xFF3DDC84 : 0xFFFFB74D);
            c.drawRoundRect(box.left, box.top, box.left + 6 * d, box.bottom, 3 * d, 3 * d, fill);
            big.setColor(ok ? 0xFF7CF0A8 : 0xFFFFCC80);
            small.setColor(0xFFE6E9ED);
            float cy = r.exactCenterY();
            c.drawText(line1, r.exactCenterX(), cy - 4 * d, big);
            c.drawText(line2, r.exactCenterX(), cy + 22 * d, small);
        }

        @Override
        public void setAlpha(int alpha) {}

        @Override
        public void setColorFilter(ColorFilter cf) {}

        @Override
        public int getOpacity() {
            return PixelFormat.TRANSLUCENT;
        }
    }
}
