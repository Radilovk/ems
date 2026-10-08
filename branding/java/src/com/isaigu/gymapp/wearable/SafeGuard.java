package com.isaigu.gymapp.wearable;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import com.isaigu.gymapp.ai.SafeLimits;
import com.isaigu.gymapp.BaseActivity;
import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.bean.TrainUser;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.wearable.vr.VrFatigue;
import com.isaigu.gymapp.wearable.vr.VrHapticEvent;
import com.isaigu.gymapp.wearable.vr.VrWire;
import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsLang;
import java.util.Calendar;
import java.util.WeakHashMap;

/**
 * The absolute limits (ai/SafeLimits) on a training row, right before the suit gets it: called by
 * train.model.SoftRamp at every phase start (TrainItem.startPulse) and at every ON-phase send (+ / −, ⚙, Master,
 * music, timer, maps, Auto, AI — all of them go through there). A value out of the limits is corrected on the row
 * itself (so the screen shows what the suit gets) and the trainer sees one short line why, at most every 8 s.
 */
public final class SafeGuard {
    private static final long TIP_GAP_MS = 8000L;
    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static final WeakHashMap<TrainItem, Long> TIPPED = new WeakHashMap<TrainItem, Long>();

    private SafeGuard() {}

    /** All four modes of the row's program (the running one is what is sent). */
    public static void enforce(TrainItem item) {
        try {
            TrainProgram p = item != null && item.data != null ? item.data.trainProgram : null;
            if (p == null) {
                return;
            }
            int age = age(item.data.trainUser);
            boolean free = free2(item);
            StringBuilder bg = new StringBuilder();
            StringBuilder en = new StringBuilder();
            ProgramDataBean run = p.matchProgram();
            if (run != null) {
                enforce(run, age, bg, en, free);              // the running mode speaks
            }
            ProgramDataBean[] all = {p.programDataBean, p.muscleTrainingProgramDataBean,
                p.aerobicTrainingProgramDataBean, p.massageModeProgramDataBean};
            for (ProgramDataBean b : all) {
                if (b != null && b != run) {
                    enforce(b, age, null, null, free);
                }
            }
            if (bg.length() > 0) {
                tip(item, XemsLang.tr("Граница за безопасност: ", "Safety limit: ")
                        + XemsLang.tr(bg.toString(), en.toString()).replace("\n", " · "));
            }
        } catch (Throwable t) {
            XemsGuard.report("SafeGuard.enforce", t);
        }
    }

    /** One bean (the one about to be sent); true when something changed. */
    public static boolean enforce(TrainItem item, ProgramDataBean b) {
        if (b == null) {
            return false;
        }
        try {
            StringBuilder bg = new StringBuilder();
            StringBuilder en = new StringBuilder();
            boolean changed = enforce(b, age(item != null && item.data != null ? item.data.trainUser : null), bg, en, free2(item));
            if (bg.length() > 0) {
                tip(item, XemsLang.tr("Граница за безопасност: ", "Safety limit: ")
                        + XemsLang.tr(bg.toString(), en.toString()).replace("\n", " · "));
            }
            return changed;
        } catch (Throwable t) {
            XemsGuard.report("SafeGuard.enforce(b)", t);
            return false;
        }
    }

    /**
     * Silent version for the engines that write a row themselves (ai/MapRunner): the limits with the row's own age
     * before the write, so the row (and the times taken from it) already hold what the suit gets.
     */
    public static boolean clamp(TrainItem item, ProgramDataBean b) {
        if (b == null) {
            return false;
        }
        try {
            return enforce(b, age(item != null && item.data != null ? item.data.trainUser : null), null, null, free2(item));
        } catch (Throwable t) {
            XemsGuard.report("SafeGuard.clamp", t);
            return false;
        }
    }

    /** A bodytech suit: the second impulse has no limits (owner, 1.1.353). */
    public static boolean free2(TrainItem item) {
        try {
            return item != null && item.data != null
                    && com.isaigu.gymapp.bodytech.BtBridge.isBodytechMac(item.data.macAddress);
        } catch (Throwable t) {
            return false;
        }
    }

    static boolean enforce(ProgramDataBean b, int age, StringBuilder bg, StringBuilder en, boolean free2) {
        // the second impulse's strength is absolute on the row: as a share of the main one for the limits
        int ps = b.strenth > 0 ? (int) Math.round(b.pauseStrenthPercent * 100.0 / b.strenth) : 0;
        int[] v = {b.hz, b.pulseWidth, b.pulseContinue, b.pulsePause, b.activePause ? 1 : 0, b.pauseHz, ps,
            b.inputRamp};
        int[] s = SafeLimits.apply(v, age, bg, en, free2);
        if (java.util.Arrays.equals(v, s)) {
            return false;
        }
        // the 2nd impulse's strength is not rewritten: a main impulse lowered for a while (a block, the pulse module)
        // would wipe it for good; the cap is applied at the pause send (pause())
        b.hz = s[SafeLimits.HZ];
        b.pulseWidth = s[SafeLimits.PW];
        b.pulseContinue = s[SafeLimits.ON];
        b.pulsePause = s[SafeLimits.OFF];
        b.activePause = s[SafeLimits.AP] == 1;
        b.pauseHz = s[SafeLimits.PHZ];
        b.inputRamp = s[SafeLimits.RAMP];
        return true;
    }

    /**
     * The pause phase's send (train.model.SoftRamp.sendPause, every pause send of every mode): {2nd impulse Hz,
     * strength} or null = plain pause. See {@link SafeLimits#pauseSend}.
     */
    public static int[] pause(ProgramDataBean b) {
        return pause(b, false);
    }

    public static int[] pause(ProgramDataBean b, boolean free2) {
        if (b == null) {
            return null;
        }
        return SafeLimits.pauseSend(b.strenth, b.hz, b.activePause, b.pauseHz, b.pauseStrenthPercent, free2);
    }

    // ---- VR haptics (wearable/vr): every game pulse passes here before the controller sees it -------------------

    private static final VrFatigue VR = new VrFatigue();
    private static boolean vrWasLimited;

    /** A game haptic (receiver thread): only recorded; what reaches the suit is decided in {@link #vrLevel}. */
    public static void vrPulse(VrHapticEvent e) {
        synchronized (VR) {
            VR.pulse(e.hand, e.amplitude, e.durationUs, e.isMinDuration(), e.isAppend(), e.eventTimeNs);
        }
    }

    public static void vrStop(int hand) {
        synchronized (VR) {
            if (hand == VrWire.HAND_BOTH) {
                VR.stopAll();
            } else {
                VR.stop(hand);
            }
        }
    }

    /**
     * The guarded VR level 0–100 (% of the trainer's set strength) at {@code nowNs}: fatigue τ = 30 s and the 6 s
     * continuous cap ({@link VrFatigue}). {@code item} = the driven row, null / not running → 0 (fatigue keeps
     * recovering). The trainer gets one line when the guard starts holding the output back.
     */
    public static int vrLevel(TrainItem item, long nowNs) {
        boolean open = item != null && item.data != null && item.data.start;
        float out;
        boolean limited;
        boolean locked;
        synchronized (VR) {
            out = VR.level(nowNs, open);
            locked = VR.isLocked();
            limited = locked || VR.isCapResting(nowNs);
        }
        if (limited && !vrWasLimited && item != null) {
            tip(item, locked
                    ? XemsLang.tr("VR: мускулите са уморени — пауза, докато се възстановят",
                            "VR: muscles tired — paused until they recover")
                    : XemsLang.tr("VR: 6 s непрекъснат импулс — 4 s почивка", "VR: 6 s continuous impulse — 4 s rest"));
        }
        vrWasLimited = limited;
        return Math.round(out * 100f);
    }

    /** F / F_max of the VR guard (1 = limit), for the screen and the log. */
    public static double vrLoad() {
        synchronized (VR) {
            return VR.load();
        }
    }

    /** The client's age, −1 when not known. */
    public static int age(TrainUser u) {
        if (u == null || u.birtyday == null) {
            return -1;
        }
        Calendar then = Calendar.getInstance();
        then.setTime(u.birtyday);
        Calendar now = Calendar.getInstance();
        int y = now.get(Calendar.YEAR) - then.get(Calendar.YEAR);
        if (now.get(Calendar.DAY_OF_YEAR) < then.get(Calendar.DAY_OF_YEAR)) {
            y--;
        }
        return y >= 10 && y <= 110 ? y : -1;
    }

    private static void tip(TrainItem item, String text) {
        long now = System.currentTimeMillis();
        Long last = TIPPED.get(item);
        if (last != null && now - last < TIP_GAP_MS) {
            return;
        }
        TIPPED.put(item, now);
        WearableBleDiagLog.log("safety", text);
        MAIN.post(new Tip(text));
    }

    static final class Tip implements Runnable {
        final String text;

        Tip(String text) {
            this.text = text;
        }

        @Override
        public void run() {
            try {
                Activity a = WearableSyncHelper.resolveActivityForPermissions();
                if (a instanceof BaseActivity) {
                    ((BaseActivity) a).showTips(text);
                }
            } catch (Throwable ignored) {
            }
        }
    }
}
