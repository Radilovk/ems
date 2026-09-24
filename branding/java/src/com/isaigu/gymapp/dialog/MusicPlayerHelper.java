package com.isaigu.gymapp.dialog;

import android.app.Activity;
import android.content.ClipData;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.Gravity;
import android.view.HapticFeedbackConstants;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import android.graphics.drawable.GradientDrawable;

import com.isaigu.gymapp.MainActivity;
import com.isaigu.gymapp.train.TrainItemManager;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.train.utils.MusicDiagLog;
import com.isaigu.gymapp.train.utils.MusicSync;
import com.isaigu.gymapp.widget.AmountView;
import com.isaigu.gymapp.widget.CircleSeekBar;
import com.isaigu.gymapp.widget.MusicImpulseMeterView;
import com.isaigu.gymapp.widget.MusicVisualizerView;
import com.isaigu.gymapp.widget.XemsUi;

import java.util.ArrayList;
import java.util.List;

public final class MusicPlayerHelper {
    static final int BUTTON_ID = 0x7f090226;
    static final int OVERLAY_LAYOUT_ID = 0x7f0b007c;
    static final int PLAYLIST_ITEM_LAYOUT_ID = 0x7f0b007d;
    static final int PICK_AUDIO = 0x4255;

    private static final int ID_SEEK = 0x7f09027a;
    private static final int ID_PLAY_PAUSE = 0x7f09027b;
    private static final int ID_PLAYLIST_BTN = 0x7f09027c;
    private static final int ID_PANEL = 0x7f09027d;
    private static final int ID_PLAYLIST_PANEL = 0x7f09027e;
    private static final int ID_PLAYLIST_LIST = 0x7f09027f;
    private static final int ID_ADD_TRACK = 0x7f090280;
    private static final int ID_TRACK_TITLE = 0x7f090282;
    private static final int ID_TIME = 0x7f090283;
    private static final int ID_STATUS = 0x7f090229;
    private static final int ID_SENSITIVITY = 0x7f090228;
    private static final int ID_SETTINGS_BTN = 0x7f0902c0;
    private static final int ID_METER = 0x7f0902c2;
    private static final int ID_RHYTHM = 0x7f0902c3;
    private static final int ID_FLOOR = 0x7f0902c4;
    private static final int ID_SMOOTH = 0x7f0902c5;
    private static final int ID_PRESET_SOFT = 0x7f0902c6;
    private static final int ID_PRESET_BALANCED = 0x7f0902c7;
    private static final int ID_PRESET_BEAT = 0x7f0902c8;
    private static final int ID_PLAYLIST_ITEM_TITLE = 0x7f090284;
    private static final int ID_PLAYLIST_ITEM_HANDLE = 0x7f090285;
    private static final int ID_CLOSE = 0x7f090288;
    private static final int ID_INFO = 0x7f090289;
    private static final int ID_VISUALIZER = 0x7f09028e;
    private static final int ID_LOADING = 0x7f09028f;
    private static final int STR_INFO_TITLE = 0x7f0d0172;
    private static final int STR_INFO_BODY = 0x7f0d0173;
    private static final int COLOR_TEXT_PRIMARY = 0x7f0600e6;
    private static final int COLOR_TEXT_SECONDARY = 0x7f0600e7;
    private static final int COLOR_BG_CARD = 0x7f0600c3;
    private static final int COLOR_LIGHT_GREEN = 0x7f06006f;

    private static final int OVERLAY_SIZE_DP = 192;
    private static final int OVERLAY_PANEL_WIDTH_DP = 300;
    private static final int SEEK_MAX = 1000;
    private static final long PROGRESS_TICK_MS = 200L;
    private static final long DRAG_LONG_PRESS_MS = 280L;
    private static final long PLAY_DEBOUNCE_MS = 450L;
    private static final float OVERLAY_TAP_SLOP_DP = 10f;

    private static android.support.v7.app.AlertDialog overlayDialog;
    private static View overlayContent;
    private static CircleSeekBar seekBar;
    private static MusicVisualizerView visualizerView;
    private static TextView playPauseBtn;
    private static com.isaigu.gymapp.widget.XemsIcon playIcon;

    /** Keep the play / pause icon at 44 % of the round button, centred. */
    static final class PlayIconInset implements View.OnLayoutChangeListener {
        private final android.graphics.drawable.LayerDrawable layers;

        PlayIconInset(android.graphics.drawable.LayerDrawable layers) {
            this.layers = layers;
        }

        @Override
        public void onLayoutChange(View v, int l, int t, int r, int b, int ol, int ot, int or, int ob) {
            int w = r - l;
            int h = b - t;
            if (w <= 0 || h <= 0) {
                return;
            }
            int size = Math.round(Math.min(w, h) * 0.44f);
            int ix = (w - size) / 2;
            int iy = (h - size) / 2;
            layers.setLayerInset(1, ix, iy, w - size - ix, h - size - iy);
            v.invalidate();
        }
    }
    private static View playLoadingView;
    private static View controlPanel;
    private static View playlistPanel;
    private static LinearLayout playlistList;
    private static TextView trackTitleView;
    private static TextView timeView;
    private static TextView statusView;
    private static AmountView sensitivityView;
    private static AmountView rhythmView;
    private static AmountView floorView;
    private static AmountView smoothView;
    private static TextView[] presetViews = new TextView[0];
    private static View settingsButton;
    private static View playlistButton;
    private static MusicImpulseMeterView meterView;
    /** Kit steppers shown in place of the AmountViews: sensitivity, rhythm, floor, smooth. */
    private static XemsUi.Stepper[] settingSteppers = new XemsUi.Stepper[4];

    private static TrainItemManager itemManager;
    private static final ArrayList<MusicPlaylistEntry> playlist = new ArrayList<MusicPlaylistEntry>();
    private static int currentIndex = -1;
    private static boolean settingsExpanded;
    private static boolean playlistExpanded;
    private static boolean pickingFile;
    private static boolean userSeeking;
    private static boolean overlayVisible;

    private static float overlayTouchDx;
    private static float overlayTouchDy;
    private static float overlayDownRawX;
    private static float overlayDownRawY;
    private static boolean overlayMoved;

    private static int dragFromIndex = -1;
    private static int dragHighlightIndex = -1;
    private static Runnable pendingDragStart;
    private static PlaylistDragListener activeDragListener;
    private static View dragGhostView;
    private static View dragSourceRow;
    private static android.graphics.drawable.Drawable dragSourceBackground;
    private static float dragGhostOffsetX;
    private static float dragGhostOffsetY;
    private static ScrollView playlistScrollView;
    private static int dragRowHeightPx;
    private static long lastPlayClickMs;

    /** Presets: {rhythm mix, floor %, smoothness}; sensitivity is left as the user set it. */
    private static final int[][] PRESETS = {
            {20, 30, 50},
            {MusicSync.DEFAULT_RHYTHM_MIX, MusicSync.DEFAULT_FLOOR, MusicSync.DEFAULT_SMOOTHNESS},
            {85, 10, 0},
    };

    private static final Handler handler = new Handler(Looper.getMainLooper());
    private static final Runnable progressRunnable = new ProgressTickRunnable();

    private MusicPlayerHelper() {
    }

    public static void attachMasterPanel(View root, TrainItemManager manager) {
        try {
            attachMasterPanelImpl(root, manager);
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("MusicPlayerHelper.attachMasterPanel", t);
        }
    }

    private static void attachMasterPanelImpl(View root, TrainItemManager manager) {
        if (root == null || manager == null) {
            return;
        }
        View button = root.findViewById(BUTTON_ID);
        if (button == null) {
            return;
        }
        itemManager = manager;
        button.setClickable(true);
        button.setEnabled(true);
        button.setFocusable(false);
        button.setOnClickListener(new MasterOpenListener(root, manager));
    }

    public static void show(Activity activity, TrainItem item) {
        activity = resolveHostActivity(activity, overlayContent);
        if (activity == null) {
            return;
        }
        if (item == null) {
            toast(activity, 0x7f0d011a);
            return;
        }
        MusicSync.setHostActivity(activity);
        MusicSync.setTargetItem(item);
        if (!MusicSync.isRunning()) {
            // Preview the row's slider ceiling on the meter; re-captured on Play.
            com.isaigu.gymapp.train.utils.MasterStrengthControl.captureCeilingFromSlider();
        }
        if (isOverlayShowing()) {
            hidePlayerOverlay();
            return;
        }
        if (compactMode) {
            // Compact = the same floating dial as the timer and the HR dial.
            loadPlaylist(activity);
            MusicSync.loadSettings(activity);
            MusicDial.show(activity);
            return;
        }
        if (overlayDialog != null) {
            if (reShowOverlay(activity)) {
                return;
            }
        }
        loadPlaylist(activity);
        MusicSync.loadSettings(activity);
        if (!showOverlay(activity)) {
            toast(activity, 0x7f0d0113);
        }
    }

    public static void onActivityResult(int requestCode, int resultCode, Intent data) {
        try {
            onActivityResultImpl(requestCode, resultCode, data);
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("MusicPlayerHelper.onActivityResult", t);
        }
    }

    private static void onActivityResultImpl(int requestCode, int resultCode, Intent data) {
        pickingFile = false;
        restoreOverlayAfterPick();
        if (requestCode != PICK_AUDIO || resultCode != Activity.RESULT_OK || data == null) {
            return;
        }
        Activity activity = resolveHostActivity(null, overlayContent);
        if (activity == null) {
            return;
        }
        playlistExpanded = true;
        applyExpandedState();
        ClipData clip = data.getClipData();
        if (clip != null && clip.getItemCount() > 0) {
            for (int i = 0; i < clip.getItemCount(); i++) {
                Uri uri = clip.getItemAt(i).getUri();
                if (uri != null) {
                    grantUri(activity, data, uri);
                    addTrackSafe(activity, uri);
                }
            }
            return;
        }
        Uri uri = data.getData();
        if (uri == null) {
            return;
        }
        grantUri(activity, data, uri);
        addTrackSafe(activity, uri);
    }

    private static boolean isOverlayShowing() {
        try {
            return (overlayDialog != null && overlayDialog.isShowing()) || MusicDial.isShowing();
        } catch (Throwable ignored) {
            return overlayVisible;
        }
    }

    public static boolean advanceToNextTrack() {
        if (currentIndex + 1 >= playlist.size()) {
            return false;
        }
        currentIndex++;
        return startCurrentTrack(false);
    }

    public static void refreshTransportState() {
        updatePlayPauseLabel();
        if (visualizerView != null) {
            boolean playing = MusicSync.isRunning() && MusicSync.isPlayerMode()
                    && !MusicSync.isPlaybackPaused();
            visualizerView.setPlaying(playing);
        }
    }

    /** Sync player pause/resume from any train row or master start/pause/stop. */
    public static void syncTrainingState() {
        try {
            syncTrainingStateImpl();
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("MusicPlayerHelper.syncTrainingState", t);
        }
    }

    private static void syncTrainingStateImpl() {
        boolean targetRunning = isTargetTrainingRunning();
        if (targetRunning) {
            tryStartFromTrainingSync();
        }
        MusicSync.syncWithTrainingState(targetRunning);
    }

    /** Master all-stop / reset — stop music sync entirely, not just pause. */
    public static void onTrainingFullStop() {
        try {
            onTrainingFullStopImpl();
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("MusicPlayerHelper.onTrainingFullStop", t);
        }
    }

    private static void onTrainingFullStopImpl() {
        syncTrainingState();
        if (MusicSync.isRunning() && MusicSync.isPlayerMode()) {
            MusicSync.stop();
            showIdle();
        }
    }

    static boolean isOverlayOpen() {
        return isOverlayShowing();
    }

    static boolean hasPlaylistTracks() {
        return !playlist.isEmpty();
    }

    /** Training started from master/row while player overlay is open — mirror start. */
    static void tryStartFromTrainingSync() {
        if (MusicSync.isPlayerPreparing()) {
            return;
        }
        if (MusicSync.isRunning() && MusicSync.isPlayerMode()) {
            return;
        }
        if (!isOverlayShowing() || playlist.isEmpty()) {
            return;
        }
        if (currentIndex < 0) {
            currentIndex = 0;
        }
        startCurrentTrack(false);
    }

    public static void onPlaybackStarted() {
        MusicSync.onPlayerPlaybackStarted();
        requestTrainingStart();
    }

    public static void onPlaybackPausedByUser() {
        requestTrainingPause();
    }

    public static void onPlaybackResumedByUser() {
        requestTrainingStart();
    }

    public static void onPlaybackEndedNaturally() {
        requestTrainingPause();
    }

    private static boolean isTargetTrainingRunning() {
        try {
            TrainItem target = resolveTargetItem(itemManager);
            return target != null && target.data != null && target.data.start;
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static void requestTrainingStart() {
        if (itemManager == null) {
            return;
        }
        try {
            TrainItem target = resolveTargetItem(itemManager);
            if (target != null && target.data != null && target.data.connected && !target.data.start) {
                target.start();
                return;
            }
            if (!isAnyTrainingRunning()) {
                itemManager.startAll();
            }
        } catch (Throwable ignored) {
        }
    }

    private static void requestTrainingPause() {
        if (itemManager == null) {
            return;
        }
        try {
            TrainItem target = resolveTargetItem(itemManager);
            if (target != null && target.data != null && target.data.start) {
                target.stop();
                return;
            }
            if (isAnyTrainingRunning()) {
                itemManager.stopAll();
            }
        } catch (Throwable ignored) {
        }
    }

    private static void requestTrainingStop() {
        if (itemManager == null) {
            return;
        }
        try {
            itemManager.stopAll();
        } catch (Throwable ignored) {
        }
    }

    private static boolean isAnyTrainingRunning() {
        if (itemManager == null) {
            return false;
        }
        try {
            List<TrainItem> items = itemManager.getItemList();
            if (items == null) {
                return false;
            }
            for (int i = 0; i < items.size(); i++) {
                TrainItem item = items.get(i);
                if (item != null && !item.isEmpty() && item.data != null && item.data.start) {
                    return true;
                }
            }
        } catch (Throwable ignored) {
        }
        return false;
    }

    public static void showIdle() {
        if (statusView != null) {
            statusView.setText(0x7f0d0110);
        }
        if (visualizerView != null) {
            visualizerView.setPlaying(false);
        }
        setPlayLoadingUi(false);
        updatePlayPauseLabel();
        stopProgressUpdates();
        refreshSeekFromPlayer();
    }

    public static void showPreparing() {
        MusicDial.refresh();
        if (statusView != null) {
            statusView.setText(0x7f0d011b);
        }
        setPlayLoadingUi(true);
    }

    /** Strength values are drawn live by {@link MusicImpulseMeterView}. */
    public static void showActive(int appliedStrength, int ceiling) {
        if (statusView != null) {
            statusView.setText(0x7f0d0111);
        }
        setPlayLoadingUi(false);
        updatePlayPauseLabel();
        if (visualizerView != null) {
            visualizerView.setPlaying(true);
        }
        startProgressUpdates();
    }

    public static void showError(int resId) {
        if (statusView != null) {
            statusView.setText(resId);
        }
        setPlayLoadingUi(false);
        Activity activity = resolveHostActivity(null, overlayContent);
        if (activity != null) {
            toast(activity, resId);
        }
        updatePlayPauseLabel();
    }

    /** Unwrap a (dialog/themed) context to its host Activity. */
    public static Activity resolveActivity(Context context) {
        while (context != null) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
            if (context instanceof ContextWrapper) {
                context = ((ContextWrapper) context).getBaseContext();
            } else {
                return null;
            }
        }
        return null;
    }

    static Activity resolveHostActivity(View view) {
        return resolveHostActivity(null, view);
    }

    static Activity resolveHostActivity(Activity preferred, View view) {
        if (preferred != null) {
            return preferred;
        }
        if (overlayDialog != null) {
            Activity fromDialog = resolveActivity(overlayDialog.getContext());
            if (fromDialog != null) {
                return fromDialog;
            }
        }
        if (view != null) {
            Activity fromView = resolveActivity(view.getContext());
            if (fromView != null) {
                return fromView;
            }
        }
        Activity cached = MusicSync.getHostActivity();
        if (cached != null) {
            return cached;
        }
        return MainActivity.getInstance();
    }

    static TrainItem resolveTargetItem(TrainItemManager manager) {
        if (manager == null) {
            manager = itemManager;
        }
        if (manager == null) {
            return null;
        }
        List<TrainItem> items = manager.getItemList();
        if (items == null) {
            return null;
        }
        for (int i = 0; i < items.size(); i++) {
            TrainItem item = items.get(i);
            if (item != null && !item.isEmpty()) {
                return item;
            }
        }
        return null;
    }

    private static void loadPlaylist(Activity activity) {
        playlist.clear();
        playlist.addAll(MusicPlaylistStorage.load(activity));
        if (currentIndex >= playlist.size()) {
            currentIndex = playlist.isEmpty() ? -1 : 0;
        }
    }

    private static void persistPlaylist(Activity activity) {
        MusicPlaylistStorage.save(activity, playlist);
    }

    private static boolean showOverlay(Activity activity) {
        if (activity == null || activity.isFinishing()) {
            return false;
        }
        dismissOverlay(false);
        View content;
        try {
            content = LayoutInflater.from(activity).inflate(OVERLAY_LAYOUT_ID, null);
        } catch (Throwable t) {
            MusicDiagLog.logError("music_player_overlay_inflate", t);
            return false;
        }
        overlayContent = content;
        seekBar = (CircleSeekBar) content.findViewById(ID_SEEK);
        visualizerView = (MusicVisualizerView) content.findViewById(ID_VISUALIZER);
        playPauseBtn = (TextView) content.findViewById(ID_PLAY_PAUSE);
        playLoadingView = content.findViewById(ID_LOADING);
        stylePlayLoadingSpinner(activity);
        controlPanel = content.findViewById(ID_PANEL);
        playlistPanel = content.findViewById(ID_PLAYLIST_PANEL);
        playlistList = (LinearLayout) content.findViewById(ID_PLAYLIST_LIST);
        playlistScrollView = findAncestorScrollView(playlistList);
        trackTitleView = (TextView) content.findViewById(ID_TRACK_TITLE);
        timeView = (TextView) content.findViewById(ID_TIME);
        statusView = (TextView) content.findViewById(ID_STATUS);
        sensitivityView = (AmountView) content.findViewById(ID_SENSITIVITY);
        rhythmView = (AmountView) content.findViewById(ID_RHYTHM);
        floorView = (AmountView) content.findViewById(ID_FLOOR);
        smoothView = (AmountView) content.findViewById(ID_SMOOTH);
        meterView = (MusicImpulseMeterView) content.findViewById(ID_METER);
        settingsButton = content.findViewById(ID_SETTINGS_BTN);
        playlistButton = content.findViewById(ID_PLAYLIST_BTN);
        presetViews = new TextView[]{
                (TextView) content.findViewById(ID_PRESET_SOFT),
                (TextView) content.findViewById(ID_PRESET_BALANCED),
                (TextView) content.findViewById(ID_PRESET_BEAT),
        };

        XemsUi.init(activity);
        configureSettings();
        styleOverlay(activity, content);
        configureSeekBar();
        bindButton(playPauseBtn, new PlayPauseListener());
        bindButton(playlistButton, new PanelToggleListener(false));
        bindButton(settingsButton, new PanelToggleListener(true));
        for (int i = 0; i < presetViews.length; i++) {
            bindButton(presetViews[i], new PresetListener(i));
        }
        bindButton(content.findViewById(ID_ADD_TRACK), new PickListener());
        bindButton(content.findViewById(ID_CLOSE), new CloseListener());
        bindButton(content.findViewById(ID_INFO), new InfoListener());

        applyExpandedState();
        rebuildPlaylistViews(activity);
        refreshTrackTitle();
        refreshSeekFromPlayer();
        showIdle();

        View dragRoot = null;
        if (seekBar != null && seekBar.getParent() instanceof View) {
            View seekParent = (View) seekBar.getParent();
            if (seekParent.getParent() instanceof View) {
                dragRoot = (View) seekParent.getParent();
            }
        }
        if (dragRoot != null) {
            dragRoot.setClickable(true);
            dragRoot.setFocusable(false);
            dragRoot.setOnTouchListener(new OverlayDragListener());
        }

        int rowHeightPx = dp(activity, OVERLAY_SIZE_DP);
        int overlayWidthPx = dp(activity, OVERLAY_PANEL_WIDTH_DP);
        FrameLayout wrapper = new FrameLayout(activity);
        wrapper.setClipChildren(false);
        wrapper.addView(content, new FrameLayout.LayoutParams(
                overlayWidthPx, FrameLayout.LayoutParams.WRAP_CONTENT));

        try {
            android.support.v7.app.AlertDialog.Builder builder =
                    new android.support.v7.app.AlertDialog.Builder(activity);
            builder.setView(wrapper);
            builder.setOnDismissListener(new OverlayDismissListener());
            overlayDialog = builder.create();
            overlayDialog.setCancelable(true);
            overlayDialog.setCanceledOnTouchOutside(false);
            overlayDialog.show();

            Window window = overlayDialog.getWindow();
            if (window == null) {
                return false;
            }
            window.setBackgroundDrawableResource(android.R.color.transparent);
            window.setGravity(Gravity.TOP | Gravity.START);
            resizeOverlayWindow();
            WindowManager.LayoutParams lp = window.getAttributes();
            lp.x = dp(activity, 20);
            lp.y = dp(activity, 300);
            lp.dimAmount = 0f;
            lp.flags = (lp.flags
                    | WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE
                    | WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL)
                    & ~WindowManager.LayoutParams.FLAG_DIM_BEHIND;
            window.clearFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND);
            window.setAttributes(lp);
            overlayVisible = true;
            return true;
        } catch (Throwable t) {
            MusicDiagLog.logError("music_player_overlay_show", t);
            overlayDialog = null;
            clearOverlayRefs();
            return false;
        }
    }

    private static void configureSeekBar() {
        if (seekBar == null) {
            return;
        }
        try {
            seekBar.setMaxProcess(SEEK_MAX);
            seekBar.setCurProcess(0);
            seekBar.setClickable(true);
            seekBar.setFocusable(true);
            seekBar.setOnSeekBarChangeListener(new SeekChangeListener());
        } catch (Throwable ignored) {
        }
    }

    private static void configureSettings() {
        configureAmount(sensitivityView, 0, 100, 5, MusicSync.getSensitivity(), SettingChangeListener.SENSITIVITY);
        configureAmount(rhythmView, 0, 100, 10, MusicSync.getRhythmMix(), SettingChangeListener.RHYTHM);
        configureAmount(floorView, 0, 80, 5, MusicSync.getFloorPercent(), SettingChangeListener.FLOOR);
        configureAmount(smoothView, 0, 100, 10, MusicSync.getSmoothness(), SettingChangeListener.SMOOTH);
        refreshPresetHighlight();
    }

    private static void configureAmount(AmountView view, int min, int max, int step, int value, int which) {
        if (view == null) {
            return;
        }
        try {
            view.setMin(min);
            view.setGoods_storage(max);
            view.setStep(step);
            view.setAmountUnit("%");
            view.setAmount(value);
            view.setOnAmountChangeListener(new SettingChangeListener(which));
        } catch (Throwable ignored) {
        }
    }

    private static void setAmountSafe(AmountView view, int value) {
        if (view == null) {
            return;
        }
        try {
            view.setAmount(value);
        } catch (Throwable ignored) {
        }
    }

    private static void applyPreset(int index) {
        if (index < 0 || index >= PRESETS.length) {
            return;
        }
        int[] preset = PRESETS[index];
        MusicSync.setRhythmMix(preset[0]);
        MusicSync.setFloorPercent(preset[1]);
        MusicSync.setSmoothness(preset[2]);
        setAmountSafe(rhythmView, preset[0]);
        setAmountSafe(floorView, preset[1]);
        setAmountSafe(smoothView, preset[2]);
        refreshSettingSteppers();
        persistSettings();
        refreshPresetHighlight();
    }

    /** Highlight the preset chip that matches the current values (none after manual edits). */
    private static void refreshPresetHighlight() {
        for (int i = 0; i < presetViews.length; i++) {
            TextView chip = presetViews[i];
            if (chip == null) {
                continue;
            }
            int[] preset = PRESETS[i];
            boolean active = MusicSync.getRhythmMix() == preset[0]
                    && MusicSync.getFloorPercent() == preset[1]
                    && MusicSync.getSmoothness() == preset[2];
            styleChip(chip, active);
            chip.setSelected(active);
        }
    }

    private static void persistSettings() {
        MusicSync.saveSettings(resolveHostActivity(null, overlayContent));
    }

    private static void applyExpandedState() {
        if (controlPanel != null) {
            controlPanel.setVisibility(settingsExpanded ? View.VISIBLE : View.GONE);
        }
        if (playlistPanel != null) {
            playlistPanel.setVisibility(playlistExpanded ? View.VISIBLE : View.GONE);
        }
        markToggle(settingsButton, settingsExpanded);
        markToggle(playlistButton, playlistExpanded);
    }

    private static void markToggle(View button, boolean open) {
        if (!(button instanceof TextView)) {
            return;
        }
        styleRound(button, open ? XemsUi.alpha(XemsUi.GO, 0x33) : XemsUi.SURFACE,
                open ? XemsUi.GO_TEXT : XemsUi.TEXT);
        button.setSelected(open);
    }

    private static void rebuildPlaylistViews(Activity activity) {
        if (playlistList == null || activity == null) {
            return;
        }
        playlistList.removeAllViews();
        LayoutInflater inflater = LayoutInflater.from(activity);
        for (int i = 0; i < playlist.size(); i++) {
            final int index = i;
            MusicPlaylistEntry entry = playlist.get(i);
            View row;
            try {
                row = inflater.inflate(PLAYLIST_ITEM_LAYOUT_ID, playlistList, false);
            } catch (Throwable t) {
                continue;
            }
            TextView title = (TextView) row.findViewById(ID_PLAYLIST_ITEM_TITLE);
            View handle = row.findViewById(ID_PLAYLIST_ITEM_HANDLE);
            boolean current = index == currentIndex;
            row.setBackgroundDrawable(XemsUi.rounded(current ? XemsUi.alpha(XemsUi.GO, 0x26) : XemsUi.SURFACE,
                    dp(activity, 12), current ? XemsUi.alpha(XemsUi.GO_TEXT, 0xAA) : XemsUi.STROKE, dp(activity, 1)));
            if (title != null) {
                title.setText((current ? "▶  " : (index + 1) + ".  ") + entry.name);
                title.setTextColor(current ? XemsUi.GO_TEXT : XemsUi.TEXT);
                title.setTypeface(android.graphics.Typeface.DEFAULT, current
                        ? android.graphics.Typeface.BOLD : android.graphics.Typeface.NORMAL);
                title.setOnClickListener(new PlaylistSelectListener(index));
            }
            if (handle instanceof TextView) {
                ((TextView) handle).setTextColor(XemsUi.MUTED);
            }
            if (row instanceof LinearLayout) {
                TextView remove = XemsUi.iconButton(activity, "✕", XemsUi.CARD, XemsUi.MUTED, 30);
                remove.setOnClickListener(new RemoveTrackListener(index));
                LinearLayout.LayoutParams rl = new LinearLayout.LayoutParams(dp(activity, 30), dp(activity, 30));
                rl.rightMargin = dp(activity, 4);
                ((LinearLayout) row).addView(remove, ((LinearLayout) row).getChildCount() - 1, rl);
            }
            if (handle != null) {
                handle.setOnTouchListener(new PlaylistDragListener(index));
            }
            playlistList.addView(row);
        }
        clearDragHighlight();
    }

    // ================================================================ look (XemsUi)

    /** Bring the inflated overlay onto the app theme: round controls, kit steppers, chips. */
    private static void styleOverlay(final Activity a, View content) {
        try {
            if (playPauseBtn != null) {
                GradientDrawable g = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM,
                        new int[] {XemsUi.GO, XemsUi.mix(XemsUi.GO, 0xFF000000, 0.2f)});
                g.setShape(GradientDrawable.OVAL);
                // Drawn icon instead of the ▶ / ⏸ font glyphs: those sit off the circle's centre
                // (font side bearings and baseline), the icon is centred on its optical centre.
                playIcon = new com.isaigu.gymapp.widget.XemsIcon(com.isaigu.gymapp.widget.XemsIcon.PLAY, 0xFFFFFFFF);
                android.graphics.drawable.LayerDrawable layers = new android.graphics.drawable.LayerDrawable(
                        new android.graphics.drawable.Drawable[] {XemsUi.ripple(g, 0xFFFFFFFF, dp(a, 56)), playIcon});
                playPauseBtn.setBackgroundDrawable(layers);
                PlayIconInset inset = new PlayIconInset(layers);
                playPauseBtn.addOnLayoutChangeListener(inset);
                if (playPauseBtn.getWidth() > 0) {
                    inset.onLayoutChange(playPauseBtn, 0, 0, playPauseBtn.getWidth(), playPauseBtn.getHeight(),
                            0, 0, 0, 0);
                }
                playPauseBtn.setText("");
                playPauseBtn.setTextColor(0xFFFFFFFF);
                playPauseBtn.setElevation(dp(a, 6));
                XemsUi.pressable(playPauseBtn);
            }
            styleRound(content.findViewById(ID_CLOSE), XemsUi.SURFACE, XemsUi.TEXT);
            styleRound(content.findViewById(ID_INFO), XemsUi.SURFACE, XemsUi.TEXT);
            addMinimize(a, content.findViewById(ID_CLOSE));
            View add = content.findViewById(ID_ADD_TRACK);
            if (add instanceof TextView) {
                ((TextView) add).setText(tr("+  Добави песни", "+  Add songs"));
                ((TextView) add).setTextColor(XemsUi.TEXT);
                add.setBackgroundDrawable(XemsUi.ripple(XemsUi.rounded(XemsUi.SURFACE, dp(a, 20), XemsUi.STROKE,
                        dp(a, 1)), XemsUi.TEXT, dp(a, 20)));
                XemsUi.pressable(add);
            }
            View now = content.findViewById(0x7f0902c1);
            if (now != null) {
                now.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, dp(a, 14), XemsUi.STROKE, dp(a, 1)));
            }
            if (statusView != null) {
                statusView.setTextColor(XemsUi.GO_TEXT);
            }
            addPrevNext(a);
            replaceAmount(a, sensitivityView, 0, 5, 0, 100);
            replaceAmount(a, rhythmView, 1, 10, 0, 100);
            replaceAmount(a, floorView, 2, 5, 0, 80);
            replaceAmount(a, smoothView, 3, 10, 0, 100);
        } catch (Throwable t) {
            MusicDiagLog.logError("music_player_style", t);
        }
    }

    /** "—" before ✕ in the header: back to the compact dial. */
    private static void addMinimize(Activity a, View close) {
        if (close == null || !(close.getParent() instanceof ViewGroup)) {
            return;
        }
        ViewGroup header = (ViewGroup) close.getParent();
        TextView min = XemsUi.iconButton(a, "—", XemsUi.SURFACE, XemsUi.TEXT, 36);
        min.setOnClickListener(new MinimizeListener());
        if (header instanceof android.widget.RelativeLayout) {
            android.widget.RelativeLayout.LayoutParams lp = new android.widget.RelativeLayout.LayoutParams(dp(a, 36), dp(a, 36));
            lp.addRule(android.widget.RelativeLayout.CENTER_VERTICAL);
            lp.addRule(android.widget.RelativeLayout.LEFT_OF, close.getId());
            lp.rightMargin = dp(a, 8);
            header.addView(min, lp);
        } else {
            header.addView(min, header.indexOfChild(close));
        }
    }

    private static void styleRound(View v, int fill, int fg) {
        if (v == null) {
            return;
        }
        GradientDrawable g = new GradientDrawable();
        g.setShape(GradientDrawable.OVAL);
        g.setColor(fill);
        g.setStroke(Math.max(1, dp(resolveHostActivity(v), 1)), XemsUi.STROKE);
        v.setBackgroundDrawable(XemsUi.ripple(g, fg, dp(resolveHostActivity(v), 48)));
        if (v instanceof TextView) {
            ((TextView) v).setTextColor(fg);
        }
        XemsUi.pressable(v);
    }

    private static void styleChip(TextView chip, boolean active) {
        Activity a = resolveHostActivity(chip);
        int r = dp(a, 17);
        chip.setBackgroundDrawable(XemsUi.ripple(active
                ? XemsUi.rounded(XemsUi.alpha(XemsUi.GO, 0x2A), r, XemsUi.alpha(XemsUi.GO_TEXT, 0xCC), dp(a, 1))
                : XemsUi.rounded(XemsUi.SURFACE, r, XemsUi.STROKE, dp(a, 1)), XemsUi.TEXT, r));
        chip.setTextColor(active ? XemsUi.GO_TEXT : XemsUi.TEXT);
    }

    /** Previous / next next to the time in the now-playing card. */
    private static void addPrevNext(Activity a) {
        if (timeView == null || !(timeView.getParent() instanceof LinearLayout)) {
            return;
        }
        LinearLayout row = (LinearLayout) timeView.getParent();
        TextView prev = XemsUi.iconButton(a, "⏮", XemsUi.CARD, XemsUi.TEXT, 32);
        TextView next = XemsUi.iconButton(a, "⏭", XemsUi.CARD, XemsUi.TEXT, 32);
        prev.setOnClickListener(new SkipListener(-1));
        next.setOnClickListener(new SkipListener(+1));
        LinearLayout.LayoutParams pl = new LinearLayout.LayoutParams(dp(a, 32), dp(a, 32));
        pl.leftMargin = dp(a, 8);
        row.addView(prev, pl);
        LinearLayout.LayoutParams nl = new LinearLayout.LayoutParams(dp(a, 32), dp(a, 32));
        nl.leftMargin = dp(a, 6);
        row.addView(next, nl);
    }

    /** Hide the AmountView and put a kit stepper (hold = fast) in its place. */
    private static void replaceAmount(Activity a, AmountView view, final int which, final int step,
            final int min, final int max) {
        if (view == null || !(view.getParent() instanceof LinearLayout)) {
            return;
        }
        LinearLayout row = (LinearLayout) view.getParent();
        int index = row.indexOfChild(view);
        view.setVisibility(View.GONE);
        if (row.getChildAt(0) instanceof TextView) {
            ((TextView) row.getChildAt(0)).setTextColor(XemsUi.TEXT);
        }
        XemsUi.Stepper st = XemsUi.stepper(a, settingValue(which) + "", "%", 17, null);
        XemsUi.OnStep cb = new SettingStep(which, step, min, max, st);
        XemsUi.repeatOnHold(st.view.getChildAt(0), cb, -1);
        XemsUi.repeatOnHold(st.view.getChildAt(2), cb, +1);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        lp.topMargin = dp(a, 3);
        lp.bottomMargin = dp(a, 3);
        row.addView(st.view, index, lp);
        settingSteppers[which] = st;
    }

    private static int settingValue(int which) {
        switch (which) {
            case 0: return MusicSync.getSensitivity();
            case 1: return MusicSync.getRhythmMix();
            case 2: return MusicSync.getFloorPercent();
            default: return MusicSync.getSmoothness();
        }
    }

    private static void refreshSettingSteppers() {
        for (int i = 0; i < settingSteppers.length; i++) {
            if (settingSteppers[i] != null) {
                settingSteppers[i].set(String.valueOf(settingValue(i)), "%");
            }
        }
    }

    /** ⏮ / ⏭: switch track; keeps playing if it was playing. */
    private static void skip(int dir) {
        if (playlist.isEmpty()) {
            return;
        }
        int next = currentIndex + dir;
        if (next < 0 || next >= playlist.size()) {
            return;
        }
        boolean wasPlaying = MusicSync.isRunning() && MusicSync.isPlayerMode() && !MusicSync.isPlaybackPaused();
        if (MusicSync.isRunning() && MusicSync.isPlayerMode()) {
            MusicSync.stop();
        }
        currentIndex = next;
        refreshTrackTitle();
        Activity activity = resolveHostActivity(null, overlayContent);
        rebuildPlaylistViews(activity);
        if (wasPlaying) {
            startCurrentTrack(true);
        } else {
            showIdle();
        }
    }

    private static void removeTrack(int index) {
        if (index < 0 || index >= playlist.size()) {
            return;
        }
        if (index == currentIndex && MusicSync.isRunning() && MusicSync.isPlayerMode()) {
            MusicSync.stop();
            showIdle();
        }
        playlist.remove(index);
        if (playlist.isEmpty()) {
            currentIndex = -1;
        } else if (index < currentIndex || currentIndex >= playlist.size()) {
            currentIndex = Math.max(0, currentIndex - 1);
        }
        Activity activity = resolveHostActivity(null, overlayContent);
        if (activity != null) {
            persistPlaylist(activity);
            rebuildPlaylistViews(activity);
        }
        refreshTrackTitle();
        resizeOverlayWindow();
    }

    private static String tr(String bg, String en) {
        return IntervalTimerHelper.tr(bg, en);
    }

    private static void refreshTrackTitle() {
        if (trackTitleView == null) {
            return;
        }
        if (currentIndex < 0 || currentIndex >= playlist.size()) {
            trackTitleView.setText(0x7f0d0112);
            return;
        }
        trackTitleView.setText(playlist.get(currentIndex).name);
    }

    private static void refreshSeekFromPlayer() {
        MusicDial.refresh();
        if (seekBar == null || userSeeking) {
            return;
        }
        int duration = MusicSync.getPlaybackDurationMs();
        int position = MusicSync.getPlaybackPositionMs();
        updateTimeLabel(position, duration);
        if (duration <= 0) {
            seekBar.setCurProcess(0);
            return;
        }
        int progress = (int) ((position * (long) SEEK_MAX) / duration);
        if (progress < 0) {
            progress = 0;
        } else if (progress > SEEK_MAX) {
            progress = SEEK_MAX;
        }
        seekBar.setCurProcess(progress);
    }

    private static void updateTimeLabel(int positionMs, int durationMs) {
        if (timeView == null) {
            return;
        }
        timeView.setText(formatTime(positionMs) + " / " + formatTime(durationMs));
    }

    private static int mapSeekProgressToMs(int progress, int durationMs) {
        if (durationMs <= 0) {
            return 0;
        }
        int clamped = progress;
        if (clamped < 0) {
            clamped = 0;
        } else if (clamped > SEEK_MAX) {
            clamped = SEEK_MAX;
        }
        if (clamped >= SEEK_MAX) {
            return durationMs;
        }
        return (int) ((clamped * (long) durationMs) / SEEK_MAX);
    }

    private static String formatTime(int ms) {
        if (ms < 0) {
            ms = 0;
        }
        int totalSec = ms / 1000;
        int min = totalSec / 60;
        int sec = totalSec % 60;
        String secStr = sec < 10 ? "0" + sec : String.valueOf(sec);
        return min + ":" + secStr;
    }

    private static void setPlayLoadingUi(boolean loading) {
        if (playPauseBtn != null) {
            playPauseBtn.setEnabled(!loading);
            playPauseBtn.setVisibility(loading ? View.INVISIBLE : View.VISIBLE);
        }
        if (playLoadingView != null) {
            playLoadingView.setVisibility(loading ? View.VISIBLE : View.GONE);
        }
    }

    private static void stylePlayLoadingSpinner(Activity activity) {
        if (!(playLoadingView instanceof android.widget.ProgressBar) || activity == null) {
            return;
        }
        android.widget.ProgressBar spinner = (android.widget.ProgressBar) playLoadingView;
        try {
            android.graphics.drawable.Drawable indeterminate = spinner.getIndeterminateDrawable();
            if (indeterminate != null) {
                indeterminate.setColorFilter(
                        resolveThemeColor(activity, COLOR_LIGHT_GREEN, 0xFF66BB6A),
                        android.graphics.PorterDuff.Mode.SRC_IN);
            }
        } catch (Throwable ignored) {
        }
    }

    private static void updatePlayPauseLabel() {
        MusicDial.refresh();
        if (playPauseBtn == null || MusicSync.isPlayerPreparing()) {
            return;
        }
        boolean playing = MusicSync.isRunning() && MusicSync.isPlayerMode() && !MusicSync.isPlaybackPaused();
        if (playIcon != null) {
            playPauseBtn.setText("");
            playIcon.setType(playing ? com.isaigu.gymapp.widget.XemsIcon.PAUSE : com.isaigu.gymapp.widget.XemsIcon.PLAY);
        } else {
            playPauseBtn.setText(playing ? "\u23F8" : "\u25B6");
        }
    }

    private static void startProgressUpdates() {
        handler.removeCallbacks(progressRunnable);
        handler.post(progressRunnable);
    }

    private static void stopProgressUpdates() {
        handler.removeCallbacks(progressRunnable);
    }

    private static boolean startCurrentTrack(boolean fromUser) {
        if (MusicSync.isPlayerPreparing()) {
            return false;
        }
        if (MusicSync.isRunning() && MusicSync.isPlayerMode()) {
            if (MusicSync.isPlaybackPaused()) {
                MusicSync.togglePlaybackPause();
                if (fromUser) {
                    onPlaybackResumedByUser();
                }
            }
            return true;
        }
        if (currentIndex < 0 || currentIndex >= playlist.size()) {
            if (fromUser) {
                showError(0x7f0d0112);
            }
            return false;
        }
        Activity activity = resolveHostActivity(null, overlayContent);
        if (activity == null) {
            showError(0x7f0d010b);
            return false;
        }
        Uri uri = playlist.get(currentIndex).uri;
        MusicSync.setHostActivity(activity);
        refreshTrackTitle();
        rebuildPlaylistViews(activity);
        MusicSync.startPlayer(activity, uri);
        return true;
    }

    private static void addTrackSafe(Activity activity, Uri uri) {
        try {
            addTrack(activity, uri);
        } catch (Throwable t) {
            MusicDiagLog.logError("player_add_track", t);
            showError(0x7f0d0113);
        }
    }

    private static void addTrack(Activity activity, Uri uri) {
        if (uri == null || activity == null) {
            return;
        }
        String name = MusicTrackLabel.resolve(activity, uri);
        playlist.add(new MusicPlaylistEntry(uri, name));
        if (currentIndex < 0) {
            currentIndex = playlist.size() - 1;
        }
        persistPlaylist(activity);
        rebuildPlaylistViews(activity);
        refreshTrackTitle();
        if (isOverlayShowing()) {
            resizeOverlayWindow();
        }
    }

    /** hide() before SAF picker does not fire onDismiss — same pattern as interval timer. */
    private static void restoreOverlayAfterPick() {
        android.support.v7.app.AlertDialog current = overlayDialog;
        if (current == null) {
            return;
        }
        try {
            if (!current.isShowing()) {
                current.show();
                overlayVisible = true;
            }
            Activity activity = resolveHostActivity(null, overlayContent);
            if (activity != null && overlayContent != null) {
                applyExpandedState();
                rebuildPlaylistViews(activity);
                refreshTrackTitle();
                resizeOverlayWindow();
            }
        } catch (Throwable t) {
            MusicDiagLog.logError("music_player_restore_pick", t);
        }
    }

    private static void movePlaylistItem(int from, int to) {
        if (from == to || from < 0 || to < 0 || from >= playlist.size() || to >= playlist.size()) {
            return;
        }
        MusicPlaylistEntry entry = playlist.remove(from);
        playlist.add(to, entry);
        if (currentIndex == from) {
            currentIndex = to;
        } else if (from < currentIndex && to >= currentIndex) {
            currentIndex--;
        } else if (from > currentIndex && to <= currentIndex) {
            currentIndex++;
        }
        Activity activity = resolveHostActivity(null, overlayContent);
        if (activity != null) {
            persistPlaylist(activity);
            rebuildPlaylistViews(activity);
        }
    }

    private static ScrollView findAncestorScrollView(View view) {
        if (view == null) {
            return null;
        }
        for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof ScrollView) {
                return (ScrollView) parent;
            }
        }
        return null;
    }

    private static void lockPlaylistScroll(boolean lock) {
        if (playlistScrollView != null) {
            playlistScrollView.requestDisallowInterceptTouchEvent(lock);
        }
    }

    private static int resolveDropIndex(float rawY) {
        if (playlistList == null || playlistList.getChildCount() == 0) {
            return dragFromIndex >= 0 ? dragFromIndex : 0;
        }
        int childCount = playlistList.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View child = playlistList.getChildAt(i);
            int[] loc = new int[2];
            child.getLocationOnScreen(loc);
            int top = loc[1];
            int bottom = top + Math.max(child.getHeight(), dragRowHeightPx);
            if (rawY >= top && rawY <= bottom) {
                int mid = top + (bottom - top) / 2;
                return rawY < mid ? i : Math.min(i + 1, childCount - 1);
            }
            if (rawY < top) {
                return i;
            }
        }
        return childCount - 1;
    }

    private static void updateDragHover(int toIndex) {
        if (playlistList == null || dragFromIndex < 0) {
            return;
        }
        int count = playlistList.getChildCount();
        if (count == 0) {
            return;
        }
        if (toIndex < 0) {
            toIndex = 0;
        }
        if (toIndex >= count) {
            toIndex = count - 1;
        }
        if (toIndex == dragHighlightIndex) {
            return;
        }
        dragHighlightIndex = toIndex;
        int from = dragFromIndex;
        int rowH = dragRowHeightPx;
        if (rowH <= 0) {
            Activity activity = resolveHostActivity(null, overlayContent);
            rowH = activity != null ? dp(activity, 44) : 132;
        }
        for (int i = 0; i < count; i++) {
            View child = playlistList.getChildAt(i);
            float shift = 0f;
            if (from < toIndex) {
                if (i > from && i <= toIndex) {
                    shift = -rowH;
                }
            } else if (from > toIndex) {
                if (i >= toIndex && i < from) {
                    shift = rowH;
                }
            }
            child.animate().translationY(shift).setDuration(90L).start();
            if (child != dragSourceRow) {
                child.setAlpha(1f);
            }
        }
    }

    private static void autoScrollPlaylist(float rawY) {
        if (playlistScrollView == null) {
            return;
        }
        Activity activity = resolveHostActivity(null, overlayContent);
        int edge = activity != null ? dp(activity, 40) : 120;
        int[] loc = new int[2];
        playlistScrollView.getLocationOnScreen(loc);
        int top = loc[1];
        int bottom = top + playlistScrollView.getHeight();
        if (rawY < top + edge) {
            playlistScrollView.scrollBy(0, -16);
        } else if (rawY > bottom - edge) {
            playlistScrollView.scrollBy(0, 16);
        }
    }

    private static void resetPlaylistRowTransforms() {
        if (playlistList == null) {
            return;
        }
        for (int i = 0; i < playlistList.getChildCount(); i++) {
            View child = playlistList.getChildAt(i);
            child.animate().cancel();
            child.setTranslationY(0f);
            child.setAlpha(1f);
            child.setScaleX(1f);
            child.setScaleY(1f);
            child.setVisibility(View.VISIBLE);
        }
    }

    private static void finishDragReorder(int fromIndex, int toIndex) {
        removeDragGhost();
        resetPlaylistRowTransforms();
        restoreDragSourceRow();
        lockPlaylistScroll(false);
        dragHighlightIndex = -1;
        dragFromIndex = -1;
        dragRowHeightPx = 0;
        activeDragListener = null;
        if (fromIndex != toIndex) {
            movePlaylistItem(fromIndex, toIndex);
        } else {
            Activity activity = resolveHostActivity(null, overlayContent);
            if (activity != null) {
                rebuildPlaylistViews(activity);
            }
        }
    }

    private static void clearDragHighlight() {
        removeDragGhost();
        resetPlaylistRowTransforms();
        restoreDragSourceRow();
        lockPlaylistScroll(false);
        dragHighlightIndex = -1;
        dragFromIndex = -1;
        dragRowHeightPx = 0;
        activeDragListener = null;
    }

    private static void restoreDragSourceRow() {
        if (dragSourceRow == null) {
            return;
        }
        dragSourceRow.setVisibility(View.VISIBLE);
        dragSourceRow.setAlpha(1f);
        dragSourceRow.setScaleX(1f);
        dragSourceRow.setScaleY(1f);
        if (dragSourceBackground != null) {
            dragSourceRow.setBackground(dragSourceBackground);
        }
        dragSourceRow = null;
        dragSourceBackground = null;
    }

    private static View findPlaylistRow(View handle) {
        if (handle == null) {
            return null;
        }
        View parent = handle;
        while (parent.getParent() instanceof View) {
            parent = (View) parent.getParent();
            if (parent.getParent() == playlistList) {
                return parent;
            }
        }
        if (handle.getParent() instanceof View) {
            return (View) handle.getParent();
        }
        return null;
    }

    private static ViewGroup resolveDragOverlayRoot(View anchor) {
        if (overlayDialog != null) {
            try {
                Window window = overlayDialog.getWindow();
                if (window != null) {
                    View decor = window.getDecorView();
                    if (decor instanceof ViewGroup) {
                        return (ViewGroup) decor;
                    }
                }
            } catch (Throwable ignored) {
            }
        }
        Activity activity = resolveHostActivity(null, anchor);
        if (activity != null) {
            return (ViewGroup) activity.getWindow().getDecorView();
        }
        return null;
    }

    private static int resolveThemeColor(Activity activity, int resId, int fallback) {
        if (activity == null) {
            return fallback;
        }
        try {
            return activity.getResources().getColor(resId);
        } catch (Throwable ignored) {
            return fallback;
        }
    }

    private static void showDragGhost(View row, float rawX, float rawY) {
        removeDragGhost();
        Activity activity = resolveHostActivity(null, row);
        ViewGroup decor = resolveDragOverlayRoot(row);
        if (activity == null || row == null || decor == null) {
            return;
        }
        TextView titleView = (TextView) row.findViewById(ID_PLAYLIST_ITEM_TITLE);
        CharSequence label = titleView != null ? titleView.getText() : "";

        LinearLayout ghost = new LinearLayout(activity);
        ghost.setOrientation(LinearLayout.HORIZONTAL);
        ghost.setGravity(Gravity.CENTER_VERTICAL);
        int padH = dp(activity, 10);
        int padV = dp(activity, 8);
        ghost.setPadding(padH, padV, padH, padV);
        android.graphics.drawable.GradientDrawable ghostBg = new android.graphics.drawable.GradientDrawable();
        ghostBg.setColor(resolveThemeColor(activity, COLOR_BG_CARD, 0xFF252525));
        ghostBg.setCornerRadius(dp(activity, 10));
        ghostBg.setStroke(Math.max(2, dp(activity, 2)),
                resolveThemeColor(activity, COLOR_LIGHT_GREEN, 0xFF66BB6A));
        ghost.setBackground(ghostBg);
        ghost.setAlpha(0.98f);
        ghost.setScaleX(1.06f);
        ghost.setScaleY(1.06f);
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            ghost.setElevation(dp(activity, 18));
            ghost.setTranslationZ(dp(activity, 18));
        }

        TextView ghostTitle = new TextView(activity);
        ghostTitle.setText(label);
        ghostTitle.setTextSize(14f);
        ghostTitle.setTextColor(resolveThemeColor(activity, COLOR_TEXT_PRIMARY, 0xFFE8E8E8));
        ghostTitle.setSingleLine(true);
        ghostTitle.setEllipsize(android.text.TextUtils.TruncateAt.MIDDLE);
        ghostTitle.setLayoutParams(new LinearLayout.LayoutParams(
                0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));

        TextView ghostHandle = new TextView(activity);
        ghostHandle.setText("\u2630");
        ghostHandle.setTextSize(18f);
        ghostHandle.setTextColor(resolveThemeColor(activity, COLOR_LIGHT_GREEN, 0xFF66BB6A));
        ghostHandle.setPadding(dp(activity, 8), 0, 0, 0);

        ghost.addView(ghostTitle);
        ghost.addView(ghostHandle);

        int width = row.getWidth() > 0 ? row.getWidth() : dp(activity, OVERLAY_PANEL_WIDTH_DP - 16);
        int height = row.getHeight() > 0 ? row.getHeight() : dp(activity, 40);

        int[] rowLoc = new int[2];
        row.getLocationOnScreen(rowLoc);
        dragGhostOffsetX = rawX - rowLoc[0];
        dragGhostOffsetY = rawY - rowLoc[1];

        int[] decorLoc = new int[2];
        decor.getLocationOnScreen(decorLoc);

        FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(width, height);
        lp.gravity = Gravity.TOP | Gravity.LEFT;
        lp.leftMargin = (int) (rawX - decorLoc[0] - dragGhostOffsetX);
        lp.topMargin = (int) (rawY - decorLoc[1] - dragGhostOffsetY);
        decor.addView(ghost, lp);
        dragGhostView = ghost;
    }

    private static void moveDragGhost(float rawX, float rawY) {
        if (dragGhostView == null) {
            return;
        }
        ViewGroup parent = (ViewGroup) dragGhostView.getParent();
        if (parent == null) {
            return;
        }
        int[] decorLoc = new int[2];
        parent.getLocationOnScreen(decorLoc);
        ViewGroup.LayoutParams params = dragGhostView.getLayoutParams();
        if (params instanceof FrameLayout.LayoutParams) {
            FrameLayout.LayoutParams lp = (FrameLayout.LayoutParams) params;
            lp.leftMargin = (int) (rawX - decorLoc[0] - dragGhostOffsetX);
            lp.topMargin = (int) (rawY - decorLoc[1] - dragGhostOffsetY);
            dragGhostView.setLayoutParams(lp);
        }
    }

    private static void removeDragGhost() {
        if (dragGhostView == null) {
            return;
        }
        ViewGroup parent = (ViewGroup) dragGhostView.getParent();
        if (parent != null) {
            parent.removeView(dragGhostView);
        }
        dragGhostView = null;
    }

    private static void cancelPendingDrag() {
        if (pendingDragStart != null) {
            handler.removeCallbacks(pendingDragStart);
            pendingDragStart = null;
        }
        activeDragListener = null;
    }

    private static void hidePlayerOverlay() {
        persistSettings();
        stopProgressUpdates();
        MusicDial.dismiss();
        if (MusicSync.isRunning() && MusicSync.isPlayerMode()) {
            requestTrainingPause();
            MusicSync.stop();
        }
        if (overlayDialog != null) {
            try {
                overlayDialog.hide();
            } catch (Throwable ignored) {
            }
        }
        overlayVisible = false;
    }

    private static boolean reShowOverlay(Activity activity) {
        if (overlayDialog == null || activity == null || activity.isFinishing()) {
            return false;
        }
        try {
            overlayDialog.show();
            overlayVisible = true;
            applyExpandedState();
            refreshTrackTitle();
            refreshSeekFromPlayer();
            refreshTransportState();
            if (MusicSync.isRunning() && MusicSync.isPlayerMode()) {
                startProgressUpdates();
            } else {
                showIdle();
            }
            return true;
        } catch (Throwable t) {
            MusicDiagLog.logError("music_player_overlay_reshow", t);
            overlayDialog = null;
            clearOverlayRefs();
            return false;
        }
    }

    private static void grantUri(Activity activity, Intent data, Uri uri) {
        try {
            int takeFlags = data.getFlags()
                    & (Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_GRANT_WRITE_URI_PERMISSION);
            if (takeFlags != 0) {
                activity.getContentResolver().takePersistableUriPermission(uri, takeFlags);
            }
        } catch (Throwable t) {
            MusicDiagLog.logError("player_uri_persist", t);
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

    private static void closePlayer() {
        persistSettings();
        requestTrainingStop();
        MusicSync.stop();
        dismissOverlay(false);
    }

    private static void dismissOverlay(boolean fromDismissListener) {
        stopProgressUpdates();
        cancelPendingDrag();
        clearDragHighlight();
        if (overlayDialog != null) {
            try {
                overlayDialog.dismiss();
            } catch (Throwable ignored) {
            }
            if (!fromDismissListener && !pickingFile) {
                overlayDialog = null;
                clearOverlayRefs();
            }
        }
        if (!pickingFile) {
            overlayVisible = false;
        }
    }

    private static void clearOverlayRefs() {
        persistSettings();
        overlayContent = null;
        seekBar = null;
        playPauseBtn = null;
        playIcon = null;
        controlPanel = null;
        playlistPanel = null;
        playlistList = null;
        trackTitleView = null;
        timeView = null;
        statusView = null;
        sensitivityView = null;
        rhythmView = null;
        floorView = null;
        smoothView = null;
        presetViews = new TextView[0];
        settingsButton = null;
        playlistButton = null;
        meterView = null;
        settingSteppers = new XemsUi.Stepper[4];
    }

    private static void moveOverlayWindow(int x, int y) {
        if (overlayDialog == null || overlayDialog.getWindow() == null) {
            return;
        }
        WindowManager.LayoutParams lp = overlayDialog.getWindow().getAttributes();
        lp.x = x;
        lp.y = y;
        overlayDialog.getWindow().setAttributes(lp);
    }

    private static void resizeOverlayWindow() {
        Activity activity = resolveHostActivity(null, overlayContent);
        if (activity == null || overlayDialog == null || overlayContent == null
                || !overlayDialog.isShowing()) {
            return;
        }
        int overlayWidthPx = dp(activity, OVERLAY_PANEL_WIDTH_DP);
        overlayContent.measure(
                View.MeasureSpec.makeMeasureSpec(overlayWidthPx, View.MeasureSpec.EXACTLY),
                View.MeasureSpec.makeMeasureSpec(0, View.MeasureSpec.UNSPECIFIED));
        int overlayHeightPx = overlayContent.getMeasuredHeight();
        int minHeightPx = dp(activity, OVERLAY_SIZE_DP + 56);
        if (overlayHeightPx < minHeightPx) {
            overlayHeightPx = minHeightPx;
        }
        Window window = overlayDialog.getWindow();
        if (window != null) {
            window.setLayout(overlayWidthPx, overlayHeightPx);
            WindowManager.LayoutParams lp = window.getAttributes();
            lp.width = overlayWidthPx;
            lp.height = overlayHeightPx;
            window.setAttributes(lp);
        }
    }

    private static int dp(Activity activity, int value) {
        if (activity == null) {
            return value;
        }
        float density = activity.getResources().getDisplayMetrics().density;
        return (int) (value * density + 0.5f);
    }

    private static void toast(Activity activity, int resId) {
        if (activity == null) {
            return;
        }
        try {
            Toast.makeText(activity, resId, Toast.LENGTH_SHORT).show();
        } catch (Throwable ignored) {
        }
    }

    static final class MasterOpenListener implements View.OnClickListener {
        private final View root;
        private final TrainItemManager manager;

        MasterOpenListener(View root, TrainItemManager manager) {
            this.root = root;
            this.manager = manager;
        }

        @Override
        public void onClick(View view) {
            Activity activity = resolveHostActivity(view != null ? view : root);
            if (activity == null) {
                toast(null, 0x7f0d010b);
                return;
            }
            MusicSync.setHostActivity(activity);
            TrainItem item = resolveTargetItem(manager);
            if (item == null) {
                toast(activity, 0x7f0d011a);
                return;
            }
            show(activity, item);
        }
    }

    static final class PlayPauseListener implements View.OnClickListener {
        @Override
        public void onClick(View view) {
            togglePlayPause();
        }
    }

    // ================================================================ compact dial (MusicDial)

    private static boolean compactMode = true;

    /** Play / pause / start — shared by the full panel and the dial. */
    static void togglePlayPause() {
        {
            long now = SystemClock.elapsedRealtime();
            if (now - lastPlayClickMs < PLAY_DEBOUNCE_MS) {
                return;
            }
            lastPlayClickMs = now;
            if (MusicSync.isPlayerPreparing()) {
                return;
            }
            if (MusicSync.isRunning() && MusicSync.isPlayerMode()) {
                if (MusicSync.isPlaybackPaused()) {
                    onPlaybackResumedByUser();
                    MusicSync.togglePlaybackPause();
                } else {
                    // Pause playback before stopping training — syncWithTrainingState(false)
                    // would pause the engine first and break togglePlaybackPause().
                    MusicSync.togglePlaybackPause();
                    onPlaybackPausedByUser();
                }
                updatePlayPauseLabel();
                startProgressUpdates();
                return;
            }
            if (currentIndex < 0 && !playlist.isEmpty()) {
                currentIndex = 0;
            }
            startCurrentTrack(true);
        }
    }

    static void skipTrack(int dir) {
        skip(dir);
        MusicDial.refresh();
    }

    static String currentTitle() {
        return currentIndex >= 0 && currentIndex < playlist.size() ? playlist.get(currentIndex).name : null;
    }

    /** ☰ on the dial: the full player (playlist, settings); music keeps playing. */
    static void openFull(Activity activity) {
        if (activity == null) {
            return;
        }
        compactMode = false;
        MusicDial.dismiss();
        if (overlayDialog == null || !reShowOverlay(activity)) {
            if (!showOverlay(activity)) {
                toast(activity, 0x7f0d0113);
            }
        }
    }

    /** "—" on the full player: back to the dial; music keeps playing. */
    static void minimize(Activity activity) {
        compactMode = true;
        if (overlayDialog != null) {
            try {
                overlayDialog.hide();
            } catch (Throwable ignored) {
            }
        }
        overlayVisible = false;
        MusicDial.show(activity);
        if (MusicSync.isRunning() && MusicSync.isPlayerMode()) {
            startProgressUpdates();
        }
    }

    static void closeFromDial() {
        MusicDial.dismiss();
        persistSettings();
        requestTrainingStop();
        MusicSync.stop();
        dismissOverlay(false);
        showIdle();
    }

    static final class MinimizeListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            minimize(resolveHostActivity(v));
        }
    }

    /** ⚙ toggles settings, ☰ toggles the playlist; independent so both can stay open. */
    static final class PanelToggleListener implements View.OnClickListener {
        private final boolean settings;

        PanelToggleListener(boolean settings) {
            this.settings = settings;
        }

        @Override
        public void onClick(View view) {
            if (settings) {
                settingsExpanded = !settingsExpanded;
            } else {
                playlistExpanded = !playlistExpanded;
            }
            applyExpandedState();
            resizeOverlayWindow();
        }
    }

    static final class PresetListener implements View.OnClickListener {
        private final int index;

        PresetListener(int index) {
            this.index = index;
        }

        @Override
        public void onClick(View view) {
            applyPreset(index);
        }
    }

    /** Live settings: applied to the running sync immediately and persisted. */
    static final class SettingChangeListener implements AmountView.OnAmountChangeListener {
        static final int SENSITIVITY = 0;
        static final int RHYTHM = 1;
        static final int FLOOR = 2;
        static final int SMOOTH = 3;

        private final int which;

        SettingChangeListener(int which) {
            this.which = which;
        }

        @Override
        public void onAmountChange(View view, int amount) {
            switch (which) {
                case SENSITIVITY:
                    MusicSync.setSensitivity(amount);
                    break;
                case RHYTHM:
                    MusicSync.setRhythmMix(amount);
                    break;
                case FLOOR:
                    MusicSync.setFloorPercent(amount);
                    break;
                default:
                    MusicSync.setSmoothness(amount);
                    break;
            }
            persistSettings();
            refreshPresetHighlight();
        }
    }

    static final class CloseListener implements View.OnClickListener {
        @Override
        public void onClick(View view) {
            closePlayer();
        }
    }

    static final class InfoListener implements View.OnClickListener {
        @Override
        public void onClick(View view) {
            Activity activity = resolveHostActivity(view);
            if (activity == null) {
                return;
            }
            ModalInfoHelper.show(activity, STR_INFO_TITLE, STR_INFO_BODY);
        }
    }

    static final class PickListener implements View.OnClickListener {
        @Override
        public void onClick(View view) {
            Activity activity = resolveHostActivity(view);
            if (activity == null) {
                showError(0x7f0d010b);
                return;
            }
            MusicSync.setHostActivity(activity);
            try {
                Intent intent = new Intent(Intent.ACTION_OPEN_DOCUMENT);
                intent.addCategory(Intent.CATEGORY_OPENABLE);
                intent.setType("audio/*");
                intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
                intent.addFlags(Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION);
                intent.putExtra(Intent.EXTRA_ALLOW_MULTIPLE, true);
                pickingFile = true;
                if (overlayDialog != null) {
                    try {
                        overlayDialog.hide();
                    } catch (Throwable ignored) {
                    }
                }
                activity.startActivityForResult(intent, PICK_AUDIO);
            } catch (Throwable t) {
                pickingFile = false;
                restoreOverlayAfterPick();
                MusicDiagLog.logError("player_pick", t);
                showError(0x7f0d0113);
            }
        }
    }

    static final class PlaylistSelectListener implements View.OnClickListener {
        private final int index;

        PlaylistSelectListener(int index) {
            this.index = index;
        }

        @Override
        public void onClick(View view) {
            currentIndex = index;
            startCurrentTrack(true);
        }
    }

    static final class PlaylistDragListener implements View.OnTouchListener {
        private final int index;
        private float downRawY;
        private float lastRawX;
        private float lastRawY;
        private boolean dragging;

        PlaylistDragListener(int index) {
            this.index = index;
        }

        @Override
        public boolean onTouch(View v, MotionEvent event) {
            switch (event.getActionMasked()) {
                case MotionEvent.ACTION_DOWN:
                    downRawY = event.getRawY();
                    lastRawX = event.getRawX();
                    lastRawY = event.getRawY();
                    dragging = false;
                    dragFromIndex = index;
                    cancelPendingDrag();
                    activeDragListener = this;
                    pendingDragStart = new DragStartRunnable(this, v, lastRawX, lastRawY);
                    handler.postDelayed(pendingDragStart, DRAG_LONG_PRESS_MS);
                    if (v.getParent() != null) {
                        v.getParent().requestDisallowInterceptTouchEvent(true);
                    }
                    return true;
                case MotionEvent.ACTION_MOVE:
                    lastRawX = event.getRawX();
                    lastRawY = event.getRawY();
                    if (dragging) {
                        moveDragGhost(lastRawX, lastRawY);
                        updateDragHover(resolveDropIndex(lastRawY));
                        autoScrollPlaylist(lastRawY);
                        return true;
                    }
                    return true;
                case MotionEvent.ACTION_UP:
                case MotionEvent.ACTION_CANCEL:
                    cancelPendingDrag();
                    if (dragging) {
                        int toIndex = resolveDropIndex(event.getRawY());
                        dragging = false;
                        finishDragReorder(index, toIndex);
                        resizeOverlayWindow();
                        return true;
                    }
                    lockPlaylistScroll(false);
                    return false;
                default:
                    return false;
            }
        }

        void beginDrag(View handle, float rawX, float rawY) {
            dragging = true;
            dragFromIndex = index;
            if (playlistScrollView == null) {
                playlistScrollView = findAncestorScrollView(playlistList);
            }
            lockPlaylistScroll(true);
            try {
                handle.performHapticFeedback(HapticFeedbackConstants.LONG_PRESS);
            } catch (Throwable ignored) {
            }
            View row = findPlaylistRow(handle);
            if (row != null) {
                restoreDragSourceRow();
                dragSourceRow = row;
                dragSourceBackground = row.getBackground();
                dragRowHeightPx = row.getHeight();
                Activity activity = resolveHostActivity(handle);
                if (dragRowHeightPx <= 0 && activity != null) {
                    dragRowHeightPx = dp(activity, 44);
                }
                row.setVisibility(View.INVISIBLE);
                showDragGhost(row, rawX, rawY);
            }
            updateDragHover(index);
        }
    }

    static final class DragStartRunnable implements Runnable {
        private final PlaylistDragListener listener;
        private final View handle;
        private final float rawX;
        private final float rawY;

        DragStartRunnable(PlaylistDragListener listener, View handle, float rawX, float rawY) {
            this.listener = listener;
            this.handle = handle;
            this.rawX = rawX;
            this.rawY = rawY;
        }

        @Override
        public void run() {
            if (activeDragListener == listener) {
                listener.beginDrag(handle, rawX, rawY);
            }
        }
    }

    static final class SeekChangeListener implements CircleSeekBar.OnSeekBarChangeListener {
        @Override
        public void onChanged(CircleSeekBar seekbar, int progress) {
            userSeeking = true;
            int duration = MusicSync.getPlaybackDurationMs();
            int position = mapSeekProgressToMs(progress, duration);
            updateTimeLabel(position, duration);
            if (duration > 0) {
                MusicSync.seekPlaybackTo(position);
            }
        }

        @Override
        public void onChangedEnd(CircleSeekBar seekbar, int progress) {
            int duration = MusicSync.getPlaybackDurationMs();
            if (duration > 0) {
                MusicSync.seekPlaybackTo(mapSeekProgressToMs(progress, duration));
            }
            userSeeking = false;
        }
    }

    static final class ProgressTickRunnable implements Runnable {
        @Override
        public void run() {
            try {
                if (!MusicSync.isRunning() || !MusicSync.isPlayerMode()) {
                    if (visualizerView != null) {
                        visualizerView.setPlaying(false);
                    }
                    return;
                }
                refreshSeekFromPlayer();
                if (visualizerView != null) {
                    visualizerView.setPlaying(true);
                    visualizerView.setLiveLevel(MusicSync.getLiveStrength());
                }
                handler.postDelayed(this, PROGRESS_TICK_MS);
            } catch (Throwable t) {
                com.isaigu.gymapp.widget.XemsGuard.report("MusicPlayerHelper.progress", t);
            }
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
                    Activity activity = resolveHostActivity(null);
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
                case MotionEvent.ACTION_CANCEL:
                    return overlayMoved;
                default:
                    return false;
            }
        }
    }

    static final class RemoveTrackListener implements View.OnClickListener {
        private final int index;

        RemoveTrackListener(int index) {
            this.index = index;
        }

        @Override
        public void onClick(View v) {
            removeTrack(index);
        }
    }

    static final class SkipListener implements View.OnClickListener {
        private final int dir;

        SkipListener(int dir) {
            this.dir = dir;
        }

        @Override
        public void onClick(View v) {
            skip(dir);
        }
    }

    /** Kit stepper → the same path as the old AmountView listener. */
    static final class SettingStep implements XemsUi.OnStep {
        private final int which;
        private final int step;
        private final int min;
        private final int max;
        private final XemsUi.Stepper stepper;

        SettingStep(int which, int step, int min, int max, XemsUi.Stepper stepper) {
            this.which = which;
            this.step = step;
            this.min = min;
            this.max = max;
            this.stepper = stepper;
        }

        @Override
        public void onStep(int d) {
            int v = Math.max(min, Math.min(max, settingValue(which) + d * step));
            new SettingChangeListener(which).onAmountChange(null, v);
            stepper.set(String.valueOf(v), "%");
        }
    }

    static final class OverlayDismissListener
            implements android.content.DialogInterface.OnDismissListener {
        @Override
        public void onDismiss(android.content.DialogInterface d) {
            if (pickingFile) {
                overlayVisible = false;
                return;
            }
            overlayDialog = null;
            overlayVisible = false;
            MusicSync.stop();
            clearOverlayRefs();
        }
    }
}
