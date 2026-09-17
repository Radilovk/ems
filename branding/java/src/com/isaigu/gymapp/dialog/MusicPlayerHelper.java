package com.isaigu.gymapp.dialog;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;

import com.isaigu.gymapp.BaseActivity;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.train.utils.MusicSync;
import com.isaigu.gymapp.widget.AmountView;

public final class MusicPlayerHelper {
    static final int BUTTON_ID = 0x7f090226;
    static final int LAYOUT_ID = 0x7f0b0078;
    static final int PICK_AUDIO = 0x4255;

    private static Activity hostActivity;
    private static AlertDialog dialog;
    private static TextView trackView;
    private static TextView statusView;
    private static TextView levelView;
    private static AmountView sensitivityView;
    private static Uri selectedUri;

    private MusicPlayerHelper() {
    }

    public static void attachButton(View rowRoot, TrainItem item) {
        if (rowRoot == null || item == null) {
            return;
        }
        View button = rowRoot.findViewById(BUTTON_ID);
        if (button == null) {
            return;
        }
        button.setClickable(true);
        button.setFocusable(true);
        button.setOnClickListener(new OpenListener(item));
    }

    public static void show(BaseActivity activity, TrainItem item) {
        if (activity == null || item == null) {
            return;
        }
        hostActivity = activity;
        MusicSync.setTargetItem(item);
        MusicSync.setHostActivity(activity);
        dismissDialog();
        View content = LayoutInflater.from(activity).inflate(LAYOUT_ID, null);
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
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setView(content);
        builder.setOnDismissListener(new DismissHandler());
        dialog = builder.create();
        dialog.show();
    }

    public static void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode != PICK_AUDIO || resultCode != Activity.RESULT_OK || data == null) {
            return;
        }
        selectedUri = data.getData();
        updateTrackLabel(selectedUri);
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
        trackView = null;
        statusView = null;
        levelView = null;
        sensitivityView = null;
        hostActivity = null;
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
    }

    static final class OpenListener implements View.OnClickListener {
        private final TrainItem item;

        OpenListener(TrainItem item) {
            this.item = item;
        }

        @Override
        public void onClick(View view) {
            try {
                Activity activity = MusicSyncHelper.resolveActivity(view.getContext());
                if (!(activity instanceof BaseActivity)) {
                    return;
                }
                show((BaseActivity) activity, item);
            } catch (Throwable ignored) {
            }
        }
    }

    static final class PickListener implements View.OnClickListener {
        @Override
        public void onClick(View view) {
            Activity activity = hostActivity;
            if (activity == null) {
                showError(0x7f0d010b);
                return;
            }
            try {
                Intent intent = new Intent(Intent.ACTION_OPEN_DOCUMENT);
                intent.addCategory(Intent.CATEGORY_OPENABLE);
                intent.setType("audio/*");
                activity.startActivityForResult(intent, PICK_AUDIO);
            } catch (Throwable t) {
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
            Activity activity = hostActivity;
            if (activity == null) {
                showError(0x7f0d010b);
                return;
            }
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

    static final class DismissHandler implements DialogInterface.OnDismissListener {
        @Override
        public void onDismiss(DialogInterface d) {
            MusicSync.stop();
            clearDialogRefs();
        }
    }
}
