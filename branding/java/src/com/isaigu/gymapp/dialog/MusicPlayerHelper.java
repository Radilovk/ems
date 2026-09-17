package com.isaigu.gymapp.dialog;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;

import com.isaigu.gymapp.BaseActivity;
import com.isaigu.gymapp.MainActivity;
import com.isaigu.gymapp.train.TrainItemManager;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.train.utils.MusicSync;
import com.isaigu.gymapp.widget.AmountView;

import java.util.List;

public final class MusicPlayerHelper {
    static final int BUTTON_ID = 0x7f090226;
    static final int LAYOUT_ID = 0x7f0b0078;
    static final int PICK_AUDIO = 0x4255;

    private static Activity hostActivity;
    private static android.support.v7.app.AlertDialog dialog;
    private static TextView trackView;
    private static TextView statusView;
    private static TextView levelView;
    private static AmountView sensitivityView;
    private static Uri selectedUri;
    private static TrainItemManager itemManager;

    private MusicPlayerHelper() {
    }

    /** Wire the master-panel music button in {@code rightLayout}. */
    public static void attachMasterPanel(View root, BaseActivity activity, TrainItemManager manager) {
        if (root == null || activity == null || manager == null) {
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
        button.setOnClickListener(new MasterOpenListener(activity, manager));
    }

    public static void show(BaseActivity activity, TrainItem item) {
        if (activity == null) {
            return;
        }
        if (item == null) {
            toast(activity, 0x7f0d011a);
            return;
        }
        hostActivity = activity;
        MusicSync.setTargetItem(item);
        MusicSync.setHostActivity(activity);
        dismissDialog();
        View content;
        try {
            content = LayoutInflater.from(activity).inflate(LAYOUT_ID, null);
        } catch (Throwable t) {
            toast(activity, 0x7f0d0113);
            return;
        }
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
        if (dialog.getWindow() != null) {
            dialog.getWindow().setBackgroundDrawableResource(android.R.color.transparent);
        }
        dialog.show();
    }

    public static void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode != PICK_AUDIO || resultCode != Activity.RESULT_OK || data == null) {
            return;
        }
        selectedUri = data.getData();
        updateTrackLabel(selectedUri);
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

    private static BaseActivity resolveActivity(Activity activity) {
        if (activity instanceof BaseActivity) {
            return (BaseActivity) activity;
        }
        Activity cached = MusicSync.getHostActivity();
        if (cached instanceof BaseActivity) {
            return (BaseActivity) cached;
        }
        return MainActivity.getInstance();
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

    static final class MasterOpenListener implements View.OnClickListener {
        private final BaseActivity activity;
        private final TrainItemManager manager;

        MasterOpenListener(BaseActivity activity, TrainItemManager manager) {
            this.activity = activity;
            this.manager = manager;
        }

        @Override
        public void onClick(View view) {
            TrainItem item = resolveTargetItem(manager);
            if (item == null) {
                toast(activity, 0x7f0d011a);
                return;
            }
            show(resolveActivity(activity), item);
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

    static final class DismissHandler implements android.content.DialogInterface.OnDismissListener {
        @Override
        public void onDismiss(android.content.DialogInterface d) {
            MusicSync.stop();
            clearDialogRefs();
        }
    }
}
