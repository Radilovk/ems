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
import com.isaigu.gymapp.wearable.WearableConfig;

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
    private static AiEnergy energy;
    private static boolean epocClosed;

    private static int calibPercent;
    private static boolean calibStimOn;
    private static boolean soloAutoRamp;
    private static double soloAccum;
    private static long lastTickMs;
    private static double lastSentFrac = -1;
    private static AiEngine.CycleCmd lastAppliedCycle;
    private static int lastBandHr = -1;
    private static long lastBandHrMs;

    // Last values written to the rows — anything else came from the main training screen.
    private static AiEngine.CycleCmd written;
    private static int writtenPercent = -1;
    private static long lastGuardToastMs;
    private static final long GUARD_TOAST_GAP_MS = 4000L;

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
            onPulseCycleImpl(item);
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("AiSession.onPulseCycle", t);
        }
    }

    private static void onPulseCycleImpl(TrainItem item) {
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
        try {
            onHeartRateImpl(bpm);
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("AiSession.onHeartRate", t);
        }
    }

    private static void onHeartRateImpl(int bpm) {
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
        return getLastBandHrAgeMs() < 10000L;
    }

    /** True while the AI drives the output (calibration stimulation or a running plan). */
    public static boolean ownsOutput() {
        return (stage == Stage.RUNNING && engine != null
                && engine.getState() != AiEngine.State.DONE
                && engine.getState() != AiEngine.State.STOPPED
                && engine.getState() != AiEngine.State.RECOVERY)
                || (stage == Stage.CALIB && calibStimOn);
    }

    /** MAC + auth key saved in Settings → Band. */
    public static boolean isBandConfigured(Context context) {
        try {
            return context != null && WearableConfig.isConfigured(context);
        } catch (Throwable t) {
            return false;
        }
    }

    /** Connect the band from the saved settings — independent of the HR dial. */
    public static void acquireBand(Activity activity) {
        try {
            if (activity != null && isBandConfigured(activity)) {
                NotifyWearableBridge.acquire(activity, NotifyWearableBridge.OWNER_AI);
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("ai", "acquireBand: " + t);
        }
    }

    public static void reconnectBand(Activity activity) {
        try {
            if (activity != null && isBandConfigured(activity)) {
                NotifyWearableBridge.reconnect(activity, NotifyWearableBridge.OWNER_AI);
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("ai", "reconnectBand: " + t);
        }
    }

    public static boolean isBandLinkUp() {
        try {
            return NotifyWearableBridge.isLinkUp();
        } catch (Throwable t) {
            return false;
        }
    }

    public static String bandState() {
        try {
            return NotifyWearableBridge.getBleState();
        } catch (Throwable t) {
            return "";
        }
    }

    private static void releaseBand() {
        try {
            Context c = panelRoot != null ? panelRoot.getContext() : null;
            NotifyWearableBridge.release(c, NotifyWearableBridge.OWNER_AI);
        } catch (Throwable t) {
            WearableBleDiagLog.log("ai", "releaseBand: " + t);
        }
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
        energy = AiEnergy.forSession(input, profile);
        epocClosed = false;
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
        written = null;
        writtenPercent = -1;
        releaseBand();
    }

    public static void reduce() {
        if (engine != null) {
            engine.reduce(System.currentTimeMillis());
            forceApplyCurrent();
        }
    }

    /** ACTIVE: next block after the rest threshold (manual start only). */
    public static void continueBlock() {
        if (engine == null) {
            return;
        }
        if (engine.continueBlock(System.currentTimeMillis())) {
            ensureDeviceRunning();
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
            ensureDeviceRunning();
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
        if (stage == Stage.CALIB && calibStimOn) {
            guardManualChanges(now);
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
        guardManualChanges(now);
        AiEngine.State before = engine.getState();
        engine.tick(now);
        tickEnergy(now);
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

    private static void tickEnergy(long now) {
        if (energy == null || engine == null) {
            return;
        }
        AiEngine.State st = engine.getState();
        if (st == AiEngine.State.DONE || st == AiEngine.State.STOPPED) {
            if (!epocClosed) {
                epocClosed = true;
                energy.closeEpoc();            // rest of the fast post-exercise O2 debt
            }
            return;
        }
        double hr = engine.getHrAgeMs(now) < 10000L ? engine.getHrS() : -1;
        AiEngine.CycleCmd c = engine.getCurrentCycle();
        AiEnergy.Stim es = null;
        if (c != null && engine.isStimOn(now) && c.frac > 0) {
            es = channelStim();
            es.strengthPct = calibPercent * c.frac;
            es.hz = c.hz;
            es.pwUs = c.pwUs;
            es.onShare = 1.0;
        } else if (c != null && engine.isActivePause(now) && c.frac > 0) {
            es = channelStim();
            es.strengthPct = calibPercent * c.frac;
            es.hz = c.hz;
            es.pwUs = c.pwUs;
            es.onShare = 0;
            es.pauseHz = c.pauseHz;
            es.pauseStrengthPct = calibPercent * c.frac * c.pauseSigma;
            es.pauseShare = 1.0;
        }
        if (es != null) {
            // Tolerated level = the calibration (350 µs, calibPercent) on each channel.
            es.toleratedCharge = new double[AiEnergy.CH_MASS.length];
            for (int i = 0; i < es.toleratedCharge.length; i++) {
                double chPct = es.channels != null && i < es.channels.length ? es.channels[i] : 100;
                es.toleratedCharge[i] = chPct / 100.0 * (i == AiEnergy.ARMS ? AiEnergy.ARMS_SENT : 1.0)
                        * calibPercent / 100.0;
            }
        }
        energy.tick(now, hr, es);
    }

    /** Channel % and disabled flags of the band wearer's row (the leader). */
    private static AiEnergy.Stim channelStim() {
        AiEnergy.Stim st = new AiEnergy.Stim();
        TrainItem item = leader();
        try {
            if (item != null) {
                ProgramDataBean b = item.getTrainProgram() != null ? item.getTrainProgram().matchProgram() : null;
                if (b != null && b.strenthBean != null && b.strenthBean.buwei != null) {
                    st.channels = b.strenthBean.buwei.clone();
                }
                if (item.partsDisabled != null) {
                    st.disabled = item.partsDisabled.clone();
                }
            }
        } catch (Throwable ignored) {
        }
        return st;
    }

    /** Estimated kcal of this session (total), −1 before the start. */
    public static double getKcal() {
        return energy != null ? energy.getKcal() : -1;
    }

    /** kcal above resting metabolism. */
    public static double getActiveKcal() {
        return energy != null ? energy.getActiveKcal() : -1;
    }

    public static AiEnergy getEnergy() {
        return energy;
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

    /**
     * The main training screen stays usable, but while the AI drives the output its controls
     * must not change the running plan behind the engine's back:
     * <ul>
     *   <li>Hz / pulse width / ON / OFF / active pause (impulse↔impulse) → reverted at once;</li>
     *   <li>strength up → reverted (never above the AI output);</li>
     *   <li>strength down → accepted as the human "reduce" (G13), proportionally;</li>
     *   <li>stop on the main screen → AI pause (resume from the AI dashboard).</li>
     * </ul>
     */
    private static void guardManualChanges(long now) {
        if (written == null || writtenPercent < 0 || manager == null) {
            return;
        }
        List<TrainItem> list = manager.getItemList();
        if (list == null) {
            return;
        }
        boolean params = false;
        int lowest = writtenPercent;
        boolean higher = false;
        boolean stoppedByUser = false;
        for (int i = 0; i < list.size(); i++) {
            TrainItem item = list.get(i);
            if (item == null || item.isEmpty() || item.getTrainProgram() == null) {
                continue;
            }
            ProgramDataBean b = item.getTrainProgram().matchProgram();
            if (b == null) {
                continue;
            }
            if (b.hz != written.hz || b.pulseWidth != written.pwUs
                    || b.pulseContinue != Math.max(1, written.onS)
                    || b.pulsePause != Math.max(1, written.offS)
                    || b.activePause != (written.pauseHz > 0 && writtenPercent > 0)
                    || (b.activePause && b.pauseHz != Math.max(1, Math.min(120, written.pauseHz)))) {
                params = true;
            }
            if (b.strenth > writtenPercent) {
                higher = true;
            } else if (b.strenth < lowest) {
                lowest = b.strenth;
            }
            if (item == leader() && item.data != null && !item.data.start) {
                stoppedByUser = true;
            }
        }
        if (stage == Stage.CALIB) {
            if (params || higher || lowest < writtenPercent) {
                // Calibration: the trainer may use the main ± as well; SOLO only downwards.
                int target = higher && input.operator == AiModel.Operator.TRAINER
                        ? maxRowStrength(list) : lowest;
                calibPercent = Math.max(0, Math.min(100, target));
                applyCalibration();
                if (params) {
                    notifyGuard(AiText.t("Параметрите се управляват от AI.",
                            "Parameters are controlled by the AI."), now);
                }
            }
            return;
        }
        if (engine == null) {
            return;
        }
        AiEngine.State st = engine.getState();
        if (stoppedByUser && (st == AiEngine.State.RUN || st == AiEngine.State.REST
                || st == AiEngine.State.CHECKPOINT)) {
            engine.userPause(now);
            zeroOutput();
            notifyGuard(AiText.t("Спряно от основния екран — AI е на пауза. Продължи от AI.",
                    "Stopped from the main screen — AI paused. Resume in AI."), now);
            AiUi.show();
            return;
        }
        if (lowest < writtenPercent && writtenPercent > 0 && st == AiEngine.State.RUN) {
            engine.reduceTo((double) lowest / writtenPercent, now);
            forceApplyCurrent();
            notifyGuard(AiText.t("Намалено ръчно — AI го приема като „Намали“.",
                    "Reduced manually — AI takes it as \u201cReduce\u201d."), now);
            return;
        }
        if (params || higher || lowest < writtenPercent) {
            writeAll(written, writtenPercent);
            notifyGuard(params
                    ? AiText.t("AI управлява честота, импулс и пауза — ръчната промяна е отменена.",
                            "AI controls frequency, pulse and pause — manual change undone.")
                    : AiText.t("AI управлява силата. Използвай „Намали“ или СТОП.",
                            "AI controls strength. Use Reduce or STOP."), now);
        }
    }

    private static int maxRowStrength(List<TrainItem> list) {
        int max = 0;
        for (int i = 0; i < list.size(); i++) {
            TrainItem item = list.get(i);
            if (item != null && !item.isEmpty() && item.getTrainProgram() != null
                    && item.getTrainProgram().matchProgram() != null) {
                max = Math.max(max, item.getTrainProgram().matchProgram().strenth);
            }
        }
        return max;
    }

    private static void notifyGuard(String text, long now) {
        WearableBleDiagLog.log("ai", "guard: " + text);
        if (now - lastGuardToastMs < GUARD_TOAST_GAP_MS || panelRoot == null) {
            return;
        }
        lastGuardToastMs = now;
        try {
            android.widget.Toast.makeText(panelRoot.getContext(), text,
                    android.widget.Toast.LENGTH_SHORT).show();
        } catch (Throwable ignored) {
        }
    }

    /** After a pause from the main screen the device may be stopped: start it again. */
    private static void ensureDeviceRunning() {
        TrainItem l = leader();
        if (l == null || l.data == null || l.data.start) {
            return;
        }
        try {
            manager.startAll();
        } catch (Throwable t) {
            WearableBleDiagLog.log("ai", "startAll: " + t);
        }
    }

    private static void writeAll(AiEngine.CycleCmd c, int percent) {
        AiRamp.set(c.rampUpMs, c.rampDownMs);
        percent = Math.max(0, Math.min(100, percent));
        written = c;
        writtenPercent = percent;
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
            // Active pause (impulse ↔ impulse): strength is absolute, so it follows the work
            // strength (reduce / HR control lower both together).
            boolean activePause = c.pauseHz > 0 && percent > 0;
            bean.activePause = activePause;
            if (activePause) {
                bean.pauseHz = Math.max(1, Math.min(120, c.pauseHz));
                bean.pauseStrenthPercent = Math.max(1, (int) Math.round(percent * c.pauseSigma));
            }
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
            input.pause = AiModel.PauseMode.valueOf(p.getString("pause", "AUTO"));
            input.weightKg = p.getInt("weight_kg", 75);
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
                    .putString("pause", input.pause.name())
                    .putInt("weight_kg", (int) Math.round(input.weightKg))
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
