package com.xems.bhspy;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * What the look-alike Player answers, so the game believes a vest (and its arms and head) is connected and keeps
 * sending: devices as the SDK's own SimpleBhapticsDevice JSON, request ids counting up, "registered" only after the
 * game registered the event itself (so it hands us the event's pattern). Pure Java.
 */
final class Responder {
    private final Set<String> registered = new HashSet<String>();
    private int requestId = 1000;

    /** position ints as in SimpleBhapticsDevice.positionToString: 0 Vest, 1/2 forearms, 3 head, 4/5 hands. */
    static List<String> devices() {
        String[] names = {"Tactsuit_X40", "Tactosy_arms_L", "Tactosy_arms_R", "Tactal_Visor", "Tactosy_hands_L", "Tactosy_hands_R"};
        int[] pos = {0, 1, 2, 3, 4, 5};
        List<String> l = new ArrayList<String>();
        for (int i = 0; i < names.length; i++) {
            l.add("{\"deviceName\":\"" + names[i] + "\",\"address\":\"00:11:22:33:44:5" + i + "\",\"position\":" + pos[i]
                + ",\"connected\":true,\"paired\":true,\"enable\":true,\"battery\":100,\"audioJackIn\":false}");
        }
        return l;
    }

    synchronized Object answer(int index, Object[] a) {
        String n = Sig.name(index);
        if (n.equals("registerHapticEvent") || n.equals("registerReflectHapticEvent")) {
            registered.add(a[0] + "/" + a[1]);
        }
        if (n.equals("isRegistered")) return Boolean.valueOf(registered.contains(a[0] + "/" + a[1]));
        if (n.equals("getDeviceList")) return devices();
        if (n.equals("getEventList")) {
            List<String> l = new ArrayList<String>();
            String p = a[0] + "/";
            for (String k : registered) if (k.startsWith(p)) l.add(k.substring(p.length()));
            return l;
        }
        switch (Sig.ret(index)) {
            case 'Z': return Boolean.valueOf(n.equals("stop") || n.equals("stopAll") || n.equals("stopByEventId"));
            case 'I': return Integer.valueOf(++requestId);
            case 'L': return new ArrayList<String>();
            case 'b': return new byte[0];
            default: return null;
        }
    }

    static String show(Object r) {
        if (r == null) return "";
        if (r instanceof byte[]) return "bytes[" + ((byte[]) r).length + "]";
        if (r instanceof List) return "list[" + ((List<?>) r).size() + "]";
        return String.valueOf(r);
    }
}
