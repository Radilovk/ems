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
        // the coach's voice (1.1.560): which voice, how fast, how it sounds — one tap each
        View oldVoice = parent.findViewWithTag(VOICE_TAG);
        if (oldVoice != null && oldVoice.getParent() instanceof ViewGroup) {
            ((ViewGroup) oldVoice.getParent()).removeView(oldVoice);
        }
        LinearLayout vc = voiceCard(a);
        vc.setTag(VOICE_TAG);
        LinearLayout.LayoutParams vp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        vp.topMargin = XemsUi.dp(a, 16);
        parent.addView(vc, vp);
        new Thread(new Usage(a), "xems-voice-usage").start();
    }

    static final String VOICE_TAG = "xems_voice_pick";
    static final String SAMPLE_BG = "Здравей! Аз съм твоят треньор. Вдигам седалището с една стъпка — направи десет бавни моста.";
    static final String SAMPLE_EN = "Hi! I am your coach. Glutes up one step — ten slow bridges, please.";
    private static TextView usageView;

    /**
     * Settings → "Глас на треньора" (owner, 1.1.560: "change the voice and its settings from the tablet"). One row of
     * voices (a tap picks it and says a sample at once), the tempo, ▶ to hear it again; the month's free characters
     * small on the right. Landscape: everything in three short rows.
     */
    static LinearLayout voiceCard(Activity a) {
        LinearLayout card = XemsUi.card(a);
        String pick = CloudVoice.voice(a);
        LinearLayout head = XemsUi.horizontal(a);
        head.setGravity(android.view.Gravity.CENTER_VERTICAL);
        head.addView(XemsUi.text(a, "🔊  " + AiText.t("Глас на треньора", "The coach's voice"), 18, XemsUi.TEXT, true),
                new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        usageView = XemsUi.text(a, usageText(a), 13, XemsUi.MUTED, false);
        head.addView(usageView);
        card.addView(head);
        // the voices: ♀ / ♂ and the name; the tablet's own engine last (offline, the old sound)
        LinearLayout[] holder = new LinearLayout[1];
        card.addView(XemsUi.chipRow(a, holder), XemsUi.matchWrap(a, 14));
        for (String[] v : CloudVoice.VOICES) {
            TextView chip = XemsUi.chip(a, ("f".equals(v[3]) ? "♀  " : "♂  ") + AiText.t(v[1], v[2]), v[0].equals(pick),
                    XemsUi.GO);
            chip.setMinHeight(XemsUi.dp(a, 48));
            chip.setOnClickListener(new Pick(v[0], null));
            XemsUi.addChip(a, holder[0], chip);
        }
        TextView dev = XemsUi.chip(a, "📱  " + AiText.t("Гласът на таблета · офлайн", "The tablet's voice · offline"),
                CloudVoice.DEVICE.equals(pick), XemsUi.GO);
        dev.setMinHeight(XemsUi.dp(a, 48));
        dev.setOnClickListener(new Pick(CloudVoice.DEVICE, null));
        XemsUi.addChip(a, holder[0], dev);
        // the tempo and ▶, side by side
        LinearLayout row = XemsUi.horizontal(a);
        row.setGravity(android.view.Gravity.CENTER_VERTICAL);
        int sel = java.util.Arrays.asList(CloudVoice.RATES).indexOf(CloudVoice.rate(a));
        LinearLayout tempo = XemsUi.segmented(a, new String[] {AiText.t("По-бавно", "Slower"), AiText.t("Нормално", "Normal"),
                AiText.t("По-бързо", "Faster")}, sel < 0 ? 1 : sel, new Tempo(a));
        row.addView(tempo, new LinearLayout.LayoutParams(XemsUi.dp(a, 440), ViewGroup.LayoutParams.WRAP_CONTENT));
        View gap = new View(a);
        row.addView(gap, new LinearLayout.LayoutParams(0, 1, 1f));
        TextView hear = XemsUi.button(a, "▶  " + AiText.t("Чуй", "Hear it"), XemsUi.SECONDARY);
        hear.setOnClickListener(new Hear());
        row.addView(hear, new LinearLayout.LayoutParams(XemsUi.dp(a, 170), XemsUi.dp(a, 52)));
        card.addView(row, XemsUi.matchWrap(a, 14));
        return card;
    }

    static String usageText(Activity a) {
        if (CloudVoice.DEVICE.equals(CloudVoice.voice(a))) {
            return AiText.t("без интернет · безплатно", "offline · free");
        }
        int used = CloudVoice.used(a);
        if (used < 0) {
            return AiText.t("безплатно до " + group(CloudVoice.limit(a)) + " знака на месец",
                    "free up to " + group(CloudVoice.limit(a)) + " characters a month");
        }
        return AiText.t("този месец " + group(used) + " от " + group(CloudVoice.limit(a)) + " знака",
                "this month " + group(used) + " of " + group(CloudVoice.limit(a)) + " characters");
    }

    static String group(int n) {
        return String.format(java.util.Locale.ROOT, "%,d", n).replace(',', ' ');
    }

    /** The card again where it was (the picked chip green, the tempo), then the sample in the new voice. */
    static void refresh(Activity a, boolean say) {
        if (a == null) {
            return;
        }
        View old = a.getWindow().getDecorView().findViewWithTag(VOICE_TAG);
        if (old != null && old.getParent() instanceof ViewGroup) {
            ViewGroup p = (ViewGroup) old.getParent();
            int at = p.indexOfChild(old);
            ViewGroup.LayoutParams lp = old.getLayoutParams();
            p.removeView(old);
            LinearLayout vc = voiceCard(a);
            vc.setTag(VOICE_TAG);
            p.addView(vc, at, lp);
        }
        if (say) {
            WakeListener.bind(a);
            CloudVoice.preview(a, AiText.t(SAMPLE_BG, SAMPLE_EN), WakeListener.VOICE_BACK);
        }
    }

    static final class Pick implements View.OnClickListener {
        final String voice;
        final String rate;

        Pick(String voice, String rate) {
            this.voice = voice;
            this.rate = rate;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            Activity a = AiTrain.activity(v);
            CloudVoice.choose(v.getContext(), voice, rate);
            refresh(a, true);
        }
    }

    static final class Tempo implements XemsUi.OnIndex {
        final Activity a;

        Tempo(Activity a) {
            this.a = a;
        }

        @Override
        public void onIndex(int index) {
            CloudVoice.choose(a, null, CloudVoice.RATES[Math.max(0, Math.min(2, index))]);
            refresh(a, true);
        }
    }

    static final class Hear implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            Activity a = AiTrain.activity(v);
            if (a != null) {
                WakeListener.bind(a);
                CloudVoice.preview(a, AiText.t(SAMPLE_BG, SAMPLE_EN), WakeListener.VOICE_BACK);
            }
        }
    }

    /** The month's characters from the server (no text, nothing spoken), then the small line on the card. */
    static final class Usage implements Runnable {
        final Activity a;

        Usage(Activity a) {
            this.a = a;
        }

        @Override
        public void run() {
            try {
                String r = com.isaigu.gymapp.widget.XemsLicenseClient.ttsUsage(a);
                if (r == null) {
                    return;
                }
                java.util.Map<String, Object> m = com.isaigu.gymapp.widget.XemsLicenseToken.parseFlat(r);
                Object u = m.get("used");
                Object l = m.get("limit");
                if (u != null && l != null) {
                    CloudVoice.noteUsage(a, (int) Double.parseDouble(String.valueOf(u)), (int) Double.parseDouble(String.valueOf(l)));
                    a.runOnUiThread(new Show(a));
                }
            } catch (Throwable t) {
                com.isaigu.gymapp.wearable.WearableBleDiagLog.log("voice", "usage: " + t);
            }
        }
    }

    static final class Show implements Runnable {
        final Activity a;

        Show(Activity a) {
            this.a = a;
        }

        @Override
        public void run() {
            if (usageView != null) {
                usageView.setText(usageText(a));
            }
        }
    }

    /** The card itself (also the off-device shots). */
    static LinearLayout card(Activity a) {
        LinearLayout card = XemsUi.card(a);
        boolean taught = WakeListener.enrolled(a);
        card.addView(XemsUi.text(a, "🎙  " + AiText.t("Гласово управление", "Voice control"), 18, XemsUi.TEXT, true));
        card.addView(XemsUi.text(a, AiText.t("В AI тренировка таблетът слуша за „Окей тренер, …“ — „Окей тренер, по-силно краката“, "
                        + "„Окей тренер, пауза“, „Окей тренер, стоп“. „Окей тренировка“ не го буди.",
                "In an AI training the tablet listens for “Okay trainer, …” — “raise the legs”, “pause”, “stop”. "
                        + "“Okay тренировка” never wakes it."), 13, XemsUi.MUTED, false), XemsUi.matchWrap(a, 4));
        LinearLayout row = XemsUi.horizontal(a);
        row.setGravity(android.view.Gravity.CENTER_VERTICAL);
        TextView st = XemsUi.text(a, taught ? "✓  " + AiText.t("Научен на твоя глас", "Taught your voice")
                : AiText.t("Още не е научен — работи и така, по-точно е с твоя глас.",
                "Not taught yet — it works anyway, more exact with your voice."), 14,
                taught ? XemsUi.GO_TEXT : XemsUi.AMBER, true);
        row.addView(st, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        TextView b = XemsUi.button(a, taught ? AiText.t("Научи отново", "Teach again")
                : AiText.t("Научи „Окей тренер“  ·  30 с", "Teach “Okay trainer”  ·  30 s"), taught ? XemsUi.SECONDARY : XemsUi.PRIMARY);
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
