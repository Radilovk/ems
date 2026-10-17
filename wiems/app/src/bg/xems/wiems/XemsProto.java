package bg.xems.wiems;

/**
 * XEMS suit frames — the XBody panel's xems:: (xbody/panel/core/xemsproto.cpp) in Java, read from the stock
 * com.isaigu.gymapp v0.50 (train.ble.BleDeviceCommend + train.utils.CommandUtil). Service FFF0 (write FFF2, notify
 * FFF1) or the Nordic UART. Frame: 0x53 | len = pdu + 4 | cmd | pdu | sum of all previous bytes (mod 256).
 */
final class XemsProto {
    private XemsProto() {}

    static final int HEAD = 0x53, CMD_SETTING = 1, CMD_RUN = 3, CMD_BATTERY = 5, RSP_BATTERY = 6, CMD_START = 0xF1,
            CMD_STOP = 0xF2, CHANNELS = 10;
    /** The suit's channel order (index = channel). */
    static final String[] NAMES = {"Гърди", "Корем", "Предно бедро", "Прасец", "Ръце", "Трапец", "Гръб", "Кръст",
            "Седалище", "Задно бедро"};

    static byte[] frame(int cmd, byte[] pdu) {
        byte[] f = new byte[pdu.length + 4];
        f[0] = (byte) HEAD;
        f[1] = (byte) (pdu.length + 4);
        f[2] = (byte) cmd;
        System.arraycopy(pdu, 0, f, 3, pdu.length);
        int sum = 0;
        for (int i = 0; i < f.length - 1; i++) sum += f[i] & 0xFF;
        f[f.length - 1] = (byte) sum;
        return f;
    }

    /** cmd 1: pdu[0] = 0, pdu[1..10] = channel % × strength / 100 (the vendor's float math), the suit's order. */
    static byte[] strengths(int[] pct, int strength) {
        byte[] p = new byte[11];
        for (int i = 0; i < CHANNELS; i++) p[i + 1] = (byte) (int) ((float) pct[i] / 100.0f * (float) strength);
        return frame(CMD_SETTING, p);
    }

    /**
     * cmd 3: seconds left (0 &lt; s ≤ 5 → 5), Hz, width / 50 µs, impulse s, pause s (1 when seconds left = 0), 0, 0,
     * massage cycle 0, output on (1) / off (0).
     */
    static byte[] run(int secondsLeft, int hz, int widthUs, int onS, int offS, boolean outputOn) {
        byte[] p = new byte[11];
        int wt = Math.max(0, secondsLeft);
        if (wt > 0 && wt <= 5) wt = 5;
        p[1] = (byte) (wt / 256);
        p[2] = (byte) (wt % 256);
        p[3] = (byte) hz;
        p[4] = (byte) (widthUs / 50);
        p[5] = (byte) onS;
        p[6] = (byte) (wt == 0 ? 1 : offS);
        p[10] = (byte) (outputOn ? 1 : 0);
        return frame(CMD_RUN, p);
    }

    static byte[] start() {
        return frame(CMD_START, new byte[1]);
    }

    static byte[] stop() {
        return frame(CMD_STOP, new byte[1]);
    }

    static byte[] battery() {
        return frame(CMD_BATTERY, new byte[0]);
    }

    /** Battery reply (cmd 6): pdu[0] = %, −1 if the notification is not one. */
    static int batteryPct(byte[] n) {
        if (n == null || n.length < 5 || (n[0] & 0xFF) != HEAD || n[2] != RSP_BATTERY) return -1;
        int v = n[3];
        return v < 0 ? -1 : Math.min(100, v);
    }
}
