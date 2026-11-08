package com.isaigu.gymapp.wearable.face;

/**
 * What the face studio needs from a device (docs/xems-face.md): the XEMS suit through the automatic mode
 * ({@link FaceAuto}) or the Bluetens pads ({@code wearable/bluetens/BluetensFace}). The studio only asks and shows;
 * the device keeps its own limits (Auto's safety rules, the Bluetens program file).
 */
public interface FaceDevice {
    int XEMS = 0, BLUETENS = 1;

    int kind();

    /** The procedures this device can run ({@link FaceProgram} ids). */
    int[] programs();

    /** Who the course belongs to (prefs key) and the name shown ("" = none). */
    String courseKey();

    String clientName();

    /** The procedure's channels: XEMS — its sites on the face connector; Bluetens — the devices it uses (≤ 3). */
    int channels();

    /** The face site of a channel ({@link FaceArt} sites = sockets F1–F10). */
    int siteOf(int ch);

    /** The label on the channel's pads: "F3" (XEMS socket) / "2" (the second Bluetens). */
    String socket(int ch);

    String channelName(int ch, boolean bg);

    /** XEMS: one master strength (−1) and each site's share; Bluetens: each device its own strength. */
    boolean hasMaster();

    /** The procedure picked on the effect step (the channels follow it). */
    void select(int program);

    /** Ready to work (a pad connected, the suit linked); the reason otherwise (shown where the fix is). */
    String notReady(int program, boolean bg);

    /** The strength of a channel: XEMS — the site's share %, ch −1 = the master; Bluetens — the device's level. */
    int strength(int ch);

    int maxStrength();

    /** The pulse width now, µs (docs/xems-face.md §12): narrower = a more superficial feel. */
    int width();

    /** Choose the width (up to 150 µs) — the strength step, while the comfortable one is found. */
    void setWidth(int us);

    /** The narrowest width the device can give (XEMS 50 — the suit's unit; Bluetens 20). */
    int widthMin();

    /** One tap of the width stepper (XEMS 50 µs — the suit has no finer step; Bluetens 5 µs). */
    int widthStep();

    /** Battery %, −1 = unknown. */
    int battery(int ch);

    void step(int ch, int dir);

    /** Step 3: XEMS starts its calibration cycle, Bluetens starts the program (the wake-up). Error text or null. */
    String prepare(int program, int minutes, boolean bg);

    /** The strength is set: the work may begin. */
    boolean canStart();

    /** XEMS: the run starts (countdown); Bluetens: nothing (it already runs). */
    void start(android.content.Context c);

    /** Running (prepare / start until the end). */
    boolean active();

    /** In the timed run (after {@link #start}). */
    boolean running();

    boolean canPause();

    boolean paused();

    void pause();

    /** ■: XEMS goes to the let-go first, a second press ends; Bluetens ends. */
    void stop();

    /** The ■ button's words now. */
    String stopLabel(boolean bg);

    /** The run ended (time, ■, from the device). */
    boolean finished();

    /** Share of the planned work that was done, 0…1 (for the course: a session counts from 0.6). */
    double doneShare();

    /** The moment now: phase, contraction, times (the first channel). */
    FaceTimeline.State state(long now);

    /** How strongly a channel works now, 0…1 (its own timeline / the step's share of its site). */
    float level(int ch, long now);

    /** The three phases' lengths, ms (wake-up, work, let-go) for the ring. */
    long[] phases();

    /** The studio closes before the run: stop whatever prepare started. */
    void cancel();
}
