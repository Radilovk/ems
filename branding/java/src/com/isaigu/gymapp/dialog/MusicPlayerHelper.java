package com.isaigu.gymapp.dialog;

import android.app.Activity;
import android.content.ClipData;
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

import com.isaigu.gymapp.MainActivity;
import com.isaigu.gymapp.train.TrainItemManager;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.train.utils.MusicDiagLog;
import com.isaigu.gymapp.train.utils.MusicSync;
import com.isaigu.gymapp.widget.AmountView;
import com.isaigu.gymapp.widget.CircleSeekBar;
import com.isaigu.gymapp.widget.MusicVisualizerView;

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
    private static final int ID_LEVEL = 0x7f09022a;
    private static final int ID_SENSITIVITY = 0x7f090228;
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
    private static final int OVERLAY_PANEL_WIDTH_DP = 260;
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
    private static View playLoadingView;
    private static View controlPanel;
    private static View playlistPanel;
    private static LinearLayout playlistList;
    private static TextView trackTitleView;
    private static TextView timeView;
    private static TextView statusView;
    private static TextView levelView;
    private static AmountView sensitivityView;

    private static TrainItemManager itemManager;
    private static final ArrayList<MusicPlaylistEntry> playlist = new ArrayList<MusicPlaylistEntry>();
    private static int currentIndex = -1;
    private static boolean controlsExpanded;
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
    private static int savedSensitivity = 20;

    private static final Handler handler = new Handler(Looper.getMainLooper());
    private static final Runnable progressRunnable = new ProgressTickRunnable();

    private MusicPlayerHelper() {
    }

    public static void attachMasterPanel(View root, TrainItemManager manager) {
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
        if (isOverlayShowing()) {
            hidePlayerOverlay();
            return;
        }
        if (overlayDialog != null) {
            if (reShowOverlay(activity)) {
                return;
            }
        }
        loadPlaylist(activity);
        if (!showOverlay(activity)) {
            toast(activity, 0x7f0d0113);
        }
    }

    public static void onActivityResult(int requestCode, int resultCode, Intent data) {
        pickingFile = false;
        restoreOverlayAfterPick();
        if (requestCode != PICK_AUDIO || resultCode != Activity.RESULT_OK || data == null) {
            return;
        }
        Activity activity = resolveHostActivity(null, overlayContent);
        if (activity == null) {
            return;
        }
        controlsExpanded = true;
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
            return overlayDialog != null && overlayDialog.isShowing();
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
        boolean targetRunning = isTargetTrainingRunning();
        if (targetRunning) {
            tryStartFromTrainingSync();
        }
        MusicSync.syncWithTrainingState(targetRunning);
    }

    /** Master all-stop / reset — stop music sync entirely, not just pause. */
    public static void onTrainingFullStop() {
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
        if (levelView != null) {
            levelView.setVisibility(View.GONE);
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
        if (statusView != null) {
            statusView.setText(0x7f0d011b);
        }
        if (levelView != null) {
            levelView.setVisibility(View.GONE);
        }
        setPlayLoadingUi(true);
    }

    public static void showActive(int appliedStrength, int ceiling) {
        if (appliedStrength < 0) {
            appliedStrength = 0;
        }
        if (ceiling < 1) {
            ceiling = 1;
        }
        if (statusView != null) {
            statusView.setText(0x7f0d0111);
        }
        if (levelView != null) {
            levelView.setText(appliedStrength + "% / " + ceiling + "%");
            levelView.setVisibility(controlsExpanded ? View.VISIBLE : View.GONE);
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
        if (levelView != null) {
            levelView.setVisibility(View.GONE);
        }
        setPlayLoadingUi(false);
        Activity activity = resolveHostActivity(null, overlayContent);
        if (activity != null) {
            toast(activity, resId);
        }
        updatePlayPauseLabel();
    }

    static Activity resolveHostActivity(View view) {
        return resolveHostActivity(null, view);
    }

    static Activity resolveHostActivity(Activity preferred, View view) {
        if (preferred != null) {
            return preferred;
        }
        if (overlayDialog != null) {
            Activity fromDialog = MusicSyncHelper.resolveActivity(overlayDialog.getContext());
            if (fromDialog != null) {
                return fromDialog;
            }
        }
        if (view != null) {
            Activity fromView = MusicSyncHelper.resolveActivity(view.getContext());
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
        levelView = (TextView) content.findViewById(ID_LEVEL);
        sensitivityView = (AmountView) content.findViewById(ID_SENSITIVITY);

        configureSensitivity();
        configureSeekBar();
        bindButton(playPauseBtn, new PlayPauseListener());
        bindButton(content.findViewById(ID_PLAYLIST_BTN), new ControlsToggleListener());
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

    private static void configureSensitivity() {
        if (sensitivityView == null) {
            return;
        }
        try {
            sensitivityView.setMin(0);
            sensitivityView.setGoods_storage(100);
            sensitivityView.setStep(5);
            sensitivityView.setAmountUnit("%");
            sensitivityView.setAmount(savedSensitivity);
        } catch (Throwable ignored) {
        }
    }

    private static void applyExpandedState() {
        int visibility = controlsExpanded ? View.VISIBLE : View.GONE;
        if (controlPanel != null) {
            controlPanel.setVisibility(visibility);
        }
        if (playlistPanel != null) {
            playlistPanel.setVisibility(visibility);
        }
        if (levelView != null && !controlsExpanded) {
            levelView.setVisibility(View.GONE);
        }
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
            if (title != null) {
                title.setText(entry.name);
                if (index == currentIndex) {
                    title.setTextColor(0xFF7CFC00);
                }
                title.setOnClickListener(new PlaylistSelectListener(index));
            }
            if (handle != null) {
                handle.setOnTouchListener(new PlaylistDragListener(index));
            }
            playlistList.addView(row);
        }
        clearDragHighlight();
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
        if (playPauseBtn == null || MusicSync.isPlayerPreparing()) {
            return;
        }
        boolean playing = MusicSync.isRunning() && MusicSync.isPlayerMode() && !MusicSync.isPlaybackPaused();
        playPauseBtn.setText(playing ? "\u23F8" : "\u25B6");
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
        MusicSync.startPlayer(activity, uri, readSensitivity());
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

    private static int readSensitivity() {
        if (sensitivityView == null) {
            return savedSensitivity;
        }
        try {
            return sensitivityView.getAmount();
        } catch (Throwable ignored) {
            return savedSensitivity;
        }
    }

    private static void saveSensitivity() {
        savedSensitivity = readSensitivity();
    }

    private static void hidePlayerOverlay() {
        saveSensitivity();
        stopProgressUpdates();
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
        saveSensitivity();
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
        saveSensitivity();
        overlayContent = null;
        seekBar = null;
        playPauseBtn = null;
        controlPanel = null;
        playlistPanel = null;
        playlistList = null;
        trackTitleView = null;
        timeView = null;
        statusView = null;
        levelView = null;
        sensitivityView = null;
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

    static final class ControlsToggleListener implements View.OnClickListener {
        @Override
        public void onClick(View view) {
            controlsExpanded = !controlsExpanded;
            applyExpandedState();
            resizeOverlayWindow();
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

    static final class OverlayDismissListener
            implements android.content.DialogInterface.OnDismissListener {
        @Override
        public void onDismiss(android.content.DialogInterface d) {
            if (pickingFile) {
                overlayVisible = false;
                return;
            }
            saveSensitivity();
            overlayDialog = null;
            overlayVisible = false;
            MusicSync.stop();
            clearOverlayRefs();
        }
    }
}
