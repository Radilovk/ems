package com.isaigu.gymapp.dialog;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.TextView;
import android.widget.Toast;

import com.isaigu.gymapp.MainActivity;
import com.isaigu.gymapp.train.TrainItemManager;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.train.utils.MusicDiagLog;
import com.isaigu.gymapp.train.utils.MusicSync;
import com.isaigu.gymapp.widget.AmountView;

import java.util.List;

public final class MusicPlayerHelper {
    static final int BUTTON_ID = 0x7f090226;
    static final int LAYOUT_ID = 0x7f0b0078;
    static final int PICK_AUDIO = 0x4255;

    private static android.support.v7.app.AlertDialog dialog;
    private static View dialogContent;
    private static TextView trackView;
    private static TextView statusView;
    private static TextView levelView;
    private static AmountView sensitivityView;
    private static Uri selectedUri;
    private static TrainItemManager itemManager;
    private static boolean pickingFile;

    private MusicPlayerHelper() {
    }

    /** Wire the master-panel music button in {@code rightLayout}. */
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
        activity = resolveHostActivity(activity, dialogContent);
        if (activity == null) {
            return;
        }
        if (item == null) {
            toast(activity, 0x7f0d011a);
            return;
        }
        MusicSync.setHostActivity(activity);
        MusicSync.setTargetItem(item);
        dismissDialog();
        View content;
        try {
            content = LayoutInflater.from(activity).inflate(LAYOUT_ID, null);
        } catch (Throwable t) {
            toast(activity, 0x7f0d0113);
            return;
        }
        dialogContent = content;
        trackView = (TextView) content.findViewById(0x7f090227);
        sensitivityView = (AmountView) content.findViewById(0x7f090228);
        statusView = (TextView) content.findViewById(0x7f090229);
        levelView = (TextView) content.findViewById(0x7f09022a);
        configureSensitivity();
        updateTrackLabel(selectedUri);
        bindButton(content.findViewById(0x7f09022b), new PickListener());
        bindButton(content.findViewById(0x7f09022c), new PlayListener());
        bindButton(content.findViewById(0x7f09022d), new StopListener());
        showIdle();
        android.support.v7.app.AlertDialog.Builder builder =
                new android.support.v7.app.AlertDialog.Builder(activity);
        builder.setView(content);
        builder.setOnDismissListener(new DismissHandler());
        dialog = builder.create();
        dialog.setCancelable(true);
        dialog.setCanceledOnTouchOutside(true);
        if (dialog.getWindow() != null) {
            dialog.getWindow().setBackgroundDrawableResource(0x7f080069);
            dialog.getWindow().setLayout(dp(activity, 320), WindowManager.LayoutParams.WRAP_CONTENT);
        }
        dialog.show();
    }

    private static int dp(Activity activity, int value) {
        if (activity == null) {
            return value;
        }
        float density = activity.getResources().getDisplayMetrics().density;
        return (int) (value * density + 0.5f);
    }

    public static void onActivityResult(int requestCode, int resultCode, Intent data) {
        pickingFile = false;
        restoreDialogAfterPick();
        if (requestCode != PICK_AUDIO || resultCode != Activity.RESULT_OK || data == null) {
            return;
        }
        Uri uri = data.getData();
        if (uri == null) {
            return;
        }
        selectedUri = uri;
        try {
            Activity activity = resolveHostActivity(null, dialogContent);
            if (activity != null) {
                int takeFlags = data.getFlags()
                        & (Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_GRANT_WRITE_URI_PERMISSION);
                if (takeFlags != 0) {
                    try {
                        activity.getContentResolver().takePersistableUriPermission(uri, takeFlags);
                    } catch (Throwable t) {
                        MusicDiagLog.logError("player_uri_persist", t);
                    }
                }
            }
        } catch (Throwable t) {
            MusicDiagLog.logError("player_uri_grant", t);
        }
        refreshTrackLabel();
    }

    private static void restoreDialogAfterPick() {
        android.support.v7.app.AlertDialog current = dialog;
        if (current == null) {
            return;
        }
        try {
            if (!current.isShowing()) {
                current.show();
            }
        } catch (Throwable t) {
            MusicDiagLog.logError("player_dialog_restore", t);
        }
    }

    /** Same fallback chain as {@link MusicSyncHelper} for mic start. */
    static Activity resolveHostActivity(View view) {
        return resolveHostActivity(null, view);
    }

    static Activity resolveHostActivity(Activity preferred, View view) {
        if (preferred != null) {
            return preferred;
        }
        if (dialog != null) {
            Activity fromDialog = MusicSyncHelper.resolveActivity(dialog.getContext());
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

    private static void toast(Activity activity, int resId) {
        if (activity == null) {
            return;
        }
        try {
            Toast.makeText(activity, resId, Toast.LENGTH_SHORT).show();
        } catch (Throwable ignored) {
        }
    }

    private static void dismissDialog() {
        if (dialog != null) {
            try {
                dialog.dismiss();
            } catch (Throwable ignored) {
            }
            dialog = null;
        }
        clearDialogRefs();
    }

    private static void clearDialogRefs() {
        dialogContent = null;
        trackView = null;
        statusView = null;
        levelView = null;
        sensitivityView = null;
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

    private static void bindButton(View view, View.OnClickListener listener) {
        if (view == null) {
            return;
        }
        view.setClickable(true);
        view.setFocusable(true);
        view.setOnClickListener(listener);
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

    private static void refreshTrackLabel() {
        if (trackView == null && dialogContent != null) {
            trackView = (TextView) dialogContent.findViewById(0x7f090227);
        }
        updateTrackLabel(selectedUri);
    }

    private static void updateTrackLabel(Uri uri) {
        if (trackView == null) {
            return;
        }
        if (uri == null) {
            trackView.setText(0x7f0d0112);
            return;
        }
        String name = uri.getLastPathSegment();
        if (name == null || name.length() == 0) {
            trackView.setText(uri.toString());
        } else {
            trackView.setText(name);
        }
    }

    public static void showIdle() {
        if (statusView != null) {
            statusView.setText(0x7f0d0110);
        }
        if (levelView != null) {
            levelView.setVisibility(View.GONE);
        }
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
            levelView.setVisibility(View.VISIBLE);
        }
    }

    public static void showError(int resId) {
        if (statusView != null) {
            statusView.setText(resId);
        }
        if (levelView != null) {
            levelView.setVisibility(View.GONE);
        }
        Activity activity = resolveHostActivity(null, dialogContent);
        if (activity != null) {
            toast(activity, resId);
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
                pickingFile = true;
                if (dialog != null) {
                    try {
                        dialog.hide();
                    } catch (Throwable ignored) {
                    }
                }
                activity.startActivityForResult(intent, PICK_AUDIO);
            } catch (Throwable t) {
                pickingFile = false;
                restoreDialogAfterPick();
                MusicDiagLog.logError("player_pick", t);
                showError(0x7f0d0113);
            }
        }
    }

    static final class PlayListener implements View.OnClickListener {
        @Override
        public void onClick(View view) {
            if (selectedUri == null) {
                showError(0x7f0d0112);
                return;
            }
            Activity activity = resolveHostActivity(view);
            if (activity == null) {
                showError(0x7f0d010b);
                return;
            }
            MusicSync.setHostActivity(activity);
            MusicSync.startPlayer(activity, selectedUri, readSensitivity());
        }
    }

    static final class StopListener implements View.OnClickListener {
        @Override
        public void onClick(View view) {
            MusicSync.stop();
            showIdle();
        }
    }

    static final class DismissHandler implements android.content.DialogInterface.OnDismissListener {
        @Override
        public void onDismiss(android.content.DialogInterface d) {
            if (pickingFile) {
                return;
            }
            dialog = null;
            MusicSync.stop();
            clearDialogRefs();
        }
    }
}
