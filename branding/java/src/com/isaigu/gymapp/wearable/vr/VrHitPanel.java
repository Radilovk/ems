package com.isaigu.gymapp.wearable.vr;

import android.app.Activity;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.widget.XemsLang;
import com.isaigu.gymapp.widget.XemsUi;

/**
 * "Удар във VR" (owner, 2026-11-26): how a hit taken in the game is felt — on the XEMS suit (strength, frequency,
 * depth) and on the Mastogo unit (strength, kind, length). Opened from the VR sheet and from the Mastogo panel; saved
 * by itself. A TEST button fires one hit as the game would. No ramp up in VR; the fall is the VR sheet's "Спадане".
 */
public final class VrHitPanel {
    private static XemsUi.Shell shell;
    private static Activity activity;
    private static XemsUi.Stepper sPct, sHz, sDepth, sMLevel, sMMs;

    private VrHitPanel() {}

    private static String tr(String bg, String en) {
        return XemsLang.tr(bg, en);
    }

    public static void open(Activity a) {
        if (a == null) {
            return;
        }
        VrHitSettings.load(a);
        if (shell != null) {
            try {
                shell.dialog.dismiss();
            } catch (Throwable ignored) {
            }
        }
        activity = a;
        XemsUi.Shell s = XemsUi.shell(a, tr("Удар във VR", "A hit in VR"), "", 1040);
        shell = s;
        LinearLayout cols = XemsUi.horizontal(a);
        cols.setBaselineAligned(false);
        cols.setGravity(Gravity.TOP);
        cols.addView(suitColumn(a), new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        LinearLayout.LayoutParams mp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        mp.leftMargin = XemsUi.dp(a, 22);
        cols.addView(mastogoColumn(a), mp);
        s.body.addView(cols, XemsUi.matchWrap(a, 4));
        TextView note = XemsUi.text(a, tr("Качване (ramp up) във VR няма — ударът се усеща веднага. Спадането е в панела „VR“. "
                + "Границите за безопасност важат за всичко тук.", "No ramp up in VR — a hit is felt at once. The fall is in the VR "
                + "sheet. The absolute limits apply to everything here."), 12.5f, XemsUi.HINT, false);
        s.body.addView(note, XemsUi.matchWrap(a, 10));

        TextView test = XemsUi.button(a, tr("ТЕСТ: един удар", "TEST: one hit"), XemsUi.SECONDARY);
        test.setOnClickListener(new Test());
        s.footer.addView(test, new LinearLayout.LayoutParams(XemsUi.dp(a, 240), ViewGroup.LayoutParams.WRAP_CONTENT));
        TextView saved = XemsUi.text(a, tr("✓ Пази се само", "✓ Saved by itself"), 12.5f, XemsUi.HINT, false);
        saved.setGravity(Gravity.CENTER_VERTICAL);
        LinearLayout.LayoutParams sl = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f);
        sl.leftMargin = XemsUi.dp(a, 12);
        s.footer.addView(saved, sl);
        TextView done = XemsUi.button(a, tr("Готово", "Done"), XemsUi.PRIMARY);
        done.setOnClickListener(new Done());
        s.footer.addView(done, new LinearLayout.LayoutParams(XemsUi.dp(a, 200), ViewGroup.LayoutParams.WRAP_CONTENT));
        s.dialog.setOnDismissListener(new Dismiss(s));
        s.dialog.show();
    }

    private static LinearLayout suitColumn(Activity a) {
        LinearLayout col = XemsUi.vertical(a);
        col.addView(XemsUi.label(a, tr("Костюм XEMS", "XEMS suit")));
        col.addView(XemsUi.label(a, tr("Сила на удара", "Hit strength")));
        sPct = XemsUi.stepper(a, "", "", 22, new Adj(Adj.PCT));
        col.addView(sPct.view);
        col.addView(XemsUi.label(a, tr("Честота", "Frequency")), XemsUi.matchWrap(a, 14));
        sHz = XemsUi.stepper(a, "", "", 22, new Adj(Adj.HZ));
        col.addView(sHz.view);
        col.addView(XemsUi.label(a, tr("Дълбочина (ширина на импулса)", "Depth (pulse width)")), XemsUi.matchWrap(a, 14));
        sDepth = XemsUi.stepper(a, "", "", 22, new Adj(Adj.DEPTH));
        col.addView(sDepth.view);
        show();
        return col;
    }

    private static LinearLayout mastogoColumn(Activity a) {
        LinearLayout col = XemsUi.vertical(a);
        col.addView(XemsUi.label(a, "Mastogo"));
        col.addView(XemsUi.label(a, tr("Сила на удара", "Hit strength")));
        sMLevel = XemsUi.stepper(a, "", "", 22, new Adj(Adj.MLEVEL));
        col.addView(sMLevel.view);
        col.addView(XemsUi.label(a, tr("Усещане", "Feel")), XemsUi.matchWrap(a, 14));
        col.addView(XemsUi.segmented(a, new String[] {tr("Удар", "Hit"), tr("Клик", "Click"), tr("Убождане", "Stab")},
                VrHitSettings.mastogoFeel(), new Feel()));
        col.addView(XemsUi.label(a, tr("Дължина", "Length")), XemsUi.matchWrap(a, 14));
        sMMs = XemsUi.stepper(a, "", "", 22, new Adj(Adj.MMS));
        col.addView(sMMs.view);
        show();
        return col;
    }

    /** The steppers' texts, in place (a hold repeats on the very view). */
    static void show() {
        if (sPct != null) {
            sPct.set(VrHitSettings.pct() + "%", tr("от силата на треньора", "of the trainer's strength"));
        }
        if (sHz != null) {
            int h = VrHitSettings.hz();
            sHz.set(h == 0 ? tr("както в реда", "as the row") : h + " Hz", tr("само докато трае ударът", "only while the hit lasts"));
        }
        if (sDepth != null) {
            int d = VrHitSettings.depth();
            sDepth.set(d == 0 ? tr("както в реда", "as the row") : d + " µs", tr("50–400, на стъпки по 50", "50–400, steps of 50"));
        }
        if (sMLevel != null) {
            sMLevel.set(String.valueOf(VrHitSettings.mastogoLevel()), tr("от 25 (най-силно)", "of 25 (strongest)"));
        }
        if (sMMs != null) {
            sMMs.set(VrHitSettings.mastogoMs() + " ms", "");
        }
    }

    static final class Adj implements XemsUi.OnStep {
        static final int PCT = 0, HZ = 1, DEPTH = 2, MLEVEL = 3, MMS = 4;
        private final int what;

        Adj(int what) {
            this.what = what;
        }

        @Override
        public void onStep(int dir) {
            Activity a = activity;
            switch (what) {
                case PCT:
                    VrHitSettings.setPct(a, VrHitSettings.pct() + 5 * dir);
                    break;
                case HZ:
                    VrHitSettings.setHz(a, VrHitSettings.nextHz(VrHitSettings.hz(), dir));
                    break;
                case DEPTH:
                    VrHitSettings.setDepth(a, VrHitSettings.depth() == 0 && dir > 0 ? 50 : VrHitSettings.depth() + 50 * dir);
                    break;
                case MLEVEL:
                    VrHitSettings.setMastogoLevel(a, VrHitSettings.mastogoLevel() + dir);
                    break;
                default:
                    int ms = VrHitSettings.mastogoMs();
                    VrHitSettings.setMastogoMs(a, ms + dir * (ms < 100 || ms == 100 && dir < 0 ? 10 : 50));
            }
            show();
        }
    }

    static final class Feel implements XemsUi.OnIndex {
        @Override
        public void onIndex(int index) {
            VrHitSettings.setMastogoFeel(activity, index);
        }
    }

    static final class Test implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            VrZoneRouter.test();
        }
    }

    static final class Done implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            XemsUi.Shell s = shell;
            if (s != null) {
                try {
                    s.dialog.dismiss();
                } catch (Throwable ignored) {
                }
            }
        }
    }

    static final class Dismiss implements android.content.DialogInterface.OnDismissListener {
        private final XemsUi.Shell s;

        Dismiss(XemsUi.Shell s) {
            this.s = s;
        }

        @Override
        public void onDismiss(android.content.DialogInterface d) {
            if (shell == s) {
                shell = null;
                sPct = null;
                sHz = null;
                sDepth = null;
                sMLevel = null;
                sMMs = null;
            }
        }
    }
}
