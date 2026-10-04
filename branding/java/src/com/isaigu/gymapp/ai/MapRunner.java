package com.isaigu.gymapp.ai;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Handler;
import android.os.Looper;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainUser;
import com.isaigu.gymapp.train.TrainItemManager;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.train.utils.MasterStrengthControl;
import com.isaigu.gymapp.train.utils.MusicSync;
import com.isaigu.gymapp.wearable.SafeGuard;
import com.isaigu.gymapp.wearable.WearableBleDiagLog;
import com.isaigu.gymapp.widget.XemsUi;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Runs an impulse map exactly as drawn (Тренировки → "По картата"): every block's Hz, µs, impulse / pause go to all
 * rows; the strength stays each client's own — a block's "сила %" scales it, a rest block is 0; the trainer's + / −
 * on the main screen are kept (read back at every block change). Impulse blocks advance by impulse cycles (one per
 * repetition), rests by time (MapClock). A card at the top shows the line with a playhead, the exercise and what
 * comes next; ■ stops. Not together with AI, Auto, music sync or the timer's block program. docs/xems-workouts.md
 */
public final class MapRunner {
    private MapRunner() {}

    private static final long TICK_MS = 250L;

    private static Workout map;
    private static MapClock clock;
    private static long lastTickMs;
    private static long cycleStartMs;
    private static int lastIndex = -1;
    /** Seconds the suit has stood still (the map closes itself after IDLE_MAX_S). */
    private static double idleS;
    static final double IDLE_MAX_S = 5 * 60;
    /** Exercises swapped for the leader's client (shown in the card once). */
    private static int swapped;
    /** Each row's strength at 100 % of a block (trainer's value). */
    private static final Map<TrainItem, Integer> base = new HashMap<TrainItem, Integer>();
    /** Each row's own impulse before the map (Hz, µs, ON, OFF, active pause, its Hz and %, ramps): put back on stop. */
    private static final Map<TrainItem, int[]> own = new HashMap<TrainItem, int[]>();
    /** What the map last wrote to each row (same order): on stop only the values still the map's go back. */
    private static final Map<TrainItem, int[]> wrote = new HashMap<TrainItem, int[]>();
    private static final Handler handler = new Handler(Looper.getMainLooper());
    private static final Runnable ticker = new Ticker();
    /**
     * The map is prepared and waits for ▶ Старт (owner, 1.1.336 — the automatic mode's "С упражнения"): the trainer
     * sets the total strength and each channel on the main screen, then starts. The clock and the output are still.
     */
    private static boolean waiting;
    private static TextView goButton;
    private static TextView stopButton;

    // card
    private static Dialog dialog;
    private static ImpulseMapView line;
    private static ExerciseFigure figure;
    private static final long FIGURE_T0 = System.currentTimeMillis();
    private static TextView head;
    private static TextView name;
    private static TextView detail;
    private static TextView next;

    // the smart impulse of a workout (MapDynamics, owner 1.1.324); null for a procedure = exactly as drawn
    private static MapDynamics dyn;
    /** The step going out now (null = the block as drawn). */
    private static AutoModel.Step cur;
    private static String approach = "";
    private static Context app;

    public static boolean isRunning() {
        return map != null && clock != null && !clock.isDone();
    }

    /** Why a map cannot start now, or null (and it starts). */
    public static String start(Activity a, Workout w) {
        return begin(a, w, false);
    }

    /** As {@link #start} but the map only waits: the card has ▶ Старт, the strength is set on the main screen first. */
    public static String arm(Activity a, Workout w) {
        return begin(a, w, true);
    }

    /** True while an armed map waits for its start. */
    public static boolean isWaiting() {
        return waiting && map != null;
    }

    private static String begin(Activity a, Workout w, boolean arm) {
        if (w == null || w.blocks.isEmpty()) {
            return AiText.t("Картата е празна.", "The map is empty.");
        }
        if (isRunning()) {
            return AiText.t("Една карта вече върви.", "A map is already running.");
        }
        if (!w.isPassive() && !com.isaigu.gymapp.widget.XemsLicense.has(com.isaigu.gymapp.widget.XemsLicense.AUTO)) {
            // an exercise program is the automatic mode's (or the AI's): not without it
            return AiText.t("Програмите с упражнения вървят в Авто или AI — Авто не е отключен.",
                    "Exercise programs run in Auto or AI — Auto is not unlocked.");
        }
        String other = OutputOwner.conflict(OutputOwner.MAP);
        if (other != null) {
            return other;
        }
        List<TrainItem> rows = rows();
        if (rows.isEmpty()) {
            return AiText.t("Добави участник и свържи костюма.", "Add a participant and connect the suit.");
        }
        map = w.copy(w.id, w.name);
        swapForLeader(a);
        clock = new MapClock(map);
        app = a != null ? a.getApplicationContext() : app;
        dyn = null;
        cur = null;
        approach = "";
        if (!map.isPassive()) {
            dyn = dynamicsFor(a);
        }
        idleS = 0;
        base.clear();
        own.clear();
        wrote.clear();
        waiting = arm;
        for (TrainItem it : rows) {
            ProgramDataBean b = bean(it);
            if (!arm) {
                base.put(it, b != null ? b.strenth : 0);
            }
            if (b != null) {
                own.put(it, new int[] {b.hz, b.pulseWidth, b.pulseContinue, b.pulsePause, b.activePause ? 1 : 0,
                        b.pauseHz, b.pauseStrenthPercent, b.inputRamp, b.outputRamp});
            }
        }
        lastIndex = -1;
        if (!arm) {
            launch();
        }
        lastTickMs = System.currentTimeMillis();
        handler.removeCallbacks(ticker);
        handler.postDelayed(ticker, TICK_MS);
        showCard(a);
        WearableBleDiagLog.log("map", (arm ? "armed " : "start ") + map.id + " blocks " + map.blocks.size() + " "
                + map.totalSeconds() + " s");
        return null;
    }

    /** The first block goes out and the suits start. */
    private static void launch() {
        apply(true);
        for (TrainItem it : rows()) {
            it.workLength = map.totalSeconds() + 120;
        }
        try {
            TrainItemManager m = AiSession.manager();
            if (m != null) {
                m.startAll();
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("map", "startAll: " + t);
        }
        lastTickMs = System.currentTimeMillis();
    }

    /** ▶ Старт of a waiting map: what the trainer set is each row's 100 %, then the map runs. */
    public static void go() {
        if (!isWaiting()) {
            return;
        }
        boolean any = false;
        for (TrainItem it : rows()) {
            ProgramDataBean b = bean(it);
            base.put(it, b != null ? b.strenth : 0);
            any |= b != null && b.strenth > 0;
        }
        if (!any) {
            return;                                            // nothing set yet: the card says so
        }
        waiting = false;
        lastIndex = -1;
        launch();
        if (stopButton != null) {
            stopButton.setText(AiText.t("■  Стоп", "■  Stop"));
        }
        if (goButton != null) {
            goButton.setVisibility(View.GONE);
        }
        updateCard(System.currentTimeMillis());
    }

    /** The leader's fitness, age, training count and HR max for the smart impulse. */
    private static MapDynamics dynamicsFor(Context c) {
        AiModel.Fitness fit = AiModel.Fitness.MID;
        int age = -1;
        int sessions = 0;
        int hrMax = 0;
        try {
            TrainItem lead = leader();
            TrainUser u = lead != null && lead.data != null ? lead.data.trainUser : null;
            AiProfile p = u != null ? AiProfile.of(u) : null;
            if (p != null) {
                fit = p.fitness != null ? p.fitness : fit;
                age = p.age != null ? p.age : -1;
                hrMax = p.age != null ? AiPlanner.hrMax(p.sex != null ? p.sex : AiModel.Sex.FEMALE, p.age) : 0;
            }
            if (u != null && c != null) {
                sessions = AutoHistory.of(c, u.id).sessions;
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("map", "dynamics: " + t);
        }
        return new MapDynamics(fit, sessions, age, hrMax);
    }

    /** The block's movement: its own pattern, else the built-in one, else the library's (owner, 1.1.326), in the
     *  admin's picker group as it is now — the group decides (1.1.327). */
    static int moveOf(Workout.Block b) {
        String pat = b.pat;
        boolean hold = b.hold;
        String zone = null;
        if (b.ex != null) {
            if (pat == null) {
                pat = Workout.patternOf(b.ex);
            }
            if (app != null) {
                try {
                    ExerciseLibrary.Entry e = ExerciseLibrary.get(app, b.ex);
                    if (e != null) {
                        if (pat == null) {
                            pat = e.pat;
                        }
                        hold = e.isHold() || "core_static".equals(pat);   // blocks saved before 1.1.327: timed ≠ hold
                        zone = ExerciseLibrary.zoneOf(app, e);
                    }
                } catch (Throwable ignored) {
                }
            }
        }
        return AutoDynamics.move(pat, hold, zone);
    }

    /** The block's exercise work per suit channel (library / built-in {@code mus}), null = none. */
    static int[] musclesOf(Workout.Block b) {
        if (b == null || b.ex == null || b.isRest()) {
            return null;
        }
        if (app != null) {
            ExerciseLibrary.load(app);                         // registers the library's muscles
        }
        int ix = AutoTemplates.index(b.ex);
        return ix >= 0 ? AutoTemplates.muscles(ix) : null;
    }

    static AutoModel.Step stepOf(Workout.Block b) {
        AutoModel.Step s = new AutoModel.Step(b.hz, b.pw, Math.max(1, b.on), Math.max(1, b.off));
        s.pauseHz = b.dbl ? b.hz2 : 0;
        s.pauseSigma = b.dbl ? b.str2 / 100.0 : 0;
        s.rampUpMs = b.rampIn;
        s.rampDownMs = b.rampOut;
        return s;
    }

    /**
     * The leader's client: exercises their states rule out are swapped like the AI does (easier for the same
     * muscle → nearest allowed); the impulse stays as drawn. One map for the whole group, so the leader decides.
     */
    private static void swapForLeader(Context c) {
        swapped = 0;
        try {
            AiProfile p = AiProfile.of(leader());
            if (p == null) {
                return;
            }
            AutoModel.Input in = new AutoModel.Input();
            if (p.sex != null) {
                in.sex = p.sex;
            }
            if (p.age != null) {
                in.age = p.age;
            }
            if (p.weightKg != null) {
                in.weightKg = p.weightKg;
            }
            in.heightCm = p.heightCm;
            in.cond = new java.util.HashSet<String>(p.cond);
            in.extra.diastasis = p.cond.contains("diastasis");
            AutoTemplates.noCardioMachine = !AutoHistory.cardioMachine(c);
            java.util.Set<String> avoid = AutoTemplates.avoidFor(in);
            for (Workout.Block b : map.blocks) {
                if (b.hasExercise() && avoid.contains(b.ex)) {
                    b.ex = AutoTemplates.safer(b.ex, avoid);
                    swapped++;
                }
            }
            if (swapped > 0) {
                WearableBleDiagLog.log("map", "swapped " + swapped + " for the client's state");
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("map", "swap: " + t);
        }
    }

    /** The map's name while it runs (the session record), else null. */
    public static String name() {
        return isRunning() ? map.name : null;
    }

    public static void stop() {
        if (map == null) {
            return;
        }
        handler.removeCallbacks(ticker);
        dyn = null;
        cur = null;
        approach = "";
        for (TrainItem it : rows()) {
            ProgramDataBean b = bean(it);
            Integer s = base.get(it);
            int[] o = own.get(it);
            if (b != null && o != null) {                       // the row's own impulse back
                // a value the trainer changed during the map (⚙, + / −) stays: only the map's own values go back
                int[] w = wrote.get(it);
                int[] now = snap(b);
                int[] back = new int[now.length];
                for (int i = 0; i < now.length; i++) {
                    back[i] = w == null || now[i] == w[i] ? o[i] : now[i];
                }
                b.hz = back[0];
                b.pulseWidth = back[1];
                b.pulseContinue = back[2];
                b.pulsePause = back[3];
                b.activePause = back[4] == 1;
                b.pauseHz = back[5];
                b.pauseStrenthPercent = back[6];
                b.inputRamp = back[7];
                b.outputRamp = back[8];
            }
            if (b != null && s != null) {
                b.strenth = s;                                   // the trainer's strength back
                try {
                    it.onParamsChange();
                } catch (Throwable ignored) {
                }
            }
        }
        try {
            TrainItemManager m = AiSession.manager();
            if (m != null && !waiting) {
                m.stopAll();
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("map", "stopAll: " + t);
        }
        waiting = false;
        WearableBleDiagLog.log("map", "stop at block " + (clock != null ? clock.getIndex() : -1));
        map = null;
        clock = null;
        base.clear();
        own.clear();
        wrote.clear();
        AiEnergy.exerciseMet = 0;
        hideCard();
    }

    /** AiSession.onPulseCycle: the leader's impulse started. */
    static void onPulseCycle(TrainItem item) {
        if (!isRunning() || waiting || item != leader()) {
            return;
        }
        cycleStartMs = System.currentTimeMillis();
        if (clock.onCycle()) {
            apply(false);
        } else if (dyn != null) {
            writeCycle();                                      // every repetition glides with the fatigue
        }
    }

    /** Index of the exercise of the block now (for the session record), −1 when none. */
    public static int currentExercise() {
        Workout.Block b = isRunning() && !waiting ? clock.block() : null;
        return b != null && b.hasExercise() ? AutoTemplates.index(b.ex) : -1;
    }

    static final class Ticker implements Runnable {
        @Override
        public void run() {
            try {
                tick();
            } catch (Throwable t) {
                WearableBleDiagLog.log("map", "tick: " + t);
            }
            if (map != null) {
                handler.postDelayed(this, TICK_MS);
            }
        }
    }

    private static void tick() {
        long now = System.currentTimeMillis();
        double dt = Math.max(0, Math.min(2000, now - lastTickMs)) / 1000.0;
        lastTickMs = now;
        TrainItem lead = leader();
        if (lead == null) {
            stop();
            return;
        }
        if (waiting) {
            updateCard(now);
            return;
        }
        boolean running = lead.data != null && lead.data.start;
        if (dyn != null) {
            Workout.Block b = clock.block();
            AutoModel.Step s = cur;
            boolean work = b != null && !b.isRest() && s != null;
            boolean on = work && now - cycleStartMs < s.onS * 1000L;
            dyn.advance(dt, running && work, on, work ? s.hz : 0, work ? s.pauseHz : 0, work ? s.pauseSigma : 0,
                    work ? b.rel / 100.0 : 0);
        }
        if (running && clock.tick(dt)) {
            apply(false);
        }
        idleS = running ? 0 : idleS + dt;
        if (idleS > IDLE_MAX_S) {
            WearableBleDiagLog.log("map", "idle " + (int) idleS + " s — closed");
            stop();                                            // stopped on the main screen and left: close the map
            return;
        }
        if (clock.isDone()) {
            stop();
            return;
        }
        AiEnergy.exerciseMet = AutoTemplates.met(currentExercise());   // the movement's cost in the live kcal
        updateCard(now);
    }

    /** Write the block now to every row (only when it changed). */
    private static void apply(boolean first) {
        if (clock.isDone()) {
            return;
        }
        int idx = clock.getIndex();
        if (idx == lastIndex && !first) {
            return;
        }
        Workout.Block prev = lastIndex >= 0 && lastIndex < map.blocks.size() ? map.blocks.get(lastIndex) : null;
        Workout.Block b = clock.block();
        lastIndex = idx;
        cur = null;
        if (dyn != null) {
            dyn.setMuscles(musclesOf(b));
            if (b.isRest()) {
                int need = dyn.restS(b.reps);
                clock.setRestS(need);
                if (need > b.reps) {
                    WearableBleDiagLog.log("map", "rest " + b.reps + " → " + need + " s (fatigue " + Math.round(dyn.fatigue() * 100) + " %)");
                }
            } else if (b.hasExercise()) {
                int hr = AiSession.isBandStreaming() ? AiSession.getLastBandHr() : -1;
                approach = dyn.startSet(stepOf(b), moveOf(b), b.lock,
                        map.totalSeconds() > 0 ? clock.position() / map.totalSeconds() : 0, hr);
                WearableBleDiagLog.log("map", "set " + idx + " approach " + approach + " fatigue "
                        + Math.round(dyn.fatigue() * 100) + " %");
            } else {
                dyn.startPlain(stepOf(b), b.lock);
                approach = "";
            }
        }
        for (TrainItem it : rows()) {
            ProgramDataBean bean = bean(it);
            if (bean == null) {
                continue;
            }
            // the trainer's + / − during the last block: read back as the new 100 %
            if (prev != null && !prev.isRest() && prev.rel > 0) {
                base.put(it, Math.min(100, Math.round(bean.strenth * 100f / prev.rel)));
            }
            Integer s = base.get(it);
            int full = s != null ? s : bean.strenth;
            if (b.isRest()) {
                bean.strenth = 0;
            } else if (dyn != null) {
                bean.strenth = Math.max(0, Math.min(100, Math.round(full * b.rel / 100f)));
            } else {
                bean.hz = b.hz;
                bean.pulseWidth = b.pw;
                bean.pulseContinue = Math.max(1, b.on);
                bean.pulsePause = Math.max(1, b.off);
                bean.strenth = Math.max(0, Math.min(100, Math.round(full * b.rel / 100f)));
                // the second impulse rides the suit's active pause (its own Hz, its strength a share of the first)
                bean.activePause = b.dbl;
                if (b.dbl) {
                    bean.pauseHz = b.hz2;
                    bean.pauseStrenthPercent = Math.max(1, Math.round(bean.strenth * b.str2 / 100f));
                }
                bean.inputRamp = b.rampIn;
                bean.outputRamp = b.rampOut;
            }
            SafeGuard.clamp(it, bean);                         // the limits before the write, the row's own age
            wrote.put(it, snap(bean));
            if (it.data != null && it.data.inStart) {
                it.data.secondValue = bean.pulseContinue;
            }
            try {
                it.onParamsChange();
            } catch (Throwable t) {
                WearableBleDiagLog.log("map", "onParamsChange: " + t);
            }
        }
        if (dyn != null && !b.isRest()) {
            writeCycle();                                      // the set's first repetition, its approach
            return;
        }
        try {
            MasterStrengthControl.resetApplied();
        } catch (Throwable ignored) {
        }
    }

    /** One repetition's impulse (approach + glide) to every row; the strength stays each row's. */
    private static void writeCycle() {
        Workout.Block b = clock.block();
        if (dyn == null || b == null || b.isRest()) {
            return;
        }
        AutoModel.Step s = dyn.cycle(stepOf(b), true);
        cur = s;
        int cycleS = s.onS + Math.max(1, s.offS);
        boolean first = true;
        for (TrainItem it : rows()) {
            ProgramDataBean bean = bean(it);
            if (bean == null) {
                continue;
            }
            bean.hz = s.hz;
            bean.pulseWidth = s.pwUs;
            bean.pulseContinue = Math.max(1, s.onS);
            bean.pulsePause = Math.max(1, s.offS);
            boolean dbl = s.pauseHz > 0 && s.pauseSigma > 0 && AiSession.pauseAllowed(it);
            bean.activePause = dbl;
            if (dbl) {
                bean.pauseHz = s.pauseHz;
                bean.pauseStrenthPercent = Math.max(1, (int) Math.round(bean.strenth * s.pauseSigma));
            }
            bean.inputRamp = s.rampUpMs;
            bean.outputRamp = s.rampDownMs;
            SafeGuard.clamp(it, bean);
            wrote.put(it, snap(bean));
            if (first) {
                cycleS = bean.pulseContinue + Math.max(1, bean.pulsePause);   // the clock runs on what is sent
                first = false;
            }
            if (it.data != null && it.data.inStart) {
                it.data.secondValue = bean.pulseContinue;
            }
            try {
                it.onParamsChange();
            } catch (Throwable t) {
                WearableBleDiagLog.log("map", "onParamsChange: " + t);
            }
        }
        clock.setCycleS(cycleS);
        try {
            MasterStrengthControl.resetApplied();
        } catch (Throwable ignored) {
        }
    }

    /** A row's impulse in the order of {@link #own}. */
    private static int[] snap(ProgramDataBean b) {
        return new int[] {b.hz, b.pulseWidth, b.pulseContinue, b.pulsePause, b.activePause ? 1 : 0, b.pauseHz,
            b.pauseStrenthPercent, b.inputRamp, b.outputRamp};
    }

    private static List<TrainItem> rows() {
        return AutoSession.items();
    }

    private static TrainItem leader() {
        List<TrainItem> l = rows();
        return l.isEmpty() ? null : l.get(0);
    }

    private static ProgramDataBean bean(TrainItem it) {
        try {
            return it.getTrainProgram() != null ? it.getTrainProgram().matchProgram() : null;
        } catch (Throwable t) {
            return null;
        }
    }

    // ================================================================ card

    private static void showCard(Activity a) {
        hideCard();
        try {
            XemsUi.init(a);
            LinearLayout card = XemsUi.vertical(a);
            card.setBackgroundDrawable(XemsUi.rounded(XemsUi.CARD, XemsUi.dp(a, 18), XemsUi.STROKE, XemsUi.dp(a, 1)));
            card.setPadding(XemsUi.dp(a, 16), XemsUi.dp(a, 12), XemsUi.dp(a, 16), XemsUi.dp(a, 12));

            LinearLayout top = XemsUi.horizontal(a);
            top.setGravity(Gravity.CENTER_VERTICAL);
            head = XemsUi.text(a, "", 13, XemsUi.MUTED, true);
            top.addView(head, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            TextView stop = XemsUi.button(a, waiting ? AiText.t("✕  Отказ", "✕  Cancel") : AiText.t("■  Стоп", "■  Stop"),
                    XemsUi.ACCENT_BTN);
            stop.setOnClickListener(new StopClick());
            stopButton = stop;
            top.addView(stop, new LinearLayout.LayoutParams(XemsUi.dp(a, 130), XemsUi.dp(a, 42)));
            goButton = XemsUi.button(a, AiText.t("▶  Старт", "▶  Start"), XemsUi.PRIMARY);
            goButton.setOnClickListener(new GoClick());
            goButton.setVisibility(waiting ? View.VISIBLE : View.GONE);
            LinearLayout.LayoutParams glp = new LinearLayout.LayoutParams(XemsUi.dp(a, 150), XemsUi.dp(a, 42));
            glp.rightMargin = XemsUi.dp(a, 10);
            top.addView(goButton, top.getChildCount() - 1, glp);
            card.addView(top);

            LinearLayout mid = XemsUi.horizontal(a);
            mid.setGravity(Gravity.CENTER_VERTICAL);
            LinearLayout tile = new LinearLayout(a);
            tile.setBackgroundDrawable(XemsUi.rounded(ProgramArt.TILE, XemsUi.dp(a, 12), 0, 0));
            figure = new ExerciseFigure(a);
            figure.setCycle(FIGURE_T0, 2, 2);                 // own calm tempo: the client moves as they like
            AiProfile who = AiProfile.of(leader());
            figure.setColor(ExerciseFigure.colorFor(who != null ? who.sex : null));
            tile.addView(figure, new LinearLayout.LayoutParams(XemsUi.dp(a, 132), XemsUi.dp(a, 98)));
            mid.addView(tile);
            LinearLayout col = XemsUi.vertical(a);
            col.setPadding(XemsUi.dp(a, 14), 0, 0, 0);
            name = XemsUi.text(a, "", 22, XemsUi.TEXT, true);
            name.setMaxLines(2);
            col.addView(name);
            detail = XemsUi.text(a, "", 14, XemsUi.GO_TEXT, true);
            col.addView(detail);
            next = XemsUi.text(a, "", 13, XemsUi.MUTED, false);
            col.addView(next);
            mid.addView(col, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            card.addView(mid, XemsUi.matchWrap(a, 8));

            LinearLayout strip = new LinearLayout(a);
            strip.setBackgroundDrawable(XemsUi.rounded(ProgramArt.TILE, XemsUi.dp(a, 10), 0, 0));
            line = new ImpulseMapView(a);
            line.setMap(map, false);
            strip.addView(line, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, XemsUi.dp(a, 40)));
            card.addView(strip, XemsUi.matchWrap(a, 8));

            android.util.DisplayMetrics dm0 = a.getResources().getDisplayMetrics();
            FloatCard frame = new FloatCard(a, card, "map_card",
                    Math.min(XemsUi.dp(a, 640), (int) (dm0.widthPixels * 0.7f)));
            dialog = new Dialog(a);
            dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
            dialog.setContentView(frame);
            dialog.setCancelable(false);
            dialog.setCanceledOnTouchOutside(false);
            dialog.show();
            Window w = dialog.getWindow();
            if (w != null) {
                w.setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
                w.setGravity(Gravity.TOP | Gravity.CENTER_HORIZONTAL);
                android.util.DisplayMetrics dm = a.getResources().getDisplayMetrics();
                w.setLayout(Math.min(XemsUi.dp(a, 720), (int) (dm.widthPixels * 0.7f)), ViewGroup.LayoutParams.WRAP_CONTENT);
                WindowManager.LayoutParams lp = w.getAttributes();
                lp.y = XemsUi.dp(a, 6);
                lp.dimAmount = 0f;
                lp.flags = (lp.flags | WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE
                        | WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL) & ~WindowManager.LayoutParams.FLAG_DIM_BEHIND;
                w.clearFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND);
                w.setAttributes(lp);
                frame.attach(w);
            }
            updateCard(System.currentTimeMillis());
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("MapRunner.card", t);
            hideCard();
        }
    }

    private static void hideCard() {
        if (dialog != null) {
            try {
                dialog.dismiss();
            } catch (Throwable ignored) {
            }
        }
        dialog = null;
        line = null;
        figure = null;
        goButton = null;
        stopButton = null;
    }

    private static void updateCard(long now) {
        if (dialog == null || clock == null || clock.isDone()) {
            return;
        }
        if (waiting) {
            updateWaiting();
            return;
        }
        Workout.Block b = clock.block();
        int idx = clock.getIndex();
        int left = (int) Math.max(0, map.totalSeconds() - clock.position());
        head.setText((map.isPassive() ? "" : AiText.t("Авто · ", "Auto · ")) + map.name + "  ·  " + AiText.t("остават ", "left ") + AiText.mmss(left)
                + (swapped > 0 ? AiText.t("  ·  по-щадящи упражнения за клиента", "  ·  gentler exercises for the client") : ""));
        line.setPlayhead((float) clock.position());
        if (b.isRest()) {
            figure.setExercise(null);
            name.setText(AiText.t("Почивка ", "Rest ") + AiText.mmss(Math.max(0, clock.restLength() - clock.getBlockS())));
            detail.setText("");
        } else {
            // the exercise only — no impulse sync, no counting: the client does it at their own pace
            figure.setExercise(b.hasExercise() ? b.ex : null);
            name.setText(b.hasExercise() ? AutoTemplates.name(b.ex) : AiText.t("Импулс", "Impulse"));
            AutoModel.Step s = cur;
            detail.setText((s != null ? s.hz : b.hz) + " Hz · " + (s != null ? s.pwUs : b.pw) + " µs"
                    + (approach.length() > 0 ? "  ·  " + approach : ""));
        }
        String n = "";
        for (int k = idx + 1; k < map.blocks.size(); k++) {
            Workout.Block x = map.blocks.get(k);
            if (x.hasExercise()) {
                n = AiText.t("Следва: ", "Next: ") + AutoTemplates.name(x.ex);
                break;
            }
        }
        next.setText(n);
    }

    /** The waiting card: what to do, and ▶ Старт awake once a strength is set. */
    private static void updateWaiting() {
        boolean any = false;
        for (TrainItem it : rows()) {
            ProgramDataBean b = bean(it);
            any |= b != null && b.strenth > 0;
        }
        head.setText(AiText.t("Авто · ", "Auto · ") + map.name + "  ·  " + AiText.t("настройване", "setting up"));
        line.setPlayhead(0f);
        Workout.Block first = null;
        for (Workout.Block x : map.blocks) {
            if (x.hasExercise()) {
                first = x;
                break;
            }
        }
        figure.setExercise(first != null ? first.ex : null);
        name.setText(AiText.t("Настрой силата", "Set the strength"));
        detail.setText(AiText.t("Общата сила и силата на всеки канал — от главния екран. После ▶ Старт.",
                "The total strength and each channel — on the main screen. Then ▶ Start."));
        next.setText(first != null ? AiText.t("Първо: ", "First: ") + AutoTemplates.name(first.ex) : "");
        if (goButton != null) {
            goButton.setEnabled(any);
            goButton.setAlpha(any ? 1f : 0.5f);
        }
    }

    static final class GoClick implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            go();
        }
    }

    static final class StopClick implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            stop();
        }
    }

}
