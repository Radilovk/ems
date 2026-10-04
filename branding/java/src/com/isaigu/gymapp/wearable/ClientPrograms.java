package com.isaigu.gymapp.wearable;

import android.content.Context;
import android.content.SharedPreferences;

import com.alibaba.fastjson.JSON;
import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.bean.TrainUser;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.utils.BeanUtils;

/**
 * The client's own settings per program ("Иван · Test"): written by the row's diskette and by the row's
 * ⚙ save, loaded whenever that client comes into a slot with that program again (and by the "next client"
 * loader). All parameters of the four modes, the zones and the 2nd impulse — the main strength is not
 * restored (a training starts from the slot's own strength).
 */
public final class ClientPrograms {
    private static final String PREFS = "xems_client_programs";
    private static Context app;

    private ClientPrograms() {}

    static void init(Context c) {
        if (c != null) {
            app = c.getApplicationContext();
        }
    }

    static String key(long userId, String program) {
        return "u" + userId + "|" + (program != null ? program : "");
    }

    private static SharedPreferences prefs() {
        return app != null ? app.getSharedPreferences(PREFS, Context.MODE_PRIVATE) : null;
    }

    /** Saves the row's program for its client. False when there is no client or storage. */
    public static boolean save(TrainUser u, TrainProgram p) {
        try {
            SharedPreferences sp = prefs();
            if (sp == null || u == null || p == null || p.name == null) {
                return false;
            }
            sp.edit().putString(key(u.id, p.name), JSON.toJSONString(p)).apply();
            WearableBleDiagLog.log("manual", "saved '" + p.name + "' for user " + u.id);
            return true;
        } catch (Throwable t) {
            WearableBleDiagLog.log("manual", "client save: " + t);
            return false;
        }
    }

    public static TrainProgram load(long userId, String program) {
        try {
            SharedPreferences sp = prefs();
            String s = sp != null ? sp.getString(key(userId, program), null) : null;
            return s != null ? JSON.parseObject(s, TrainProgram.class) : null;
        } catch (Throwable t) {
            WearableBleDiagLog.log("manual", "client load: " + t);
            return null;
        }
    }

    public static boolean has(long userId, String program) {
        SharedPreferences sp = prefs();
        return sp != null && sp.contains(key(userId, program));
    }

    /** The slot's client is back on a program saved for them: their values on the row. */
    static boolean applyTo(TrainItem it, TrainUser u) {
        TrainProgram row = it != null ? it.getTrainProgram() : null;
        if (row == null || u == null) {
            return false;
        }
        TrainProgram saved = load(u.id, row.name);
        if (saved == null) {
            return false;
        }
        TrainProgram own = ProgramFit.own(it);
        for (int k = 0; k < ProgramFit.MODES; k++) {
            ProgramDataBean s = ProgramFit.bean(saved, k);
            ProgramDataBean r = ProgramFit.bean(own, k);
            if (s != null && r != null) {
                copy(s, r);
            }
        }
        try {
            if (!it.data.start) {
                it.workLength = own.matchProgram() != null ? own.matchProgram().workLength : it.workLength;
            }
            it.onParamsChange();
            it.xemsRefresh();
        } catch (Throwable ignored) {
        }
        WearableBleDiagLog.log("manual", "own settings '" + row.name + "' for user " + u.id);
        return true;
    }

    /** Everything but the main strength. */
    static void copy(ProgramDataBean s, ProgramDataBean r) {
        r.hz = s.hz;
        r.pulseWidth = s.pulseWidth;
        r.pulseContinue = s.pulseContinue;
        r.pulsePause = s.pulsePause;
        r.workLength = s.workLength;
        r.inputRamp = s.inputRamp;
        r.outputRamp = s.outputRamp;
        r.activePause = s.activePause;
        r.pauseHz = s.pauseHz;
        r.pauseStrenthPercent = s.pauseStrenthPercent;
        r.massageCycle = s.massageCycle;
        if (s.strenthBean != null && s.strenthBean.buwei != null) {
            if (r.strenthBean == null) {
                r.strenthBean = new com.isaigu.gymapp.bean.PartStrenthBean();
            }
            r.strenthBean.buwei = s.strenthBean.buwei.clone();
        }
    }

    /** NextPlan.program: the client's own saved program, when there is one, is the start. */
    static TrainProgram base(TrainUser u, String program) {
        TrainProgram p = u != null ? load(u.id, program) : null;
        return p != null ? (TrainProgram) BeanUtils.cloneObject(p) : null;
    }
}
