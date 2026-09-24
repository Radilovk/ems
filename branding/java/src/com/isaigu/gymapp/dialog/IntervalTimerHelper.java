package com.isaigu.gymapp.dialog;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.RingtoneManager;
import android.media.ToneGenerator;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.InputType;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.Locale;

import com.isaigu.gymapp.MainActivity;
import com.isaigu.gymapp.train.TrainItemManager;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.train.utils.MusicDiagLog;
import com.isaigu.gymapp.widget.TimerRingView;
import com.isaigu.gymapp.widget.XemsUi;

/**
 * Master-panel interval timer: floating dial (AlertDialog overlay, never addView on decor) and a
 * settings sheet built with {@link XemsUi} — interval or block program, quick picks, saved
 * programs as chips, signal chips with instant preview.
 */
public final class IntervalTimerHelper {
    static final int BUTTON_ID = 0x7f090230;
    static final int ALL_STOP_ID = 0x7f09003c;
    static final int RIGHT_LAYOUT_ID = 0x7f090155;
    static final int OVERLAY_LAYOUT_ID = 0x7f0b007a;
    static final int PICK_SIGNAL = 0x4256;
    static final int PICK_RINGTONE = 0x4257;

    private static final int ID_COUNTDOWN = 0x7f090239;
    private static final int ID_LOOP_LABEL = 0x7f09023a;
    private static final int ID_RING = 0x7f090243;
    private static final int ID_RESET = 0x7f090278;
    private static final int ID_PAUSE = 0x7f090292;
    private static final int ID_CLOSE = 0x7f090293;
    private static final int ID_DIAL_HOST = 0x7f090294;
    private static final int STR_INFO_TITLE = 0x7f0d0175;
    private static final int STR_INFO_BODY = 0x7f0d0176;
    private static final int STR_TITLE = 0x7f0d0123;
    private static final int STR_ERROR = 0x7f0d0128;
    private static final int STR_INVALID_DURATION = 0x7f0d0127;
    private static final int STR_SOUND_OFF = 0x7f0d012c;
    private static final int STR_SOUND_BEEP = 0x7f0d012d;
    private static final int STR_SOUND_CHIME = 0x7f0d012e;
    private static final int STR_SOUND_BELL = 0x7f0d012f;
    private static final int STR_SOUND_CUSTOM = 0x7f0d0130;
    private static final int STR_SOUND_NO_FILE = 0x7f0d0133;
    private static final int STR_SOUND_PIP = 0x7f0d0152;
    private static final int STR_SOUND_CONFIRM = 0x7f0d0153;
    private static final int STR_SOUND_ALARM = 0x7f0d0154;
    private static final int STR_SOUND_DEVICE = 0x7f0d0155;
    private static final int STR_SOUND_PICK_DEVICE = 0x7f0d0156;
    private static final int STR_BLOCK_EMPTY = 0x7f0d0150;
    private static final int STR_TAB_INTERVAL = 0x7f0d0161;
    private static final int STR_TAB_BLOCK = 0x7f0d0162;
    private static final int STR_NO_TRAINING = 0x7f0d011a;

    private static final int DURATION_MIN_SEC = 5;
    private static final int DURATION_MAX_SEC = 600;
    private static final int TRAIN_MIN_SEC = 60;
    private static final int TRAIN_MAX_SEC = 90 * 60;
    private static final int LOOPS_MAX = 30;
    private static final int[] QUICK_INTERVALS = {20, 30, 45, 60, 90, 120, 180, 300};
    private static final int[] QUICK_LOOPS = {0, 4, 6, 8, 10, 12};

    private static final int SOUND_OFF = 0;
    private static final int SOUND_BEEP = 1;
    private static final int SOUND_CHIME = 2;
    private static final int SOUND_BELL = 3;
    private static final int SOUND_PIP = 4;
    private static final int SOUND_CONFIRM = 5;
    private static final int SOUND_ALARM = 6;
    private static final int SOUND_DEVICE = 7;
    private static final int SOUND_CUSTOM = 8;

    private static final long TICK_MS = 50L;
    private static final int RING_MAX = 100;
    /** Triple compact dial (64dp × 3). Must match apply-interval-timer overlay_metrics. */
    private static final int OVERLAY_SIZE_DP = 192;
    private static final int OVERLAY_CONTROL_BTN_DP = 45;
    /** Minimum gap between dial outer edge and control button inner edge. */
    private static final int OVERLAY_BTN_OUTSIDE_GAP_DP = 5;
    /** Frame around dial — buttons sit outside the ring. Must match apply-interval-timer overlay layout. */
    private static final int OVERLAY_FRAME_DP = OVERLAY_SIZE_DP
            + 2 * (OVERLAY_BTN_OUTSIDE_GAP_DP + OVERLAY_CONTROL_BTN_DP);
    /** Same vertical row as {@link MusicPlayerHelper} overlay (opposite side of master panel). */
    private static final int OVERLAY_ROW_Y_DP = 300;
    /** Gap between overlay right edge and the train sidebar (rightLayout) left edge. */
    private static final int OVERLAY_SIDEBAR_GAP_DP = 40;
    /** Fallback sidebar width when rightLayout is not measured yet (weight 0.7 / 10.7). */
    private static final float SIDEBAR_WIDTH_WEIGHT = 0.7f;
    private static final float CONTENT_WIDTH_WEIGHT = 10.0f;
    /** Clock-face button angles (deg clockwise from 12 o'clock). */
    private static final float BTN_ANGLE_CLOSE = 45f;
    private static final float BTN_ANGLE_RESET = 90f;
    private static final float BTN_ANGLE_PAUSE = 135f;
    private static final int SHEET_WIDTH_DP = 560;

    private static final String PREFS = "interval_timer";
    private static final String KEY_MINUTES = "minutes";
    private static final String KEY_SECONDS = "seconds";
    private static final String KEY_TRAIN_SEC = "train_sec";
    private static final String KEY_LOOPS = "loops";
    private static final String KEY_SOUND = "sound";
    private static final String KEY_CUSTOM_URI = "custom_uri";
    private static final String KEY_BLOCK_MODE = "block_program_mode";
    private static final String KEY_BLOCK_REPEAT = "block_program_repeat";
    private static final float COUNTDOWN_TEXT_SP = 54f;
    private static final float OVERLAY_TAP_SLOP_DP = 10f;
    private static final int AUDIO_STREAM = AudioManager.STREAM_MUSIC;

    private static XemsUi.Shell sheet;
    private static android.support.v7.app.AlertDialog overlayDialog;
    private static View overlayContent;
    private static TextView countdownView;
    private static TextView loopLabelView;
    private static TimerRingView ringView;
    private static TextView pauseBtnView;

    private static View allStopButton;
    private static View panelRoot;
    private static Activity hostActivity;
    private static TrainItemManager itemManager;

    private static final Handler handler = new Handler(Looper.getMainLooper());
    private static final Runnable tickRunnable = new TickRunnable();

    private static boolean armed;
    private static boolean overlayVisible;
    private static boolean countdownRunning;
    /** User paused countdown only; training/impulses keep running. */
    private static boolean timerPausedByUser;
    private static boolean trainingRunning;
    private static boolean pickingSignal;

    private static int selectedSound = SOUND_BEEP;
    private static int soundBeforePick = SOUND_BEEP;
    private static Uri customSignalUri;
    private static MediaPlayer signalPlayer;

    /** Settings (edited in the sheet). */
    private static int intervalSec = 30;
    private static int trainSec = 20 * 60;
    private static int maxLoops;
    private static boolean blockProgramMode;
    private static boolean blockProgramRepeat;
    private static ArrayList<ProgramSegment> blockSegments = new ArrayList<>();
    private static String selectedPresetId = "";
    private static boolean settingsLoaded;

    private static long intervalMs = 30000L;
    private static int currentLoop;
    private static long remainingMs;
    private static long lastTickRealtime;
    private static int lastDisplayedCountdownSec = -1;

    private static float overlayTouchDx;
    private static float overlayTouchDy;
    private static float overlayDownRawX;
    private static float overlayDownRawY;
    private static boolean overlayMoved;

    private IntervalTimerHelper() {
    }

    /** Timer activated (waiting for training start or counting). */
    public static boolean isArmed() {
        return armed;
    }

    /** Countdown ticking and not paused by the user. */
    public static boolean isCounting() {
        return armed && countdownRunning && !timerPausedByUser;
    }

    // ================================================================ band app

    /** Timer state for the XEMS app on the band (times in seconds). */
    public static org.json.JSONObject bandState() throws org.json.JSONException {
        org.json.JSONObject o = new org.json.JSONObject();
        o.put("arm", armed);
        o.put("run", armed && countdownRunning && !timerPausedByUser);
        o.put("pau", armed && timerPausedByUser);
        if (armed && blockProgramMode && BlockProgramRunner.isArmed()) {
            o.put("left", BlockProgramRunner.getBlockRemainingMs() / 1000);
            o.put("int", Math.max(1, BlockProgramRunner.getBlockTotalMs() / 1000));
            o.put("lbl", "B" + (BlockProgramRunner.getBlockIndex() + 1) + "/"
                    + Math.max(1, BlockProgramRunner.getBlockCount()) + " · C"
                    + (BlockProgramRunner.getCyclesDone() + 1) + "/"
                    + Math.max(1, BlockProgramRunner.getCurrentBlockCycles()));
        } else {
            o.put("left", (armed && remainingMs > 0 ? remainingMs : intervalMs) / 1000);
            o.put("int", Math.max(1, intervalMs / 1000));
            o.put("loop", Math.max(1, currentLoop));
            o.put("loops", maxLoops);
        }
        return o;
    }

    /** Band app: pause / resume the countdown (runs on the main thread). */
    public static void bandTogglePause() {
        handler.post(new BandTogglePause());
    }

    static final class BandTogglePause implements Runnable {
        @Override
        public void run() {
            try {
                toggleTimerPause();
            } catch (Throwable t) {
                com.isaigu.gymapp.widget.XemsGuard.report("IntervalTimer.band", t);
            }
        }
    }

    static String tr(String bg, String en) {
        try {
            return com.isaigu.gymapp.widget.XemsLang.tr(bg, en);
        } catch (Throwable t) {
            return bg;
        }
    }

    // ================================================================ presets

    static void applyPreset(TimerPreset preset) {
        if (preset == null) {
            return;
        }
        int sec = preset.minutes * 60 + preset.seconds;
        if (preset.blockMode && preset.blockRepeat) {
            trainSec = clamp(sec, TRAIN_MIN_SEC, TRAIN_MAX_SEC);
        } else if (!preset.blockMode) {
            intervalSec = clamp(sec, DURATION_MIN_SEC, DURATION_MAX_SEC);
        }
        maxLoops = clamp(preset.loops, 0, LOOPS_MAX);
        selectedSound = preset.sound;
        if (selectedSound < SOUND_OFF || selectedSound > SOUND_CUSTOM) {
            selectedSound = SOUND_BEEP;
        }
        customSignalUri = preset.customUri != null && preset.customUri.length() > 0
                ? Uri.parse(preset.customUri)
                : null;
        blockProgramMode = preset.blockMode;
        blockProgramRepeat = preset.blockRepeat;
        blockSegments = preset.blocks != null ? new ArrayList<>(preset.blocks) : new ArrayList<ProgramSegment>();
    }

    static TimerPreset captureCurrentPreset(String id, String name) {
        TimerPreset preset = new TimerPreset();
        preset.id = id != null ? id : TimerPresetStorage.newId();
        preset.name = name != null ? name : "";
        int sec = blockProgramMode && blockProgramRepeat ? trainSec : intervalSec;
        preset.minutes = sec / 60;
        preset.seconds = sec % 60;
        preset.loops = maxLoops;
        preset.sound = selectedSound;
        preset.customUri = customSignalUri != null ? customSignalUri.toString() : "";
        preset.blockMode = blockProgramMode;
        preset.blockRepeat = blockProgramRepeat;
        preset.blocks = blockSegments != null ? new ArrayList<>(blockSegments) : new ArrayList<ProgramSegment>();
        return preset;
    }

    // ================================================================ entry points

    public static void attachMasterPanel(View root, TrainItemManager manager) {
        try {
            attachMasterPanelImpl(root, manager);
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("IntervalTimerHelper.attachMasterPanel", t);
        }
    }

    private static void attachMasterPanelImpl(View root, TrainItemManager manager) {
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
        button.setClickable(true);
        button.setEnabled(true);
        button.setFocusable(true);
        button.setOnClickListener(new MasterToggleListener());
    }

    public static void onActivityResult(int requestCode, int resultCode, Intent data) {
        try {
            onActivityResultImpl(requestCode, resultCode, data);
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("IntervalTimerHelper.onActivityResult", t);
        }
    }

    private static void onActivityResultImpl(int requestCode, int resultCode, Intent data) {
        pickingSignal = false;
        restoreSheetAfterPick();
        if (requestCode == PICK_SIGNAL) {
            handleSignalFileResult(resultCode, data);
        } else if (requestCode == PICK_RINGTONE) {
            handleRingtoneResult(resultCode, data);
        }
        rebuildSheet();
    }

    private static void handleSignalFileResult(int resultCode, Intent data) {
        Uri uri = resultCode == Activity.RESULT_OK && data != null ? data.getData() : null;
        if (uri == null) {
            selectedSound = soundBeforePick;
            return;
        }
        customSignalUri = uri;
        selectedSound = SOUND_CUSTOM;
        try {
            Activity activity = resolveActivity(null);
            int takeFlags = data.getFlags()
                    & (Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_GRANT_WRITE_URI_PERMISSION);
            if (activity != null && takeFlags != 0) {
                activity.getContentResolver().takePersistableUriPermission(uri, takeFlags);
            }
        } catch (Throwable t) {
            MusicDiagLog.logError("interval_timer_uri_persist", t);
        }
        MusicDiagLog.log("interval_timer", "custom signal uri set");
        playSignal();
    }

    private static void handleRingtoneResult(int resultCode, Intent data) {
        Uri uri = resultCode == Activity.RESULT_OK && data != null
                ? (Uri) data.getParcelableExtra(RingtoneManager.EXTRA_RINGTONE_PICKED_URI) : null;
        if (uri == null) {
            selectedSound = soundBeforePick;
            return;
        }
        customSignalUri = uri;
        selectedSound = SOUND_DEVICE;
        MusicDiagLog.log("interval_timer", "device signal uri set");
        playSignal();
    }

    /** Sync timer run/pause from any train row start/stop (not only master buttons). */
    public static void syncTrainingState() {
        try {
            syncTrainingStateImpl();
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("IntervalTimerHelper.syncTrainingState", t);
        }
    }

    private static void syncTrainingStateImpl() {
        if (itemManager == null) {
            return;
        }
        boolean anyRunning = false;
        try {
            java.util.List<TrainItem> items = itemManager.getItemList();
            if (items != null) {
                for (int i = 0; i < items.size(); i++) {
                    TrainItem item = items.get(i);
                    if (item == null || item.isEmpty() || item.data == null) {
                        continue;
                    }
                    if (item.data.start) {
                        anyRunning = true;
                        break;
                    }
                }
            }
        } catch (Throwable ignored) {
        }
        onTrainingRunningChanged(anyRunning);
    }

    public static void onTrainingRunningChanged(boolean running) {
        try {
            onTrainingRunningChangedImpl(running);
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("IntervalTimerHelper.onTrainingRunningChanged", t);
        }
    }

    private static void onTrainingRunningChangedImpl(boolean running) {
        trainingRunning = running;
        if (!armed) {
            updateOverlayVisibility();
            return;
        }
        if (blockProgramMode && BlockProgramRunner.isArmed()) {
            if (running) {
                BlockProgramRunner.onTrainingStart();
                lastDisplayedCountdownSec = -1;
                if (!countdownRunning && !timerPausedByUser) {
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
            updatePauseButtonLabel();
            updateOverlayVisibility();
            return;
        }
        if (running) {
            if (!countdownRunning && !timerPausedByUser) {
                if (currentLoop <= 0) {
                    currentLoop = 1;
                    remainingMs = intervalMs;
                    playSignal();
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
        updatePauseButtonLabel();
        updateOverlayVisibility();
    }

    public static void onTrainingStop() {
        try {
            onTrainingStopImpl();
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("IntervalTimerHelper.onTrainingStop", t);
        }
    }

    private static void onTrainingStopImpl() {
        BlockProgramRunner.reset();
        resetAll();
    }

    public static void refreshBlockOverlay() {
        lastDisplayedCountdownSec = -1;
        refreshOverlayText();
    }

    public static void playBlockSignal() {
        playSignal();
    }

    public static void triggerAllStop() {
        handler.post(new TriggerStopRunnable());
    }

    private static void resetAll() {
        armed = false;
        countdownRunning = false;
        timerPausedByUser = false;
        trainingRunning = false;
        currentLoop = 0;
        remainingMs = intervalMs;
        overlayVisible = false;
        lastDisplayedCountdownSec = -1;
        handler.removeCallbacks(tickRunnable);
        releaseSignalPlayer();
        BlockProgramRunner.reset();
        dismissSheet();
        dismissOverlayDialog(false);
        refreshStatusText();
    }

    /** Stop timer function but keep saved config (duration, loops, sound, presets). */
    private static void disarmTimerKeepSettings() {
        armed = false;
        countdownRunning = false;
        timerPausedByUser = false;
        currentLoop = 0;
        remainingMs = intervalMs;
        overlayVisible = false;
        lastDisplayedCountdownSec = -1;
        handler.removeCallbacks(tickRunnable);
        releaseSignalPlayer();
        BlockProgramRunner.reset();
        dismissOverlayDialog(false);
        refreshStatusText();
        updatePauseButtonLabel();
    }

    private static void toggleTimerPause() {
        if (!armed) {
            return;
        }
        if (timerPausedByUser) {
            timerPausedByUser = false;
            if (trainingRunning) {
                countdownRunning = true;
                lastTickRealtime = SystemClock.elapsedRealtime();
                handler.removeCallbacks(tickRunnable);
                handler.post(tickRunnable);
            }
        } else if (countdownRunning) {
            timerPausedByUser = true;
            countdownRunning = false;
            handler.removeCallbacks(tickRunnable);
        }
        refreshStatusText();
        refreshOverlayText();
        updatePauseButtonLabel();
    }

    private static void updatePauseButtonLabel() {
        if (pauseBtnView == null) {
            return;
        }
        try {
            if (timerPausedByUser) {
                pauseBtnView.setText("\u25B6");
            } else {
                pauseBtnView.setText("II");
            }
        } catch (Throwable ignored) {
        }
    }

    private static boolean hasLoadedTraining() {
        return MusicPlayerHelper.resolveTargetItem(itemManager) != null;
    }

    private static void armFromConfig() {
        if (!hasLoadedTraining()) {
            toast(STR_NO_TRAINING);
            return;
        }
        if ((selectedSound == SOUND_CUSTOM || selectedSound == SOUND_DEVICE) && customSignalUri == null) {
            toast(selectedSound == SOUND_DEVICE ? STR_SOUND_PICK_DEVICE : STR_SOUND_NO_FILE);
            return;
        }
        if (blockProgramMode) {
            if (blockSegments == null || blockSegments.isEmpty()) {
                toast(STR_BLOCK_EMPTY);
                return;
            }
            int seconds = blockProgramRepeat ? trainSec : sequenceSeconds();
            BlockProgramRunner.arm(itemManager, blockSegments, blockProgramRepeat, Math.max(1, seconds));
            intervalMs = Math.max(1, seconds) * 1000L;
            maxLoops = 0;
        } else {
            if (intervalSec <= 0) {
                toast(STR_INVALID_DURATION);
                return;
            }
            BlockProgramRunner.reset();
            intervalMs = intervalSec * 1000L;
        }
        saveSettings(resolveActivity(null));
        currentLoop = 0;
        remainingMs = intervalMs;
        lastDisplayedCountdownSec = -1;
        armed = true;
        overlayVisible = true;
        countdownRunning = false;
        timerPausedByUser = false;
        dismissSheet();
        handler.post(new FinishArmRunnable());
    }

    private static void finishArm() {
        if (!armed) {
            return;
        }
        if (!showOverlayDialog()) {
            armed = false;
            overlayVisible = false;
            toast(STR_ERROR);
            MusicDiagLog.log("interval_timer", "overlay dialog failed");
            return;
        }
        refreshOverlayText();
        updateOverlayVisibility();
        MusicDiagLog.log("interval_timer",
                "armed intervalMs=" + intervalMs + " loops=" + maxLoops + " sound=" + selectedSound);
        if (trainingRunning) {
            onTrainingRunningChanged(true);
        }
    }

    private static void openOverlaySettings() {
        Activity activity = resolveActivity(null);
        if (activity == null) {
            toast(STR_ERROR);
            return;
        }
        hostActivity = activity;
        showSheet(activity);
    }

    private static void toggleMasterPanel() {
        Activity activity = resolveActivity(null);
        if (activity == null) {
            toast(STR_ERROR);
            return;
        }
        hostActivity = activity;
        if (!armed) {
            if (!hasLoadedTraining()) {
                toast(STR_NO_TRAINING);
                return;
            }
            showSheet(activity);
            return;
        }
        overlayVisible = !overlayVisible;
        updateOverlayVisibility();
    }

    private static Activity resolveActivity(Activity preferred) {
        if (preferred != null) {
            return preferred;
        }
        if (hostActivity != null && !hostActivity.isFinishing()) {
            return hostActivity;
        }
        if (sheet != null) {
            Activity fromSheet = MusicPlayerHelper.resolveActivity(sheet.dialog.getContext());
            if (fromSheet != null) {
                hostActivity = fromSheet;
                return fromSheet;
            }
        }
        if (overlayDialog != null) {
            Activity fromOverlay = MusicPlayerHelper.resolveActivity(overlayDialog.getContext());
            if (fromOverlay != null) {
                hostActivity = fromOverlay;
                return fromOverlay;
            }
        }
        if (panelRoot != null) {
            Activity fromPanel = MusicPlayerHelper.resolveHostActivity(panelRoot);
            if (fromPanel != null) {
                hostActivity = fromPanel;
                return fromPanel;
            }
        }
        return MainActivity.getInstance();
    }

    // ================================================================ settings sheet

    private static void showSheet(Activity activity) {
        if (sheet != null && sheet.dialog.isShowing()) {
            return;
        }
        hostActivity = activity;
        loadSavedSettings(activity);
        sheet = XemsUi.shell(activity, activity.getString(STR_TITLE), null, SHEET_WIDTH_DP);
        sheet.info.setVisibility(View.VISIBLE);
        sheet.info.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ModalInfoHelper.show(resolveActivity(null), STR_INFO_TITLE, STR_INFO_BODY);
            }
        });
        sheet.dialog.setOnDismissListener(new DialogInterface.OnDismissListener() {
            @Override
            public void onDismiss(DialogInterface d) {
                if (pickingSignal) {
                    return;
                }
                saveSettings(resolveActivity(null));
                sheet = null;
            }
        });
        rebuildSheet();
        try {
            sheet.dialog.show();
            XemsUi.fitHeight(activity, sheet, 0.9f);
        } catch (Throwable t) {
            MusicDiagLog.logError("interval_timer_sheet", t);
            toast(STR_ERROR);
            sheet = null;
        }
    }

    /** Rebuild the sheet body (cheap; keeps the scroll position). */
    private static void rebuildSheet() {
        if (sheet == null) {
            return;
        }
        final Activity a = resolveActivity(null);
        if (a == null) {
            return;
        }
        int scrollY = sheet.scroll.getScrollY();
        LinearLayout body = sheet.body;
        body.removeAllViews();

        body.addView(XemsUi.segmented(a,
                new String[] {a.getString(STR_TAB_INTERVAL), a.getString(STR_TAB_BLOCK)},
                blockProgramMode ? 1 : 0, new XemsUi.OnIndex() {
                    @Override
                    public void onIndex(int i) {
                        blockProgramMode = i == 1;
                        selectedPresetId = "";
                        rebuildSheet();
                    }
                }));
        if (blockProgramMode) {
            buildBlockSection(a, body);
        } else {
            buildIntervalSection(a, body);
        }
        buildMoreRows(a, body);
        buildFooter(a);
        refreshStatusText();
        final int y = scrollY;
        sheet.scroll.post(new Runnable() {
            @Override
            public void run() {
                if (sheet != null) {
                    sheet.scroll.scrollTo(0, y);
                }
            }
        });
    }

    /** Interval and repeats as two rows (label left, stepper right) and one summary line. */
    private static void buildIntervalSection(final Activity a, LinearLayout body) {
        LinearLayout card = XemsUi.card(a);
        final XemsUi.Stepper interval = XemsUi.stepper(a, formatSeconds(intervalSec), null, 26, null);
        final XemsUi.Stepper loops = XemsUi.stepper(a, loopsText(maxLoops), null, 26, null);
        card.addView(settingRow(a, tr("Интервал", "Interval"), interval.view));
        card.addView(divider(a), XemsUi.matchWrap(a, 12));
        card.addView(settingRow(a, tr("Повторения", "Repeats"), loops.view), XemsUi.matchWrap(a, 12));
        final TextView summary = XemsUi.text(a, "", 14, XemsUi.MUTED, false);
        summary.setGravity(Gravity.CENTER);
        card.addView(summary, XemsUi.matchWrap(a, 14));
        final Runnable refresh = new Runnable() {
            @Override
            public void run() {
                interval.set(formatSeconds(intervalSec), null);
                loops.set(loopsText(maxLoops), null);
                summary.setText(maxLoops > 0
                        ? tr("Общо ", "Total ") + formatSeconds((long) maxLoops * intervalSec)
                        : tr("Сигнал на всеки ", "A signal every ") + formatSeconds(intervalSec)
                        + tr(", без край", ", no end"));
            }
        };
        // 5 s steps below 1 min, 15 s up to 3 min, 30 s above.
        XemsUi.repeatOnHold(interval.view.getChildAt(0), new XemsUi.OnStep() {
            @Override
            public void onStep(int d) {
                intervalSec = clamp(intervalSec - stepFor(intervalSec - 1), DURATION_MIN_SEC, DURATION_MAX_SEC);
                selectedPresetId = "";
                refresh.run();
            }
        }, -1);
        XemsUi.repeatOnHold(interval.view.getChildAt(2), new XemsUi.OnStep() {
            @Override
            public void onStep(int d) {
                intervalSec = clamp(intervalSec + stepFor(intervalSec), DURATION_MIN_SEC, DURATION_MAX_SEC);
                selectedPresetId = "";
                refresh.run();
            }
        }, +1);
        // 0 = endless (∞), shown below 1.
        XemsUi.repeatOnHold(loops.view.getChildAt(0), new XemsUi.OnStep() {
            @Override
            public void onStep(int d) {
                maxLoops = clamp(maxLoops - 1, 0, LOOPS_MAX);
                selectedPresetId = "";
                refresh.run();
            }
        }, -1);
        XemsUi.repeatOnHold(loops.view.getChildAt(2), new XemsUi.OnStep() {
            @Override
            public void onStep(int d) {
                maxLoops = clamp(maxLoops + 1, 0, LOOPS_MAX);
                selectedPresetId = "";
                refresh.run();
            }
        }, +1);
        refresh.run();
        body.addView(card, XemsUi.matchWrap(a, 14));
    }

    /** Label on the left, control of fixed width on the right — nothing can overlap. */
    private static View settingRow(Activity a, String label, View control) {
        LinearLayout row = XemsUi.horizontal(a);
        row.setGravity(Gravity.CENTER_VERTICAL);
        TextView t = XemsUi.text(a, label, 17, XemsUi.TEXT, true);
        row.addView(t, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        row.addView(control, new LinearLayout.LayoutParams(XemsUi.dp(a, 230), ViewGroup.LayoutParams.WRAP_CONTENT));
        return row;
    }

    private static View divider(Activity a) {
        View v = new View(a);
        v.setBackgroundColor(XemsUi.alpha(XemsUi.TEXT, 0x14));
        v.setMinimumHeight(1);
        return v;
    }

    /** "Signal" and "Saved programs" as rows; their details open in a second sheet. */
    private static void buildMoreRows(final Activity a, LinearLayout body) {
        LinearLayout card = XemsUi.card(a);
        card.addView(navRow(a, tr("Сигнал", "Signal"), signalName(a), new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                openSub(a, SUB_SIGNAL);
            }
        }));
        card.addView(divider(a), XemsUi.matchWrap(a, 4));
        TimerPreset sel = selectedPresetId.length() > 0 ? TimerPresetStorage.findById(a, selectedPresetId) : null;
        int count = TimerPresetStorage.loadAll(a).size();
        card.addView(navRow(a, tr("Запазени програми", "Saved programs"),
                sel != null ? sel.name : (count > 0 ? String.valueOf(count) : ""), new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        openSub(a, SUB_PRESETS);
                    }
                }), XemsUi.matchWrap(a, 4));
        body.addView(card, XemsUi.matchWrap(a, 14));
    }

    private static View navRow(Activity a, String title, String value, View.OnClickListener l) {
        LinearLayout row = XemsUi.horizontal(a);
        row.setGravity(Gravity.CENTER_VERTICAL);
        row.setPadding(0, XemsUi.dp(a, 12), 0, XemsUi.dp(a, 12));
        row.addView(XemsUi.text(a, title, 16, XemsUi.TEXT, false),
                new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        TextView v = XemsUi.text(a, (value != null ? value : "") + "   ›", 16, XemsUi.MUTED, false);
        v.setSingleLine(true);
        row.addView(v);
        row.setClickable(true);
        row.setBackgroundDrawable(XemsUi.ripple(new android.graphics.drawable.ColorDrawable(0),
                XemsUi.TEXT, XemsUi.dp(a, 10)));
        row.setOnClickListener(l);
        return row;
    }

    private static String signalName(Activity a) {
        int[] sounds = {SOUND_OFF, SOUND_BEEP, SOUND_CHIME, SOUND_BELL, SOUND_PIP, SOUND_CONFIRM, SOUND_ALARM,
                SOUND_DEVICE, SOUND_CUSTOM};
        int[] labels = {STR_SOUND_OFF, STR_SOUND_BEEP, STR_SOUND_CHIME, STR_SOUND_BELL, STR_SOUND_PIP,
                STR_SOUND_CONFIRM, STR_SOUND_ALARM, STR_SOUND_DEVICE, STR_SOUND_CUSTOM};
        for (int i = 0; i < sounds.length; i++) {
            if (sounds[i] == selectedSound) {
                try {
                    return a.getString(labels[i]);
                } catch (Throwable t) {
                    return "";
                }
            }
        }
        return "";
    }

    private static final int SUB_SIGNAL = 1;
    private static final int SUB_PRESETS = 2;
    private static XemsUi.Shell subSheet;
    private static int subKind;

    private static void openSub(final Activity a, int kind) {
        if (subSheet != null) {
            return;
        }
        subKind = kind;
        subSheet = XemsUi.shell(a, kind == SUB_SIGNAL ? tr("Сигнал", "Signal")
                : tr("Запазени програми", "Saved programs"), null, 520);
        subSheet.dialog.setOnDismissListener(new DialogInterface.OnDismissListener() {
            @Override
            public void onDismiss(DialogInterface d) {
                subSheet = null;
                rebuildSheet();
            }
        });
        TextView done = XemsUi.button(a, tr("Готово", "Done"), XemsUi.PRIMARY);
        done.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                closeSub();
            }
        });
        subSheet.footer.addView(XemsUi.spacer(a));
        subSheet.footer.addView(done);
        refreshSub();
        try {
            subSheet.dialog.show();
        } catch (Throwable t) {
            subSheet = null;
        }
    }

    private static void refreshSub() {
        Activity a = resolveActivity(null);
        if (subSheet == null || a == null) {
            return;
        }
        subSheet.body.removeAllViews();
        if (subKind == SUB_SIGNAL) {
            buildSignalSection(a, subSheet.body);
        } else {
            buildPresetSection(a, subSheet.body);
        }
    }

    private static void closeSub() {
        if (subSheet != null) {
            try {
                subSheet.dialog.dismiss();
            } catch (Throwable ignored) {
            }
        }
    }

    /** Refresh whichever sheets are open. */
    private static void refreshSheets() {
        if (subSheet != null) {
            refreshSub();
        } else {
            rebuildSheet();
        }
    }

    private static int stepFor(int sec) {
        return sec < 60 ? 5 : sec < 180 ? 15 : 30;
    }

    private static String loopsText(int loops) {
        return loops <= 0 ? "∞" : String.valueOf(loops);
    }

    private static String loopsUnit(int loops) {
        return loops <= 0 ? tr("без край", "endless") : tr("пъти", "times");
    }

    private static void fillQuickIntervals(Activity a, LinearLayout row, final Runnable refresh) {
        row.removeAllViews();
        for (final int s : QUICK_INTERVALS) {
            TextView chip = XemsUi.chip(a, formatSeconds(s), s == intervalSec, XemsUi.GO_TEXT);
            chip.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    XemsUi.haptic(v);
                    intervalSec = s;
                    selectedPresetId = "";
                    refresh.run();
                }
            });
            XemsUi.addChip(a, row, chip);
        }
    }

    private static void fillQuickLoops(Activity a, LinearLayout row, final Runnable refresh) {
        row.removeAllViews();
        for (final int n : QUICK_LOOPS) {
            TextView chip = XemsUi.chip(a, n == 0 ? "∞" : String.valueOf(n), n == maxLoops, XemsUi.GO_TEXT);
            chip.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    XemsUi.haptic(v);
                    maxLoops = n;
                    selectedPresetId = "";
                    refresh.run();
                }
            });
            XemsUi.addChip(a, row, chip);
        }
    }

    /** One segment per repeat (fading dots for "endless"): the workout at a glance. */
    private static void fillTimeline(Activity a, LinearLayout bar, int loops) {
        bar.removeAllViews();
        int n = loops > 0 ? loops : 12;
        for (int i = 0; i < n; i++) {
            View seg = new View(a);
            int col = XemsUi.mix(XemsUi.GO, XemsUi.ACCENT, n > 1 ? i / (float) (n - 1) : 0f);
            if (loops <= 0) {
                col = XemsUi.alpha(XemsUi.GO_TEXT, Math.max(0x22, 0xFF - i * 18));
            }
            seg.setBackgroundDrawable(XemsUi.rounded(col, XemsUi.dp(a, 4), 0, 0));
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, XemsUi.dp(a, 10), 1f);
            if (i > 0) {
                lp.leftMargin = XemsUi.dp(a, 4);
            }
            bar.addView(seg, lp);
        }
    }

    private static void buildBlockSection(final Activity a, LinearLayout body) {
        LinearLayout card = XemsUi.card(a);
        if (blockSegments == null) {
            blockSegments = new ArrayList<>();
        }
        LinearLayout head = XemsUi.horizontal(a);
        head.addView(XemsUi.label(a, tr("Блокове", "Blocks") + " · " + blockSegments.size()),
                new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        TextView edit = XemsUi.button(a, blockSegments.isEmpty()
                ? tr("+ Създай", "+ Create") : tr("Редактирай", "Edit"), XemsUi.SECONDARY);
        edit.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14);
        edit.setPadding(XemsUi.dp(a, 16), XemsUi.dp(a, 8), XemsUi.dp(a, 16), XemsUi.dp(a, 8));
        edit.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                BlockProgramEditor.show(a, blockSegments, MusicPlayerHelper.resolveTargetItem(itemManager),
                        new Runnable() {
                            @Override
                            public void run() {
                                selectedPresetId = "";
                                rebuildSheet();
                            }
                        });
            }
        });
        head.addView(edit);
        card.addView(head);

        if (blockSegments.isEmpty()) {
            TextView empty = XemsUi.text(a, tr("Още няма блокове", "No blocks yet"), 15, XemsUi.MUTED, false);
            card.addView(empty, XemsUi.matchWrap(a, 6));
        } else {
            int[] onOff = resolveOnOffFromSeed();
            for (int i = 0; i < blockSegments.size(); i++) {
                ProgramSegment seg = blockSegments.get(i);
                card.addView(blockRow(a, i, seg, onOff), XemsUi.matchWrap(a, i == 0 ? 6 : 8));
            }
        }

        card.addView(XemsUi.toggleRow(a, tr("Повтаряй до края на времето", "Repeat until time is up"), null,
                blockProgramRepeat, new XemsUi.OnToggle() {
                    @Override
                    public void onToggle(boolean on) {
                        blockProgramRepeat = on;
                        selectedPresetId = "";
                        rebuildSheet();
                    }
                }), XemsUi.matchWrap(a, 14));

        if (blockProgramRepeat) {
            final XemsUi.Stepper time = XemsUi.stepper(a, formatSeconds(trainSec), null, 26, null);
            XemsUi.repeatOnHold(time.view.getChildAt(0), new XemsUi.OnStep() {
                @Override
                public void onStep(int d) {
                    trainSec = clamp(trainSec - 30, TRAIN_MIN_SEC, TRAIN_MAX_SEC);
                    time.set(formatSeconds(trainSec), null);
                }
            }, -1);
            XemsUi.repeatOnHold(time.view.getChildAt(2), new XemsUi.OnStep() {
                @Override
                public void onStep(int d) {
                    trainSec = clamp(trainSec + 30, TRAIN_MIN_SEC, TRAIN_MAX_SEC);
                    time.set(formatSeconds(trainSec), null);
                }
            }, +1);
            card.addView(settingRow(a, tr("Време", "Time"), time.view), XemsUi.matchWrap(a, 10));
        } else if (!blockSegments.isEmpty()) {
            TextView seq = XemsUi.text(a, tr("Общо ", "Total ") + formatSeconds(sequenceSeconds()),
                    14, XemsUi.MUTED, false);
            card.addView(seq, XemsUi.matchWrap(a, 6));
        }
        body.addView(card, XemsUi.matchWrap(a, 14));
    }

    private static View blockRow(Activity a, int index, ProgramSegment seg, int[] onOff) {
        LinearLayout row = XemsUi.surface(a);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER_VERTICAL);
        TextView num = XemsUi.text(a, String.valueOf(index + 1), 15, XemsUi.ON_ACCENT, true);
        num.setGravity(Gravity.CENTER);
        num.setBackgroundDrawable(XemsUi.rounded(XemsUi.ACCENT, XemsUi.dp(a, 14), 0, 0));
        row.addView(num, new LinearLayout.LayoutParams(XemsUi.dp(a, 28), XemsUi.dp(a, 28)));
        LinearLayout texts = XemsUi.vertical(a);
        texts.setPadding(XemsUi.dp(a, 12), 0, 0, 0);
        texts.addView(XemsUi.text(a, seg.cycles + tr(" цикъла", " cycles") + "  ·  "
                + formatSeconds((long) seg.cycles * (onOff[0] + onOff[1])), 15, XemsUi.TEXT, true));
        TextView params = XemsUi.text(a, seg.strenth + "%   ·   " + seg.hz + " Hz   ·   " + seg.pulseWidth + " µs",
                13, XemsUi.MUTED, false);
        params.setPadding(0, XemsUi.dp(a, 3), 0, 0);
        texts.addView(params);
        row.addView(texts, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        return row;
    }

    private static int sequenceSeconds() {
        int[] onOff = resolveOnOffFromSeed();
        return BlockProgramRunner.computeSequenceSeconds(blockSegments, onOff[0], onOff[1]);
    }

    private static int[] resolveOnOffFromSeed() {
        int on = 4;
        int off = 4;
        TrainItem seed = MusicPlayerHelper.resolveTargetItem(itemManager);
        if (seed != null && seed.getTrainProgram() != null) {
            com.isaigu.gymapp.bean.ProgramDataBean bean = seed.getTrainProgram().matchProgram();
            if (bean != null) {
                if (bean.pulseContinue > 0) {
                    on = bean.pulseContinue;
                }
                if (bean.pulsePause > 0) {
                    off = bean.pulsePause;
                }
            }
        }
        return new int[] {on, off};
    }

    /** Saved programs as chips: tap = load, hold = rename / delete; "+" saves the current one. */
    private static void buildPresetSection(final Activity a, LinearLayout body) {
        LinearLayout[] holder = new LinearLayout[1];
        body.addView(XemsUi.chipRow(a, holder));
        LinearLayout row = holder[0];
        TextView save = XemsUi.chip(a, selectedPresetId.length() > 0 ? tr("✓ Обнови", "✓ Update") : tr("+ Запази", "+ Save"),
                false, XemsUi.GO_TEXT);
        save.setTextColor(XemsUi.GO_TEXT);
        save.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                TimerPreset existing = selectedPresetId.length() > 0
                        ? TimerPresetStorage.findById(a, selectedPresetId) : null;
                if (existing != null) {
                    TimerPreset p = captureCurrentPreset(existing.id, existing.name);
                    TimerPresetStorage.upsert(a, p);
                    toastText(tr("Обновено: ", "Updated: ") + p.name);
                    refreshSheets();
                    return;
                }
                promptName(a, tr("Име на програмата", "Program name"), "", new NameCallback() {
                    @Override
                    public void onName(String name) {
                        TimerPreset p = captureCurrentPreset(TimerPresetStorage.newId(), name);
                        TimerPresetStorage.upsert(a, p);
                        selectedPresetId = p.id;
                        toastText(tr("Запазено: ", "Saved: ") + name);
                        refreshSheets();
                    }
                });
            }
        });
        XemsUi.addChip(a, row, save);
        ArrayList<TimerPreset> presets = TimerPresetStorage.loadAll(a);
        for (final TimerPreset p : presets) {
            boolean sel = p.id != null && p.id.equals(selectedPresetId);
            String kind = p.blockMode ? "▦ " : "◷ ";
            TextView chip = XemsUi.chip(a, kind + (p.name != null ? p.name : "?"), sel, XemsUi.ACCENT);
            chip.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    XemsUi.haptic(v);
                    applyPreset(p);
                    selectedPresetId = p.id;
                    closeSub();
                }
            });
            chip.setOnLongClickListener(new View.OnLongClickListener() {
                @Override
                public boolean onLongClick(View v) {
                    presetMenu(a, p);
                    return true;
                }
            });
            XemsUi.addChip(a, row, chip);
        }
        if (presets.isEmpty()) {
            TextView hint = XemsUi.text(a, tr("Задръж върху запазена програма за преименуване или изтриване.",
                    "Hold a saved program to rename or delete it."), 12.5f, XemsUi.HINT, false);
            body.addView(hint, XemsUi.matchWrap(a, 6));
        }
    }

    private static void presetMenu(final Activity a, final TimerPreset p) {
        final XemsUi.Shell s = XemsUi.shell(a, p.name, tr("Запазена програма", "Saved program"), 420);
        TextView rename = XemsUi.button(a, tr("Преименувай", "Rename"), XemsUi.SECONDARY);
        TextView delete = XemsUi.button(a, tr("Изтрий", "Delete"), XemsUi.ACCENT_BTN);
        rename.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                s.dialog.dismiss();
                promptName(a, tr("Ново име", "New name"), p.name, new NameCallback() {
                    @Override
                    public void onName(String name) {
                        TimerPreset copy = p.copy();
                        copy.name = name;
                        TimerPresetStorage.upsert(a, copy);
                        refreshSheets();
                    }
                });
            }
        });
        delete.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                s.dialog.dismiss();
                TimerPresetStorage.delete(a, p.id);
                if (p.id != null && p.id.equals(selectedPresetId)) {
                    selectedPresetId = "";
                }
                toastText(tr("Изтрито: ", "Deleted: ") + p.name);
                refreshSheets();
            }
        });
        s.footer.addView(rename, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        s.footer.addView(delete, XemsUi.weight(1f, 10, a));
        s.dialog.show();
    }

    interface NameCallback {
        void onName(String name);
    }

    private static void promptName(Activity a, String title, String initial, final NameCallback cb) {
        final XemsUi.Shell s = XemsUi.shell(a, title, null, 460);
        final EditText input = new EditText(a);
        input.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_CAP_SENTENCES);
        input.setSingleLine(true);
        input.setTextColor(XemsUi.TEXT);
        input.setHintTextColor(XemsUi.HINT);
        input.setHint(tr("напр. Сила 30/30", "e.g. Strength 30/30"));
        input.setTextSize(TypedValue.COMPLEX_UNIT_SP, 18);
        input.setPadding(XemsUi.dp(a, 16), XemsUi.dp(a, 12), XemsUi.dp(a, 16), XemsUi.dp(a, 12));
        input.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(a, 14), XemsUi.STROKE, XemsUi.dp(a, 1)));
        if (initial != null) {
            input.setText(initial);
            input.setSelection(initial.length());
        }
        s.body.addView(input, XemsUi.matchWrap(a, 4));
        TextView ok = XemsUi.button(a, tr("Запази", "Save"), XemsUi.PRIMARY);
        ok.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String name = input.getText() != null ? input.getText().toString().trim() : "";
                if (name.length() == 0) {
                    input.setError(tr("Въведи име", "Enter a name"));
                    return;
                }
                s.dialog.dismiss();
                cb.onName(name);
            }
        });
        s.footer.addView(XemsUi.spacer(a));
        s.footer.addView(ok);
        s.dialog.show();
        try {
            s.dialog.getWindow().setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_STATE_VISIBLE);
        } catch (Throwable ignored) {
        }
        input.requestFocus();
    }

    /** Signal chips: tap selects and plays it at once; phone / file open the pickers. */
    private static void buildSignalSection(final Activity a, LinearLayout body) {
        LinearLayout[] holder = new LinearLayout[1];
        body.addView(XemsUi.chipRow(a, holder));
        LinearLayout row = holder[0];
        int[] sounds = {SOUND_OFF, SOUND_BEEP, SOUND_CHIME, SOUND_BELL, SOUND_PIP, SOUND_CONFIRM, SOUND_ALARM,
                SOUND_DEVICE, SOUND_CUSTOM};
        int[] labels = {STR_SOUND_OFF, STR_SOUND_BEEP, STR_SOUND_CHIME, STR_SOUND_BELL, STR_SOUND_PIP,
                STR_SOUND_CONFIRM, STR_SOUND_ALARM, STR_SOUND_DEVICE, STR_SOUND_CUSTOM};
        for (int i = 0; i < sounds.length; i++) {
            final int snd = sounds[i];
            String prefix = snd == SOUND_OFF ? "🔇 " : snd == SOUND_DEVICE ? "📱 " : snd == SOUND_CUSTOM ? "📁 " : "♪ ";
            TextView chip = XemsUi.chip(a, prefix + a.getString(labels[i]), snd == selectedSound, XemsUi.GO_TEXT);
            chip.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    XemsUi.haptic(v);
                    if (snd == SOUND_DEVICE) {
                        closeSub();
                        startRingtonePick(v);
                        return;
                    }
                    if (snd == SOUND_CUSTOM) {
                        closeSub();
                        startSignalPick(v);
                        return;
                    }
                    selectedSound = snd;
                    selectedPresetId = "";
                    playSignal();
                    refreshSheets();
                }
            });
            XemsUi.addChip(a, row, chip);
        }
        if ((selectedSound == SOUND_CUSTOM || selectedSound == SOUND_DEVICE) && customSignalUri != null) {
            LinearLayout file = XemsUi.surface(a);
            file.setOrientation(LinearLayout.HORIZONTAL);
            file.setGravity(Gravity.CENTER_VERTICAL);
            String name = customSignalUri.getLastPathSegment();
            TextView t = XemsUi.text(a, name != null && name.length() > 0 ? name : customSignalUri.toString(),
                    14, XemsUi.TEXT, false);
            t.setSingleLine(true);
            t.setEllipsize(android.text.TextUtils.TruncateAt.MIDDLE);
            file.addView(t, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            TextView play = XemsUi.iconButton(a, "▶", XemsUi.GO, 0xFFFFFFFF, 34);
            play.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    playSignal();
                }
            });
            LinearLayout.LayoutParams pl = new LinearLayout.LayoutParams(XemsUi.dp(a, 34), XemsUi.dp(a, 34));
            pl.leftMargin = XemsUi.dp(a, 10);
            file.addView(play, pl);
            TextView clear = XemsUi.iconButton(a, "✕", XemsUi.CARD, XemsUi.TEXT, 34);
            clear.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    selectedSound = SOUND_BEEP;
                    customSignalUri = null;
                    refreshSheets();
                }
            });
            LinearLayout.LayoutParams cl = new LinearLayout.LayoutParams(XemsUi.dp(a, 34), XemsUi.dp(a, 34));
            cl.leftMargin = XemsUi.dp(a, 8);
            file.addView(clear, cl);
            body.addView(file, XemsUi.matchWrap(a, 10));
        }
    }

    private static void buildFooter(final Activity a) {
        LinearLayout footer = sheet.footer;
        footer.removeAllViews();
        if (armed) {
            TextView off = XemsUi.button(a, tr("Изключи таймера", "Turn timer off"), XemsUi.SECONDARY);
            off.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    disarmTimerKeepSettings();
                    rebuildSheet();
                }
            });
            footer.addView(off);
        }
        footer.addView(XemsUi.spacer(a));
        TextView go = XemsUi.button(a, armed ? tr("Приложи", "Apply") : tr("▶  Активирай", "▶  Activate"),
                XemsUi.PRIMARY);
        go.setTextSize(TypedValue.COMPLEX_UNIT_SP, 17);
        go.setPadding(XemsUi.dp(a, 34), XemsUi.dp(a, 14), XemsUi.dp(a, 34), XemsUi.dp(a, 14));
        go.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                hostActivity = MusicPlayerHelper.resolveHostActivity(v);
                armFromConfig();
            }
        });
        footer.addView(go);
    }

    private static void refreshStatusText() {
        if (sheet == null) {
            return;
        }
        sheet.badge.setVisibility(View.VISIBLE);
        if (!armed) {
            XemsUi.setBadge(sheet.badge, tr("Изключен", "Off"), XemsUi.MUTED);
        } else if (countdownRunning) {
            XemsUi.setBadge(sheet.badge, tr("● Работи", "● Running"), XemsUi.GO_TEXT);
        } else if (timerPausedByUser) {
            XemsUi.setBadge(sheet.badge, tr("Пауза", "Paused"), XemsUi.AMBER);
        } else {
            XemsUi.setBadge(sheet.badge, tr("Готов — чака старт", "Armed — waits for start"), XemsUi.AMBER);
        }
    }

    private static void dismissSheet() {
        if (sheet != null) {
            try {
                sheet.dialog.dismiss();
            } catch (Throwable ignored) {
            }
            if (!pickingSignal) {
                sheet = null;
            }
        }
    }

    private static void restoreSheetAfterPick() {
        if (sheet == null) {
            return;
        }
        try {
            if (!sheet.dialog.isShowing()) {
                sheet.dialog.show();
            }
        } catch (Throwable t) {
            MusicDiagLog.logError("interval_timer_sheet_restore", t);
        }
    }

    // ================================================================ persistence

    private static void loadSavedSettings(Activity activity) {
        if (activity == null) {
            return;
        }
        try {
            SharedPreferences prefs = activity.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
            if (!settingsLoaded) {
                settingsLoaded = true;
                intervalSec = clamp(prefs.getInt(KEY_MINUTES, 0) * 60 + prefs.getInt(KEY_SECONDS, 30),
                        DURATION_MIN_SEC, DURATION_MAX_SEC);
                trainSec = clamp(prefs.getInt(KEY_TRAIN_SEC, 20 * 60), TRAIN_MIN_SEC, TRAIN_MAX_SEC);
                maxLoops = clamp(prefs.getInt(KEY_LOOPS, 0), 0, LOOPS_MAX);
                selectedSound = prefs.getInt(KEY_SOUND, SOUND_BEEP);
                if (selectedSound < SOUND_OFF || selectedSound > SOUND_CUSTOM) {
                    selectedSound = SOUND_BEEP;
                }
                String uriText = prefs.getString(KEY_CUSTOM_URI, null);
                customSignalUri = uriText != null && uriText.length() > 0 ? Uri.parse(uriText) : null;
                blockProgramMode = prefs.getBoolean(KEY_BLOCK_MODE, false);
                blockProgramRepeat = prefs.getBoolean(KEY_BLOCK_REPEAT, false);
                blockSegments = BlockProgramStorage.loadBlocks(activity);
            }
            intervalMs = intervalSec * 1000L;
        } catch (Throwable t) {
            MusicDiagLog.logError("interval_timer_prefs_load", t);
        }
    }

    private static void saveSettings(Activity activity) {
        if (activity == null) {
            return;
        }
        try {
            SharedPreferences.Editor editor = activity.getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit();
            editor.putInt(KEY_MINUTES, intervalSec / 60);
            editor.putInt(KEY_SECONDS, intervalSec % 60);
            editor.putInt(KEY_TRAIN_SEC, trainSec);
            editor.putInt(KEY_LOOPS, maxLoops);
            editor.putInt(KEY_SOUND, selectedSound);
            editor.putBoolean(KEY_BLOCK_MODE, blockProgramMode);
            editor.putBoolean(KEY_BLOCK_REPEAT, blockProgramRepeat);
            if (customSignalUri != null) {
                editor.putString(KEY_CUSTOM_URI, customSignalUri.toString());
            } else {
                editor.remove(KEY_CUSTOM_URI);
            }
            editor.apply();
            BlockProgramStorage.save(activity, blockProgramMode, blockProgramRepeat, blockSegments);
        } catch (Throwable t) {
            MusicDiagLog.logError("interval_timer_prefs_save", t);
        }
    }

    // ================================================================ signal pickers

    private static void startRingtonePick(View view) {
        Activity activity = MusicPlayerHelper.resolveHostActivity(view);
        if (activity == null) {
            toast(STR_ERROR);
            return;
        }
        hostActivity = activity;
        soundBeforePick = selectedSound;
        try {
            Intent intent = new Intent(RingtoneManager.ACTION_RINGTONE_PICKER);
            intent.putExtra(RingtoneManager.EXTRA_RINGTONE_TYPE,
                    RingtoneManager.TYPE_NOTIFICATION | RingtoneManager.TYPE_ALARM | RingtoneManager.TYPE_RINGTONE);
            intent.putExtra(RingtoneManager.EXTRA_RINGTONE_SHOW_DEFAULT, true);
            intent.putExtra(RingtoneManager.EXTRA_RINGTONE_SHOW_SILENT, false);
            intent.putExtra(RingtoneManager.EXTRA_RINGTONE_TITLE, activity.getString(STR_SOUND_DEVICE));
            if (customSignalUri != null) {
                intent.putExtra(RingtoneManager.EXTRA_RINGTONE_EXISTING_URI, customSignalUri);
            }
            launchPicker(activity, intent, PICK_RINGTONE);
        } catch (Throwable t) {
            pickingSignal = false;
            restoreSheetAfterPick();
            MusicDiagLog.logError("interval_timer_ringtone_pick", t);
            toast(STR_ERROR);
        }
    }

    /** Same file-picker flow as {@link MusicPlayerHelper}. */
    private static void startSignalPick(View view) {
        Activity activity = MusicPlayerHelper.resolveHostActivity(view);
        if (activity == null) {
            toast(STR_ERROR);
            return;
        }
        hostActivity = activity;
        soundBeforePick = selectedSound;
        try {
            Intent intent = new Intent(Intent.ACTION_OPEN_DOCUMENT);
            intent.addCategory(Intent.CATEGORY_OPENABLE);
            intent.setType("audio/*");
            intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
            intent.addFlags(Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION);
            launchPicker(activity, intent, PICK_SIGNAL);
        } catch (Throwable t) {
            pickingSignal = false;
            restoreSheetAfterPick();
            MusicDiagLog.logError("interval_timer_pick", t);
            toast(STR_ERROR);
        }
    }

    private static void launchPicker(Activity activity, Intent intent, int code) {
        pickingSignal = true;
        if (sheet != null) {
            try {
                sheet.dialog.hide();
            } catch (Throwable ignored) {
            }
        }
        activity.startActivityForResult(intent, code);
    }

    private static int clamp(int v, int lo, int hi) {
        return v < lo ? lo : v > hi ? hi : v;
    }

    private static void toastText(String s) {
        Activity activity = resolveActivity(null);
        if (activity != null) {
            try {
                Toast.makeText(activity, s, Toast.LENGTH_SHORT).show();
            } catch (Throwable ignored) {
            }
        }
    }

    // ================================================================ floating dial

    private static boolean showOverlayDialog() {
        Activity activity = resolveActivity(null);
        if (activity == null || activity.isFinishing()) {
            return false;
        }
        hostActivity = activity;
        dismissOverlayDialog(false);
        View content;
        try {
            content = LayoutInflater.from(activity).inflate(OVERLAY_LAYOUT_ID, null);
        } catch (Throwable t) {
            MusicDiagLog.logError("interval_timer_overlay_inflate", t);
            return false;
        }
        overlayContent = content;
        ringView = (TimerRingView) content.findViewById(ID_RING);
        countdownView = (TextView) content.findViewById(ID_COUNTDOWN);
        loopLabelView = (TextView) content.findViewById(ID_LOOP_LABEL);
        bindButton(content.findViewById(ID_RESET), new ResetOverlayListener());
        pauseBtnView = (TextView) content.findViewById(ID_PAUSE);
        bindButton(pauseBtnView, new PauseOverlayListener());
        bindButton(content.findViewById(ID_CLOSE), new CloseOverlayListener());
        layoutDialControlButtons(activity, content);
        updatePauseButtonLabel();
        int overlayHeightPx = dp(activity, OVERLAY_FRAME_DP);
        int overlayWidthPx = dp(activity, OVERLAY_FRAME_DP);
        try {
            if (ringView != null) {
                ringView.setMaxDiameterDp(OVERLAY_SIZE_DP);
                ringView.setMaxProcess(RING_MAX);
            }
            if (countdownView != null) {
                countdownView.setTextSize(TypedValue.COMPLEX_UNIT_SP, COUNTDOWN_TEXT_SP);
                countdownView.setTypeface(countdownView.getTypeface(), android.graphics.Typeface.BOLD);
            }
        } catch (Throwable ignored) {
        }
        View dialHost = content.findViewById(ID_DIAL_HOST);
        if (dialHost != null) {
            dialHost.setClickable(true);
            dialHost.setFocusable(false);
            dialHost.setOnTouchListener(new OverlayDragListener());
        }
        FrameLayout wrapper = new FrameLayout(activity);
        wrapper.setClipChildren(true);
        wrapper.addView(
                content,
                new FrameLayout.LayoutParams(overlayWidthPx, overlayHeightPx));
        try {
            android.support.v7.app.AlertDialog.Builder builder =
                    new android.support.v7.app.AlertDialog.Builder(activity);
            builder.setView(wrapper);
            overlayDialog = builder.create();
            overlayDialog.setCancelable(false);
            overlayDialog.setCanceledOnTouchOutside(false);
            overlayDialog.show();
            Window window = overlayDialog.getWindow();
            if (window == null) {
                return false;
            }
            window.setBackgroundDrawableResource(android.R.color.transparent);
            window.setGravity(Gravity.TOP | Gravity.START);
            window.setLayout(overlayWidthPx, overlayHeightPx);
            WindowManager.LayoutParams lp = window.getAttributes();
            lp.width = overlayWidthPx;
            lp.height = overlayHeightPx;
            lp.x = resolveOverlayX(activity, overlayWidthPx);
            lp.y = dp(activity, OVERLAY_ROW_Y_DP);
            lp.dimAmount = 0f;
            lp.flags = (lp.flags
                    | WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE
                    | WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL)
                    & ~WindowManager.LayoutParams.FLAG_DIM_BEHIND;
            window.clearFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND);
            window.setAttributes(lp);
            refreshOverlayText();
            return true;
        } catch (Throwable t) {
            MusicDiagLog.logError("interval_timer_overlay_show", t);
            overlayDialog = null;
            overlayContent = null;
            ringView = null;
            countdownView = null;
            loopLabelView = null;
            pauseBtnView = null;
            return false;
        }
    }

    private static void dismissOverlayDialog(boolean fromDismissListener) {
        if (overlayDialog != null) {
            try {
                overlayDialog.dismiss();
            } catch (Throwable ignored) {
            }
            if (!fromDismissListener) {
                overlayDialog = null;
                overlayContent = null;
                ringView = null;
                countdownView = null;
                loopLabelView = null;
                pauseBtnView = null;
            }
        }
    }

    private static void updateOverlayVisibility() {
        if (overlayDialog == null) {
            return;
        }
        try {
            if (armed && overlayVisible) {
                if (!overlayDialog.isShowing()) {
                    overlayDialog.show();
                }
            } else if (overlayDialog.isShowing()) {
                overlayDialog.hide();
            }
        } catch (Throwable t) {
            MusicDiagLog.logError("interval_timer_overlay_visibility", t);
        }
    }

    private static void moveOverlayWindow(int x, int y) {
        if (overlayDialog == null) {
            return;
        }
        Window window = overlayDialog.getWindow();
        if (window == null) {
            return;
        }
        try {
            WindowManager.LayoutParams lp = window.getAttributes();
            lp.x = x;
            lp.y = y;
            window.setAttributes(lp);
        } catch (Throwable t) {
            MusicDiagLog.logError("interval_timer_overlay_move", t);
        }
    }

    private static void refreshOverlayText() {
        if (countdownView == null) {
            return;
        }
        if (armed && blockProgramMode && BlockProgramRunner.isArmed()) {
            updateCountdownDisplay(BlockProgramRunner.getBlockRemainingMs());
            if (loopLabelView != null) {
                int blockNum = BlockProgramRunner.getBlockIndex() + 1;
                int blockCount = Math.max(1, BlockProgramRunner.getBlockCount());
                int cycleNum = BlockProgramRunner.getCyclesDone() + 1;
                int cycleMax = Math.max(1, BlockProgramRunner.getCurrentBlockCycles());
                loopLabelView.setText("B" + blockNum + "/" + blockCount + " · C" + cycleNum + "/" + cycleMax);
            }
            refreshBlockOverlayRing();
            return;
        }
        updateCountdownDisplay(remainingMs > 0 ? remainingMs : intervalMs);
        if (loopLabelView != null) {
            if (!armed) {
                loopLabelView.setText("");
            } else if (maxLoops <= 0) {
                int shownLoop = currentLoop > 0 ? currentLoop : 1;
                loopLabelView.setText("#" + shownLoop);
            } else {
                int shownLoop = currentLoop > 0 ? currentLoop : 1;
                loopLabelView.setText("#" + shownLoop + "/" + maxLoops);
            }
        }
        refreshOverlayRing();
    }

    private static void refreshBlockOverlayRing() {
        if (ringView == null) {
            return;
        }
        try {
            long totalMs = BlockProgramRunner.getBlockTotalMs();
            long remainMs = BlockProgramRunner.getBlockRemainingMs();
            float remainingFraction = totalMs > 0L ? remainMs / (float) totalMs : 0f;
            if (remainingFraction < 0f) {
                remainingFraction = 0f;
            }
            if (remainingFraction > 1f) {
                remainingFraction = 1f;
            }
            ringView.setElapsedFraction(1f - remainingFraction);
            if (countdownView != null) {
                countdownView.setTextColor(TimerRingView.colorForRemaining(remainingFraction));
            }
        } catch (Throwable ignored) {
        }
    }

    private static void refreshOverlayRing() {
        if (ringView == null || intervalMs <= 0L) {
            return;
        }
        try {
            long shownMs = remainingMs > 0L ? remainingMs : intervalMs;
            float remainingFraction = shownMs / (float) intervalMs;
            if (remainingFraction < 0f) {
                remainingFraction = 0f;
            }
            if (remainingFraction > 1f) {
                remainingFraction = 1f;
            }
            ringView.setElapsedFraction(1f - remainingFraction);
            if (countdownView != null) {
                countdownView.setTextColor(TimerRingView.colorForRemaining(remainingFraction));
            }
        } catch (Throwable ignored) {
        }
    }

    private static void updateCountdownDisplay(long remainingMsValue) {
        if (countdownView == null) {
            return;
        }
        long sec = remainingMsValue > 0L ? remainingMsValue / 1000L : 0L;
        if (sec != lastDisplayedCountdownSec) {
            lastDisplayedCountdownSec = (int) sec;
            countdownView.setText(formatSeconds(sec));
        }
    }

    private static void resetCurrentInterval() {
        if (!armed) {
            return;
        }
        if (blockProgramMode && BlockProgramRunner.isArmed()) {
            BlockProgramRunner.resetCurrentBlockCountdown();
        } else {
            remainingMs = intervalMs;
        }
        lastDisplayedCountdownSec = -1;
        timerPausedByUser = false;
        if (trainingRunning) {
            countdownRunning = true;
            lastTickRealtime = SystemClock.elapsedRealtime();
            handler.removeCallbacks(tickRunnable);
            handler.post(tickRunnable);
        }
        playSignal();
        refreshStatusText();
        refreshOverlayText();
        updatePauseButtonLabel();
    }

    private static void onIntervalFinished() {
        if (maxLoops > 0 && currentLoop >= maxLoops) {
            triggerAllStop();
            return;
        }
        currentLoop++;
        remainingMs = intervalMs;
        playSignal();
        refreshOverlayText();
    }

    private static void playSignal() {
        if (selectedSound == SOUND_OFF) {
            return;
        }
        if (selectedSound == SOUND_CUSTOM || selectedSound == SOUND_DEVICE) {
            playCustomSignal();
            return;
        }
        playBuiltInTone(selectedSound);
    }

    private static void playBuiltInTone(int sound) {
        int toneType;
        switch (sound) {
            case SOUND_BEEP:
                toneType = ToneGenerator.TONE_PROP_BEEP;
                break;
            case SOUND_CHIME:
                toneType = ToneGenerator.TONE_PROP_ACK;
                break;
            case SOUND_BELL:
                toneType = ToneGenerator.TONE_CDMA_ALERT_CALL_GUARD;
                break;
            case SOUND_PIP:
                toneType = ToneGenerator.TONE_PROP_PROMPT;
                break;
            case SOUND_CONFIRM:
                toneType = ToneGenerator.TONE_CDMA_CONFIRM;
                break;
            case SOUND_ALARM:
                toneType = ToneGenerator.TONE_CDMA_ALERT_NETWORK_LITE;
                break;
            default:
                return;
        }
        try {
            final ToneGenerator tone = new ToneGenerator(AUDIO_STREAM, 100);
            tone.startTone(toneType, 500);
            handler.postDelayed(new ReleaseToneRunnable(tone), 550L);
        } catch (Throwable t) {
            MusicDiagLog.logError("interval_timer_tone", t);
        }
    }

    private static void playCustomSignal() {
        if (customSignalUri == null) {
            return;
        }
        Activity activity = resolveActivity(null);
        if (activity == null) {
            return;
        }
        releaseSignalPlayer();
        try {
            signalPlayer = new MediaPlayer();
            signalPlayer.setAudioStreamType(AUDIO_STREAM);
            signalPlayer.setVolume(1.0f, 1.0f);
            signalPlayer.setDataSource(activity, customSignalUri);
            signalPlayer.setOnCompletionListener(new SignalCompletionListener());
            signalPlayer.setOnErrorListener(new SignalErrorListener());
            signalPlayer.prepare();
            signalPlayer.start();
        } catch (Throwable t) {
            MusicDiagLog.logError("interval_timer_custom_signal", t);
            releaseSignalPlayer();
        }
    }

    private static void releaseSignalPlayer() {
        if (signalPlayer == null) {
            return;
        }
        try {
            signalPlayer.stop();
        } catch (Throwable ignored) {
        }
        try {
            signalPlayer.release();
        } catch (Throwable ignored) {
        }
        signalPlayer = null;
    }

    private static String formatSeconds(long totalSec) {
        if (totalSec < 0L) {
            totalSec = 0L;
        }
        long min = totalSec / 60L;
        long sec = totalSec % 60L;
        return String.format("%02d:%02d", min, sec);
    }

    private static void bindButton(View view, View.OnClickListener listener) {
        if (view == null) {
            return;
        }
        view.setClickable(true);
        view.setFocusable(true);
        view.setOnClickListener(listener);
    }

    /** Place timer dial fully left of the master-button sidebar, with a fixed gap. */
    private static int resolveOverlayX(Activity activity, int overlayWidthPx) {
        int gapPx = dp(activity, OVERLAY_SIDEBAR_GAP_DP);
        View sidebar = panelRoot != null ? panelRoot.findViewById(RIGHT_LAYOUT_ID) : null;
        if (sidebar != null && sidebar.getWidth() > 0) {
            int[] loc = new int[2];
            sidebar.getLocationOnScreen(loc);
            return Math.max(0, loc[0] - overlayWidthPx - gapPx);
        }
        int screenWidth = activity.getResources().getDisplayMetrics().widthPixels;
        float totalWeight = CONTENT_WIDTH_WEIGHT + SIDEBAR_WIDTH_WEIGHT;
        int sidebarEstimatePx = Math.round(screenWidth * SIDEBAR_WIDTH_WEIGHT / totalWeight);
        return Math.max(0, screenWidth - sidebarEstimatePx - overlayWidthPx - gapPx);
    }

    private static int dp(Activity activity, int value) {
        if (activity == null) {
            return value;
        }
        float density = activity.getResources().getDisplayMetrics().density;
        return (int) (value * density + 0.5f);
    }

    /** Place reset/pause/close outside the dial at clock angles (1:30, 3:00, 4:30). */
    private static void layoutDialControlButtons(Activity activity, View root) {
        if (activity == null || root == null) {
            return;
        }
        View closeBtn = root.findViewById(ID_CLOSE);
        View resetBtn = root.findViewById(ID_RESET);
        View pauseBtn = root.findViewById(ID_PAUSE);
        int framePx = dp(activity, OVERLAY_FRAME_DP);
        int dialPx = dp(activity, OVERLAY_SIZE_DP);
        int btnPx = dp(activity, OVERLAY_CONTROL_BTN_DP);
        float gapPx = dp(activity, OVERLAY_BTN_OUTSIDE_GAP_DP);
        float radius = (dialPx / 2f) + gapPx + (btnPx / 2f);
        float cx = framePx / 2f;
        float cy = framePx / 2f;
        placeDialButton(closeBtn, BTN_ANGLE_CLOSE, cx, cy, radius, btnPx);
        placeDialButton(resetBtn, BTN_ANGLE_RESET, cx, cy, radius, btnPx);
        placeDialButton(pauseBtn, BTN_ANGLE_PAUSE, cx, cy, radius, btnPx);
    }

    private static void placeDialButton(
            View button, float degreesFromTop, float cx, float cy, float radius, int btnPx) {
        if (button == null) {
            return;
        }
        double rad = Math.toRadians(degreesFromTop);
        int left = Math.round(cx + radius * (float) Math.sin(rad) - btnPx / 2f);
        int top = Math.round(cy - radius * (float) Math.cos(rad) - btnPx / 2f);
        FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(btnPx, btnPx);
        lp.gravity = Gravity.TOP | Gravity.START;
        lp.leftMargin = left;
        lp.topMargin = top;
        button.setLayoutParams(lp);
        button.setElevation(4f);
    }

    private static void toast(int resId) {
        Activity activity = resolveActivity(null);
        if (activity == null) {
            return;
        }
        try {
            Toast.makeText(activity, resId, Toast.LENGTH_SHORT).show();
        } catch (Throwable ignored) {
        }
    }

    static final class ResetOverlayListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            resetCurrentInterval();
        }
    }

    static final class PauseOverlayListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            toggleTimerPause();
        }
    }

    static final class CloseOverlayListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            disarmTimerKeepSettings();
        }
    }

    static final class MasterToggleListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            hostActivity = MusicPlayerHelper.resolveHostActivity(v);
            toggleMasterPanel();
        }
    }

    static final class OverlayDragListener implements View.OnTouchListener {
        @Override
        public boolean onTouch(View v, MotionEvent event) {
            if (overlayDialog == null || overlayDialog.getWindow() == null) {
                return false;
            }
            WindowManager.LayoutParams lp = overlayDialog.getWindow().getAttributes();
            switch (event.getActionMasked()) {
                case MotionEvent.ACTION_DOWN:
                    overlayTouchDx = event.getRawX() - lp.x;
                    overlayTouchDy = event.getRawY() - lp.y;
                    overlayDownRawX = event.getRawX();
                    overlayDownRawY = event.getRawY();
                    overlayMoved = false;
                    return true;
                case MotionEvent.ACTION_MOVE: {
                    float dx = event.getRawX() - overlayDownRawX;
                    float dy = event.getRawY() - overlayDownRawY;
                    Activity activity = resolveActivity(null);
                    float slop = activity != null
                            ? (float) dp(activity, (int) OVERLAY_TAP_SLOP_DP)
                            : 24f;
                    if ((dx * dx) + (dy * dy) > slop * slop) {
                        overlayMoved = true;
                    }
                    moveOverlayWindow(
                            (int) (event.getRawX() - overlayTouchDx),
                            (int) (event.getRawY() - overlayTouchDy));
                    return true;
                }
                case MotionEvent.ACTION_UP:
                    if (!overlayMoved) {
                        openOverlaySettings();
                    }
                    return true;
                case MotionEvent.ACTION_CANCEL:
                    return true;
                default:
                    return false;
            }
        }
    }

    static final class FinishArmRunnable implements Runnable {
        @Override
        public void run() {
            finishArm();
        }
    }

    static final class TriggerStopRunnable implements Runnable {
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
    }

    static final class ReleaseToneRunnable implements Runnable {
        private final ToneGenerator tone;

        ReleaseToneRunnable(ToneGenerator tone) {
            this.tone = tone;
        }

        @Override
        public void run() {
            try {
                tone.release();
            } catch (Throwable ignored) {
            }
        }
    }

    static final class SignalCompletionListener implements MediaPlayer.OnCompletionListener {
        @Override
        public void onCompletion(MediaPlayer mp) {
            releaseSignalPlayer();
        }
    }

    static final class SignalErrorListener implements MediaPlayer.OnErrorListener {
        @Override
        public boolean onError(MediaPlayer mp, int what, int extra) {
            MusicDiagLog.log("interval_timer", "custom signal error what=" + what + " extra=" + extra);
            releaseSignalPlayer();
            return true;
        }
    }

    static final class TickRunnable implements Runnable {
        @Override
        public void run() {
            try {
                if (!armed || !countdownRunning || !trainingRunning) {
                    return;
                }
                long now = SystemClock.elapsedRealtime();
                long delta = now - lastTickRealtime;
                lastTickRealtime = now;
                if (blockProgramMode && BlockProgramRunner.isArmed()) {
                    BlockProgramRunner.tickBlock(delta);
                    refreshOverlayText();
                    handler.postDelayed(tickRunnable, TICK_MS);
                    return;
                }
                remainingMs -= delta;
                if (remainingMs <= 0L) {
                    onIntervalFinished();
                }
                refreshOverlayText();
                handler.postDelayed(tickRunnable, TICK_MS);
            } catch (Throwable t) {
                com.isaigu.gymapp.widget.XemsGuard.report("IntervalTimerHelper.tick", t);
            }
        }
    }
}
