package com.isaigu.gymapp.wearable.bluetens;

import com.isaigu.gymapp.wearable.face.FaceArt;
import com.isaigu.gymapp.wearable.face.FaceDevice;
import com.isaigu.gymapp.wearable.face.FaceProgram;
import com.isaigu.gymapp.wearable.face.FaceTimeline;

/**
 * The Bluetens pads as a face device (docs/xems-face.md §9): up to three devices, each on its own site of the
 * procedure ({@link FaceProgram#bluetensSites}, in the order they connected), each with its own file and strength —
 * separate batteries, so nothing flows between them. The studio's picture follows every device's own file
 * ({@link FaceTimeline#of}). The page ({@link BluetensScreen.Page}) keeps the links; this only drives it.
 */
public final class BluetensFace implements FaceDevice {
    private final BluetensScreen.Page page;
    private final FaceTimeline[] timeline = new FaceTimeline[BluetensScreen.MAX_PADS];
    private int program = FaceProgram.LIFT;
    private boolean begun;
    private boolean ended;
    private long endedAt;

    BluetensFace(BluetensScreen.Page page) {
        this.page = page;
    }

    /** The file a device runs (BluetensPrograms.faceFile — one place, also exported for XBody). */
    static int padProgram(int program, int site, int devices) {
        return BluetensPrograms.faceFile(program, site, devices);
    }

    /** The widest pulse of a file (its "full" level on the picture). */
    static int fullUs(int file) {
        switch (file) {
            case BluetensPrograms.CHIN: return BluetensPrograms.CHIN_US;
            case BluetensPrograms.FACE_RELAX: return BluetensPrograms.RELAX_US;
            case BluetensPrograms.JAW: return BluetensPrograms.JAW_US;
            default: return BluetensPrograms.FACE_US;
        }
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

    private int ready() {
        int k = 0;
        for (BluetensScreen.Pad p : page.pads) {
            if (p.link.state == BluetensLink.READY) {
                k++;
            }
        }
        return k;
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

    private int[] sites() {
        return FaceProgram.get(program).bluetensSites();
    }

    public int channels() {
        return Math.min(sites().length, ready());
    }

    public int siteOf(int ch) {
        int[] s = sites();
        return s[Math.max(0, Math.min(s.length - 1, ch))];
    }

    public String socket(int ch) {
        return String.valueOf(ch + 1);
    }

    public String channelName(int ch, boolean bg) {
        return FaceProgram.siteName(siteOf(ch), bg);
    }

    public boolean hasMaster() {
        return false;
    }

    /** The studio picked another procedure (before the strength step). */
    public void select(int program) {
        this.program = program;
    }

    public String notReady(int program, boolean bg) {
        this.program = program;
        int k = ready();
        int need = sites().length;
        if (k == 0) {
            return bg ? "Включи устройство Bluetens — то се свързва само" : "Switch on a Bluetens pad — it connects by itself";
        }
        if (k < need) {
            return bg ? "Свързани " + k + " от " + need + " устройства: ще работят първите места. За всички — включи още."
                    : k + " of " + need + " pads connected: the first sites work. For all — switch on more.";
        }
        return null;
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

    public void ease() {
        for (int ch = 0; ch < channels(); ch++) {
            BluetensScreen.Pad p = pad(ch);
            if (p != null) {
                for (int k = 0; k < 3; k++) {
                    page.step(p, -1);
                }
            }
        }
    }

    public String prepare(int program, int minutes, boolean bg) {
        this.program = program;
        int n = channels();
        if (n == 0) {
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
        int first = padProgram(program, siteOf(0), n);
        page.program = first;
        page.minutes = minutes;
        page.prefs.edit().putInt("program", page.program).putInt("minutes", minutes).putBoolean("mine", false)
                .putBoolean("live", false).putBoolean("lib", false).apply();
        begun = false;
        ended = false;
        long longest = 0;
        // each device its own file, on its own site
        for (int ch = 0; ch < n; ch++) {
            BluetensScreen.Pad pad = pad(ch);
            int file = padProgram(program, siteOf(ch), n);
            BluetensLok l = BluetensPrograms.build(file, minutes);
            timeline[ch] = FaceTimeline.of(l, fullUs(file));
            longest = Math.max(longest, (long) l.ms());
            if (pad != null) {
                pad.link.shell.start(BluetensPrograms.fileName(file, minutes), BluetensShell.ascii(l.build()));
            }
        }
        for (int ch = n; ch < timeline.length; ch++) {
            timeline[ch] = null;
        }
        page.lengthMs = longest;
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
        if (timeline[0] == null || page.startedAt <= 0) {
            return 0;
        }
        long end = ended ? endedAt : System.currentTimeMillis();
        return Math.min(1.0, (end - page.startedAt) / (double) Math.max(1, timeline[0].totalMs()));
    }

    public FaceTimeline.State state(long now) {
        return stateOf(0, now);
    }

    private FaceTimeline.State stateOf(int ch, long now) {
        FaceTimeline t = ch >= 0 && ch < timeline.length ? timeline[ch] : null;
        if (t == null || !page.running || page.startedAt <= 0) {
            FaceTimeline.State st = new FaceTimeline.State();
            st.totalMs = t != null ? t.totalMs() : 0;
            return st;
        }
        return t.at(now - page.startedAt);
    }

    public float level(int ch, long now) {
        return strength(ch) > 0 ? stateOf(ch, now).level : 0f;
    }

    public long[] phases() {
        long[] out = new long[3];
        if (timeline[0] == null) {
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
