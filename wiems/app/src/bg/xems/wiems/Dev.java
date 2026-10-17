package bg.xems.wiems;

/**
 * The kinds of unit the app trains (owner, v1.15: "WiEMS, XEMS and bodytech in the same light app"): which one an
 * advertisement is, and its names on the screen. The same rules as the XBody panel's suitKind
 * (xbody/panel/core/suit.cpp): the advertised service first, else the name the stock apps match. Pure Java.
 */
final class Dev {
    private Dev() {}

    static final int WIEMS = 0, XEMS = 1, BODYTECH = 2, KINDS = 3;
    /** On the list tiles and in the header. */
    static final String[] SHORT = {"WiEMS", "XEMS", "bodytech"};
    /** In the notes ("Връзката с … прекъсна"). */
    static final String[] NAME = {"WiEMS", "XEMS костюма", "bodytech костюма"};

    /** XEMS suit: service FFF0 (write FFF2, notify FFF1) or the Nordic UART ("nord" suits) — xemsproto.h. */
    static final String XEMS_SVC = "0000fff0-0000-1000-8000-00805f9b34fb";
    static final String XEMS_WRITE = "0000fff2-0000-1000-8000-00805f9b34fb";
    static final String XEMS_NOTIFY = "0000fff1-0000-1000-8000-00805f9b34fb";
    static final String NUS_SVC = "6e400001-b5a3-f393-e0a9-e50e24dcca9e";
    static final String NUS_RX = "6e400002-b5a3-f393-e0a9-e50e24dcca9e";
    static final String NUS_TX = "6e400003-b5a3-f393-e0a9-e50e24dcca9e";
    /** bodytech (EMSFIT 5.1): service FE50, FE51 write with response + notify (bodytech/PROTOCOL.md). */
    static final String BT_SVC = "0000fe50-0000-1000-8000-00805f9b34fb";
    static final String BT_CHR = "0000fe51-0000-1000-8000-00805f9b34fb";

    /**
     * Which unit: svc = the advertised service ("WIEMS", "FE50", "FFF0", "NUS" or null), else by name; −1 = none of
     * ours (the list shows only these).
     */
    static int kindOf(String svc, String name) {
        if ("WIEMS".equals(svc)) return WIEMS;
        if ("FE50".equals(svc)) return BODYTECH;
        if ("FFF0".equals(svc) || "NUS".equals(svc)) return XEMS;
        if (name == null) return -1;
        String u = name.toUpperCase();
        if (u.startsWith("WIEMS")) return WIEMS;                 // "WIEMS - EMS Device" (before the EMS name rule)
        if (u.startsWith("TZLJ") || u.startsWith("ADT")) return BODYTECH;
        int dash = u.indexOf('-');
        if (u.length() > 4 && u.startsWith("EMS") && Character.isDigit(u.charAt(3)) && dash > 3) return BODYTECH;   // EMS08-05629
        // the stock XEMS app's name filters (BleDeviceManager configs): nord, nbee, ems-ble, xems, NB-, ems
        if (u.contains("NORD") || u.contains("NBEE") || u.contains("EMS") || u.startsWith("NB-")) return XEMS;
        return -1;
    }
}
