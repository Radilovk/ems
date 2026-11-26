package com.isaigu.gymapp.wearable.vr;

import com.isaigu.gymapp.widget.XemsLang;
import com.isaigu.gymapp.wearable.mastogo.MastogoScreen;

/**
 * Zone hits (the bHaptics listener on the headset → VrTelemetryReceiver) → what the player's body should feel:
 * (1) the suit: the channels of {@link VrZoneMap} contract for the hit's length — the whole-suit level runs through
 * {@link VrHapticRouter#PULSES} like every VR haptic (so the row's program, the ceiling and the absolute limits all
 * apply) while {@link VrDrive} lets only those channels through ({@link #focusAt}); (2) the Mastogo unit (on the
 * shoulder) gives its УДАР for every hit taken — test mode, owner 2026-11-25: "every single hit to us".
 * Receiver thread writes, the drive's main-thread tick reads. Pure state + two calls out.
 */
public final class VrZoneRouter implements VrZoneSink {
    /** The Mastogo link takes ~4 beats a second (docs/xems-mastogo.md): hits closer than this share one. */
    static final long MASTOGO_GAP_NS = 250000000L;

    private static final VrZoneFocus FOCUS = new VrZoneFocus(VrSettings.CHANNELS);
    /** Hits taken since the link came up (VrPanel / the log read them). */
    static volatile int taken;
    private static volatile long lastMastogoNs;
    /** For the panels: every zone hit that arrived, the last one in words, when. */
    static volatile int received;
    static volatile long lastNs;
    static volatile String lastText = "";
    /** Headset → tablet (clock-synced) and tablet → the Mastogo write, ms; −1 = unknown. */
    static volatile long wifiMs = -1;
    static volatile long unitMs = -1;

    static String regionName(int r) {
        switch (r) {
            case VrWire.ZR_HAND_L: return XemsLang.tr("лява ръка (твой удар)", "left hand (your punch)");
            case VrWire.ZR_HAND_R: return XemsLang.tr("дясна ръка (твой удар)", "right hand (your punch)");
            case VrWire.ZR_VEST_FRONT: return XemsLang.tr("тяло отпред", "body front");
            case VrWire.ZR_VEST_BACK: return XemsLang.tr("гръб", "back");
            case VrWire.ZR_HEAD: return XemsLang.tr("глава", "head");
            case VrWire.ZR_FOREARM_L: return XemsLang.tr("лява предмишница", "left forearm");
            case VrWire.ZR_FOREARM_R: return XemsLang.tr("дясна предмишница", "right forearm");
            default: return XemsLang.tr("друго", "other");
        }
    }

    static String channelNames(int mask) {
        if (mask == 0) {
            return XemsLang.tr("без канал", "no channel");
        }
        String[] n = {XemsLang.tr("гърди", "chest"), XemsLang.tr("корем", "abs"), XemsLang.tr("пред. бедро", "front thigh"),
            XemsLang.tr("прасец", "calf"), XemsLang.tr("ръце", "arms"), XemsLang.tr("трапец", "traps"),
            XemsLang.tr("гръб", "back"), XemsLang.tr("кръст", "lower back"), XemsLang.tr("седалище", "glutes"),
            XemsLang.tr("зад. бедро", "back thigh")};
        StringBuilder b = new StringBuilder();
        for (int c = 0; c < n.length; c++) {
            if ((mask & (1 << c)) != 0) {
                b.append(b.length() > 0 ? " + " : "").append(n[c]);
            }
        }
        return b.toString();
    }

    /** One line for the panels: is the headset there, what arrived, what it did. */
    public static String status() {
        String link = VrDrive.isLinked()
                ? XemsLang.tr("Шлем: свързан", "Headset: linked")
                : VrBridge.isListening()
                        ? XemsLang.tr("Шлем: няма връзка (слушателят още не ме е намерил)", "Headset: not linked yet")
                        : XemsLang.tr("Шлем: не слушам (отвори тренировъчен или Mastogo екран)", "Headset: not listening");
        String last = lastText.isEmpty() ? XemsLang.tr("още няма удар", "no hit yet")
                : lastText + XemsLang.tr(" · преди ", " · ") + Math.max(0, (System.nanoTime() - lastNs) / 1000000000L) + " s";
        return link + XemsLang.tr(" · удари по теб: ", " · hits taken: ") + taken + XemsLang.tr(" (всичко: ", " (all: ")
                + received + ")\n" + last
                + (wifiMs >= 0 ? XemsLang.tr(" · Wi-Fi ", " · Wi-Fi ") + wifiMs + " ms" : "")
                + (unitMs >= 0 ? XemsLang.tr(" · до Mastogo ", " · to Mastogo ") + unitMs + " ms" : "");
    }

    public static void setUnitMs(long ms) {
        unitMs = ms;
    }

    /** A hit as the game would send it (the panels' test button): lower belly, so abs + Mastogo. */
    public static void test() {
        int[] lv = new int[20];
        lv[13] = 100;
        lv[16] = 100;
        lv[17] = 100;
        new VrZoneRouter().onVrZoneHit(new VrZoneHit(VrWire.ZR_VEST_FRONT, 100, lv, System.nanoTime(), 0));
    }

    @Override
    public void onVrZoneHit(VrZoneHit h) {
        received++;
        wifiMs = h.latencyNs >= 0 ? h.latencyNs / 1000000L : -1;
        if (!VrZoneMap.taken(h.region)) {
            lastText = regionName(h.region);
            lastNs = System.nanoTime();
            return;
        }
        int level = h.maxLevel();
        if (level <= 0) {
            return;
        }
        taken++;
        long now = System.nanoTime();
        int mask = VrZoneMap.channels(h.region, h.levels);
        lastText = regionName(h.region) + " → " + channelNames(mask) + " + Mastogo";
        lastNs = now;
        if (mask != 0) {
            long dur = Math.max(VrPulses.MIN_PULSE_NS, h.durationMs * 1000000L);
            FOCUS.add(mask, now + dur);
            VrHapticRouter.PULSES.pulse(VrWire.HAND_BOTH, level / 100f, dur / 1000L, false, false, now);
        }
        if (now - lastMastogoNs >= MASTOGO_GAP_NS) {
            lastMastogoNs = now;
            MastogoScreen.vrHit(now);
        }
    }

    /** Channels with a zone hit still running at {@code nowNs} (bit = partsDisabled index); 0 = none. */
    static int focusAt(long nowNs) {
        return FOCUS.at(nowNs);
    }

    static void reset() {
        FOCUS.clear();
        taken = 0;
        received = 0;
    }
}
