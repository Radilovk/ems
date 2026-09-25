package com.isaigu.gymapp.dialog;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsLang;
import com.isaigu.gymapp.widget.XemsUi;

import java.util.Locale;

/**
 * Soft rise / fall of the impulses in the program parameters dialog (per user and from the
 * master settings — both use EditUserProgramDataDialog). The stock ramp column was hidden by
 * scripts/remove-ramp.py; this shows it again in seconds: 0 … 3 s in 0.5 s steps.
 * Values are stored in ms in ProgramDataBean.inputRamp / outputRamp and sent to the device by
 * AiRamp (capped so both together fit into the impulse ON time).
 */
public final class RampSetting {
    private static final int STEP_MS = 500;
    private static final int MAX_MS = 3000;

    private RampSetting() {}

    /** Hook: end of EditUserProgramDataDialog.initSetData(). */
    public static void attach(TextView in, TextView out, TrainProgram program) {
        try {
            if (in == null || out == null || program == null || program.programDataBean == null) {
                return;
            }
            showColumn(in);
            bind(in, program, true);
            bind(out, program, false);
        } catch (Throwable t) {
            XemsGuard.report("RampSetting.attach", t);
        }
    }

    private static void showColumn(TextView value) {
        View row = (View) value.getParent();
        if (row != null && row.getParent() instanceof View) {
            ((View) row.getParent()).setVisibility(View.VISIBLE);
        }
    }

    private static void bind(TextView value, TrainProgram program, boolean up) {
        ProgramDataBean b = program.programDataBean;
        int ms = clamp(up ? b.inputRamp : b.outputRamp);
        if (up) {
            b.inputRamp = ms;
        } else {
            b.outputRamp = ms;
        }
        value.setText(fmt(ms));
        value.setMinWidth(XemsUi.dp(value.getContext(), 64));
        // The "ms" unit next to the field: the value now carries its own unit.
        if (value.getParent() instanceof ViewGroup) {
            ViewGroup row = (ViewGroup) value.getParent();
            int i = row.indexOfChild(value);
            if (i >= 0 && i + 1 < row.getChildCount() && row.getChildAt(i + 1) instanceof TextView) {
                row.getChildAt(i + 1).setVisibility(View.GONE);
            }
        }
        value.setOnClickListener(new Open(value, program, up));
    }

    static int clamp(int ms) {
        int v = Math.max(0, Math.min(MAX_MS, ms));
        return Math.round(v / (float) STEP_MS) * STEP_MS;
    }

    static String fmt(int ms) {
        return String.format(Locale.US, "%.1f", ms / 1000f) + XemsLang.tr(" с", " s");
    }

    private static Activity activity(Context c) {
        while (c instanceof ContextWrapper) {
            if (c instanceof Activity) {
                return (Activity) c;
            }
            c = ((ContextWrapper) c).getBaseContext();
        }
        return null;
    }

    /** 7 choices in a small sheet: 0 … 3 s. */
    static final class Open implements View.OnClickListener {
        private final TextView value;
        private final TrainProgram program;
        private final boolean up;

        Open(TextView value, TrainProgram program, boolean up) {
            this.value = value;
            this.program = program;
            this.up = up;
        }

        @Override
        public void onClick(View v) {
            try {
                Activity a = activity(v.getContext());
                if (a == null) {
                    return;
                }
                XemsUi.init(a);
                final XemsUi.Shell s = XemsUi.shell(a,
                        up ? XemsLang.tr("Плавно нарастване", "Soft rise")
                                : XemsLang.tr("Плавен спад", "Soft fall"),
                        XemsLang.tr("И двата импулса при двоен импулс", "Both impulses with a double impulse"),
                        520);
                ProgramDataBean b = program.programDataBean;
                int cur = clamp(up ? b.inputRamp : b.outputRamp);
                LinearLayout grid = XemsUi.vertical(a);
                LinearLayout row = null;
                for (int i = 0; i <= MAX_MS / STEP_MS; i++) {
                    if (i % 7 == 0) {
                        row = XemsUi.horizontal(a);
                        grid.addView(row, XemsUi.matchWrap(a, i == 0 ? 0 : 8));
                    }
                    int ms = i * STEP_MS;
                    TextView chip = XemsUi.chip(a, String.format(Locale.US, "%.1f", ms / 1000f), ms == cur,
                            XemsUi.GO_TEXT);
                    chip.setGravity(android.view.Gravity.CENTER);
                    chip.setOnClickListener(new Pick(s, value, program, up, ms));
                    LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0,
                            ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
                    if (i % 7 != 0) {
                        lp.leftMargin = XemsUi.dp(a, 8);
                    }
                    row.addView(chip, lp);
                }
                s.body.addView(grid);
                s.dialog.show();
            } catch (Throwable t) {
                XemsGuard.report("RampSetting.open", t);
            }
        }
    }

    static final class Pick implements View.OnClickListener {
        private final XemsUi.Shell sheet;
        private final TextView value;
        private final TrainProgram program;
        private final boolean up;
        private final int ms;

        Pick(XemsUi.Shell sheet, TextView value, TrainProgram program, boolean up, int ms) {
            this.sheet = sheet;
            this.value = value;
            this.program = program;
            this.up = up;
            this.ms = ms;
        }

        @Override
        public void onClick(View v) {
            ProgramDataBean b = program.programDataBean;
            if (b != null) {
                if (up) {
                    b.inputRamp = ms;
                } else {
                    b.outputRamp = ms;
                }
            }
            value.setText(fmt(ms));
            XemsUi.haptic(v);
            try {
                sheet.dialog.dismiss();
            } catch (Throwable ignored) {
            }
        }
    }
}
