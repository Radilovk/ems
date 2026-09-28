package com.isaigu.gymapp.dialog;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsLang;
import com.isaigu.gymapp.widget.XemsUi;

/**
 * Example settings for the manual mode in the program parameters dialog: one tap fills all four
 * programs (Основен, Мускули, Кардио, Масаж) with a light / standard / intense set; "i" shows the
 * values. Only frequency, pulse width, impulse / pause, work time and the soft rise / fall change —
 * strength and zones stay the trainer's. Save in the dialog keeps them, as with a manual edit.
 */
public final class ManualPresets {
    private static final String TAG = "xems_manual_presets";

    /** {hz, µs, on s, off s, work min, ramp ms} per program: main, muscle, cardio, massage. */
    static final int[][][] SETS = {
            {   // light
                    {80, 300, 4, 6, 20, 500}, {85, 300, 4, 6, 20, 500}, {7, 300, 10, 1, 20, 0}, {3, 250, 10, 2, 20, 0}},
            {   // standard
                    {85, 350, 4, 4, 20, 500}, {90, 350, 6, 4, 20, 500}, {30, 350, 8, 2, 20, 500}, {5, 300, 10, 2, 20, 0}},
            {   // intense
                    {85, 350, 6, 4, 20, 500}, {100, 400, 6, 4, 20, 500}, {50, 350, 8, 2, 20, 500}, {8, 300, 10, 2, 25, 0}},
    };

    private ManualPresets() {}

    /** Hook: end of EditUserProgramDataDialog.initSetData() (the dialog itself). */
    public static void attach(Object dialog) {
        try {
            TrainProgram program = (TrainProgram) field(dialog, "trainProgram");
            if (program == null) {
                return;
            }
            for (String name : new String[] {"usericonLayout", "usericonLayout2"}) {
                Object v = field(dialog, name);
                if (v instanceof LinearLayout && ((View) v).findViewWithTag(TAG) == null) {
                    ((LinearLayout) v).addView(panel((LinearLayout) v, dialog));
                }
            }
        } catch (Throwable t) {
            XemsGuard.report("ManualPresets.attach", t);
        }
    }

    private static View panel(LinearLayout host, Object dialog) {
        Context c = host.getContext();
        LinearLayout box = XemsUi.vertical(c);
        box.setTag(TAG);
        box.setPadding(0, XemsUi.dp(c, 24), 0, 0);
        LinearLayout head = XemsUi.horizontal(c);
        head.setGravity(android.view.Gravity.CENTER_VERTICAL);
        head.addView(XemsUi.text(c, tr("Примерни настройки", "Example settings"), 15, XemsUi.TEXT, true),
                new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        TextView info = XemsUi.iconButton(c, "i", XemsUi.SURFACE, XemsUi.MUTED, 30);
        info.setOnClickListener(new Info());
        head.addView(info);
        box.addView(head);
        String[] names = {tr("Лек", "Light"), tr("Стандарт", "Standard"), tr("Интензивен", "Intense")};
        for (int i = 0; i < names.length; i++) {
            TextView b = XemsUi.button(c, names[i], i == 1 ? XemsUi.PRIMARY : XemsUi.SECONDARY);
            b.setOnClickListener(new Pick(dialog, i));
            box.addView(b, XemsUi.matchWrap(c, 10));
        }
        return box;
    }

    /** Fills the four programs, then lets the dialog show the new values. */
    static final class Pick implements View.OnClickListener {
        final Object dialog;
        final int level;

        Pick(Object dialog, int level) {
            this.dialog = dialog;
            this.level = level;
        }

        @Override
        public void onClick(View v) {
            try {
                TrainProgram p = (TrainProgram) field(dialog, "trainProgram");
                if (p == null) {
                    return;
                }
                ProgramDataBean[] beans = {p.programDataBean, p.muscleTrainingProgramDataBean,
                        p.aerobicTrainingProgramDataBean, p.massageModeProgramDataBean};
                for (int i = 0; i < beans.length; i++) {
                    apply(beans[i], SETS[level][i]);
                }
                java.lang.reflect.Method m = dialog.getClass().getDeclaredMethod("initSetData");
                m.setAccessible(true);
                m.invoke(dialog);
                XemsUi.haptic(v);
                android.widget.Toast.makeText(v.getContext(),
                        tr("Попълнено за четирите програми — натисни „Запази“.",
                                "Filled for all four programs — tap Save."),
                        android.widget.Toast.LENGTH_SHORT).show();
            } catch (Throwable t) {
                XemsGuard.report("ManualPresets.pick", t);
            }
        }
    }

    static void apply(ProgramDataBean b, int[] s) {
        if (b == null) {
            return;
        }
        b.hz = s[0];
        b.pulseWidth = s[1];
        b.pulseContinue = s[2];
        b.pulsePause = s[3];
        b.workLength = s[4] * 60;
        b.inputRamp = s[5];
        b.outputRamp = s[5];
    }

    static final class Info implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            Context c = v.getContext();
            while (!(c instanceof Activity) && c instanceof android.content.ContextWrapper) {
                c = ((android.content.ContextWrapper) c).getBaseContext();
            }
            if (!(c instanceof Activity)) {
                return;
            }
            String[] prog = {tr("Основен", "Main"), tr("Мускули", "Muscles"), tr("Кардио", "Cardio"), tr("Масаж", "Massage")};
            String[] lvl = {tr("Лек", "Light"), tr("Стандарт", "Standard"), tr("Интензивен", "Intense")};
            StringBuilder b = new StringBuilder(tr(
                    "Един бутон попълва четирите програми. Силата и зоните остават твои.\n",
                    "One tap fills all four programs. Strength and zones stay yours.\n"));
            for (int l = 0; l < SETS.length; l++) {
                b.append('\n').append(lvl[l].toUpperCase()).append('\n');
                for (int i = 0; i < prog.length; i++) {
                    int[] s = SETS[l][i];
                    b.append(prog[i]).append(": ").append(s[0]).append(" Hz · ").append(s[1]).append(" µs · ")
                            .append(s[2]).append('/').append(s[3]).append(tr(" с · ", " s · ")).append(s[4])
                            .append(tr(" мин", " min")).append('\n');
                }
            }
            b.append(tr("\nHz — импулси в секунда: ниски отпускат и дренират, високи дават сила. µs — дължина на импулса: по-дълъг достига по-дълбоко. „4/4 с“ — секунди импулс / пауза.",
                    "\nHz — impulses per second: low relax and drain, high build strength. µs — impulse length: longer reaches deeper. “4/4 s” — seconds of impulse / pause."));
            ModalInfoHelper.show((Activity) c, tr("Примерни настройки", "Example settings"), b.toString());
        }
    }

    static Object field(Object o, String name) throws Exception {
        java.lang.reflect.Field f = o.getClass().getDeclaredField(name);
        f.setAccessible(true);
        return f.get(o);
    }

    static String tr(String bg, String en) {
        return XemsLang.tr(bg, en);
    }
}
