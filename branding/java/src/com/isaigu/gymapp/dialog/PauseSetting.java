package com.isaigu.gymapp.dialog;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;

import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsLang;
import com.isaigu.gymapp.widget.XemsUi;

/**
 * "Двоен импулс" in the program parameters dialog, per mode: Основен (under the pulse width), Кардио and
 * Масаж (under their soft rise / fall). A switch, and while it is on the second impulse's frequency and
 * strength (steppers, hold to run). Мускули has none. Values go to the mode's own bean (activePause,
 * pauseHz, pauseStrenthPercent); the training reads the running mode's (TrainProgram.matchProgram).
 * Called from RampSetting.attach (initSetData and onStart — the block is rebuilt on the current program).
 */
public final class PauseSetting {
    static final int[] MODES = {0, 2, 3};
    private static final String TAG = "xems_pause_block";

    private PauseSetting() {}

    public static void attach(View root, TrainProgram program) {
        try {
            if (root == null || program == null) {
                return;
            }
            for (int i = 0; i < MODES.length; i++) {
                attachMode(root, program, MODES[i]);
            }
        } catch (Throwable t) {
            XemsGuard.report("PauseSetting.attach", t);
        }
    }

    private static void attachMode(View root, TrainProgram program, int k) {
        ProgramDataBean b = RampSetting.bean(program, k);
        if (b == null) {
            return;
        }
        // Where: after the ramp row of the mode (1–3), or after the pulse-width row of Основен.
        View anchor;
        ViewGroup col;
        if (k == 0) {
            View w = ParamDialogUi.find(root, "paulseWidth");
            View row = w != null && w.getParent() instanceof View ? (View) w.getParent() : null;
            View line = row != null && row.getParent() instanceof View ? (View) row.getParent() : null;
            if (line == null || !(line.getParent() instanceof ViewGroup)) {
                return;
            }
            anchor = line;
            col = (ViewGroup) line.getParent();
        } else {
            View work = ParamDialogUi.find(root, "worklength" + k);
            View workRow = work != null && work.getParent() instanceof View ? (View) work.getParent() : null;
            if (workRow == null || !(workRow.getParent() instanceof ViewGroup)) {
                return;
            }
            col = (ViewGroup) workRow.getParent();
            View ramp = col.findViewWithTag("xems_ramp_mode_row" + k);
            anchor = ramp != null ? ramp : workRow;
        }
        String tag = TAG + k;
        View old = col.findViewWithTag(tag);
        if (old != null) {
            col.removeView(old);
        }
        Context c = col.getContext();
        XemsUi.init(c);
        LinearLayout block = XemsUi.vertical(c);
        block.setTag(tag);
        int pad = XemsUi.dp(c, 10);
        block.setPadding(pad, XemsUi.dp(c, 8), pad, XemsUi.dp(c, 4));

        LinearLayout sub = XemsUi.vertical(c);
        XemsUi.Stepper hz = XemsUi.stepper(c, "", "", 18, null);
        XemsUi.Stepper st = XemsUi.stepper(c, "", "", 18, null);
        Step hzStep = new Step(b, hz, true);
        Step stStep = new Step(b, st, false);
        XemsUi.repeatOnHold(hz.view.getChildAt(0), hzStep, -1);
        XemsUi.repeatOnHold(hz.view.getChildAt(2), hzStep, +1);
        XemsUi.repeatOnHold(st.view.getChildAt(0), stStep, -1);
        XemsUi.repeatOnHold(st.view.getChildAt(2), stStep, +1);
        hzStep.show();
        stStep.show();
        sub.addView(hz.view, XemsUi.matchWrap(c, 6));
        sub.addView(st.view, XemsUi.matchWrap(c, 8));
        sub.setVisibility(b.activePause ? View.VISIBLE : View.GONE);

        LinearLayout sw = XemsUi.toggleRow(c, XemsLang.tr("Двоен импулс", "Double impulse"),
                XemsLang.tr("Втори импулс в паузата", "A second impulse in the pause"), b.activePause,
                new Toggle(b, sub, stStep));
        block.addView(sw);
        block.addView(sub);
        col.addView(block, col.indexOfChild(anchor) + 1);
    }

    static final class Toggle implements XemsUi.OnToggle {
        private final ProgramDataBean b;
        private final View sub;
        private final Step strength;

        Toggle(ProgramDataBean b, View sub, Step strength) {
            this.b = b;
            this.sub = sub;
            this.strength = strength;
        }

        @Override
        public void onToggle(boolean on) {
            b.activePause = on;
            if (on) {
                if (b.pauseHz <= 0) {
                    b.pauseHz = 7;
                }
                if (b.pauseStrenthPercent <= 0) {
                    b.pauseStrenthPercent = Math.max(10, Math.min(100, b.strenth));
                }
                strength.show();
            }
            sub.setVisibility(on ? View.VISIBLE : View.GONE);
        }
    }

    /** One stepper: the 2nd impulse's Hz (1–10, 1 Hz — the absolute limit, ai/SafeLimits) or strength (0–100 %, 5 %). */
    static final class Step implements XemsUi.OnStep {
        private final ProgramDataBean b;
        private final XemsUi.Stepper s;
        private final boolean hz;

        Step(ProgramDataBean b, XemsUi.Stepper s, boolean hz) {
            this.b = b;
            this.s = s;
            this.hz = hz;
        }

        @Override
        public void onStep(int dir) {
            if (hz) {
                b.pauseHz = Math.max(1, Math.min(com.isaigu.gymapp.ai.SafeLimits.PAUSE_HZ_MAX, (b.pauseHz > 0 ? b.pauseHz : 7) + dir));
            } else {
                int v = Math.round(b.pauseStrenthPercent / 5f) * 5 + dir * 5;
                b.pauseStrenthPercent = Math.max(0, Math.min(100, v));
            }
            show();
        }

        void show() {
            if (hz) {
                s.set((b.pauseHz > 0 ? b.pauseHz : 7) + " Hz", XemsLang.tr("2-ри импулс · честота", "2nd impulse · frequency"));
            } else {
                s.set(b.pauseStrenthPercent + " %", XemsLang.tr("2-ри импулс · сила", "2nd impulse · strength"));
            }
        }
    }
}
