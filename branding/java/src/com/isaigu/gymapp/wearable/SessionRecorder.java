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
 * countdown (TrainItem.workLength, seconds left) keeps its value; a mode ends = start off and the
 * countdown back at the planned time (reset after Stop or at 0:00).
 * <p>
 * Manual mode: one training = the work modes (main, muscle, cardio) and the massage after them. A work
 * mode that ends only waits for the next mode; the training ends when a massage ends (a massage on its
 * own is a procedure and ends the same way). AI and automatic mode end with their own end
 * ({@link #finishAssisted}). The report opens on the screen after the end. Another client in the slot,
 * or a pause / wait longer than {@link #MAX_PAUSE_S}, also closes the training (saved, not shown).
 * Trainings with less than a minute of work are dropped.
 * The client in the first running slot wears the band: only that one gets heart rate, the native
 * band workout ({@link BandWorkout}) and 60 s of recovery heart rate after the end.
 */
public final class SessionRecorder {
    static final int MIN_ACTIVE_S = 60;
    static final int END_CONFIRM_S = 2;
    static final int MAX_PAUSE_S = 30 * 60;
    static final int POST_S = 60;
    static final long HR_FRESH_MS = 8000L;
    static final int TYPE_MASSAGE = 3;

    private static final Handler H = new Handler(Looper.getMainLooper());
    private static final Map<Integer, SessionRec> OPEN = new HashMap<Integer, SessionRec>();
    private static final List<SessionRec> POST = new ArrayList<SessionRec>();
    /** Assisted trainings saved while their own report (AI) was still up: shown by finishAssisted. */
    private static final List<SessionRec> PENDING = new ArrayList<SessionRec>();
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
        boolean assisted = assistActive();
        String autoProgram = autoProgram();
        boolean music = musicOn();
        boolean leaderTaken = false;
        if (items != null) {
            for (int i = 0; i < items.size(); i++) {
                TrainItem it = items.get(i);
                SessionRec r = OPEN.get(i);
                boolean hasUser = it != null && !it.isEmpty() && it.data != null && it.data.trainUser != null;
                if (r != null && (!hasUser || it.data.trainUser.id != r.userId)) {
                    close(i, r, now, false);
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
                    int hz0 = 0;
                    try {
                        hz0 = it.getTrainProgram().matchProgram().hz;
                    } catch (Throwable ignored) {
                    }
                    BandWorkout.onStart(r, hz0);
                    WearableBleDiagLog.log("report", "session start slot " + i + " user " + r.userId
                            + " plan " + r.planS + " s");
                }
                if (!running) {
                    if (r.between) {
                        // A work mode is done: wait for the next mode (not recorded).
                        if (++r.betweenS > MAX_PAUSE_S) {
                            close(i, r, now, false);
                        }
                        continue;
                    }
                    // Paused, or ended: the countdown goes back to the planned time (reset) or to 0.
                    boolean reset = it.workLength <= 0 || r.segPlanS > 0 && it.workLength >= r.segPlanS;
                    r.idle = reset ? r.idle + 1 : 0;
                    r.pausedS = reset ? r.pausedS : r.pausedS + 1;
                    if (reset && r.idle >= END_CONFIRM_S) {
                        if (r.assist) {
                            close(i, r, now, true);
                        } else if (r.curType == TYPE_MASSAGE || r.curType < 0) {
                            close(i, r, now, true);        // massage (or a procedure) done: training over
                        } else {
                            r.between = true;              // work mode done: the massage may follow
                            r.betweenS = 0;
                            r.idle = 0;
                            BandWorkout.onState(r, false);
                            WearableBleDiagLog.log("report", "slot " + i + " mode " + r.curType + " done, waiting");
                        }
                        continue;
                    }
                    if (r.pausedS > MAX_PAUSE_S) {
                        close(i, r, now, false);
                        continue;
                    }
                } else {
                    if (r.between) {
                        r.between = false;
                        r.segPlanS = Math.max(0, it.workLength);
                        r.planS += r.segPlanS;
                        WearableBleDiagLog.log("report", "slot " + i + " next mode, plan " + r.segPlanS + " s");
                    }
                    r.pausedS = 0;
                    r.idle = 0;
                    int type = useType(it);
                    if (type >= 0) {
                        r.curType = type;
                        r.modes |= 1 << type;
                        if (r.mainType < 0 && type != TYPE_MASSAGE) {
                            r.mainType = type;
                            r.mainPlanS = r.segPlanS;
                        }
                    }
                    if (assisted) {
                        r.assist = true;
                    }
                    if (autoProgram != null) {
                        r.auto = true;
                        r.program = autoProgram;
                    }
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
            close(gone.get(k), OPEN.get(gone.get(k)), now, false);
        }
        NextClient.tick(app, now, items, OPEN.size());
        // Recovery heart rate after the end.
        for (int k = POST.size() - 1; k >= 0; k--) {
            SessionRec r = POST.get(k);
            r.post.add(bpm);
            r.postLeft--;
            if (r.postLeft <= 0 || leaderTaken) {
                POST.remove(k);
                save(r, !r.shown);
            }
        }
    }

    /**
     * AI or automatic mode has ended (its board closed): end the trainings it ran now and open their
     * reports, with those already saved while its own report was up.
     */
    public static void finishAssisted() {
        try {
            long now = System.currentTimeMillis();
            List<Integer> slots = new ArrayList<Integer>();
            for (Map.Entry<Integer, SessionRec> en : OPEN.entrySet()) {
                if (en.getValue() != null && en.getValue().assist) {
                    slots.add(en.getKey());
                }
            }
            for (int k = 0; k < slots.size(); k++) {
                close(slots.get(k), OPEN.get(slots.get(k)), now, true);
            }
            showPending();
        } catch (Throwable t) {
            WearableBleDiagLog.log("report", "finishAssisted: " + t);
        }
    }

    /** True while an AI or automatic board is up (its own report included): reports wait for it. */
    private static boolean boardUp() {
        try {
            return com.isaigu.gymapp.ai.AiSession.getStage() != com.isaigu.gymapp.ai.AiSession.Stage.IDLE
                    || com.isaigu.gymapp.ai.AutoSession.getStage() != com.isaigu.gymapp.ai.AutoSession.Stage.IDLE;
        } catch (Throwable t) {
            return false;
        }
    }

    private static void close(int slot, SessionRec r, long now, boolean show) {
        OPEN.remove(slot);
        if (r == null) {
            return;
        }
        r.end = now;
        BandWorkout.onEnd(r);
        NextClient.onClosed(slot, r, now);
        if (r.bandOwner || r.leader) {
            BandRemote.onMuscles(r.muscleLevels(), r.sex(), r.bandOwner);
        }
        if (r.activeS() < MIN_ACTIVE_S) {
            WearableBleDiagLog.log("report", "session dropped (" + r.activeS() + " s active) user " + r.userId);
            return;
        }
        NextPlan.remember(app, r);
        WearableBleDiagLog.log("report", "session end user " + r.userId + " modes=" + r.modes
                + " assist=" + r.assist + " show=" + show);
        boolean post = r.leader && freshHr(now) > 0;
        if (show) {
            // Saved now so the report opens at once; the recovery heart rate is added in 60 s.
            save(r, false);
            if (r.assist && boardUp()) {
                PENDING.add(r);
            } else {
                show(r);
            }
        }
        if (post) {
            r.postLeft = POST_S;
            POST.add(r);
        } else if (!show) {
            save(r, true);
        }
    }

    private static void showPending() {
        for (int k = 0; k < PENDING.size(); k++) {
            show(PENDING.get(k));
        }
        PENDING.clear();
    }

    private static void show(SessionRec r) {
        r.shown = true;
        try {
            android.app.Activity a = WearableSyncHelper.resolveActivityForPermissions();
            if (a != null && r.user != null) {
                ReportScreen.open(a, r.user, r.start);
                return;
            }
        } catch (Throwable t) {
            WearableBleDiagLog.log("report", "show: " + t);
        }
        toastSaved(r);
    }

    private static void save(SessionRec r, boolean toast) {
        Context c = app;
        if (c == null) {
            return;
        }
        int rest = WearableConfig.getRestHr(c);
        SessionStore.save(c, r, rest);
        if (toast) {
            toastSaved(r);
        }
    }

    private static void toastSaved(SessionRec r) {
        Context c = app;
        try {
            android.widget.Toast.makeText(c, WearableUi.tr("Докладът за тренировката е записан в профила на ",
                    "Training report saved to the profile of ") + (r.userName != null ? r.userName : ""),
                    android.widget.Toast.LENGTH_LONG).show();
        } catch (Throwable ignored) {
        }
    }

    private static int useType(TrainItem it) {
        try {
            return it.getTrainProgram() != null ? it.getTrainProgram().useType : -1;
        } catch (Throwable t) {
            return -1;
        }
    }

    /** AI or automatic mode drives the suits (calibration or the run). */
    private static boolean assistActive() {
        try {
            com.isaigu.gymapp.ai.AiSession.Stage a = com.isaigu.gymapp.ai.AiSession.getStage();
            com.isaigu.gymapp.ai.AutoSession.Stage b = com.isaigu.gymapp.ai.AutoSession.getStage();
            return a == com.isaigu.gymapp.ai.AiSession.Stage.CALIB || a == com.isaigu.gymapp.ai.AiSession.Stage.RUNNING
                    || b == com.isaigu.gymapp.ai.AutoSession.Stage.CALIB || b == com.isaigu.gymapp.ai.AutoSession.Stage.RUNNING;
        } catch (Throwable t) {
            return false;
        }
    }

    /** The automatic program's name while it runs, else null. */
    private static String autoProgram() {
        try {
            if (com.isaigu.gymapp.ai.AutoSession.getStage() != com.isaigu.gymapp.ai.AutoSession.Stage.RUNNING
                    || com.isaigu.gymapp.ai.AutoSession.getPlan() == null) {
                return null;
            }
            return com.isaigu.gymapp.ai.AutoSession.getPlan().program.name();
        } catch (Throwable t) {
            return null;
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
