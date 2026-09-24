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
    private static final long TICK_MS = 2000L;
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

    /** From the XEMS app on the band: {"t":"hello"} or {"t":"cmd","a":…}. */
    @Override
    public void onAppMessage(String json) {
        handler.post(new AppMsg(json));
    }

    static void handleApp(String json) {
        String t = jsonField(json, "t");
        if ("hello".equals(t)) {
            String v = jsonField(json, "v");
            try {
                BandAppInstall.onAppHello(v != null ? Integer.parseInt(v) : 0);
            } catch (NumberFormatException ignored) {
            }
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
            }
        }
        handler.postDelayed(new Push(true), 250);
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
        // The band app counts down by itself; a fresh state every few seconds keeps HR and charts live.
        if (force || changed || now - lastAppMs >= APP_MS) {
            lastAppMs = now;
            sendApp(title, sub, playing, hr, limit, trainMs, pos, dur);
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
    private static void sendApp(String title, String sub, boolean playing, int hr, int limit,
            long trainMs, int pos, int dur) {
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
            com.isaigu.gymapp.wearable.xiaomi.XiaomiBandAppLink.send(o.toString());
        } catch (Throwable t) {
            WearableBleDiagLog.log("applink", "state: " + t);
        }
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
