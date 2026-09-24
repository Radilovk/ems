package com.isaigu.gymapp.dialog;

import android.app.Activity;
import android.graphics.Typeface;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.train.utils.MusicDiagLog;
import com.isaigu.gymapp.train.utils.MusicSync;
import com.isaigu.gymapp.widget.MusicVisualizerView;
import com.isaigu.gymapp.widget.TimerRingView;
import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsUi;

/**
 * Compact music player — the same floating dial as the interval timer and the HR dial:
 * 192 dp ring (track progress; drag along the ring to seek), visualizer inside, big elapsed time in
 * the centre (tap = play / pause), title below, round buttons outside the ring at 1:30 (✕ close),
 * 3:00 (⏭ next) and 4:30 (☰ full player). Drag the inner area to move the dial.
 */
final class MusicDial {
    private static final int SIZE_DP = 192;
    private static final int BTN_DP = 45;
    private static final int GAP_DP = 5;
    private static final int FRAME_DP = SIZE_DP + 2 * (GAP_DP + BTN_DP);
    /** Same button drawables as the timer / HR dial. */
    private static final String DRAWABLE_RED = "round_circle_drawable_r20_red";
    private static final String DRAWABLE_GREEN = "light_green_button_drawable_r30";
    private static final String DRAWABLE_YELLOW = "light_yellow_button_drawable_r30";

    private static android.support.v7.app.AlertDialog dialog;
    private static TimerRingView ring;
    private static MusicVisualizerView viz;
    private static TextView time;
    /** Drawn ▶ when idle (the font glyph sits off-centre). */
    private static View playView;
    private static TextView title;
    private static int lastX = Integer.MIN_VALUE;
    private static int lastY;

    private MusicDial() {}

    static boolean isShowing() {
        try {
            return dialog != null && dialog.isShowing();
        } catch (Throwable t) {
            return false;
        }
    }

    static void show(Activity a) {
        if (a == null || a.isFinishing()) {
            return;
        }
        if (dialog != null) {
            try {
                dialog.show();
                refresh();
                return;
            } catch (Throwable t) {
                dialog = null;
            }
        }
        XemsUi.init(a);
        FrameLayout frame = new FrameLayout(a);
        int framePx = XemsUi.dp(a, FRAME_DP);
        int sizePx = XemsUi.dp(a, SIZE_DP);

        FrameLayout host = new FrameLayout(a);
        ring = new TimerRingView(a);
        ring.setMaxDiameterDp(SIZE_DP);
        ring.setProgressColor(XemsUi.GO_TEXT);
        host.addView(ring, new FrameLayout.LayoutParams(sizePx, sizePx));
        viz = new MusicVisualizerView(a);
        viz.setAlpha(0.32f);
        host.addView(viz, new FrameLayout.LayoutParams(sizePx, sizePx));
        LinearLayout center = XemsUi.vertical(a);
        center.setGravity(Gravity.CENTER);
        time = XemsUi.text(a, "0:00", 44, XemsUi.TEXT, true);
        time.setGravity(Gravity.CENTER);
        time.setLetterSpacing(-0.03f);
        center.addView(time);
        playView = new View(a);
        playView.setBackground(new com.isaigu.gymapp.widget.XemsIcon(
                com.isaigu.gymapp.widget.XemsIcon.PLAY, XemsUi.GO_TEXT));
        playView.setVisibility(View.GONE);
        center.addView(playView, new LinearLayout.LayoutParams(XemsUi.dp(a, 52), XemsUi.dp(a, 52)));
        title = XemsUi.text(a, "", 12.5f, XemsUi.MUTED, false);
        title.setGravity(Gravity.CENTER);
        title.setMaxLines(2);
        title.setEllipsize(android.text.TextUtils.TruncateAt.END);
        title.setMaxWidth(XemsUi.dp(a, 120));
        title.setPadding(0, XemsUi.dp(a, 4), 0, 0);
        center.addView(title);
        FrameLayout.LayoutParams cl = new FrameLayout.LayoutParams(
                FrameLayout.LayoutParams.WRAP_CONTENT, FrameLayout.LayoutParams.WRAP_CONTENT, Gravity.CENTER);
        host.addView(center, cl);
        host.setOnTouchListener(new DialTouch());
        frame.addView(host, new FrameLayout.LayoutParams(sizePx, sizePx, Gravity.CENTER));

        addButton(a, frame, "×", 22, DRAWABLE_RED, 45f, new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                MusicPlayerHelper.closeFromDial();
            }
        });
        addButton(a, frame, "⏭", 18, DRAWABLE_GREEN, 90f, new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                MusicPlayerHelper.skipTrack(+1);
            }
        });
        addButton(a, frame, "☰", 18, DRAWABLE_YELLOW, 135f, new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                MusicPlayerHelper.openFull(MusicPlayerHelper.resolveHostActivity(v));
            }
        });

        try {
            android.support.v7.app.AlertDialog.Builder b = new android.support.v7.app.AlertDialog.Builder(a);
            FrameLayout wrapper = new FrameLayout(a);
            wrapper.addView(frame, new FrameLayout.LayoutParams(framePx, framePx));
            b.setView(wrapper);
            dialog = b.create();
            dialog.setCancelable(false);
            dialog.setCanceledOnTouchOutside(false);
            dialog.show();
            Window w = dialog.getWindow();
            if (w != null) {
                w.setBackgroundDrawableResource(android.R.color.transparent);
                w.setGravity(Gravity.TOP | Gravity.START);
                w.setLayout(framePx, framePx);
                WindowManager.LayoutParams lp = w.getAttributes();
                lp.width = framePx;
                lp.height = framePx;
                lp.x = lastX != Integer.MIN_VALUE ? lastX : XemsUi.dp(a, 20);
                lp.y = lastX != Integer.MIN_VALUE ? lastY : XemsUi.dp(a, 300);
                lp.dimAmount = 0f;
                lp.flags = (lp.flags | WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE
                        | WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL)
                        & ~WindowManager.LayoutParams.FLAG_DIM_BEHIND;
                w.clearFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND);
                w.setAttributes(lp);
            }
            refresh();
        } catch (Throwable t) {
            MusicDiagLog.logError("music_dial_show", t);
            dialog = null;
        }
    }

    private static void addButton(Activity a, FrameLayout frame, String glyph, float sp, String bg, float angle,
            View.OnClickListener l) {
        TextView b = XemsUi.text(a, glyph, sp, 0xFFFFFFFF, true);
        b.setGravity(Gravity.CENTER);
        int id = 0;
        try {
            id = a.getResources().getIdentifier(bg, "drawable", a.getPackageName());
        } catch (Throwable ignored) {
        }
        if (id != 0) {
            b.setBackgroundResource(id);
        } else {
            b.setBackgroundDrawable(XemsUi.rounded(XemsUi.GO, XemsUi.dp(a, 23), 0, 0));
        }
        b.setElevation(4f);
        b.setOnClickListener(l);
        XemsUi.pressable(b);
        int btn = XemsUi.dp(a, BTN_DP);
        float r = XemsUi.dp(a, SIZE_DP) / 2f + XemsUi.dp(a, GAP_DP) + btn / 2f;
        float c = XemsUi.dp(a, FRAME_DP) / 2f;
        double rad = Math.toRadians(angle);
        FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(btn, btn);
        lp.gravity = Gravity.TOP | Gravity.START;
        lp.leftMargin = Math.round(c + r * (float) Math.sin(rad) - btn / 2f);
        lp.topMargin = Math.round(c - r * (float) Math.cos(rad) - btn / 2f);
        frame.addView(b, lp);
    }

    static void dismiss() {
        if (dialog != null) {
            try {
                Window w = dialog.getWindow();
                if (w != null) {
                    lastX = w.getAttributes().x;
                    lastY = w.getAttributes().y;
                }
                dialog.dismiss();
            } catch (Throwable ignored) {
            }
        }
        dialog = null;
        ring = null;
        viz = null;
        time = null;
        playView = null;
        title = null;
    }

    /** Progress, time, title, play state and visualizer level. */
    static void refresh() {
        if (ring == null || time == null) {
            return;
        }
        try {
            int dur = MusicSync.getPlaybackDurationMs();
            int pos = MusicSync.getPlaybackPositionMs();
            boolean running = MusicSync.isRunning() && MusicSync.isPlayerMode();
            boolean playing = running && !MusicSync.isPlaybackPaused();
            ring.setElapsedFraction(dur > 0 ? Math.min(1f, pos / (float) dur) : 0f);
            ring.setProgressColor(playing ? XemsUi.GO_TEXT : XemsUi.AMBER);
            time.setText(running ? fmt(pos) : "");
            time.setVisibility(running ? View.VISIBLE : View.GONE);
            if (playView != null) {
                playView.setVisibility(running ? View.GONE : View.VISIBLE);
            }
            time.setTextColor(playing ? XemsUi.TEXT : XemsUi.GO_TEXT);
            String t = MusicPlayerHelper.currentTitle();
            title.setText(MusicSync.isPlayerPreparing()
                    ? IntervalTimerHelper.tr("зарежда…", "loading…")
                    : (running && !playing ? "❚❚  " : "") + (t != null ? t : IntervalTimerHelper.tr("Няма песен — ☰", "No song — ☰")));
            if (viz != null) {
                viz.setPlaying(playing);
                if (playing) {
                    viz.setLiveLevel(MusicSync.getLiveStrength());
                }
            }
        } catch (Throwable t) {
            XemsGuard.report("MusicDial.refresh", t);
        }
    }

    private static String fmt(int ms) {
        int s = Math.max(0, ms / 1000);
        return (s / 60) + ":" + (s % 60 < 10 ? "0" : "") + (s % 60);
    }

    /** Ring band (outer 30 %) = seek; inside = move the dial; a tap inside = play / pause. */
    static final class DialTouch implements View.OnTouchListener {
        private boolean seeking;
        private boolean moved;
        private float downRawX;
        private float downRawY;
        private float dx;
        private float dy;

        @Override
        public boolean onTouch(View v, MotionEvent e) {
            try {
                return handle(v, e);
            } catch (Throwable t) {
                XemsGuard.report("MusicDial.touch", t);
                return false;
            }
        }

        private boolean handle(View v, MotionEvent e) {
            float cx = v.getWidth() / 2f;
            float cy = v.getHeight() / 2f;
            float x = e.getX() - cx;
            float y = e.getY() - cy;
            float r = (float) Math.sqrt(x * x + y * y);
            switch (e.getActionMasked()) {
                case MotionEvent.ACTION_DOWN:
                    seeking = r > 0.70f * cx && MusicSync.getPlaybackDurationMs() > 0;
                    moved = false;
                    downRawX = e.getRawX();
                    downRawY = e.getRawY();
                    if (!seeking && dialog != null && dialog.getWindow() != null) {
                        WindowManager.LayoutParams lp = dialog.getWindow().getAttributes();
                        dx = e.getRawX() - lp.x;
                        dy = e.getRawY() - lp.y;
                    }
                    if (seeking) {
                        seekTo(x, y);
                    }
                    return true;
                case MotionEvent.ACTION_MOVE:
                    if (seeking) {
                        seekTo(x, y);
                        return true;
                    }
                    float mx = e.getRawX() - downRawX;
                    float my = e.getRawY() - downRawY;
                    if (mx * mx + my * my > XemsUi.dp(v.getContext(), 10) * XemsUi.dp(v.getContext(), 10)) {
                        moved = true;
                    }
                    if (moved && dialog != null && dialog.getWindow() != null) {
                        WindowManager.LayoutParams lp = dialog.getWindow().getAttributes();
                        lp.x = (int) (e.getRawX() - dx);
                        lp.y = (int) (e.getRawY() - dy);
                        dialog.getWindow().setAttributes(lp);
                    }
                    return true;
                case MotionEvent.ACTION_UP:
                    if (!seeking && !moved) {
                        XemsUi.haptic(v);
                        MusicPlayerHelper.togglePlayPause();
                    }
                    seeking = false;
                    return true;
                default:
                    seeking = false;
                    return true;
            }
        }

        private void seekTo(float x, float y) {
            int dur = MusicSync.getPlaybackDurationMs();
            if (dur <= 0) {
                return;
            }
            double ang = Math.atan2(x, -y);            // 0 at 12 o'clock, clockwise
            if (ang < 0) {
                ang += 2 * Math.PI;
            }
            int pos = (int) (ang / (2 * Math.PI) * dur);
            MusicSync.seekPlaybackTo(pos);
            refresh();
        }
    }
}
