package com.isaigu.gymapp.ai;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.widget.XemsUi;

/**
 * Teaching the tablet "тренер" (owner, 1.1.541): 3 recordings of the wake word, then "тренировка" once — the
 * look-alike it must never wake on. ~30 s, once per tablet (the trainer's own voice). The spotter reads the
 * microphone while this is open (WakeListener.setup); a recording is taken after a short pause, like a word said
 * to someone.
 */
public final class WakeSetup {
    private WakeSetup() {}

    /** The spotter's events while recording (main thread). */
    public interface Sink {
        void event(int ev);
    }

    static final int STEPS = 4;
    private static Dialog dialog;
    private static TextView head;
    private static TextView sub;
    private static LinearLayout dots;
    private static int step;
    private static Activity host;

    public static void open(Activity a) {
        if (a == null) {
            return;
        }
        host = a;
        XemsUi.init(a);
        if (!WakeListener.permitted(a, true)) {
            android.widget.Toast.makeText(a, AiText.t("Разреши микрофона и натисни пак.", "Allow the microphone and tap again."),
                    android.widget.Toast.LENGTH_LONG).show();
            return;
        }
        Dialog d = new Dialog(a);
        d.requestWindowFeature(Window.FEATURE_NO_TITLE);
        LinearLayout box = XemsUi.vertical(a);
        box.setPadding(XemsUi.dp(a, 28), XemsUi.dp(a, 24), XemsUi.dp(a, 28), XemsUi.dp(a, 18));
        box.addView(XemsUi.text(a, "🎙  " + AiText.t("Научи таблета на „Тренер“", "Teach the tablet “Trainer”"), 20,
                XemsUi.TEXT, true));
        box.addView(XemsUi.text(a, AiText.t("Говори както ще говориш в залата: с нормален глас, от мястото, където стоиш.",
                "Speak as you will in the studio: a normal voice, from where you stand."), 13, XemsUi.MUTED, false),
                XemsUi.matchWrap(a, 4));
        dots = XemsUi.horizontal(a);
        box.addView(dots, XemsUi.matchWrap(a, 16));
        head = XemsUi.text(a, "", 30, XemsUi.GO_TEXT, true);
        head.setGravity(Gravity.CENTER);
        box.addView(head, XemsUi.matchWrap(a, 14));
        sub = XemsUi.text(a, "", 14, XemsUi.MUTED, false);
        sub.setGravity(Gravity.CENTER);
        box.addView(sub, XemsUi.matchWrap(a, 6));
        LinearLayout btns = XemsUi.horizontal(a);
        TextView again = XemsUi.button(a, AiText.t("Отначало", "Start over"), XemsUi.GHOST);
        again.setOnClickListener(new Again());
        btns.addView(again, new LinearLayout.LayoutParams(0, XemsUi.dp(a, 52), 1f));
        TextView close = XemsUi.button(a, AiText.t("Затвори", "Close"), XemsUi.SECONDARY);
        close.setOnClickListener(new Close());
        LinearLayout.LayoutParams cp = new LinearLayout.LayoutParams(0, XemsUi.dp(a, 52), 1f);
        cp.leftMargin = XemsUi.dp(a, 10);
        btns.addView(close, cp);
        box.addView(btns, XemsUi.matchWrap(a, 20));
        d.setContentView(box);
        try {
            d.getWindow().setBackgroundDrawable(new ColorDrawable(XemsUi.BG));
            d.getWindow().setLayout(XemsUi.dp(a, 560), ViewGroup.LayoutParams.WRAP_CONTENT);
        } catch (Throwable ignored) {
        }
        d.setOnDismissListener(new Dismissed());
        dialog = d;
        d.show();
        WakeListener.beginSetup(a, new Events());
        begin();
    }

    static void begin() {
        WakeListener.SPOTTER.clear();
        step = 0;
        ask();
    }

    private static void ask() {
        if (step < 3) {
            WakeListener.SPOTTER.record();
            head.setText(AiText.t("Кажи „Тренер“", "Say “Тренер”"));
            sub.setText(AiText.t("Пауза, после думата сама — " + (step + 1) + " от 3",
                    "A pause, then the word alone — " + (step + 1) + " of 3"));
        } else if (step == 3) {
            WakeListener.SPOTTER.recordContrast();
            head.setText(AiText.t("Сега кажи „Тренировка“", "Now say “Тренировка”"));
            sub.setText(AiText.t("Друга дума — за да не я бърка с „Тренер“", "Another word — so it never takes it for “Тренер”"));
        } else {
            WakeListener.saveExamples(host);
            int spread = WakeListener.SPOTTER.spreadOfExamples();
            boolean wide = spread > WakeListener.SPOTTER.threshold();
            head.setText(wide ? AiText.t("Записите се различават", "The recordings differ") : "✓  " + AiText.t("Готово", "Done"));
            sub.setText(wide ? AiText.t("Кажи думата по-еднакво — „Отначало“.", "Say the word more alike — “Start over”.")
                    : AiText.t("Казвай „Тренер, …“ — напр. „Тренер, увеличи краката“, „Тренер, пауза“.",
                    "Say “Trainer, …” — e.g. “Trainer, raise the legs”, “Trainer, pause”."));
        }
        dots.removeAllViews();
        for (int i = 0; i < STEPS; i++) {
            View v = new View(host);
            v.setBackgroundDrawable(XemsUi.rounded(i < step ? XemsUi.GO : XemsUi.SURFACE, XemsUi.dp(host, 6),
                    i == step ? XemsUi.GO : XemsUi.STROKE, XemsUi.dp(host, 1)));
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, XemsUi.dp(host, 10), 1f);
            lp.rightMargin = XemsUi.dp(host, 6);
            dots.addView(v, lp);
        }
    }

    static final class Events implements Sink {
        @Override
        public void event(int ev) {
            if (dialog == null || step >= STEPS) {
                return;
            }
            if (ev == WakeWord.RECORDED) {
                step++;
                WakeListener.tone(android.media.ToneGenerator.TONE_PROP_ACK);
                ask();
            } else if (ev == WakeWord.SKIPPED) {
                sub.setText(AiText.t("Не те чух ясно — кажи пак, след кратка пауза, малко по-силно.",
                        "Did not hear it clearly — say it again after a short pause, a little louder."));
                if (step < 3) {
                    WakeListener.SPOTTER.record();
                } else {
                    WakeListener.SPOTTER.recordContrast();
                }
            }
        }
    }

    static final class Again implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            begin();
        }
    }

    static final class Close implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            if (dialog != null) {
                dialog.dismiss();
            }
        }
    }

    static final class Dismissed implements android.content.DialogInterface.OnDismissListener {
        @Override
        public void onDismiss(android.content.DialogInterface d) {
            dialog = null;
            if (step < STEPS) {
                WakeListener.reloadExamples(host);           // not finished: the earlier examples stay as they were
            }
            WakeListener.endSetup(host);
            AiTrain.voiceState();
        }
    }
}
