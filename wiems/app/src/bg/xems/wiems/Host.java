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
}
