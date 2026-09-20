package com.isaigu.gymapp.dialog;

import android.app.Activity;
import android.content.Context;
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
import android.util.TypedValue;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import android.widget.ArrayAdapter;
import android.widget.CompoundButton;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;

import java.util.ArrayList;

import com.isaigu.gymapp.MainActivity;
import com.isaigu.gymapp.train.TrainItemManager;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.train.utils.MusicDiagLog;
import com.isaigu.gymapp.widget.AmountView;
import com.isaigu.gymapp.widget.TimerRingView;

/**
 * Master-panel interval timer. Uses AlertDialog for config and floating overlay
 * (same safe pattern as {@link MusicPlayerHelper} — never addView on decor).
 */
public final class IntervalTimerHelper {
    static final int BUTTON_ID = 0x7f090230;
    static final int ALL_STOP_ID = 0x7f09003c;
    static final int DIALOG_LAYOUT_ID = 0x7f0b0079;
    static final int OVERLAY_LAYOUT_ID = 0x7f0b007a;
    static final int SPINNER_ITEM_LAYOUT_ID = 0x7f0b007b;
    static final int PICK_SIGNAL = 0x4256;
    static final int PICK_RINGTONE = 0x4257;

    private static final int ID_MINUTES = 0x7f090231;
    private static final int ID_SECONDS = 0x7f090232;
    private static final int ID_LOOPS = 0x7f090233;
    private static final int ID_LOOPS_MINUS = 0x7f090234;
    private static final int ID_LOOPS_PLUS = 0x7f090235;
    private static final int ID_ACTIVATE = 0x7f090236;
    private static final int ID_STATUS = 0x7f090237;
    private static final int ID_COUNTDOWN = 0x7f090239;
    private static final int ID_LOOP_LABEL = 0x7f09023a;
    private static final int ID_SOUND_FILE = 0x7f09023b;
    private static final int ID_SOUND_PREVIEW = 0x7f09023c;
    private static final int ID_SOUND_PICK = 0x7f09023d;
    private static final int ID_SOUND_SPINNER = 0x7f09023e;
    private static final int ID_RING = 0x7f090243;
    private static final int ID_SOUND_CLEAR = 0x7f090244;
    private static final int ID_SOUND_FILE_ROW = 0x7f090245;
    private static final int ID_BLOCK_MODE = 0x7f090260;
    private static final int ID_BLOCK_REPEAT = 0x7f090261;
    private static final int ID_BLOCK_EDIT = 0x7f090262;
    private static final int ID_BLOCK_SUMMARY = 0x7f090263;
    private static final int ID_SIMPLE_PANEL = 0x7f090264;
    private static final int ID_BLOCK_PANEL = 0x7f090265;
    private static final int ID_BLOCK_DURATION = 0x7f090266;
    private static final int ID_PRESET_SPINNER = 0x7f090267;
    private static final int ID_PRESET_SAVE = 0x7f090268;
    private static final int ID_PRESET_EDIT = 0x7f090269;
    private static final int ID_PRESET_DELETE = 0x7f09026a;
    private static final int ID_TAB_INTERVAL = 0x7f090270;
    private static final int ID_TAB_BLOCK = 0x7f090271;
    private static final int ID_ADVANCED_PANEL = 0x7f090272;
    private static final int ID_ADVANCED_TOGGLE = 0x7f090273;
    private static final int ID_DURATION_LABEL = 0x7f090275;
    private static final int ID_DURATION_ROW = 0x7f090276;
    private static final int ID_RESET = 0x7f090278;
    private static final int ID_CONFIG_SCROLL = 0x7f090274;
    /** Max config panel height before scrolling — keeps activate button reachable. */
    private static final int CONFIG_DIALOG_MAX_HEIGHT_DP = 420;

    private static final int STR_STATUS_IDLE = 0x7f0d0120;
    private static final int STR_STATUS_ARMED = 0x7f0d0121;
    private static final int STR_STATUS_RUNNING = 0x7f0d0122;
    private static final int STR_INVALID_DURATION = 0x7f0d0127;
    private static final int STR_ERROR = 0x7f0d0128;
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
    private static final int STR_BLOCK_MODE = 0x7f0d0140;
    private static final int STR_BLOCK_REPEAT = 0x7f0d0141;
    private static final int STR_BLOCK_EDIT = 0x7f0d0142;
    private static final int STR_BLOCK_SUMMARY = 0x7f0d0143;
    private static final int STR_BLOCK_DURATION = 0x7f0d014e;
    private static final int STR_BLOCK_TRAIN_TIME = 0x7f0d014f;
    private static final int STR_BLOCK_EMPTY = 0x7f0d0150;
    private static final int STR_TAB_INTERVAL = 0x7f0d0161;
    private static final int STR_TAB_BLOCK = 0x7f0d0162;
    private static final int STR_DURATION = 0x7f0d0163;
    private static final int STR_DURATION_TRAIN = 0x7f0d0164;
    private static final int STR_REPEATS_UNLIMITED = 0x7f0d0166;
    private static final int STR_ADVANCED = 0x7f0d0167;

    private static final int DURATION_MIN_SEC = 5;
    private static final int DURATION_MAX_SEC = 600;
    private static final int LOOPS_MAX = 30;

    private static final String KEY_BLOCK_MODE = "block_program_mode";
    private static final String KEY_BLOCK_REPEAT = "block_program_repeat";

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
    private static final int OVERLAY_RESET_BTN_DP = 44;
    private static final int OVERLAY_RESET_GAP_DP = 4;
    private static final int OVERLAY_WIDTH_DP =
            OVERLAY_SIZE_DP + OVERLAY_RESET_BTN_DP + OVERLAY_RESET_GAP_DP;
    /** Compact config panel width — must match apply-interval-timer dialog layout. */
    private static final int CONFIG_DIALOG_WIDTH_DP = 328;

    private static final String PREFS = "interval_timer";
    private static final String KEY_MINUTES = "minutes";
    private static final String KEY_SECONDS = "seconds";
    private static final String KEY_LOOPS = "loops";
    private static final String KEY_SOUND = "sound";
    private static final String KEY_CUSTOM_URI = "custom_uri";
    private static final float COUNTDOWN_TEXT_SP = 54f;
    private static final float OVERLAY_TAP_SLOP_DP = 10f;
    private static final int STR_NO_TRAINING = 0x7f0d011a;
    private static final int OPAQUE_DIALOG_BG = 0x7f080069;
    private static final int AUDIO_STREAM = AudioManager.STREAM_MUSIC;

    private static android.support.v7.app.AlertDialog configDialog;
    private static android.support.v7.app.AlertDialog overlayDialog;
    private static View configContent;
    private static View overlayContent;
    private static AmountView minutesView;
    private static AmountView secondsView;
    private static AmountView loopsView;
    private static TextView durationLabelView;
    private static View durationRow;
    private static View tabIntervalBtn;
    private static View tabBlockBtn;
    private static View advancedPanel;
    private static View advancedToggle;
    private static TextView statusView;
    private static TextView countdownView;
    private static TextView loopLabelView;
    private static TextView soundFileView;
    private static View soundFileRow;
    private static Spinner soundSpinner;
    private static View soundPickBtn;
    private static View soundClearBtn;
    private static TimerRingView ringView;

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
    private static boolean pickingSignal;
    private static boolean ignoreSpinnerCallback;

    private static int selectedSound = SOUND_BEEP;
    private static int soundBeforePick = SOUND_BEEP;
    private static Uri customSignalUri;
    private static MediaPlayer signalPlayer;

    private static long intervalMs = 30000L;
    private static int maxLoops;
    private static int savedMinutes;
    private static int savedSeconds = 30;
    private static int currentLoop;
    private static long remainingMs;
    private static long lastTickRealtime;
    private static int lastDisplayedCountdownSec = -1;

    private static float overlayTouchDx;
    private static float overlayTouchDy;
    private static float overlayDownRawX;
    private static float overlayDownRawY;
    private static boolean overlayMoved;

    private static boolean blockProgramMode;
    private static boolean blockProgramRepeat;
    private static ArrayList<ProgramSegment> blockSegments = new ArrayList<>();
    private static View simpleModePanel;
    private static View blockModePanel;
    private static TextView blockSummaryView;
    private static TextView blockDurationView;
    private static Switch blockRepeatSwitch;
    private static Spinner presetSpinner;
    private static boolean ignoreAmountCallback;
    private static boolean advancedExpanded;

    private IntervalTimerHelper() {
    }

    static void applyPreset(TimerPreset preset) {
        if (preset == null) {
            return;
        }
        savedMinutes = preset.minutes;
        savedSeconds = preset.seconds;
        maxLoops = preset.loops;
        selectedSound = preset.sound;
        if (selectedSound < SOUND_OFF || selectedSound > SOUND_CUSTOM) {
            selectedSound = SOUND_BEEP;
        }
        customSignalUri = preset.customUri != null && preset.customUri.length() > 0
                ? Uri.parse(preset.customUri)
                : null;
        blockProgramMode = preset.blockMode;
        blockProgramRepeat = preset.blockRepeat;
        blockSegments = preset.blocks != null ? new ArrayList<>(preset.blocks) : new ArrayList<>();
        syncAmountViewsFromValues();
        if (blockRepeatSwitch != null) {
            blockRepeatSwitch.setChecked(blockProgramRepeat);
        }
        updateModePanels();
        refreshBlockSummary();
        refreshSoundUi();
    }

    static TimerPreset captureCurrentPreset(String id, String name) {
        TimerPreset preset = new TimerPreset();
        preset.id = id != null ? id : TimerPresetStorage.newId();
        preset.name = name != null ? name : "";
        int totalSec = readDurationTotalSec();
        preset.minutes = totalSec / 60;
        preset.seconds = totalSec % 60;
        preset.loops = readLoopsInput();
        preset.sound = readSoundSelection();
        preset.customUri = customSignalUri != null ? customSignalUri.toString() : "";
        preset.blockMode = blockProgramMode;
        preset.blockRepeat = blockRepeatSwitch != null && blockRepeatSwitch.isChecked();
        preset.blocks = blockSegments != null ? new ArrayList<>(blockSegments) : new ArrayList<>();
        return preset;
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
        button.setClickable(true);
        button.setEnabled(true);
        button.setFocusable(true);
        button.setOnClickListener(new MasterToggleListener());
    }

    public static void onActivityResult(int requestCode, int resultCode, Intent data) {
        pickingSignal = false;
        restoreConfigDialogAfterPick();
        if (requestCode == PICK_SIGNAL) {
            handleSignalFileResult(resultCode, data);
            return;
        }
        if (requestCode == PICK_RINGTONE) {
            handleRingtoneResult(resultCode, data);
        }
    }

    private static void handleSignalFileResult(int resultCode, Intent data) {
        if (resultCode != Activity.RESULT_OK || data == null) {
            selectedSound = soundBeforePick;
            refreshSoundUi();
            return;
        }
        Uri uri = data.getData();
        if (uri == null) {
            selectedSound = soundBeforePick;
            refreshSoundUi();
            return;
        }
        customSignalUri = uri;
        selectedSound = SOUND_CUSTOM;
        try {
            Activity activity = MusicPlayerHelper.resolveHostActivity(null, configContent);
            if (activity != null) {
                int takeFlags = data.getFlags()
                        & (Intent.FLAG_GRANT_READ_URI_PERMISSION
                        | Intent.FLAG_GRANT_WRITE_URI_PERMISSION);
                if (takeFlags != 0) {
                    try {
                        activity.getContentResolver().takePersistableUriPermission(uri, takeFlags);
                    } catch (Throwable t) {
                        MusicDiagLog.logError("interval_timer_uri_persist", t);
                    }
                }
            }
        } catch (Throwable t) {
            MusicDiagLog.logError("interval_timer_uri_grant", t);
        }
        refreshSoundUi();
        MusicDiagLog.log("interval_timer", "custom signal uri set");
    }

    private static void handleRingtoneResult(int resultCode, Intent data) {
        if (resultCode != Activity.RESULT_OK || data == null) {
            selectedSound = soundBeforePick;
            refreshSoundUi();
            return;
        }
        Uri uri = data.getParcelableExtra(RingtoneManager.EXTRA_RINGTONE_PICKED_URI);
        if (uri == null) {
            selectedSound = soundBeforePick;
            refreshSoundUi();
            return;
        }
        customSignalUri = uri;
        selectedSound = SOUND_DEVICE;
        refreshSoundUi();
        MusicDiagLog.log("interval_timer", "device signal uri set");
    }

    /** Sync timer run/pause from any train row start/stop (not only master buttons). */
    public static void syncTrainingState() {
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
        trainingRunning = running;
        if (!armed) {
            updateOverlayVisibility();
            return;
        }
        if (blockProgramMode && BlockProgramRunner.isArmed()) {
            if (running) {
                BlockProgramRunner.onTrainingStart();
                lastDisplayedCountdownSec = -1;
                if (!countdownRunning) {
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
            return;
        }
        if (running) {
            if (!countdownRunning) {
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
        updateOverlayVisibility();
    }

    public static void onTrainingStop() {
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
        trainingRunning = false;
        currentLoop = 0;
        remainingMs = intervalMs;
        overlayVisible = false;
        lastDisplayedCountdownSec = -1;
        handler.removeCallbacks(tickRunnable);
        releaseSignalPlayer();
        BlockProgramRunner.reset();
        dismissConfigDialog(false);
        dismissOverlayDialog(false);
        refreshStatusText();
    }

    private static boolean hasLoadedTraining() {
        return MusicPlayerHelper.resolveTargetItem(itemManager) != null;
    }

    private static void armFromConfig() {
        if (!hasLoadedTraining()) {
            toast(STR_NO_TRAINING);
            return;
        }
        int totalSec = readDurationTotalSec();
        int minutes = totalSec / 60;
        int seconds = totalSec % 60;
        selectedSound = readSoundSelection();
        if ((selectedSound == SOUND_CUSTOM || selectedSound == SOUND_DEVICE)
                && customSignalUri == null) {
            toast(selectedSound == SOUND_DEVICE ? STR_SOUND_PICK_DEVICE : STR_SOUND_NO_FILE);
            return;
        }
        blockProgramRepeat = blockRepeatSwitch != null && blockRepeatSwitch.isChecked();
        if (blockProgramMode) {
            if (blockSegments == null || blockSegments.isEmpty()) {
                toast(STR_BLOCK_EMPTY);
                return;
            }
            int trainingSec = minutes * 60 + seconds;
            if (blockProgramRepeat && trainingSec <= 0) {
                toast(STR_INVALID_DURATION);
                return;
            }
            if (!blockProgramRepeat) {
                int[] onOff = resolveOnOffFromSeed();
                trainingSec = BlockProgramRunner.computeSequenceSeconds(
                        blockSegments, onOff[0], onOff[1]);
            }
            BlockProgramRunner.arm(itemManager, blockSegments, blockProgramRepeat, Math.max(1, trainingSec));
            intervalMs = trainingSec * 1000L;
            maxLoops = 0;
            saveSettings(resolveActivity(null), minutes, seconds);
            currentLoop = 0;
            remainingMs = intervalMs;
            lastDisplayedCountdownSec = -1;
            armed = true;
            overlayVisible = true;
            countdownRunning = false;
            refreshStatusText();
            dismissConfigDialog(false);
            handler.post(new FinishArmRunnable());
            return;
        }
        if (minutes == 0 && seconds == 0) {
            toast(STR_INVALID_DURATION);
            return;
        }
        intervalMs = ((minutes * 60L) + seconds) * 1000L;
        maxLoops = readLoopsInput();
        saveSettings(resolveActivity(null), minutes, seconds);
        currentLoop = 0;
        remainingMs = intervalMs;
        lastDisplayedCountdownSec = -1;
        armed = true;
        overlayVisible = true;
        countdownRunning = false;
        refreshStatusText();
        dismissConfigDialog(false);
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
        MusicDiagLog.log(
                "interval_timer",
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
        showConfigDialog(activity);
    }

    private static void toggleMasterPanel() {
        Activity activity = resolveActivity(null);
        if (activity == null) {
            toast(STR_ERROR);
            MusicDiagLog.log("interval_timer", "toggle: no activity");
            return;
        }
        hostActivity = activity;
        if (!armed) {
            if (!hasLoadedTraining()) {
                toast(STR_NO_TRAINING);
                return;
            }
            showConfigDialog(activity);
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
        if (configDialog != null) {
            Activity fromConfig = MusicSyncHelper.resolveActivity(configDialog.getContext());
            if (fromConfig != null) {
                hostActivity = fromConfig;
                return fromConfig;
            }
        }
        if (overlayDialog != null) {
            Activity fromOverlay = MusicSyncHelper.resolveActivity(overlayDialog.getContext());
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

    private static int capConfigDialogScroll(Activity activity, View content) {
        if (activity == null || content == null) {
            return 0;
        }
        ScrollView scroll = null;
        if (content instanceof ScrollView) {
            scroll = (ScrollView) content;
        } else {
            View found = content.findViewById(ID_CONFIG_SCROLL);
            if (found instanceof ScrollView) {
                scroll = (ScrollView) found;
            }
        }
        if (scroll == null || scroll.getChildCount() < 1) {
            return 0;
        }
        View child = scroll.getChildAt(0);
        int maxHeight = dp(activity, CONFIG_DIALOG_MAX_HEIGHT_DP);
        int screenCap = (int) (activity.getResources().getDisplayMetrics().heightPixels * 0.85f);
        if (screenCap > 0 && screenCap < maxHeight) {
            maxHeight = screenCap;
        }
        int widthPx = dp(activity, CONFIG_DIALOG_WIDTH_DP);
        int widthSpec = View.MeasureSpec.makeMeasureSpec(widthPx, View.MeasureSpec.EXACTLY);
        int heightSpec = View.MeasureSpec.makeMeasureSpec(0, View.MeasureSpec.UNSPECIFIED);
        child.measure(widthSpec, heightSpec);
        int contentHeight = child.getMeasuredHeight();
        int scrollHeight = contentHeight > maxHeight ? maxHeight : contentHeight;
        android.view.ViewGroup.LayoutParams lp = scroll.getLayoutParams();
        if (lp == null) {
            lp = new android.view.ViewGroup.LayoutParams(widthPx, scrollHeight);
        } else {
            lp.width = widthPx;
            lp.height = scrollHeight;
        }
        scroll.setLayoutParams(lp);
        scroll.measure(
                View.MeasureSpec.makeMeasureSpec(widthPx, View.MeasureSpec.EXACTLY),
                View.MeasureSpec.makeMeasureSpec(scrollHeight, View.MeasureSpec.EXACTLY));
        return scroll.getMeasuredHeight() > 0 ? scroll.getMeasuredHeight() : scrollHeight;
    }

    private static void showConfigDialog(Activity activity) {
        if (configDialog != null && configDialog.isShowing()) {
            return;
        }
        hostActivity = activity;
        loadSavedSettings(activity);
        dismissConfigDialog(false);
        View content;
        try {
            content = LayoutInflater.from(activity).inflate(DIALOG_LAYOUT_ID, null);
        } catch (Throwable t) {
            MusicDiagLog.logError("interval_timer_config", t);
            toast(STR_ERROR);
            return;
        }
        configContent = content;
        int dialogHeight = capConfigDialogScroll(activity, content);
        statusView = (TextView) content.findViewById(ID_STATUS);
        soundFileView = (TextView) content.findViewById(ID_SOUND_FILE);
        soundFileRow = content.findViewById(ID_SOUND_FILE_ROW);
        soundSpinner = (Spinner) content.findViewById(ID_SOUND_SPINNER);
        soundPickBtn = content.findViewById(ID_SOUND_PICK);
        soundClearBtn = content.findViewById(ID_SOUND_CLEAR);
        durationRow = content.findViewById(ID_DURATION_ROW);
        durationLabelView = (TextView) content.findViewById(ID_DURATION_LABEL);
        minutesView = (AmountView) content.findViewById(ID_MINUTES);
        secondsView = (AmountView) content.findViewById(ID_SECONDS);
        loopsView = (AmountView) content.findViewById(ID_LOOPS);
        tabIntervalBtn = content.findViewById(ID_TAB_INTERVAL);
        tabBlockBtn = content.findViewById(ID_TAB_BLOCK);
        advancedPanel = content.findViewById(ID_ADVANCED_PANEL);
        advancedToggle = content.findViewById(ID_ADVANCED_TOGGLE);
        configureDurationPicker(minutesView, 0, DURATION_MAX_SEC / 60, 1, savedMinutes);
        configureDurationPicker(secondsView, 0, 59, 1, savedSeconds);
        configureDurationPicker(loopsView, 0, LOOPS_MAX, 1, maxLoops);
        attachAmountListeners();
        syncAmountViewsFromValues();
        bindButton(tabIntervalBtn, new TabIntervalListener());
        bindButton(tabBlockBtn, new TabBlockListener());
        bindButton(advancedToggle, new AdvancedToggleListener());
        bindButton(content.findViewById(ID_ACTIVATE), new ActivateListener());
        bindButton(content.findViewById(ID_SOUND_PREVIEW), new SoundPreviewListener());
        bindButton(soundPickBtn, new SoundPickListener());
        bindButton(soundClearBtn, new SoundClearListener());
        simpleModePanel = content.findViewById(ID_SIMPLE_PANEL);
        blockModePanel = content.findViewById(ID_BLOCK_PANEL);
        blockSummaryView = (TextView) content.findViewById(ID_BLOCK_SUMMARY);
        blockDurationView = (TextView) content.findViewById(ID_BLOCK_DURATION);
        blockRepeatSwitch = (Switch) content.findViewById(ID_BLOCK_REPEAT);
        View blockEditBtn = content.findViewById(ID_BLOCK_EDIT);
        if (blockRepeatSwitch != null) {
            blockRepeatSwitch.setChecked(blockProgramRepeat);
            blockRepeatSwitch.setOnCheckedChangeListener(new BlockRepeatSwitchListener());
        }
        if (blockEditBtn != null) {
            blockEditBtn.setOnClickListener(new BlockEditListener(activity));
        }
        if (advancedPanel != null) {
            advancedPanel.setVisibility(advancedExpanded ? View.VISIBLE : View.GONE);
        }
        refreshAdvancedToggleLabel(activity);
        presetSpinner = (Spinner) content.findViewById(ID_PRESET_SPINNER);
        TimerPresetUiHelper.bind(
                activity,
                presetSpinner,
                content.findViewById(ID_PRESET_SAVE),
                content.findViewById(ID_PRESET_EDIT),
                content.findViewById(ID_PRESET_DELETE),
                new PresetRefreshRunnable());
        updateModePanels();
        refreshBlockSummary();
        setupSoundSpinner(activity);
        refreshSoundUi();
        refreshStatusText();
        android.support.v7.app.AlertDialog.Builder builder =
                new android.support.v7.app.AlertDialog.Builder(activity);
        builder.setView(content);
        builder.setOnDismissListener(new ConfigDismissListener());
        configDialog = builder.create();
        configDialog.setCancelable(true);
        configDialog.setCanceledOnTouchOutside(true);
        applyOpaqueWindow(configDialog);
        try {
            Window window = configDialog.getWindow();
            if (window != null) {
                int widthPx = dp(activity, CONFIG_DIALOG_WIDTH_DP);
                int heightPx = dialogHeight > 0
                        ? dialogHeight
                        : WindowManager.LayoutParams.WRAP_CONTENT;
                window.setLayout(widthPx, heightPx);
                window.setGravity(Gravity.CENTER);
            }
        } catch (Throwable ignored) {
        }
        configDialog.show();
    }

    private static void setupSoundSpinner(Activity activity) {
        if (soundSpinner == null) {
            return;
        }
        String[] labels = new String[] {
                activity.getString(STR_SOUND_OFF),
                activity.getString(STR_SOUND_BEEP),
                activity.getString(STR_SOUND_CHIME),
                activity.getString(STR_SOUND_BELL),
                activity.getString(STR_SOUND_PIP),
                activity.getString(STR_SOUND_CONFIRM),
                activity.getString(STR_SOUND_ALARM),
                activity.getString(STR_SOUND_DEVICE),
                activity.getString(STR_SOUND_CUSTOM),
        };
        ArrayAdapter<String> adapter = new ArrayAdapter<String>(
                activity, SPINNER_ITEM_LAYOUT_ID, labels);
        adapter.setDropDownViewResource(SPINNER_ITEM_LAYOUT_ID);
        ignoreSpinnerCallback = true;
        soundSpinner.setAdapter(adapter);
        if (selectedSound >= 0 && selectedSound < labels.length) {
            soundSpinner.setSelection(selectedSound);
        }
        soundSpinner.setOnItemSelectedListener(new SoundSpinnerListener());
        ignoreSpinnerCallback = false;
    }

    private static int readSoundSelection() {
        if (soundSpinner != null) {
            return soundSpinner.getSelectedItemPosition();
        }
        return selectedSound;
    }

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
        int overlayHeightPx = dp(activity, OVERLAY_SIZE_DP);
        int overlayWidthPx = dp(activity, OVERLAY_WIDTH_DP);
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
        content.setClickable(true);
        content.setFocusable(false);
        content.setOnTouchListener(new OverlayDragListener());
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
            lp.x = dp(activity, 20);
            lp.y = dp(activity, 88);
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
            return false;
        }
    }

    private static void restoreConfigDialogAfterPick() {
        android.support.v7.app.AlertDialog current = configDialog;
        if (current == null) {
            return;
        }
        try {
            if (!current.isShowing()) {
                current.show();
            }
        } catch (Throwable t) {
            MusicDiagLog.logError("interval_timer_dialog_restore", t);
        }
    }

    private static void dismissConfigDialog(boolean fromDismissListener) {
        if (configDialog != null) {
            try {
                configDialog.dismiss();
            } catch (Throwable ignored) {
            }
            if (!fromDismissListener && !pickingSignal) {
                configDialog = null;
                configContent = null;
                clearConfigRefs();
            }
        }
    }

    private static void clearConfigRefs() {
        minutesView = null;
        secondsView = null;
        loopsView = null;
        durationLabelView = null;
        durationRow = null;
        tabIntervalBtn = null;
        tabBlockBtn = null;
        advancedPanel = null;
        advancedToggle = null;
        statusView = null;
        soundFileView = null;
        soundFileRow = null;
        soundSpinner = null;
        soundPickBtn = null;
        soundClearBtn = null;
        presetSpinner = null;
        simpleModePanel = null;
        blockModePanel = null;
        blockSummaryView = null;
        blockDurationView = null;
        blockRepeatSwitch = null;
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
            }
        }
    }

    private static void applyOpaqueWindow(android.support.v7.app.AlertDialog dialog) {
        if (dialog == null || dialog.getWindow() == null) {
            return;
        }
        try {
            dialog.getWindow().setBackgroundDrawableResource(OPAQUE_DIALOG_BG);
        } catch (Throwable ignored) {
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

    private static void loadSavedSettings(Activity activity) {
        if (activity == null) {
            return;
        }
        try {
            SharedPreferences prefs = activity.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
            savedMinutes = prefs.getInt(KEY_MINUTES, 0);
            savedSeconds = prefs.getInt(KEY_SECONDS, 30);
            maxLoops = prefs.getInt(KEY_LOOPS, 0);
            selectedSound = prefs.getInt(KEY_SOUND, SOUND_BEEP);
            String uriText = prefs.getString(KEY_CUSTOM_URI, null);
            customSignalUri = uriText != null && uriText.length() > 0 ? Uri.parse(uriText) : null;
            if (savedMinutes < 0) {
                savedMinutes = 0;
            }
            if (savedMinutes > 59) {
                savedMinutes = 59;
            }
            if (savedSeconds < 0) {
                savedSeconds = 0;
            }
            if (savedSeconds > 59) {
                savedSeconds = 59;
            }
            if (selectedSound < SOUND_OFF || selectedSound > SOUND_CUSTOM) {
                selectedSound = SOUND_BEEP;
            }
            blockProgramMode = prefs.getBoolean(KEY_BLOCK_MODE, false);
            blockProgramRepeat = prefs.getBoolean(KEY_BLOCK_REPEAT, false);
            blockSegments = BlockProgramStorage.loadBlocks(activity);
            long ms = ((savedMinutes * 60L) + savedSeconds) * 1000L;
            intervalMs = ms > 0L ? ms : 30000L;
        } catch (Throwable t) {
            MusicDiagLog.logError("interval_timer_prefs_load", t);
        }
    }

    private static void saveSettings(Activity activity, int minutes, int seconds) {
        if (activity == null) {
            return;
        }
        savedMinutes = minutes;
        savedSeconds = seconds;
        try {
            SharedPreferences.Editor editor =
                    activity.getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit();
            editor.putInt(KEY_MINUTES, minutes);
            editor.putInt(KEY_SECONDS, seconds);
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

    private static void updateModePanels() {
        int blockVisibility = blockProgramMode ? View.VISIBLE : View.GONE;
        int simpleVisibility = blockProgramMode ? View.GONE : View.VISIBLE;
        if (blockModePanel != null) {
            blockModePanel.setVisibility(blockVisibility);
        }
        if (simpleModePanel != null) {
            simpleModePanel.setVisibility(simpleVisibility);
        }
        if (durationRow != null) {
            durationRow.setVisibility(
                    !blockProgramMode || blockProgramRepeat ? View.VISIBLE : View.GONE);
        }
        Activity activity = resolveActivity(null);
        if (durationLabelView != null && activity != null) {
            durationLabelView.setText(
                    activity.getString(blockProgramMode ? STR_DURATION_TRAIN : STR_DURATION));
        }
        refreshModeTabHighlight();
    }

    private static void refreshModeTabHighlight() {
        if (tabIntervalBtn != null) {
            tabIntervalBtn.setAlpha(blockProgramMode ? 0.55f : 1f);
        }
        if (tabBlockBtn != null) {
            tabBlockBtn.setAlpha(blockProgramMode ? 1f : 0.55f);
        }
    }

    private static void selectModeTab(boolean blockMode) {
        blockProgramMode = blockMode;
        updateModePanels();
        refreshBlockSummary();
    }

    private static void syncAmountViewsFromValues() {
        int totalSec = savedMinutes * 60 + savedSeconds;
        if (totalSec < DURATION_MIN_SEC) {
            totalSec = DURATION_MIN_SEC;
        }
        if (totalSec > DURATION_MAX_SEC) {
            totalSec = DURATION_MAX_SEC;
        }
        savedMinutes = totalSec / 60;
        savedSeconds = totalSec % 60;
        ignoreAmountCallback = true;
        setAmountQuiet(minutesView, savedMinutes);
        setAmountQuiet(secondsView, savedSeconds);
        int loops = maxLoops;
        if (loops < 0) {
            loops = 0;
        }
        if (loops > LOOPS_MAX) {
            loops = LOOPS_MAX;
        }
        setAmountQuiet(loopsView, loops);
        ignoreAmountCallback = false;
    }

    private static void setAmountQuiet(AmountView view, int value) {
        if (view == null) {
            return;
        }
        try {
            view.setAmount(value);
        } catch (Throwable ignored) {
        }
    }

    private static int readDurationTotalSec() {
        int minutes = readAmount(minutesView, 0, DURATION_MAX_SEC / 60);
        int seconds = readAmount(secondsView, 0, 59);
        int totalSec = minutes * 60 + seconds;
        if (totalSec < DURATION_MIN_SEC) {
            totalSec = DURATION_MIN_SEC;
        }
        if (totalSec > DURATION_MAX_SEC) {
            totalSec = DURATION_MAX_SEC;
        }
        savedMinutes = totalSec / 60;
        savedSeconds = totalSec % 60;
        return totalSec;
    }

    private static void refreshAdvancedToggleLabel(Activity activity) {
        if (advancedToggle == null || activity == null) {
            return;
        }
        String label = activity.getString(STR_ADVANCED);
        if (advancedExpanded) {
            label = label.replace('\u25BE', '\u25B4');
        }
        if (advancedToggle instanceof TextView) {
            ((TextView) advancedToggle).setText(label);
        } else if (advancedToggle instanceof android.widget.Button) {
            ((android.widget.Button) advancedToggle).setText(label);
        }
    }

    private static void refreshBlockSummary() {
        if (blockSummaryView == null) {
            return;
        }
        Activity activity = resolveActivity(null);
        if (activity == null) {
            return;
        }
        int count = blockSegments != null ? blockSegments.size() : 0;
        blockSummaryView.setText(activity.getString(STR_BLOCK_SUMMARY, count));
        if (blockDurationView != null) {
            int[] onOff = new int[] {4, 4};
            com.isaigu.gymapp.train.model.TrainItem seed = MusicPlayerHelper.resolveTargetItem(itemManager);
            if (seed != null && seed.getTrainProgram() != null
                    && seed.getTrainProgram().matchProgram() != null) {
                com.isaigu.gymapp.bean.ProgramDataBean bean = seed.getTrainProgram().matchProgram();
                if (bean.pulseContinue > 0) {
                    onOff[0] = bean.pulseContinue;
                }
                if (bean.pulsePause > 0) {
                    onOff[1] = bean.pulsePause;
                }
            }
            int seqSec = BlockProgramRunner.computeSequenceSeconds(blockSegments, onOff[0], onOff[1]);
            if (blockProgramRepeat) {
                blockDurationView.setText(activity.getString(STR_BLOCK_TRAIN_TIME));
            } else {
                blockDurationView.setText(activity.getString(STR_BLOCK_DURATION, seqSec / 60, seqSec % 60));
            }
        }
    }

    private static int[] resolveOnOffFromSeed() {
        int on = 4;
        int off = 4;
        com.isaigu.gymapp.train.model.TrainItem seed = MusicPlayerHelper.resolveTargetItem(itemManager);
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

    private static void refreshSoundUi() {
        boolean needsUri = selectedSound == SOUND_CUSTOM || selectedSound == SOUND_DEVICE;
        if (soundPickBtn != null) {
            soundPickBtn.setEnabled(needsUri);
            soundPickBtn.setAlpha(needsUri ? 1.0f : 0.45f);
        }
        if (soundFileRow != null) {
            soundFileRow.setVisibility(needsUri ? View.VISIBLE : View.GONE);
        }
        if (soundFileView != null && needsUri) {
            if (customSignalUri == null) {
                soundFileView.setText(
                        selectedSound == SOUND_DEVICE ? STR_SOUND_PICK_DEVICE : STR_SOUND_NO_FILE);
            } else {
                String name = customSignalUri.getLastPathSegment();
                if (name == null || name.length() == 0) {
                    soundFileView.setText(customSignalUri.toString());
                } else {
                    soundFileView.setText(name);
                }
            }
        }
        if (soundClearBtn != null) {
            soundClearBtn.setVisibility(needsUri ? View.VISIBLE : View.GONE);
        }
        if (soundSpinner != null) {
            ignoreSpinnerCallback = true;
            if (selectedSound >= 0 && selectedSound < soundSpinner.getCount()) {
                soundSpinner.setSelection(selectedSound);
            }
            ignoreSpinnerCallback = false;
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
        if (countdownRunning && trainingRunning) {
            lastTickRealtime = SystemClock.elapsedRealtime();
        }
        playSignal();
        refreshOverlayText();
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

    private static void startRingtonePick(View view) {
        Activity activity = MusicPlayerHelper.resolveHostActivity(view);
        if (activity == null) {
            toast(STR_ERROR);
            return;
        }
        hostActivity = activity;
        soundBeforePick = readSoundSelection();
        if (soundBeforePick != SOUND_DEVICE) {
            soundBeforePick = SOUND_BEEP;
        }
        try {
            Intent intent = new Intent(RingtoneManager.ACTION_RINGTONE_PICKER);
            intent.putExtra(
                    RingtoneManager.EXTRA_RINGTONE_TYPE,
                    RingtoneManager.TYPE_NOTIFICATION
                            | RingtoneManager.TYPE_ALARM
                            | RingtoneManager.TYPE_RINGTONE);
            intent.putExtra(RingtoneManager.EXTRA_RINGTONE_SHOW_DEFAULT, true);
            intent.putExtra(RingtoneManager.EXTRA_RINGTONE_SHOW_SILENT, false);
            intent.putExtra(RingtoneManager.EXTRA_RINGTONE_TITLE, activity.getString(STR_SOUND_DEVICE));
            if (customSignalUri != null) {
                intent.putExtra(RingtoneManager.EXTRA_RINGTONE_EXISTING_URI, customSignalUri);
            }
            pickingSignal = true;
            if (configDialog != null) {
                try {
                    configDialog.hide();
                } catch (Throwable ignored) {
                }
            }
            activity.startActivityForResult(intent, PICK_RINGTONE);
        } catch (Throwable t) {
            pickingSignal = false;
            restoreConfigDialogAfterPick();
            MusicDiagLog.logError("interval_timer_ringtone_pick", t);
            toast(STR_ERROR);
        }
    }

    /** Same file-picker flow as {@link MusicPlayerHelper.PickListener}. */
    private static void startSignalPick(View view) {
        Activity activity = MusicPlayerHelper.resolveHostActivity(view);
        if (activity == null) {
            toast(STR_ERROR);
            return;
        }
        hostActivity = activity;
        soundBeforePick = readSoundSelection();
        if (soundBeforePick == SOUND_CUSTOM) {
            soundBeforePick = SOUND_BEEP;
        }
        try {
            Intent intent = new Intent(Intent.ACTION_OPEN_DOCUMENT);
            intent.addCategory(Intent.CATEGORY_OPENABLE);
            intent.setType("audio/*");
            intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
            intent.addFlags(Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION);
            pickingSignal = true;
            if (configDialog != null) {
                try {
                    configDialog.hide();
                } catch (Throwable ignored) {
                }
            }
            activity.startActivityForResult(intent, PICK_SIGNAL);
        } catch (Throwable t) {
            pickingSignal = false;
            restoreConfigDialogAfterPick();
            MusicDiagLog.logError("interval_timer_pick", t);
            toast(STR_ERROR);
        }
    }

    private static String formatSeconds(long totalSec) {
        if (totalSec < 0L) {
            totalSec = 0L;
        }
        long min = totalSec / 60L;
        long sec = totalSec % 60L;
        return String.format("%02d:%02d", min, sec);
    }

    private static int readLoopsInput() {
        return readAmount(loopsView, 0, LOOPS_MAX);
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

    private static void attachAmountListeners() {
        AmountView.OnAmountChangeListener durationListener = new DurationAmountListener();
        AmountView.OnAmountChangeListener loopsListener = new LoopsAmountListener();
        if (minutesView != null) {
            minutesView.setOnAmountChangeListener(durationListener);
        }
        if (secondsView != null) {
            secondsView.setOnAmountChangeListener(durationListener);
        }
        if (loopsView != null) {
            loopsView.setOnAmountChangeListener(loopsListener);
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
        Activity activity = resolveActivity(null);
        if (activity == null) {
            return;
        }
        try {
            Toast.makeText(activity, resId, Toast.LENGTH_SHORT).show();
        } catch (Throwable ignored) {
        }
    }

    static final class TabIntervalListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            selectModeTab(false);
        }
    }

    static final class TabBlockListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            selectModeTab(true);
        }
    }

    static final class DurationAmountListener implements AmountView.OnAmountChangeListener {
        @Override
        public void onAmountChange(View view, int amount) {
            if (ignoreAmountCallback) {
                return;
            }
            readDurationTotalSec();
        }
    }

    static final class LoopsAmountListener implements AmountView.OnAmountChangeListener {
        @Override
        public void onAmountChange(View view, int amount) {
            if (ignoreAmountCallback) {
                return;
            }
            maxLoops = readAmount(loopsView, 0, LOOPS_MAX);
        }
    }

    static final class AdvancedToggleListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            advancedExpanded = !advancedExpanded;
            if (advancedPanel != null) {
                advancedPanel.setVisibility(advancedExpanded ? View.VISIBLE : View.GONE);
            }
            refreshAdvancedToggleLabel(MusicPlayerHelper.resolveHostActivity(v));
        }
    }

    static final class BlockRepeatSwitchListener implements CompoundButton.OnCheckedChangeListener {
        @Override
        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
            blockProgramRepeat = isChecked;
            updateModePanels();
            refreshBlockSummary();
        }
    }

    static final class BlockEditListener implements View.OnClickListener {
        private final Activity activity;

        BlockEditListener(Activity activity) {
            this.activity = activity;
        }

        @Override
        public void onClick(View v) {
            BlockProgramEditor.show(
                    activity,
                    blockSegments,
                    MusicPlayerHelper.resolveTargetItem(itemManager),
                    new BlockEditDoneRunnable());
        }
    }

    static final class BlockEditDoneRunnable implements Runnable {
        @Override
        public void run() {
            refreshBlockSummary();
        }
    }

    static final class PresetRefreshRunnable implements Runnable {
        @Override
        public void run() {
            updateModePanels();
            refreshBlockSummary();
            refreshSoundUi();
        }
    }

    static final class ResetOverlayListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            resetCurrentInterval();
        }
    }

    static final class MasterToggleListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            hostActivity = MusicPlayerHelper.resolveHostActivity(v);
            toggleMasterPanel();
        }
    }

    static final class ActivateListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            hostActivity = MusicPlayerHelper.resolveHostActivity(v);
            armFromConfig();
        }
    }

    static final class SoundSpinnerListener implements android.widget.AdapterView.OnItemSelectedListener {
        @Override
        public void onItemSelected(
                android.widget.AdapterView<?> parent, View view, int position, long id) {
            if (ignoreSpinnerCallback) {
                return;
            }
            selectedSound = position;
            refreshSoundUi();
        }

        @Override
        public void onNothingSelected(android.widget.AdapterView<?> parent) {
        }
    }

    static final class SoundPreviewListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            selectedSound = readSoundSelection();
            if ((selectedSound == SOUND_CUSTOM || selectedSound == SOUND_DEVICE)
                    && customSignalUri == null) {
                toast(selectedSound == SOUND_DEVICE ? STR_SOUND_PICK_DEVICE : STR_SOUND_NO_FILE);
                return;
            }
            playSignal();
        }
    }

    static final class SoundPickListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            int sound = readSoundSelection();
            if (sound == SOUND_DEVICE) {
                if (soundSpinner != null) {
                    ignoreSpinnerCallback = true;
                    soundSpinner.setSelection(SOUND_DEVICE);
                    ignoreSpinnerCallback = false;
                }
                selectedSound = SOUND_DEVICE;
                refreshSoundUi();
                startRingtonePick(v);
                return;
            }
            selectedSound = SOUND_CUSTOM;
            if (soundSpinner != null) {
                ignoreSpinnerCallback = true;
                soundSpinner.setSelection(SOUND_CUSTOM);
                ignoreSpinnerCallback = false;
            }
            refreshSoundUi();
            startSignalPick(v);
        }
    }

    static final class SoundClearListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            selectedSound = SOUND_BEEP;
            if (soundSpinner != null) {
                ignoreSpinnerCallback = true;
                soundSpinner.setSelection(SOUND_BEEP);
                ignoreSpinnerCallback = false;
            }
            refreshSoundUi();
        }
    }

    static final class ConfigDismissListener implements android.content.DialogInterface.OnDismissListener {
        @Override
        public void onDismiss(android.content.DialogInterface d) {
            if (pickingSignal) {
                return;
            }
            configDialog = null;
            configContent = null;
            clearConfigRefs();
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
        }
    }
}
