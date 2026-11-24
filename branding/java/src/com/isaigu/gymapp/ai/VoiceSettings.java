package com.isaigu.gymapp.ai;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.widget.XemsLicense;
import com.isaigu.gymapp.widget.XemsUi;

/**
 * Settings → "Гласово управление" (owner, 1.1.543): teaching the tablet "тренер" is done once per tablet, so it lives
 * here, not in the AI training's preparation. One card: the state (taught / not yet) and one button.
 */
public final class VoiceSettings {
    private VoiceSettings() {}

    static final String TAG = "xems_voice_settings";

    public static void attach(Activity a, View root) {
        try {
            build(a, root);
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("VoiceSettings.attach", t);
        }
    }

    private static void build(Activity a, View root) {
        if (a == null || !(root instanceof ViewGroup) || !XemsLicense.has(XemsLicense.AI)) {
            return;
        }
        ViewGroup parent = XemsUi.scrollContent(a, root);
        if (parent == null) {
            return;
        }
        View old = parent.findViewWithTag(TAG);
        if (old != null && old.getParent() instanceof ViewGroup) {
            ((ViewGroup) old.getParent()).removeView(old);
        }
        XemsUi.init(a);
        LinearLayout card = card(a);
        card.setTag(TAG);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.topMargin = XemsUi.dp(a, 28);
        parent.addView(card, lp);
    }

    /** The card itself (also the off-device shots). */
    static LinearLayout card(Activity a) {
        LinearLayout card = XemsUi.card(a);
        boolean taught = WakeListener.enrolled(a);
        card.addView(XemsUi.text(a, "🎙  " + AiText.t("Гласово управление", "Voice control"), 18, XemsUi.TEXT, true));
        card.addView(XemsUi.text(a, AiText.t("В AI тренировка таблетът слуша за „Тренер, …“ — „Тренер, по-силно краката“, "
                        + "„Тренер, пауза“, „Тренер, стоп“. Думата „тренировка“ не го буди.",
                "In an AI training the tablet listens for “Тренер, …” — “raise the legs”, “pause”, “stop”. "
                        + "The word “тренировка” never wakes it."), 13, XemsUi.MUTED, false), XemsUi.matchWrap(a, 4));
        LinearLayout row = XemsUi.horizontal(a);
        row.setGravity(android.view.Gravity.CENTER_VERTICAL);
        TextView st = XemsUi.text(a, taught ? "✓  " + AiText.t("Научен на твоя глас", "Taught your voice")
                : AiText.t("Още не е научен — работи и така, по-точно е с твоя глас.",
                "Not taught yet — it works anyway, more exact with your voice."), 14,
                taught ? XemsUi.GO_TEXT : XemsUi.AMBER, true);
        row.addView(st, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        TextView b = XemsUi.button(a, taught ? AiText.t("Научи отново", "Teach again")
                : AiText.t("Научи „Тренер“  ·  30 с", "Teach “Тренер”  ·  30 s"), taught ? XemsUi.SECONDARY : XemsUi.PRIMARY);
        b.setOnClickListener(new Teach());
        LinearLayout.LayoutParams bp = new LinearLayout.LayoutParams(XemsUi.dp(a, 240), XemsUi.dp(a, 52));
        bp.leftMargin = XemsUi.dp(a, 14);
        row.addView(b, bp);
        card.addView(row, XemsUi.matchWrap(a, 14));
        return card;
    }

    static final class Teach implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            WakeSetup.open(AiTrain.activity(v));
        }
    }
}
