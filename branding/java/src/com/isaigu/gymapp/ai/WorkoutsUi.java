package com.isaigu.gymapp.ai;

import android.app.Activity;
import android.content.Context;
import android.text.Editable;
import android.text.InputType;
import android.text.TextWatcher;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.widget.XemsUi;

import java.util.ArrayList;
import java.util.List;

/**
 * "Тренировки" (main menu): ready maps and the studio's own. A workout is an impulse map — a line of blocks
 * (ImpulseMapView): for active workouts a block is one set of an exercise with its own impulse; rests and plain
 * blocks between; passive procedures are blocks only. Tap a block to set it, drag its edge for length, long-press to
 * move, + clones, − removes. Run it "by the map" (MapRunner, exactly as drawn) or "with AI" (the AI keeps strength,
 * rests and timing). Three views in one sheet: list → map → exercise picker. docs/xems-workouts.md
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
    static final int A_START_AI = 5;
    static final int A_DELETE = 6;
    static final int A_COPY = 7;
    static final int A_ADD_EX = 8;
    static final int A_PICKED = 9;
    static final int A_PICK_DONE = 10;
    static final int A_BACK = 12;
    static final int A_GOAL = 13;
    static final int A_ZONE = 15;
    static final int A_DELETE_SURE = 18;
    static final int A_ADD_REST = 19;
    static final int A_ADD_CLEAN = 20;
    static final int A_START_MAP = 21;
    static final int A_REPLACE = 22;
    static final int A_NO_EX = 23;
    static final int A_PARAM = 24;
    static final int A_NEW_PASSIVE = 25;
    static final int A_ADVANCED = 26;

    // block parameters (A_PARAM arg)
    static final int P_REPS = 0;
    static final int P_HZ = 1;
    static final int P_PW = 2;
    static final int P_ON = 3;
    static final int P_OFF = 4;
    static final int P_REL = 5;

    static final String[] ZONES = {"all", "abs", "glutes", "legs", "back", "chest", "arms", "shoulders", "cardio", "stretch"};
    static final String[] GOALS = {Workout.GOAL_TONE, Workout.GOAL_FAT, Workout.GOAL_PASSIVE};

    private static XemsUi.Shell shell;
    private static Activity host;
    private static int screen;
    private static Workout editing;
    private static boolean dirty;
    private static boolean confirmDelete;
    private static String zone = "all";
    private static String query = "";
    private static String preview;
    /** The picker replaces this block's exercise (−1: it adds blocks). */
    private static int replaceIndex = -1;
    private static ImpulseMapView mapView;
    private static LinearLayout panel;
    private static LinearLayout pickGrid;
    private static TextView summary;
    private static TextView saveBtn;
    /** The goal was picked by hand (else it follows the exercises: mostly cardio → fat loss). */
    private static boolean goalTouched;
    /** The block panel shows Hz / µs / impulse / pause / strength (else only the length — the impulse is set by
     *  the movement). */
    private static boolean advanced;

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
        if (Workout.GOAL_FAT.equals(g)) return AiText.t("Отслабване", "Fat loss");
        if (Workout.GOAL_PASSIVE.equals(g)) return AiText.t("Процедура", "Procedure");
        return AiText.t("Стягане", "Toning");
    }

    static int goalColor(String g) {
        if (Workout.GOAL_FAT.equals(g)) return XemsUi.ORANGE;
        if (Workout.GOAL_PASSIVE.equals(g)) return 0xFF3D7BFF;
        return XemsUi.GO;
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
        mapView = null;
        panel = null;
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
        shell.subtitle.setText(AiText.t("Докосни карта, за да я видиш или пуснеш.", "Tap a map to see or start it."));
        shell.subtitle.setVisibility(View.VISIBLE);
        LinearLayout body = shell.body;

        List<Workout> own = WorkoutStore.own(c);
        if (!own.isEmpty()) {
            body.addView(XemsUi.label(c, AiText.t("Твоите", "Yours")), XemsUi.matchWrap(c, 6));
            grid(c, body, own, A_OPEN, 0);
        }
        List<Workout> active = new ArrayList<Workout>();
        List<Workout> passive = new ArrayList<Workout>();
        for (Workout w : WorkoutStore.presets()) {
            (w.isPassive() ? passive : active).add(w);
        }
        body.addView(XemsUi.label(c, AiText.t("Готови · с упражнения", "Ready · with exercises")),
                XemsUi.matchWrap(c, own.isEmpty() ? 6 : 18));
        grid(c, body, active, A_PRESET, 0);
        if (!passive.isEmpty()) {
            body.addView(XemsUi.label(c, AiText.t("Готови · процедури в покой", "Ready · procedures at rest")),
                    XemsUi.matchWrap(c, 18));
            grid(c, body, passive, A_PRESET, active.size());
        }

        int n = ExerciseLibrary.enabled(c).size();
        int wait = ExerciseLibrary.pending(c);
        TextView lib = XemsUi.text(c, AiText.t("Упражнения в каталога: ", "Exercises in the catalog: ") + n
                + (wait > 0 ? AiText.t(" · още " + wait + " се изтеглят", " · " + wait + " more downloading") : ""),
                12.5f, XemsUi.HINT, false);
        lib.setPadding(0, XemsUi.dp(c, 14), 0, 0);
        body.addView(lib);

        TextView proc = XemsUi.button(c, AiText.t("+  Процедура", "+  Procedure"), XemsUi.SECONDARY);
        proc.setOnClickListener(new Act(A_NEW_PASSIVE, 0));
        TextView add = XemsUi.button(c, AiText.t("+  Нова тренировка", "+  New workout"), XemsUi.PRIMARY);
        add.setOnClickListener(new Act(A_NEW, 0));
        shell.footer.addView(new View(c), new LinearLayout.LayoutParams(0, 1, 1f));
        shell.footer.addView(proc, new LinearLayout.LayoutParams(XemsUi.dp(c, 220), XemsUi.dp(c, 56)));
        LinearLayout.LayoutParams ap = new LinearLayout.LayoutParams(XemsUi.dp(c, 300), XemsUi.dp(c, 56));
        ap.leftMargin = XemsUi.dp(c, 10);
        shell.footer.addView(add, ap);
    }

    /** Workout cards, two per row: the map as a strip, the name, goal and time. */
    private static void grid(Context c, LinearLayout body, List<Workout> list, int action, int offset) {
        LinearLayout row = null;
        for (int i = 0; i < list.size(); i++) {
            if (i % 2 == 0) {
                row = XemsUi.horizontal(c);
                body.addView(row, XemsUi.matchWrap(c, i == 0 ? 8 : 12));
            }
            View card = workoutCard(c, list.get(i));
            card.setOnClickListener(new Act(action, offset + i));
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
        LinearLayout head = XemsUi.horizontal(c);
        head.setGravity(Gravity.CENTER_VERTICAL);
        TextView name = XemsUi.text(c, w.name, 17, XemsUi.TEXT, true);
        name.setMaxLines(1);
        head.addView(name, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        head.addView(XemsUi.badge(c, goalName(w.goal), goalColor(w.goal)));
        card.addView(head);
        LinearLayout strip = new LinearLayout(c);
        strip.setBackgroundDrawable(XemsUi.rounded(ProgramArt.TILE, XemsUi.dp(c, 12), 0, 0));
        ImpulseMapView mv = new ImpulseMapView(c);
        mv.setMap(w, false);
        strip.addView(mv, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, XemsUi.dp(c, 46)));
        card.addView(strip, XemsUi.matchWrap(c, 8));
        String meta = w.isPassive()
                ? w.blocks.size() + AiText.t(" блока · ", " blocks · ") + w.mapMinutes() + AiText.t(" мин", " min")
                : w.distinctExercises() + AiText.t(" упр. · ", " ex. · ") + w.exerciseBlocks()
                + AiText.t(" серии · ≈ ", " sets · ≈ ") + w.aiMinutes() + AiText.t(" мин", " min");
        TextView m = XemsUi.text(c, meta, 13, XemsUi.MUTED, false);
        m.setPadding(0, XemsUi.dp(c, 6), 0, 0);
        card.addView(m);
        XemsUi.pressable(card);
        return card;
    }

    // ================================================================ the map

    private static void screenEdit(final Context c) {
        final Workout w = editing;
        boolean ro = w.preset;
        shell.title.setText(ro ? w.name : (w.name.length() > 0 ? w.name
                : w.isPassive() ? AiText.t("Нова процедура", "New procedure") : AiText.t("Нова тренировка", "New workout")));
        shell.subtitle.setText(ro ? AiText.t("Готова карта — копирай я, за да я промениш.", "Ready map — copy it to change it.")
                : w.blocks.isEmpty() ? "" : AiText.t("Влачи ръба на блок за дължина · задръж, за да го преместиш",
                "Drag a block's edge for length · hold it to move"));
        shell.subtitle.setVisibility(View.VISIBLE);
        LinearLayout body = shell.body;

        LinearLayout top = XemsUi.horizontal(c);
        top.setGravity(Gravity.CENTER_VERTICAL);
        if (!ro) {
            EditText name = new EditText(c);
            name.setSingleLine(true);
            name.setText(w.name);
            name.setHint(w.isPassive() ? AiText.t("Име, напр. „Лек дренаж“", "Name, e.g. “Light drainage”")
                    : AiText.t("Име, напр. „Стегнато седалище“", "Name, e.g. “Strong glutes”"));
            name.setTextSize(18);
            name.setTextColor(XemsUi.TEXT);
            name.setHintTextColor(XemsUi.HINT);
            name.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_CAP_SENTENCES);
            name.setImeOptions(EditorInfo.IME_ACTION_DONE);
            name.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(c, 14), XemsUi.STROKE, XemsUi.dp(c, 1)));
            name.setPadding(XemsUi.dp(c, 16), XemsUi.dp(c, 11), XemsUi.dp(c, 16), XemsUi.dp(c, 11));
            name.addTextChangedListener(new NameWatch());
            top.addView(name, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            String[] gl = {goalName(GOALS[0]), goalName(GOALS[1]), goalName(GOALS[2])};
            int gi = w.isPassive() ? 2 : Workout.GOAL_FAT.equals(w.goal) ? 1 : 0;
            LinearLayout seg = XemsUi.segmented(c, gl, gi, new Act(A_GOAL, 0));
            LinearLayout.LayoutParams sp = new LinearLayout.LayoutParams(XemsUi.dp(c, 440), ViewGroup.LayoutParams.WRAP_CONTENT);
            sp.leftMargin = XemsUi.dp(c, 12);
            top.addView(seg, sp);
        } else {
            top.addView(XemsUi.badge(c, goalName(w.goal), goalColor(w.goal)));
        }
        body.addView(top, XemsUi.matchWrap(c, 4));

        summary = XemsUi.text(c, "", 13.5f, XemsUi.MUTED, false);
        body.addView(summary, XemsUi.matchWrap(c, 10));
        refreshSummary();

        // the line
        LinearLayout lineCard = new LinearLayout(c);
        lineCard.setOrientation(LinearLayout.VERTICAL);
        lineCard.setBackgroundDrawable(XemsUi.rounded(ProgramArt.TILE, XemsUi.dp(c, 16), 0, 0));
        lineCard.setPadding(XemsUi.dp(c, 4), XemsUi.dp(c, 6), XemsUi.dp(c, 4), XemsUi.dp(c, 4));
        mapView = new ImpulseMapView(c);
        mapView.setMap(w, !ro);
        mapView.setListener(new MapListener());
        lineCard.addView(mapView, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, XemsUi.dp(c, 250)));
        lineCard.addView(legend(c), XemsUi.matchWrap(c, 2));
        body.addView(lineCard, XemsUi.matchWrap(c, 10));
        if (w.blocks.isEmpty()) {
            TextView empty = XemsUi.text(c, w.isPassive()
                    ? AiText.t("Празна карта — сложи първия блок.", "An empty map — place the first block.")
                    : AiText.t("Празна карта — добави първото упражнение.", "An empty map — add the first exercise."),
                    15, XemsUi.MUTED, false);
            empty.setGravity(Gravity.CENTER);
            empty.setPadding(0, XemsUi.dp(c, 10), 0, 0);
            body.addView(empty, XemsUi.matchWrap(c, 0));
        }

        if (!ro) {
            LinearLayout adds = XemsUi.horizontal(c);
            if (!w.isPassive()) {
                addButton(c, adds, AiText.t("+  Упражнение", "+  Exercise"), A_ADD_EX, true);
            }
            addButton(c, adds, AiText.t("+  Почивка", "+  Rest"), A_ADD_REST, adds.getChildCount() == 0);
            addButton(c, adds, AiText.t("+  Нов блок", "+  New block"), A_ADD_CLEAN, false);
            body.addView(adds, XemsUi.matchWrap(c, 10));
        }

        panel = XemsUi.vertical(c);
        body.addView(panel, XemsUi.matchWrap(c, 12));
        if (mapView.getSelected() < 0 && !w.blocks.isEmpty() && !ro) {
            mapView.select(0);
        }
        fillPanel(c);

        // footer: back · (delete) · save / copy · run
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
        mid.setEnabled(ro || (dirty && !w.blocks.isEmpty()));
        mid.setAlpha(mid.isEnabled() ? 1f : 0.55f);
        saveBtn = ro ? null : mid;
        shell.footer.addView(mid, new LinearLayout.LayoutParams(XemsUi.dp(c, 210), XemsUi.dp(c, 54)));
        boolean any = !w.blocks.isEmpty();
        TextView map = XemsUi.button(c, w.isPassive() ? AiText.t("▶  Пусни картата", "▶  Run the map")
                : AiText.t("▶  По картата", "▶  By the map"), w.isPassive() ? XemsUi.PRIMARY : XemsUi.SECONDARY);
        map.setOnClickListener(new Act(A_START_MAP, 0));
        map.setEnabled(any);
        map.setAlpha(any ? 1f : 0.55f);
        LinearLayout.LayoutParams mp = new LinearLayout.LayoutParams(XemsUi.dp(c, w.isPassive() ? 260 : 210), XemsUi.dp(c, 54));
        mp.leftMargin = XemsUi.dp(c, 10);
        shell.footer.addView(map, mp);
        if (!w.isPassive()) {
            boolean ex = w.exerciseBlocks() > 0;
            TextView ai = XemsUi.button(c, AiText.t("▶  С AI", "▶  With AI"), XemsUi.PRIMARY);
            ai.setOnClickListener(new Act(A_START_AI, 0));
            ai.setEnabled(ex);
            ai.setAlpha(ex ? 1f : 0.55f);
            LinearLayout.LayoutParams ip = new LinearLayout.LayoutParams(XemsUi.dp(c, 200), XemsUi.dp(c, 54));
            ip.leftMargin = XemsUi.dp(c, 10);
            shell.footer.addView(ai, ip);
        }
    }

    private static void addButton(Context c, LinearLayout row, String label, int code, boolean first) {
        TextView b = XemsUi.button(c, label, XemsUi.SECONDARY);
        b.setOnClickListener(new Act(code, 0));
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, XemsUi.dp(c, 50), 1f);
        if (!first) {
            lp.leftMargin = XemsUi.dp(c, 10);
        }
        row.addView(b, lp);
    }

    /** The colour scale (Hz) and what the height means. */
    private static View legend(Context c) {
        LinearLayout row = XemsUi.horizontal(c);
        row.setGravity(Gravity.CENTER_VERTICAL);
        row.setPadding(XemsUi.dp(c, 10), XemsUi.dp(c, 2), XemsUi.dp(c, 10), XemsUi.dp(c, 4));
        int[] hz = {5, 20, 45, 85, 110};
        String[] name = {AiText.t("дренаж", "drainage"), AiText.t("масаж", "massage"), AiText.t("издръжливост", "endurance"),
                AiText.t("сила", "strength"), AiText.t("мощност", "power")};
        for (int i = 0; i < hz.length; i++) {
            View dot = new View(c);
            dot.setBackgroundDrawable(XemsUi.rounded(ImpulseMapView.colorFor(hz[i]), XemsUi.dp(c, 5), 0, 0));
            LinearLayout.LayoutParams dp = new LinearLayout.LayoutParams(XemsUi.dp(c, 10), XemsUi.dp(c, 10));
            dp.leftMargin = XemsUi.dp(c, i == 0 ? 0 : 12);
            row.addView(dot, dp);
            TextView t = XemsUi.text(c, " " + name[i], 11.5f, XemsUi.HINT, false);
            row.addView(t);
        }
        row.addView(new View(c), new LinearLayout.LayoutParams(0, 1, 1f));
        row.addView(XemsUi.text(c, AiText.t("височина = дълбочина (µs)", "height = depth (µs)"), 11.5f, XemsUi.HINT, false));
        return row;
    }

    static void refreshSummary() {
        if (summary == null || editing == null) {
            return;
        }
        Workout w = editing;
        String t;
        if (w.isPassive()) {
            t = w.blocks.size() + AiText.t(" блока · ", " blocks · ") + w.mapMinutes() + AiText.t(" мин", " min");
        } else {
            StringBuilder z = new StringBuilder();
            for (String f : w.derivedFocus()) {
                z.append(z.length() == 0 ? "" : " · ").append(zoneName(f));
            }
            t = (z.length() > 0 ? z + "  —  " : "") + w.exerciseBlocks() + AiText.t(" серии · ≈ ", " sets · ≈ ")
                    + w.aiMinutes() + AiText.t(" мин", " min");
        }
        if (w.longerThanSession()) {
            t += AiText.t("  ·  по-дълга от една AI сесия — ще минат сериите, които се поберат",
                    "  ·  longer than one AI session — the sets that fit are done");
            summary.setTextColor(XemsUi.AMBER);
        } else {
            summary.setTextColor(XemsUi.MUTED);
        }
        summary.setText(t);
    }

    /** The selected block: its figure and exercise, and every impulse value with − / +. */
    static void fillPanel(Context c) {
        if (panel == null || mapView == null || editing == null) {
            return;
        }
        panel.removeAllViews();
        int i = mapView.getSelected();
        if (i < 0 || i >= editing.blocks.size()) {
            return;
        }
        boolean ro = editing.preset;
        Workout.Block b = editing.blocks.get(i);
        LinearLayout card = XemsUi.card(c);
        card.setOrientation(LinearLayout.HORIZONTAL);
        card.setGravity(Gravity.CENTER_VERTICAL);

        LinearLayout tile = new LinearLayout(c);
        tile.setGravity(Gravity.CENTER);
        tile.setBackgroundDrawable(XemsUi.rounded(ProgramArt.TILE, XemsUi.dp(c, 12), 0, 0));
        if (b.hasExercise()) {
            ExerciseFigure f = new ExerciseFigure(c);
            f.setCycle(0, Math.max(1, b.on), Math.max(1, b.off));
            f.setExercise(b.ex);
            tile.addView(f, new LinearLayout.LayoutParams(XemsUi.dp(c, 150), XemsUi.dp(c, 112)));
        } else {
            View sw = new View(c);
            sw.setBackgroundDrawable(XemsUi.rounded(b.isRest() ? 0xFF5A5F6B : ImpulseMapView.colorFor(b.hz),
                    XemsUi.dp(c, 10), 0, 0));
            LinearLayout.LayoutParams sp = new LinearLayout.LayoutParams(XemsUi.dp(c, 110), XemsUi.dp(c, b.isRest() ? 14 : 70));
            tile.addView(sw, sp);
            tile.setMinimumWidth(XemsUi.dp(c, 150));
            tile.setMinimumHeight(XemsUi.dp(c, 112));
        }
        card.addView(tile);

        LinearLayout col = XemsUi.vertical(c);
        col.setPadding(XemsUi.dp(c, 16), 0, 0, 0);
        ExerciseLibrary.Entry e = b.ex != null ? ExerciseLibrary.get(c, b.ex) : null;
        String title = b.isRest() ? AiText.t("Почивка", "Rest")
                : e != null ? e.name() : b.ex != null ? AutoTemplates.name(b.ex) : AiText.t("Импулс без упражнение", "Impulse, no exercise");
        LinearLayout head = XemsUi.horizontal(c);
        head.setGravity(Gravity.CENTER_VERTICAL);
        head.addView(XemsUi.text(c, (i + 1) + ".  " + title, 18, XemsUi.TEXT, true),
                new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        if (!ro && !b.isRest() && !editing.isPassive()) {
            TextView ch = XemsUi.button(c, b.hasExercise() ? AiText.t("Смени упражнението", "Change exercise")
                    : AiText.t("Сложи упражнение", "Set an exercise"), XemsUi.GHOST);
            ch.setOnClickListener(new Act(A_REPLACE, 0));
            head.addView(ch);
            if (b.hasExercise()) {
                TextView no = XemsUi.button(c, AiText.t("Без", "None"), XemsUi.GHOST);
                no.setOnClickListener(new Act(A_NO_EX, 0));
                head.addView(no);
            }
        }
        col.addView(head);
        TextView sub = XemsUi.text(c, b.isRest()
                ? AiText.t("Без ток. Дължината е времето за почивка.", "No current. Its length is the rest time.")
                : b.seconds() + AiText.t(" с · ", " s · ") + b.hz + " Hz · " + b.pw + " µs · " + b.on + "+" + b.off
                + AiText.t(" с · сила ", " s · strength ") + b.rel + "%", 13, XemsUi.MUTED, false);
        sub.setPadding(0, XemsUi.dp(c, 2), 0, XemsUi.dp(c, 8));
        col.addView(sub);

        if (!ro) {
            // the length first (what the trainer sets); the impulse follows the movement — folded
            LinearLayout row1 = XemsUi.horizontal(c);
            row1.setGravity(Gravity.CENTER_VERTICAL);
            boolean hold = e != null && e.isHold();
            param(c, row1, b.isRest() ? AiText.t("секунди", "seconds") : hold ? AiText.t("задържания", "holds")
                    : b.hasExercise() ? AiText.t("повторения", "repetitions") : AiText.t("импулса", "impulses"), b.reps, P_REPS);
            if (!b.isRest()) {
                TextView more = XemsUi.button(c, advanced ? AiText.t("Импулс ▾", "Impulse ▾") : AiText.t("Импулс ▸", "Impulse ▸"),
                        XemsUi.GHOST);
                more.setOnClickListener(new Act(A_ADVANCED, 0));
                row1.addView(more, new LinearLayout.LayoutParams(0, XemsUi.dp(c, 46), 1f));
                row1.addView(new View(c), new LinearLayout.LayoutParams(0, 1, 1f));
            }
            col.addView(row1);
            if (!b.isRest() && advanced) {
                LinearLayout row2 = XemsUi.horizontal(c);
                param(c, row2, "Hz", b.hz, P_HZ);
                param(c, row2, "µs", b.pw, P_PW);
                param(c, row2, AiText.t("сила, %", "strength, %"), b.rel, P_REL);
                LinearLayout row3 = XemsUi.horizontal(c);
                param(c, row3, AiText.t("импулс, с", "impulse, s"), b.on, P_ON);
                param(c, row3, AiText.t("пауза, с", "pause, s"), b.off, P_OFF);
                row3.addView(new View(c), new LinearLayout.LayoutParams(0, 1, 1f));
                col.addView(row2, XemsUi.matchWrap(c, 8));
                col.addView(row3, XemsUi.matchWrap(c, 8));
            }
        }
        card.addView(col, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        panel.addView(card, XemsUi.matchWrap(c, 0));
    }

    /** A compact − value + with its caption; holding repeats. */
    private static void param(Context c, LinearLayout row, String caption, int value, int which) {
        LinearLayout col = XemsUi.vertical(c);
        col.setGravity(Gravity.CENTER_HORIZONTAL);
        LinearLayout box = XemsUi.horizontal(c);
        box.setGravity(Gravity.CENTER_VERTICAL);
        box.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(c, 22), XemsUi.STROKE, XemsUi.dp(c, 1)));
        box.setPadding(XemsUi.dp(c, 3), XemsUi.dp(c, 3), XemsUi.dp(c, 3), XemsUi.dp(c, 3));
        TextView minus = XemsUi.iconButton(c, "−", XemsUi.CARD, XemsUi.TEXT, 38);
        TextView plus = XemsUi.iconButton(c, "+", XemsUi.CARD, XemsUi.TEXT, 38);
        TextView v = XemsUi.text(c, String.valueOf(value), 18, XemsUi.TEXT, true);
        v.setGravity(Gravity.CENTER);
        Act act = new Act(A_PARAM, which);
        act.value = v;
        XemsUi.repeatOnHold(minus, act, -1);
        XemsUi.repeatOnHold(plus, act, +1);
        box.addView(minus);
        box.addView(v, new LinearLayout.LayoutParams(XemsUi.dp(c, 52), ViewGroup.LayoutParams.WRAP_CONTENT));
        box.addView(plus);
        col.addView(box);
        TextView cap = XemsUi.text(c, caption, 11, XemsUi.HINT, false);
        cap.setPadding(0, XemsUi.dp(c, 3), 0, 0);
        col.addView(cap);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        lp.rightMargin = XemsUi.dp(c, 8);
        row.addView(col, lp);
    }

    /** One step of a block value (Hz: 1 below 20, else 5; µs: 25; strength: 5). */
    static void step(Workout.Block b, int which, int dir) {
        switch (which) {
            case P_REPS:
                b.reps += dir * (b.isRest() ? 5 : 1);
                break;
            case P_HZ:
                b.hz += dir * (b.hz + (dir > 0 ? 0 : -1) < 20 ? 1 : 5);
                break;
            case P_PW:
                b.pw += dir * 25;
                break;
            case P_ON:
                b.on += dir;
                break;
            case P_OFF:
                b.off += dir;
                break;
            default:
                b.rel += dir * 5;
                break;
        }
        b.clampAll();
    }

    static int valueOf(Workout.Block b, int which) {
        switch (which) {
            case P_REPS: return b.reps;
            case P_HZ: return b.hz;
            case P_PW: return b.pw;
            case P_ON: return b.on;
            case P_OFF: return b.off;
            default: return b.rel;
        }
    }

    static final class MapListener implements ImpulseMapView.Listener {
        @Override
        public void onSelect(int index) {
            if (shell != null) {
                fillPanel(shell.dialog.getContext());
            }
        }

        @Override
        public void onChanged() {
            dirty = true;
            refreshFooter();
            if (shell != null) {
                fillPanel(shell.dialog.getContext());
            }
        }
    }

    /** Save turns active after a change (without rebuilding the map mid-edit). */
    static void refreshFooter() {
        if (shell == null || screen != EDIT) {
            return;
        }
        if (saveBtn != null) {
            saveBtn.setText(AiText.t("Запази", "Save"));
            saveBtn.setEnabled(!editing.blocks.isEmpty());
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
        boolean replace = replaceIndex >= 0;
        shell.title.setText(replace ? AiText.t("Смени упражнението", "Change the exercise")
                : AiText.t("Добави упражнения", "Add exercises"));
        shell.subtitle.setText(replace ? AiText.t("Докосни новото — блокът запазва импулса си.", "Tap the new one — the block keeps its impulse.")
                : AiText.t("Докосни, за да добавиш серия.", "Tap to add a set."));
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

        TextView done = XemsUi.button(c, replace ? AiText.t("Назад към картата", "Back to the map")
                : AiText.t("Готово · ", "Done · ") + editing.exerciseBlocks() + AiText.t(" серии", " sets"), XemsUi.PRIMARY);
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
        for (Workout.Block b : editing.blocks) {
            if (ex.equals(b.ex) && !b.isRest()) {
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
        cell.addView(XemsUi.text(c, e.eq, 11.5f, XemsUi.MUTED, false));
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
        TextView undo = XemsUi.button(c, AiText.t("Махни последната серия", "Remove the last set"), XemsUi.GHOST);
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

        private void run(int v) {
            try {
                act(this, v);
            } catch (Throwable t) {
                com.isaigu.gymapp.widget.XemsGuard.report("WorkoutsUi.act " + code, t);
            }
        }
    }

    /** Where a new block goes: after the selected one, or at the end. */
    private static int insertAt() {
        int s = mapView != null ? mapView.getSelected() : -1;
        return s >= 0 ? s + 1 : editing.blocks.size();
    }

    static void act(Act a, int v) {
        Context c = shell.dialog.getContext();
        switch (a.code) {
            case A_NEW:
            case A_NEW_PASSIVE: {
                Workout w = new Workout();
                w.id = WorkoutStore.newId();
                w.goal = a.code == A_NEW_PASSIVE ? Workout.GOAL_PASSIVE : Workout.GOAL_TONE;
                if (w.isPassive()) {
                    w.blocks.add(w.clean());
                }
                editing = w;
                dirty = true;
                goalTouched = w.isPassive();
                confirmDelete = false;
                preview = null;
                replaceIndex = -1;
                go(w.isPassive() ? EDIT : PICK);
                break;
            }
            case A_OPEN: {
                Workout o = WorkoutStore.own(c).get(v);
                editing = o.copy(o.id, o.name);
                dirty = false;
                goalTouched = true;                            // a saved workout keeps its goal
                confirmDelete = false;
                go(EDIT);
                break;
            }
            case A_PRESET:
                editing = presetAt(v, a);
                dirty = false;
                go(EDIT);
                break;
            case A_COPY: {
                editing = editing.copy(WorkoutStore.newId(), editing.name + AiText.t(" (моя)", " (mine)"));
                dirty = true;
                go(EDIT);
                break;
            }
            case A_BACK:
                if (screen == EDIT && dirty && !editing.preset && !editing.blocks.isEmpty()) {
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
                editing.goal = GOALS[v];
                goalTouched = true;
                dirty = true;
                go(EDIT);
                break;
            case A_ADVANCED: {
                advanced = !advanced;
                fillPanel(c);
                break;
            }
            case A_ADD_EX:
                preview = null;
                replaceIndex = -1;
                go(PICK);
                break;
            case A_REPLACE:
                preview = null;
                replaceIndex = mapView != null ? mapView.getSelected() : -1;
                go(PICK);
                break;
            case A_NO_EX: {
                int s = mapView.getSelected();
                if (s >= 0) {
                    editing.blocks.get(s).ex = null;
                    dirty = true;
                    go(EDIT);
                    mapView.select(s);
                    fillPanel(c);
                }
                break;
            }
            case A_ADD_REST:
            case A_ADD_CLEAN: {
                int at = insertAt();
                editing.blocks.add(at, a.code == A_ADD_REST ? Workout.rest() : editing.clean());
                dirty = true;
                go(EDIT);
                mapView.select(at);
                fillPanel(c);
                break;
            }
            case A_ZONE:
                zone = ZONES[v];
                go(PICK);
                break;
            case A_PICKED:
                picked(c, a);
                break;
            case A_PICK_DONE: {
                int sel = replaceIndex;
                replaceIndex = -1;
                go(EDIT);
                if (sel >= 0) {
                    mapView.select(sel);
                    fillPanel(c);
                }
                break;
            }
            case A_PARAM: {
                int s = mapView != null ? mapView.getSelected() : -1;
                if (s < 0 || editing.preset) {
                    break;
                }
                Workout.Block b = editing.blocks.get(s);
                step(b, a.arg, v);
                a.value.setText(String.valueOf(valueOf(b, a.arg)));
                dirty = true;
                mapView.invalidate();
                refreshFooter();
                break;
            }
            case A_START_AI:
                if (!editing.preset && dirty && !editing.blocks.isEmpty()) {
                    save(c);
                }
                AiSession.useWorkout(editing);
                Activity act = host;
                close();
                AiUi.open(act);
                break;
            case A_START_MAP: {
                if (!editing.preset && dirty && !editing.blocks.isEmpty()) {
                    save(c);
                }
                String why = MapRunner.start(host, editing);
                if (why != null) {
                    android.widget.Toast.makeText(c, why, android.widget.Toast.LENGTH_LONG).show();
                } else {
                    close();
                }
                break;
            }
            default:
                break;
        }
    }

    /** The ready map tapped in one of the two lists (active first, then passive). */
    private static Workout presetAt(int v, Act a) {
        List<Workout> all = WorkoutStore.presets();
        List<Workout> active = new ArrayList<Workout>();
        List<Workout> passive = new ArrayList<Workout>();
        for (Workout w : all) {
            (w.isPassive() ? passive : active).add(w);
        }
        return v < active.size() ? active.get(v) : passive.get(Math.min(passive.size() - 1, v - active.size()));
    }

    /** A tap in the picker: replace the block's exercise, add a set (a rest before it), or take the last set out. */
    private static void picked(Context c, Act a) {
        ExerciseLibrary.Entry e = ExerciseLibrary.get(c, a.ex);
        if (replaceIndex >= 0 && replaceIndex < editing.blocks.size() && a.arg >= 0) {
            Workout.Block b = editing.blocks.get(replaceIndex);
            b.ex = a.ex;
            if (b.isRest()) {
                b.rel = 100;
                b.clampAll();
            }
            dirty = true;
            int sel = replaceIndex;
            replaceIndex = -1;
            go(EDIT);
            mapView.select(sel);
            fillPanel(c);
            return;
        }
        if (a.arg < 0) {
            for (int i = editing.blocks.size() - 1; i >= 0; i--) {
                Workout.Block b = editing.blocks.get(i);
                if (a.ex.equals(b.ex) && !b.isRest()) {
                    editing.blocks.remove(i);
                    if (i > 0 && i - 1 < editing.blocks.size() && editing.blocks.get(i - 1).isRest()) {
                        editing.blocks.remove(i - 1);         // its rest goes with it
                    }
                    break;
                }
            }
            preview = countIn(a.ex) > 0 ? a.ex : null;
        } else {
            Workout.Block b = Workout.forExercise(a.ex, e != null ? e.pat : Workout.patternOf(a.ex), e != null && e.isHold());
            if (!editing.blocks.isEmpty() && !editing.blocks.get(editing.blocks.size() - 1).isRest()) {
                editing.blocks.add(Workout.restAfter(editing.blocks.get(editing.blocks.size() - 1)));
            }
            editing.blocks.add(b);
            preview = a.ex;
            if (!goalTouched) {
                editing.goal = editing.suggestedGoal();        // mostly cardio → fat loss, until picked by hand
            }
        }
        dirty = true;
        int keep = shell.scroll.getScrollY();
        go(PICK);
        shell.scroll.post(new ScrollTo(keep));
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
            editing.name = autoName(editing);
        }
        WorkoutStore.save(c, editing);
        dirty = false;
    }

    /** A name from what the workout trains ("Седалище и бедра"), or the date for a procedure. */
    static String autoName(Workout w) {
        List<String> f = w.derivedFocus();
        if (w.isPassive() || f.isEmpty()) {
            java.text.SimpleDateFormat d = new java.text.SimpleDateFormat("d.MM", java.util.Locale.ROOT);
            return (w.isPassive() ? AiText.t("Процедура ", "Procedure ") : AiText.t("Тренировка ", "Workout "))
                    + d.format(new java.util.Date());
        }
        String n = zoneName(f.get(0));
        if (f.size() > 1) {
            n += AiText.t(" и ", " and ") + zoneName(f.get(1)).toLowerCase();
        }
        return n;
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
