package com.isaigu.gymapp.ai;

import android.content.Context;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import com.isaigu.gymapp.widget.XemsUi;

import java.util.ArrayList;
import java.util.List;

/**
 * The AI's own workout on the training screen (owner, 1.1.547: "it came out as a small window with no buttons —
 * no chat, no voice, nothing like the other training with its exercises"). In the board's place, as the ready
 * programs: left the exercise now (big name, how to do it, the set and its clock, what is next), right the whole
 * workout as a list (done ✓, now highlighted), under them the impulse line; the AI's coach bar below (AutoBoard).
 * The map engine (MapRunner) runs it; this only shows it.
 */
public final class AiMapBoard {
    private AiMapBoard() {}

    private static TextView title;
    private static TextView left;
    private static TextView name;
    private static TextView how;
    private static TextView setLine;
    private static TextView clock;
    private static TextView next;
    private static TextView go;
    private static LinearLayout list;
    private static ImpulseMapView line;
    private static int shownIdx = -2;

    static void build(Context c, LinearLayout content) {
        XemsUi.init(c);
        shownIdx = -2;
        LinearLayout top = XemsUi.horizontal(c);

        // ---- the exercise now
        LinearLayout now = AutoUi.nativeCard(c);
        now.setPadding(XemsUi.dp(c, 20), XemsUi.dp(c, 14), XemsUi.dp(c, 20), XemsUi.dp(c, 14));
        LinearLayout head = XemsUi.horizontal(c);
        head.setGravity(Gravity.CENTER_VERTICAL);
        TextView badge = XemsUi.badge(c, "✦ AI", XemsUi.ACCENT);
        head.addView(badge);
        title = XemsUi.text(c, "", 14, XemsUi.MUTED, true);
        title.setMaxLines(1);
        title.setEllipsize(TextUtils.TruncateAt.END);
        LinearLayout.LayoutParams tp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        tp.leftMargin = XemsUi.dp(c, 10);
        head.addView(title, tp);
        left = XemsUi.text(c, "", 14, XemsUi.MUTED, true);
        head.addView(left);
        go = XemsUi.button(c, "▶  " + AiText.t("Старт", "Start"), XemsUi.PRIMARY);
        go.setOnClickListener(new Go());
        LinearLayout.LayoutParams gp = new LinearLayout.LayoutParams(XemsUi.dp(c, 140), XemsUi.dp(c, 44));
        gp.leftMargin = XemsUi.dp(c, 12);
        head.addView(go, gp);
        TextView stop = XemsUi.button(c, "■  " + AiText.t("Стоп", "Stop"), XemsUi.DANGER_BTN);
        stop.setOnClickListener(new Stop());
        LinearLayout.LayoutParams sp = new LinearLayout.LayoutParams(XemsUi.dp(c, 120), XemsUi.dp(c, 44));
        sp.leftMargin = XemsUi.dp(c, 10);
        head.addView(stop, sp);
        now.addView(head, XemsUi.matchWrap(c, 0));

        LinearLayout mid = XemsUi.horizontal(c);
        mid.setGravity(Gravity.CENTER_VERTICAL);
        LinearLayout col = XemsUi.vertical(c);
        name = XemsUi.text(c, "", 30, XemsUi.TEXT, true);
        name.setMaxLines(2);
        col.addView(name);
        how = XemsUi.text(c, "", 17, XemsUi.TEXT, false);
        how.setMaxLines(3);
        col.addView(how, XemsUi.matchWrap(c, 6));
        next = XemsUi.text(c, "", 15, XemsUi.MUTED, true);
        next.setMaxLines(1);
        next.setEllipsize(TextUtils.TruncateAt.END);
        col.addView(next, XemsUi.matchWrap(c, 10));
        mid.addView(col, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        LinearLayout clk = XemsUi.vertical(c);
        clk.setGravity(Gravity.CENTER);
        clock = XemsUi.text(c, "", 54, XemsUi.TEXT, true);
        clock.setGravity(Gravity.CENTER);
        clock.setMaxLines(1);
        clk.addView(clock);
        setLine = XemsUi.text(c, "", 15, XemsUi.GO_TEXT, true);
        setLine.setGravity(Gravity.CENTER);
        clk.addView(setLine);
        LinearLayout.LayoutParams cp = new LinearLayout.LayoutParams(XemsUi.dp(c, 200), ViewGroup.LayoutParams.WRAP_CONTENT);
        cp.leftMargin = XemsUi.dp(c, 16);
        mid.addView(clk, cp);
        now.addView(mid, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));

        LinearLayout strip = new LinearLayout(c);
        strip.setBackgroundDrawable(XemsUi.rounded(ProgramArt.TILE, XemsUi.dp(c, 10), 0, 0));
        line = new ImpulseMapView(c);
        Workout w = MapRunner.map();
        if (w != null) {
            line.setMap(w, false);
        }
        strip.addView(line, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, XemsUi.dp(c, 36)));
        now.addView(strip, XemsUi.matchWrap(c, 8));
        top.addView(now, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1.7f));

        // ---- the whole workout
        LinearLayout all = AutoUi.nativeCard(c);
        all.setPadding(XemsUi.dp(c, 16), XemsUi.dp(c, 12), XemsUi.dp(c, 16), XemsUi.dp(c, 12));
        all.addView(AiWizard.label(c, AiText.t("Тренировката", "The workout")));
        ScrollView sc = new ScrollView(c);
        list = XemsUi.vertical(c);
        sc.addView(list);
        all.addView(sc, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
        LinearLayout.LayoutParams ap = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f);
        ap.leftMargin = XemsUi.dp(c, 10);
        top.addView(all, ap);

        content.addView(top, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
        update();
    }

    static void forget() {
        title = null;
        name = null;
        list = null;
        line = null;
    }

    /** MapRunner's tick (4× a second): the exercise, the clock, the list's mark. */
    static void update() {
        if (name == null) {
            return;
        }
        Workout w = MapRunner.map();
        MapClock k = MapRunner.clock();
        if (w == null || k == null) {
            return;
        }
        title.setText(w.name);
        boolean waiting = MapRunner.isWaiting();
        go.setVisibility(waiting ? View.VISIBLE : View.GONE);
        int idx = waiting ? -1 : k.getIndex();
        Workout.Block b = waiting ? null : k.block();
        left.setText(AiText.t("остават ", "left ") + AiText.mmss((int) Math.max(0, w.totalSeconds() - k.position())));
        line.setPlayhead((float) k.position());
        if (waiting) {
            name.setText(AiText.t("Качи силата", "Raise the strength"));
            how.setText(AiText.t("С + до силно, но приятно усещане (6–7 от 10) — после ▶ Старт. Или кажи „Окей тренер, старт“.",
                    "With + to strong but pleasant (6–7 of 10) — then ▶ Start. Or say “Trainer, start”."));
            clock.setText("—");
            setLine.setText("");
            Workout.Block f = firstExercise(w, 0);
            next.setText(f != null ? AiText.t("Първо: ", "First: ") + label(f) : "");
        } else if (b != null && isBreak(b)) {
            name.setText(AiWorkout.REST_LABEL);
            how.setText(AiText.t("Лек импулс за отпускане — дишай спокойно, раздвижи се на място.",
                    "A light impulse to let go — breathe, move gently on the spot."));
            clock.setText(AiText.mmss((int) Math.max(0, (b.isRest() ? k.restLength() : b.seconds()) - k.getBlockS())));
            setLine.setText("");
            Workout.Block f = firstExercise(w, idx + 1);
            next.setText(f != null ? AiText.t("Следва: ", "Next: ") + label(f) : "");
        } else if (b != null) {
            name.setText(label(b));
            how.setText(b.how != null ? b.how : "");
            int[] set = setOf(w, idx);
            clock.setText(AiText.mmss((int) Math.max(0, blockLength(b) - k.getBlockS())));
            setLine.setText(set[1] > 1 ? AiText.t("серия ", "set ") + set[0] + AiText.t(" от ", " of ") + set[1] : "");
            Workout.Block f = firstOther(w, idx, label(b));
            next.setText(f != null ? AiText.t("Следва: ", "Next: ") + label(f) : "");
        }
        if (idx != shownIdx) {
            shownIdx = idx;
            fillList(w, idx);
        }
    }

    /** The AI's items, each once: name, sets × seconds; done ✓, the one now highlighted. */
    private static void fillList(Workout w, int idx) {
        Context c = list.getContext();
        list.removeAllViews();
        Workout.Block cur = idx >= 0 && idx < w.blocks.size() ? w.blocks.get(idx) : null;
        String now = cur != null && !isBreak(cur) ? label(cur) : null;
        if (cur != null && isBreak(cur)) {
            Workout.Block f = firstExercise(w, idx + 1);
            now = f != null ? label(f) : null;
        }
        List<String> seen = new ArrayList<String>();
        boolean passed = idx >= 0;
        for (int i = 0; i < w.blocks.size(); i++) {
            Workout.Block x = w.blocks.get(i);
            if (isBreak(x) || seen.contains(label(x))) {
                continue;
            }
            String n = label(x);
            seen.add(n);
            boolean isNow = n.equals(now);
            if (isNow) {
                passed = false;
            }
            int sets = 0;
            for (Workout.Block y : w.blocks) {
                if (!isBreak(y) && n.equals(label(y))) {
                    sets++;
                }
            }
            LinearLayout row = XemsUi.vertical(c);
            row.setPadding(XemsUi.dp(c, 12), XemsUi.dp(c, 8), XemsUi.dp(c, 12), XemsUi.dp(c, 8));
            if (isNow) {
                row.setBackgroundDrawable(XemsUi.rounded(XemsUi.alpha(XemsUi.ACCENT, 0x26), XemsUi.dp(c, 12),
                        XemsUi.ACCENT, XemsUi.dp(c, 2)));
            }
            boolean done = passed && idx >= 0;
            TextView t = XemsUi.text(c, (done ? "✓  " : isNow ? "▶  " : "") + n, 16,
                    done ? XemsUi.MUTED : XemsUi.TEXT, true);
            t.setMaxLines(1);
            t.setEllipsize(TextUtils.TruncateAt.END);
            row.addView(t);
            int len = blockLength(x);
            row.addView(XemsUi.text(c, (sets > 1 ? sets + " × " : "") + (len >= 120 ? Math.round(len / 60.0)
                    + AiText.t(" мин", " min") : len + " s"), 13, XemsUi.MUTED, false));
            list.addView(row, XemsUi.matchWrap(c, 4));
        }
    }

    /** A rest, or the AI training's active recovery between sets (no stop: AiWorkout.rest). */
    static boolean isBreak(Workout.Block b) {
        return b.isRest() || AiWorkout.REST_LABEL.equals(b.label);
    }

    static String label(Workout.Block b) {
        return b.label != null && b.label.length() > 0 ? b.label : b.hasExercise() ? AutoTemplates.name(b.ex)
                : AiText.t("Импулс", "Impulse");
    }

    private static int blockLength(Workout.Block b) {
        return Math.max(1, b.seconds());
    }

    private static Workout.Block firstExercise(Workout w, int from) {
        for (int i = Math.max(0, from); i < w.blocks.size(); i++) {
            if (!isBreak(w.blocks.get(i))) {
                return w.blocks.get(i);
            }
        }
        return null;
    }

    private static Workout.Block firstOther(Workout w, int from, String now) {
        for (int i = Math.max(0, from + 1); i < w.blocks.size(); i++) {
            Workout.Block x = w.blocks.get(i);
            if (!isBreak(x) && !label(x).equals(now)) {
                return x;
            }
        }
        return null;
    }

    /** {set now, sets of this exercise}. */
    private static int[] setOf(Workout w, int idx) {
        String n = label(w.blocks.get(idx));
        int k = 0;
        int all = 0;
        for (int i = 0; i < w.blocks.size(); i++) {
            Workout.Block x = w.blocks.get(i);
            if (!isBreak(x) && n.equals(label(x))) {
                all++;
                if (i <= idx) {
                    k = all;
                }
            }
        }
        return new int[] {k, all};
    }

    static final class Go implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            MapRunner.go();
        }
    }

    static final class Stop implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            MapRunner.stop();
        }
    }
}
