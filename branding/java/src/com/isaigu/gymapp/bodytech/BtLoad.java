package com.isaigu.gymapp.bodytech;

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
import android.util.Log;
import android.view.View;

import com.clj.fastble.data.BleDevice;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.widget.XemsLang;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/**
 * ▶ on a bodytech row while its suit is being programmed (~3 s after connect / stop, BtBridge): the start waits —
 * the row's clock does not run, no impulse is lost in the queue — and the row shows "Зареждане на програмата… N %".
 * When the program is in, the training starts by itself. Stop (TrainItem.reset → BtBridge.reset) cancels the wait;
 * so do a lost link and {@link #GIVE_UP_MS}.
 *
 * <p>Hooks (scripts/apply-bodytech.py): TrainItem.start start → {@link #hold} (true = wait, the stock start is
 * skipped); TrainViewHolder.updateUI end → {@link #mark} (the row's banner).
 */
public final class BtLoad {
    static final long TICK_MS = 200L;
    static final long GIVE_UP_MS = 20000L;

    private static final Handler main = new Handler(Looper.getMainLooper());
    private static final WeakHashMap<TrainItem, Wait> WAITING = new WeakHashMap<TrainItem, Wait>();
    private static final WeakHashMap<View, Banner> BANNERS = new WeakHashMap<View, Banner>();
    private static boolean ticking;

    private BtLoad() {}

    static final class Wait {
        final BleDevice d;
        final long since;

        Wait(BleDevice d, long since) {
            this.d = d;
            this.since = since;
        }
    }

    /** Hook: TrainItem.start, first thing. true = the suit is still being programmed: the start waits for it. */
    public static boolean hold(TrainItem item, BleDevice d) {
        try {
            if (item == null || item.data == null || d == null || !item.data.connected || item.data.start) {
                return false;
            }
            synchronized (BtLoad.class) {
                if (WAITING.containsKey(item)) {
                    return true;                                // ▶ again while it waits: still waiting
                }
                if (BtBridge.loadPercent(d) < 0) {
                    return false;
                }
                WAITING.put(item, new Wait(d, SystemClock.uptimeMillis()));
            }
            item.xemsRefresh();
            tick();
            return true;
        } catch (Throwable t) {
            Log.e(BtBridge.TAG, "load hold: " + t);
            return false;
        }
    }

    /** BtBridge.reset (the row's stop): a start that waits for this suit is called off. */
    static void cancel(BleDevice d) {
        if (d == null || d.getMac() == null) {
            return;
        }
        List<TrainItem> gone = new ArrayList<TrainItem>();
        synchronized (BtLoad.class) {
            for (Map.Entry<TrainItem, Wait> e : WAITING.entrySet()) {
                if (d.getMac().equalsIgnoreCase(e.getValue().d.getMac())) {
                    gone.add(e.getKey());
                }
            }
            for (TrainItem it : gone) {
                WAITING.remove(it);
            }
        }
        for (TrainItem it : gone) {
            refresh(it);
        }
    }

    /** Percent of the program written for this row's waiting start, −1 = the row does not wait. */
    static int percent(TrainItem item) {
        Wait w;
        synchronized (BtLoad.class) {
            w = WAITING.get(item);
        }
        if (w == null) {
            return -1;
        }
        int p = BtBridge.loadPercent(w.d);
        return p < 0 ? 100 : p;
    }

    private static void tick() {
        synchronized (BtLoad.class) {
            if (ticking) {
                return;
            }
            ticking = true;
        }
        main.postDelayed(new Tick(), TICK_MS);
    }

    static final class Tick implements Runnable {
        @Override
        public void run() {
            List<TrainItem> go = new ArrayList<TrainItem>();
            List<TrainItem> drop = new ArrayList<TrainItem>();
            List<TrainItem> wait = new ArrayList<TrainItem>();
            long now = SystemClock.uptimeMillis();
            synchronized (BtLoad.class) {
                ticking = false;
                for (Map.Entry<TrainItem, Wait> e : WAITING.entrySet()) {
                    TrainItem it = e.getKey();
                    Wait w = e.getValue();
                    if (it.data == null || !it.data.connected || it.data.start || now - w.since > GIVE_UP_MS) {
                        drop.add(it);
                    } else if (BtBridge.loadPercent(w.d) < 0) {
                        go.add(it);
                    } else {
                        wait.add(it);
                    }
                }
                for (TrainItem it : go) {
                    WAITING.remove(it);
                }
                for (TrainItem it : drop) {
                    WAITING.remove(it);
                }
            }
            for (TrainItem it : drop) {
                refresh(it);
            }
            for (TrainItem it : go) {
                try {
                    it.start();                                 // the program is in: the training starts now
                } catch (Throwable t) {
                    Log.e(BtBridge.TAG, "load start: " + t);
                }
                refresh(it);
            }
            for (TrainItem it : wait) {
                refresh(it);                                    // the percent on the banner
            }
            if (!wait.isEmpty()) {
                tick();
            }
        }
    }

    private static void refresh(TrainItem it) {
        try {
            it.xemsRefresh();
        } catch (Throwable t) {
            Log.e(BtBridge.TAG, "load refresh: " + t);
        }
    }

    /** Hook: TrainViewHolder.updateUI end — the banner over a row whose start waits for the program. */
    public static void mark(TrainItem item, View row) {
        try {
            if (row == null) {
                return;
            }
            int p = percent(item);
            Banner b = BANNERS.get(row);
            if (p < 0) {
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
            b.set(XemsLang.tr("Зареждане на програмата…", "Loading the program…"),
                    XemsLang.tr("Тренировката тръгва сама", "The training starts by itself"), p);
            b.invalidateSelf();
        } catch (Throwable t) {
            Log.e(BtBridge.TAG, "load mark: " + t);
        }
    }

    /** The row's overlay: title, line, a progress bar. */
    static final class Banner extends Drawable {
        private final Paint fill = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint big = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint small = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final float d;
        private final RectF box = new RectF();
        private String line1 = "";
        private String line2 = "";
        private int pct;

        Banner(float density) {
            d = density;
            big.setTextAlign(Paint.Align.CENTER);
            big.setTextSize(22 * d);
            big.setTypeface(Typeface.DEFAULT_BOLD);
            small.setTextAlign(Paint.Align.CENTER);
            small.setTextSize(16 * d);
        }

        void set(String line1, String line2, int pct) {
            this.line1 = line1;
            this.line2 = line2;
            this.pct = Math.max(0, Math.min(100, pct));
        }

        @Override
        public void draw(Canvas c) {
            Rect r = getBounds();
            if (r.width() <= 0 || r.height() <= 0) {
                return;
            }
            box.set(r.left + 4 * d, r.top + 4 * d, r.right - 4 * d, r.bottom - 4 * d);
            fill.setColor(0xE0262A30);
            c.drawRoundRect(box, 14 * d, 14 * d, fill);
            fill.setColor(0xFF4FC3F7);
            c.drawRoundRect(box.left, box.top, box.left + 6 * d, box.bottom, 3 * d, 3 * d, fill);
            float cx = r.exactCenterX();
            float cy = r.exactCenterY();
            big.setColor(0xFF81D4FA);
            small.setColor(0xFFE6E9ED);
            c.drawText(line1, cx, cy - 14 * d, big);
            c.drawText(line2 + "  ·  " + pct + " %", cx, cy + 10 * d, small);
            float w = Math.min(box.width() - 48 * d, 360 * d);
            float x0 = cx - w / 2;
            float y0 = cy + 22 * d;
            fill.setColor(0x40FFFFFF);
            c.drawRoundRect(x0, y0, x0 + w, y0 + 6 * d, 3 * d, 3 * d, fill);
            fill.setColor(0xFF4FC3F7);
            c.drawRoundRect(x0, y0, x0 + w * pct / 100f, y0 + 6 * d, 3 * d, 3 * d, fill);
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
