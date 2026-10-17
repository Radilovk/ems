package bg.xems.wiems;

/** A unit heard by the scan: address, advertised name, its kind ({@link Dev}), signal, when last heard. */
final class Seen {
    String mac, name;
    int rssi, kind;
    long lastMs;
}
