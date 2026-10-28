package com.isaigu.gymapp.wearable.voice;

import android.app.Activity;
import android.content.DialogInterface;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.wearable.WearableBlePermissions;
import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsIcon;
import com.isaigu.gymapp.widget.XemsLang;
import com.isaigu.gymapp.widget.XemsUi;

import java.util.ArrayList;
import java.util.List;

/**
 * The "Глас" page (menu → Глас): the voice module, as easy as it gets (owner, 2026-10-28: "as few steps as possible,
 * nothing complicated"). The tablet finds the module by itself; one button — "Научи гласа ми" — then the page says
 * each word big, the trainer says it, the next comes by itself (3 times each, 8 words, ≈ 1.5 min). After that it
 * only listens: the last command and the countdown show here, and every command works from any page.
 * A tap on a word records just that word again. docs/xems-voice.md.
 */
public final class VoiceScreen {
    static final int TINT = 0xFF38BDF8;
    /** Learning order: the countdown first (it is said that way), then the rest. */
    static final String[] ORDER = {"one", "two", "three", "start", "pause", "stop", "plus", "minus"};
    static final int TIMES = 3;

    private VoiceScreen() {}

    static Page current;

    public static void open(Activity a) {
        try {
            Page c = current;
            if (c != null && !c.closed) {
                c.s.dialog.dismiss();
            }
            current = new Page(a);
            current.show();
        } catch (Throwable t) {
            XemsGuard.report("VoiceScreen.open", t);
        }
    }

    static String tr(String bg, String en) {
        return XemsLang.tr(bg, en);
    }

    /** The word as said (Bulgarian: what the trainer records). */
    static String word(String a) {
        if ("one".equals(a)) return tr("едно", "one");
        if ("two".equals(a)) return tr("две", "two");
        if ("three".equals(a)) return tr("три", "three");
        if ("start".equals(a)) return tr("старт", "start");
        if ("pause".equals(a)) return tr("пауза", "pause");
        if ("stop".equals(a)) return tr("стоп", "stop");
        if ("plus".equals(a)) return tr("увеличи импулса", "more impulse");
        return tr("намали импулса", "less impulse");
    }

    static int colorOf(String a) {
        if ("stop".equals(a)) return XemsUi.DANGER;
        if ("pause".equals(a)) return XemsUi.AMBER;
        if ("start".equals(a)) return XemsUi.GO;
        return TINT;
    }

    static final class Page implements VoiceLink.Listener {
        final Activity a;
        final Handler main = new Handler(Looper.getMainLooper());
        XemsUi.Shell s;
        boolean closed;

        final int[] count = new int[ORDER.length];
        boolean listed;
        int sens = 100;
        // learning
        final List<String> queue = new ArrayList<String>();
        String learning;
        int got;
        String note;
        int noteColor;
        // listening
        String heard;
        int heardColor;
        long heardMs;
        int level = -1, floor;

        TextView hero, sub, dots, status;
        View bar;
        FrameLayout barBox;
        LinearLayout words;
        LinearLayout sensRow;
        TextView go, hint;
        XemsIcon micIcon;
        View mic;

        Page(Activity a) {
            this.a = a;
        }

        int dp(float v) {
            return XemsUi.dp(a, v);
        }

        void show() {
            XemsUi.init(a);
            s = XemsUi.shell(a, tr("Глас", "Voice"), tr("Команди с глас — за всеки костюм и апарат",
                    "Voice commands — for every suit and unit"), 1120);
            LinearLayout row = XemsUi.horizontal(a);

            // left: the one thing now — the word to say, or what was heard
            LinearLayout left = XemsUi.card(a);
            left.setGravity(Gravity.CENTER);
            left.setPadding(dp(24), dp(22), dp(24), dp(22));
            micIcon = new XemsIcon(XemsIcon.MIC, TINT);
            mic = new View(a);
            mic.setBackgroundDrawable(micIcon);
            left.addView(mic, new LinearLayout.LayoutParams(dp(44), dp(44)));
            hero = XemsUi.text(a, "", 56, XemsUi.TEXT, true);
            hero.setGravity(Gravity.CENTER);
            hero.setTypeface(Typeface.DEFAULT_BOLD);
            left.addView(hero, XemsUi.matchWrap(a, 8));
            dots = XemsUi.text(a, "", 30, TINT, true);
            dots.setGravity(Gravity.CENTER);
            left.addView(dots, XemsUi.matchWrap(a, 2));
            sub = XemsUi.text(a, "", 16, XemsUi.MUTED, false);
            sub.setGravity(Gravity.CENTER);
            left.addView(sub, XemsUi.matchWrap(a, 6));
            barBox = new FrameLayout(a);
            barBox.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, dp(5), XemsUi.STROKE, dp(1)));
            bar = new View(a);
            bar.setBackgroundDrawable(XemsUi.rounded(TINT, dp(5), 0, 0));
            barBox.addView(bar, new FrameLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT));
            LinearLayout.LayoutParams bl = new LinearLayout.LayoutParams(dp(260), dp(10));
            bl.topMargin = dp(14);
            left.addView(barBox, bl);
            status = XemsUi.text(a, "", 15, XemsUi.TEXT, true);
            status.setGravity(Gravity.CENTER);
            left.addView(status, XemsUi.matchWrap(a, 12));
            row.addView(left, new LinearLayout.LayoutParams(0, dp(330), 1.25f));

            // right: the words (tap = record that one again) and how easily it accepts
            LinearLayout right = XemsUi.card(a);
            right.setPadding(dp(18), dp(16), dp(18), dp(16));
            right.addView(XemsUi.label(a, tr("Думите · докосни, за да запишеш отново",
                    "Words · tap to record again")));
            words = XemsUi.vertical(a);
            right.addView(words, XemsUi.matchWrap(a, 8));
            right.addView(XemsUi.label(a, tr("Колко лесно приема", "How easily it accepts")), XemsUi.matchWrap(a, 14));
            sensRow = XemsUi.vertical(a);
            right.addView(sensRow, XemsUi.matchWrap(a, 6));
            LinearLayout.LayoutParams rp = new LinearLayout.LayoutParams(0, dp(330), 1f);
            rp.leftMargin = dp(16);
            row.addView(right, rp);
            s.body.addView(row, XemsUi.matchWrap(a, 4));

            hint = XemsUi.text(a, "", 14, XemsUi.MUTED, false);
            hint.setGravity(Gravity.CENTER_VERTICAL);
            s.footer.addView(hint, new LinearLayout.LayoutParams(0, dp(56), 1f));
            go = XemsUi.button(a, "", XemsUi.PRIMARY);
            go.setOnClickListener(new Go(this));
            LinearLayout.LayoutParams gp = new LinearLayout.LayoutParams(dp(290), dp(56));
            gp.leftMargin = dp(16);
            s.footer.addView(go, gp);

            s.dialog.setOnDismissListener(new Dismissed(this));
            VoiceLink.addListener(this);
            render();
            s.dialog.show();
            WearableBlePermissions.ensureConnectPermission(a, new Find(this));
            if (VoiceLink.state() == VoiceLink.READY) {
                VoiceLink.send("list");
            }
            main.postDelayed(new Tick(this), 1000);
        }

        boolean ready() {
            return VoiceLink.state() == VoiceLink.READY;
        }

        boolean allLearned() {
            for (int c : count) {
                if (c < TIMES) {
                    return false;
                }
            }
            return true;
        }

        int indexOf(String a) {
            for (int i = 0; i < ORDER.length; i++) {
                if (ORDER[i].equals(a)) {
                    return i;
                }
            }
            return -1;
        }

        // ------------------------------------------------------------------ render

        void render() {
            if (closed) {
                return;
            }
            boolean r = ready();
            micIcon.setColor(r ? TINT : XemsUi.HINT);
            mic.invalidate();
            barBox.setVisibility(learning != null ? View.VISIBLE : View.INVISIBLE);
            if (!r) {
                hero.setText(tr("Включи чипа", "Switch the module on"));
                hero.setTextSize(40);
                hero.setTextColor(XemsUi.TEXT);
                dots.setText("");
                sub.setText(VoiceLink.state() == VoiceLink.CONNECTING ? tr("Свързвам…", "Connecting…")
                        : tr("Търся го наблизо — нищо не трябва да натискаш", "Looking for it — nothing to press"));
                status.setText("");
            } else if (learning != null) {
                hero.setText(word(learning).toUpperCase());
                hero.setTextSize(word(learning).length() > 8 ? 44 : 60);
                hero.setTextColor(colorOf(learning));
                StringBuilder d = new StringBuilder();
                for (int i = 0; i < TIMES; i++) {
                    d.append(i < got ? "●" : "○").append(i < TIMES - 1 ? "  " : "");
                }
                dots.setText(d.toString());
                sub.setText(tr("Кажи го ясно, малко по-силно, и замълчи за миг",
                        "Say it clearly, a little louder, then pause"));
                status.setText(note != null ? note : tr("Слушам…", "Listening…"));
                status.setTextColor(note != null ? noteColor : XemsUi.MUTED);
            } else if (!allLearned()) {
                hero.setText(tr("Да научим гласа ти", "Let's learn your voice"));
                hero.setTextSize(36);
                hero.setTextColor(XemsUi.TEXT);
                dots.setText("");
                sub.setText(tr("8 думи по 3 пъти · около минута и половина", "8 words, 3 times each · about 90 s"));
                status.setText("");
            } else {
                boolean fresh = heard != null && System.currentTimeMillis() - heardMs < 4000;
                hero.setText(fresh ? heard : tr("Слушам", "Listening"));
                hero.setTextSize(fresh ? 56 : 44);
                hero.setTextColor(fresh ? heardColor : XemsUi.TEXT);
                dots.setText("");
                sub.setText(fresh ? "" : tr("Кажи: „едно, две, три, старт“ · „пауза“ · „стоп“",
                        "Say: one, two, three, start · pause · stop"));
                status.setText(VoiceRemote.last.length() > 0 && !fresh
                        ? tr("Последно: ", "Last: ") + word(VoiceRemote.last) : "");
                status.setTextColor(XemsUi.MUTED);
            }
            renderWords();
            renderSens();
            if (!r) {
                go.setText(tr("Търся чипа…", "Looking…"));
                go.setEnabled(false);
                go.setAlpha(0.45f);
            } else {
                go.setEnabled(true);
                go.setAlpha(1f);
                go.setText(learning != null ? tr("■ Спри записа", "■ Stop recording")
                        : allLearned() ? tr("↻ Научи наново", "↻ Learn again")
                        : tr("▶ Научи гласа ми", "▶ Learn my voice"));
            }
            hint.setText(!r ? tr("Чипът мига синьо, когато е готов.", "The module blinks blue when ready.")
                    : learning != null ? tr("Дума ", "Word ") + (indexOf(learning) + 1) + " / " + ORDER.length
                    : allLearned() ? tr("✓ Работи от всяка страница, с всеки костюм и апарат.",
                    "✓ Works from every page, with every suit and unit.") : "");
        }

        void renderWords() {
            words.removeAllViews();
            LinearLayout line = null;
            for (int i = 0; i < ORDER.length; i++) {
                if (i % 2 == 0) {
                    line = XemsUi.horizontal(a);
                    words.addView(line, XemsUi.matchWrap(a, i == 0 ? 0 : 6));
                }
                String w = ORDER[i];
                boolean done = count[i] >= TIMES;
                String marks = done ? "  ✓" : count[i] > 0 ? "  " + count[i] + "/" + TIMES : "";
                TextView chip = XemsUi.chip(a, word(w) + marks, w.equals(learning) || done && listed,
                        w.equals(learning) ? colorOf(w) : XemsUi.GO);
                chip.setTextSize(13.5f);
                chip.setSingleLine(true);
                chip.setOnClickListener(new Redo(this, w));
                LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, dp(44), 1f);
                if (i % 2 == 1) {
                    lp.leftMargin = dp(8);
                }
                line.addView(chip, lp);
            }
        }

        void renderSens() {
            sensRow.removeAllViews();
            String[] labels = {tr("Строго", "Strict"), tr("Нормално", "Normal"), tr("Лесно", "Easy")};
            int sel = sens < 90 ? 0 : sens > 110 ? 2 : 1;
            sensRow.addView(XemsUi.segmented(a, labels, sel, new Sens(this)));
        }

        // ------------------------------------------------------------------ actions

        void go() {
            if (!ready()) {
                return;
            }
            if (learning != null) {
                stopLearning();
            } else {
                queue.clear();
                for (String w : ORDER) {
                    queue.add(w);
                }
                startLearning();
            }
            render();
        }

        void redo(String w) {
            if (!ready()) {
                return;
            }
            if (learning != null) {
                stopLearning();
            }
            queue.clear();
            queue.add(w);
            startLearning();
            render();
        }

        void startLearning() {
            VoiceLink.send("mute 1");                 // a word said while learning never runs anything
            VoiceLink.send("meter 1");
            nextWord();
        }

        void nextWord() {
            if (queue.isEmpty()) {
                learning = null;
                VoiceLink.send("meter 0");
                VoiceLink.send("mute 0");
                VoiceLink.send("list");
                heard = tr("Готово ✓", "Done ✓");
                heardColor = XemsUi.GO_TEXT;
                heardMs = System.currentTimeMillis();
                render();
                return;
            }
            learning = queue.remove(0);
            got = 0;
            note = null;
            int i = indexOf(learning);
            if (i >= 0) {
                count[i] = 0;
            }
            VoiceLink.send("del " + learning);
            main.postDelayed(new Rec(this), 500);
            render();
        }

        void rec() {
            if (learning != null && !closed) {
                VoiceLink.send("rec " + learning);
            }
        }

        void stopLearning() {
            learning = null;
            queue.clear();
            main.removeCallbacksAndMessages(null);
            main.postDelayed(new Tick(this), 1000);
            VoiceLink.send("meter 0");
            VoiceLink.send("mute 0");
            VoiceLink.send("list");
        }

        void sens(int i) {
            String v = i == 0 ? "0.8" : i == 2 ? "1.3" : "1.0";
            sens = i == 0 ? 80 : i == 2 ? 130 : 100;
            VoiceLink.send("sens " + v);
            render();
        }

        // ------------------------------------------------------------------ the module

        @Override
        public void onVoiceState(int state) {
            if (state != VoiceLink.READY && learning != null) {
                learning = null;
                queue.clear();
            }
            if (state == VoiceLink.READY) {
                VoiceLink.send("list");
            }
            render();
        }

        @Override
        public void onVoiceLine(String line) {
            String[] p = line.split(" ");
            if (line.startsWith("LIST ")) {
                for (int k = 1; k < p.length; k++) {
                    int c = p[k].indexOf(':');
                    if (c > 0) {
                        int i = indexOf(p[k].substring(0, c));
                        if (i >= 0) {
                            count[i] = VoiceLink.parse(p[k].substring(c + 1));
                        }
                    } else if (p[k].startsWith("sens=")) {
                        sens = VoiceLink.parse(p[k].substring(5));
                    }
                }
                listed = true;
            } else if (line.startsWith("REC ") && p.length > 2 && p[1].equals(learning)) {
                if ("ok".equals(p[2])) {
                    got++;
                    int i = indexOf(learning);
                    if (i >= 0) {
                        count[i] = got;
                    }
                    note = "✓ " + tr("Чух", "Got it");
                    noteColor = XemsUi.GO_TEXT;
                    XemsUi.haptic(hero);
                    if (got >= TIMES) {
                        main.postDelayed(new Next(this), 700);
                    } else {
                        main.postDelayed(new Rec(this), 700);
                    }
                } else if ("timeout".equals(p[2])) {
                    note = tr("Не те чух — кажи го пак, малко по-силно", "Didn't hear it — again, a little louder");
                    noteColor = XemsUi.AMBER;
                    main.postDelayed(new Rec(this), 300);
                } else if ("listen".equals(p[2]) && got > 0) {
                    note = null;
                }
            } else if (line.startsWith("LVL ") && p.length > 2) {
                level = VoiceLink.parse(p[1]);
                floor = VoiceLink.parse(p[2]);
                int w = barBox.getWidth();
                int f = Math.max(0, Math.min(w, (level - floor) * w / 40));
                ViewGroup.LayoutParams lp = bar.getLayoutParams();
                lp.width = f;
                bar.setLayoutParams(lp);
                return;
            } else if (line.startsWith("CNT ") && p.length > 1) {
                int n = VoiceLink.parse(p[1]);
                StringBuilder b = new StringBuilder();
                for (int i = 1; i <= n; i++) {
                    b.append(i).append(i < n ? " · " : "");
                }
                heard = b.toString();
                heardColor = TINT;
                heardMs = System.currentTimeMillis();
            } else if (line.startsWith("CMD ") && p.length > 1) {
                heard = word(p[1]).toUpperCase() + " ✓";
                heardColor = colorOf(p[1]);
                heardMs = System.currentTimeMillis();
            } else if (line.startsWith("NOCOUNT")) {
                heard = tr("Първо: едно, две, три", "First: one, two, three");
                heardColor = XemsUi.AMBER;
                heardMs = System.currentTimeMillis();
            } else {
                return;
            }
            render();
        }

        void dismissed() {
            closed = true;
            current = null;
            main.removeCallbacksAndMessages(null);
            VoiceLink.removeListener(this);
            if (learning != null) {
                VoiceLink.send("meter 0");
                VoiceLink.send("mute 0");
            }
        }
    }

    // ------------------------------------------------------------------ named callbacks (dx: no anonymous classes)

    static final class Go implements View.OnClickListener {
        final Page p;

        Go(Page p) {
            this.p = p;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            p.go();
        }
    }

    static final class Redo implements View.OnClickListener {
        final Page p;
        final String w;

        Redo(Page p, String w) {
            this.p = p;
            this.w = w;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            p.redo(w);
        }
    }

    static final class Sens implements XemsUi.OnIndex {
        final Page p;

        Sens(Page p) {
            this.p = p;
        }

        @Override
        public void onIndex(int index) {
            p.sens(index);
        }
    }

    static final class Find implements Runnable {
        final Page p;

        Find(Page p) {
            this.p = p;
        }

        @Override
        public void run() {
            if (!p.closed) {
                VoiceLink.find(p.a);
                p.render();
            }
        }
    }

    static final class Rec implements Runnable {
        final Page p;

        Rec(Page p) {
            this.p = p;
        }

        @Override
        public void run() {
            p.rec();
        }
    }

    static final class Next implements Runnable {
        final Page p;

        Next(Page p) {
            this.p = p;
        }

        @Override
        public void run() {
            if (!p.closed && p.learning != null) {
                p.nextWord();
            }
        }
    }

    /** Once a second: the "heard" word fades back to "Слушам"; looks again for a module while none is linked. */
    static final class Tick implements Runnable {
        final Page p;

        Tick(Page p) {
            this.p = p;
        }

        @Override
        public void run() {
            if (p.closed) {
                return;
            }
            if (VoiceLink.state() == VoiceLink.OFF) {
                VoiceLink.find(p.a);
            }
            if (p.learning == null && p.heard != null && System.currentTimeMillis() - p.heardMs >= 4000) {
                p.heard = null;                     // back to "Слушам"
                p.render();
            } else if (p.learning == null && !p.ready()) {
                p.render();
            }
            p.main.postDelayed(this, 1000);
        }
    }

    static final class Dismissed implements DialogInterface.OnDismissListener {
        final Page p;

        Dismissed(Page p) {
            this.p = p;
        }

        @Override
        public void onDismiss(DialogInterface d) {
            p.dismissed();
        }
    }
}
