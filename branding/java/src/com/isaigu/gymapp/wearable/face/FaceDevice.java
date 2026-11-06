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

    /** Strength channels: 1 on XEMS (both cheeks on the arms channel), one per pad on Bluetens. */
    int channels();

    /** The channel's side of the face: 0 = the person's right, 1 = the left, −1 = both (XEMS) / the chin. */
    int sideOf(int ch);

    String channelName(int ch, boolean bg);

    /** Ready to work (a pad connected, the suit linked); the reason otherwise (shown where the fix is). */
    String notReady(int program, boolean bg);

    int strength(int ch);

    int maxStrength();

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

    /** The moment now: phase, contraction, times. */
    FaceTimeline.State state(long now);

    /** The three phases' lengths, ms (wake-up, work, let-go) for the ring. */
    long[] phases();

    /** The studio closes before the run: stop whatever prepare started. */
    void cancel();
}
