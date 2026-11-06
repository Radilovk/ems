package com.isaigu.gymapp.wearable.bluetens;

import com.isaigu.gymapp.wearable.face.FaceDevice;
import com.isaigu.gymapp.wearable.face.FaceProgram;
import com.isaigu.gymapp.wearable.face.FaceTimeline;

/**
 * The Bluetens pads as a face device (docs/xems-face.md): one pad per cheek, each its own strength; the program file
 * is the one {@link BluetensPrograms} builds, and the studio's picture follows that very file
 * ({@link FaceTimeline#of}). The page ({@link BluetensScreen.Page}) keeps the links; this only drives it.
 */
public final class BluetensFace implements FaceDevice {
    private final BluetensScreen.Page page;
    private FaceTimeline timeline;
    private int program = FaceProgram.LIFT;
    private boolean begun;
    private boolean ended;
    private long endedAt;

    BluetensFace(BluetensScreen.Page page) {
        this.page = page;
    }

    static int padProgram(int program) {
        switch (program) {
            case FaceProgram.FIRM: return BluetensPrograms.FACE_TONE;
            case FaceProgram.DRAIN: return BluetensPrograms.FACE_DRAIN;
            case FaceProgram.RELAX: return BluetensPrograms.FACE_RELAX;
            case FaceProgram.JAW_RELAX: return BluetensPrograms.JAW;
            case FaceProgram.CONTOUR: return BluetensPrograms.CHIN;
            default: return BluetensPrograms.FACE;
        }
    }

    /** The widest pulse of the program (its "full" level on the picture). */
    static int fullUs(int program) {
        switch (program) {
            case FaceProgram.CONTOUR: return BluetensPrograms.CHIN_US;
            case FaceProgram.RELAX: return BluetensPrograms.RELAX_US;
            case FaceProgram.JAW_RELAX: return BluetensPrograms.JAW_US;
            default: return BluetensPrograms.FACE_US;
        }
    }

    /** One device works the whole area (the chin, the forehead across its middle); the others a device per side. */
    static boolean single(int program) {
        return program == FaceProgram.CONTOUR || program == FaceProgram.RELAX;
    }

    /** Is this page program one of the face ones (they live in the studio, not in the list). */
    static boolean isFace(int p) {
        return p == BluetensPrograms.FACE || p == BluetensPrograms.FACE_TONE || p == BluetensPrograms.CHIN
                || p == BluetensPrograms.FACE_DRAIN || p == BluetensPrograms.FACE_DRAIN_B
                || p == BluetensPrograms.FACE_RELAX || p == BluetensPrograms.JAW;
    }

    public int kind() {
        return BLUETENS;
    }

    public int[] programs() {
        return FaceProgram.BLUETENS;
    }

    public String courseKey() {
        return "bt";
    }

    public String clientName() {
        return "";
    }

    private BluetensScreen.Pad pad(int ch) {
        int k = 0;
        for (BluetensScreen.Pad p : page.pads) {
            if (p.link.state == BluetensLink.READY) {
                if (k == ch) {
                    return p;
                }
                k++;
            }
        }
        return null;
    }

    public int channels() {
        int k = 0;
        for (BluetensScreen.Pad p : page.pads) {
            if (p.link.state == BluetensLink.READY) {
                k++;
            }
        }
        return Math.min(2, single(program) ? Math.min(1, k) : k);
    }

    /** The first pad is the left cheek (the person's), the second the right; the chin has one. */
    public int sideOf(int ch) {
        if (single(program)) {
            return -1;
        }
        return ch == 0 ? 1 : 0;
    }

    public String channelName(int ch, boolean bg) {
        if (program == FaceProgram.CONTOUR) {
            return bg ? "Под брадичката" : "Under the chin";
        }
        if (program == FaceProgram.RELAX) {
            return bg ? "Чело" : "Forehead";
        }
        if (program == FaceProgram.JAW_RELAX) {
            return ch == 0 ? (bg ? "Лява челюст" : "Left jaw") : (bg ? "Дясна челюст" : "Right jaw");
        }
        return ch == 0 ? (bg ? "Лява буза" : "Left cheek") : (bg ? "Дясна буза" : "Right cheek");
    }

    public String notReady(int program, boolean bg) {
        int k = 0;
        for (BluetensScreen.Pad p : page.pads) {
            if (p.link.state == BluetensLink.READY) {
                k++;
            }
        }
        if (k == 0) {
            return bg ? "Включи устройство Bluetens — то се свързва само" : "Switch on a Bluetens pad — it connects by itself";
        }
        if (!single(program) && k < 2) {
            return bg ? "Само едно устройство: ще работи едната страна. За двете — включи второ."
                    : "One pad only: one side works. For both — switch on a second.";
        }
        return null;
    }

    /** Only one pad for the cheek is a note, not a blocker. */
    public boolean blocks(String why) {
        return why != null && channels() == 0;
    }

    public int strength(int ch) {
        BluetensScreen.Pad p = pad(ch);
        return p != null && p.link.shell.running ? p.link.shell.strength : 0;
    }

    public int maxStrength() {
        return BluetensShell.MAX_STRENGTH;
    }

    public int battery(int ch) {
        BluetensScreen.Pad p = pad(ch);
        return p != null ? p.link.shell.batteryPct() : -1;
    }

    public void step(int ch, int dir) {
        BluetensScreen.Pad p = pad(ch);
        if (p != null) {
            page.step(p, dir);
        }
    }

    public String prepare(int program, int minutes, boolean bg) {
        this.program = program;
        if (channels() == 0) {
            return notReady(program, bg);
        }
        if (page.running) {
            // the page's start toggles: a running program must end first (the pads confirm it)
            page.stopAll();
            return bg ? "На устройството вървеше друга програма — спряна е. Натисни „Назад“ и пак „към силата“."
                    : "Another program was running on the pad — it is stopped. Tap Back, then to the strength again.";
        }
        page.mine = false;
        page.live = false;
        page.libTab = false;
        page.program = padProgram(program);
        page.minutes = minutes;
        page.prefs.edit().putInt("program", page.program).putInt("minutes", minutes).putBoolean("mine", false)
                .putBoolean("live", false).putBoolean("lib", false).apply();
        BluetensLok lok = BluetensPrograms.build(page.program, minutes);
        timeline = FaceTimeline.of(lok, fullUs(program));
        begun = false;
        ended = false;
        // each pad its own file: the drainage's second cheek runs half a cycle later (a wave); else the same file
        int n = 0;
        for (BluetensScreen.Pad pad : page.pads) {
            if (pad.link.state != BluetensLink.READY || (single(program) && n >= 1) || n >= 2) {
                continue;
            }
            int prog = program == FaceProgram.DRAIN && n == 1 ? BluetensPrograms.FACE_DRAIN_B : page.program;
            BluetensLok l = prog == page.program ? lok : BluetensPrograms.build(prog, minutes);
            pad.link.shell.start(BluetensPrograms.fileName(prog, minutes), BluetensShell.ascii(l.build()));
            n++;
        }
        page.lengthMs = (long) lok.ms();
        page.finished = false;
        page.render();
        return null;
    }

    public boolean canStart() {
        return page.running && strength(0) > 0;
    }

    public void start(android.content.Context c) {
        begun = true;
    }

    public boolean active() {
        return page.running;
    }

    public boolean running() {
        return begun && page.running;
    }

    public boolean canPause() {
        return false;
    }

    public boolean paused() {
        return false;
    }

    public void pause() {
        // a Bluetens program has no pause: ■ ends it
    }

    public void stop() {
        page.stopAll();
    }

    public String stopLabel(boolean bg) {
        return bg ? "■  Край" : "■  End";
    }

    public boolean finished() {
        if (!ended && begun && !page.running && page.startedAt > 0) {
            ended = true;
            endedAt = System.currentTimeMillis();
        }
        return ended;
    }

    public double doneShare() {
        if (timeline == null || page.startedAt <= 0) {
            return 0;
        }
        long end = ended ? endedAt : System.currentTimeMillis();
        return Math.min(1.0, (end - page.startedAt) / (double) Math.max(1, timeline.totalMs()));
    }

    public FaceTimeline.State state(long now) {
        if (timeline == null || !page.running || page.startedAt <= 0) {
            FaceTimeline.State st = new FaceTimeline.State();
            st.totalMs = timeline != null ? timeline.totalMs() : 0;
            return st;
        }
        return timeline.at(now - page.startedAt);
    }

    public long[] phases() {
        long[] out = new long[3];
        if (timeline == null) {
            return out;
        }
        BluetensLok lok = BluetensPrograms.build(page.program, page.minutes);
        for (int i = 0; i < lok.sections.size(); i++) {
            int k = i == 0 ? 0 : i == lok.sections.size() - 1 ? 2 : 1;
            out[k] += Math.round(lok.sections.get(i).ms());
        }
        return out;
    }

    public void cancel() {
        if (page.running && !begun) {
            page.stopAll();
        }
    }
}
