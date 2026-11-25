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
        if (!WakeListener.permitted(a, false)) {
            // asked before and refused for good: the system shows no dialog any more — its settings page does it
            boolean refused = android.os.Build.VERSION.SDK_INT >= 23 && asked
                    && !a.shouldShowRequestPermissionRationale(android.Manifest.permission.RECORD_AUDIO);
            com.isaigu.gymapp.wearable.WearableBleDiagLog.log("wake", "setup: no microphone permission, refused=" + refused);
            if (refused) {
                android.widget.Toast.makeText(a, AiText.t("Разреши „Микрофон“ в настройките на XEMS и се върни.",
                        "Allow “Microphone” in XEMS's settings and come back."), android.widget.Toast.LENGTH_LONG).show();
                try {
                    android.content.Intent i = new android.content.Intent(android.provider.Settings.ACTION_APPLICATION_DETAILS_SETTINGS,
                            android.net.Uri.fromParts("package", a.getPackageName(), null));
                    a.startActivity(i);
                } catch (Throwable t) {
                    com.isaigu.gymapp.wearable.WearableBleDiagLog.log("wake", "settings: " + t);
                }
                return;
            }
            asked = true;
            WakeListener.permitted(a, true);              // the system's "allow" dialog
            waitFor(a, 0);                                // and the recording opens by itself once it is allowed
            return;
        }
        Dialog d = new Dialog(a);
        d.requestWindowFeature(Window.FEATURE_NO_TITLE);
        LinearLayout box = XemsUi.vertical(a);
        box.setPadding(XemsUi.dp(a, 28), XemsUi.dp(a, 24), XemsUi.dp(a, 28), XemsUi.dp(a, 18));
        box.addView(XemsUi.text(a, "🎙  " + AiText.t("Научи таблета на „Окей тренер“", "Teach the tablet “Okay trainer”"), 20,
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
        // what the microphone hears, live: the trainer sees at once whether the tablet hears them at all
        LinearLayout meter = XemsUi.horizontal(a);
        meter.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(a, 5), XemsUi.STROKE, XemsUi.dp(a, 1)));
        bar = new View(a);
        bar.setBackgroundDrawable(XemsUi.rounded(XemsUi.GO, XemsUi.dp(a, 5), XemsUi.GO, 0));
        meter.addView(bar, new LinearLayout.LayoutParams(0, XemsUi.dp(a, 10), 0f));
        meterRest = new View(a);
        meter.addView(meterRest, new LinearLayout.LayoutParams(0, XemsUi.dp(a, 10), 1f));
        box.addView(meter, XemsUi.matchWrap(a, 14));
        micNote = XemsUi.text(a, "", 13, XemsUi.AMBER, true);
        micNote.setGravity(Gravity.CENTER);
        micNote.setVisibility(View.GONE);
        box.addView(micNote, XemsUi.matchWrap(a, 6));
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
        MAIN.removeCallbacks(METER);
        MAIN.postDelayed(METER, 100);
    }

    private static View bar, meterRest;
    private static TextView micNote;
    private static final Runnable METER = new Meter();

    /** The level bar and, when the microphone gives only silence, what to do (Huawei: Celia holds the mic). */
    static final class Meter implements Runnable {
        @Override
        public void run() {
            if (dialog == null || bar == null) {
                return;
            }
            float lv = Math.max(0.02f, WakeListener.level / 100f);
            LinearLayout.LayoutParams lp = (LinearLayout.LayoutParams) bar.getLayoutParams();
            LinearLayout.LayoutParams rp = (LinearLayout.LayoutParams) meterRest.getLayoutParams();
            if (Math.abs(lp.weight - lv) > 0.01f) {
                lp.weight = lv;
                rp.weight = 1f - lv;
                bar.setLayoutParams(lp);
                meterRest.setLayoutParams(rp);
            }
            boolean deaf = WakeListener.silent;
            if (deaf && micNote.getVisibility() != View.VISIBLE) {
                micNote.setText(AiText.t("Таблетът не получава звук от микрофона. Изключи гласовия асистент "
                                + "(при Huawei: „Celia“ / „Здравей, Celia“) и приложенията, които слушат, после „Отначало“.",
                        "The tablet gets no sound from the microphone. Turn off the voice assistant "
                                + "(Huawei: “Celia”) and apps that listen, then “Start over”."));
                micNote.setVisibility(View.VISIBLE);
            } else if (!deaf && micNote.getVisibility() == View.VISIBLE) {
                micNote.setVisibility(View.GONE);
            }
            MAIN.postDelayed(this, 100);
        }
    }

    private static boolean asked;
    private static final android.os.Handler MAIN = new android.os.Handler(android.os.Looper.getMainLooper());

    /** After the "allow" dialog: the recording opens by itself (checked every second, 40 s). */
    static void waitFor(Activity a, int n) {
        MAIN.postDelayed(new Wait(a, n), 1000);
    }

    static final class Wait implements Runnable {
        final Activity a;
        final int n;

        Wait(Activity a, int n) {
            this.a = a;
            this.n = n;
        }

        @Override
        public void run() {
            if (a.isFinishing()) {
                return;
            }
            if (WakeListener.permitted(a, false)) {
                open(a);
            } else if (n < 40) {
                waitFor(a, n + 1);
            }
        }
    }

    static void begin() {
        WakeListener.SPOTTER.clear();
        step = 0;
        ask();
    }

    private static void ask() {
        if (step < 3) {
            WakeListener.SPOTTER.record();
            head.setText(AiText.t("Кажи „Окей тренер“", "Say “Окей тренер”"));
            sub.setText(AiText.t("Пауза, после фразата сама — " + (step + 1) + " от 3",
                    "A pause, then the phrase alone — " + (step + 1) + " of 3"));
        } else if (step == 3) {
            WakeListener.SPOTTER.recordContrast();
            head.setText(AiText.t("Сега кажи „Окей тренировка“", "Now say “Окей тренировка”"));
            sub.setText(AiText.t("Друга дума — за да не я бърка с „Окей тренер“", "Another word — so it never takes it for “Окей тренер”"));
        } else {
            int spread = WakeListener.SPOTTER.spreadOfExamples();
            boolean wide = spread > WakeWord.WIDE_SPREAD;     // not one phrase (a cough, a noise, another word): not kept
            if (wide) {
                WakeListener.reloadExamples(host);            // the earlier recordings, if any, stay
            } else {
                WakeListener.saveExamples(host);
            }
            head.setText(wide ? AiText.t("Записите се различават", "The recordings differ") : "✓  " + AiText.t("Готово", "Done"));
            sub.setText(wide ? AiText.t("Кажи фразата по-еднакво — „Отначало“.", "Say the phrase more alike — “Start over”.")
                    : AiText.t("Казвай „Окей тренер, …“ — напр. „Окей тренер, увеличи краката“, „Окей тренер, пауза“.",
                    "Say “Okay trainer, …” — e.g. “Okay trainer, raise the legs”, “Okay trainer, pause”."));
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
            MAIN.removeCallbacks(METER);
            bar = null;
            if (step < STEPS) {
                WakeListener.reloadExamples(host);           // not finished: the earlier examples stay as they were
            }
            WakeListener.endSetup(host);
            AiTrain.voiceState();
        }
    }
}
