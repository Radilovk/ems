package com.isaigu.gymapp.ai;

import android.app.Activity;
import android.content.Context;
import android.text.Editable;
import android.text.InputType;
import android.text.TextWatcher;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.widget.XemsUi;

import java.util.ArrayList;
import java.util.List;

/**
 * "Тренировки" (main menu): the ready programs and the studio's own workouts; build one by tapping exercises from
 * the library the admin enabled, set sets × repetitions, drag to reorder, tie it to a goal; start it with the
 * Smart Session. Three views in one sheet: list → workout → exercise picker. docs/xems-workouts.md
 */
public final class WorkoutsUi {
    private WorkoutsUi() {}

    static final int LIST = 0;
    static final int EDIT = 1;
    static final int PICK = 2;

    // actions
    static final int A_NEW = 1;
    static final int A_OPEN = 2;
    static final int A_PRESET = 3;
    static final int A_SAVE = 4;
    static final int A_START = 5;
    static final int A_DELETE = 6;
    static final int A_COPY = 7;
    static final int A_ADD = 8;
    static final int A_PICKED = 9;
    static final int A_PICK_DONE = 10;
    static final int A_REMOVE = 11;
    static final int A_BACK = 12;
    static final int A_GOAL = 13;
    static final int A_FOCUS = 14;
    static final int A_ZONE = 15;
    static final int A_SETS = 16;
    static final int A_REPS = 17;
    static final int A_DELETE_SURE = 18;

    static final String[] ZONES = {"all", "abs", "glutes", "legs", "back", "chest", "arms", "shoulders", "cardio", "stretch"};
    static final String[] FOCUS = {"abs", "glutes", "legs", "arms", "back", "chest"};

    private static XemsUi.Shell shell;
    private static Activity host;
    private static int screen;
    private static Workout editing;
    private static boolean dirty;
    private static boolean confirmDelete;
    private static String zone = "all";
    private static String query = "";
    private static String preview;
    private static LinearLayout itemsBox;
    private static LinearLayout pickGrid;
    private static TextView summary;
    private static TextView saveBtn;

    static String zoneName(String z) {
        if ("abs".equals(z)) return AiText.t("Корем", "Abs");
        if ("glutes".equals(z)) return AiText.t("Седалище", "Glutes");
        if ("legs".equals(z)) return AiText.t("Бедра", "Legs");
        if ("back".equals(z)) return AiText.t("Гръб", "Back");
        if ("chest".equals(z)) return AiText.t("Гърди", "Chest");
        if ("arms".equals(z)) return AiText.t("Ръце", "Arms");
        if ("shoulders".equals(z)) return AiText.t("Рамене", "Shoulders");
        if ("cardio".equals(z)) return AiText.t("Кардио", "Cardio");
        if ("stretch".equals(z)) return AiText.t("Разтягане", "Stretching");
        return AiText.t("Всички", "All");
    }

    static String goalName(String g) {
        return Workout.GOAL_FAT.equals(g) ? AiText.t("Отслабване", "Fat loss") : AiText.t("Стягане", "Toning");
    }

    static int goalColor(String g) {
        return Workout.GOAL_FAT.equals(g) ? XemsUi.ORANGE : XemsUi.GO;
    }

    // ================================================================ open

    public static void open(Activity a) {
        try {
            ExerciseLibrary.load(a);
            ExerciseFigure.preload(a);
            ExerciseLibrary.sync(a, false);
            host = a;
            if (shell == null || !shell.dialog.isShowing()) {
                shell = XemsUi.shell(a, "", "", 1180);
                shell.dialog.show();
            }
            go(LIST);
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("WorkoutsUi.open", t);
        }
    }

    static void go(int s) {
        screen = s;
        Context c = shell.dialog.getContext();
        shell.body.removeAllViews();
        shell.footer.removeAllViews();
        itemsBox = null;
        saveBtn = null;
        pickGrid = null;
        summary = null;
        if (s == LIST) {
            screenList(c);
        } else if (s == EDIT) {
            screenEdit(c);
        } else {
            screenPick(c);
        }
        XemsUi.fitHeight(host, shell, 0.94f);
        shell.scroll.scrollTo(0, 0);
    }

    // ================================================================ list

    private static void screenList(Context c) {
        shell.title.setText(AiText.t("Тренировки", "Workouts"));
        shell.subtitle.setText(AiText.t("Готовите програми и твоите тренировки — докосни, за да видиш или пуснеш с AI.",
                "Ready programs and your workouts — tap to see or start with AI."));
        shell.subtitle.setVisibility(View.VISIBLE);
        LinearLayout body = shell.body;

        List<Workout> own = WorkoutStore.own(c);
        if (!own.isEmpty()) {
            body.addView(XemsUi.label(c, AiText.t("Твоите", "Yours")), XemsUi.matchWrap(c, 6));
            grid(c, body, own, A_OPEN);
        }
        body.addView(XemsUi.label(c, AiText.t("Готови програми", "Ready programs")), XemsUi.matchWrap(c, own.isEmpty() ? 6 : 18));
        grid(c, body, WorkoutStore.presets(), A_PRESET);

        int n = ExerciseLibrary.enabled(c).size();
        int wait = ExerciseLibrary.pending(c);
        TextView lib = XemsUi.text(c, AiText.t("Упражнения в каталога: ", "Exercises in the catalog: ") + n
                + (wait > 0 ? AiText.t(" · още " + wait + " се изтеглят", " · " + wait + " more downloading") : ""),
                12.5f, XemsUi.HINT, false);
        lib.setPadding(0, XemsUi.dp(c, 14), 0, 0);
        body.addView(lib);

        TextView add = XemsUi.button(c, AiText.t("+  Нова тренировка", "+  New workout"), XemsUi.PRIMARY);
        add.setOnClickListener(new Act(A_NEW, 0));
        shell.footer.addView(new View(c), new LinearLayout.LayoutParams(0, 1, 1f));
        shell.footer.addView(add, new LinearLayout.LayoutParams(XemsUi.dp(c, 300), XemsUi.dp(c, 56)));
    }

    /** Workout cards, two per row. */
    private static void grid(Context c, LinearLayout body, List<Workout> list, int action) {
        LinearLayout row = null;
        for (int i = 0; i < list.size(); i++) {
            if (i % 2 == 0) {
                row = XemsUi.horizontal(c);
                body.addView(row, XemsUi.matchWrap(c, i == 0 ? 8 : 12));
            }
            View card = workoutCard(c, list.get(i));
            card.setOnClickListener(new Act(action, i));
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f);
            if (i % 2 == 1) {
                lp.leftMargin = XemsUi.dp(c, 12);
            }
            row.addView(card, lp);
        }
        if (list.size() % 2 == 1 && row != null) {
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, 1, 1f);
            lp.leftMargin = XemsUi.dp(c, 12);
            row.addView(new View(c), lp);
        }
    }

    private static View workoutCard(Context c, Workout w) {
        LinearLayout card = XemsUi.card(c);
        card.setOrientation(LinearLayout.HORIZONTAL);
        card.setGravity(Gravity.CENTER_VERTICAL);
        // the first exercises as still figures on the dark tile
        LinearLayout strip = XemsUi.horizontal(c);
        strip.setGravity(Gravity.CENTER);
        strip.setBackgroundDrawable(XemsUi.rounded(ProgramArt.TILE, XemsUi.dp(c, 14), 0, 0));
        strip.setPadding(XemsUi.dp(c, 6), XemsUi.dp(c, 6), XemsUi.dp(c, 6), XemsUi.dp(c, 6));
        for (int k = 0; k < Math.min(3, w.items.size()); k++) {
            ExerciseFigure f = new ExerciseFigure(c);
            f.setGlow(false);
            f.setStill(true);
            f.setColor(goalColor(w.goal) == XemsUi.ORANGE ? ExerciseFigure.COLOR_F : ExerciseFigure.COLOR);
            f.setExercise(w.items.get(k).ex);
            strip.addView(f, new LinearLayout.LayoutParams(XemsUi.dp(c, 58), XemsUi.dp(c, 58)));
        }
        card.addView(strip, new LinearLayout.LayoutParams(XemsUi.dp(c, 190), XemsUi.dp(c, 72)));
        LinearLayout text = XemsUi.vertical(c);
        text.setPadding(XemsUi.dp(c, 14), 0, 0, 0);
        TextView name = XemsUi.text(c, w.name, 17, XemsUi.TEXT, true);
        name.setMaxLines(2);
        text.addView(name);
        LinearLayout meta = XemsUi.horizontal(c);
        meta.setGravity(Gravity.CENTER_VERTICAL);
        meta.setPadding(0, XemsUi.dp(c, 6), 0, 0);
        meta.addView(XemsUi.badge(c, goalName(w.goal), goalColor(w.goal)));
        TextView m = XemsUi.text(c, "  " + w.items.size() + AiText.t(" упр. · ≈ ", " ex. · ≈ ") + w.minutes()
                + AiText.t(" мин", " min"), 13, XemsUi.MUTED, false);
        meta.addView(m);
        text.addView(meta);
        card.addView(text, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        XemsUi.pressable(card);
        return card;
    }

    // ================================================================ one workout

    private static void screenEdit(final Context c) {
        final Workout w = editing;
        boolean ro = w.preset;
        shell.title.setText(ro ? w.name : (w.name.length() > 0 ? w.name : AiText.t("Нова тренировка", "New workout")));
        shell.subtitle.setText(ro ? AiText.t("Готова програма — копирай я, за да я промениш.", "Ready program — copy it to change it.")
                : AiText.t("Докосни упражнение, за да го добавиш; влачи ≡ за подредба.", "Tap exercises to add; drag ≡ to reorder."));
        shell.subtitle.setVisibility(View.VISIBLE);
        LinearLayout body = shell.body;

        if (!ro) {
            EditText name = new EditText(c);
            name.setSingleLine(true);
            name.setText(w.name);
            name.setHint(AiText.t("Име, напр. „Стегнато седалище“", "Name, e.g. “Strong glutes”"));
            name.setTextSize(19);
            name.setTextColor(XemsUi.TEXT);
            name.setHintTextColor(XemsUi.HINT);
            name.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_CAP_SENTENCES);
            name.setImeOptions(EditorInfo.IME_ACTION_DONE);
            name.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(c, 14), XemsUi.STROKE, XemsUi.dp(c, 1)));
            name.setPadding(XemsUi.dp(c, 16), XemsUi.dp(c, 12), XemsUi.dp(c, 16), XemsUi.dp(c, 12));
            name.addTextChangedListener(new NameWatch());
            body.addView(name, XemsUi.matchWrap(c, 4));
        }

        // goal + focus in one row: what the workout is for
        LinearLayout tie = XemsUi.horizontal(c);
        tie.setGravity(Gravity.CENTER_VERTICAL);
        if (ro) {
            tie.addView(XemsUi.badge(c, goalName(w.goal), goalColor(w.goal)));
        } else {
            LinearLayout seg = XemsUi.segmented(c, new String[] {goalName(Workout.GOAL_TONE), goalName(Workout.GOAL_FAT)},
                    Workout.GOAL_FAT.equals(w.goal) ? 1 : 0, new Act(A_GOAL, 0));
            tie.addView(seg, new LinearLayout.LayoutParams(XemsUi.dp(c, 320), ViewGroup.LayoutParams.WRAP_CONTENT));
        }
        LinearLayout chips = XemsUi.horizontal(c);
        chips.setPadding(XemsUi.dp(c, 14), 0, 0, 0);
        for (int i = 0; i < FOCUS.length; i++) {
            boolean on = w.focus.contains(FOCUS[i]);
            if (ro && !on) {
                continue;
            }
            TextView ch = XemsUi.chip(c, zoneName(FOCUS[i]), on, XemsUi.GO_TEXT);
            if (!ro) {
                ch.setOnClickListener(new Act(A_FOCUS, i));
            }
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT);
            lp.rightMargin = XemsUi.dp(c, 6);
            chips.addView(ch, lp);
        }
        tie.addView(chips);
        body.addView(tie, XemsUi.matchWrap(c, 12));

        summary = XemsUi.text(c, "", 13.5f, XemsUi.MUTED, false);
        body.addView(summary, XemsUi.matchWrap(c, 12));
        refreshSummary();

        itemsBox = XemsUi.vertical(c);
        body.addView(itemsBox, XemsUi.matchWrap(c, 2));
        for (int i = 0; i < w.items.size(); i++) {
            itemsBox.addView(itemRow(c, w, i, ro), XemsUi.matchWrap(c, 8));
        }
        if (w.items.isEmpty()) {
            TextView empty = XemsUi.text(c, AiText.t("Още няма упражнения — добави първото.", "No exercises yet — add the first one."),
                    15, XemsUi.MUTED, false);
            empty.setGravity(Gravity.CENTER);
            empty.setPadding(0, XemsUi.dp(c, 24), 0, XemsUi.dp(c, 12));
            itemsBox.addView(empty, XemsUi.matchWrap(c, 0));
        }
        if (!ro) {
            TextView add = XemsUi.button(c, AiText.t("+  Добави упражнения", "+  Add exercises"), XemsUi.SECONDARY);
            add.setOnClickListener(new Act(A_ADD, 0));
            body.addView(add, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, XemsUi.dp(c, 54)));
            ((LinearLayout.LayoutParams) add.getLayoutParams()).topMargin = XemsUi.dp(c, 12);
        }

        // footer: back · (delete) · save / copy · start
        TextView back = XemsUi.button(c, AiText.t("‹  Назад", "‹  Back"), XemsUi.GHOST);
        back.setOnClickListener(new Act(A_BACK, 0));
        shell.footer.addView(back, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, XemsUi.dp(c, 54)));
        if (!ro && WorkoutStore.get(c, w.id) != null) {
            TextView del = XemsUi.button(c, confirmDelete ? AiText.t("Изтрий завинаги", "Delete for good")
                    : AiText.t("Изтрий", "Delete"), XemsUi.GHOST);
            del.setTextColor(XemsUi.DANGER);
            del.setOnClickListener(new Act(confirmDelete ? A_DELETE_SURE : A_DELETE, 0));
            shell.footer.addView(del, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, XemsUi.dp(c, 54)));
        }
        shell.footer.addView(new View(c), new LinearLayout.LayoutParams(0, 1, 1f));
        TextView mid = XemsUi.button(c, ro ? AiText.t("Копирай и промени", "Copy and change")
                : (dirty ? AiText.t("Запази", "Save") : AiText.t("Запазено ✓", "Saved ✓")), XemsUi.SECONDARY);
        mid.setOnClickListener(new Act(ro ? A_COPY : A_SAVE, 0));
        saveBtn = ro ? null : mid;
        mid.setEnabled(ro || (dirty && !w.items.isEmpty()));
        mid.setAlpha(mid.isEnabled() ? 1f : 0.55f);
        shell.footer.addView(mid, new LinearLayout.LayoutParams(XemsUi.dp(c, 220), XemsUi.dp(c, 54)));
        TextView start = XemsUi.button(c, AiText.t("▶  Старт с AI", "▶  Start with AI"), XemsUi.PRIMARY);
        start.setOnClickListener(new Act(A_START, 0));
        start.setEnabled(!w.items.isEmpty());
        start.setAlpha(start.isEnabled() ? 1f : 0.55f);
        LinearLayout.LayoutParams sp = new LinearLayout.LayoutParams(XemsUi.dp(c, 240), XemsUi.dp(c, 54));
        sp.leftMargin = XemsUi.dp(c, 10);
        shell.footer.addView(start, sp);
    }

    static void refreshSummary() {
        if (summary == null || editing == null) {
            return;
        }
        Workout w = editing;
        String t = w.items.size() + AiText.t(" упражнения · ", " exercises · ") + w.totalSets()
                + AiText.t(" серии в кръгове · ≈ ", " sets in rounds · ≈ ") + w.minutes()
                + AiText.t(" мин с AI", " min with AI");
        if (w.longerThanSession()) {
            t += AiText.t("\nПо-дълга от една AI сесия (" + w.sessionMinutes() + " мин): ще минат кръговете, които се"
                    + " поберат — всяко упражнение поне веднъж, ако първият кръг се побира.",
                    "\nLonger than one AI session (" + w.sessionMinutes() + " min): the rounds that fit are done — every"
                    + " exercise at least once if the first round fits.");
            summary.setTextColor(XemsUi.AMBER);
        } else {
            summary.setTextColor(XemsUi.MUTED);
        }
        summary.setText(t);
    }

    /** One exercise: ≡ drag handle, still figure, name, sets and repetitions, remove. */
    private static View itemRow(Context c, Workout w, int i, boolean ro) {
        Workout.Item it = w.items.get(i);
        ExerciseLibrary.Entry e = ExerciseLibrary.get(c, it.ex);
        LinearLayout row = XemsUi.card(c);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER_VERTICAL);
        row.setPadding(XemsUi.dp(c, 8), XemsUi.dp(c, 8), XemsUi.dp(c, 12), XemsUi.dp(c, 8));
        row.setTag(it);
        if (!ro) {
            TextView handle = XemsUi.text(c, "≡", 26, XemsUi.HINT, true);
            handle.setGravity(Gravity.CENTER);
            handle.setOnTouchListener(new Drag(row));
            row.addView(handle, new LinearLayout.LayoutParams(XemsUi.dp(c, 44), XemsUi.dp(c, 64)));
        }
        LinearLayout tile = new LinearLayout(c);
        tile.setBackgroundDrawable(XemsUi.rounded(ProgramArt.TILE, XemsUi.dp(c, 12), 0, 0));
        ExerciseFigure f = new ExerciseFigure(c);
        f.setGlow(false);
        f.setStill(true);
        f.setExercise(it.ex);
        tile.addView(f, new LinearLayout.LayoutParams(XemsUi.dp(c, 92), XemsUi.dp(c, 68)));
        row.addView(tile);
        LinearLayout text = XemsUi.vertical(c);
        text.setPadding(XemsUi.dp(c, 14), 0, XemsUi.dp(c, 8), 0);
        TextView name = XemsUi.text(c, e != null ? e.name() : AutoTemplates.name(it.ex), 16, XemsUi.TEXT, true);
        name.setMaxLines(2);
        text.addView(name);
        TextView sub = XemsUi.text(c, e != null ? zoneName(e.zone) + " · " + e.eq : "", 12.5f, XemsUi.MUTED, false);
        text.addView(sub);
        row.addView(text, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        boolean hold = e != null && e.isHold();
        if (ro) {
            row.addView(XemsUi.text(c, it.sets + " × " + it.reps + (hold ? AiText.t(" задърж.", " holds")
                    : AiText.t(" повт.", " reps")), 17, XemsUi.TEXT, true));
        } else {
            row.addView(mini(c, AiText.t("серии", "sets"), it.sets, new Act(A_SETS, 0), row));
            View reps = mini(c, hold ? AiText.t("задържания", "holds") : AiText.t("повторения", "reps"), it.reps,
                    new Act(A_REPS, 0), row);
            LinearLayout.LayoutParams rp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT);
            rp.leftMargin = XemsUi.dp(c, 10);
            row.addView(reps, rp);
            TextView x = XemsUi.iconButton(c, "✕", XemsUi.SURFACE, XemsUi.MUTED, 36);
            Act rm = new Act(A_REMOVE, 0);
            rm.row = row;
            x.setOnClickListener(rm);
            LinearLayout.LayoutParams xp = new LinearLayout.LayoutParams(XemsUi.dp(c, 36), XemsUi.dp(c, 36));
            xp.leftMargin = XemsUi.dp(c, 12);
            row.addView(x, xp);
        }
        return row;
    }

    /** Compact − value + with a caption; holding repeats. */
    private static View mini(Context c, String caption, int value, Act act, View row) {
        LinearLayout col = XemsUi.vertical(c);
        col.setGravity(Gravity.CENTER_HORIZONTAL);
        LinearLayout box = XemsUi.horizontal(c);
        box.setGravity(Gravity.CENTER_VERTICAL);
        box.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(c, 22), XemsUi.STROKE, XemsUi.dp(c, 1)));
        box.setPadding(XemsUi.dp(c, 3), XemsUi.dp(c, 3), XemsUi.dp(c, 3), XemsUi.dp(c, 3));
        TextView minus = XemsUi.iconButton(c, "−", XemsUi.CARD, XemsUi.TEXT, 38);
        TextView plus = XemsUi.iconButton(c, "+", XemsUi.CARD, XemsUi.TEXT, 38);
        TextView v = XemsUi.text(c, String.valueOf(value), 19, XemsUi.TEXT, true);
        v.setGravity(Gravity.CENTER);
        act.row = row;
        act.value = v;
        XemsUi.repeatOnHold(minus, act, -1);
        XemsUi.repeatOnHold(plus, act, +1);
        box.addView(minus);
        box.addView(v, new LinearLayout.LayoutParams(XemsUi.dp(c, 44), ViewGroup.LayoutParams.WRAP_CONTENT));
        box.addView(plus);
        col.addView(box);
        TextView cap = XemsUi.text(c, caption, 11, XemsUi.HINT, false);
        cap.setPadding(0, XemsUi.dp(c, 3), 0, 0);
        col.addView(cap);
        return col;
    }

    /** Drag by the ≡ handle: the row follows the finger; neighbours step aside as it passes their middle. */
    static final class Drag implements View.OnTouchListener {
        private final View row;
        private float downY;

        Drag(View row) {
            this.row = row;
        }

        @Override
        public boolean onTouch(View v, MotionEvent e) {
            LinearLayout box = itemsBox;
            if (box == null || editing == null) {
                return false;
            }
            Context c = v.getContext();
            int gap = XemsUi.dp(c, 8);
            switch (e.getActionMasked()) {
                case MotionEvent.ACTION_DOWN:
                    downY = e.getRawY();
                    for (ViewParent p = v.getParent(); p != null; p = p.getParent()) {
                        p.requestDisallowInterceptTouchEvent(true);
                    }
                    row.setElevation(XemsUi.dp(c, 10));
                    row.animate().scaleX(1.015f).scaleY(1.015f).setDuration(120).start();
                    XemsUi.haptic(v);
                    return true;
                case MotionEvent.ACTION_MOVE: {
                    float dy = e.getRawY() - downY;
                    int idx = box.indexOfChild(row);
                    if (dy > 0 && idx < box.getChildCount() - 1) {
                        View next = box.getChildAt(idx + 1);
                        int step = next.getHeight() + gap;
                        if (dy > step / 2f) {
                            box.removeView(next);                   // the neighbour moves up, the dragged row stays attached
                            box.addView(next, idx, XemsUi.matchWrap(c, 8));
                            editing.move(idx, idx + 1);
                            downY += step;
                            dy -= step;
                            dirty = true;
                        }
                    } else if (dy < 0 && idx > 0) {
                        View prev = box.getChildAt(idx - 1);
                        int step = prev.getHeight() + gap;
                        if (-dy > step / 2f) {
                            box.removeView(prev);
                            box.addView(prev, idx, XemsUi.matchWrap(c, 8));
                            editing.move(idx, idx - 1);
                            downY -= step;
                            dy += step;
                            dirty = true;
                        }
                    }
                    row.setTranslationY(dy);
                    return true;
                }
                case MotionEvent.ACTION_UP:
                case MotionEvent.ACTION_CANCEL:
                    row.animate().translationY(0).scaleX(1f).scaleY(1f).setDuration(160).start();
                    row.setElevation(0);
                    if (dirty) {
                        refreshFooter();
                    }
                    return true;
                default:
                    return true;
            }
        }
    }

    /** Save turns active after a change (without rebuilding the list mid-edit). */
    static void refreshFooter() {
        if (shell == null || screen != EDIT) {
            return;
        }
        if (saveBtn != null) {
            saveBtn.setText(AiText.t("Запази", "Save"));
            saveBtn.setEnabled(!editing.items.isEmpty());
            saveBtn.setAlpha(saveBtn.isEnabled() ? 1f : 0.55f);
        }
        refreshSummary();
    }

    static final class NameWatch implements TextWatcher {
        @Override
        public void beforeTextChanged(CharSequence s, int a, int b, int c) {}

        @Override
        public void onTextChanged(CharSequence s, int a, int b, int c) {}

        @Override
        public void afterTextChanged(Editable s) {
            if (editing != null && !s.toString().equals(editing.name)) {
                editing.name = s.toString();
                dirty = true;
                refreshFooter();
            }
        }
    }

    // ================================================================ picker

    private static void screenPick(Context c) {
        shell.title.setText(AiText.t("Добави упражнения", "Add exercises"));
        shell.subtitle.setText(AiText.t("Докосни, за да добавиш — отдолу е описанието на последното.",
                "Tap to add — the last one's description is below."));
        shell.subtitle.setVisibility(View.VISIBLE);
        LinearLayout body = shell.body;

        EditText q = new EditText(c);
        q.setSingleLine(true);
        q.setText(query);
        q.setHint(AiText.t("Търси: клек, напад, гръб…", "Search: squat, lunge, back…"));
        q.setTextSize(17);
        q.setTextColor(XemsUi.TEXT);
        q.setHintTextColor(XemsUi.HINT);
        q.setImeOptions(EditorInfo.IME_ACTION_SEARCH);
        q.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(c, 14), XemsUi.STROKE, XemsUi.dp(c, 1)));
        q.setPadding(XemsUi.dp(c, 16), XemsUi.dp(c, 11), XemsUi.dp(c, 16), XemsUi.dp(c, 11));
        q.addTextChangedListener(new SearchWatch());
        body.addView(q, XemsUi.matchWrap(c, 4));

        LinearLayout[] holder = new LinearLayout[1];
        android.widget.HorizontalScrollView zr = XemsUi.chipRow(c, holder);
        for (int i = 0; i < ZONES.length; i++) {
            TextView ch = XemsUi.chip(c, zoneName(ZONES[i]), ZONES[i].equals(zone), XemsUi.ACCENT);
            ch.setOnClickListener(new Act(A_ZONE, i));
            XemsUi.addChip(c, holder[0], ch);
        }
        body.addView(zr, XemsUi.matchWrap(c, 10));

        if (preview != null) {
            body.addView(previewCard(c, preview), XemsUi.matchWrap(c, 12));
        }
        pickGrid = XemsUi.vertical(c);
        body.addView(pickGrid, XemsUi.matchWrap(c, 12));
        fillGrid(c);

        TextView done = XemsUi.button(c, AiText.t("Готово · ", "Done · ") + editing.items.size()
                + AiText.t(" упражнения", " exercises"), XemsUi.PRIMARY);
        done.setOnClickListener(new Act(A_PICK_DONE, 0));
        shell.footer.addView(new View(c), new LinearLayout.LayoutParams(0, 1, 1f));
        shell.footer.addView(done, new LinearLayout.LayoutParams(XemsUi.dp(c, 300), XemsUi.dp(c, 56)));
    }

    private static List<ExerciseLibrary.Entry> filtered(Context c) {
        List<ExerciseLibrary.Entry> out = new ArrayList<ExerciseLibrary.Entry>();
        String[] words = query.trim().toLowerCase().split("\\s+");
        for (ExerciseLibrary.Entry e : ExerciseLibrary.enabled(c)) {
            if (!"all".equals(zone) && !zone.equals(e.zone)) {
                continue;
            }
            String hay = (e.bg + " " + e.en + " " + e.tg + " " + e.eq).toLowerCase();
            boolean ok = true;
            for (String w : words) {
                if (w.length() > 0 && !hay.contains(w)) {
                    ok = false;
                    break;
                }
            }
            if (ok) {
                out.add(e);
            }
        }
        return out;
    }

    static void fillGrid(Context c) {
        if (pickGrid == null) {
            return;
        }
        pickGrid.removeAllViews();
        List<ExerciseLibrary.Entry> list = filtered(c);
        if (list.isEmpty()) {
            TextView none = XemsUi.text(c, AiText.t("Нищо не съвпада.", "Nothing matches."), 15, XemsUi.MUTED, false);
            none.setGravity(Gravity.CENTER);
            none.setPadding(0, XemsUi.dp(c, 24), 0, XemsUi.dp(c, 24));
            pickGrid.addView(none, XemsUi.matchWrap(c, 0));
            return;
        }
        final int cols = 4;
        LinearLayout row = null;
        for (int i = 0; i < list.size(); i++) {
            if (i % cols == 0) {
                row = XemsUi.horizontal(c);
                pickGrid.addView(row, XemsUi.matchWrap(c, i == 0 ? 0 : 10));
            }
            ExerciseLibrary.Entry e = list.get(i);
            View cell = pickCell(c, e);
            Act a = new Act(A_PICKED, 0);
            a.ex = e.id;
            cell.setOnClickListener(a);
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f);
            if (i % cols > 0) {
                lp.leftMargin = XemsUi.dp(c, 10);
            }
            row.addView(cell, lp);
        }
        int rest = (cols - list.size() % cols) % cols;
        for (int k = 0; k < rest && row != null; k++) {
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, 1, 1f);
            lp.leftMargin = XemsUi.dp(c, 10);
            row.addView(new View(c), lp);
        }
    }

    private static int countIn(String ex) {
        int n = 0;
        for (Workout.Item it : editing.items) {
            if (it.ex.equals(ex)) {
                n++;
            }
        }
        return n;
    }

    private static View pickCell(Context c, ExerciseLibrary.Entry e) {
        int n = countIn(e.id);
        LinearLayout cell = XemsUi.vertical(c);
        cell.setBackgroundDrawable(XemsUi.rounded(n > 0 ? XemsUi.mix(XemsUi.CARD, XemsUi.GO, 0.16f) : XemsUi.CARD,
                XemsUi.dp(c, 14), n > 0 ? XemsUi.GO : XemsUi.STROKE, XemsUi.dp(c, n > 0 ? 2 : 1)));
        cell.setPadding(XemsUi.dp(c, 8), XemsUi.dp(c, 8), XemsUi.dp(c, 8), XemsUi.dp(c, 10));
        android.widget.FrameLayout tile = new android.widget.FrameLayout(c);
        tile.setBackgroundDrawable(XemsUi.rounded(ProgramArt.TILE, XemsUi.dp(c, 10), 0, 0));
        ExerciseFigure f = new ExerciseFigure(c);
        f.setGlow(false);
        f.setStill(true);
        f.setExercise(e.id);
        tile.addView(f, new android.widget.FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, XemsUi.dp(c, 96)));
        if (n > 0) {
            TextView b = XemsUi.badge(c, n > 1 ? "✓ ×" + n : "✓", XemsUi.GO_TEXT);
            android.widget.FrameLayout.LayoutParams bp = new android.widget.FrameLayout.LayoutParams(
                    ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.TOP | Gravity.RIGHT);
            bp.topMargin = XemsUi.dp(c, 6);
            bp.rightMargin = XemsUi.dp(c, 6);
            tile.addView(b, bp);
        }
        cell.addView(tile);
        TextView name = XemsUi.text(c, e.name(), 14, XemsUi.TEXT, true);
        name.setMaxLines(2);
        name.setPadding(0, XemsUi.dp(c, 8), 0, 0);
        cell.addView(name);
        TextView eq = XemsUi.text(c, e.eq, 11.5f, XemsUi.MUTED, false);
        cell.addView(eq);
        XemsUi.pressable(cell);
        return cell;
    }

    /** The last tapped exercise: moving figure, how to do it, and how to take it out again. */
    private static View previewCard(Context c, String id) {
        ExerciseLibrary.Entry e = ExerciseLibrary.get(c, id);
        LinearLayout card = XemsUi.card(c);
        card.setOrientation(LinearLayout.HORIZONTAL);
        LinearLayout tile = new LinearLayout(c);
        tile.setBackgroundDrawable(XemsUi.rounded(ProgramArt.TILE, XemsUi.dp(c, 12), 0, 0));
        ExerciseFigure f = new ExerciseFigure(c);
        f.setCycle(0, 2, 2);
        f.setExercise(id);
        tile.addView(f, new LinearLayout.LayoutParams(XemsUi.dp(c, 170), XemsUi.dp(c, 128)));
        card.addView(tile);
        LinearLayout text = XemsUi.vertical(c);
        text.setPadding(XemsUi.dp(c, 16), 0, 0, 0);
        text.addView(XemsUi.text(c, e != null ? e.name() : AutoTemplates.name(id), 18, XemsUi.TEXT, true));
        TextView how = XemsUi.text(c, e != null ? e.howText() : "", 13.5f, XemsUi.MUTED, false);
        how.setPadding(0, XemsUi.dp(c, 6), 0, XemsUi.dp(c, 8));
        text.addView(how);
        TextView undo = XemsUi.button(c, AiText.t("Махни последното", "Remove the last one"), XemsUi.GHOST);
        Act a = new Act(A_PICKED, -1);
        a.ex = id;
        undo.setOnClickListener(a);
        text.addView(undo, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, XemsUi.dp(c, 44)));
        card.addView(text, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        return card;
    }

    static final class SearchWatch implements TextWatcher {
        @Override
        public void beforeTextChanged(CharSequence s, int a, int b, int c) {}

        @Override
        public void onTextChanged(CharSequence s, int a, int b, int c) {}

        @Override
        public void afterTextChanged(Editable s) {
            query = s.toString();
            if (shell != null) {
                fillGrid(shell.dialog.getContext());
            }
        }
    }

    // ================================================================ actions

    static final class Act implements View.OnClickListener, XemsUi.OnIndex, XemsUi.OnStep {
        final int code;
        final int arg;
        String ex;
        View row;
        TextView value;

        Act(int code, int arg) {
            this.code = code;
            this.arg = arg;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            run(arg);
        }

        @Override
        public void onIndex(int index) {
            run(index);
        }

        @Override
        public void onStep(int direction) {
            run(direction);
        }

        private void run(int value) {
            try {
                act(this, value);
            } catch (Throwable t) {
                com.isaigu.gymapp.widget.XemsGuard.report("WorkoutsUi.act " + code, t);
            }
        }
    }

    static void act(Act a, int v) {
        Context c = shell.dialog.getContext();
        switch (a.code) {
            case A_NEW: {
                Workout w = new Workout();
                w.id = WorkoutStore.newId();
                editing = w;
                dirty = true;
                confirmDelete = false;
                preview = null;
                go(PICK);
                break;
            }
            case A_OPEN:
                editing = WorkoutStore.own(c).get(v).copy(WorkoutStore.own(c).get(v).id, WorkoutStore.own(c).get(v).name);
                dirty = false;
                confirmDelete = false;
                go(EDIT);
                break;
            case A_PRESET:
                editing = WorkoutStore.presets().get(v);
                dirty = false;
                go(EDIT);
                break;
            case A_COPY: {
                Workout w = editing.copy(WorkoutStore.newId(), editing.name + AiText.t(" (моя)", " (mine)"));
                editing = w;
                dirty = true;
                go(EDIT);
                break;
            }
            case A_BACK:
                if (screen == EDIT && dirty && !editing.preset && !editing.items.isEmpty()) {
                    save(c);                                   // nothing is lost by going back
                }
                go(LIST);
                break;
            case A_SAVE:
                save(c);
                go(EDIT);
                break;
            case A_DELETE:
                confirmDelete = true;
                go(EDIT);
                break;
            case A_DELETE_SURE:
                WorkoutStore.delete(c, editing.id);
                confirmDelete = false;
                go(LIST);
                break;
            case A_GOAL:
                editing.goal = v == 1 ? Workout.GOAL_FAT : Workout.GOAL_TONE;
                dirty = true;
                go(EDIT);
                break;
            case A_FOCUS: {
                String z = FOCUS[v];
                if (!editing.focus.remove(z)) {
                    editing.focus.add(z);
                }
                dirty = true;
                go(EDIT);
                break;
            }
            case A_ADD:
                preview = null;
                go(PICK);
                break;
            case A_ZONE:
                zone = ZONES[v];
                go(PICK);
                break;
            case A_PICKED:
                if (a.arg < 0) {
                    for (int i = editing.items.size() - 1; i >= 0; i--) {
                        if (editing.items.get(i).ex.equals(a.ex)) {
                            editing.items.remove(i);
                            break;
                        }
                    }
                    preview = countIn(a.ex) > 0 ? a.ex : null;
                } else {
                    ExerciseLibrary.Entry e = ExerciseLibrary.get(c, a.ex);
                    boolean hold = e != null && e.isHold();
                    editing.items.add(new Workout.Item(a.ex, 2, hold ? 5 : 8));
                    preview = a.ex;
                }
                dirty = true;
                int keep = shell.scroll.getScrollY();
                go(PICK);
                shell.scroll.post(new ScrollTo(keep));
                break;
            case A_PICK_DONE:
                go(EDIT);
                break;
            case A_REMOVE: {
                Object tag = a.row != null ? a.row.getTag() : null;
                editing.items.remove(tag);
                dirty = true;
                go(EDIT);
                break;
            }
            case A_SETS:
            case A_REPS: {
                Workout.Item it = (Workout.Item) a.row.getTag();
                if (a.code == A_SETS) {
                    it.sets = Workout.clamp(it.sets + v, Workout.SETS_MIN, Workout.SETS_MAX);
                    a.value.setText(String.valueOf(it.sets));
                } else {
                    it.reps = Workout.clamp(it.reps + v, Workout.REPS_MIN, Workout.REPS_MAX);
                    a.value.setText(String.valueOf(it.reps));
                }
                dirty = true;
                refreshFooter();
                break;
            }
            case A_START:
                if (!editing.preset && dirty && !editing.items.isEmpty()) {
                    save(c);
                }
                AiSession.useWorkout(editing);
                Activity act = host;
                close();
                AiUi.open(act);
                break;
            default:
                break;
        }
    }

    static final class ScrollTo implements Runnable {
        private final int y;

        ScrollTo(int y) {
            this.y = y;
        }

        @Override
        public void run() {
            if (shell != null) {
                shell.scroll.scrollTo(0, y);
            }
        }
    }

    private static void save(Context c) {
        if (editing.name.trim().length() == 0) {
            java.text.SimpleDateFormat f = new java.text.SimpleDateFormat("d.MM", java.util.Locale.ROOT);
            editing.name = AiText.t("Тренировка ", "Workout ") + f.format(new java.util.Date());
        }
        WorkoutStore.save(c, editing);
        dirty = false;
    }

    static void close() {
        if (shell != null) {
            try {
                shell.dialog.dismiss();
            } catch (Throwable ignored) {
            }
        }
        shell = null;
    }
}
