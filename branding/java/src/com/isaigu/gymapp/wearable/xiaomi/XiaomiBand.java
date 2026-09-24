package com.isaigu.gymapp.wearable.xiaomi;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.Context;

/**
 * Picks the link for the configured band.
 * - BLE (service FE95): Band 8, 8 Active, 9 Active, 7 and older protobuf bands.
 * - Bluetooth Classic SPP: Band 8 Pro, 9, 9 Pro, 10, 10 Pro, Redmi Watch 4/5 (and anything
 *   whose name we do not know but that the user forces to "SPP" in Settings).
 * Auto mode decides by the bonded device name; the user can force either one.
 */
public final class XiaomiBand {
    public static final int AUTO = 0;
    public static final int BLE = 1;
    public static final int SPP = 2;

    private static XiaomiBandLink current;

    private XiaomiBand() {}

    /** The link in use (BLE until something else was selected). */
    public static XiaomiBandLink link() {
        if (current == null) {
            current = XiaomiBandBleClient.getInstance();
        }
        return current;
    }

    /** Choose the link for this band; closes the other one if it was open. */
    public static XiaomiBandLink select(Context context, String mac, int mode) {
        boolean spp = mode == SPP || (mode == AUTO && usesClassic(bondedName(context, mac)));
        XiaomiBandLink next = spp ? (XiaomiBandLink) XiaomiBandSppClient.getInstance()
                : XiaomiBandBleClient.getInstance();
        XiaomiBandLink prev = link();
        if (prev != next) {
            try {
                if (!"idle".equals(prev.getLastState()) && !"disconnected".equals(prev.getLastState())) {
                    prev.disconnect();
                }
            } catch (Throwable ignored) {
            }
            prev.setListener(null);
        }
        current = next;
        return next;
    }

    public static String getBuildTag() {
        return link() instanceof XiaomiBandSppClient ? XiaomiBandSppClient.getBuildTag()
                : XiaomiBandBleClient.getBuildTag();
    }

    /** Models that talk protobuf over Bluetooth Classic (SPP) rather than BLE FE95. */
    public static boolean usesClassic(String name) {
        if (name == null) {
            return false;
        }
        String n = name.trim();
        if (n.matches("^Xiaomi Smart Band (9|10)( Pro)? [0-9A-Fa-f]{4}$")) {
            return true;
        }
        if (n.matches("^Xiaomi Smart Band 8 Pro [0-9A-Fa-f]{4}$")) {
            return true;
        }
        return n.matches("^Redmi Watch (4|5|5 Active|5 Lite) [0-9A-Fa-f]{4}$");
    }

    /** The name tells which radio to use (so no manual choice is needed). */
    public static boolean isKnownModel(String name) {
        if (name == null) {
            return false;
        }
        String n = name.trim();
        return usesClassic(n)
                || n.matches("^Xiaomi( Smart)? Band \\d+( Active| Pro)? [0-9A-Za-z]{4}$")
                || n.matches("^Redmi (Smart )?Band.*")
                || n.matches("^Mi Smart Band.*");
    }

    /** Short model label for the UI, e.g. "Band 10" (empty when unknown). */
    public static String modelLabel(String name) {
        if (name == null) {
            return "";
        }
        java.util.regex.Matcher m = java.util.regex.Pattern
                .compile("(Band \\d+( Pro| Active)?|Watch [^ ]+( Active| Lite)?)").matcher(name);
        return m.find() ? m.group(1) : "";
    }

    public static String bondedName(Context context, String mac) {
        try {
            BluetoothAdapter a = BluetoothAdapter.getDefaultAdapter();
            if (a == null || mac == null || mac.length() == 0) {
                return null;
            }
            BluetoothDevice d = a.getRemoteDevice(mac.trim().toUpperCase());
            return d.getName();
        } catch (Throwable t) {
            return null;
        }
    }

    /** 32 hex characters (spaces, ':' '-' and 0x allowed) → 16 bytes, else null. */
    static byte[] parseAuthKey(String hex) {
        if (hex == null) {
            return null;
        }
        String s = hex.replace(" ", "").replace(":", "").replace("-", "");
        if (s.startsWith("0x") || s.startsWith("0X")) {
            s = s.substring(2);
        }
        if (s.length() != 32) {
            return null;
        }
        byte[] out = new byte[16];
        for (int i = 0; i < 16; i++) {
            int hi = Character.digit(s.charAt(2 * i), 16);
            int lo = Character.digit(s.charAt(2 * i + 1), 16);
            if (hi < 0 || lo < 0) {
                return null;
            }
            out[i] = (byte) ((hi << 4) | lo);
        }
        return out;
    }
}
