package com.isaigu.gymapp.dialog;

import android.app.Activity;
import android.media.AudioManager;
import android.media.ToneGenerator;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.InputType;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.isaigu.gymapp.MainActivity;
import com.isaigu.gymapp.train.TrainItemManager;
import com.isaigu.gymapp.widget.AmountView;

/**
 * Master-panel interval timer: configurable loops, sync with training start/pause/stop,
 * draggable countdown overlay.
 */
public final class IntervalTimerHelper {
    static final int BUTTON_ID = 0x7f090230;
    static final int ALL_STOP_ID = 0x7f09003c;
    static final int DIALOG_LAYOUT_ID = 0x7f0b0079;
    static final int OVERLAY_LAYOUT_ID = 0x7f0b007a;

    private static final int ID_MINUTES = 0x7f090231;
    private static final int ID_SECONDS = 0x7f090232;
    private static final int ID_LOOPS = 0x7f090233;
    private static final int ID_LOOPS_MINUS = 0x7f090234;
    private static final int ID_LOOPS_PLUS = 0x7f090235;
    private static final int ID_ACTIVATE = 0x7f090236;
    private static final int ID_STATUS = 0x7f090237;
    private static final int ID_COUNTDOWN = 0x7f090239;
    private static final int ID_LOOP_LABEL = 0x7f09023a;

    private static final int STR_STATUS_IDLE = 0x7f0d0120;
    private static final int STR_STATUS_ARMED = 0x7f0d0121;
    private static final int STR_STATUS_RUNNING = 0x7f0d0122;
    private static final int STR_INVALID_DURATION = 0x7f0d0127;
    private static final int STR_ERROR = 0x7f0d0128;

    private static final long TICK_MS = 250L;
    private static final int OPACITY_DIALOG_BG = 0x7f080069;

    private static android.support.v7.app.AlertDialog configDialog;
    private static View configContent;
    private static AmountView minutesView;
    private static AmountView secondsView;
    private static EditText loopsInput;
    private static TextView statusView;

    private static View overlayRoot;
    private static TextView countdownView;
    private static TextView loopLabelView;

    private static View allStopButton;
    private static View panelRoot;
    private static Activity hostActivity;
    private static TrainItemManager itemManager;

    private static final Handler handler = new Handler(Looper.getMainLooper());
    private static final Runnable tickRunnable = new TickRunnable();

    private static boolean armed;
    private static boolean overlayVisible;
    private static boolean countdownRunning;
    private static boolean trainingRunning;

    private static long intervalMs = 60000L;
    private static int maxLoops;
    private static int currentLoop;
    private static long remainingMs;
    private static long lastTickRealtime;

    private static float overlayTouchDx;
    private static float overlayTouchDy;

    private IntervalTimerHelper() {
    }

    public static void attachMasterPanel(View root, TrainItemManager manager) {
        if (root == null || manager == null) {
            return;
        }
        panelRoot = root;
        itemManager = manager;
        allStopButton = root.findViewById(ALL_STOP_ID);
        View button = root.findViewById(BUTTON_ID);
        if (button == null) {
            return;
        }
        hostActivity = MusicPlayerHelper.resolveHostActivity(root);
        button.setClickable(true);
        button.setEnabled(true);
        button.setFocusable(true);
        button.setOnClickListener(new MasterToggleListener());
    }

    /** Called from NewTrainFragment after startOrStopAll(). */
    public static void onTrainingRunningChanged(boolean running) {
        trainingRunning = running;
        if (!armed) {
            updateOverlayVisibility();
            return;
        }
        if (running) {
            if (!countdownRunning) {
                if (currentLoop <= 0) {
                    currentLoop = 1;
                    remainingMs = intervalMs;
                    playBeep();
                }
                countdownRunning = true;
                lastTickRealtime = SystemClock.elapsedRealtime();
                handler.removeCallbacks(tickRunnable);
                handler.post(tickRunnable);
            }
        } else if (countdownRunning) {
            countdownRunning = false;
            handler.removeCallbacks(tickRunnable);
        }
        refreshStatusText();
        refreshOverlayText();
        updateOverlayVisibility();
    }

    /** Called from NewTrainFragment allStop handler. */
    public static void onTrainingStop() {
        resetAll();
    }

    private static void resetAll() {
        armed = false;
        countdownRunning = false;
        trainingRunning = false;
        currentLoop = 0;
        remainingMs = intervalMs;
        overlayVisible = false;
        handler.removeCallbacks(tickRunnable);
        dismissConfigDialog(false);
        detachOverlay();
        refreshStatusText();
    }

    private static void armFromConfig() {
        int minutes = readAmount(minutesView, 0, 59);
        int seconds = readAmount(secondsView, 0, 59);
        if (minutes == 0 && seconds == 0) {
            toast(STR_INVALID_DURATION);
            return;
        }
        intervalMs = ((minutes * 60L) + seconds) * 1000L;
        maxLoops = readLoopsInput();
        currentLoop = 0;
        remainingMs = intervalMs;
        armed = true;
        overlayVisible = true;
        countdownRunning = false;
        refreshStatusText();
        dismissConfigDialog(false);
        if (!ensureOverlay()) {
            armed = false;
            overlayVisible = false;
            toast(STR_ERROR);
            return;
        }
        refreshOverlayText();
        updateOverlayVisibility();
        if (trainingRunning) {
            onTrainingRunningChanged(true);
        }
    }

    private static void toggleMasterPanel() {
        Activity activity = resolveActivity();
        if (activity == null) {
            return;
        }
        hostActivity = activity;
        if (!armed) {
            showConfigDialog(activity);
            return;
        }
        overlayVisible = !overlayVisible;
        if (overlayVisible) {
            if (ensureOverlay()) {
                refreshOverlayText();
                updateOverlayVisibility();
            }
        } else {
            updateOverlayVisibility();
        }
    }

    private static Activity resolveActivity() {
        Activity activity = hostActivity;
        if (activity == null && panelRoot != null) {
            activity = MusicPlayerHelper.resolveHostActivity(panelRoot);
        }
        if (activity == null) {
            activity = MainActivity.getInstance();
        }
        return activity;
    }

    private static void showConfigDialog(Activity activity) {
        hostActivity = activity;
        dismissConfigDialog(false);
        View content;
        try {
            content = LayoutInflater.from(activity).inflate(DIALOG_LAYOUT_ID, null);
        } catch (Throwable t) {
            toast(STR_ERROR);
            return;
        }
        configContent = content;
        minutesView = (AmountView) content.findViewById(ID_MINUTES);
        secondsView = (AmountView) content.findViewById(ID_SECONDS);
        loopsInput = (EditText) content.findViewById(ID_LOOPS);
        statusView = (TextView) content.findViewById(ID_STATUS);
        configureDurationPicker(minutesView, 0, 59, 1, 1);
        configureDurationPicker(secondsView, 0, 59, 5, 0);
        if (loopsInput != null) {
            loopsInput.setInputType(InputType.TYPE_CLASS_NUMBER);
            loopsInput.setText(String.valueOf(maxLoops));
        }
        bindButton(content.findViewById(ID_LOOPS_MINUS), new LoopsAdjustListener(-1));
        bindButton(content.findViewById(ID_LOOPS_PLUS), new LoopsAdjustListener(1));
        bindButton(content.findViewById(ID_ACTIVATE), new ActivateListener());
        refreshStatusText();
        android.support.v7.app.AlertDialog.Builder builder =
                new android.support.v7.app.AlertDialog.Builder(activity);
        builder.setView(content);
        builder.setOnDismissListener(new ConfigDismissListener());
        configDialog = builder.create();
        configDialog.setCancelable(true);
        configDialog.setCanceledOnTouchOutside(true);
        applyOpaqueWindow(configDialog);
        configDialog.show();
    }

    private static void dismissConfigDialog(boolean fromDismissListener) {
        if (configDialog != null) {
            try {
                configDialog.dismiss();
            } catch (Throwable ignored) {
            }
            if (!fromDismissListener) {
                configDialog = null;
                configContent = null;
            }
        }
    }

    private static void applyOpaqueWindow(android.support.v7.app.AlertDialog dialog) {
        if (dialog == null || dialog.getWindow() == null) {
            return;
        }
        try {
            dialog.getWindow().setBackgroundDrawableResource(OPACITY_DIALOG_BG);
        } catch (Throwable ignored) {
        }
    }

    /** Add draggable overlay directly to the activity decor (no full-screen touch blocker). */
    private static boolean ensureOverlay() {
        Activity activity = resolveActivity();
        if (activity == null) {
            return false;
        }
        hostActivity = activity;
        if (overlayRoot != null && overlayRoot.getParent() != null) {
            return true;
        }
        detachOverlay();
        View decor = activity.getWindow().getDecorView();
        if (!(decor instanceof FrameLayout)) {
            return false;
        }
        FrameLayout decorFrame = (FrameLayout) decor;
        try {
            overlayRoot = LayoutInflater.from(activity).inflate(OVERLAY_LAYOUT_ID, decorFrame, false);
        } catch (Throwable t) {
            overlayRoot = null;
            return false;
        }
        if (overlayRoot == null) {
            return false;
        }
        countdownView = (TextView) overlayRoot.findViewById(ID_COUNTDOWN);
        loopLabelView = (TextView) overlayRoot.findViewById(ID_LOOP_LABEL);
        overlayRoot.setClickable(true);
        overlayRoot.setFocusable(false);
        overlayRoot.setOnTouchListener(new OverlayDragListener());
        FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.gravity = Gravity.TOP | Gravity.START;
        lp.leftMargin = dp(activity, 24);
        lp.topMargin = dp(activity, 96);
        decorFrame.addView(overlayRoot, lp);
        return true;
    }

    private static void detachOverlay() {
        if (overlayRoot != null) {
            try {
                ViewGroup parent = (ViewGroup) overlayRoot.getParent();
                if (parent != null) {
                    parent.removeView(overlayRoot);
                }
            } catch (Throwable ignored) {
            }
        }
        overlayRoot = null;
        countdownView = null;
        loopLabelView = null;
    }

    private static void updateOverlayVisibility() {
        if (overlayRoot == null) {
            return;
        }
        overlayRoot.setVisibility(armed && overlayVisible ? View.VISIBLE : View.GONE);
    }

    private static void refreshOverlayText() {
        if (countdownView == null) {
            return;
        }
        countdownView.setText(formatRemaining(remainingMs > 0 ? remainingMs : intervalMs));
        if (loopLabelView != null) {
            if (!armed) {
                loopLabelView.setText("");
            } else if (maxLoops <= 0) {
                int shownLoop = currentLoop > 0 ? currentLoop : 1;
                loopLabelView.setText("∞  #" + shownLoop);
            } else {
                int shownLoop = currentLoop > 0 ? currentLoop : 1;
                loopLabelView.setText("#" + shownLoop + " / " + maxLoops);
            }
        }
    }

    private static void refreshStatusText() {
        if (statusView == null) {
            return;
        }
        if (!armed) {
            statusView.setText(STR_STATUS_IDLE);
        } else if (countdownRunning) {
            statusView.setText(STR_STATUS_RUNNING);
        } else {
            statusView.setText(STR_STATUS_ARMED);
        }
    }

    private static void onIntervalFinished() {
        if (maxLoops > 0 && currentLoop >= maxLoops) {
            triggerAllStop();
            return;
        }
        currentLoop++;
        remainingMs = intervalMs;
        playBeep();
        refreshOverlayText();
    }

    private static void triggerAllStop() {
        handler.post(new Runnable() {
            @Override
            public void run() {
                if (allStopButton != null) {
                    try {
                        allStopButton.performClick();
                        return;
                    } catch (Throwable ignored) {
                    }
                }
                resetAll();
            }
        });
    }

    private static void playBeep() {
        try {
            final ToneGenerator tone = new ToneGenerator(AudioManager.STREAM_NOTIFICATION, 100);
            tone.startTone(ToneGenerator.TONE_PROP_BEEP, 350);
            handler.postDelayed(new Runnable() {
                @Override
                public void run() {
                    try {
                        tone.release();
                    } catch (Throwable ignored) {
                    }
                }
            }, 400L);
        } catch (Throwable ignored) {
        }
    }

    private static String formatRemaining(long ms) {
        if (ms < 0) {
            ms = 0;
        }
        long totalSec = (ms + 999L) / 1000L;
        long min = totalSec / 60L;
        long sec = totalSec % 60L;
        return String.format("%02d:%02d", min, sec);
    }

    private static int readLoopsInput() {
        if (loopsInput == null) {
            return maxLoops;
        }
        try {
            String text = loopsInput.getText().toString().trim();
            if (text.length() == 0) {
                return 0;
            }
            return Math.max(0, Integer.parseInt(text));
        } catch (Throwable ignored) {
            return 0;
        }
    }

    private static void adjustLoops(int delta) {
        int value = readLoopsInput() + delta;
        if (value < 0) {
            value = 0;
        }
        if (loopsInput != null) {
            loopsInput.setText(String.valueOf(value));
        }
    }

    private static int readAmount(AmountView view, int min, int max) {
        if (view == null) {
            return min;
        }
        try {
            int value = view.getAmount();
            if (value < min) {
                return min;
            }
            if (value > max) {
                return max;
            }
            return value;
        } catch (Throwable ignored) {
            return min;
        }
    }

    private static void configureDurationPicker(
            AmountView view, int min, int max, int step, int defaultValue) {
        if (view == null) {
            return;
        }
        try {
            view.setMin(min);
            view.setGoods_storage(max);
            view.setStep(step);
            view.setAmountUnit("");
            view.setAmount(defaultValue);
        } catch (Throwable ignored) {
        }
    }

    private static void bindButton(View view, View.OnClickListener listener) {
        if (view == null) {
            return;
        }
        view.setClickable(true);
        view.setFocusable(true);
        view.setOnClickListener(listener);
    }

    private static int dp(Activity activity, int value) {
        if (activity == null) {
            return value;
        }
        float density = activity.getResources().getDisplayMetrics().density;
        return (int) (value * density + 0.5f);
    }

    private static void toast(int resId) {
        Activity activity = resolveActivity();
        if (activity == null) {
            return;
        }
        try {
            Toast.makeText(activity, resId, Toast.LENGTH_SHORT).show();
        } catch (Throwable ignored) {
        }
    }

    static final class MasterToggleListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            toggleMasterPanel();
        }
    }

    static final class ActivateListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            armFromConfig();
        }
    }

    static final class LoopsAdjustListener implements View.OnClickListener {
        private final int delta;

        LoopsAdjustListener(int delta) {
            this.delta = delta;
        }

        @Override
        public void onClick(View v) {
            adjustLoops(delta);
        }
    }

    static final class ConfigDismissListener implements android.content.DialogInterface.OnDismissListener {
        @Override
        public void onDismiss(android.content.DialogInterface d) {
            configDialog = null;
            configContent = null;
            minutesView = null;
            secondsView = null;
            loopsInput = null;
            statusView = null;
        }
    }

    static final class OverlayDragListener implements View.OnTouchListener {
        @Override
        public boolean onTouch(View v, MotionEvent event) {
            if (overlayRoot == null) {
                return false;
            }
            ViewGroup.LayoutParams raw = overlayRoot.getLayoutParams();
            if (!(raw instanceof FrameLayout.LayoutParams)) {
                return false;
            }
            FrameLayout.LayoutParams lp = (FrameLayout.LayoutParams) raw;
            switch (event.getActionMasked()) {
                case MotionEvent.ACTION_DOWN:
                    overlayTouchDx = event.getRawX() - lp.leftMargin;
                    overlayTouchDy = event.getRawY() - lp.topMargin;
                    return true;
                case MotionEvent.ACTION_MOVE:
                    lp.leftMargin = (int) (event.getRawX() - overlayTouchDx);
                    lp.topMargin = (int) (event.getRawY() - overlayTouchDy);
                    overlayRoot.setLayoutParams(lp);
                    return true;
                default:
                    return false;
            }
        }
    }

    static final class TickRunnable implements Runnable {
        @Override
        public void run() {
            if (!armed || !countdownRunning || !trainingRunning) {
                return;
            }
            long now = SystemClock.elapsedRealtime();
            long delta = now - lastTickRealtime;
            lastTickRealtime = now;
            remainingMs -= delta;
            if (remainingMs <= 0L) {
                onIntervalFinished();
            }
            refreshOverlayText();
            handler.postDelayed(tickRunnable, TICK_MS);
        }
    }
}
