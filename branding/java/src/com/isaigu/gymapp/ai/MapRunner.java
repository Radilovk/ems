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
import com.isaigu.gymapp.dialog.BlockProgramRunner;
import com.isaigu.gymapp.train.TrainItemManager;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.train.utils.MasterStrengthControl;
import com.isaigu.gymapp.train.utils.MusicSync;
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
    private static final Handler handler = new Handler(Looper.getMainLooper());
    private static final Runnable ticker = new Ticker();

    // card
    private static Dialog dialog;
    private static ImpulseMapView line;
    private static ExerciseFigure figure;
    private static TextView head;
    private static TextView name;
    private static TextView detail;
    private static TextView next;

    public static boolean isRunning() {
        return map != null && clock != null && !clock.isDone();
    }

    /** Why a map cannot start now, or null (and it starts). */
    public static String start(Activity a, Workout w) {
        if (w == null || w.blocks.isEmpty()) {
            return AiText.t("Картата е празна.", "The map is empty.");
        }
        if (isRunning()) {
            return AiText.t("Една карта вече върви.", "A map is already running.");
        }
        try {
            if (AiSession.ownsOutput() || AiSession.getStage() == AiSession.Stage.RUNNING) {
                return AiText.t("Първо спри AI сесията.", "Stop the AI session first.");
            }
            if (AutoSession.isActive()) {
                return AiText.t("Първо спри Авто.", "Stop Auto first.");
            }
            if (MusicSync.isRunning() || MasterStrengthControl.isSyncActive()) {
                return AiText.t("Изключи музикалния синхрон.", "Turn music sync off.");
            }
            if (BlockProgramRunner.isArmed()) {
                return AiText.t("Изключи блоковата програма на таймера.", "Disarm the timer block program.");
            }
        } catch (Throwable ignored) {
        }
        List<TrainItem> rows = rows();
        if (rows.isEmpty()) {
            return AiText.t("Добави участник и свържи костюма.", "Add a participant and connect the suit.");
        }
        map = w.copy(w.id, w.name);
        swapForLeader(a);
        clock = new MapClock(map);
        idleS = 0;
        base.clear();
        for (TrainItem it : rows) {
            ProgramDataBean b = bean(it);
            base.put(it, b != null ? b.strenth : 0);
        }
        lastIndex = -1;
        apply(true);
        for (TrainItem it : rows) {
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
        handler.removeCallbacks(ticker);
        handler.postDelayed(ticker, TICK_MS);
        showCard(a);
        WearableBleDiagLog.log("map", "start " + map.id + " blocks " + map.blocks.size() + " " + map.totalSeconds() + " s");
        return null;
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
        for (TrainItem it : rows()) {
            ProgramDataBean b = bean(it);
            Integer s = base.get(it);
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
            if (m != null) {
                m.stopAll();
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("map", "stopAll: " + t);
        }
        WearableBleDiagLog.log("map", "stop at block " + (clock != null ? clock.getIndex() : -1));
        map = null;
        clock = null;
        base.clear();
        AiEnergy.exerciseMet = 0;
        hideCard();
    }

    /** AiSession.onPulseCycle: the leader's impulse started. */
    static void onPulseCycle(TrainItem item) {
        if (!isRunning() || item != leader()) {
            return;
        }
        cycleStartMs = System.currentTimeMillis();
        if (clock.onCycle()) {
            apply(false);
        }
    }

    /** Index of the exercise of the block now (for the session record), −1 when none. */
    public static int currentExercise() {
        Workout.Block b = isRunning() ? clock.block() : null;
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
        boolean running = lead.data != null && lead.data.start;
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
            } else {
                bean.hz = b.hz;
                bean.pulseWidth = b.pw;
                bean.pulseContinue = Math.max(1, b.on);
                bean.pulsePause = Math.max(1, b.off);
                bean.activePause = false;
                bean.strenth = Math.max(0, Math.min(100, Math.round(full * b.rel / 100f)));
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
        try {
            MasterStrengthControl.resetApplied();
        } catch (Throwable ignored) {
        }
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
            TextView stop = XemsUi.button(a, AiText.t("■  Стоп", "■  Stop"), XemsUi.ACCENT_BTN);
            stop.setOnClickListener(new StopClick());
            top.addView(stop, new LinearLayout.LayoutParams(XemsUi.dp(a, 130), XemsUi.dp(a, 42)));
            card.addView(top);

            LinearLayout mid = XemsUi.horizontal(a);
            mid.setGravity(Gravity.CENTER_VERTICAL);
            LinearLayout tile = new LinearLayout(a);
            tile.setBackgroundDrawable(XemsUi.rounded(ProgramArt.TILE, XemsUi.dp(a, 12), 0, 0));
            figure = new ExerciseFigure(a);
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

            dialog = new Dialog(a);
            dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
            dialog.setContentView(card);
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
    }

    private static void updateCard(long now) {
        if (dialog == null || clock == null || clock.isDone()) {
            return;
        }
        Workout.Block b = clock.block();
        int idx = clock.getIndex();
        int left = (int) Math.max(0, map.totalSeconds() - clock.position());
        head.setText(map.name + "  ·  " + AiText.t("остават ", "left ") + AiText.mmss(left)
                + (swapped > 0 ? AiText.t("  ·  по-щадящи упражнения за клиента", "  ·  gentler exercises for the client") : ""));
        line.setPlayhead((float) clock.position());
        if (b.isRest()) {
            figure.setExercise(null);
            name.setText(AiText.t("Почивка ", "Rest ") + AiText.mmss(Math.max(0, b.reps - clock.getBlockS())));
            detail.setText("");
        } else {
            figure.setExercise(b.hasExercise() ? b.ex : null);
            figure.setCycle(cycleStartMs > 0 ? cycleStartMs : now, b.on, Math.max(1, b.off));
            name.setText(b.hasExercise() ? AutoTemplates.name(b.ex) : AiText.t("Импулс", "Impulse"));
            detail.setText(AiText.t("повторение ", "rep ") + Math.min(b.reps, Math.max(0, clock.getCycles())) + "/" + b.reps
                    + "  ·  " + b.hz + " Hz · " + b.pw + " µs");
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

    static final class StopClick implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            stop();
        }
    }

}
