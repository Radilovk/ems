package com.isaigu.gymapp.ai;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.InputType;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.wearable.WearableBleDiagLog;
import com.isaigu.gymapp.widget.XemsUi;

import java.util.List;

/**
 * The AI brief on screen (owner, 1.1.534 — docs/xems-ai-brief.md): one card at the top of Auto's first step.
 * A guest (no client on the row) answers two taps besides the goal — EMS experience and age; then one line of free
 * text (the keyboard's own mic dictates it) → ✦ → the planner's inputs change and the card says what changed.
 * During a session the board's "✦" takes a command in words ("по-леко", "кръстът го боли", "пауза").
 * The network part runs off the main thread; without it the tablet's own reader answers ({@link AiBrief#local}).
 */
public final class AiBriefUi {
    private AiBriefUi() {}

    private static final Handler MAIN = new Handler(Looper.getMainLooper());

    private static String text = "";
    private static String result = "";
    private static String question;
    private static String[] options;
    private static String askedText;
    private static boolean busy;
    /** Bumped by every new request: a late answer of an older one is dropped. */
    private static int seq;

    /** A new Auto session: the card starts empty. */
    public static void reset() {
        text = "";
        result = "";
        question = null;
        options = null;
        askedText = null;
        busy = false;
        seq++;
    }

    /** The card at the top of the first step (program choice). */
    static View card(Context c) {
        AutoModel.Input in = AutoSession.getInput();
        LinearLayout card = XemsUi.card(c);
        if (AutoSession.isGuest()) {
            LinearLayout quick = XemsUi.horizontal(c);
            quick.setGravity(Gravity.CENTER_VERTICAL);
            quick.addView(XemsUi.segmented(c, new String[] {AiText.t("Първи път", "First time"),
                    AiText.t("Няколко пъти", "A few times"), AiText.t("Редовно", "Regularly")},
                    AiBrief.guestExperience(in), new Pick(0)), new LinearLayout.LayoutParams(0,
                    ViewGroup.LayoutParams.WRAP_CONTENT, 1.2f));
            quick.addView(XemsUi.segmented(c, new String[] {AiText.t("под 40", "under 40"), "40–59", "60+"},
                    AiBrief.guestAgeBand(in), new Pick(1)), XemsUi.weight(1f, 14, c));
            card.addView(quick, XemsUi.matchWrap(c, 0));
        }
        LinearLayout row = XemsUi.horizontal(c);
        row.setGravity(Gravity.CENTER_VERTICAL);
        EditText field = field(c, AiText.t("✦ Опиши клиента или какво иска — „52 г., кръстът я боли, иска седалище“",
                "✦ Describe the client or the wish — “52, low back pain, wants glutes”"));
        field.setText(text);
        field.setOnEditorActionListener(new Done(field, false));
        row.addView(field, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        TextView go = XemsUi.button(c, busy ? "…" : "✦  " + AiText.t("Нагласи", "Tune"), XemsUi.ACCENT_BTN);
        go.setOnClickListener(new Go(field, false));
        LinearLayout.LayoutParams gp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, XemsUi.dp(c, 52));
        gp.leftMargin = XemsUi.dp(c, 10);
        row.addView(go, gp);
        card.addView(row, XemsUi.matchWrap(c, AutoSession.isGuest() ? 10 : 0));
        if (busy) {
            card.addView(XemsUi.text(c, AiText.t("✦ мисля…", "✦ thinking…"), 13, XemsUi.MUTED, true), XemsUi.matchWrap(c, 6));
        } else if (result.length() > 0) {
            TextView r = XemsUi.text(c, result, 13, XemsUi.GO_TEXT, true);
            r.setMaxLines(3);
            card.addView(r, XemsUi.matchWrap(c, 6));
        }
        if (!busy && question != null && options != null) {
            card.addView(XemsUi.text(c, question, 14, XemsUi.TEXT, true), XemsUi.matchWrap(c, 8));
            LinearLayout opts = XemsUi.horizontal(c);
            for (int i = 0; i < options.length; i++) {
                TextView o = XemsUi.chip(c, options[i], false, XemsUi.ACCENT);
                o.setOnClickListener(new Answer(i));
                LinearLayout.LayoutParams op = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                        ViewGroup.LayoutParams.WRAP_CONTENT);
                op.rightMargin = XemsUi.dp(c, 8);
                opts.addView(o, op);
            }
            card.addView(opts, XemsUi.matchWrap(c, 6));
        }
        return card;
    }

    private static EditText field(Context c, String hint) {
        EditText f = new EditText(c);
        f.setHint(hint);
        f.setTextSize(16);
        f.setTextColor(XemsUi.TEXT);
        f.setHintTextColor(XemsUi.HINT);
        f.setMaxLines(3);
        f.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_CAP_SENTENCES
                | InputType.TYPE_TEXT_FLAG_MULTI_LINE);
        f.setImeOptions(EditorInfo.IME_ACTION_DONE);
        f.setHorizontallyScrolling(false);
        f.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(c, 14), XemsUi.STROKE, XemsUi.dp(c, 1)));
        f.setPadding(XemsUi.dp(c, 16), XemsUi.dp(c, 12), XemsUi.dp(c, 16), XemsUi.dp(c, 12));
        return f;
    }

    // ================================================================ planning

    private static void submit(Context c, String t, String q, String answer) {
        if (t == null || t.trim().length() == 0) {
            return;
        }
        text = t.trim();
        question = null;
        options = null;
        busy = true;
        final int my = ++seq;
        AutoUi.rerender();
        AutoModel.Input in = AutoSession.getInput();
        String fields = AiBrief.requestFields(in, AiBrief.menu(), text, q, answer, false, AutoSession.isGuest());
        new Thread(new Ask(c.getApplicationContext(), fields, text, my, false), "xems-brief").start();
    }

    /** The answer (model or local) → the inputs → the card and the step again. */
    static void onPlanAnswer(AiBrief.Patch p, String t, int my) {
        if (my != seq) {
            return;
        }
        busy = false;
        AutoModel.Input in = AutoSession.getInput();
        List<String> ch = AiBrief.apply(p, in);
        AutoSession.syncLeaderInput();
        AutoUi.aiPicked(in.programId);
        String head = p.fromModel ? "✦ " : "✦ " + AiText.t("(без връзка) ", "(offline) ");
        String note = p.note != null && p.note.length() > 0 ? p.note : "";
        String line = AiBrief.line(ch);
        result = head + (note.length() > 0 ? note + (line.length() > 0 ? " · " : "") : "")
                + (line.length() > 0 ? line : note.length() > 0 ? "" : AiText.t("нищо ново — планът остава", "nothing new — the plan stays"));
        if (p.hasQuestion()) {
            question = p.question;
            options = p.options.toArray(new String[0]);
            askedText = t;
        }
        AutoUi.rerender();
    }

    // ================================================================ during the session

    /** The board's ✦: a command in words. */
    static void openLive(Activity a) {
        if (a == null) {
            return;
        }
        EditText f = field(a, AiText.t("„по-леко“, „пауза“, „кръстът го боли“, „без ръце“…",
                "“softer”, “pause”, “back hurts”, “no arms”…"));
        LinearLayout box = XemsUi.vertical(a);
        box.setPadding(XemsUi.dp(a, 20), XemsUi.dp(a, 16), XemsUi.dp(a, 20), XemsUi.dp(a, 4));
        box.addView(f, XemsUi.matchWrap(a, 0));
        AlertDialog d = new AlertDialog.Builder(a).setView(box).create();
        f.setOnEditorActionListener(new Done(f, true));
        Go go = new Go(f, true);
        go.dialog = d;
        d.setButton(AlertDialog.BUTTON_POSITIVE, "✦  " + AiText.t("Направи", "Do it"), (android.os.Message) null);
        d.setOnShowListener(new ShowLive(go));
        d.show();
        f.requestFocus();
        try {
            d.getWindow().setSoftInputMode(android.view.WindowManager.LayoutParams.SOFT_INPUT_STATE_VISIBLE);
        } catch (Throwable ignored) {
        }
    }

    private static void live(Context c, String t) {
        if (t == null || t.trim().length() == 0) {
            return;
        }
        AiBrief.Patch local = AiBrief.local(t, true);
        if (!local.live.isEmpty() || !local.zonesOff.isEmpty()) {
            doLive(local, t);                               // a plain command: at once, no network
            return;
        }
        AutoModel.Input in = AutoSession.getInput();
        String fields = AiBrief.requestFields(in, AiBrief.menu(), t, null, null, true, AutoSession.isGuest());
        new Thread(new Ask(c.getApplicationContext(), fields, t, ++seq, true), "xems-brief-live").start();
    }

    /** What a command does now: the board's own controls (the strength stays the person's: −10 % / +5 %). */
    static void doLive(AiBrief.Patch p, String t) {
        StringBuilder done = new StringBuilder();
        for (String a : p.live) {
            if (AiBrief.LIVE_SOFTER.equals(a)) {
                AutoSession.reduceAll();
                done.append("−10 % ");
            } else if (AiBrief.LIVE_STRONGER.equals(a)) {
                AutoSession.raiseAll();
                done.append("+5 % ");
            } else if (AiBrief.LIVE_PAUSE.equals(a)) {
                AutoEngine e = AutoSession.getEngine();
                if (e != null && e.getState() == AutoEngine.State.RUN) {
                    AutoSession.togglePause();
                    done.append("❚❚ ");
                }
            } else if (AiBrief.LIVE_RESUME.equals(a)) {
                if (AutoSession.startNext()) {
                    done.append("▶ ");
                }
            } else if (AiBrief.LIVE_SKIP.equals(a)) {
                if (AutoSession.canNext()) {
                    AutoSession.nextFromPanel();
                    done.append("⏭ ");
                }
            } else if (AiBrief.LIVE_RECOVERY.equals(a)) {
                AutoSession.stop();
                done.append("→ ").append(AiText.t("възстановяване ", "recovery "));
            }
        }
        // a zone that must rest now / may work now: the channel's own move (it stays for the session)
        int[] zones = AutoSession.leaderZones();
        for (String z : p.zonesOff) {
            int ch = AiBrief.channel(z);
            if (ch >= 0 && zones != null && ch < zones.length && zones[ch] > 0) {
                AutoSession.adjustChannel(ch, -zones[ch]);
                done.append(AiBrief.ZONES_BG[ch]).append(" — изкл. ");
            }
        }
        for (String z : p.zonesOn) {
            int ch = AiBrief.channel(z);
            if (ch >= 0 && zones != null && ch < zones.length && zones[ch] == 0) {
                AutoSession.adjustChannel(ch, 100);
                done.append(AiBrief.ZONES_BG[ch]).append(" — вкл. ");
            }
        }
        String msg = done.length() > 0 ? "✦ " + done.toString().trim()
                : p.note != null && p.note.length() > 0 ? "✦ " + p.note
                : AiText.t("✦ Не разбрах командата — кажи я с други думи.", "✦ Did not get it — say it another way.");
        AutoSession.notice(msg, AutoSession.INFO, System.currentTimeMillis());
        WearableBleDiagLog.log("brief", "live \"" + t + "\" → " + p.live + " off " + p.zonesOff + " on " + p.zonesOn);
    }

    // ================================================================ listeners (named classes: dx)

    static final class Pick implements XemsUi.OnIndex {
        final int which;

        Pick(int which) {
            this.which = which;
        }

        @Override
        public void onIndex(int index) {
            AutoModel.Input in = AutoSession.getInput();
            int exp = which == 0 ? index : AiBrief.guestExperience(in);
            int age = which == 1 ? index : AiBrief.guestAgeBand(in);
            AiBrief.guest(in, exp, age);
            AutoSession.syncLeaderInput();
            AutoUi.rerender();
        }
    }

    static final class Go implements View.OnClickListener {
        final EditText field;
        final boolean live;
        AlertDialog dialog;

        Go(EditText field, boolean live) {
            this.field = field;
            this.live = live;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            fire();
        }

        void fire() {
            String t = field.getText() != null ? field.getText().toString() : "";
            hideKeyboard(field);
            if (live) {
                if (dialog != null) {
                    dialog.dismiss();
                }
                live(field.getContext(), t);
            } else if (!busy) {
                submit(field.getContext(), t, null, null);
            }
        }
    }

    static final class Done implements TextView.OnEditorActionListener {
        final Go go;

        Done(EditText field, boolean live) {
            this.go = new Go(field, live);
        }

        @Override
        public boolean onEditorAction(TextView v, int actionId, KeyEvent event) {
            if (actionId == EditorInfo.IME_ACTION_DONE
                    || (event != null && event.getKeyCode() == KeyEvent.KEYCODE_ENTER && event.getAction() == KeyEvent.ACTION_DOWN)) {
                go.fire();
                return true;
            }
            return false;
        }
    }

    static final class ShowLive implements android.content.DialogInterface.OnShowListener {
        final Go go;

        ShowLive(Go go) {
            this.go = go;
        }

        @Override
        public void onShow(android.content.DialogInterface d) {
            View b = go.dialog.getButton(AlertDialog.BUTTON_POSITIVE);
            if (b != null) {
                b.setOnClickListener(go);
            }
        }
    }

    static final class Answer implements View.OnClickListener {
        final int index;

        Answer(int index) {
            this.index = index;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            if (options == null || index >= options.length || busy) {
                return;
            }
            String q = question;
            String a = options[index];
            submit(v.getContext(), askedText != null ? askedText : text, q, a);
        }
    }

    /** The network call: the model's patch, or on any failure the tablet's own reading of the same text. */
    static final class Ask implements Runnable {
        final Context c;
        final String fields;
        final String text;
        final int my;
        final boolean live;

        Ask(Context c, String fields, String text, int my, boolean live) {
            this.c = c;
            this.fields = fields;
            this.text = text;
            this.my = my;
            this.live = live;
        }

        @Override
        public void run() {
            AiBrief.Patch p = null;
            try {
                String r = com.isaigu.gymapp.widget.XemsLicenseClient.postBrief(c, fields);
                p = AiBrief.parse(r);
                if (p == null) {
                    WearableBleDiagLog.log("brief", "no patch: " + (r.length() > 160 ? r.substring(0, 160) : r));
                }
            } catch (Throwable t) {
                WearableBleDiagLog.log("brief", "offline: " + t);
            }
            if (p == null) {
                p = AiBrief.local(text, live);
            }
            MAIN.post(new Answered(p, text, my, live));
        }
    }

    static final class Answered implements Runnable {
        final AiBrief.Patch p;
        final String text;
        final int my;
        final boolean live;

        Answered(AiBrief.Patch p, String text, int my, boolean live) {
            this.p = p;
            this.text = text;
            this.my = my;
            this.live = live;
        }

        @Override
        public void run() {
            try {
                if (live) {
                    doLive(p, text);
                } else {
                    onPlanAnswer(p, text, my);
                }
            } catch (Throwable t) {
                WearableBleDiagLog.log("brief", "apply: " + t);
            }
        }
    }

    private static void hideKeyboard(View v) {
        try {
            InputMethodManager im = (InputMethodManager) v.getContext().getSystemService(Context.INPUT_METHOD_SERVICE);
            if (im != null) {
                im.hideSoftInputFromWindow(v.getWindowToken(), 0);
            }
        } catch (Throwable ignored) {
        }
    }
}
