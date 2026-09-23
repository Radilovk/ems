package com.isaigu.gymapp.ai;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.view.View;

import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.dialog.BlockProgramRunner;
import com.isaigu.gymapp.train.TrainItemManager;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.train.utils.MasterStrengthControl;
import com.isaigu.gymapp.wearable.NotifyWearableBridge;
import com.isaigu.gymapp.wearable.WearableBleDiagLog;

import java.util.List;

/**
 * Android side of the Smart Session: owns the engine, feeds it band HR and device cycles,
 * and writes its commands to every active participant row.
 * Entry points from patched smali: {@link #attach}, {@link #onPulseCycle}, {@link #onHeartRate}.
 */
public final class AiSession {
    public enum Stage { IDLE, SETUP, REST_HR, PLAN, CALIB, RUNNING, REPORT }

    private static final long TICK_MS = 250L;
    private static final String PREFS = "ai_session";
    /** Calibration cycle (§9 CALIB): same as TONE warm-up. */
    private static final AiModel.CycleSpec CALIB_CYCLE = new AiModel.CycleSpec(85, 350, 4, 4, 1.0);
    /** SOLO auto-calibration speed (%/s of the 0..100 scale) — G3 spirit. [D] */
    private static final double SOLO_CALIB_STEP_PER_S = 1.0;

    private static TrainItemManager manager;
    private static View panelRoot;
    private static Stage stage = Stage.IDLE;

    private static AiModel.SessionInput input = new AiModel.SessionInput();
    private static AiRestHr restHr;
    private static AiModel.Profile profile;
    private static AiModel.Plan plan;
    private static AiEngine engine;

    private static int calibPercent;
    private static boolean calibStimOn;
    private static boolean soloAutoRamp;
    private static double soloAccum;
    private static long lastTickMs;
    private static double lastSentFrac = -1;
    private static AiEngine.CycleCmd lastAppliedCycle;
    private static int lastBandHr = -1;
    private static long lastBandHrMs;

    private static final Handler handler = new Handler(Looper.getMainLooper());
    private static final Runnable ticker = new Ticker();

    private AiSession() {}

    // ================================================================ hooks

    /** Called when the training screen is (re)built. Adds the AI button to the sidebar. */
    public static void attach(View root, TrainItemManager itemManager) {
        panelRoot = root;
        manager = itemManager;
        AiUi.attachButton(root);
    }

    /** TrainItem$2.onFinish — the device is entering an ON phase for this row. */
    public static void onPulseCycle(TrainItem item) {
        try {
            if (item == null || item != leader()) {
                return;
            }
            long now = System.currentTimeMillis();
            if (stage == Stage.RUNNING && engine != null) {
                apply(engine.onCycle(now));
            } else if (stage == Stage.CALIB && calibStimOn) {
                applyCalibration();
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("ai", "onPulseCycle: " + t);
        }
    }

    /** NotifyWearableBridge.onHeartRate — every valid band sample. */
    public static void onHeartRate(int bpm) {
        long now = System.currentTimeMillis();
        lastBandHr = bpm;
        lastBandHrMs = now;
        if (stage == Stage.REST_HR && restHr != null) {
            restHr.onSample(now, bpm);
        } else if (engine != null && (stage == Stage.RUNNING || stage == Stage.REPORT)) {
            engine.onHr(now, bpm);
        }
    }

    // ================================================================ flow

    public static Stage getStage() {
        return stage;
    }

    public static AiModel.SessionInput getInput() {
        return input;
    }

    public static AiRestHr getRestHr() {
        return restHr;
    }

    public static AiModel.Profile getProfile() {
        return profile;
    }

    public static AiModel.Plan getPlan() {
        return plan;
    }

    public static AiEngine getEngine() {
        return engine;
    }

    public static int getCalibPercent() {
        return calibPercent;
    }

    public static boolean isCalibStimOn() {
        return calibStimOn;
    }

    public static int getLastBandHr() {
        return lastBandHr;
    }

    public static long getLastBandHrAgeMs() {
        return lastBandHrMs > 0 ? System.currentTimeMillis() - lastBandHrMs : Long.MAX_VALUE;
    }

    public static boolean isBandStreaming() {
        return NotifyWearableBridge.isListeningActive() && getLastBandHrAgeMs() < 10000L;
    }

    /** Returns an error text if another automatic mode owns the output, else null. */
    public static String conflict() {
        try {
            if (MasterStrengthControl.isSyncActive()) {
                return AiText.t("Спри музикалната синхронизация преди AI сесия.",
                        "Stop music sync before an AI session.");
            }
        } catch (Throwable ignored) {
        }
        try {
            if (BlockProgramRunner.isArmed()) {
                return AiText.t("Изключи блоковата програма на таймера преди AI сесия.",
                        "Disarm the timer block program before an AI session.");
            }
        } catch (Throwable ignored) {
        }
        if (leader() == null) {
            return AiText.t("Добави участник и свържи костюма.", "Add a participant and connect the suit.");
        }
        return null;
    }

    public static void beginSetup(Context context) {
        loadInput(context);
        stage = Stage.SETUP;
        restHr = null;
        profile = null;
        plan = null;
        engine = null;
    }

    public static void beginRestHr() {
        restHr = new AiRestHr(input.screening.restedLast10min);
        stage = Stage.REST_HR;
        startTicker();
    }

    /** Derive + plan. hrRest ≤ 0 → without band (TRAINER only). */
    public static void buildPlan(int hrRest, double sigma, long dtMs) {
        profile = AiPlanner.derive(input, hrRest, sigma, dtMs);
        plan = AiPlanner.build(input, profile);
        stage = Stage.PLAN;
    }

    public static void beginCalibration() {
        stage = Stage.CALIB;
        calibPercent = Math.max(0, Math.min(15, currentStrength()));
        calibStimOn = false;
        soloAutoRamp = false;
        startTicker();
    }

    public static void startCalibrationStim(Context context) {
        if (calibStimOn) {
            return;
        }
        calibStimOn = true;
        setWorkLengthAll(3600);
        applyCalibration();
        try {
            if (manager != null) {
                manager.startAll();
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("ai", "startAll: " + t);
        }
        soloAutoRamp = input.operator == AiModel.Operator.SELF;
    }

    public static void adjustCalibration(int delta) {
        calibPercent = Math.max(0, Math.min(100, calibPercent + delta));
        if (calibStimOn) {
            applyCalibration();
        }
    }

    /** SOLO: user says "enough" — freeze the ramp. */
    public static void stopSoloRamp() {
        soloAutoRamp = false;
    }

    public static boolean isSoloRamping() {
        return soloAutoRamp;
    }

    /** Calibration done → start the plan. */
    public static void startRun(Context context) {
        if (plan == null || profile == null) {
            return;
        }
        soloAutoRamp = false;
        saveInput(context);
        engine = new AiEngine(input, profile, plan);
        long now = System.currentTimeMillis();
        engine.start(now);
        setWorkLengthAll(plan.totalS + 1800);
        stage = Stage.RUNNING;
        apply(engine.onCycle(now));
        if (!calibStimOn) {
            try {
                if (manager != null) {
                    manager.startAll();
                }
            } catch (Throwable t) {
                WearableBleDiagLog.log("ai", "startAll: " + t);
            }
        }
        calibStimOn = false;
        WearableBleDiagLog.log("ai", "run start goal=" + input.goal + " mode=" + input.mode
                + " op=" + input.operator + " ceil=" + calibPercent + " cap=" + profile.hrCap);
        startTicker();
    }

    public static void stop() {
        long now = System.currentTimeMillis();
        if (engine != null) {
            engine.stop(now);
        }
        zeroOutput();
        stopDevice();
        if (stage == Stage.RUNNING) {
            stage = Stage.REPORT;
        } else if (stage == Stage.CALIB) {
            calibStimOn = false;
        }
    }

    /** Close the whole flow (after report or cancel before start). */
    public static void close() {
        if (stage == Stage.RUNNING || stage == Stage.CALIB) {
            stop();
        }
        stopTicker();
        AiRamp.clear();
        stage = Stage.IDLE;
    }

    public static void reduce() {
        if (engine != null) {
            engine.reduce(System.currentTimeMillis());
            forceApplyCurrent();
        }
    }

    public static void togglePause() {
        if (engine == null) {
            return;
        }
        long now = System.currentTimeMillis();
        if (engine.getState() == AiEngine.State.USER_PAUSE
                || engine.getState() == AiEngine.State.STIM_PAUSE) {
            engine.resume(now);
        } else {
            engine.userPause(now);
            zeroOutput();
        }
    }

    public static void answerCheckpoint(int cr10) {
        if (engine != null) {
            engine.answerCheckpoint(cr10, System.currentTimeMillis());
        }
    }

    // ================================================================ ticker

    private static void startTicker() {
        handler.removeCallbacks(ticker);
        lastTickMs = System.currentTimeMillis();
        handler.postDelayed(ticker, TICK_MS);
    }

    private static void stopTicker() {
        handler.removeCallbacks(ticker);
    }

    private static final class Ticker implements Runnable {
        @Override
        public void run() {
            try {
                tick();
            } catch (Throwable t) {
                WearableBleDiagLog.log("ai", "tick: " + t);
            }
            if (stage == Stage.REST_HR || stage == Stage.CALIB || stage == Stage.RUNNING
                    || (stage == Stage.REPORT && engine != null
                    && engine.getState() == AiEngine.State.RECOVERY)) {
                handler.postDelayed(this, TICK_MS);
            }
            AiUi.refresh();
        }
    }

    private static void tick() {
        long now = System.currentTimeMillis();
        double dtS = (now - lastTickMs) / 1000.0;
        lastTickMs = now;
        if (stage == Stage.REST_HR && restHr != null) {
            restHr.tick(now);
            return;
        }
        if (stage == Stage.CALIB && soloAutoRamp && calibStimOn) {
            soloAccum += SOLO_CALIB_STEP_PER_S * dtS;
            if (soloAccum >= 1.0) {
                int step = (int) soloAccum;
                soloAccum -= step;
                int cap = (int) Math.round(100 * (plan != null ? plan.phiMax : 1.0));
                if (calibPercent + step >= cap) {
                    soloAutoRamp = false;
                }
                adjustCalibration(Math.min(step, Math.max(0, cap - calibPercent)));
            }
            return;
        }
        if (engine == null) {
            return;
        }
        AiEngine.State before = engine.getState();
        engine.tick(now);
        AiEngine.State after = engine.getState();
        // Engine fallback clock produced a cycle the device hook did not deliver → send it.
        if (after == AiEngine.State.RUN && engine.getCurrentCycle() != null
                && engine.getCurrentCycle() != lastAppliedCycle) {
            apply(engine.getCurrentCycle());
        }
        // Any reduction takes effect now, not at the next cycle (hierarchy A/B).
        if (after != AiEngine.State.RUN && lastSentFrac > 0) {
            zeroOutput();
        } else if (after == AiEngine.State.RUN && engine.getCurrentFrac() < lastSentFrac - 1e-6) {
            forceApplyCurrent();
        }
        if ((after == AiEngine.State.RECOVERY || after == AiEngine.State.DONE
                || after == AiEngine.State.STOPPED) && stage == Stage.RUNNING) {
            zeroOutput();
            stopDevice();
            stage = Stage.REPORT;
            WearableBleDiagLog.log("ai", "run end state=" + after + " log=" + engine.getLog().size());
        }
        if (before != after) {
            WearableBleDiagLog.log("ai", "state " + before + " → " + after + " (" + engine.getLastAction() + ")");
        }
    }

    // ================================================================ device driver

    private static TrainItem leader() {
        if (manager == null) {
            return null;
        }
        try {
            List<TrainItem> list = manager.getItemList();
            if (list == null) {
                return null;
            }
            for (int i = 0; i < list.size(); i++) {
                TrainItem item = list.get(i);
                if (item != null && !item.isEmpty()) {
                    return item;
                }
            }
        } catch (Throwable ignored) {
        }
        return null;
    }

    private static int currentStrength() {
        TrainItem item = leader();
        try {
            if (item != null && item.getTrainProgram() != null
                    && item.getTrainProgram().matchProgram() != null) {
                return item.getTrainProgram().matchProgram().strenth;
            }
        } catch (Throwable ignored) {
        }
        return 0;
    }

    private static void applyCalibration() {
        AiEngine.CycleCmd c = new AiEngine.CycleCmd();
        c.hz = CALIB_CYCLE.hz;
        c.pwUs = CALIB_CYCLE.pwUs;
        c.onS = CALIB_CYCLE.onS;
        c.offS = CALIB_CYCLE.offS;
        c.rampUpMs = 400;
        c.rampDownMs = 300;
        writeAll(c, calibPercent);
    }

    private static void apply(AiEngine.CycleCmd c) {
        if (c == null) {
            return;
        }
        int percent = (int) Math.round(calibPercent * c.frac);
        lastSentFrac = c.frac;
        lastAppliedCycle = c;
        writeAll(c, percent);
    }

    private static void forceApplyCurrent() {
        if (engine == null || engine.getCurrentCycle() == null) {
            return;
        }
        AiEngine.CycleCmd c = engine.getCurrentCycle();
        double frac = engine.getState() == AiEngine.State.RUN ? engine.getCurrentFrac() : 0;
        lastSentFrac = frac;
        writeAll(c, (int) Math.round(calibPercent * frac));
    }

    private static void zeroOutput() {
        lastSentFrac = 0;
        AiEngine.CycleCmd c = engine != null ? engine.getCurrentCycle() : null;
        if (c == null) {
            c = new AiEngine.CycleCmd();
            c.hz = CALIB_CYCLE.hz;
            c.pwUs = CALIB_CYCLE.pwUs;
            c.onS = CALIB_CYCLE.onS;
            c.offS = CALIB_CYCLE.offS;
        }
        writeAll(c, 0);
    }

    private static void writeAll(AiEngine.CycleCmd c, int percent) {
        AiRamp.set(c.rampUpMs, c.rampDownMs);
        percent = Math.max(0, Math.min(100, percent));
        if (manager == null) {
            return;
        }
        List<TrainItem> list = manager.getItemList();
        if (list == null) {
            return;
        }
        for (int i = 0; i < list.size(); i++) {
            TrainItem item = list.get(i);
            if (item == null || item.isEmpty() || item.getTrainProgram() == null) {
                continue;
            }
            ProgramDataBean bean = item.getTrainProgram().matchProgram();
            if (bean == null) {
                continue;
            }
            bean.hz = c.hz;
            bean.pulseWidth = c.pwUs;
            bean.pulseContinue = Math.max(1, c.onS);
            bean.pulsePause = Math.max(1, c.offS);
            bean.strenth = percent;
            bean.activePause = false;
            if (item.data != null && item.data.inStart) {
                item.data.secondValue = bean.pulseContinue;
            }
            try {
                item.onParamsChange();
            } catch (Throwable t) {
                WearableBleDiagLog.log("ai", "onParamsChange: " + t);
            }
        }
        try {
            MasterStrengthControl.resetApplied();
        } catch (Throwable ignored) {
        }
    }

    private static void setWorkLengthAll(int seconds) {
        if (manager == null) {
            return;
        }
        List<TrainItem> list = manager.getItemList();
        if (list == null) {
            return;
        }
        for (int i = 0; i < list.size(); i++) {
            TrainItem item = list.get(i);
            if (item != null && !item.isEmpty()) {
                item.workLength = seconds;
            }
        }
    }

    private static void stopDevice() {
        AiRamp.clear();
        try {
            if (manager != null) {
                manager.stopAll();
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("ai", "stopAll: " + t);
        }
    }

    // ================================================================ persistence

    private static void loadInput(Context context) {
        input = new AiModel.SessionInput();
        if (context == null) {
            return;
        }
        try {
            SharedPreferences p = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
            input.goal = AiModel.Goal.valueOf(p.getString("goal", "TONE"));
            input.mode = AiModel.Mode.valueOf(p.getString("mode", "ACTIVE"));
            input.sex = AiModel.Sex.valueOf(p.getString("sex", "MALE"));
            input.fitness = AiModel.Fitness.valueOf(p.getString("fitness", "MID"));
            input.operator = AiModel.Operator.valueOf(p.getString("operator", "TRAINER"));
            input.age = p.getInt("age", 35);
            int t = p.getInt("total_s", 0);
            input.totalSeconds = t > 0 ? t : null;
        } catch (Throwable ignored) {
        }
        input.screening = new AiModel.Screening();
        for (String k : AiScreening.CONTRAINDICATIONS) {
            input.screening.contraindications.put(k, false);
        }
    }

    private static void saveInput(Context context) {
        if (context == null) {
            return;
        }
        try {
            context.getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit()
                    .putString("goal", input.goal.name())
                    .putString("mode", input.mode.name())
                    .putString("sex", input.sex.name())
                    .putString("fitness", input.fitness.name())
                    .putString("operator", input.operator.name())
                    .putInt("age", input.age)
                    .putInt("total_s", input.totalSeconds != null ? input.totalSeconds : 0)
                    .apply();
        } catch (Throwable ignored) {
        }
    }

    static Activity activityOf(View v) {
        Context c = v != null ? v.getContext() : panelRoot != null ? panelRoot.getContext() : null;
        while (c instanceof android.content.ContextWrapper) {
            if (c instanceof Activity) {
                return (Activity) c;
            }
            c = ((android.content.ContextWrapper) c).getBaseContext();
        }
        return null;
    }

    static View getPanelRoot() {
        return panelRoot;
    }
}
