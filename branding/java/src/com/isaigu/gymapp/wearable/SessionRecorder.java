package com.isaigu.gymapp.wearable;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;

import com.isaigu.gymapp.train.TrainItemManager;
import com.isaigu.gymapp.train.model.TrainItem;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/**
 * Records every training on the tablet, one sample per second per slot, for the client report.
 * <p>
 * A slot's training starts when the trainer presses Start (data.start). Pause = start off while the
 * countdown (TrainItem.workLength, seconds left) keeps its value; the end = start off and the
 * countdown back at the planned time (reset after Stop or at 0:00), another client in the slot, or a
 * pause longer than {@link #MAX_PAUSE_S}. Trainings with less than a minute of work are dropped.
 * The client in the first running slot wears the band: only that one gets heart rate, the native
 * band workout ({@link BandWorkout}) and 60 s of recovery heart rate after the end.
 */
public final class SessionRecorder {
    static final int MIN_ACTIVE_S = 60;
    static final int END_CONFIRM_S = 2;
    static final int MAX_PAUSE_S = 30 * 60;
    static final int POST_S = 60;
    static final long HR_FRESH_MS = 8000L;

    private static final Handler H = new Handler(Looper.getMainLooper());
    private static final Map<Integer, SessionRec> OPEN = new HashMap<Integer, SessionRec>();
    private static final List<SessionRec> POST = new ArrayList<SessionRec>();
    private static boolean started;
    private static Context app;

    private SessionRecorder() {}

    /** Called when the training screen appears; safe to call often. */
    public static void ensure(Context c) {
        if (c == null) {
            return;
        }
        app = c.getApplicationContext();
        if (started) {
            return;
        }
        started = true;
        H.postDelayed(new Tick(), 1000L);
        WearableBleDiagLog.log("report", "session recorder on");
    }

    static final class Tick implements Runnable {
        @Override
        public void run() {
            try {
                tick();
            } catch (Throwable t) {
                WearableBleDiagLog.log("report", "tick: " + t);
            }
            H.postDelayed(this, 1000L);
        }
    }

    static void tick() {
        long now = System.currentTimeMillis();
        TrainItemManager m = WearableSyncHelper.getItemManager();
        List<TrainItem> items = m != null ? m.getItemList() : null;
        int bpm = freshHr(now);
        int aiPhase = aiPhase();
        boolean music = musicOn();
        boolean leaderTaken = false;
        if (items != null) {
            for (int i = 0; i < items.size(); i++) {
                TrainItem it = items.get(i);
                SessionRec r = OPEN.get(i);
                boolean hasUser = it != null && !it.isEmpty() && it.data != null && it.data.trainUser != null;
                if (r != null && (!hasUser || it.data.trainUser.id != r.userId)) {
                    close(i, r, now);
                    r = null;
                }
                if (!hasUser) {
                    continue;
                }
                boolean running = it.data.start;
                if (r == null && !running) {
                    continue;
                }
                boolean lead = false;
                if (running && !leaderTaken) {
                    leaderTaken = true;
                    lead = true;
                }
                if (r == null) {
                    r = new SessionRec(it, now);
                    r.leader = lead;
                    OPEN.put(i, r);
                    BandWorkout.onStart(r);
                    WearableBleDiagLog.log("report", "session start slot " + i + " user " + r.userId
                            + " plan " + r.planS + " s");
                }
                if (!running) {
                    // Paused, or ended: the countdown goes back to the planned time (reset) or to 0.
                    boolean reset = it.workLength <= 0 || r.planS > 0 && it.workLength >= r.planS;
                    r.idle = reset ? r.idle + 1 : 0;
                    r.pausedS = reset ? r.pausedS : r.pausedS + 1;
                    if (reset && r.idle >= END_CONFIRM_S || r.pausedS > MAX_PAUSE_S) {
                        close(i, r, now);
                        continue;
                    }
                } else {
                    r.pausedS = 0;
                    r.idle = 0;
                }
                if (aiPhase > 0 && r.leader) {
                    r.ai = true;
                }
                if (music) {
                    r.music = true;
                }
                BandWorkout.onState(r, running);
                if (!(r.idle > 0)) {
                    r.sample(it, r.leader && bpm > 0 ? bpm : 0, r.leader ? aiPhase : 0);
                }
            }
        }
        // Slots that vanished (screen rebuilt, client removed).
        Iterator<Map.Entry<Integer, SessionRec>> e = OPEN.entrySet().iterator();
        List<Integer> gone = new ArrayList<Integer>();
        while (e.hasNext()) {
            Map.Entry<Integer, SessionRec> en = e.next();
            if (items == null || en.getKey() >= items.size()) {
                gone.add(en.getKey());
            }
        }
        for (int k = 0; k < gone.size(); k++) {
            close(gone.get(k), OPEN.get(gone.get(k)), now);
        }
        // Recovery heart rate after the end.
        for (int k = POST.size() - 1; k >= 0; k--) {
            SessionRec r = POST.get(k);
            r.post.add(bpm);
            r.postLeft--;
            if (r.postLeft <= 0 || leaderTaken) {
                POST.remove(k);
                save(r);
            }
        }
    }

    private static void close(int slot, SessionRec r, long now) {
        OPEN.remove(slot);
        if (r == null) {
            return;
        }
        r.end = now;
        BandWorkout.onEnd(r);
        if (r.activeS() < MIN_ACTIVE_S) {
            WearableBleDiagLog.log("report", "session dropped (" + r.activeS() + " s active) user " + r.userId);
            return;
        }
        if (r.leader && freshHr(now) > 0) {
            r.postLeft = POST_S;
            POST.add(r);
        } else {
            save(r);
        }
    }

    private static void save(SessionRec r) {
        Context c = app;
        if (c == null) {
            return;
        }
        int rest = WearableConfig.getRestHr(c);
        SessionStore.save(c, r, rest);
        try {
            android.widget.Toast.makeText(c, WearableUi.tr("Докладът за тренировката е записан в профила на ",
                    "Training report saved to the profile of ") + (r.userName != null ? r.userName : ""),
                    android.widget.Toast.LENGTH_LONG).show();
        } catch (Throwable ignored) {
        }
    }

    static int freshHr(long now) {
        try {
            HrHistory.Series s = HrHistory.since(now, HR_FRESH_MS);
            return s.size() > 0 ? s.last() : 0;
        } catch (Throwable t) {
            return 0;
        }
    }

    /** 1 + AiModel.PhaseId ordinal while a Smart Session runs, else 0. */
    private static int aiPhase() {
        try {
            if (com.isaigu.gymapp.ai.AiSession.getStage() != com.isaigu.gymapp.ai.AiSession.Stage.RUNNING) {
                return 0;
            }
            com.isaigu.gymapp.ai.AiEngine e = com.isaigu.gymapp.ai.AiSession.getEngine();
            return e != null && e.phase() != null && e.phase().id != null ? e.phase().id.ordinal() + 1 : 0;
        } catch (Throwable t) {
            return 0;
        }
    }

    private static boolean musicOn() {
        try {
            return com.isaigu.gymapp.train.utils.MusicSync.isRunning();
        } catch (Throwable t) {
            return false;
        }
    }
}
