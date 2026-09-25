package com.isaigu.gymapp.wearable;

import android.os.Handler;
import android.os.Looper;

import com.isaigu.gymapp.ai.AiEngine;
import com.isaigu.gymapp.ai.AiModel;
import com.isaigu.gymapp.ai.AiSession;
import com.isaigu.gymapp.dialog.MusicPlayerHelper;
import com.isaigu.gymapp.train.utils.MusicSync;
import com.isaigu.gymapp.wearable.xiaomi.XiaomiBand;
import com.isaigu.gymapp.wearable.xiaomi.XiaomiBandLink;
import com.isaigu.gymapp.wearable.xiaomi.XiaomiBandRemote;
import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsPanel;

import java.util.Locale;

/**
 * XEMS on the wrist without installing anything: the band's own music screen becomes the
 * training remote. The "track" carries the live state, the buttons control the training.
 *
 * <pre>
 *            AI session                  manual training            music only
 * title      128 bpm · Z3                128 bpm · Z3               song title
 * subtitle   Main · 04:20 · 86 kcal      Training 12:30 · 86 kcal   XEMS ♫
 * ▶ / ❚❚     pause / resume; next block  start / pause              play / pause
 *            once the rest is done
 * ⏭ · vol+   strength + (AI rules)       master +                   next song
 * ⏮ · vol−   strength −                  master −                   previous song
 * </pre>
 */
public final class BandRemote implements XiaomiBandRemote.Listener,
        com.isaigu.gymapp.wearable.xiaomi.XiaomiBandAppLink.Listener {
    /** How often the tablet looks for a change to tell the band (sent at once when it changed). */
    private static final long TICK_MS = 1000L;
    /** Volume we report; a band request above / below it is a +/− step. */
    private static final int VOL = 50;

    private static final BandRemote INSTANCE = new BandRemote();
    private static final Handler handler = new Handler(Looper.getMainLooper());
    private static final Runnable tick = new Tick();

    private static boolean running;
    private static String lastSent = "";
    private static long lastSentMs;
    private static long trainStartMs;
    private static long trainAccumMs;
    private static boolean trainWasRunning;

    private BandRemote() {}

    /** Called when the band link comes up (and on every connect). */
    public static void start() {
        if (!com.isaigu.gymapp.widget.XemsLicense.has(com.isaigu.gymapp.widget.XemsLicense.BAND)) {
            return;                                 // band remote / band app need the band module
        }
        XiaomiBandRemote.setListener(INSTANCE);
        com.isaigu.gymapp.wearable.xiaomi.XiaomiBandAppLink.setListener(INSTANCE);
        lastSent = "";
        if (!running) {
            running = true;
            handler.post(tick);
        }
    }

    public static void stop() {
        running = false;
        handler.removeCallbacks(tick);
    }

    // ================================================================ band → XEMS

    @Override
    public void onMusicRequest() {
        handler.post(new Push(true));
    }

    @Override
    public void onMediaKey(final int key, final int volume) {
        handler.post(new Key(key, volume));
    }

    @Override
    public void onAppInstalled(int versionCode) {
        BandAppInstall.onAppHello(versionCode);
    }

    /** From the XEMS app on the band: {"t":"hello"} or {"t":"cmd","a":…}. */
    @Override
    public void onAppMessage(String json) {
        handler.post(new AppMsg(json));
    }

    /** Last command ids from the band (a resend after a lost ack must not run twice). */
    private static final java.util.LinkedList<String> seenIds = new java.util.LinkedList<String>();
    /** Id of the last band command done; echoed in every state so the band stops resending. */
    private static String lastAck = "";

    static void handleApp(String json) {
        String t = jsonField(json, "t");
        if ("cmd".equals(t)) {
            String id = jsonField(json, "id");
            if (id != null && id.length() > 0) {
                lastAck = id;
                if (seenIds.contains(id)) {
                    handler.post(new Push(true));   // lost ack: answer again, do not run it again
                    return;
                }
                seenIds.addLast(id);
                while (seenIds.size() > 32) {
                    seenIds.removeFirst();
                }
            }
        }
        if ("hello".equals(t)) {
            String v = jsonField(json, "v");
            try {
                BandAppInstall.onAppHello(v != null ? Integer.parseInt(v) : 0, jsonField(json, "lang"));
            } catch (NumberFormatException ignored) {
            }
            lastSig = "";                           // a (re)started band app gets everything now
        } else if ("cmd".equals(t)) {
            String a = jsonField(json, "a");
            WearableBleDiagLog.log("applink", "cmd " + a);
            if ("toggle".equals(a)) {
                handleKey(XiaomiBandRemote.KEY_PLAY, VOL);
            } else if ("plus".equals(a)) {
                handleKey(XiaomiBandRemote.KEY_NEXT, VOL);
            } else if ("minus".equals(a)) {
                handleKey(XiaomiBandRemote.KEY_PREV, VOL);
            } else if ("double".equals(a)) {
                AiEngine e = AiSession.getEngine();
                if (AiSession.getStage() == AiSession.Stage.RUNNING && e != null && e.isActivePauseAvailable()) {
                    AiSession.setActivePause(!e.isActivePauseOn());
                }
            } else if ("stop".equals(a)) {
                if (AiSession.getStage() == AiSession.Stage.RUNNING) {
                    AiSession.stop();
                } else {
                    XemsPanel.press(XemsPanel.PRESS_STOP);
                }
            } else {
                if ("ch_plus".equals(a) || "ch_minus".equals(a)) {
                    lastChannel = intField(json, "c", -1);
                    lastStep = Math.max(1, Math.min(10, intField(json, "d", 1)));
                }
                moduleCommand(a);
            }
        }
        // answer at once (the command ran above) — a burst of taps is answered by one state;
        // once more a moment later for actions the app applies with a delay (only if changed)
        if (!pushQueued) {
            pushQueued = true;
            handler.postDelayed(pushSoon, 30);
        }
        handler.removeCallbacks(pushLater);
        handler.postDelayed(pushLater, 350);
    }

    /** Commands from the module screens of the band app (one module each, no guessing). */
    static void moduleCommand(String a) {
        if (a == null) {
            return;
        }
        android.content.Context ctx = WearableSyncHelper.getContext();
        if ("train_toggle".equals(a)) {
            XemsPanel.press(XemsPanel.PRESS_START);
        } else if ("train_plus".equals(a)) {
            mainStep(1);
        } else if ("train_minus".equals(a)) {
            mainStep(-1);
        } else if ("train_stop".equals(a)) {
            XemsPanel.press(XemsPanel.PRESS_STOP);
        } else if ("tm_toggle".equals(a)) {
            com.isaigu.gymapp.dialog.IntervalTimerHelper.bandTogglePause();
        } else if ("mu_toggle".equals(a)) {
            MusicPlayerHelper.togglePlayPause();
        } else if ("mu_next".equals(a)) {
            MusicPlayerHelper.skipTrack(1);
        } else if ("mu_prev".equals(a)) {
            MusicPlayerHelper.skipTrack(-1);
        } else if ("mu_up".equals(a)) {
            MusicSync.adjustCeiling(1);
        } else if ("mu_down".equals(a)) {
            MusicSync.adjustCeiling(-1);
        } else if ("pause_all".equals(a)) {
            pauseAll();
        } else if ("ch_plus".equals(a) || "ch_minus".equals(a)) {
            channelStep(lastChannel, "ch_plus".equals(a) ? lastStep : -lastStep);
        } else if ("hg_toggle".equals(a) && ctx != null) {
            boolean on = !WearableConfig.isAutoReduceEnabled(ctx);
            WearableConfig.setAutoReduceEnabled(ctx, on);
            WearableBleDiagLog.log("applink", "hr module " + (on ? "on" : "off"));
        }
    }

    private static boolean pushQueued;
    private static final Runnable pushSoon = new PushSoon();
    private static final Runnable pushLater = new Push(false);

    static final class PushSoon implements Runnable {
        @Override
        public void run() {
            pushQueued = false;
            try {
                push(true);
            } catch (Throwable t) {
                XemsGuard.report("BandRemote.pushSoon", t);
            }
        }
    }

    /**
     * "All zones" − / + from the band: the main strength of the band's client, one step, always —
     * whatever is selected on the tablet (its own + / − follows the trainer's selection: channels,
     * Hz, pause). Same calls as the app's main strength step; music sync keeps its ceiling.
     */
    static void mainStep(int d) {
        com.isaigu.gymapp.train.model.TrainItem item = leaderItem();
        if (item == null) {
            XemsPanel.press(d > 0 ? XemsPanel.PRESS_PLUS : XemsPanel.PRESS_MINUS);
            return;
        }
        try {
            if (com.isaigu.gymapp.train.utils.MusicSyncBridge.onMaStrengthDelta(item, d)) {
                return;
            }
            com.isaigu.gymapp.bean.ProgramDataBean b = item.getTrainProgram().matchProgram();
            if (b != null && b.activePause) {
                item.addMainAndPauseStrenth(d);
            } else {
                item.addStrenth(d);
            }
            WearableBleDiagLog.log("applink", "main " + (d > 0 ? "+" : "") + d + " → " + (b != null ? b.strenth : -1));
        } catch (Throwable t) {
            XemsGuard.report("BandRemote.mainStep", t);
        }
    }

    /** Main impulse strength of the band's client (what the tablet's big number shows), −1 if none. */
    static int mainStrength() {
        try {
            com.isaigu.gymapp.train.model.TrainItem item = leaderItem();
            com.isaigu.gymapp.bean.ProgramDataBean b = item != null ? item.getTrainProgram().matchProgram() : null;
            return b != null ? b.strenth : -1;
        } catch (Throwable t) {
            return -1;
        }
    }

    private static int lastChannel = -1;
    private static int lastStep = 1;

    static int intField(String json, String key, int def) {
        try {
            return new org.json.JSONObject(json).optInt(key, def);
        } catch (Throwable t) {
            return def;
        }
    }

    /** First training slot with a client (the one the band shows and controls). */
    static com.isaigu.gymapp.train.model.TrainItem leaderItem() {
        com.isaigu.gymapp.train.TrainItemManager manager = WearableSyncHelper.getItemManager();
        java.util.List<com.isaigu.gymapp.train.model.TrainItem> items = manager != null ? manager.getItemList() : null;
        if (items == null) {
            return null;
        }
        for (com.isaigu.gymapp.train.model.TrainItem item : items) {
            if (item != null && !item.isEmpty() && item.data != null) {
                return item;
            }
        }
        return null;
    }

    /**
     * Each channel's real strength, exactly what the tablet's channel slider shows and the suit
     * gets: channel percent × main strength (buwei is only the percent of the main strength).
     */
    static int[] channelValues(com.isaigu.gymapp.train.model.TrainItem item) {
        try {
            com.isaigu.gymapp.bean.ProgramDataBean b = item.getTrainProgram().matchProgram();
            if (b == null || b.strenthBean == null || b.strenthBean.buwei == null) {
                return null;
            }
            int[] parts = b.strenthBean.buwei;
            int[] out = new int[parts.length];
            for (int i = 0; i < parts.length; i++) {
                out[i] = (int) (parts[i] / 100.0f * b.strenth);
            }
            return out;
        } catch (Throwable t) {
            return null;
        }
    }

    /**
     * One channel up / down from the band — the same path as the tablet's + / − with that one
     * channel selected (PartStrength: real strength steps, the main strength rises when the
     * channel goes above it, the others keep their output). The trainer's selection comes back.
     */
    static void channelStep(int c, int d) {
        com.isaigu.gymapp.train.model.TrainItem item = leaderItem();
        boolean[] ctl = item != null ? item.partsControl : null;
        if (ctl == null || c < 0 || c >= ctl.length) {
            return;
        }
        boolean[] saved = ctl.clone();
        boolean ok;
        try {
            for (int i = 0; i < ctl.length; i++) {
                ctl[i] = i == c;
            }
            ok = com.isaigu.gymapp.train.utils.PartStrength.addSelected(item, d);
        } finally {
            System.arraycopy(saved, 0, ctl, 0, saved.length);
        }
        int[] v = channelValues(item);
        WearableBleDiagLog.log("applink", "channel " + c + (d > 0 ? " +" : " ") + d
                + (ok && v != null && c < v.length ? " → " + v[c] : " (not applied)"));
    }

    /** Tiny reader for our own flat JSON ({"k":"v"}); no nesting needed on this side. */
    static String jsonField(String json, String key) {
        if (json == null) {
            return null;
        }
        try {
            return new org.json.JSONObject(json).optString(key, null);
        } catch (Throwable t) {
            return null;
        }
    }

    static void handleKey(int key, int volume) {
        if (!WearableConfig.isBandRemoteEnabled(WearableSyncHelper.getContext())) {
            return;
        }
        int action;                       // 0 play/pause, +1 up, −1 down
        if (key == XiaomiBandRemote.KEY_PLAY || key == XiaomiBandRemote.KEY_PAUSE) {
            action = 0;
        } else if (key == XiaomiBandRemote.KEY_NEXT) {
            action = 1;
        } else if (key == XiaomiBandRemote.KEY_PREV) {
            action = -1;
        } else if (key == XiaomiBandRemote.KEY_VOLUME) {
            action = volume > VOL ? 1 : volume < VOL ? -1 : 0;
            if (action == 0) {
                return;
            }
        } else {
            return;
        }
        WearableBleDiagLog.log("remote", "key=" + key + " vol=" + volume + " → " + action);
        AiEngine e = AiSession.getEngine();
        boolean ai = AiSession.getStage() == AiSession.Stage.RUNNING && e != null;
        if (ai) {
            if (action == 0) {
                if (e.getState() == AiEngine.State.REST && e.isRestReady()) {
                    AiSession.continueBlock();
                } else {
                    AiSession.togglePause();
                }
            } else if (action > 0) {
                AiSession.increase();      // only gives back a reduce, never above the plan
            } else {
                AiSession.reduce();
            }
        } else if (XemsPanel.isRunning() || action == 0 && !musicOnly()) {
            XemsPanel.press(action == 0 ? XemsPanel.PRESS_START
                    : action > 0 ? XemsPanel.PRESS_PLUS : XemsPanel.PRESS_MINUS);
        } else if (musicOnly()) {
            if (action == 0) {
                MusicPlayerHelper.togglePlayPause();
            } else {
                MusicPlayerHelper.skipTrack(action);
            }
        }
        handler.postDelayed(new Push(true), 300);
    }

    private static boolean musicOnly() {
        return !XemsPanel.isRunning() && MusicSync.isRunning() && MusicSync.isPlayerMode();
    }

    // ================================================================ XEMS → band

    static void push(boolean force) {
        XiaomiBandLink link = XiaomiBand.link();
        if (link == null || !link.isConnected()
                || !WearableConfig.isBandRemoteEnabled(WearableSyncHelper.getContext())) {
            return;
        }
        long now = System.currentTimeMillis();
        boolean trainRunning = XemsPanel.isRunning();
        if (trainRunning && !trainWasRunning) {
            trainStartMs = now;
        } else if (!trainRunning && trainWasRunning) {
            trainAccumMs += now - trainStartMs;
        }
        trainWasRunning = trainRunning;
        long trainMs = trainAccumMs + (trainRunning ? now - trainStartMs : 0);
        boolean aiNow = AiSession.getStage() == AiSession.Stage.RUNNING && AiSession.getEngine() != null;
        if (aiNow) {
            aiElapsedS = Math.round(AiSession.getEngine().getElapsedPlanS());
        } else if (aiWasRunning) {
            onSessionEnd("ai", aiElapsedS);
        }
        aiWasRunning = aiNow;

        int hr = NotifyWearableBridge.getLastHeartRate();
        int limit = WearableSyncHelper.getContext() != null
                ? WearableConfig.getHrThreshold(WearableSyncHelper.getContext()) : 170;
        String hrText = hr > 0 ? hr + " bpm · Z" + WearableUi.zoneFor(hr, limit) : "XEMS";

        String title;
        String sub;
        boolean playing;
        boolean paused;
        int pos = 0;
        int dur = 0;
        AiEngine e = AiSession.getEngine();
        if (AiSession.getStage() == AiSession.Stage.RUNNING && e != null) {
            AiEngine.State st = e.getState();
            AiModel.Phase ph = e.phase();
            double kcal = AiSession.getKcal();
            title = hrText;
            if (st == AiEngine.State.REST && e.isRestReady()) {
                sub = WearableUi.tr("Почивката стига · ▶ продължи", "Rest done · ▶ continue");
            } else {
                sub = phaseName(ph.id) + " · " + mmss(ph.durationS - e.getPhaseElapsedS())
                        + (kcal > 0 ? " · " + Math.round(kcal) + " kcal" : "");
            }
            playing = st == AiEngine.State.RUN;
            paused = !playing;
            pos = (int) e.getElapsedPlanS();
            dur = e.getPlan().totalS;
        } else if (trainRunning || trainMs > 0 && !musicOnly()) {
            double kcal = HrGuard.core() != null ? HrGuard.core().getKcal() : 0;
            title = hrText;
            sub = WearableUi.tr("Тренировка ", "Training ") + mmss(trainMs / 1000.0)
                    + (kcal > 0 ? " · " + Math.round(kcal) + " kcal" : "");
            playing = trainRunning;
            paused = !trainRunning;
        } else if (musicOnly()) {
            String t = MusicPlayerHelper.currentTitle();
            title = t != null && t.length() > 0 ? t : "XEMS";
            sub = hr > 0 ? "XEMS ♫ · " + hr + " bpm" : "XEMS ♫";
            playing = !MusicSync.isPlaybackPaused();
            paused = !playing;
            pos = MusicSync.getPlaybackPositionMs() / 1000;
            dur = MusicSync.getPlaybackDurationMs() / 1000;
        } else {
            title = hrText;
            sub = WearableUi.tr("Готов · ▶ старт", "Ready · ▶ start");
            playing = false;
            paused = true;
        }
        String key = title + "|" + sub + "|" + playing + "|" + (dur > 0 ? pos / 5 : 0);
        boolean changed = !key.equals(lastSent);
        if (force || changed || now - lastSentMs >= 20000L) {
            lastSent = key;
            lastSentMs = now;
            link.sendCommand(XiaomiBandRemote.musicInfo(playing, paused, VOL, title, sub, pos, dur));
        }
        // The band app counts down by itself; a fresh state every few seconds keeps HR and charts
        // live, and any change of what runs (either side) goes at once.
        sendApp(title, sub, playing, hr, limit, trainMs, pos, dur, force || changed, now);
    }

    private static boolean aiWasRunning;
    private static long aiElapsedS;
    private static int endSeq;
    private static org.json.JSONObject summary;
    private static long summaryUntilMs;

    /** Manual training fully stopped (■ on the panel): summary for the band, clock reset. */
    public static void onManualStop() {
        try {
            long now = System.currentTimeMillis();
            long ms = trainAccumMs + (trainWasRunning ? now - trainStartMs : 0);
            trainAccumMs = 0;
            trainWasRunning = false;
            if (!aiWasRunning && AiSession.getStage() != AiSession.Stage.RUNNING && ms >= 30000L) {
                onSessionEnd("manual", ms / 1000);
            }
        } catch (Throwable t) {
            XemsGuard.report("BandRemote.stop", t);
        }
    }

    /** A session ended: keep its summary in the state for 90 s (the band opens it once). */
    static void onSessionEnd(String kind, long durS) {
        try {
            long now = System.currentTimeMillis();
            android.content.Context ctx = WearableSyncHelper.getContext();
            int limit = ctx != null ? WearableConfig.getHrThreshold(ctx) : 170;
            HrHistory.Series ss = HrHistory.since(now, Math.max(60, durS + 5) * 1000L);
            double kcal = "ai".equals(kind) ? AiSession.getKcal()
                    : HrGuard.core() != null ? HrGuard.core().getKcal() : 0;
            org.json.JSONObject o = new org.json.JSONObject();
            o.put("n", ++endSeq);
            o.put("kind", kind);
            o.put("dur", durS);
            o.put("kcal", Math.max(0, Math.round(kcal)));
            o.put("avg", ss.avg());
            o.put("max", ss.max());
            long[] zm = ss.zoneMs(limit);
            org.json.JSONArray zt = new org.json.JSONArray();
            for (int z = 1; z <= 5; z++) {
                zt.put(zm[z] / 1000);
            }
            o.put("zt", zt);
            summary = o;
            summaryUntilMs = now + 90000L;
            WearableBleDiagLog.log("applink", "session end " + kind + " " + durS + "s");
            handler.postDelayed(new Push(true), 300);
        } catch (Throwable t) {
            WearableBleDiagLog.log("applink", "summary: " + t);
        }
    }

    /** Band: long press on the heart rate = pause whatever runs. */
    static void pauseAll() {
        AiEngine e = AiSession.getEngine();
        if (AiSession.getStage() == AiSession.Stage.RUNNING && e != null) {
            if (e.getState() == AiEngine.State.RUN) {
                AiSession.togglePause();
            }
        } else if (XemsPanel.isRunning()) {
            XemsPanel.press(XemsPanel.PRESS_START);
        }
        if (MusicSync.isRunning() && MusicSync.isPlayerMode() && !MusicSync.isPlaybackPaused()
                && !XemsPanel.isRunning()) {
            MusicPlayerHelper.togglePlayPause();
        }
    }

    private static final long APP_MS = 4000L;
    private static long lastAppMs;
    private static final int HISTORY_BARS = 30;
    private static final long HISTORY_MS = 3L * 60L * 1000L;

    private static String lastMode = "";
    private static boolean lastRestReady;

    /**
     * The same state for the XEMS app on the band (only once it has said hello), with what its
     * screens draw: phase timeline and countdown, strength, HR history and time in zones.
     */
    private static int seq;
    /** This run of the app: a new value tells the band that seq starts again. */
    private static final long BOOT = System.currentTimeMillis() % 1000000000L;
    private static String lastSig = "";

    private static void sendApp(String title, String sub, boolean playing, int hr, int limit,
            long trainMs, int pos, int dur, boolean force, long nowMs) {
        if (!com.isaigu.gymapp.wearable.xiaomi.XiaomiBandAppLink.isLinked()) {
            return;
        }
        AiEngine e = AiSession.getEngine();
        boolean ai = AiSession.getStage() == AiSession.Stage.RUNNING && e != null;
        String mode = ai ? "ai" : XemsPanel.isRunning() || trainWasRunning ? "manual" : musicOnly() ? "music" : "idle";
        double kcal = ai ? AiSession.getKcal() : HrGuard.core() != null ? HrGuard.core().getKcal() : 0;
        boolean restReady = ai && e.getState() == AiEngine.State.REST && e.isRestReady();
        String vib = "";
        if (restReady && !lastRestReady) {
            vib = "long";                           // rest done: next block by the wearer
        } else if (!mode.equals(lastMode) && lastMode.length() > 0) {
            vib = "short";
        }
        lastMode = mode;
        lastRestReady = restReady;
        long now = System.currentTimeMillis();
        try {
            org.json.JSONObject o = new org.json.JSONObject();
            o.put("t", "state");
            o.put("v", 2);
            o.put("mode", mode);
            o.put("hr", Math.max(0, hr));
            o.put("z", hr > 0 ? WearableUi.zoneFor(hr, limit) : 0);
            o.put("lim", limit);
            o.put("title", ai || XemsPanel.isRunning() ? sub : title);
            o.put("sub", ai || XemsPanel.isRunning() ? "" : sub);
            o.put("kcal", Math.max(0, Math.round(kcal)));
            o.put("run", playing);
            org.json.JSONObject can = new org.json.JSONObject();
            can.put("plus", ai ? e.canIncrease() : XemsPanel.isRunning() || musicOnly());
            can.put("minus", ai ? e.canReduce() : XemsPanel.isRunning() || musicOnly());
            can.put("dbl", ai && e.isActivePauseAvailable());
            o.put("can", can);
            o.put("dbl", ai && e.isActivePauseOn());
            o.put("vib", vib);

            long elapsedS;
            if (ai) {
                AiEngine.State st = e.getState();
                o.put("st", restReady ? "ready" : st == AiEngine.State.REST ? "rest"
                        : st == AiEngine.State.RUN ? "run" : "pause");
                AiModel.Phase ph = e.phase();
                o.put("ph", phaseName(ph.id));
                o.put("pi", e.getPhaseIndex());
                o.put("pd", ph.durationS);
                o.put("pl", Math.max(0, Math.round(ph.durationS - e.getPhaseElapsedS())));
                if (st == AiEngine.State.REST) {
                    o.put("rl", Math.max(0, Math.round(e.getRestRemainingS(now))));
                }
                org.json.JSONArray pds = new org.json.JSONArray();
                org.json.JSONArray pns = new org.json.JSONArray();
                for (AiModel.Phase p : e.getPlan().phases) {
                    pds.put(p.durationS);
                    pns.put(phaseName(p.id));
                }
                o.put("pds", pds);
                o.put("pns", pns);
                o.put("u", (int) Math.round(e.getUUser() * 100));
                elapsedS = Math.round(e.getElapsedPlanS());
                o.put("tot", e.getPlan().totalS);
            } else if ("music".equals(mode)) {
                o.put("st", playing ? "run" : "pause");
                o.put("pos", pos);
                o.put("dur", dur);
                elapsedS = trainMs / 1000;
            } else {
                o.put("st", playing ? "run" : "idle".equals(mode) ? "idle" : "pause");
                elapsedS = trainMs / 1000;
            }
            o.put("el", elapsedS);

            // HR: last 3 min in 30 bars, and over the session average / peak / time in zones.
            HrHistory.Series recent = HrHistory.since(now, HISTORY_MS);
            org.json.JSONArray hh = new org.json.JSONArray();
            for (int b = 0; b < HISTORY_BARS; b++) {
                long from = now - HISTORY_MS + b * (HISTORY_MS / HISTORY_BARS);
                long to = from + HISTORY_MS / HISTORY_BARS;
                int sum = 0;
                int n = 0;
                for (int i = 0; i < recent.size(); i++) {
                    if (recent.t[i] >= from && recent.t[i] < to) {
                        sum += recent.hr[i];
                        n++;
                    }
                }
                hh.put(n > 0 ? sum / n : 0);
            }
            o.put("hh", hh);
            HrHistory.Series session = HrHistory.since(now, elapsedS > 0 ? (elapsedS + 5) * 1000L : HISTORY_MS);
            o.put("avg", session.avg());
            o.put("max", session.max());
            long[] zm = session.zoneMs(limit);
            org.json.JSONArray zt = new org.json.JSONArray();
            for (int z = 1; z <= 5; z++) {
                zt.put(zm[z] / 1000);
            }
            o.put("zt", zt);
            org.json.JSONObject mods = modules(limit);
            o.put("mods", mods);
            if (summary != null && now < summaryUntilMs) {
                o.put("sum", summary);
            }
            o.put("lang", com.isaigu.gymapp.widget.XemsLang.isBg() ? "bg" : "en");
            org.json.JSONArray lic = new org.json.JSONArray();
            for (String id : com.isaigu.gymapp.widget.XemsLicense.ALL) {
                if (com.isaigu.gymapp.widget.XemsLicense.has(id)) {
                    lic.put(id);
                }
            }
            o.put("lic", lic);
            org.json.JSONArray ch = channels();
            o.put("ch", ch);
            int ms = mainStrength();
            o.put("ms", ms);
            o.put("ack", lastAck);

            // What the band shows as "what runs and how": a change there is sent at once.
            String sig = mode + "|" + o.optString("st") + "|" + playing + "|" + o.optString("ph")
                    + "|" + o.opt("can") + "|" + o.optBoolean("dbl") + "|" + lic + "|" + ch + "|" + ms + "|" + lastAck
                    + "|" + o.optString("lang") + "|" + moduleSig(mods) + "|" + (o.has("sum") ? summary.optInt("n") : 0);
            boolean changedSig = !sig.equals(lastSig);
            if (!force && !changedSig && nowMs - lastAppMs < APP_MS) {
                return;
            }
            lastSig = sig;
            lastAppMs = nowMs;
            o.put("seq", ++seq);
            o.put("boot", BOOT);
            com.isaigu.gymapp.wearable.xiaomi.XiaomiBandAppLink.send(o.toString());
        } catch (Throwable t) {
            WearableBleDiagLog.log("applink", "state: " + t);
        }
    }

    /** The slot's channels: [value 0..100, or −1 when the channel is switched off], by index. */
    private static org.json.JSONArray channels() {
        org.json.JSONArray a = new org.json.JSONArray();
        com.isaigu.gymapp.train.model.TrainItem item = leaderItem();
        int[] v = item != null ? channelValues(item) : null;
        if (v == null) {
            return a;
        }
        boolean[] off = item.partsDisabled;
        for (int i = 0; i < v.length; i++) {
            a.put(off != null && i < off.length && off[i] ? -1 : v[i]);
        }
        return a;
    }

    /** The parts of the module blocks that say what is on / running (not the counters). */
    private static String moduleSig(org.json.JSONObject m) {
        org.json.JSONObject tm = m.optJSONObject("tm");
        org.json.JSONObject mu = m.optJSONObject("mu");
        org.json.JSONObject hg = m.optJSONObject("hg");
        org.json.JSONObject tr = m.optJSONObject("tr");
        StringBuilder b = new StringBuilder();
        if (tr != null) {
            b.append(tr.optBoolean("run"));
        }
        if (tm != null) {
            b.append('|').append(tm.optBoolean("arm")).append(tm.optBoolean("run")).append(tm.optBoolean("pau"))
                    .append(tm.optInt("loop")).append(tm.optString("lbl"));
        }
        if (mu != null) {
            b.append('|').append(mu.optBoolean("on")).append(mu.optBoolean("pm")).append(mu.optBoolean("play"))
                    .append(mu.optString("title")).append(mu.optInt("ceil"));
        }
        if (hg != null) {
            b.append('|').append(hg.optBoolean("en")).append(hg.optBoolean("hold")).append(hg.optBoolean("ai"))
                    .append(hg.optInt("up"));
        }
        return b.toString();
    }

    /** Live state of each XEMS module for the band's module screens. */
    private static org.json.JSONObject modules(int limit) throws org.json.JSONException {
        org.json.JSONObject m = new org.json.JSONObject();
        android.content.Context ctx = WearableSyncHelper.getContext();

        org.json.JSONObject tr = new org.json.JSONObject();
        tr.put("run", XemsPanel.isRunning());
        m.put("tr", tr);

        try {
            m.put("tm", com.isaigu.gymapp.dialog.IntervalTimerHelper.bandState());
        } catch (Throwable t) {
            m.put("tm", new org.json.JSONObject());
        }

        org.json.JSONObject mu = new org.json.JSONObject();
        boolean sync = MusicSync.isRunning();
        mu.put("on", sync);
        mu.put("pm", sync && MusicSync.isPlayerMode());
        mu.put("play", sync && MusicSync.isPlayerMode() && !MusicSync.isPlaybackPaused());
        String title = MusicPlayerHelper.currentTitle();
        mu.put("title", title != null ? title : "");
        mu.put("pos", MusicSync.getPlaybackPositionMs() / 1000);
        mu.put("dur", MusicSync.getPlaybackDurationMs() / 1000);
        mu.put("lvl", sync ? MusicSync.getLiveStrength() : 0);
        mu.put("ceil", sync ? MusicSync.getStrengthCeiling() : 0);
        m.put("mu", mu);

        org.json.JSONObject hg = new org.json.JSONObject();
        HrGuardCore core = HrGuard.core();
        hg.put("en", ctx != null && WearableConfig.isAutoReduceEnabled(ctx));
        hg.put("up", limit);
        hg.put("ai", AiSession.getStage() == AiSession.Stage.RUNNING);   // AI owns the output then
        if (core != null) {
            hg.put("sf", (int) Math.round(core.getStrengthFactor() * 100));
            hg.put("hold", core.isHold());
            double fc = core.getForecast();
            hg.put("fc", Double.isNaN(fc) ? 0 : (int) Math.round(fc));
            String act = core.getLastAction();
            hg.put("act", act != null ? act : "");
        }
        m.put("hg", hg);
        return m;
    }

    private static String phaseName(AiModel.PhaseId id) {
        switch (id) {
            case WARMUP: return WearableUi.tr("Загрявка", "Warm-up");
            case MAIN: return WearableUi.tr("Основна", "Main");
            case METABOLIC: return WearableUi.tr("Метаболитна", "Metabolic");
            default: return WearableUi.tr("Разпускане", "Cool-down");
        }
    }

    private static String mmss(double s) {
        long v = Math.max(0, Math.round(s));
        return String.format(Locale.US, "%d:%02d", v / 60, v % 60);
    }

    // ================================================================ runnables

    static final class Tick implements Runnable {
        @Override
        public void run() {
            if (!running) {
                return;
            }
            try {
                push(false);
            } catch (Throwable t) {
                XemsGuard.report("BandRemote.tick", t);
            }
            handler.postDelayed(this, TICK_MS);
        }
    }

    static final class Push implements Runnable {
        private final boolean force;

        Push(boolean force) {
            this.force = force;
        }

        @Override
        public void run() {
            try {
                push(force);
            } catch (Throwable t) {
                XemsGuard.report("BandRemote.push", t);
            }
        }
    }

    static final class AppMsg implements Runnable {
        private final String json;

        AppMsg(String json) {
            this.json = json;
        }

        @Override
        public void run() {
            try {
                handleApp(json);
            } catch (Throwable t) {
                XemsGuard.report("BandRemote.app", t);
            }
        }
    }

    static final class Key implements Runnable {
        private final int key;
        private final int volume;

        Key(int key, int volume) {
            this.key = key;
            this.volume = volume;
        }

        @Override
        public void run() {
            try {
                handleKey(key, volume);
            } catch (Throwable t) {
                XemsGuard.report("BandRemote.key", t);
            }
        }
    }
}
