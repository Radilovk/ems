package com.isaigu.gymapp.wearable.face;

import com.isaigu.gymapp.ai.AutoCatalog;
import com.isaigu.gymapp.ai.AutoEngine;
import com.isaigu.gymapp.ai.AutoModel;
import com.isaigu.gymapp.ai.AutoSession;

/**
 * The XEMS suit as a face device: the automatic mode runs the face programs ({@code AutoCatalog.FACE*}: the arms
 * channel only, every other channel off and locked, 100 µs, ≥ 20 Hz) with all its limits; the studio is its face.
 */
public final class FaceAuto implements FaceDevice {
    private int program = FaceProgram.LIFT;
    private boolean started;
    private boolean ended;
    private double share;

    public int kind() {
        return XEMS;
    }

    public int[] programs() {
        return FaceProgram.XEMS;
    }

    public String courseKey() {
        long id = AutoSession.leaderUserId();
        return id > 0 ? "u" + id : "";
    }

    public String clientName() {
        return AutoSession.leaderName();
    }

    public int channels() {
        return FaceProgram.get(program).xemsSites().length;
    }

    public int siteOf(int ch) {
        int[] s = FaceProgram.get(program).xemsSites();
        return s[Math.max(0, Math.min(s.length - 1, ch))];
    }

    public String socket(int ch) {
        return "F" + (siteOf(ch) + 1);
    }

    public String channelName(int ch, boolean bg) {
        return FaceProgram.siteName(siteOf(ch), bg);
    }

    public boolean hasMaster() {
        return true;
    }

    /** The studio picked another procedure (before the strength step): the sites follow it. */
    public void select(int program) {
        this.program = program;
    }

    static String autoId(int program) {
        switch (program) {
            case FaceProgram.FIRM: return AutoCatalog.FACE_TONE;
            case FaceProgram.OVAL: return AutoCatalog.FACE_OVAL;
            case FaceProgram.DRAIN: return AutoCatalog.FACE_DRAIN;
            case FaceProgram.RELAX: return AutoCatalog.FACE_RELAX;
            case FaceProgram.CALM: return AutoCatalog.FACE_CALM;
            case FaceProgram.JAW_RELAX: return AutoCatalog.FACE_JAW;
            case FaceProgram.CONTOUR: return AutoCatalog.FACE_CHIN;
            default: return AutoCatalog.FACE;
        }
    }

    /** The studio's procedure for an Auto program id. */
    static int programOf(String autoId) {
        for (int p : FaceProgram.XEMS) {
            if (autoId(p).equals(autoId)) {
                return p;
            }
        }
        return FaceProgram.LIFT;
    }

    public String notReady(int program, boolean bg) {
        String c = AutoSession.getStage() == AutoSession.Stage.IDLE ? AutoSession.conflict() : null;
        if (c != null) {
            return c;
        }
        return null;
    }

    public int strength(int ch) {
        return ch < 0 ? AutoSession.leaderStrength() : AutoSession.channelShare(siteOf(ch));
    }

    public int maxStrength() {
        return 100;
    }

    public int battery(int ch) {
        return -1;
    }

    public void step(int ch, int dir) {
        if (ch >= 0) {
            AutoSession.adjustChannel(siteOf(ch), dir);                 // the site's share, 10 % a step
            return;
        }
        if (AutoSession.getStage() == AutoSession.Stage.CALIB) {
            AutoSession.adjustCalibration(-1, dir);
        } else if (AutoSession.getStage() == AutoSession.Stage.RUNNING) {
            AutoSession.nudge(dir);
        }
    }

    public String prepare(int program, int minutes, boolean bg) {
        this.program = program;
        AutoModel.Input in = AutoSession.getInput();
        if (in == null) {
            return bg ? "Автоматичният режим не е готов" : "Auto is not ready";
        }
        in.goal = AutoModel.Goal.TONE;
        in.kind = AutoModel.Kind.PASSIVE;
        in.programId = autoId(program);
        AutoSession.buildPlan();
        String block = AutoSession.leaderBlock();
        if (block != null) {
            return block;
        }
        AutoSession.beginCalibration();
        started = false;
        ended = false;
        share = 0;
        return null;
    }

    public boolean canStart() {
        return AutoSession.getStage() == AutoSession.Stage.CALIB && AutoSession.canStart();
    }

    public void start(android.content.Context c) {
        AutoSession.startRun(c);
        started = AutoSession.getStage() == AutoSession.Stage.RUNNING;
    }

    public boolean active() {
        AutoSession.Stage s = AutoSession.getStage();
        return s == AutoSession.Stage.CALIB || s == AutoSession.Stage.RUNNING;
    }

    public boolean running() {
        return AutoSession.getStage() == AutoSession.Stage.RUNNING && AutoSession.getEngine() != null;
    }

    public boolean canPause() {
        return running();
    }

    public boolean paused() {
        AutoEngine e = AutoSession.getEngine();
        return e != null && e.getState() == AutoEngine.State.USER_PAUSE;
    }

    public void pause() {
        AutoSession.togglePause();
    }

    public void stop() {
        AutoEngine e = AutoSession.getEngine();
        if (e != null) {
            share = Math.max(share, e.getElapsedS() / Math.max(1.0, e.getElapsedS() + e.getRemainingS()));
        }
        AutoSession.stop();
    }

    public String stopLabel(boolean bg) {
        AutoEngine e = AutoSession.getEngine();
        boolean cool = e != null && e.phase() != null && e.phase().isCooldown();
        return cool ? (bg ? "■  Край" : "■  End") : (bg ? "■  Към отпускане" : "■  To the let-go");
    }

    /** The automatic mode ended its run (AutoUi.onFinished → FaceStudio). */
    void onEnded() {
        AutoEngine e = AutoSession.getEngine();
        if (e != null) {
            double total = e.getElapsedS() + e.getRemainingS();
            share = Math.max(share, total > 0 ? e.getElapsedS() / total : 0);
        }
        ended = true;
    }

    public boolean finished() {
        return ended;
    }

    public double doneShare() {
        return share;
    }

    public FaceTimeline.State state(long now) {
        AutoEngine e = AutoSession.getEngine();
        FaceTimeline.State st;
        long since = now - AutoSession.lastCycleMs();
        if (AutoSession.getStage() == AutoSession.Stage.CALIB) {
            // the calibration runs the plan's main step: the picture follows that very rhythm
            AutoModel.Step m = mainStep();
            int hz = m != null ? m.hz : FaceProgram.get(program).hz;
            st = m != null && AutoSession.lastCycleMs() > 0 && since < 30000
                    ? FaceTimeline.cycle(since, m.onS, m.offS, m.rampUpMs, m.rampDownMs, hz) : new FaceTimeline.State();
            st.hz = hz;
            st.phase = 1;
            return st;
        }
        if (e == null) {
            return new FaceTimeline.State();
        }
        AutoEngine.Cmd c = e.getCurrent();
        boolean run = e.getState() == AutoEngine.State.RUN && c != null && c.frac > 0;
        st = run && AutoSession.lastCycleMs() > 0
                ? FaceTimeline.cycle(since, c.onS, c.offS, c.rampUpMs, c.rampDownMs, c.hz) : new FaceTimeline.State();
        if (c != null) {
            st.hz = c.hz;
        }
        AutoModel.Phase ph = e.phase();
        st.phase = ph == null ? 1 : ph.isCooldown() ? 2 : "WARMUP".equals(ph.id) ? 0 : 1;
        st.elapsedMs = Math.round(e.getElapsedS() * 1000);
        st.totalMs = Math.round((e.getElapsedS() + e.getRemainingS()) * 1000);
        st.done = e.getState() == AutoEngine.State.DONE || e.getState() == AutoEngine.State.STOPPED;
        if (!run) {
            st.leftMs = Math.round(e.phaseRemainingS() * 1000);
        }
        return st;
    }

    /** A site works now: the step's share of it (a wave moves it), times the hold's rise and fall. */
    public float level(int ch, long now) {
        FaceTimeline.State st = state(now);
        int site = siteOf(ch);
        int[] z = AutoSession.leaderZones();
        if (z == null) {
            AutoModel.Plan p = AutoSession.getPlan();
            z = p != null ? p.zones : null;
        }
        float share = z != null && site < z.length ? Math.min(100, z[site]) / 100f : 1f;
        return AutoSession.leaderStrength() > 0 ? st.level * share : 0f;
    }

    private static AutoModel.Step mainStep() {
        AutoModel.Plan p = AutoSession.getPlan();
        if (p == null) {
            return null;
        }
        for (AutoModel.Phase ph : p.phases) {
            if ("MAIN".equals(ph.id) && !ph.steps.isEmpty()) {
                return ph.steps.get(0);
            }
        }
        return null;
    }

    public long[] phases() {
        AutoModel.Plan p = AutoSession.getPlan();
        long[] out = new long[3];
        if (p == null) {
            return out;
        }
        for (AutoModel.Phase ph : p.phases) {
            int k = ph.isCooldown() ? 2 : "WARMUP".equals(ph.id) ? 0 : 1;
            out[k] += ph.durationS * 1000L;
        }
        return out;
    }

    public void cancel() {
        if (!started) {
            AutoSession.close();
        }
    }
}
