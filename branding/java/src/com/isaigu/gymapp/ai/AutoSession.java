package com.isaigu.gymapp.ai;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.view.View;

import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainUser;
import com.isaigu.gymapp.dialog.BlockProgramRunner;
import com.isaigu.gymapp.train.TrainItemManager;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.train.utils.MasterStrengthControl;
import com.isaigu.gymapp.train.utils.MusicSync;
import com.isaigu.gymapp.wearable.NotifyWearableBridge;
import com.isaigu.gymapp.wearable.WearableBleDiagLog;
import com.isaigu.gymapp.wearable.WearableConfig;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Android side of the automatic mode: owns the {@link AutoEngine}, writes each cycle to every
 * participant row with that row's own limits, and keeps manual changes on the main screen
 * inside the limits (spec §8). Entry points: {@link #onPulseCycle} and {@link #onHeartRate}
 * (called from {@link AiSession}'s hooks), the "Авто" tile ({@link AutoUi#open}).
 */
public final class AutoSession {
    public enum Stage { IDLE, SETUP, CALIB, RUNNING, REPORT }

    public static final String OWNER_BAND = "auto";
    private static final long TICK_MS = 250L;
    private static final String PREFS = "auto_session";
    private static final long GUARD_TOAST_GAP_MS = 3500L;
    /** Calibration: strength units a row may rise per second (G3 spirit). */
    private static final double CALIB_RISE_PER_S = 5.0;

    /** One participant row: its client, limits, calibration and the person's own changes. */
    static final class Row {
        TrainItem item;
        long userId;
        String name = "";
        AutoModel.Input input;
        AutoModel.Plan plan;
        String block;
        int cal;
        double user = 1.0;
        final int[] zoneOffset = new int[AutoModel.CHANNELS];
        int lastStrength = -1;
        int writtenStrength = -1;
        int[] writtenZones;
        double raiseBudget = AutoLimits.RAISE_PER_CYCLE;
    }

    private static TrainItemManager manager;
    private static View panelRoot;
    private static Stage stage = Stage.IDLE;

    private static AutoModel.Input input = new AutoModel.Input();
    private static AutoModel.Plan plan;
    private static AutoEngine engine;
    private static final List<Row> rows = new ArrayList<Row>();
    private static AutoEngine.Cmd written;
    private static AutoEngine.Cmd lastApplied;
    private static boolean zeroed;
    private static long lastTickMs;
    private static long lastGuardToastMs;
    private static boolean recorded;
    private static String lastNotice = "";

    // heart rate before the start (resting estimate) and live
    private static final int[] restRing = new int[40];
    private static final long[] restRingMs = new long[40];
    private static int restCount;
    private static int lastBandHr = -1;
    private static long lastBandHrMs;

    private static final Handler handler = new Handler(Looper.getMainLooper());
    private static final Runnable ticker = new Ticker();

    private AutoSession() {}

    // ================================================================ hooks

    static void attach(View root, TrainItemManager itemManager) {
        panelRoot = root;
        manager = itemManager;
    }

    public static void onPulseCycle(TrainItem item) {
        try {
            if (item == null || item != leader() || stage != Stage.RUNNING || engine == null) {
                return;
            }
            AutoEngine.Cmd c = engine.onCycle(System.currentTimeMillis());
            if (c != null && c != written) {
                applyCycle(c);
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("auto", "onPulseCycle: " + t);
        }
    }

    public static void onHeartRate(int bpm) {
        try {
            long now = System.currentTimeMillis();
            lastBandHr = bpm;
            lastBandHrMs = now;
            if (stage == Stage.SETUP || stage == Stage.CALIB) {
                int i = restCount % restRing.length;
                restRing[i] = bpm;
                restRingMs[i] = now;
                restCount++;
            }
            if (engine != null && stage == Stage.RUNNING) {
                engine.onHr(now, bpm);
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("auto", "onHeartRate: " + t);
        }
    }

    /** True while the automatic mode drives the output (the pulse module keeps its hands off). */
    public static boolean ownsOutput() {
        return stage == Stage.CALIB || (stage == Stage.RUNNING && engine != null
                && engine.getState() != AutoEngine.State.DONE
                && engine.getState() != AutoEngine.State.STOPPED);
    }

    public static boolean isActive() {
        return stage != Stage.IDLE;
    }

    // ================================================================ reads

    public static Stage getStage() {
        return stage;
    }

    public static AutoModel.Input getInput() {
        return input;
    }

    public static AutoModel.Plan getPlan() {
        return plan;
    }

    public static AutoEngine getEngine() {
        return engine;
    }

    static List<Row> getRows() {
        return rows;
    }

    public static int getLastBandHr() {
        return System.currentTimeMillis() - lastBandHrMs < 10000L ? lastBandHr : -1;
    }

    public static String getLastNotice() {
        return lastNotice;
    }

    /** Median of the band's samples in the last 60 s before stimulation, or −1. */
    public static int restHrEstimate() {
        long now = System.currentTimeMillis();
        List<Integer> v = new ArrayList<Integer>();
        for (int i = 0; i < Math.min(restCount, restRing.length); i++) {
            if (now - restRingMs[i] <= 60000L && restRing[i] >= 35 && restRing[i] <= 130) {
                v.add(restRing[i]);
            }
        }
        if (v.size() < 5) {
            return -1;
        }
        java.util.Collections.sort(v);
        return v.get(v.size() / 2);
    }

    public static boolean isBandConfigured(Context c) {
        try {
            return c != null && WearableConfig.isConfigured(c);
        } catch (Throwable t) {
            return false;
        }
    }

    // ================================================================ flow

    /** Text when another automatic mode owns the output, else null. */
    public static String conflict() {
        if (AiSession.getStage() != AiSession.Stage.IDLE) {
            return AiText.t("Затвори AI сесията преди Авто.", "Close the AI session before Auto.");
        }
        try {
            if (MusicSync.isRunning() || MasterStrengthControl.isSyncActive()) {
                return AiText.t("Спри музикалната синхронизация: в Авто програмата държи честотата и паузите.",
                        "Stop music sync: in Auto the program holds frequency and pauses.");
            }
        } catch (Throwable ignored) {
        }
        try {
            if (BlockProgramRunner.isArmed()) {
                return AiText.t("Изключи блоковата програма на таймера преди Авто.",
                        "Disarm the timer block program before Auto.");
            }
        } catch (Throwable ignored) {
        }
        if (leader() == null) {
            return AiText.t("Добави участник и свържи костюма.", "Add a participant and connect the suit.");
        }
        return null;
    }

    public static void beginSetup(Context c) {
        loadOptions(c);
        rows.clear();
        List<TrainItem> list = items();
        long now = System.currentTimeMillis();
        for (TrainItem item : list) {
            Row r = new Row();
            r.item = item;
            r.input = new AutoModel.Input();
            AiProfile p = AiProfile.of(item);
            if (p != null) {
                r.userId = p.userId;
                if (p.sex != null) {
                    r.input.sex = p.sex;
                }
                if (p.age != null) {
                    r.input.age = p.age;
                }
                if (p.weightKg != null) {
                    r.input.weightKg = p.weightKg;
                }
                r.input.heightCm = p.heightCm;
                if (p.fitness != null) {
                    r.input.fitness = p.fitness;
                }
                for (String k : AiScreening.CONTRAINDICATIONS) {
                    r.input.screening.contraindications.put(k, p.contraindications.contains(k));
                }
                if (rows.isEmpty()) {
                    input.goal = AutoCatalog.goalOf(p.goal);
                    input.kind = AutoCatalog.kindOf(p.goal);
                    if (p.goal == AiModel.Goal.DRAIN) {
                        input.programId = AutoCatalog.DRAIN;
                    } else if (p.goal == AiModel.Goal.CELLULITE) {
                        input.programId = AutoCatalog.CELLULITE;
                    } else if (p.goal == AiModel.Goal.MASSAGE) {
                        input.programId = AutoCatalog.RECOVERY;
                    }
                }
            } else {
                for (String k : AiScreening.CONTRAINDICATIONS) {
                    r.input.screening.contraindications.put(k, false);
                }
            }
            r.name = nameOf(item);
            AutoHistory.Info h = AutoHistory.of(c, r.userId);
            r.input.sessions = h.sessions;
            r.input.hoursSinceActive = AutoHistory.hoursSince(h.lastActiveMs, now);
            rows.add(r);
        }
        // The leader's client is the one the wizard shows and edits.
        Row lead = rows.isEmpty() ? null : rows.get(0);
        if (lead != null) {
            copyClient(lead.input, input);
        }
        plan = null;
        engine = null;
        restCount = 0;
        stage = Stage.SETUP;
        recorded = false;
        acquireBand(AiSession.activityOf(panelRoot));
        startTicker();
    }

    /** Client fields (not the session options) from → to. */
    static void copyClient(AutoModel.Input from, AutoModel.Input to) {
        to.sex = from.sex;
        to.age = from.age;
        to.weightKg = from.weightKg;
        to.heightCm = from.heightCm;
        to.fitness = from.fitness;
        to.sessions = from.sessions;
        to.hoursSinceActive = from.hoursSinceActive;
        to.screening = from.screening;
        to.extra = from.extra;
    }

    /** Session options (program, intensity, …) from the wizard → every row. */
    private static void copyOptions(AutoModel.Input from, AutoModel.Input to) {
        to.goal = from.goal;
        to.kind = from.kind;
        to.programId = from.programId;
        to.operator = from.operator;
        to.intensity = from.intensity;
        to.variant = from.variant;
        to.doublePulse = from.doublePulse;
        to.totalSeconds = from.totalSeconds;
    }

    /** The wizard edited the leader's client (height, answers): back into row 0. */
    static void syncLeaderInput() {
        if (!rows.isEmpty()) {
            copyClient(input, rows.get(0).input);
        }
    }

    /** Save the entered height into the client record (it is required from now on). */
    static void saveHeight(Activity a, int cm) {
        input.heightCm = cm;
        syncLeaderInput();
        try {
            TrainItem item = leader();
            if (item == null || item.data == null || item.data.trainUser == null) {
                return;
            }
            TrainUser u = item.data.trainUser;
            u.height = cm;
            Class<?> store = Class.forName("com.isaigu.gymapp.widget.XemsLocalStore");
            for (java.lang.reflect.Method m : store.getDeclaredMethods()) {
                if ("saveUser".equals(m.getName()) && m.getParameterTypes().length == 3) {
                    m.setAccessible(true);
                    m.invoke(null, a, u, Boolean.TRUE);
                    break;
                }
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("auto", "saveHeight: " + t);
        }
    }

    /** Build the plan for the leader and every other row (same timeline, each row's own limits). */
    public static void buildPlan() {
        syncLeaderInput();
        AutoCatalog.Program p = AutoCatalog.get(input.programId);
        int cap = Integer.MAX_VALUE;
        for (Row r : rows) {
            copyOptions(input, r.input);
            r.block = p != null ? AutoCatalog.blockReason(p, input.goal, r.input) : null;
            if (r.block == null && r.input.heightCm <= 0 && r != rows.get(0)) {
                r.block = AiText.t("Няма ръст в профила", "No height in the client record");
            }
            if (r.block == null && AiScreening.evaluate(screeningInput(r.input)).isRejected()) {
                r.block = AiText.t("Противопоказание в профила", "Contraindication in the client record");
            }
            if (r.block == null && p != null) {
                cap = Math.min(cap, AutoPlanner.maxSeconds(p, input.goal, r.input));
            }
        }
        int hrRest = restHrEstimate();
        plan = AutoPlanner.build(input, hrRest);
        if (cap != Integer.MAX_VALUE && plan.totalS > cap) {
            input.totalSeconds = cap;
            plan = AutoPlanner.build(input, hrRest);
        }
        for (Row r : rows) {
            r.input.totalSeconds = plan.totalS;
            r.plan = r == rows.get(0) ? plan : AutoPlanner.build(r.input, -1);
        }
    }

    /** The AI screening on the automatic mode's answers (contraindications, fever, …). */
    static AiModel.SessionInput screeningInput(AutoModel.Input in) {
        AiModel.SessionInput s = new AiModel.SessionInput();
        s.age = in.age;
        s.sex = in.sex;
        s.goal = AiModel.Goal.MASSAGE;
        s.mode = AiModel.Mode.PASSIVE;
        s.screening = in.screening;
        return s;
    }

    public static void beginCalibration() {
        if (plan == null) {
            buildPlan();
        }
        stage = Stage.CALIB;
        AutoEngine.Cmd c = calibrationCmd();
        for (Row r : rows) {
            r.cal = 0;
            r.user = 1.0;
            Arrays.fill(r.zoneOffset, 0);
            r.raiseBudget = CALIB_RISE_PER_S;
            int now = strengthOf(r.item);
            r.lastStrength = r.block == null ? Math.min(now, 10) : 0;
        }
        setWorkLengthAll(3600);
        writeRows(c, true);
        try {
            if (manager != null) {
                manager.startAll();
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("auto", "startAll: " + t);
        }
        startTicker();
    }

    /** The cycle the calibration runs at: the program's main work (its longest phase). */
    static AutoEngine.Cmd calibrationCmd() {
        AutoModel.Phase best = null;
        for (AutoModel.Phase ph : plan.phases) {
            if (ph.isCooldown() || "WARMUP".equals(ph.id)) {
                continue;
            }
            if (best == null || ph.durationS > best.durationS) {
                best = ph;
            }
        }
        if (best == null) {
            best = plan.phases.get(0);
        }
        AutoModel.Step s = best.steps.get(0);
        for (AutoModel.Step st : best.steps) {
            if (st.sigma > 0) {
                s = st;
                break;
            }
        }
        AutoEngine.Cmd c = new AutoEngine.Cmd();
        c.hz = s.hz;
        c.pwUs = s.pwUs;
        c.onS = s.onS;
        c.offS = s.offS;
        c.rampUpMs = s.rampUpMs;
        c.rampDownMs = s.rampDownMs;
        c.frac = 1.0;
        c.ceiling = 1.0;
        c.phi = 1.0;
        c.env = 1.0;
        c.scale = 1.0;
        c.base = s;
        return c;
    }

    /** ± from the calibration screen on one row (−1 = all rows). */
    public static void adjustCalibration(int rowIndex, int delta) {
        for (int i = 0; i < rows.size(); i++) {
            Row r = rows.get(i);
            if ((rowIndex >= 0 && i != rowIndex) || r.block != null) {
                continue;
            }
            int v = Math.max(0, Math.min(100, r.lastStrength + delta));
            r.lastStrength = v;
        }
        writeRows(written != null ? written : calibrationCmd(), true);
    }

    public static boolean canStart() {
        for (Row r : rows) {
            if (r.block == null && r.lastStrength > 0) {
                return true;
            }
        }
        return false;
    }

    public static void startRun(Context c) {
        if (plan == null || !canStart()) {
            return;
        }
        saveOptions(c);
        for (Row r : rows) {
            r.cal = r.block == null ? r.lastStrength : 0;
            r.user = 1.0;
            r.lastStrength = -1;
        }
        engine = new AutoEngine(plan);
        long now = System.currentTimeMillis();
        engine.start(now);
        setWorkLengthAll(plan.totalS + 1800);
        stage = Stage.RUNNING;
        applyCycle(engine.getCurrent());
        ensureDeviceRunning();
        WearableBleDiagLog.log("auto", "run " + plan.program.id + " goal=" + input.goal + " T=" + plan.totalS
                + " rows=" + rows.size() + " cap=" + plan.hrCap);
        startTicker();
    }

    public static void stop() {
        if (engine != null) {
            engine.stop(System.currentTimeMillis());
        }
        zeroOutput();
        stopDevice();
        if (stage == Stage.RUNNING) {
            finishToReport();
        } else if (stage == Stage.CALIB) {
            stage = Stage.SETUP;
        }
    }

    public static void close() {
        if (stage == Stage.RUNNING || stage == Stage.CALIB) {
            stop();
        }
        stopTicker();
        AiRamp.clear();
        stage = Stage.IDLE;
        written = null;
        engine = null;
        plan = null;
        rows.clear();
        releaseBand();
    }

    public static void togglePause() {
        if (engine == null) {
            return;
        }
        long now = System.currentTimeMillis();
        if (engine.canResume()) {
            engine.resume(now);
            zeroed = false;
            applyCycle(engine.getCurrent());
            ensureDeviceRunning();
        } else if (engine.getState() == AutoEngine.State.RUN) {
            engine.userPause(now);
            zeroOutput();
        }
    }

    /** −10 % on every row (the "reduce" button; never automatically given back). */
    public static void reduceAll() {
        for (Row r : rows) {
            r.user = Math.max(0.2, r.user - 0.10);
        }
        if (engine != null && engine.getState() == AutoEngine.State.RUN && written != null) {
            writeRows(written, false);
        }
    }

    /** +5 % on every row, inside the envelope (the engine and the limits decide how far). */
    public static void raiseAll() {
        for (Row r : rows) {
            r.user = Math.min(2.0, r.user + 0.05);
        }
        if (engine != null && engine.getState() == AutoEngine.State.RUN && written != null) {
            writeRows(written, false);
        }
    }

    public static void setDoublePulse(boolean on) {
        if (engine != null) {
            long now = System.currentTimeMillis();
            engine.setDoublePulse(on, now);
            if (engine.getState() == AutoEngine.State.RUN && written != null) {
                AutoEngine.Cmd c = engine.refresh(now);
                lastApplied = c;
                writeRows(c, false);
            }
        }
    }

    public static void skipToCooldown() {
        if (engine != null) {
            engine.skipToCooldown(System.currentTimeMillis());
            if (engine.getState() == AutoEngine.State.RUN) {
                applyCycle(engine.getCurrent());
            }
        }
    }

    private static void finishToReport() {
        stage = Stage.REPORT;
        if (!recorded && engine != null) {
            recorded = true;
            Context c = panelRoot != null ? panelRoot.getContext() : null;
            long now = System.currentTimeMillis();
            for (Row r : rows) {
                if (r.block == null && r.cal > 0) {
                    AutoHistory.record(c, r.userId, plan.program.isActive(), engine.getElapsedS(), now);
                }
            }
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

    static final class Ticker implements Runnable {
        @Override
        public void run() {
            try {
                tick();
            } catch (Throwable t) {
                WearableBleDiagLog.log("auto", "tick: " + t);
            }
            if (stage != Stage.IDLE && stage != Stage.REPORT) {
                handler.postDelayed(this, TICK_MS);
            }
            AutoUi.refresh();
        }
    }

    private static void tick() {
        long now = System.currentTimeMillis();
        double dt = Math.max(0, (now - lastTickMs) / 1000.0);
        lastTickMs = now;
        if (stage == Stage.CALIB) {
            for (Row r : rows) {
                r.raiseBudget = Math.min(CALIB_RISE_PER_S, r.raiseBudget + CALIB_RISE_PER_S * dt);
            }
            guard(now);
            return;
        }
        if (stage != Stage.RUNNING || engine == null) {
            return;
        }
        try {
            if (MusicSync.isRunning() && engine.getState() == AutoEngine.State.RUN) {
                engine.userPause(now);
                zeroOutput();
                notice(AiText.t("Музикалната синхронизация пое силата — Авто е на пауза.",
                        "Music sync took the strength — Auto paused."), now, true);
                AutoUi.show();
            }
        } catch (Throwable ignored) {
        }
        guard(now);
        AutoEngine.State before = engine.getState();
        engine.tick(now);
        AutoEngine.State after = engine.getState();
        if (after == AutoEngine.State.RUN) {
            AutoEngine.Cmd c = engine.getCurrent();
            if (c != null && c != lastApplied) {
                applyCycle(c);          // engine clock: the device hook did not deliver it
            }
        } else if (!zeroed) {
            zeroOutput();
        }
        if ((after == AutoEngine.State.DONE || after == AutoEngine.State.STOPPED) && stage == Stage.RUNNING) {
            zeroOutput();
            stopDevice();
            finishToReport();
            WearableBleDiagLog.log("auto", "end " + after);
        }
        if (before != after) {
            WearableBleDiagLog.log("auto", "state " + before + " → " + after);
            if (after == AutoEngine.State.HR_PAUSE) {
                notice(AiText.t("Пулсът стигна тавана — пауза.", "Heart rate at the ceiling — paused."), now, true);
                AutoUi.show();
            }
        }
    }

    // ================================================================ writing

    private static void applyCycle(AutoEngine.Cmd c) {
        if (c == null) {
            return;
        }
        lastApplied = c;
        zeroed = false;
        for (Row r : rows) {
            r.raiseBudget = AutoLimits.RAISE_PER_CYCLE;
        }
        writeRows(c, false);
        double scale = 0;
        for (Row r : rows) {
            double f = AutoEngine.rowFrac(c, r.plan != null ? r.plan.phiMax : plan.phiMax);
            if (r.cal > 0 && f > 0 && r.writtenStrength >= 0) {
                scale = Math.max(scale, r.writtenStrength / (r.cal * f));
            }
        }
        if (scale > 0) {
            engine.setUserScale(scale);
        }
    }

    /** The strength a row gets on this cycle. */
    private static int rowStrength(Row r, AutoEngine.Cmd c, boolean calib) {
        if (r.block != null) {
            return 0;
        }
        if (calib) {
            return Math.max(0, Math.min(100, r.lastStrength));
        }
        AutoModel.Plan rp = r.plan != null ? r.plan : plan;
        double f = AutoEngine.rowFrac(c, rp.phiMax);
        double ceil = engine != null ? engine.rowCeiling(c, rp.phiMax, rp.envMax) : f;
        int v = AutoLimits.rowStrength(r.cal, f, r.user, ceil, r.lastStrength);
        r.lastStrength = v;
        return v;
    }

    private static int[] rowZones(Row r, AutoEngine.Cmd c) {
        AutoModel.Plan rp = r.plan != null ? r.plan : plan;
        if (c.zones != null) {
            int[] z = c.zones.clone();
            for (int i = 0; i < z.length; i++) {
                if (rp.zoneLocked[i] && rp.zones[i] == 0) {
                    z[i] = 0;
                }
                z[i] = Math.min(z[i], rp.zoneMax[i]);
            }
            return z;
        }
        int[] want = new int[AutoModel.CHANNELS];
        for (int i = 0; i < want.length; i++) {
            want[i] = rp.zones[i] + r.zoneOffset[i];
        }
        return AutoLimits.clampZones(want, rp);
    }

    private static void writeRows(AutoEngine.Cmd c, boolean calib) {
        if (c == null) {
            return;
        }
        AiRamp.set(c.rampUpMs, c.rampDownMs);
        written = c;
        for (Row r : rows) {
            ProgramDataBean b = bean(r.item);
            if (b == null) {
                continue;
            }
            int strength = rowStrength(r, c, calib);
            int[] zones = rowZones(r, c);
            b.hz = c.hz;
            b.pulseWidth = c.pwUs;
            b.pulseContinue = Math.max(1, c.onS);
            b.pulsePause = Math.max(1, c.offS);
            b.strenth = strength;
            boolean pause = c.pauseHz > 0 && strength > 0;
            b.activePause = pause;
            if (pause) {
                b.pauseHz = c.pauseHz;
                b.pauseStrenthPercent = Math.max(1, (int) Math.round(strength * c.pauseSigma));
            }
            if (b.strenthBean != null && b.strenthBean.buwei != null) {
                for (int i = 0; i < Math.min(zones.length, b.strenthBean.buwei.length); i++) {
                    b.strenthBean.buwei[i] = zones[i];
                }
            }
            r.writtenStrength = strength;
            r.writtenZones = zones;
            if (r.item.data != null && r.item.data.inStart) {
                r.item.data.secondValue = b.pulseContinue;
            }
            try {
                r.item.onParamsChange();
            } catch (Throwable t) {
                WearableBleDiagLog.log("auto", "onParamsChange: " + t);
            }
        }
        try {
            MasterStrengthControl.resetApplied();
        } catch (Throwable ignored) {
        }
    }

    private static void zeroOutput() {
        zeroed = true;
        AutoEngine.Cmd c = written != null ? written : calibrationCmd();
        for (Row r : rows) {
            ProgramDataBean b = bean(r.item);
            if (b == null) {
                continue;
            }
            b.strenth = 0;
            b.activePause = false;
            r.writtenStrength = 0;
            try {
                r.item.onParamsChange();
            } catch (Throwable t) {
                WearableBleDiagLog.log("auto", "zero: " + t);
            }
        }
        written = c;
    }

    /**
     * Manual changes on the main screen (spec §8): kept when inside the limits, brought back to
     * the limit otherwise. Stop on the main screen = pause.
     */
    private static void guard(long now) {
        if (written == null) {
            return;
        }
        boolean calib = stage == Stage.CALIB;
        AutoModel.Phase ph = engine != null ? engine.phase() : null;
        boolean running = engine != null && engine.getState() == AutoEngine.State.RUN;
        if (!calib && engine != null) {
            TrainItem l = leader();
            if (l != null && l.data != null && !l.data.start && running) {
                engine.userPause(now);
                zeroOutput();
                notice(AiText.t("Спряно от основния екран — Авто е на пауза.",
                        "Stopped from the main screen — Auto paused."), now, true);
                AutoUi.show();
                return;
            }
        }
        if (!calib && !running) {
            // paused: the output stays at 0 whatever the main screen does
            for (Row r : rows) {
                ProgramDataBean b = bean(r.item);
                if (b != null && b.strenth != 0) {
                    zeroOutput();
                    break;
                }
            }
            return;
        }
        // 1 · frequency / ON / OFF / width / double impulse (common to all rows)
        for (Row r : rows) {
            ProgramDataBean b = bean(r.item);
            if (b == null) {
                continue;
            }
            boolean params = b.hz != written.hz || b.pulseWidth != written.pwUs
                    || b.pulseContinue != Math.max(1, written.onS) || b.pulsePause != Math.max(1, written.offS);
            boolean pause = b.activePause != (written.pauseHz > 0 && r.writtenStrength > 0)
                    || (b.activePause && b.pauseHz != written.pauseHz);
            if (!params && !pause) {
                continue;
            }
            if (calib || engine == null) {
                writeRows(written, calib);
                notice(AiText.t("Честотата и паузите са на програмата.", "Frequency and pauses belong to the program."), now, false);
                return;
            }
            if (pause && !params) {
                boolean want = b.activePause;
                if (engine.isDoublePulseAvailable()) {
                    engine.setDoublePulse(want, now);
                    AutoEngine.Cmd c = engine.refresh(now);
                    lastApplied = c;
                    writeRows(c, false);
                } else {
                    writeRows(written, false);
                    notice(AiText.t("Тази програма няма двоен импулс.", "This program has no double impulse."), now, false);
                }
                return;
            }
            int wantHz = b.hz != written.hz ? b.hz : -1;
            int wantOn = b.pulseContinue != Math.max(1, written.onS) ? b.pulseContinue : -1;
            int wantOff = b.pulsePause != Math.max(1, written.offS)
                    ? Math.max(1, b.pulsePause - engine.getOffExtension()) : -1;
            int wantPw = b.pulseWidth != written.pwUs ? b.pulseWidth : -1;
            AutoEngine.Cmd c = engine.userParams(wantHz, wantOn, wantOff, wantPw, now);
            writeRows(c, false);
            lastApplied = c;
            if ((wantHz > 0 && c.hz != wantHz) || (wantOn > 0 && c.onS != wantOn)
                    || (wantOff > 0 && c.offS != b.pulsePause) || (wantPw > 0 && c.pwUs != wantPw)) {
                boolean locked = ph != null && !ph.window.hz && !ph.window.on && !ph.window.off && !ph.window.pw;
                notice(locked
                        ? AiText.t("В тази фаза параметрите са фиксирани.", "Parameters are fixed in this phase.")
                        : AiText.t("В лимита на фазата: " + c.hz + " Hz · " + c.onS + "/" + c.offS + " s · " + c.pwUs + " µs",
                        "Within the phase limit: " + c.hz + " Hz · " + c.onS + "/" + c.offS + " s · " + c.pwUs + " µs"),
                        now, false);
            }
            return;
        }
        // 2 · zones and strength (per row)
        boolean rewrite = false;
        String msg = null;
        for (Row r : rows) {
            ProgramDataBean b = bean(r.item);
            if (b == null) {
                continue;
            }
            AutoModel.Plan rp = r.plan != null ? r.plan : plan;
            if (b.strenthBean != null && b.strenthBean.buwei != null && r.writtenZones != null) {
                int[] now10 = new int[AutoModel.CHANNELS];
                boolean changed = false;
                for (int i = 0; i < AutoModel.CHANNELS && i < b.strenthBean.buwei.length; i++) {
                    now10[i] = b.strenthBean.buwei[i];
                    changed |= now10[i] != r.writtenZones[i];
                }
                if (changed) {
                    if (written.zones != null || r.block != null) {
                        msg = AiText.t("Зоните на вълната са фиксирани.", "Wave zones are fixed.");
                    } else {
                        int[] z = AutoLimits.clampZones(now10, rp);
                        for (int i = 0; i < AutoModel.CHANNELS; i++) {
                            r.zoneOffset[i] = z[i] - rp.zones[i];
                        }
                        if (!Arrays.equals(z, now10)) {
                            msg = AiText.t("Зоната е в лимита (±" + rp.zoneDelta + ", баланс корем/кръст, бедра, гърди/гръб).",
                                    "Zone kept in its limit (±" + rp.zoneDelta + ", balance rules).");
                        }
                    }
                    rewrite = true;
                }
            }
            int s = b.strenth;
            if (s == r.writtenStrength) {
                continue;
            }
            if (r.block != null) {
                rewrite = true;
                msg = r.block;
                continue;
            }
            if (s < r.writtenStrength) {
                acceptStrength(r, s, calib);
                continue;
            }
            // up: rate and envelope
            int allowed = Math.min(s, r.writtenStrength + (int) Math.floor(r.raiseBudget));
            if (!calib) {
                AutoModel.Plan rpl = r.plan != null ? r.plan : plan;
                double f = AutoEngine.rowFrac(written, rpl.phiMax);
                if (r.cal <= 0 && f > 0) {
                    // not calibrated at the start: this value becomes the calibration
                    r.cal = Math.min(100, (int) Math.round(allowed / f));
                } else {
                    double ceil = engine.rowCeiling(written, rpl.phiMax, rpl.envMax);
                    allowed = Math.min(allowed, (int) Math.floor(r.cal * ceil + 1e-9));
                }
            }
            allowed = Math.max(r.writtenStrength, Math.min(100, allowed));
            r.raiseBudget = Math.max(0, r.raiseBudget - (allowed - r.writtenStrength));
            acceptStrength(r, allowed, calib);
            if (allowed < s) {
                rewrite = true;
                msg = AiText.t("Лимит на силата сега: " + allowed + (calib ? " (плавно покачване)" : ""),
                        "Strength limit now: " + allowed + (calib ? " (gradual rise)" : ""));
            }
        }
        if (rewrite) {
            writeRows(written, calib);
        }
        if (msg != null) {
            notice(msg, now, false);
        }
    }

    private static void acceptStrength(Row r, int s, boolean calib) {
        r.writtenStrength = s;
        r.lastStrength = s;
        if (!calib) {
            AutoModel.Plan rp = r.plan != null ? r.plan : plan;
            double f = AutoEngine.rowFrac(written, rp.phiMax);
            if (r.cal > 0 && f > 0) {
                r.user = Math.max(0.1, s / (r.cal * f));
            }
        }
    }

    private static void notice(String text, long now, boolean force) {
        lastNotice = text;
        WearableBleDiagLog.log("auto", "notice: " + text);
        if (!force && now - lastGuardToastMs < GUARD_TOAST_GAP_MS) {
            return;
        }
        lastGuardToastMs = now;
        try {
            if (panelRoot != null) {
                android.widget.Toast.makeText(panelRoot.getContext(), text, android.widget.Toast.LENGTH_SHORT).show();
            }
        } catch (Throwable ignored) {
        }
    }

    // ================================================================ device

    static TrainItem leader() {
        List<TrainItem> l = items();
        return l.isEmpty() ? null : l.get(0);
    }

    static List<TrainItem> items() {
        List<TrainItem> out = new ArrayList<TrainItem>();
        if (manager == null) {
            return out;
        }
        try {
            List<TrainItem> list = manager.getItemList();
            if (list != null) {
                for (TrainItem item : list) {
                    if (item != null && !item.isEmpty() && item.getTrainProgram() != null) {
                        out.add(item);
                    }
                }
            }
        } catch (Throwable ignored) {
        }
        return out;
    }

    private static ProgramDataBean bean(TrainItem item) {
        try {
            return item != null && item.getTrainProgram() != null ? item.getTrainProgram().matchProgram() : null;
        } catch (Throwable t) {
            return null;
        }
    }

    private static int strengthOf(TrainItem item) {
        ProgramDataBean b = bean(item);
        return b != null ? b.strenth : 0;
    }

    private static String nameOf(TrainItem item) {
        try {
            TrainUser u = item.data.trainUser;
            if (u.nickName != null && u.nickName.length() > 0) {
                return u.nickName;
            }
            return u.name != null ? u.name : "";
        } catch (Throwable t) {
            return "";
        }
    }

    private static void ensureDeviceRunning() {
        TrainItem l = leader();
        if (l == null || l.data == null || l.data.start) {
            return;
        }
        try {
            manager.startAll();
        } catch (Throwable t) {
            WearableBleDiagLog.log("auto", "startAll: " + t);
        }
    }

    private static void setWorkLengthAll(int seconds) {
        for (TrainItem item : items()) {
            item.workLength = seconds;
        }
    }

    private static void stopDevice() {
        AiRamp.clear();
        try {
            if (manager != null) {
                manager.stopAll();
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("auto", "stopAll: " + t);
        }
    }

    private static void acquireBand(Activity a) {
        try {
            if (a != null && isBandConfigured(a)) {
                NotifyWearableBridge.acquire(a, OWNER_BAND);
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("auto", "acquireBand: " + t);
        }
    }

    private static void releaseBand() {
        try {
            NotifyWearableBridge.release(panelRoot != null ? panelRoot.getContext() : null, OWNER_BAND);
        } catch (Throwable t) {
            WearableBleDiagLog.log("auto", "releaseBand: " + t);
        }
    }

    // ================================================================ persistence

    private static void loadOptions(Context c) {
        input = new AutoModel.Input();
        if (c == null) {
            return;
        }
        try {
            SharedPreferences p = c.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
            input.goal = AutoModel.Goal.valueOf(p.getString("goal", "TONE"));
            input.kind = AutoModel.Kind.valueOf(p.getString("kind", "ACTIVE"));
            input.programId = p.getString("program", null);
            input.operator = AiModel.Operator.valueOf(p.getString("operator", "TRAINER"));
            input.intensity = AutoModel.Intensity.valueOf(p.getString("intensity", "STANDARD"));
            input.doublePulse = p.getBoolean("double", true);
        } catch (Throwable ignored) {
        }
    }

    private static void saveOptions(Context c) {
        if (c == null) {
            return;
        }
        try {
            c.getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit()
                    .putString("goal", input.goal.name())
                    .putString("kind", input.kind.name())
                    .putString("program", input.programId)
                    .putString("operator", input.operator.name())
                    .putString("intensity", input.intensity.name())
                    .putBoolean("double", input.doublePulse)
                    .apply();
        } catch (Throwable ignored) {
        }
    }

    static View getPanelRoot() {
        return panelRoot;
    }
}
