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
 * rests and timing). Three views in one full-screen page: list → map → exercise picker. A workout has no goal to pick:
 * it follows from the exercises (mostly cardio → fat loss, else toning); a procedure is a separate kind (+ Процедура).
 * Changes save by themselves. Main menu → "Програми": workouts and procedures on one page, a two-way switch on top
 * (Тренировки | Процедури); the ready ones are grouped by who they are for (everyone, women, men). They run only in
 * the AI or the automatic mode (exercise programs are not shown anywhere else). docs/xems-workouts.md
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
    static final int A_CLOSE = 13;
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
    static final int A_KIND = 27;
    static final int A_MODE = 28;
    static final int A_PICK_TOGGLE = 29;

    // block parameters (A_PARAM arg)
    static final int P_REPS = 0;
    static final int P_HZ = 1;
    static final int P_PW = 2;
    static final int P_ON = 3;
    static final int P_OFF = 4;
    static final int P_REL = 5;
    static final int P_HZ2 = 6;
    static final int P_STR2 = 7;
    static final int P_RIN = 8;
    static final int P_ROUT = 9;

    static final String[] ZONES = {"all", "abs", "glutes", "legs", "back", "chest", "arms", "shoulders", "functional",
            "cardio", "stretch"};

    /** The page shows the procedures (passive maps) instead of the workouts. */
    private static boolean procedures;
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
        if ("functional".equals(z)) return AiText.t("Функционални", "Functional");
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
        procedures = false;
        show(a);
    }

    private static void show(Activity a) {
        try {
            ExerciseLibrary.load(a);
            ExerciseFigure.preload(a);
            ExerciseLibrary.sync(a, false);
            host = a;
            if (shell == null || !shell.dialog.isShowing()) {
                shell = XemsUi.shell(a, "", "", 1180);
                shell.close.setOnClickListener(new Act(A_CLOSE, 0));
                shell.dialog.show();
                XemsUi.fullScreen(shell);
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
        legendBox = null;
        panel = null;
        pickGrid = null;
        shell.badge.setVisibility(View.GONE);
        summary = null;
        if (s == LIST) {
            screenList(c);
        } else if (s == EDIT) {
            screenEdit(c);
            autosave(c);
        } else {
            screenPick(c);
        }
        shell.scroll.scrollTo(0, 0);
    }

    // ================================================================ list

    private static void screenList(Context c) {
        shell.title.setText(AiText.t("Програми", "Programs"));
        shell.subtitle.setVisibility(View.GONE);
        LinearLayout body = shell.body;
        body.addView(XemsUi.segmented(c, new String[] {AiText.t("Тренировки", "Workouts"),
                AiText.t("Процедури", "Procedures")}, procedures ? 1 : 0, new Act(A_KIND, 0)), XemsUi.matchWrap(c, 0));
        List<Workout> own = ownList(c);
        List<Workout> ready = presetList();
        List<Workout> shown = new ArrayList<Workout>(own);
        shown.addAll(ready);
        View key = legend(c, shown, false);                  // only the colours these strips use
        if (key != null) {
            body.addView(key, XemsUi.matchWrap(c, 8));
        }

        if (!own.isEmpty()) {
            body.addView(XemsUi.label(c, AiText.t("Твоите", "Yours")), XemsUi.matchWrap(c, 16));
            grid(c, body, own, A_OPEN, 0);
        }
        // the ready ones by who they are for: everyone, women, men (presetList keeps that order)
        int from = 0;
        while (from < ready.size()) {
            String sex = ready.get(from).sex;
            int to = from;
            while (to < ready.size() && same(sex, ready.get(to).sex)) {
                to++;
            }
            String head = "m".equals(sex) ? AiText.t("Готови · за мъже", "Ready · for men")
                    : "f".equals(sex) ? AiText.t("Готови · за жени", "Ready · for women") : AiText.t("Готови", "Ready");
            body.addView(XemsUi.label(c, head), XemsUi.matchWrap(c, own.isEmpty() && from == 0 ? 16 : 22));
            grid(c, body, ready.subList(from, to), A_PRESET, from);
            from = to;
        }

        if (!procedures) {
            int wait = ExerciseLibrary.pending(c);           // only while figures are still on their way
            if (wait > 0) {
                TextView lib = XemsUi.text(c, AiText.t("Изтеглят се още " + wait + " упражнения",
                        wait + " more exercises downloading"), 12.5f, XemsUi.HINT, false);
                lib.setPadding(0, XemsUi.dp(c, 14), 0, 0);
                body.addView(lib);
            }
        }

        TextView add = XemsUi.button(c, procedures ? AiText.t("+  Нова процедура", "+  New procedure")
                : AiText.t("+  Нова тренировка", "+  New workout"), XemsUi.PRIMARY);
        add.setOnClickListener(new Act(procedures ? A_NEW_PASSIVE : A_NEW, 0));
        shell.footer.addView(new View(c), new LinearLayout.LayoutParams(0, 1, 1f));
        shell.footer.addView(add, new LinearLayout.LayoutParams(XemsUi.dp(c, 300), XemsUi.dp(c, 56)));
    }

    /** The studio's own maps of the page's kind. */
    private static List<Workout> ownList(Context c) {
        List<Workout> out = new ArrayList<Workout>();
        for (Workout w : WorkoutStore.own(c)) {
            if (isProcedure(w) == procedures) {
                out.add(w);
            }
        }
        return out;
    }

    /** The ready maps of the page's kind: for everyone first, then women's, then men's. */
    private static List<Workout> presetList() {
        List<Workout> out = new ArrayList<Workout>();
        String[] order = {null, "f", "m"};
        for (String sex : order) {
            for (Workout w : WorkoutStore.presets()) {
                if (isProcedure(w) == procedures && same(sex, w.sex)) {
                    out.add(w);
                }
            }
        }
        return out;
    }

    private static boolean same(String a, String b) {
        return a == null ? b == null : a.equals(b);
    }

    /** A procedure = passive with no exercises (an old "procedure" with exercises is a workout). */
    static boolean isProcedure(Workout w) {
        return w.isPassive() && w.exerciseBlocks() == 0;
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
        card.addView(head);
        LinearLayout strip = new LinearLayout(c);
        strip.setBackgroundDrawable(XemsUi.rounded(ProgramArt.TILE, XemsUi.dp(c, 12), 0, 0));
        ImpulseMapView mv = new ImpulseMapView(c);
        mv.setMap(w, false);
        strip.addView(mv, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, XemsUi.dp(c, 46)));
        card.addView(strip, XemsUi.matchWrap(c, 8));
        String meta = w.isPassive()
                ? w.blocks.size() + AiText.t(" блока · ", " blocks · ") + w.mapMinutes() + AiText.t(" мин", " min")
                : focusLine(w) + w.distinctExercises() + AiText.t(" упр. · ", " ex. · ") + w.exerciseBlocks()
                + AiText.t(" серии · ≈ ", " sets · ≈ ") + w.aiMinutes() + AiText.t(" мин", " min");
        TextView m = XemsUi.text(c, meta, 13, XemsUi.MUTED, false);
        m.setPadding(0, XemsUi.dp(c, 6), 0, 0);
        card.addView(m);
        XemsUi.pressable(card);
        return card;
    }

    /** "Седалище · Бедра  —  " from the exercises (empty when none). */
    static String focusLine(Workout w) {
        StringBuilder z = new StringBuilder();
        for (String f : w.derivedFocus()) {
            z.append(z.length() == 0 ? "" : " · ").append(zoneName(f));
        }
        return z.length() > 0 ? z + "  —  " : "";
    }

    /** A workout's goal is not asked: the exercises decide it (a procedure stays a procedure). */
    static void deriveGoal(Workout w) {
        if (w == null || w.preset) {
            return;
        }
        if (w.isPassive() && w.exerciseBlocks() == 0) {
            return;
        }
        w.goal = Workout.GOAL_TONE;
        w.goal = w.suggestedGoal();
    }

    /** Changes save by themselves (an empty map is not kept); the header shows it. */
    static void autosave(Context c) {
        if (editing == null || screen != EDIT || shell == null) {
            return;
        }
        if (!editing.preset && dirty && !editing.blocks.isEmpty()) {
            save(c);
        }
        if (!editing.preset && !editing.blocks.isEmpty()) {
            shell.badge.setVisibility(View.VISIBLE);
            XemsUi.setBadge(shell.badge, AiText.t("✓ Запазено", "✓ Saved"), XemsUi.GO_TEXT);
        }
    }

    // ================================================================ the map

    private static void screenEdit(final Context c) {
        final Workout w = editing;
        boolean ro = w.preset;
        shell.title.setText(ro ? w.name : (w.name.length() > 0 ? w.name
                : w.isPassive() ? AiText.t("Нова процедура", "New procedure") : AiText.t("Нова тренировка", "New workout")));
        shell.subtitle.setText(ro ? AiText.t("Готова карта — копирай я, за да я промениш.", "Ready map — copy it to change it.")
                : w.blocks.isEmpty() ? "" : AiText.t("Ръбът — дължина · задръж — премести",
                "Edge — length · hold — move"));
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
            body.addView(top, XemsUi.matchWrap(c, 4));
        }

        summary = XemsUi.text(c, "", 13.5f, XemsUi.MUTED, false);
        body.addView(summary, XemsUi.matchWrap(c, 10));
        refreshSummary();

        // the line
        LinearLayout lineCard = new LinearLayout(c);
        lineCard.setOrientation(LinearLayout.VERTICAL);
        lineCard.setBackgroundDrawable(XemsUi.rounded(ProgramArt.TILE, XemsUi.dp(c, 16), 0, 0));
        lineCard.setPadding(XemsUi.dp(c, 4), XemsUi.dp(c, 6), XemsUi.dp(c, 4), XemsUi.dp(c, 4));
        mapView = new ImpulseMapView(c);
        mapView.setMap(w, !ro, true);                         // a ready one shows its values too
        mapView.setListener(new MapListener());
        // a long map is wider than the screen: it scrolls sideways (blocks keep room for their values and − / +)
        android.widget.HorizontalScrollView mapScroll = new android.widget.HorizontalScrollView(c);
        mapScroll.setFillViewport(true);
        mapScroll.setHorizontalScrollBarEnabled(true);
        mapScroll.addView(mapView, new android.widget.FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT));             // as tall as the blocks' values need
        lineCard.addView(mapScroll, XemsUi.matchWrap(c, 0));
        legendBox = XemsUi.vertical(c);
        lineCard.addView(legendBox, XemsUi.matchWrap(c, 2));
        refreshLegend();
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
        if (ro) {
            TextView copy = XemsUi.button(c, AiText.t("Копирай и промени", "Copy and change"), XemsUi.SECONDARY);
            copy.setOnClickListener(new Act(A_COPY, 0));
            shell.footer.addView(copy, new LinearLayout.LayoutParams(XemsUi.dp(c, 230), XemsUi.dp(c, 54)));
        }
        boolean any = !w.blocks.isEmpty();
        // an exercise program runs only in the two modes: Авто (exactly as drawn) or AI (it leads)
        TextView map = XemsUi.button(c, w.isPassive() ? AiText.t("▶  Пусни картата", "▶  Run the map")
                : AiText.t("▶  Авто", "▶  Auto"), w.isPassive() ? XemsUi.PRIMARY : XemsUi.SECONDARY);
        map.setOnClickListener(new Act(A_START_MAP, 0));
        map.setEnabled(any);
        map.setAlpha(any ? 1f : 0.55f);
        LinearLayout.LayoutParams mp = new LinearLayout.LayoutParams(XemsUi.dp(c, w.isPassive() ? 260 : 210), XemsUi.dp(c, 54));
        mp.leftMargin = ro ? XemsUi.dp(c, 10) : 0;
        shell.footer.addView(map, mp);
        if (!w.isPassive()) {
            boolean ex = w.exerciseBlocks() > 0;
            TextView ai = XemsUi.button(c, AiText.t("▶  AI", "▶  AI"), XemsUi.PRIMARY);
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
    /** The editor's legend: rebuilt when the map changes, so it lists only what this map shows. */
    private static LinearLayout legendBox;

    static void refreshLegend() {
        if (legendBox == null || editing == null) {
            return;
        }
        legendBox.removeAllViews();
        List<Workout> one = new ArrayList<Workout>();
        one.add(editing);
        View v = legend(legendBox.getContext(), one, true);
        if (v != null) {
            legendBox.addView(v);
        }
    }

    private static final int[] BAND_TOP = {9, 29, 59, 99, Integer.MAX_VALUE};

    private static int band(int hz) {
        int i = 0;
        while (hz > BAND_TOP[i]) {
            i++;
        }
        return i;
    }

    /**
     * What these maps' colours and symbols mean — only what they actually show: the frequency bands their blocks use,
     * and (inside, for the editor's map, where the blocks carry values) the symbols drawn in them. Null when nothing
     * needs explaining.
     */
    private static View legend(Context c, List<Workout> maps, boolean inside) {
        boolean[] bands = new boolean[BAND_TOP.length];
        boolean work = false;
        boolean rest = false;
        boolean dbl = false;
        boolean single = false;
        boolean ramp = false;
        for (Workout w : maps) {
            for (Workout.Block b : w.blocks) {
                if (b.isRest()) {
                    rest = true;
                    continue;
                }
                work = true;
                bands[band(b.hz)] = true;
                if (b.dbl) {
                    dbl = true;
                } else {
                    single = true;
                }
                if (b.rampIn > 0 || b.rampOut > 0) {
                    ramp = true;
                }
            }
        }
        if (!work && !(inside && rest)) {
            return null;
        }
        LinearLayout box = XemsUi.vertical(c);
        box.setPadding(XemsUi.dp(c, 10), XemsUi.dp(c, 4), XemsUi.dp(c, 10), XemsUi.dp(c, 6));
        if (work) {
            LinearLayout row = XemsUi.horizontal(c);
            row.setGravity(Gravity.CENTER_VERTICAL);
            int[] hz = {5, 20, 45, 85, 110};
            String[] name = {AiText.t("дренаж", "drainage"), AiText.t("масаж", "massage"),
                    AiText.t("издръжливост", "endurance"), AiText.t("сила", "strength"), AiText.t("мощност", "power")};
            String[] range = {"1–9", "10–29", "30–59", "60–99", "100–120"};
            row.addView(XemsUi.text(c, AiText.t("Цвят = честота:", "Colour = frequency:"), 11.5f, XemsUi.MUTED, true));
            for (int i = 0; i < hz.length; i++) {
                if (!bands[i]) {
                    continue;
                }
                View dot = new View(c);
                dot.setBackgroundDrawable(XemsUi.rounded(ImpulseMapView.colorFor(hz[i]), XemsUi.dp(c, 3), 0, 0));
                LinearLayout.LayoutParams dp = new LinearLayout.LayoutParams(XemsUi.dp(c, 18), XemsUi.dp(c, 10));
                dp.leftMargin = XemsUi.dp(c, 12);
                row.addView(dot, dp);
                row.addView(XemsUi.text(c, " " + name[i] + " " + range[i] + " Hz", 11.5f, XemsUi.HINT, false));
            }
            box.addView(scrollRow(c, row));
        }
        if (inside) {
            LinearLayout sym = XemsUi.horizontal(c);
            sym.setGravity(Gravity.CENTER_VERTICAL);
            if (work) {
                sym.setPadding(0, XemsUi.dp(c, 6), 0, 0);
            }
            sym.addView(XemsUi.text(c, AiText.t("Блок:", "Block:"), 11.5f, XemsUi.MUTED, true));
            if (work) {
                legendItem(c, sym, ImpulseGlyph.HZ, AiText.t("честота, Hz", "frequency, Hz"));
            }
            legendItem(c, sym, ImpulseGlyph.TIME, AiText.t("време, сек", "time, s"));
            if (single) {
                legendItem(c, sym, ImpulseGlyph.PULSE_PAUSE, AiText.t("импулс : пауза", "impulse : pause"));
            }
            if (dbl) {
                legendItem(c, sym, ImpulseGlyph.DOUBLE, AiText.t("двоен импулс", "double impulse"));
            }
            if (work) {
                legendItem(c, sym, ImpulseGlyph.DEPTH, AiText.t("дълбочина, µs = височина", "depth, µs = height"));
            }
            if (ramp) {
                legendItem(c, sym, ImpulseGlyph.RAMP, AiText.t("рампа = наклонена страна", "ramp = sloped side"));
            }
            box.addView(scrollRow(c, sym));
        }
        return box;
    }

    /** A legend line that slides sideways on a narrower tablet instead of being cut. */
    private static View scrollRow(Context c, View row) {
        android.widget.HorizontalScrollView h = new android.widget.HorizontalScrollView(c);
        h.setHorizontalScrollBarEnabled(false);
        h.addView(row);
        return h;
    }

    private static void legendItem(Context c, LinearLayout row, int glyph, String label) {
        TextView t = XemsUi.text(c, label, 11.5f, XemsUi.HINT, false);
        ImpulseGlyph g = new ImpulseGlyph(glyph, XemsUi.MUTED, XemsUi.dp(c, 1.4f));
        int s = XemsUi.dp(c, 14);
        g.setBounds(0, 0, s, s);
        t.setCompoundDrawables(g, null, null, null);
        t.setCompoundDrawablePadding(XemsUi.dp(c, 5));
        t.setGravity(Gravity.CENTER_VERTICAL);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.leftMargin = XemsUi.dp(c, 14);
        row.addView(t, lp);
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
                : b.seconds() + AiText.t(" сек · ", " s · ") + b.hz + " Hz · " + b.pw + " µs · "
                + (b.dbl ? b.on + "/" + b.off2() + AiText.t(" сек, 2-ри ", " s, 2nd ") + b.hz2 + " Hz " + b.str2 + "%"
                        : b.on + ":" + b.off + AiText.t(" сек", " s"))
                + AiText.t(" · рампа ", " · ramp ") + valueText(P_RIN, b.rampIn) + "/" + valueText(P_ROUT, b.rampOut)
                + AiText.t(" сек · сила ", " s · strength ") + b.rel + "%", 13, XemsUi.MUTED, false);
        sub.setPadding(0, XemsUi.dp(c, 2), 0, XemsUi.dp(c, 8));
        col.addView(sub);

        if (!ro) {
            // the length first (what the trainer sets); the impulse follows the movement — folded
            LinearLayout row1 = XemsUi.horizontal(c);
            row1.setGravity(Gravity.TOP);                      // tops line up: the pill and the button
            boolean hold = e != null && e.isHold();
            param(c, row1, b.isRest() ? AiText.t("секунди", "seconds") : hold ? AiText.t("задържания", "holds")
                    : b.hasExercise() ? AiText.t("повторения", "repetitions") : AiText.t("импулса", "impulses"), b.reps, P_REPS);
            if (!b.isRest()) {
                // the same four columns as the impulse rows below: the values line up
                TextView more = XemsUi.button(c, advanced ? AiText.t("Импулс ▾", "Impulse ▾") : AiText.t("Импулс ▸", "Impulse ▸"),
                        XemsUi.SECONDARY);
                more.setOnClickListener(new Act(A_ADVANCED, 0));
                LinearLayout.LayoutParams mp = new LinearLayout.LayoutParams(0, XemsUi.dp(c, 44), 1f);
                mp.rightMargin = XemsUi.dp(c, 8);
                row1.addView(more, mp);
                row1.addView(new View(c), new LinearLayout.LayoutParams(0, 1, 2f));
            } else {
                row1.addView(new View(c), new LinearLayout.LayoutParams(0, 1, 3f));
            }
            col.addView(row1);
            if (!b.isRest() && advanced) {
                // everything by hand: impulse + pause or a double impulse, both impulses, the ramps
                col.addView(XemsUi.segmented(c, new String[] {AiText.t("Импулс + пауза", "Impulse + pause"),
                        AiText.t("Двоен импулс", "Double impulse")}, b.dbl ? 1 : 0, new Act(A_MODE, 0)),
                        XemsUi.matchWrap(c, 8));
                col.addView(group(c, b.dbl ? AiText.t("Импулс 1", "Impulse 1") : AiText.t("Импулс", "Impulse")),
                        XemsUi.matchWrap(c, 10));
                LinearLayout row2 = XemsUi.horizontal(c);
                param(c, row2, "Hz", ImpulseGlyph.HZ, b.hz, P_HZ);
                param(c, row2, AiText.t("сек", "s"), ImpulseGlyph.TIME, b.on, P_ON);
                param(c, row2, "µs", ImpulseGlyph.DEPTH, b.pw, P_PW);
                param(c, row2, AiText.t("сила %", "strength %"), ImpulseGlyph.STRENGTH, b.rel, P_REL);
                col.addView(row2, XemsUi.matchWrap(c, 4));
                col.addView(group(c, b.dbl ? AiText.t("Импулс 2 — вместо паузата", "Impulse 2 — in place of the pause")
                        : AiText.t("Пауза", "Pause")), XemsUi.matchWrap(c, 10));
                LinearLayout row3 = XemsUi.horizontal(c);
                if (b.dbl) {
                    param(c, row3, "Hz", ImpulseGlyph.HZ, b.hz2, P_HZ2);
                    param(c, row3, AiText.t("сек", "s"), ImpulseGlyph.TIME, b.off2(), P_OFF);
                    param(c, row3, AiText.t("сила % от 1-ви", "strength % of 1st"), ImpulseGlyph.STRENGTH, b.str2, P_STR2);
                    // the suit has one pulse width for both impulses: say it where it is asked
                    TextView same = XemsUi.text(c, AiText.t("µs — като импулс 1", "µs — as impulse 1"), 11, XemsUi.HINT, false);
                    same.setGravity(Gravity.CENTER);
                    row3.addView(same, new LinearLayout.LayoutParams(0, XemsUi.dp(c, 46), 1f));
                } else {
                    param(c, row3, AiText.t("сек", "s"), ImpulseGlyph.TIME, b.off, P_OFF);
                    row3.addView(new View(c), new LinearLayout.LayoutParams(0, 1, 3f));
                }
                col.addView(row3, XemsUi.matchWrap(c, 4));
                col.addView(group(c, AiText.t("Рампа на всеки импулс", "Ramp of every impulse")), XemsUi.matchWrap(c, 10));
                LinearLayout row4 = XemsUi.horizontal(c);
                param(c, row4, AiText.t("начало, сек", "start, s"), ImpulseGlyph.RAMP, b.rampIn, P_RIN);
                param(c, row4, AiText.t("край, сек", "end, s"), ImpulseGlyph.RAMP, b.rampOut, P_ROUT);
                row4.addView(new View(c), new LinearLayout.LayoutParams(0, 1, 2f));
                col.addView(row4, XemsUi.matchWrap(c, 4));
            }
        }
        card.addView(col, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        panel.addView(card, XemsUi.matchWrap(c, 0));
    }

    /** A small group caption above a row of values. */
    private static TextView group(Context c, String t) {
        TextView g = XemsUi.text(c, t, 12.5f, XemsUi.MUTED, true);
        g.setPadding(XemsUi.dp(c, 2), 0, 0, 0);
        return g;
    }

    private static void param(Context c, LinearLayout row, String caption, int value, int which) {
        param(c, row, caption, -1, value, which);
    }

    /** A compact − value + with its symbol and caption; holding repeats. */
    private static void param(Context c, LinearLayout row, String caption, int glyph, int value, int which) {
        LinearLayout col = XemsUi.vertical(c);
        col.setGravity(Gravity.CENTER_HORIZONTAL);
        LinearLayout box = XemsUi.horizontal(c);
        box.setGravity(Gravity.CENTER_VERTICAL);
        box.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(c, 22), XemsUi.STROKE, XemsUi.dp(c, 1)));
        box.setPadding(XemsUi.dp(c, 3), XemsUi.dp(c, 3), XemsUi.dp(c, 3), XemsUi.dp(c, 3));
        TextView minus = XemsUi.iconButton(c, "−", XemsUi.CARD, XemsUi.TEXT, 38);
        TextView plus = XemsUi.iconButton(c, "+", XemsUi.CARD, XemsUi.TEXT, 38);
        TextView v = XemsUi.text(c, valueText(which, value), 18, XemsUi.TEXT, true);
        v.setGravity(Gravity.CENTER);
        v.setSingleLine(true);
        Act act = new Act(A_PARAM, which);
        act.value = v;
        XemsUi.repeatOnHold(minus, act, -1);
        XemsUi.repeatOnHold(plus, act, +1);
        // − at one end, + at the other, the value in the middle: the pill is filled, no empty tail
        box.addView(minus);
        box.addView(v, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        box.addView(plus);
        col.addView(box, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT));
        TextView cap = XemsUi.text(c, caption, 11, XemsUi.HINT, false);
        cap.setPadding(0, XemsUi.dp(c, 3), 0, 0);
        cap.setGravity(Gravity.CENTER);
        if (glyph >= 0) {
            ImpulseGlyph gd = new ImpulseGlyph(glyph, XemsUi.MUTED, XemsUi.dp(c, 1.4f));
            int gs = XemsUi.dp(c, 13);
            gd.setBounds(0, 0, gs, gs);
            cap.setCompoundDrawables(gd, null, null, null);
            cap.setCompoundDrawablePadding(XemsUi.dp(c, 4));
            cap.setGravity(Gravity.CENTER_VERTICAL);
        }
        col.addView(cap);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        lp.rightMargin = XemsUi.dp(c, 8);
        row.addView(col, lp);
    }

    /** A value as shown: ramps in seconds with one decimal (stored as ms), the rest as is. */
    static String valueText(int which, int value) {
        if (which == P_RIN || which == P_ROUT) {
            return String.format(java.util.Locale.US, "%.1f", value / 1000f);
        }
        return String.valueOf(value);
    }

    /** One step of a block value (Hz: 1 below 20, else 5; µs: 25; strength: 5; ramp: 0.1 s). */
    static void step(Workout.Block b, int which, int dir) {
        switch (which) {
            case P_HZ2:
                b.hz2 += dir * (b.hz2 + (dir > 0 ? 0 : -1) < 20 ? 1 : 5);
                break;
            case P_STR2:
                b.str2 += dir * 5;
                break;
            case P_RIN:
                b.rampIn += dir * Workout.RAMP_STEP_MS;
                break;
            case P_ROUT:
                b.rampOut += dir * Workout.RAMP_STEP_MS;
                break;
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
            case P_OFF: return b.dbl ? b.off2() : b.off;
            case P_HZ2: return b.hz2;
            case P_STR2: return b.str2;
            case P_RIN: return b.rampIn;
            case P_ROUT: return b.rampOut;
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
            refreshLegend();
            if (shell != null) {
                fillPanel(shell.dialog.getContext());
            }
        }
    }

    /** A change on the map: saved at once (without rebuilding the map mid-edit), the summary follows. */
    static void refreshFooter() {
        if (shell == null || screen != EDIT) {
            return;
        }
        autosave(shell.dialog.getContext());
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
                : AiText.t("+ / − серии · номерът е редът в програмата",
                        "+ / − sets · the number is the order in the program"));
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

        if (preview != null && !replace && countIn(preview) > 0) {
            body.addView(previewCard(c, preview), XemsUi.matchWrap(c, 12));
        }
        pickGrid = XemsUi.vertical(c);
        pickGrid.setClipChildren(false);
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
            boolean noneOn = ExerciseLibrary.enabled(c).isEmpty();
            // nothing switched on yet: say where the fix is (the admin's exercise page), not "nothing matches"
            TextView none = XemsUi.text(c, noneOn
                    ? (ExerciseLibrary.pending(c) > 0
                            ? AiText.t("Упражненията се изтеглят — след малко са тук.", "The exercises are downloading — here in a moment.")
                            : AiText.t("Още няма включени упражнения — админът ги избира от страницата „Упражнения“ на сървъра.",
                                    "No exercises switched on yet — the admin picks them on the server's Exercises page."))
                    : AiText.t("Нищо не съвпада.", "Nothing matches."), 15, XemsUi.MUTED, false);
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
                // room for a picked card to rise (scale, glow, shadow) without being cut
                int g = XemsUi.dp(c, 8);
                row.setPadding(g, g, g, g);
                row.setClipChildren(false);
                row.setClipToPadding(false);
                pickGrid.addView(row, XemsUi.matchWrap(c, i == 0 ? 0 : 4));
            }
            ExerciseLibrary.Entry e = list.get(i);
            View cell = pickCell(c, e);
            Act a = new Act(replaceIndex >= 0 ? A_PICKED : A_PICK_TOGGLE, 0);
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

    /** The exercise's place in the program (1 = first), 0 = not in it: the order of the first sets. */
    private static int orderOf(String ex) {
        List<String> seen = new ArrayList<String>();
        for (Workout.Block b : editing.blocks) {
            if (b.ex != null && !b.isRest() && !seen.contains(b.ex)) {
                seen.add(b.ex);
            }
        }
        return seen.indexOf(ex) + 1;
    }

    /** The exercise picked last (the one in the top slot), or null. */
    private static String lastPicked() {
        String last = null;
        int best = 0;
        for (Workout.Block b : editing.blocks) {
            if (b.ex != null && !b.isRest() && orderOf(b.ex) > best) {
                best = orderOf(b.ex);
                last = b.ex;
            }
        }
        return last;
    }

    /** The card that was just picked (it rises once). */
    private static String justPicked;

    /**
     * An exercise card: the still figure with − and + at its two ends (sets), its place in the program top-left;
     * picked = a green frame with a soft glow, raised off the screen. A tap on the card picks it or takes it out.
     */
    private static View pickCell(Context c, ExerciseLibrary.Entry e) {
        int n = countIn(e.id);
        boolean on = n > 0;
        boolean replace = replaceIndex >= 0;
        LinearLayout cell = XemsUi.vertical(c);
        float r = XemsUi.dp(c, 14);
        if (on) {
            // glow: a soft green halo around a green-framed card
            android.graphics.drawable.GradientDrawable halo = new android.graphics.drawable.GradientDrawable();
            halo.setCornerRadius(r + XemsUi.dp(c, 4));
            halo.setColor(XemsUi.alpha(XemsUi.GO, 0x38));
            android.graphics.drawable.LayerDrawable bg = new android.graphics.drawable.LayerDrawable(new android.graphics.drawable.Drawable[] {
                    halo, XemsUi.rounded(XemsUi.mix(XemsUi.CARD, XemsUi.GO, 0.14f), r, XemsUi.GO, XemsUi.dp(c, 2.5f))});
            int g = XemsUi.dp(c, 4);
            bg.setLayerInset(1, g, g, g, g);
            cell.setBackgroundDrawable(bg);
            cell.setPadding(XemsUi.dp(c, 12), XemsUi.dp(c, 12), XemsUi.dp(c, 12), XemsUi.dp(c, 14));
            cell.setElevation(XemsUi.dp(c, 10));
            if (android.os.Build.VERSION.SDK_INT >= 28) {
                cell.setOutlineSpotShadowColor(XemsUi.GO);
                cell.setOutlineAmbientShadowColor(XemsUi.GO);
            }
            if (e.id.equals(justPicked)) {
                cell.setScaleX(0.96f);
                cell.setScaleY(0.96f);
                cell.animate().scaleX(1.03f).scaleY(1.03f).translationZ(XemsUi.dp(c, 6)).setDuration(220).start();
            } else {
                cell.setScaleX(1.03f);
                cell.setScaleY(1.03f);
                cell.setTranslationZ(XemsUi.dp(c, 6));
            }
        } else {
            cell.setBackgroundDrawable(XemsUi.rounded(XemsUi.CARD, r, XemsUi.STROKE, XemsUi.dp(c, 1)));
            cell.setPadding(XemsUi.dp(c, 8), XemsUi.dp(c, 8), XemsUi.dp(c, 8), XemsUi.dp(c, 10));
        }
        android.widget.FrameLayout tile = new android.widget.FrameLayout(c);
        tile.setBackgroundDrawable(XemsUi.rounded(ProgramArt.TILE, XemsUi.dp(c, 10), 0, 0));
        ExerciseFigure f = new ExerciseFigure(c);
        f.setGlow(false);
        f.setStill(true);
        f.setExercise(e.id);
        tile.addView(f, new android.widget.FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, XemsUi.dp(c, 104)));
        if (on && !replace) {
            // its place in the program, top-left
            TextView ord = XemsUi.text(c, String.valueOf(orderOf(e.id)), 14, XemsUi.ON_ACCENT, true);
            ord.setGravity(Gravity.CENTER);
            android.graphics.drawable.GradientDrawable disc = new android.graphics.drawable.GradientDrawable();
            disc.setShape(android.graphics.drawable.GradientDrawable.OVAL);
            disc.setColor(XemsUi.GO);
            ord.setBackgroundDrawable(disc);
            android.widget.FrameLayout.LayoutParams op = new android.widget.FrameLayout.LayoutParams(
                    XemsUi.dp(c, 28), XemsUi.dp(c, 28), Gravity.TOP | Gravity.LEFT);
            op.topMargin = XemsUi.dp(c, 6);
            op.leftMargin = XemsUi.dp(c, 6);
            tile.addView(ord, op);
        }
        if (!replace) {
            // − and + at the two ends of the picture: one set less / more
            tile.addView(setButton(c, e.id, false, on), sideLp(c, Gravity.LEFT));
            tile.addView(setButton(c, e.id, true, on), sideLp(c, Gravity.RIGHT));
        }
        cell.addView(tile);
        TextView name = XemsUi.text(c, e.name(), 14, XemsUi.TEXT, true);
        name.setMaxLines(2);
        name.setPadding(0, XemsUi.dp(c, 8), 0, 0);
        cell.addView(name);
        cell.addView(XemsUi.text(c, on ? n + AiText.t(n == 1 ? " серия" : " серии", n == 1 ? " set" : " sets") + " · " + e.eq : e.eq,
                11.5f, on ? XemsUi.GO_TEXT : XemsUi.MUTED, on));
        XemsUi.pressable(cell);
        return cell;
    }

    private static android.widget.FrameLayout.LayoutParams sideLp(Context c, int side) {
        android.widget.FrameLayout.LayoutParams lp = new android.widget.FrameLayout.LayoutParams(
                XemsUi.dp(c, 48), XemsUi.dp(c, 48), side | Gravity.CENTER_VERTICAL);
        return lp;
    }

    /** A − or + over the picture's edge: a round, see-through disc with the symbol (≥ 48 dp to touch). */
    private static View setButton(Context c, String ex, boolean plus, boolean on) {
        TextView t = XemsUi.text(c, plus ? "+" : "−", 22, 0xFFFFFFFF, true);
        t.setGravity(Gravity.CENTER);
        t.setIncludeFontPadding(false);
        android.graphics.drawable.GradientDrawable disc = new android.graphics.drawable.GradientDrawable();
        disc.setShape(android.graphics.drawable.GradientDrawable.OVAL);
        disc.setColor(plus ? XemsUi.alpha(XemsUi.GO, 0xE6) : 0xB3000000);
        disc.setStroke(XemsUi.dp(c, 1), 0x66FFFFFF);
        android.graphics.drawable.InsetDrawable in = new android.graphics.drawable.InsetDrawable(disc, XemsUi.dp(c, 6));
        t.setBackgroundDrawable(in);
        Act a = new Act(A_PICKED, plus ? 0 : -1);
        a.ex = ex;
        t.setOnClickListener(a);
        boolean live = plus || on;
        t.setEnabled(live);
        t.setAlpha(live ? 1f : 0.35f);                     // nothing to take away yet
        XemsUi.pressable(t);
        t.setContentDescription(plus ? AiText.t("Още една серия", "One more set") : AiText.t("Една серия по-малко", "One set less"));
        return t;
    }

    /** The top slot: the exercise picked last, moving, with how to do it. */
    private static View previewCard(Context c, String id) {
        ExerciseLibrary.Entry e = ExerciseLibrary.get(c, id);
        LinearLayout card = XemsUi.card(c);
        card.setOrientation(LinearLayout.HORIZONTAL);
        LinearLayout tile = new LinearLayout(c);
        tile.setBackgroundDrawable(XemsUi.rounded(ProgramArt.TILE, XemsUi.dp(c, 12), 0, 0));
        ExerciseFigure f = new ExerciseFigure(c);
        f.setCycle(System.currentTimeMillis(), 2, 2);
        f.setExercise(id);
        tile.addView(f, new LinearLayout.LayoutParams(XemsUi.dp(c, 190), XemsUi.dp(c, 140)));
        card.addView(tile);
        LinearLayout text = XemsUi.vertical(c);
        text.setPadding(XemsUi.dp(c, 18), 0, 0, 0);
        int n = countIn(id);
        text.addView(XemsUi.text(c, orderOf(id) + ".  " + (e != null ? e.name() : AutoTemplates.name(id)), 19, XemsUi.TEXT, true));
        TextView sets = XemsUi.text(c, n + AiText.t(n == 1 ? " серия" : " серии", n == 1 ? " set" : " sets"), 13, XemsUi.GO_TEXT, true);
        sets.setPadding(0, XemsUi.dp(c, 2), 0, 0);
        text.addView(sets);
        TextView how = XemsUi.text(c, e != null ? e.howText() : "", 13.5f, XemsUi.MUTED, false);
        how.setPadding(0, XemsUi.dp(c, 6), 0, 0);
        text.addView(how);
        card.addView(text, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        XemsUi.enter(card);
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
            case A_KIND:
                if ((v == 1) != procedures) {
                    procedures = v == 1;
                    go(LIST);
                }
                return;
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
                confirmDelete = false;
                preview = null;
                replaceIndex = -1;
                go(w.isPassive() ? EDIT : PICK);
                break;
            }
            case A_OPEN: {
                Workout o = ownList(c).get(v);
                editing = o.copy(o.id, o.name);
                deriveGoal(editing);                           // an old "procedure" with exercises is a workout
                dirty = false;
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
            case A_CLOSE:
                if (screen != LIST && editing != null && !editing.preset && dirty && !editing.blocks.isEmpty()) {
                    save(c);                                   // ✕ loses nothing either
                }
                close();
                break;
            case A_ADVANCED: {
                advanced = !advanced;
                fillPanel(c);
                break;
            }
            case A_MODE: {
                int s = mapView != null ? mapView.getSelected() : -1;
                if (s >= 0 && s < editing.blocks.size() && (v == 1) != editing.blocks.get(s).dbl) {
                    Workout.Block b = editing.blocks.get(s);
                    b.dbl = v == 1;
                    b.clampAll();
                    dirty = true;
                    mapView.invalidate();
                    fillPanel(c);
                    refreshFooter();
                    refreshLegend();
                    autosave(c);
                }
                break;
            }
            case A_ADD_EX:
                replaceIndex = -1;
                preview = lastPicked();                     // the top slot shows the exercise picked last
                justPicked = null;
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
            case A_PICK_TOGGLE:
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
                a.value.setText(valueText(a.arg, valueOf(b, a.arg)));
                dirty = true;
                mapView.invalidate();
                refreshFooter();
                refreshLegend();
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

    /** The ready map tapped in the list. */
    private static Workout presetAt(int v, Act a) {
        List<Workout> list = presetList();
        return list.get(Math.max(0, Math.min(list.size() - 1, v)));
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
        if (a.code == A_PICK_TOGGLE && countIn(a.ex) > 0) {
            removeAll(a.ex);                                   // a tap on a picked card takes it out
            justPicked = null;
        } else if (a.code != A_PICK_TOGGLE && a.arg < 0) {
            for (int i = editing.blocks.size() - 1; i >= 0; i--) {
                if (a.ex.equals(editing.blocks.get(i).ex) && !editing.blocks.get(i).isRest()) {
                    removeSet(i);
                    break;
                }
            }
            justPicked = null;
        } else {
            addSet(a.ex, e);
            justPicked = countIn(a.ex) == 1 ? a.ex : null;
        }
        // the top slot: the exercise just touched while it is in the program, else the one picked last
        preview = countIn(a.ex) > 0 ? a.ex : lastPicked();
        dirty = true;
        int keep = shell.scroll.getScrollY();
        go(PICK);
        shell.scroll.post(new ScrollTo(keep));
    }

    /** One more set of an exercise: after its last set (a rest between), so the program keeps its order. */
    private static void addSet(String ex, ExerciseLibrary.Entry e) {
        Workout.Block b = Workout.forExercise(ex, e != null ? e.pat : Workout.patternOf(ex), e != null && e.isHold());
        int last = -1;
        for (int i = 0; i < editing.blocks.size(); i++) {
            if (ex.equals(editing.blocks.get(i).ex) && !editing.blocks.get(i).isRest()) {
                last = i;
            }
        }
        if (last >= 0) {
            Workout.Block prev = editing.blocks.get(last);
            b = prev.copy();                                   // the next set as the one before (its impulse)
            editing.blocks.add(last + 1, Workout.restAfter(prev));
            editing.blocks.add(last + 2, b);
            return;
        }
        if (!editing.blocks.isEmpty() && !editing.blocks.get(editing.blocks.size() - 1).isRest()) {
            editing.blocks.add(Workout.restAfter(editing.blocks.get(editing.blocks.size() - 1)));
        }
        editing.blocks.add(b);
    }

    /** Take the set at i out, with the rest that led to it (or the one after a first set). */
    private static void removeSet(int i) {
        editing.blocks.remove(i);
        if (i > 0 && i - 1 < editing.blocks.size() && editing.blocks.get(i - 1).isRest()) {
            editing.blocks.remove(i - 1);
        } else if (i < editing.blocks.size() && editing.blocks.get(i).isRest()) {
            editing.blocks.remove(i);
        }
    }

    private static void removeAll(String ex) {
        for (int i = editing.blocks.size() - 1; i >= 0; i--) {
            if (ex.equals(editing.blocks.get(i).ex) && !editing.blocks.get(i).isRest()) {
                removeSet(i);
                i = Math.min(i, editing.blocks.size());
            }
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
        deriveGoal(editing);                               // the exercises decide it, not a menu
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
