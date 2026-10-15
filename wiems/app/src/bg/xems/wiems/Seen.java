package bg.xems.wiems;

/** A WiEMS unit heard by the scan: address, advertised name, signal, when last heard. */
final class Seen {
    String mac, name;
    int rssi;
    long lastMs;
}
