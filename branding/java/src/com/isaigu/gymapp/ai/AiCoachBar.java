package com.isaigu.gymapp.ai;

import android.content.Context;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.widget.XemsUi;

import java.util.List;

/**
 * The AI during the session (owner, 1.1.543 — docs/xems-ai-coach.md): one thin line above the dock, the training
 * screen stays the main thing. Left: 🎙 the hands-free voice (tap = on / off, amber while it listens). Middle: the
 * last exchange ("Ти: по-силно краката → ✓ крака 46 %"), else the "during" advice. Right: ✦ Чат opens the side chat.
 */
public final class AiCoachBar {
    private AiCoachBar() {}

    static final int H_DP = 50;
    private static LinearLayout bar;

    /** AutoBoard: the line under the run board. */
    static View build(Context c) {
        XemsUi.init(c);
        LinearLayout b = XemsUi.horizontal(c);
        b.setGravity(Gravity.CENTER_VERTICAL);
        b.setPadding(XemsUi.dp(c, 6), XemsUi.dp(c, 4), XemsUi.dp(c, 6), XemsUi.dp(c, 2));
        bar = b;
        fill(c, b);
        return b;
    }

    /** The voice state, an answer or a command changed: the line again, in place. */
    static void refresh() {
        LinearLayout b = bar;
        if (b == null) {
            return;
        }
        b.removeAllViews();
        fill(b.getContext(), b);
    }

    /** The chat's length at ▶ Старт: the bar shows only what was said during the session. */
    static int runTurns = -1;

    static void started() {
        runTurns = AiCoach.chat().size();
    }

    static void forget() {
        bar = null;
    }

    private static void fill(Context c, LinearLayout b) {
        LinearLayout pill = XemsUi.horizontal(c);
        pill.setGravity(Gravity.CENTER_VERTICAL);
        pill.setBackgroundDrawable(XemsUi.rounded(XemsUi.alpha(XemsUi.ACCENT, 0x14), XemsUi.dp(c, 22),
                XemsUi.alpha(XemsUi.ACCENT, 0x55), XemsUi.dp(c, 1)));
        pill.setPadding(XemsUi.dp(c, 6), 0, XemsUi.dp(c, 6), 0);

        boolean on = WakeListener.isOn();
        String st = WakeListener.state();
        boolean speaking = "speaking".equals(st);
        boolean hearing = st.length() > 0 && !speaking;
        TextView mic = XemsUi.chip(c, !on ? "🎙  " + AiText.t("изкл.", "off")
                : speaking ? "🔊  " + AiText.t("Говоря…", "Speaking…")
                : hearing ? "🎙  " + AiText.t("Слушам…", "Listening…")
                : "🎙  " + AiText.t("„Тренер, …“", "“Trainer, …”"), on, hearing || speaking ? XemsUi.AMBER : XemsUi.GO);
        mic.setOnClickListener(new Mic());
        pill.addView(mic, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, XemsUi.dp(c, 38)));

        TextView line = XemsUi.text(c, now(), 14, XemsUi.TEXT, false);
        line.setMaxLines(1);
        line.setEllipsize(TextUtils.TruncateAt.END);
        line.setGravity(Gravity.CENTER_VERTICAL);
        line.setOnClickListener(new Chat());
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f);
        lp.leftMargin = XemsUi.dp(c, 12);
        lp.rightMargin = XemsUi.dp(c, 10);
        pill.addView(line, lp);

        TextView chat = XemsUi.button(c, "✦  " + AiText.t("Чат", "Chat"), XemsUi.ACCENT_BTN);
        chat.setOnClickListener(new Chat());
        pill.addView(chat, new LinearLayout.LayoutParams(XemsUi.dp(c, 112), XemsUi.dp(c, 38)));

        b.addView(pill, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT));
    }

    /** What the line says now: AI thinking, its last word during the session, else how to talk to it. */
    static String now() {
        if (AiTrain.busy) {
            return "✦ " + AiText.t("мисля…", "thinking…");
        }
        // the AI's last word (a change done reads "✓ крака 46 %"); the trainer's own words are in the chat
        List<AiCoach.Turn> turns = AiCoach.chat();
        if (!turns.isEmpty() && turns.get(turns.size() - 1).ai && AutoSession.getStage() == AutoSession.Stage.RUNNING
                && runTurns >= 0 && turns.size() > runTurns) {
            String t = turns.get(turns.size() - 1).text;
            return t.startsWith("✓") ? t : "✦ " + t;
        }
        // nothing from the preparation here (owner, 1.1.545): only what controls the session now
        return WakeListener.isOn()
                ? AiText.t("Кажи „Тренер, по-силно краката“, „Тренер, пауза“… или ✦ Чат.",
                "Say “Trainer, raise the legs”, “Trainer, pause”… or ✦ Chat.")
                : AiText.t("✦ Чат — пиши или говори на AI, промените са веднага.",
                "✦ Chat — write or talk to the AI, changes apply at once.");
    }

    static final class Mic implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            if (WakeListener.isOn()) {
                WakeListener.stop();
            } else {
                WakeListener.start(AiTrain.activity(v));
            }
            refresh();
        }
    }

    static final class Chat implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            AiChatDrawer.open(AiTrain.activity(v));
        }
    }
}
