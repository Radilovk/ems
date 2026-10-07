package com.isaigu.gymapp.wearable;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PixelFormat;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.view.View;

/**
 * The master + / − keys of the training screen (@id/allAdd, @id/allminus — owner, 1.1.385): a pale red + and a pale
 * green − (a light tint, a fine rim, the sign in the colour); pressed — the full colour with a white sign, which stays
 * a moment after the release so a quick tap is seen too. Installed from the rows' redraw (DoubleImpulse.paint), once
 * per window.
 */
public final class MasterKeys {
    static final int RED = 0xFFE53935;
    static final int GREEN = 0xFF43A047;
    static final long AFTER_MS = 180L;

    private static int idAdd, idMinus;
    /** The window whose keys got their look. */
    private static java.lang.ref.WeakReference<View> done;

    private MasterKeys() {}

    /** The + / − keys under {@code root} get their look (once). */
    public static void install(View root) {
        try {
            if (root == null || (done != null && done.get() == root)) {
                return;
            }
            if (idAdd == 0) {
                String pkg = root.getContext().getPackageName();
                idAdd = root.getResources().getIdentifier("allAdd", "id", pkg);
                idMinus = root.getResources().getIdentifier("allminus", "id", pkg);
            }
            View add = idAdd != 0 ? root.findViewById(idAdd) : null;
            View minus = idMinus != 0 ? root.findViewById(idMinus) : null;
            look(add, true);
            look(minus, false);
            if (add != null && minus != null) {
                done = new java.lang.ref.WeakReference<View>(root);
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("index", "keys: " + t);
        }
    }

    static void look(View v, boolean plus) {
        if (v == null || v.getBackground() instanceof Key) {
            return;
        }
        v.setBackground(new Key(v.getResources().getDisplayMetrics().density, plus));
        if (v instanceof android.widget.TextView) {
            ((android.widget.TextView) v).setText("");
        }
    }

    /** A round key: pale tint + rim + sign; pressed (and {@link #AFTER_MS} after) full colour, white sign. */
    static final class Key extends Drawable implements Runnable {
        final float d;
        final boolean plus;
        final int color;
        final Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
        boolean pressed;
        long releasedAt;

        Key(float density, boolean plus) {
            d = density;
            this.plus = plus;
            color = plus ? RED : GREEN;
        }

        public boolean isStateful() {
            return true;
        }

        protected boolean onStateChange(int[] state) {
            boolean now = false;
            for (int s : state) {
                if (s == android.R.attr.state_pressed) {
                    now = true;
                }
            }
            if (now == pressed) {
                return false;
            }
            pressed = now;
            if (!now) {
                releasedAt = SystemClock.uptimeMillis();
                scheduleSelf(this, releasedAt + AFTER_MS + 10L);
            }
            invalidateSelf();
            return true;
        }

        public void run() {
            invalidateSelf();
        }

        public void draw(Canvas c) {
            Rect r = getBounds();
            float cx = r.exactCenterX();
            float cy = r.exactCenterY();
            float rad = Math.min(r.width(), r.height()) / 2f - 1f * d;
            if (rad <= 0f) {
                return;
            }
            boolean full = pressed || SystemClock.uptimeMillis() - releasedAt < AFTER_MS;
            p.setStyle(Paint.Style.FILL);
            p.setColor(color);
            p.setAlpha(full ? 255 : 0x30);
            c.drawCircle(cx, cy, rad, p);
            if (!full) {
                p.setStyle(Paint.Style.STROKE);
                p.setStrokeWidth(1.5f * d);
                p.setAlpha(0x8C);
                c.drawCircle(cx, cy, rad - 0.75f * d, p);
            }
            p.setStyle(Paint.Style.STROKE);
            p.setStrokeCap(Paint.Cap.ROUND);
            p.setStrokeWidth(Math.max(2.5f * d, rad * 0.14f));
            p.setColor(full ? 0xFFFFFFFF : color);
            p.setAlpha(full ? 255 : 0xE0);
            float arm = rad * 0.42f;
            c.drawLine(cx - arm, cy, cx + arm, cy, p);
            if (plus) {
                c.drawLine(cx, cy - arm, cx, cy + arm, p);
            }
        }

        public void setAlpha(int alpha) {
        }

        public void setColorFilter(ColorFilter cf) {
        }

        public int getOpacity() {
            return PixelFormat.TRANSLUCENT;
        }
    }
}
