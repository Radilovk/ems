package com.isaigu.gymapp.wearable.bluetens;

import android.app.Activity;
import android.app.Dialog;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.widget.XemsFullscreen;
import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsIcon;
import com.isaigu.gymapp.widget.XemsUi;

/**
 * The Bluetens window folded to a pill that floats over XEMS (owner, 2026-10-14: "minimised, Bluetens keeps working;
 * XEMS and Bluetens run together"). The pads keep their program; the pill shows the time left, the program and the
 * strength of each pad, has ■ to stop, follows the finger when dragged (the place is kept), and a tap opens the
 * window again. Touches outside it go to XEMS as if it were not there.
 */
final class BluetensMini {
    static final int TINT = 0xFF34D399;

    final Activity a;
    final BluetensScreen.Page page;
    final SharedPreferences prefs;
    Dialog d;
    View dot;
    TextView time;
    TextView name;
    TextView pads;
    TextView stop;

    BluetensMini(Activity a, BluetensScreen.Page page, SharedPreferences prefs) {
        this.a = a;
        this.page = page;
        this.prefs = prefs;
    }

    int dp(float v) {
        return XemsUi.dp(a, v);
    }

    void build() {
        d = new Dialog(a);
        d.requestWindowFeature(Window.FEATURE_NO_TITLE);
        d.setCancelable(false);
        d.setCanceledOnTouchOutside(false);
        LinearLayout pill = XemsUi.horizontal(a);
        pill.setGravity(Gravity.CENTER_VERTICAL);
        pill.setPadding(dp(8), dp(8), dp(10), dp(8));
        pill.setBackground(XemsUi.rounded(XemsUi.CARD, dp(30), XemsUi.alpha(TINT, 0xAA), dp(1.5f)));
        pill.setElevation(dp(10));

        View icon = new View(a);
        GradientDrawable disc = new GradientDrawable();
        disc.setShape(GradientDrawable.OVAL);
        disc.setColor(XemsUi.alpha(TINT, 0x2E));
        LayerDrawable layers = new LayerDrawable(new Drawable[] {disc, new XemsIcon(XemsIcon.PADS, TINT)});
        int inset = dp(9);
        layers.setLayerInset(1, inset, inset, inset, inset);
        icon.setBackground(layers);
        pill.addView(icon, new LinearLayout.LayoutParams(dp(44), dp(44)));

        LinearLayout texts = XemsUi.vertical(a);
        LinearLayout top = XemsUi.horizontal(a);
        top.setGravity(Gravity.CENTER_VERTICAL);
        dot = new View(a);
        dot.setBackground(XemsUi.rounded(TINT, dp(5), 0, 0));
        top.addView(dot, new LinearLayout.LayoutParams(dp(10), dp(10)));
        time = XemsUi.text(a, "", 22, XemsUi.TEXT, true);
        time.setIncludeFontPadding(false);
        LinearLayout.LayoutParams tp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        tp.leftMargin = dp(7);
        top.addView(time, tp);
        pads = XemsUi.text(a, "", 15, TINT, true);
        LinearLayout.LayoutParams pp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        pp.leftMargin = dp(10);
        top.addView(pads, pp);
        texts.addView(top);
        name = XemsUi.text(a, "", 12.5f, XemsUi.MUTED, false);
        name.setSingleLine(true);
        name.setMaxWidth(dp(220));
        name.setEllipsize(android.text.TextUtils.TruncateAt.END);
        texts.addView(name);
        LinearLayout.LayoutParams xp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        xp.leftMargin = dp(10);
        pill.addView(texts, xp);

        stop = XemsUi.iconButton(a, "■", XemsUi.DANGER, XemsUi.ON_ACCENT, 40);
        stop.setOnClickListener(new Stop(page));
        LinearLayout.LayoutParams sp = new LinearLayout.LayoutParams(dp(40), dp(40));
        sp.leftMargin = dp(12);
        pill.addView(stop, sp);
        TextView open = XemsUi.text(a, "›", 26, XemsUi.MUTED, true);
        open.setPadding(dp(10), 0, dp(4), 0);
        pill.addView(open);

        pill.setOnTouchListener(new Drag(this));
        d.setContentView(pill);
        Window w = d.getWindow();
        if (w != null) {
            w.setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
            w.setLayout(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            w.clearFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND);
            // XEMS stays usable around the pill: touches outside go to it, and it never takes the keys
            w.addFlags(WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL | WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE
                    | WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS);
            WindowManager.LayoutParams lp = w.getAttributes();
            lp.gravity = Gravity.TOP | Gravity.LEFT;
            android.util.DisplayMetrics dm = a.getResources().getDisplayMetrics();
            lp.x = prefs.getInt("mini_x", (int) (dm.widthPixels * 0.56f));
            lp.y = prefs.getInt("mini_y", dp(14));
            lp.x = Math.max(0, Math.min(dm.widthPixels - dp(120), lp.x));
            lp.y = Math.max(0, Math.min(dm.heightPixels - dp(70), lp.y));
            lp.windowAnimations = 0;
            w.setAttributes(lp);
        }
        XemsFullscreen.immersive(pill);
    }

    void show() {
        if (d == null) {
            build();
        }
        if (!d.isShowing()) {
            d.show();
            View root = d.getWindow() != null ? d.getWindow().getDecorView() : null;
            if (root != null) {
                XemsFullscreen.immersive(root);
                root.setAlpha(0f);
                root.setScaleX(0.85f);
                root.setScaleY(0.85f);
                root.animate().alpha(1f).scaleX(1f).scaleY(1f).setDuration(180).start();
            }
        }
    }

    void hide() {
        try {
            if (d != null && d.isShowing()) {
                d.dismiss();
            }
        } catch (Throwable ignored) {
        }
        d = null;
    }

    boolean showing() {
        return d != null && d.isShowing();
    }

    /** The pill's state: time left, what runs, each pad's strength. */
    void update(String clock, String program, String strengths, boolean running, boolean done) {
        if (d == null) {
            return;
        }
        time.setText(done && !running ? "✓" : clock);
        time.setTextColor(done && !running ? XemsUi.GO_TEXT : XemsUi.TEXT);
        name.setText(program);
        pads.setText(strengths);
        pads.setVisibility(running && strengths.length() > 0 ? View.VISIBLE : View.GONE);
        stop.setVisibility(running ? View.VISIBLE : View.GONE);
        dot.setBackground(XemsUi.rounded(running ? TINT : XemsUi.MUTED, dp(5), 0, 0));
        if (running && dot.getAnimation() == null) {
            android.view.animation.AlphaAnimation blink = new android.view.animation.AlphaAnimation(1f, 0.25f);
            blink.setDuration(700);
            blink.setRepeatMode(android.view.animation.Animation.REVERSE);
            blink.setRepeatCount(android.view.animation.Animation.INFINITE);
            dot.startAnimation(blink);
        } else if (!running && dot.getAnimation() != null) {
            dot.clearAnimation();
        }
    }

    void moved(int x, int y) {
        Window w = d != null ? d.getWindow() : null;
        if (w == null) {
            return;
        }
        WindowManager.LayoutParams lp = w.getAttributes();
        lp.x = Math.max(0, x);
        lp.y = Math.max(0, y);
        w.setAttributes(lp);
    }

    void dropped() {
        Window w = d != null ? d.getWindow() : null;
        if (w != null) {
            prefs.edit().putInt("mini_x", w.getAttributes().x).putInt("mini_y", w.getAttributes().y).apply();
        }
    }

    // ------------------------------------------------------------------ named listeners (dx: no anonymous classes)

    /** Drag moves the pill; a tap (no drag) opens the window again. */
    static final class Drag implements View.OnTouchListener {
        final BluetensMini m;
        float downX, downY;
        int startX, startY;
        boolean dragging;

        Drag(BluetensMini m) {
            this.m = m;
        }

        @Override
        public boolean onTouch(View v, MotionEvent e) {
            try {
                Window w = m.d != null ? m.d.getWindow() : null;
                if (w == null) {
                    return false;
                }
                switch (e.getActionMasked()) {
                    case MotionEvent.ACTION_DOWN:
                        downX = e.getRawX();
                        downY = e.getRawY();
                        startX = w.getAttributes().x;
                        startY = w.getAttributes().y;
                        dragging = false;
                        v.animate().scaleX(0.97f).scaleY(0.97f).setDuration(80).start();
                        return true;
                    case MotionEvent.ACTION_MOVE: {
                        float dx = e.getRawX() - downX;
                        float dy = e.getRawY() - downY;
                        if (!dragging && Math.hypot(dx, dy) > ViewConfiguration.get(v.getContext()).getScaledTouchSlop()) {
                            dragging = true;
                        }
                        if (dragging) {
                            m.moved(startX + (int) dx, startY + (int) dy);
                        }
                        return true;
                    }
                    case MotionEvent.ACTION_UP:
                        v.animate().scaleX(1f).scaleY(1f).setDuration(120).start();
                        if (dragging) {
                            m.dropped();
                        } else {
                            m.page.restore();
                        }
                        return true;
                    case MotionEvent.ACTION_CANCEL:
                        v.animate().scaleX(1f).scaleY(1f).setDuration(120).start();
                        return true;
                    default:
                        return false;
                }
            } catch (Throwable t) {
                XemsGuard.report("BluetensMini.drag", t);
                return false;
            }
        }
    }

    static final class Stop implements View.OnClickListener {
        final BluetensScreen.Page page;

        Stop(BluetensScreen.Page page) {
            this.page = page;
        }

        @Override
        public void onClick(View view) {
            page.stopAll();
        }
    }
}
