package com.isaigu.gymapp.ai;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;

/**
 * A floating card (the exercise card of Auto and of a map run) the trainer moves and sizes with the fingers:
 * one finger drags it anywhere on the screen, two fingers pinch it smaller or spread it bigger (60–180 %).
 * Taps still reach the card's buttons. Position and size are kept per card (prefs xems_float) for the next time.
 * The window is a Dialog with gravity TOP | CENTER_HORIZONTAL: x is the offset from the centre, y from the top.
 * The content is laid out at its base width and drawn scaled, so text and figure grow together.
 */
public final class FloatCard extends FrameLayout {
    static final float MIN_SCALE = 0.6f;
    static final float MAX_SCALE = 1.8f;
    private static final String PREFS = "xems_float";

    private final View content;
    private final String key;
    private final int baseWidth;
    private final int slop;
    private float scale = 1f;
    private Window window;

    // gesture
    private boolean dragging;
    private boolean pinching;
    private float downRawX;
    private float downRawY;
    private int startX;
    private int startY;
    private float startDist;
    private float startScale;

    public FloatCard(Context c, View content, String key, int baseWidthPx) {
        super(c);
        this.content = content;
        this.key = key;
        this.baseWidth = Math.max(1, baseWidthPx);
        this.slop = ViewConfiguration.get(c).getScaledTouchSlop();
        addView(content, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT));
        setClipChildren(false);
    }

    /** After dialog.show(): size and place the window from the saved values. */
    public void attach(Window w) {
        window = w;
        if (w == null) {
            return;
        }
        SharedPreferences p = getContext().getSharedPreferences(PREFS, Context.MODE_PRIVATE);
        scale = clampScale(p.getFloat(key + "_s", 1f));
        WindowManager.LayoutParams lp = w.getAttributes();
        lp.x = p.getInt(key + "_x", lp.x);
        lp.y = p.getInt(key + "_y", lp.y);
        lp.width = width();
        lp.height = ViewGroup.LayoutParams.WRAP_CONTENT;
        clamp(lp);
        w.setAttributes(lp);
    }

    private int width() {
        DisplayMetrics dm = getResources().getDisplayMetrics();
        return Math.min(dm.widthPixels, Math.round(baseWidth * scale));
    }

    private static float clampScale(float s) {
        return Math.max(MIN_SCALE, Math.min(MAX_SCALE, s));
    }

    /** Keeps at least a grip of the card on the screen. */
    private void clamp(WindowManager.LayoutParams lp) {
        DisplayMetrics dm = getResources().getDisplayMetrics();
        int w = width();
        int h = Math.max(getHeight(), Math.round(dm.density * 80));
        int grip = Math.round(dm.density * 80);
        int maxX = (dm.widthPixels + w) / 2 - grip;
        lp.x = Math.max(-maxX, Math.min(maxX, lp.x));
        lp.y = Math.max(0, Math.min(dm.heightPixels - Math.min(h, grip), lp.y));
    }

    @Override
    protected void onMeasure(int widthSpec, int heightSpec) {
        int w = MeasureSpec.getSize(widthSpec);
        if (MeasureSpec.getMode(widthSpec) == MeasureSpec.UNSPECIFIED || w <= 0) {
            w = width();
        }
        int inner = Math.max(1, Math.round(w / scale));
        content.measure(MeasureSpec.makeMeasureSpec(inner, MeasureSpec.EXACTLY),
                MeasureSpec.makeMeasureSpec(0, MeasureSpec.UNSPECIFIED));
        setMeasuredDimension(w, Math.round(content.getMeasuredHeight() * scale));
    }

    @Override
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        content.layout(0, 0, content.getMeasuredWidth(), content.getMeasuredHeight());
        content.setPivotX(0);
        content.setPivotY(0);
        content.setScaleX(scale);
        content.setScaleY(scale);
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent e) {
        switch (e.getActionMasked()) {
            case MotionEvent.ACTION_DOWN:
                begin(e);
                return false;
            case MotionEvent.ACTION_POINTER_DOWN:
                beginPinch(e);
                return true;
            case MotionEvent.ACTION_MOVE:
                if (e.getPointerCount() >= 2) {
                    return true;
                }
                if (Math.abs(e.getRawX() - downRawX) > slop || Math.abs(e.getRawY() - downRawY) > slop) {
                    dragging = true;
                    return true;
                }
                return false;
            default:
                return false;
        }
    }

    @Override
    public boolean onTouchEvent(MotionEvent e) {
        if (window == null) {
            return false;
        }
        try {
            switch (e.getActionMasked()) {
                case MotionEvent.ACTION_DOWN:
                    begin(e);
                    return true;
                case MotionEvent.ACTION_POINTER_DOWN:
                    beginPinch(e);
                    return true;
                case MotionEvent.ACTION_MOVE:
                    if (pinching && e.getPointerCount() >= 2) {
                        float d = dist(e);
                        if (startDist > 0 && d > 0) {
                            float s = clampScale(startScale * d / startDist);
                            if (Math.abs(s - scale) > 0.005f) {
                                scale = s;
                                WindowManager.LayoutParams lp = window.getAttributes();
                                lp.width = width();
                                clamp(lp);
                                window.setAttributes(lp);
                                requestLayout();
                            }
                        }
                    } else if (!pinching) {
                        if (!dragging && (Math.abs(e.getRawX() - downRawX) > slop
                                || Math.abs(e.getRawY() - downRawY) > slop)) {
                            dragging = true;
                        }
                        if (dragging) {
                            WindowManager.LayoutParams lp = window.getAttributes();
                            lp.x = startX + Math.round(e.getRawX() - downRawX);
                            lp.y = startY + Math.round(e.getRawY() - downRawY);
                            clamp(lp);
                            window.setAttributes(lp);
                        }
                    }
                    return true;
                case MotionEvent.ACTION_POINTER_UP:
                    if (e.getPointerCount() <= 2) {
                        pinching = false;
                        // the finger left on the glass carries on as a drag from here
                        int keep = e.getActionIndex() == 0 ? 1 : 0;
                        downRawX = e.getX(keep) + rawOffsetX(e);
                        downRawY = e.getY(keep) + rawOffsetY(e);
                        WindowManager.LayoutParams lp = window.getAttributes();
                        startX = lp.x;
                        startY = lp.y;
                        dragging = true;
                    }
                    return true;
                case MotionEvent.ACTION_UP:
                case MotionEvent.ACTION_CANCEL:
                    if (dragging || pinching) {
                        save();
                    }
                    dragging = false;
                    pinching = false;
                    return true;
                default:
                    return true;
            }
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("FloatCard.touch", t);
            return false;
        }
    }

    private void begin(MotionEvent e) {
        dragging = false;
        pinching = false;
        downRawX = e.getRawX();
        downRawY = e.getRawY();
        if (window != null) {
            WindowManager.LayoutParams lp = window.getAttributes();
            startX = lp.x;
            startY = lp.y;
        }
    }

    private void beginPinch(MotionEvent e) {
        if (e.getPointerCount() < 2) {
            return;
        }
        pinching = true;
        dragging = false;
        startDist = dist(e);
        startScale = scale;
    }

    /** Raw = local + (raw − local) of the first pointer (the window does not move during a pinch). */
    private static float rawOffsetX(MotionEvent e) {
        return e.getRawX() - e.getX(0);
    }

    private static float rawOffsetY(MotionEvent e) {
        return e.getRawY() - e.getY(0);
    }

    private static float dist(MotionEvent e) {
        float dx = e.getX(0) - e.getX(1);
        float dy = e.getY(0) - e.getY(1);
        return (float) Math.sqrt(dx * dx + dy * dy);
    }

    private void save() {
        if (window == null) {
            return;
        }
        try {
            WindowManager.LayoutParams lp = window.getAttributes();
            getContext().getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit()
                    .putInt(key + "_x", lp.x).putInt(key + "_y", lp.y).putFloat(key + "_s", scale).apply();
        } catch (Throwable ignored) {
        }
    }
}
