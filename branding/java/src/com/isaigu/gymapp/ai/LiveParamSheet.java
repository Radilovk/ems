package com.isaigu.gymapp.ai;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Handler;
import android.os.Looper;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.widget.XemsUi;

/**
 * The impulse settings during an automatic / AI training (owner, 1.1.601): "Главен" or a tap on the impulse values
 * beside the avatar opens it. Everything the program or the AI decides (frequency, ON / OFF, 2nd impulse) is shown
 * locked; the pulse width is the one value the trainer sets — in real time, with the suit running: every tap on − / +
 * is written at once (AutoSession.setLiveWidth), nothing to save, no pause. The limits (L4 / L5) still clamp it.
 */
public final class LiveParamSheet {
    private LiveParamSheet() {}

    private static final Handler H = new Handler(Looper.getMainLooper());
    private static Dialog dialog;
    private static TextView[] locked;
    private static XemsUi.Stepper stepper;
    private static TextView range;
    private static final Refresh REFRESH = new Refresh();

    public static boolean isOpen() {
        return dialog != null && dialog.isShowing();
    }

    /** Opens the window over the training screen; false when no automatic / AI session runs. */
    public static boolean open(View any) {
        Activity a = AiSession.activityOf(any);
        if (a == null || a.isFinishing() || !AutoSession.canShowLive()) {
            return false;
        }
        if (isOpen()) {
            return true;
        }
        XemsUi.init(a);
        Dialog d = new Dialog(a);
        d.requestWindowFeature(Window.FEATURE_NO_TITLE);
        d.setContentView(build(a));
        d.setCancelable(true);
        d.setCanceledOnTouchOutside(true);
        try {
            Window w = d.getWindow();
            w.setBackgroundDrawable(new ColorDrawable(0));
            w.setLayout(XemsUi.dp(a, 760), ViewGroup.LayoutParams.WRAP_CONTENT);
            w.addFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND);
            w.setDimAmount(0.45f);
        } catch (Throwable ignored) {
        }
        d.setOnDismissListener(new Gone());
        dialog = d;
        update();
        d.show();
        H.postDelayed(REFRESH, 700);
        return true;
    }

    static void close() {
        H.removeCallbacks(REFRESH);
        if (dialog != null) {
            try {
                dialog.dismiss();
            } catch (Throwable ignored) {
            }
        }
        dialog = null;
        locked = null;
        stepper = null;
        range = null;
    }

    static final class Gone implements android.content.DialogInterface.OnDismissListener {
        @Override
        public void onDismiss(android.content.DialogInterface di) {
            H.removeCallbacks(REFRESH);
            dialog = null;
        }
    }

    // ---- layout: locked values on the left (a 2 × 2 grid), the width — the only free one — big on the right

    private static View build(Activity a) {
        LinearLayout card = XemsUi.card(a);
        card.setPadding(XemsUi.dp(a, 22), XemsUi.dp(a, 18), XemsUi.dp(a, 22), XemsUi.dp(a, 18));
        LinearLayout head = XemsUi.horizontal(a);
        head.setGravity(Gravity.CENTER_VERTICAL);
        head.addView(XemsUi.text(a, AiText.t("Настройки на импулса", "Impulse settings"), 20, XemsUi.TEXT, true),
                new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        TextView ok = XemsUi.button(a, AiText.t("Готово", "Done"), XemsUi.SECONDARY);
        ok.setOnClickListener(new Close());
        head.addView(ok);
        card.addView(head);

        LinearLayout body = XemsUi.horizontal(a);
        body.setGravity(Gravity.CENTER_VERTICAL);
        card.addView(body, XemsUi.matchWrap(a, 16));

        LinearLayout left = XemsUi.vertical(a);
        String[] names = {"Hz", AiText.t("ON / OFF", "ON / OFF"), AiText.t("Втори импулс", "2nd impulse")};
        locked = new TextView[names.length];
        for (int i = 0; i < names.length; i++) {
            LinearLayout row = XemsUi.horizontal(a);
            row.setGravity(Gravity.CENTER_VERTICAL);
            row.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(a, 14), XemsUi.STROKE, XemsUi.dp(a, 1)));
            row.setPadding(XemsUi.dp(a, 14), XemsUi.dp(a, 10), XemsUi.dp(a, 14), XemsUi.dp(a, 10));
            row.addView(XemsUi.text(a, "🔒 " + names[i], 13.5f, XemsUi.MUTED, false),
                    new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            TextView v = XemsUi.text(a, "—", 18, XemsUi.TEXT, true);
            row.addView(v);
            row.setAlpha(0.8f);
            locked[i] = v;
            left.addView(row, XemsUi.matchWrap(a, i == 0 ? 0 : 8));
        }
        TextView why = XemsUi.text(a, AiText.t("Честота, ON / OFF и втори импулс се определят от програмата / AI и не се променят.",
                "Frequency, ON / OFF and the 2nd impulse are set by the program / AI and cannot be changed."),
                12, XemsUi.HINT, false);
        left.addView(why, XemsUi.matchWrap(a, 10));
        body.addView(left, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));

        LinearLayout right = XemsUi.vertical(a);
        right.setGravity(Gravity.CENTER_HORIZONTAL);
        right.setPadding(XemsUi.dp(a, 22), 0, 0, 0);
        right.addView(XemsUi.text(a, AiText.t("Ширина на импулса", "Pulse width"), 15, XemsUi.ACCENT, true));
        stepper = XemsUi.stepper(a, "—", "µs", 30, new Step());
        right.addView(stepper.view, XemsUi.matchWrap(a, 10));
        range = XemsUi.text(a, "", 12, XemsUi.MUTED, false);
        range.setGravity(Gravity.CENTER);
        right.addView(range, XemsUi.matchWrap(a, 8));
        right.addView(XemsUi.text(a, AiText.t("Важи веднага — без пауза и без запазване.",
                "Takes effect at once — no pause, nothing to save."), 12, XemsUi.HINT, false), XemsUi.matchWrap(a, 6));
        body.addView(right, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        return card;
    }

    static final class Close implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            close();
        }
    }

    static final class Step implements XemsUi.OnStep {
        @Override
        public void onStep(int direction) {
            int[] r = AutoSession.widthRange();
            if (r == null) {
                return;
            }
            int want = Math.max(r[1], Math.min(r[2], r[0] + direction * r[3]));
            AutoSession.setLiveWidth(want);
            update();
        }
    }

    static final class Refresh implements Runnable {
        @Override
        public void run() {
            if (!isOpen()) {
                return;
            }
            if (!AutoSession.canShowLive()) {
                close();
                return;
            }
            update();
            H.postDelayed(this, 700);
        }
    }

    private static void update() {
        if (stepper == null) {
            return;
        }
        int[] r = AutoSession.widthRange();
        int[] p = AutoSession.paramsNow();
        if (r != null) {
            stepper.set(String.valueOf(r[0]), "µs");
            range.setText(r[1] + " – " + r[2] + " µs · " + AiText.t("стъпка ", "step ") + r[3]);
        }
        if (p != null && locked != null) {
            set(locked[0], p[0] + " Hz");
            set(locked[1], p[2] + " / " + p[3] + " s");
            set(locked[2], p[4] > 0 ? p[4] + " Hz · " + p[5] + " %" : AiText.t("изключен", "off"));
        }
    }

    private static void set(TextView t, String s) {
        if (!s.contentEquals(t.getText())) {
            t.setText(s);
        }
    }
}
