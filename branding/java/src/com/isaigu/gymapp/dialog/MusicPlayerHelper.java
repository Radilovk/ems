package com.isaigu.gymapp.dialog;

import android.app.Activity;
import android.content.ClipData;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
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
    private static final int ID_MINIMIZE = 0x7f090281;
    private static final int ID_TRACK_TITLE = 0x7f090282;
    private static final int ID_TIME = 0x7f090283;
    private static final int ID_STATUS = 0x7f090229;
    private static final int ID_LEVEL = 0x7f09022a;
    private static final int ID_SENSITIVITY = 0x7f090228;
    private static final int ID_PLAYLIST_ITEM_TITLE = 0x7f090284;
    private static final int ID_PLAYLIST_ITEM_UP = 0x7f090286;
    private static final int ID_PLAYLIST_ITEM_DOWN = 0x7f090287;

    private static final int OVERLAY_SIZE_DP = 192;
    private static final int OVERLAY_SIDE_BTN_DP = 44;
    private static final int OVERLAY_SIDE_GAP_DP = 4;
    private static final int OVERLAY_ROW_WIDTH_DP =
            OVERLAY_SIZE_DP + OVERLAY_SIDE_BTN_DP + OVERLAY_SIDE_GAP_DP;
    private static final int OVERLAY_PANEL_WIDTH_DP = 260;
    private static final int SEEK_MAX = 1000;
    private static final long PROGRESS_TICK_MS = 200L;
    private static final float OVERLAY_TAP_SLOP_DP = 10f;

    private static android.support.v7.app.AlertDialog overlayDialog;
    private static View overlayContent;
    private static CircleSeekBar seekBar;
    private static TextView playPauseBtn;
    private static View controlPanel;
    private static View playlistPanel;
    private static LinearLayout playlistList;
    private static TextView trackTitleView;
    private static TextView timeView;
    private static TextView statusView;
    private static TextView levelView;
    private static AmountView sensitivityView;
    private static TextView minimizeBtn;

    private static TrainItemManager itemManager;
    private static final ArrayList<MusicPlaylistEntry> playlist = new ArrayList<MusicPlaylistEntry>();
    private static int currentIndex = -1;
    private static boolean playlistVisible;
    private static boolean minimized;
    private static boolean pickingFile;
    private static boolean userSeeking;
    private static boolean overlayVisible;

    private static float overlayTouchDx;
    private static float overlayTouchDy;
    private static float overlayDownRawX;
    private static float overlayDownRawY;
    private static boolean overlayMoved;

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
        button.setFocusable(true);
        button.setFocusableInTouchMode(true);
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
            return;
        }
        loadPlaylist(activity);
        if (!showOverlay(activity)) {
            toast(activity, 0x7f0d0113);
        }
    }

    public static void onActivityResult(int requestCode, int resultCode, Intent data) {
        pickingFile = false;
        if (requestCode != PICK_AUDIO || resultCode != Activity.RESULT_OK || data == null) {
            return;
        }
        Activity activity = resolveHostActivity(null, overlayContent);
        if (activity == null) {
            return;
        }
        ClipData clip = data.getClipData();
        if (clip != null && clip.getItemCount() > 0) {
            for (int i = 0; i < clip.getItemCount(); i++) {
                Uri uri = clip.getItemAt(i).getUri();
                if (uri != null) {
                    grantUri(activity, data, uri);
                    addTrack(activity, uri);
                }
            }
            return;
        }
        Uri uri = data.getData();
        if (uri == null) {
            return;
        }
        grantUri(activity, data, uri);
        addTrack(activity, uri);
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
    }

    public static void showIdle() {
        if (statusView != null) {
            statusView.setText(0x7f0d0110);
        }
        if (levelView != null) {
            levelView.setVisibility(View.GONE);
        }
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
            levelView.setVisibility(minimized ? View.GONE : View.VISIBLE);
        }
        updatePlayPauseLabel();
        startProgressUpdates();
    }

    public static void showError(int resId) {
        if (statusView != null) {
            statusView.setText(resId);
        }
        if (levelView != null) {
            levelView.setVisibility(View.GONE);
        }
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
        playPauseBtn = (TextView) content.findViewById(ID_PLAY_PAUSE);
        controlPanel = content.findViewById(ID_PANEL);
        playlistPanel = content.findViewById(ID_PLAYLIST_PANEL);
        playlistList = (LinearLayout) content.findViewById(ID_PLAYLIST_LIST);
        trackTitleView = (TextView) content.findViewById(ID_TRACK_TITLE);
        timeView = (TextView) content.findViewById(ID_TIME);
        statusView = (TextView) content.findViewById(ID_STATUS);
        levelView = (TextView) content.findViewById(ID_LEVEL);
        sensitivityView = (AmountView) content.findViewById(ID_SENSITIVITY);
        minimizeBtn = (TextView) content.findViewById(ID_MINIMIZE);

        configureSensitivity();
        configureSeekBar();
        bindButton(playPauseBtn, new PlayPauseListener());
        bindButton(content.findViewById(ID_PLAYLIST_BTN), new PlaylistToggleListener());
        bindButton(content.findViewById(ID_ADD_TRACK), new PickListener());
        bindButton(minimizeBtn, new MinimizeListener());

        applyMinimizedState();
        applyPlaylistVisibility();
        rebuildPlaylistViews(activity);
        refreshTrackTitle();
        refreshSeekFromPlayer();
        showIdle();

        content.setClickable(true);
        content.setFocusable(false);
        content.setOnTouchListener(new OverlayDragListener());

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
            content.measure(
                    View.MeasureSpec.makeMeasureSpec(overlayWidthPx, View.MeasureSpec.EXACTLY),
                    View.MeasureSpec.makeMeasureSpec(0, View.MeasureSpec.UNSPECIFIED));
            int overlayHeightPx = content.getMeasuredHeight();
            if (overlayHeightPx < rowHeightPx) {
                overlayHeightPx = rowHeightPx;
            }
            window.setLayout(overlayWidthPx, overlayHeightPx);
            WindowManager.LayoutParams lp = window.getAttributes();
            lp.width = overlayWidthPx;
            lp.height = overlayHeightPx;
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
            sensitivityView.setAmount(20);
        } catch (Throwable ignored) {
        }
    }

    private static void applyMinimizedState() {
        if (controlPanel != null) {
            controlPanel.setVisibility(minimized ? View.GONE : View.VISIBLE);
        }
        if (minimizeBtn != null) {
            minimizeBtn.setText(minimized ? 0x7f0d016c : 0x7f0d016b);
        }
        if (playlistPanel != null && minimized) {
            playlistPanel.setVisibility(View.GONE);
            playlistVisible = false;
        }
        if (levelView != null && minimized) {
            levelView.setVisibility(View.GONE);
        }
    }

    private static void applyPlaylistVisibility() {
        if (playlistPanel != null) {
            playlistPanel.setVisibility(playlistVisible && !minimized ? View.VISIBLE : View.GONE);
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
            View upBtn = row.findViewById(ID_PLAYLIST_ITEM_UP);
            View downBtn = row.findViewById(ID_PLAYLIST_ITEM_DOWN);
            if (title != null) {
                title.setText(entry.name);
                if (index == currentIndex) {
                    title.setTextColor(0xFF7CFC00);
                }
                title.setOnClickListener(new PlaylistSelectListener(index));
            }
            if (upBtn != null) {
                upBtn.setVisibility(index > 0 ? View.VISIBLE : View.INVISIBLE);
                upBtn.setOnClickListener(new PlaylistMoveListener(index, -1));
            }
            if (downBtn != null) {
                downBtn.setVisibility(index + 1 < playlist.size() ? View.VISIBLE : View.INVISIBLE);
                downBtn.setOnClickListener(new PlaylistMoveListener(index, 1));
            }
            playlistList.addView(row);
        }
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

    private static void updatePlayPauseLabel() {
        if (playPauseBtn == null) {
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

    private static int readSensitivity() {
        if (sensitivityView == null) {
            return 20;
        }
        try {
            return sensitivityView.getAmount();
        } catch (Throwable ignored) {
            return 20;
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

    private static void dismissOverlay(boolean fromDismissListener) {
        stopProgressUpdates();
        if (overlayDialog != null) {
            try {
                overlayDialog.dismiss();
            } catch (Throwable ignored) {
            }
            if (!fromDismissListener) {
                overlayDialog = null;
                clearOverlayRefs();
            }
        }
        overlayVisible = false;
    }

    private static void clearOverlayRefs() {
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
        minimizeBtn = null;
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
        if (activity == null || overlayDialog == null || overlayContent == null) {
            return;
        }
        int overlayWidthPx = dp(activity, OVERLAY_PANEL_WIDTH_DP);
        overlayContent.measure(
                View.MeasureSpec.makeMeasureSpec(overlayWidthPx, View.MeasureSpec.EXACTLY),
                View.MeasureSpec.makeMeasureSpec(0, View.MeasureSpec.UNSPECIFIED));
        int overlayHeightPx = overlayContent.getMeasuredHeight();
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
            if (MusicSync.isRunning() && MusicSync.isPlayerMode()) {
                MusicSync.togglePlaybackPause();
                return;
            }
            if (currentIndex < 0 && !playlist.isEmpty()) {
                currentIndex = 0;
            }
            startCurrentTrack(true);
        }
    }

    static final class PlaylistToggleListener implements View.OnClickListener {
        @Override
        public void onClick(View view) {
            if (minimized) {
                minimized = false;
                applyMinimizedState();
            }
            playlistVisible = !playlistVisible;
            applyPlaylistVisibility();
            resizeOverlayWindow();
        }
    }

    static final class MinimizeListener implements View.OnClickListener {
        @Override
        public void onClick(View view) {
            minimized = !minimized;
            if (minimized) {
                playlistVisible = false;
            }
            applyMinimizedState();
            applyPlaylistVisibility();
            resizeOverlayWindow();
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
                activity.startActivityForResult(intent, PICK_AUDIO);
            } catch (Throwable t) {
                pickingFile = false;
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

    static final class PlaylistMoveListener implements View.OnClickListener {
        private final int index;
        private final int delta;

        PlaylistMoveListener(int index, int delta) {
            this.index = index;
            this.delta = delta;
        }

        @Override
        public void onClick(View view) {
            movePlaylistItem(index, index + delta);
        }
    }

    static final class SeekChangeListener implements CircleSeekBar.OnSeekBarChangeListener {
        @Override
        public void onChanged(CircleSeekBar seekbar, int progress) {
            userSeeking = true;
            int duration = MusicSync.getPlaybackDurationMs();
            int position = duration > 0 ? (int) ((progress * (long) duration) / SEEK_MAX) : 0;
            updateTimeLabel(position, duration);
        }

        @Override
        public void onChangedEnd(CircleSeekBar seekbar, int progress) {
            int duration = MusicSync.getPlaybackDurationMs();
            if (duration > 0) {
                int position = (int) ((progress * (long) duration) / SEEK_MAX);
                MusicSync.seekPlaybackTo(position);
            }
            userSeeking = false;
        }
    }

    static final class ProgressTickRunnable implements Runnable {
        @Override
        public void run() {
            if (!MusicSync.isRunning() || !MusicSync.isPlayerMode()) {
                return;
            }
            refreshSeekFromPlayer();
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
                return;
            }
            overlayDialog = null;
            overlayVisible = false;
            MusicSync.stop();
            clearOverlayRefs();
        }
    }
}
