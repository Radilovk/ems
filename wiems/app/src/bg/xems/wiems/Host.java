package bg.xems.wiems;

import java.util.List;

/** What the screen ({@link XView}) reads and calls — MainActivity on the tablet, a fake in the offline render test. */
interface Host {
    long now();
    int viewKind();
    String note();
    boolean noteWarn();
    List<Seen> seen();
    Session session();
    String linkedName();
    String linkingMac();
    boolean age60();
    void askPermission();
    void askBluetooth();
    void connectTo(String mac);
    void startPause();
    void applyProgram(Session.Program p, boolean age60);
    void forget();
    /** The chosen program: −1 = the program screen (XBody's "Program selection"), else a Procs.MODE_*. */
    int mode();
    /** One of XBody's modes (Procs.MODE_MANUAL / MUSCLE / CARDIO / RELAX) → the training screen. */
    void chooseMode(int m);
    /** A passive procedure at a length (minutes; 0 = its own) → the training screen. */
    void chooseProc(String id, int minutes);
    /** Back to the program screen (only while nothing runs). */
    void backToModes();
    /** A training waits for its unit to come back (the link dropped). */
    boolean held();
    /** Send the unit trace (long press on the logo). */
    void shareLog();
    /** The suit standard in the session sheet = {@link Channels#suit} (false XBody, true XEMS); not while running. */
    boolean xemsWiring();
    void setXemsWiring(boolean xems);
    /** The figures: female (default) or male — the client's, chosen in the session's settings. */
    boolean female();
    void setFemale(boolean f);
    /** Which unit channel drives which body part, per suit standard (the hidden service mode sets it). */
    Channels channels();
    /** The service mode changed the suit or a channel: save it, the running unit gets it at once. */
    void channelsChanged();
    /** An asset of the APK (null: none). */
    java.io.InputStream openAsset(String name);
}
