package com.isaigu.gymapp.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import android.widget.TextView;

import com.isaigu.gymapp.MainActivity;
import com.isaigu.gymapp.bean.TrainUserProgramDataWrapper;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.train.utils.MusicSync;
import com.isaigu.gymapp.train.utils.MusicSyncBridge;
import com.isaigu.gymapp.widget.AmountView;

import android.os.Bundle;

public class MusicSyncHelper {
    private static EditUserProgramDataDialog hostDialog;
    private static TextView statusView;
    private static TextView levelView;
    private static AmountView minAmount;
    private static AmountView maxAmount;

    private static void attachButton(View view, View.OnClickListener listener) {
        if (view == null) {
            return;
        }
        view.setClickable(true);
        view.setEnabled(true);
        view.setFocusable(true);
        view.setFocusableInTouchMode(true);
        view.setOnClickListener(listener);
    }

    private static void configureAmount(AmountView view, int defaultAmount) {
        if (view == null) {
            return;
        }
        try {
            view.setMin(0);
            view.setGoods_storage(100);
            view.setStep(5);
            view.setAmountUnit("%");
            view.setAmount(defaultAmount);
        } catch (Throwable ignored) {
        }
    }

    public static Activity getActivity() {
        return resolveActivityForDialog(hostDialog, null);
    }

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

    private static String resolveTargetMac(EditUserProgramDataDialog dialog) {
        if (dialog == null) {
            return null;
        }
        try {
            Bundle args = dialog.getArguments();
            if (args == null) {
                return null;
            }
            Object data = args.getSerializable("data");
            if (data instanceof TrainUserProgramDataWrapper) {
                return ((TrainUserProgramDataWrapper) data).macAddress;
            }
        } catch (Throwable ignored) {
        }
        return null;
    }

    public static void setTargetItem(TrainItem item) {
        MusicSync.setTargetItem(item);
    }

    public static Activity resolveActivityForDialog(EditUserProgramDataDialog dialog, View view) {
        if (dialog != null) {
            Activity activity = dialog.getActivity();
            if (activity != null) {
                return activity;
            }
            activity = resolveActivity(dialog.getContext());
            if (activity != null) {
                return activity;
            }
            activity = dialog.getParentActivity();
            if (activity != null) {
                return activity;
            }
            Dialog d = dialog.getDialog();
            if (d != null) {
                Activity owner = d.getOwnerActivity();
                if (owner != null) {
                    return owner;
                }
            }
        }
        if (view != null) {
            Activity activity = resolveActivity(view.getContext());
            if (activity != null) {
                return activity;
            }
        }
        Activity cached = MusicSync.getHostActivity();
        if (cached != null) {
            return cached;
        }
        return MainActivity.getInstance();
    }

    public static void bind(View root, EditUserProgramDataDialog dialog) {
        if (root == null) {
            return;
        }
        try {
            hostDialog = dialog;
            statusView = (TextView) root.findViewById(0x7f090221);
            levelView = (TextView) root.findViewById(0x7f090225);
            attachButton(root.findViewById(0x7f090222), new StartListener(dialog));
            attachButton(root.findViewById(0x7f090223), new StopListener());
            minAmount = (AmountView) root.findViewById(0x7f09021f);
            maxAmount = (AmountView) root.findViewById(0x7f090220);
            configureAmount(minAmount, 20);
            if (maxAmount != null) {
                maxAmount.setVisibility(View.GONE);
            }
            showIdle();
            Activity activity = resolveActivityForDialog(dialog, root);
            if (activity != null) {
                MusicSync.setHostActivity(activity);
                MusicSync.setTargetMacAddress(resolveTargetMac(dialog));
                MusicSyncBridge.attachManager(activity);
            }
        } catch (Throwable ignored) {
        }
    }

    public static AmountView getMinAmount() {
        return minAmount;
    }

    public static AmountView getMaxAmount() {
        return maxAmount;
    }

    public static void showActive(int appliedStrength) {
        showActive(appliedStrength, 100);
    }

    public static void showActive(int appliedStrength, int ceiling) {
        if (appliedStrength < 0) {
            appliedStrength = 0;
        }
        if (ceiling < 1) {
            ceiling = 1;
        }
        if (statusView != null) {
            statusView.setText(0x7f0d0108);
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

    public static void showIdle() {
        if (statusView != null) {
            statusView.setText(0x7f0d0109);
        }
        if (levelView != null) {
            levelView.setVisibility(View.GONE);
        }
    }

    public static void showPermission() {
        if (statusView != null) {
            statusView.setText(0x7f0d010a);
        }
    }

    static final class StartListener implements View.OnClickListener {
        private final EditUserProgramDataDialog dialog;

        StartListener(EditUserProgramDataDialog dialog) {
            this.dialog = dialog;
        }

        @Override
        public void onClick(View view) {
            try {
                Activity activity = resolveActivityForDialog(dialog, view);
                if (activity == null) {
                    showError(0x7f0d010b);
                    return;
                }
                int min = 20;
                if (minAmount != null) {
                    min = minAmount.getAmount();
                }
                MusicSync.setTargetMacAddress(resolveTargetMac(dialog));
                MusicSync.start(activity, min, 100);
            } catch (Throwable t) {
                showError(0x7f0d010e);
            }
        }
    }

    static final class StopListener implements View.OnClickListener {
        @Override
        public void onClick(View view) {
            MusicSync.stop();
            showIdle();
        }
    }
}
