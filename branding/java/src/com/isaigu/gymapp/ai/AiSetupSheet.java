package com.isaigu.gymapp.ai;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;

import com.isaigu.gymapp.widget.XemsUi;

/**
 * The AI training's preparation (owner, 1.1.543 — docs/xems-ai-coach.md): a temporary window over the training screen
 * that holds the wizard (client → training → health → tell the AI → plan). It closes at ▶ Старт and nothing of it stays
 * on the screen: during the session the AI is only the coach bar and its side chat.
 */
public final class AiSetupSheet {
    private AiSetupSheet() {}

    static final int W_DP = 1200, H_DP = 640;
    private static Dialog dialog;
    private static LinearLayout content;

    public static boolean isOpen() {
        return dialog != null && dialog.isShowing();
    }

    static void open(Activity a) {
        if (a == null || a.isFinishing()) {
            return;
        }
        close();
        XemsUi.init(a);
        Dialog d = new Dialog(a);
        d.requestWindowFeature(Window.FEATURE_NO_TITLE);
        content = XemsUi.vertical(a);
        d.setContentView(content);
        d.setCancelable(false);
        try {
            Window w = d.getWindow();
            w.setBackgroundDrawable(new ColorDrawable(0));
            w.setLayout(XemsUi.dp(a, W_DP), XemsUi.dp(a, H_DP));
            w.addFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND);
            w.setDimAmount(0.55f);
            // the keyboard pushes the window up instead of covering the field
            w.setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_ADJUST_RESIZE);
        } catch (Throwable ignored) {
        }
        dialog = d;
        refresh();
        d.show();
    }

    /** The current step again (an answer came, a choice changed). */
    static void refresh() {
        if (content == null) {
            return;
        }
        content.removeAllViews();
        AiWizard.build(content.getContext(), content);
    }

    static void close() {
        if (dialog != null) {
            try {
                dialog.dismiss();
            } catch (Throwable ignored) {
            }
        }
        dialog = null;
        content = null;
    }

    /** The wizard's size for the off-device shots (tools/ui-shot). */
    static ViewGroup.LayoutParams shotSize(Activity a) {
        return new ViewGroup.LayoutParams(XemsUi.dp(a, W_DP), XemsUi.dp(a, H_DP));
    }
}
