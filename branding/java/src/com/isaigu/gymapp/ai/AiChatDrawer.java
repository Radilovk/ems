package com.isaigu.gymapp.ai;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.InputType;
import android.text.TextWatcher;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.EditorInfo;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import com.isaigu.gymapp.widget.XemsUi;

import java.util.List;

/**
 * The AI's chat during the session (owner, 1.1.543 — docs/xems-ai-coach.md): a panel on the right side, like a
 * messenger — the trainer's words right, the AI's left, spoken words as 🎙 bubbles, what was changed as ✓ entries,
 * one-tap answers under the last question, and one line at the bottom whose button is 🎤 while empty and ➤ with text.
 * The training screen stays live beside it (not modal); it closes with ✕ only.
 */
public final class AiChatDrawer {
    private AiChatDrawer() {}

    static final int W_DP = 380;
    static final long HIDE_MS = 10000;
    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static final Runnable HIDE = new Hide();
    private static Dialog dialog;
    private static LinearLayout content;
    private static EditText field;
    private static TalkButton sendBtn;
    private static String typed = "";

    public static boolean isOpen() {
        return dialog != null && dialog.isShowing();
    }

    static void open(Activity a) {
        if (a == null || a.isFinishing()) {
            return;
        }
        if (isOpen()) {
            touched();
            return;
        }
        XemsUi.init(a);
        Dialog d = new Dialog(a);
        d.requestWindowFeature(Window.FEATURE_NO_TITLE);
        content = new Frame(a);
        content.setOrientation(LinearLayout.VERTICAL);
        d.setContentView(content);
        d.setCanceledOnTouchOutside(false);
        try {
            Window w = d.getWindow();
            w.setBackgroundDrawable(new ColorDrawable(0));
            w.setGravity(Gravity.END | Gravity.TOP);
            w.setLayout(XemsUi.dp(a, W_DP), ViewGroup.LayoutParams.MATCH_PARENT);
            w.clearFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND);
            // the training screen beside it stays usable: touches outside go to it
            w.addFlags(WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL);
            w.setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_ADJUST_RESIZE);
            w.setWindowAnimations(android.R.style.Animation_InputMethod);
        } catch (Throwable ignored) {
        }
        d.setOnDismissListener(new Dismissed());
        dialog = d;
        refresh();
        d.show();
        touched();
    }

    static void close() {
        MAIN.removeCallbacks(HIDE);
        if (dialog != null) {
            try {
                dialog.dismiss();
            } catch (Throwable ignored) {
            }
        }
        dialog = null;
        content = null;
        field = null;
        sendBtn = null;
    }

    /** A new message, a command done, the AI typing: the chat again (what was being typed stays). */
    static void refresh() {
        if (content == null) {
            return;
        }
        if (field != null && field.getText() != null) {
            typed = field.getText().toString();
        }
        content.removeAllViews();
        build(content.getContext(), content);
        touched();
    }

    /** The whole panel into col (also the off-device shots). */
    static void build(Context c, LinearLayout col) {
        XemsUi.init(c);
        col.setBackgroundDrawable(XemsUi.rounded(XemsUi.BG, XemsUi.dp(c, 0), XemsUi.STROKE, XemsUi.dp(c, 1)));

        // head: who you talk to, the voice state, ✕
        LinearLayout head = XemsUi.horizontal(c);
        head.setGravity(Gravity.CENTER_VERTICAL);
        head.setPadding(XemsUi.dp(c, 16), XemsUi.dp(c, 10), XemsUi.dp(c, 8), XemsUi.dp(c, 10));
        head.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, 0, XemsUi.STROKE, 0));
        TextView av = XemsUi.text(c, "✦", 20, XemsUi.BG, true);
        av.setGravity(Gravity.CENTER);
        av.setBackgroundDrawable(XemsUi.rounded(XemsUi.ACCENT, XemsUi.dp(c, 20), XemsUi.ACCENT, 0));
        head.addView(av, new LinearLayout.LayoutParams(XemsUi.dp(c, 40), XemsUi.dp(c, 40)));
        LinearLayout who = XemsUi.vertical(c);
        who.addView(XemsUi.text(c, AiText.t("AI треньор", "AI coach"), 16, XemsUi.TEXT, true));
        boolean on = WakeListener.isOn();
        boolean hearing = WakeListener.state().length() > 0 && !"speaking".equals(WakeListener.state());
        TextView st = XemsUi.text(c, AiTrain.busy ? AiText.t("пише…", "typing…")
                : hearing ? "🎙 " + AiText.t("слуша…", "listening…")
                : on ? "🎙 " + AiText.t("„Окей тренер, …“ работи", "“Okay trainer, …” is on")
                : AiText.t("онлайн", "online"), 12, AiTrain.busy || hearing ? XemsUi.AMBER : XemsUi.GO_TEXT, false);
        st.setMaxLines(1);
        who.addView(st);
        LinearLayout.LayoutParams wp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        wp.leftMargin = XemsUi.dp(c, 12);
        head.addView(who, wp);
        TextView x = XemsUi.button(c, "✕", XemsUi.GHOST);
        x.setOnClickListener(new Close());
        head.addView(x, new LinearLayout.LayoutParams(XemsUi.dp(c, 52), XemsUi.dp(c, 48)));
        col.addView(head, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT));

        // the messages, newest at the bottom
        ScrollView sc = new ScrollView(c);
        sc.setFillViewport(true);
        LinearLayout msgs = XemsUi.vertical(c);
        msgs.setGravity(Gravity.BOTTOM);
        msgs.setPadding(XemsUi.dp(c, 12), XemsUi.dp(c, 8), XemsUi.dp(c, 12), XemsUi.dp(c, 8));
        List<AiCoach.Turn> turns = AiCoach.chat();
        if (turns.isEmpty()) {
            msgs.addView(note(c, AiText.t("Пиши или кажи какво да промени — „по-силно краката“, „по-дълги почивки“, „пауза“.",
                    "Write or say what to change — “stronger legs”, “longer rests”, “pause”.")), XemsUi.matchWrap(c, 0));
        }
        for (int i = Math.max(0, turns.size() - 30); i < turns.size(); i++) {
            msgs.addView(bubble(c, turns.get(i)), bubbleParams(c, turns.get(i)));
        }
        if (AiTrain.busy) {
            TextView t = bubbleText(c, "• • •", true);
            LinearLayout.LayoutParams tp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT);
            tp.topMargin = XemsUi.dp(c, 6);
            tp.gravity = Gravity.START;
            msgs.addView(t, tp);
        }
        sc.addView(msgs, new ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT));
        col.addView(sc, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
        sc.post(new ToEnd(sc));

        // one-tap answers: the AI's options under its question, else the usual moves
        AiUi.FlowRow quick = new AiUi.FlowRow(c);
        String[] q = AiTrain.pending != null && !AiTrain.busy ? AiTrain.pending : new String[] {
                AiText.t("по-силно", "stronger"), AiText.t("по-леко", "softer"), AiText.t("пауза", "pause"),
                AiText.t("продължи", "go on"), AiText.t("по-дълги почивки", "longer rests"),
                AiText.t("към възстановяване", "to the recovery")};
        boolean asked = AiTrain.pending != null && !AiTrain.busy;
        for (String t : q) {
            TextView ch = XemsUi.chip(c, t, asked, XemsUi.ACCENT);
            ch.setOnClickListener(new Quick(t));
            quick.add(ch);
        }
        LinearLayout.LayoutParams qp = XemsUi.matchWrap(c, 0);
        qp.leftMargin = XemsUi.dp(c, 10);
        qp.rightMargin = XemsUi.dp(c, 10);
        col.addView(quick, qp);

        // the line: 🎤 while empty, ➤ with text (as in a messenger)
        LinearLayout row = XemsUi.horizontal(c);
        row.setGravity(Gravity.CENTER_VERTICAL);
        row.setPadding(XemsUi.dp(c, 10), XemsUi.dp(c, 8), XemsUi.dp(c, 10), XemsUi.dp(c, 10));
        EditText f = new EditText(c);
        f.setHint(AiText.t("Съобщение…", "Message…"));
        f.setText(typed);
        f.setTextSize(15);
        f.setTextColor(XemsUi.TEXT);
        f.setHintTextColor(XemsUi.HINT);
        f.setMaxLines(3);
        f.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_CAP_SENTENCES);
        f.setImeOptions(EditorInfo.IME_ACTION_SEND);
        f.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(c, 24), XemsUi.STROKE, XemsUi.dp(c, 1)));
        f.setPadding(XemsUi.dp(c, 18), XemsUi.dp(c, 10), XemsUi.dp(c, 18), XemsUi.dp(c, 10));
        f.setOnEditorActionListener(new Key());
        f.addTextChangedListener(new Typed());
        row.addView(f, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        TalkButton b = new TalkButton(c);
        b.setSend(typed.trim().length() > 0);
        b.setOnClickListener(new Send());
        LinearLayout.LayoutParams bp = new LinearLayout.LayoutParams(XemsUi.dp(c, 56), XemsUi.dp(c, 56));
        bp.leftMargin = XemsUi.dp(c, 8);
        row.addView(b, bp);
        col.addView(row, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT));
        field = f;
        sendBtn = b;
    }

    /** One message: a bubble; the AI's "✓ …" (a change done) is an entry of its own in the middle. */
    static View bubble(Context c, AiCoach.Turn t) {
        if (t.ai && t.text.startsWith("✓")) {
            TextView v = XemsUi.text(c, t.text, 13, XemsUi.GO_TEXT, true);
            v.setGravity(Gravity.CENTER);
            v.setPadding(XemsUi.dp(c, 12), XemsUi.dp(c, 5), XemsUi.dp(c, 12), XemsUi.dp(c, 5));
            v.setBackgroundDrawable(XemsUi.rounded(XemsUi.alpha(XemsUi.GO, 0x1E), XemsUi.dp(c, 12),
                    XemsUi.alpha(XemsUi.GO, 0x66), XemsUi.dp(c, 1)));
            return v;
        }
        if (!t.ai && t.voice) {
            LinearLayout v = XemsUi.vertical(c);
            TextView tag = XemsUi.text(c, "🎙  " + AiText.t("гласово", "voice"), 11, XemsUi.MUTED, true);
            tag.setGravity(Gravity.END);
            v.addView(tag, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT));
            v.addView(bubbleText(c, "„" + t.text + "“", false));
            return v;
        }
        return bubbleText(c, t.text, t.ai);
    }

    private static TextView bubbleText(Context c, String s, boolean ai) {
        TextView m = XemsUi.text(c, s, 15, XemsUi.TEXT, false);
        m.setMaxWidth(XemsUi.dp(c, W_DP - 70));
        m.setPadding(XemsUi.dp(c, 14), XemsUi.dp(c, 9), XemsUi.dp(c, 14), XemsUi.dp(c, 9));
        // messenger shape: the corner next to the speaker is sharp
        float r = XemsUi.dp(c, 18), s4 = XemsUi.dp(c, 4);
        android.graphics.drawable.GradientDrawable g = XemsUi.rounded(ai ? XemsUi.SURFACE : XemsUi.alpha(XemsUi.ACCENT, 0x33),
                r, ai ? XemsUi.STROKE : XemsUi.alpha(XemsUi.ACCENT, 0x88), XemsUi.dp(c, 1));
        g.setCornerRadii(ai ? new float[] {s4, s4, r, r, r, r, r, r} : new float[] {r, r, s4, s4, r, r, r, r});
        m.setBackgroundDrawable(g);
        return m;
    }

    static LinearLayout.LayoutParams bubbleParams(Context c, AiCoach.Turn t) {
        boolean action = t.ai && t.text.startsWith("✓");
        LinearLayout.LayoutParams p = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        p.topMargin = XemsUi.dp(c, action ? 6 : 8);
        p.gravity = action ? Gravity.CENTER_HORIZONTAL : t.ai ? Gravity.START : Gravity.END;
        return p;
    }

    private static TextView note(Context c, String s) {
        TextView v = XemsUi.text(c, s, 13, XemsUi.MUTED, false);
        v.setGravity(Gravity.CENTER);
        v.setPadding(XemsUi.dp(c, 18), XemsUi.dp(c, 20), XemsUi.dp(c, 18), XemsUi.dp(c, 20));
        return v;
    }

    /** The chat stays until ✕ (owner, 1.1.546: "it hides by itself" — the 10 s auto-hide is gone). */
    static void touched() {
        MAIN.removeCallbacks(HIDE);
    }

    private static void fire(Context c, String text) {
        if (text == null || text.trim().length() == 0) {
            return;
        }
        typed = "";
        if (field != null) {
            field.setText("");
        }
        AiTrain.send(c, text, true, false);
        refresh();
    }

    static final class Hide implements Runnable {
        @Override
        public void run() {
            if (!isOpen()) {
                return;
            }
            boolean waiting = AiTrain.busy || AiTrain.pending != null
                    || (field != null && field.getText() != null && field.getText().length() > 0);
            if (waiting) {
                MAIN.postDelayed(HIDE, HIDE_MS);
                return;
            }
            close();
        }
    }

    /** The panel's root: every touch on it counts as "still here". */
    static final class Frame extends LinearLayout {
        Frame(Context c) {
            super(c);
        }

        @Override
        public boolean dispatchTouchEvent(MotionEvent e) {
            touched();
            return super.dispatchTouchEvent(e);
        }
    }

    static final class ToEnd implements Runnable {
        final ScrollView sc;

        ToEnd(ScrollView sc) {
            this.sc = sc;
        }

        @Override
        public void run() {
            sc.fullScroll(View.FOCUS_DOWN);
        }
    }

    static final class Quick implements View.OnClickListener {
        final String text;

        Quick(String text) {
            this.text = text;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            fire(v.getContext(), text);
        }
    }

    static final class Send implements View.OnClickListener, VoiceInput.Result {
        Context c;

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            c = v.getContext();
            String t = field != null && field.getText() != null ? field.getText().toString() : "";
            if (t.trim().length() > 0) {
                fire(c, t);
            } else {
                VoiceInput.listen(AiTrain.activity(v), this);
            }
        }

        @Override
        public void onText(String text) {
            if (text == null || text.trim().length() == 0) {
                return;
            }
            AiCoach.userSpoke(text.trim());
            AiTrain.voiceAsk = true;                     // spoken to → the answer is spoken back
            AiTrain.send(c, text, true, true);
            refresh();
        }
    }

    static final class Key implements TextView.OnEditorActionListener {
        @Override
        public boolean onEditorAction(TextView v, int id, KeyEvent e) {
            if (id == EditorInfo.IME_ACTION_SEND || (e != null && e.getKeyCode() == KeyEvent.KEYCODE_ENTER)) {
                fire(v.getContext(), v.getText() != null ? v.getText().toString() : "");
                return true;
            }
            return false;
        }
    }

    static final class Typed implements TextWatcher {
        @Override
        public void beforeTextChanged(CharSequence s, int a, int b, int c) {
        }

        @Override
        public void onTextChanged(CharSequence s, int a, int b, int c) {
        }

        @Override
        public void afterTextChanged(Editable s) {
            touched();
            if (sendBtn != null) {
                sendBtn.setSend(s != null && s.toString().trim().length() > 0);
            }
        }
    }

    static final class Close implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            close();
        }
    }

    static final class Dismissed implements android.content.DialogInterface.OnDismissListener {
        @Override
        public void onDismiss(android.content.DialogInterface d) {
            MAIN.removeCallbacks(HIDE);
            dialog = null;
            content = null;
            field = null;
            sendBtn = null;
        }
    }
}
