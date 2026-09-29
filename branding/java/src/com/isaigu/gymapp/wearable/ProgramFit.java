package com.isaigu.gymapp.wearable;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import com.isaigu.gymapp.BaseActivity;
import com.isaigu.gymapp.ai.AiModel;
import com.isaigu.gymapp.ai.AiPersonal;
import com.isaigu.gymapp.ai.AiProfile;
import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.bean.TrainUser;
import com.isaigu.gymapp.bean.TrainUserProgramDataWrapper;
import com.isaigu.gymapp.dialog.ActivePauseStorage;
import com.isaigu.gymapp.mgr.DataMgr;
import com.isaigu.gymapp.message.MessageDispatcher;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.utils.BeanUtils;
import com.isaigu.gymapp.utils.FileUtils;
import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsLang;
import com.isaigu.gymapp.widget.XemsUi;

import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/**
 * Personalisation of the manual mode against the SAVED program ("Test" or any other):
 * <ul>
 *   <li>The saved program is the base. A new client in a slot gets the base plus their own corrections
 *       (fitness, age, goal, focus zones, state — {@link #personalize}); returning clients keep their own
 *       settings (ManualDefaults / NextPlan decide who is new).</li>
 *   <li>A parameter the trainer changes by hand is the client's reference from then on: it is never
 *       overwritten automatically, the same offset moves that parameter in the client's other tetanic
 *       programs (pulse width, pause, soft rise / fall, work time) and a new impulse time keeps the
 *       impulse : pause ratio (the pause follows unless it was set by hand too).</li>
 *   <li>The diskette writes the row into its saved program at once — without the client's corrections,
 *       hand-set values as they are — and the other slots on that program recalibrate to it live.
 *       Holding it opens the stock "save as" with the same values.</li>
 *   <li>⚙ Master is the base for everyone: saved into the program and personalised per slot.</li>
 *   <li>Off (switch in the parameters dialog): nothing is corrected or recalibrated — all manual.</li>
 * </ul>
 * The live strength is never saved or changed here.
 */
public final class ProgramFit {
    static final int HZ = 0, W = 1, ON = 2, OFF = 3, WORK = 4, RIN = 5, ROUT = 6, N = 7, ZONES = 7;
    static final int MODES = 4;
    private static final String PREFS = "xems_program_fit";
    private static final String KEY_ON = "personal";
    private static final String FILE_PROGRAMS = "file_name_train_data";
    private static final String SWITCH_TAG = "xems_program_fit_switch";
    private static Handler main;

    /** What was done to one slot's client. */
    static final class Fit {
        long userId;
        String program;
        boolean hasBase;
        /** The program object the values below belong to (another one = not a hand change). */
        TrainProgram ref;
        final int[][] base = new int[MODES][N];
        final int[][] fit = new int[MODES][N];
        final int[][] last = new int[MODES][N];
        final boolean[][] manual = new boolean[MODES][N + 1];
        final int[][] zoneBase = new int[MODES][];
        final int[][] zoneFit = new int[MODES][];
    }

    private static final Map<TrainItem, Fit> FITS = new WeakHashMap<TrainItem, Fit>();
    private static volatile List<TrainItem> items;
    private static Context app;

    private ProgramFit() {}

    // ------------------------------------------------------------------ switch

    public static boolean enabled(Context c) {
        Context ctx = c != null ? c : app;
        if (ctx == null) {
            return true;
        }
        try {
            return prefs(ctx).getBoolean(KEY_ON, true);
        } catch (Throwable t) {
            return true;
        }
    }

    static void setEnabled(Context c, boolean on) {
        try {
            prefs(c).edit().putBoolean(KEY_ON, on).apply();
            WearableBleDiagLog.log("manual", "personalisation " + (on ? "on" : "off"));
        } catch (Throwable ignored) {
        }
    }

    private static SharedPreferences prefs(Context c) {
        return c.getApplicationContext().getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    // ------------------------------------------------------------------ values

    static ProgramDataBean bean(TrainProgram p, int k) {
        if (p == null) {
            return null;
        }
        return k == 1 ? p.muscleTrainingProgramDataBean
                : k == 2 ? p.aerobicTrainingProgramDataBean
                : k == 3 ? p.massageModeProgramDataBean : p.programDataBean;
    }

    static int get(ProgramDataBean b, int p) {
        switch (p) {
            case HZ: return b.hz;
            case W: return b.pulseWidth;
            case ON: return b.pulseContinue;
            case OFF: return b.pulsePause;
            case WORK: return b.workLength;
            case RIN: return b.inputRamp;
            default: return b.outputRamp;
        }
    }

    static void set(ProgramDataBean b, int p, int v) {
        switch (p) {
            case HZ: b.hz = clamp(v, 1, 120); break;
            case W: b.pulseWidth = clamp(v, 50, 400); break;
            case ON: b.pulseContinue = Math.max(0, v); break;
            case OFF: b.pulsePause = Math.max(0, v); break;
            case WORK: b.workLength = Math.max(60, v); break;
            case RIN: b.inputRamp = clamp(v, 0, 3000); break;
            default: b.outputRamp = clamp(v, 0, 3000); break;
        }
    }

    static int[] values(ProgramDataBean b) {
        int[] v = new int[N];
        for (int p = 0; p < N; p++) {
            v[p] = get(b, p);
        }
        return v;
    }

    static int[] zones(ProgramDataBean b) {
        return b != null && b.strenthBean != null && b.strenthBean.buwei != null ? b.strenthBean.buwei.clone() : null;
    }

    static int clamp(int v, int lo, int hi) {
        return Math.max(lo, Math.min(hi, v));
    }

    // ------------------------------------------------------------------ the corrections

    /**
     * The client's corrections on a base: {hz, µs, on s, off s, work s, rise ms, fall ms} per program
     * (main, muscle, cardio, massage). Offsets, so a changed base moves the result with it.
     */
    static int[][] personalize(int[][] base, AiProfile p) {
        int[][] v = new int[MODES][];
        for (int k = 0; k < MODES; k++) {
            v[k] = base[k] != null ? base[k].clone() : null;
        }
        if (p == null) {
            return v;
        }
        AiPersonal.Effect e = p.personal();
        boolean low = p.fitness == AiModel.Fitness.LOW;
        boolean high = p.fitness == AiModel.Fitness.HIGH;
        boolean older = p.age != null && p.age >= 60;
        for (int k = 0; k < 3; k++) {                     // the tetanic programs
            if (v[k] == null) {
                continue;
            }
            if (low) {
                v[k][W] -= 50;
                v[k][OFF] += k < 2 ? 1 : 0;
            }
            if (older) {
                v[k][W] -= 25;
                v[k][OFF] += k < 2 ? 1 : 0;
            }
            v[k][OFF] += e.offS;
            if (e.rampUpMs > 0) {
                int r = Math.min(1500, ((v[k][RIN] + e.rampUpMs + 499) / 500) * 500);
                v[k][RIN] = Math.max(v[k][RIN], r);
                v[k][ROUT] = Math.max(v[k][ROUT], r);
            }
        }
        if (high && !older) {
            if (v[0] != null) {
                v[0][ON] += 2;                             // main: longer sets
            }
            if (v[1] != null) {
                v[1][W] += 50;                             // muscle: deeper impulse
            }
        }
        if (e.rampUpMs > 0 && v[3] != null) {
            v[3][RIN] = Math.max(v[3][RIN], 500);          // massage: a soft onset for the sensitive
            v[3][ROUT] = Math.max(v[3][ROUT], 500);
        }
        if (p.goal == AiModel.Goal.FAT) {
            add(v, 0, WORK, 300);
            add(v, 2, WORK, 300);
        } else if (p.goal == AiModel.Goal.DRAIN) {
            if (v[3] != null) {
                v[3][HZ] = Math.max(1, Math.round(v[3][HZ] * 0.6f));
            }
            add(v, 3, WORK, 300);
        } else if (p.goal == AiModel.Goal.MASSAGE) {
            add(v, 3, WORK, 300);
        }
        for (int k = 0; k < MODES; k++) {
            if (v[k] != null) {
                v[k][W] = clamp(v[k][W], 50, 400);
                v[k][OFF] = Math.max(0, v[k][OFF]);
            }
        }
        return v;
    }

    private static void add(int[][] v, int k, int p, int d) {
        if (v[k] != null) {
            v[k][p] += d;
        }
    }

    // ------------------------------------------------------------------ a new client in a slot

    /** ManualDefaults: a client without own settings came into the slot (not started, manual mode). */
    static void applyTo(Context c, TrainItem it, TrainUser u) {
        if (it == null || u == null || it.data == null) {
            return;
        }
        app = c != null ? c.getApplicationContext() : app;
        TrainProgram row = own(it);
        if (row == null) {
            return;
        }
        TrainProgram stored = stored(row.name);
        TrainProgram base = stored != null ? stored : row;
        Fit f = new Fit();
        f.userId = u.id;
        f.program = row.name;
        f.hasBase = true;
        f.ref = row;
        boolean on = enabled(c);
        AiProfile prof = on ? AiProfile.of(u) : null;
        int[][] bv = new int[MODES][];
        for (int k = 0; k < MODES; k++) {
            ProgramDataBean b = bean(base, k);
            bv[k] = b != null ? values(b) : null;
        }
        int[][] pv = personalize(bv, prof);
        AiPersonal.Effect e = prof != null ? prof.personal() : null;
        for (int k = 0; k < MODES; k++) {
            ProgramDataBean rb = bean(row, k);
            if (rb == null || bv[k] == null) {
                continue;
            }
            for (int p = 0; p < N; p++) {
                set(rb, p, pv[k][p]);
            }
            f.base[k] = bv[k];
            f.fit[k] = values(rb);
            f.last[k] = values(rb);
            int[] zb = zones(bean(base, k));
            if (zb != null && rb.strenthBean != null && rb.strenthBean.buwei != null) {
                int[] z = e != null && !e.isEmpty() ? e.apply(zb) : zb;
                for (int i = 0; i < Math.min(z.length, rb.strenthBean.buwei.length); i++) {
                    rb.strenthBean.buwei[i] = z[i];
                }
                f.zoneBase[k] = zb;
                f.zoneFit[k] = rb.strenthBean.buwei.clone();
            }
        }
        synchronized (FITS) {
            FITS.put(it, f);
        }
        refresh(it, true);
        WearableBleDiagLog.log("manual", "base '" + row.name + "' for user " + u.id
                + (prof != null ? " personalised (" + prof.fitness + ", " + prof.age + ", " + prof.goal + ")"
                : " as saved (personalisation off)"));
    }

    /** The row's own copy of its program (never the saved one itself). */
    static TrainProgram own(TrainItem it) {
        TrainProgram row = it.data.trainProgram;
        if (row == null) {
            return null;
        }
        List<TrainProgram> list = programs();
        if (list != null) {
            for (int i = 0; i < list.size(); i++) {
                if (list.get(i) == row) {
                    TrainProgram copy = (TrainProgram) BeanUtils.cloneObject(row);
                    if (copy != null) {
                        it.data.trainProgram = copy;
                        return copy;
                    }
                }
            }
        }
        return row;
    }

    static List<TrainProgram> programs() {
        DataMgr dm = DataMgr.getInstance();
        return dm != null ? dm.trainData : null;
    }

    static TrainProgram stored(String name) {
        List<TrainProgram> list = programs();
        if (name == null || list == null) {
            return null;
        }
        for (int i = 0; i < list.size(); i++) {
            TrainProgram p = list.get(i);
            if (p != null && name.equals(p.name)) {
                return p;
            }
        }
        return null;
    }

    /** The slot's fit for its current client; a blank one (no base) when there is none yet. */
    static Fit fitFor(TrainItem it, boolean create) {
        TrainUser u = it != null && it.data != null ? it.data.trainUser : null;
        synchronized (FITS) {
            Fit f = FITS.get(it);
            if (f != null && (u == null || f.userId != u.id)) {
                FITS.remove(it);
                f = null;
            }
            if (f == null && create && u != null && it.getTrainProgram() != null) {
                f = new Fit();
                f.userId = u.id;
                f.program = it.getTrainProgram().name;
                f.ref = it.getTrainProgram();
                for (int k = 0; k < MODES; k++) {
                    ProgramDataBean b = bean(it.getTrainProgram(), k);
                    if (b != null) {
                        f.base[k] = values(b);
                        f.fit[k] = values(b);
                        f.last[k] = values(b);
                    }
                }
                FITS.put(it, f);
            }
            return f;
        }
    }

    // ------------------------------------------------------------------ hand changes

    /** ProgramLive: the row's ⚙ saved new parameters for the same client (manual mode). */
    public static void onEdit(TrainItem it, TrainProgram was, TrainProgram now) {
        try {
            Fit f = fitFor(it, true);
            if (f == null) {
                return;
            }
            boolean on = enabled(null);
            for (int k = 0; k < MODES; k++) {
                ProgramDataBean a = bean(was, k);
                ProgramDataBean b = bean(now, k);
                if (a == null || b == null) {
                    continue;
                }
                int[] before = values(a);
                boolean[] changed = new boolean[N];
                for (int p = 0; p < N; p++) {
                    changed[p] = before[p] != get(b, p);
                }
                int[] za = zones(a);
                int[] zb = zones(b);
                if (za != null && zb != null && !java.util.Arrays.equals(za, zb)) {
                    f.manual[k][ZONES] = true;
                }
                handChanged(f, now, k, before, changed, on);
            }
            for (int k = 0; k < MODES; k++) {
                ProgramDataBean b = bean(now, k);
                if (b != null) {
                    f.last[k] = values(b);
                }
            }
            f.ref = now;
        } catch (Throwable t) {
            XemsGuard.report("ProgramFit.onEdit", t);
        }
    }

    /**
     * Parameters of program k changed by hand: they are the reference from now on; when personalisation
     * is on the others follow — the pause keeps the impulse : pause ratio, and the same offset from the
     * base moves the parameter in the client's other tetanic programs. Returns whether anything moved.
     */
    static boolean handChanged(Fit f, TrainProgram prog, int k, int[] before, boolean[] changed, boolean on) {
        ProgramDataBean b = bean(prog, k);
        boolean moved = false;
        for (int p = 0; p < N; p++) {
            if (changed[p]) {
                f.manual[k][p] = true;
            }
        }
        if (!on) {
            return false;
        }
        if (changed[ON] && !changed[OFF] && !f.manual[k][OFF] && before[ON] > 0) {
            int off = Math.max(0, Math.round(before[OFF] * (float) b.pulseContinue / before[ON]));
            if (off != b.pulsePause) {
                b.pulsePause = off;
                moved = true;
            }
        }
        if (!f.hasBase || k > 2) {
            return moved;
        }
        int[] carry = {W, OFF, RIN, ROUT, WORK};
        for (int i = 0; i < carry.length; i++) {
            int p = carry[i];
            if (!changed[p] || f.base[k] == null) {
                continue;
            }
            int offset = get(b, p) - f.base[k][p];
            for (int o = 0; o < 3; o++) {
                ProgramDataBean ob = bean(prog, o);
                if (o == k || ob == null || f.base[o] == null || f.manual[o][p]) {
                    continue;
                }
                int want = f.base[o][p] + offset;
                if (get(ob, p) != want) {
                    set(ob, p, want);
                    f.fit[o][p] = get(ob, p);
                    moved = true;
                }
            }
        }
        return moved;
    }

    /** SessionRecorder, every second: the row's own impulse / pause steppers are hand changes too. */
    static void tick(Context c, List<TrainItem> list) {
        items = list;
        if (c != null) {
            app = c.getApplicationContext();
        }
        if (list == null) {
            return;
        }
        boolean assisted = ManualDefaults.assisted() || blockArmed();
        boolean on = enabled(c);
        for (int i = 0; i < list.size(); i++) {
            TrainItem it = list.get(i);
            if (it == null || it.isEmpty() || it.getTrainProgram() == null) {
                continue;
            }
            Fit f = fitFor(it, true);
            if (f == null) {
                continue;
            }
            try {
                if (f.ref != it.getTrainProgram()) {         // another program came in: a new baseline
                    f.ref = it.getTrainProgram();
                    for (int k = 0; k < MODES; k++) {
                        ProgramDataBean b = bean(f.ref, k);
                        f.last[k] = b != null ? values(b) : null;
                    }
                    continue;
                }
                boolean moved = false;
                for (int k = 0; k < MODES; k++) {
                    ProgramDataBean b = bean(it.getTrainProgram(), k);
                    if (b == null || f.last[k] == null) {
                        continue;
                    }
                    int[] before = f.last[k];
                    if (!assisted && (before[ON] != b.pulseContinue || before[OFF] != b.pulsePause)) {
                        boolean[] changed = new boolean[N];
                        changed[ON] = before[ON] != b.pulseContinue;
                        changed[OFF] = before[OFF] != b.pulsePause;
                        moved |= handChanged(f, it.getTrainProgram(), k, before, changed, on);
                    }
                }
                for (int k = 0; k < MODES; k++) {
                    ProgramDataBean b = bean(it.getTrainProgram(), k);
                    if (b != null) {
                        f.last[k] = values(b);
                    }
                }
                if (moved) {
                    refresh(it, true);
                }
            } catch (Throwable t) {
                XemsGuard.report("ProgramFit.tick", t);
            }
        }
    }

    private static boolean blockArmed() {
        try {
            return com.isaigu.gymapp.dialog.BlockProgramRunner.isArmed();
        } catch (Throwable t) {
            return false;
        }
    }

    // ------------------------------------------------------------------ ⚙ Master

    /** ProgramLive: ⚙ Master put new parameters on this slot — the new base for everyone. */
    public static void onMaster(TrainItem it, TrainProgram was, TrainProgram now) {
        try {
            TrainProgram raw = (TrainProgram) BeanUtils.cloneObject(now);
            if (raw != null && now.name != null) {
                saveBase(raw, now.name);
            }
            TrainUser u = it != null && it.data != null ? it.data.trainUser : null;
            if (u == null) {
                return;
            }
            boolean on = enabled(null);
            AiProfile prof = on ? AiProfile.of(u) : null;
            Fit f = new Fit();
            f.userId = u.id;
            f.program = now.name;
            f.hasBase = true;
            f.ref = now;
            int[][] bv = new int[MODES][];
            for (int k = 0; k < MODES; k++) {
                ProgramDataBean b = bean(now, k);
                bv[k] = b != null ? values(b) : null;
            }
            int[][] pv = personalize(bv, prof);
            for (int k = 0; k < MODES; k++) {
                ProgramDataBean b = bean(now, k);
                if (b == null) {
                    continue;
                }
                for (int p = 0; p < N; p++) {
                    if (p == WORK && it.data.start) {
                        continue;                          // a running session: ProgramLive moves the end
                    }
                    set(b, p, pv[k][p]);
                }
                f.base[k] = bv[k];
                f.fit[k] = values(b);
                f.last[k] = values(b);
            }
            synchronized (FITS) {
                FITS.put(it, f);
            }
        } catch (Throwable t) {
            XemsGuard.report("ProgramFit.onMaster", t);
        }
    }

    // ------------------------------------------------------------------ saving

    /** The row's program as it goes into storage: the client's corrections out, hand-set values as they are. */
    public static TrainProgram forSave(TrainUserProgramDataWrapper w) {
        TrainProgram row = w != null ? w.trainProgram : null;
        if (row == null) {
            return null;
        }
        TrainProgram out = (TrainProgram) BeanUtils.cloneObject(row);
        if (out == null) {
            return row;
        }
        TrainItem it = itemOf(w);
        Fit f = it != null ? fitFor(it, false) : null;
        return f != null ? strip(f, out) : out;
    }

    /** Takes the client's corrections out of a copy of their row (values still as they were applied). */
    static TrainProgram strip(Fit f, TrainProgram out) {
        if (!f.hasBase) {
            return out;
        }
        for (int k = 0; k < MODES; k++) {
            ProgramDataBean b = bean(out, k);
            if (b == null || f.base[k] == null || f.fit[k] == null) {
                continue;
            }
            for (int p = 0; p < N; p++) {
                if (!f.manual[k][p] && get(b, p) == f.fit[k][p]) {
                    set(b, p, f.base[k][p]);                // still the correction: the base goes back
                }
            }
            if (f.zoneBase[k] != null && f.zoneFit[k] != null && !f.manual[k][ZONES] && b.strenthBean != null
                    && java.util.Arrays.equals(b.strenthBean.buwei, f.zoneFit[k])) {
                b.strenthBean.buwei = f.zoneBase[k].clone();
            }
        }
        return out;
    }

    /** The diskette: straight into the row's saved program, ✓. False → the caller opens "save as". */
    public static boolean quickSave(BaseActivity a, TrainUserProgramDataWrapper w) {
        try {
            if (a == null || w == null || w.trainProgram == null || w.trainProgram.name == null
                    || stored(w.trainProgram.name) == null) {
                return false;
            }
            TrainProgram out = forSave(w);
            if (out == null) {
                return false;
            }
            String name = w.trainProgram.name;
            saveBase(out, name);
            TrainItem it = itemOf(w);
            Fit f = it != null ? fitFor(it, false) : null;
            if (f != null) {
                rebase(f, out, w.trainProgram);
            }
            recalibrateOthers(it, name);
            a.showTips(XemsLang.tr("✓ Записано в „" + name + "“", "✓ Saved to “" + name + "”"));
            WearableBleDiagLog.log("manual", "saved '" + name + "' from the slot");
            return true;
        } catch (Throwable t) {
            XemsGuard.report("ProgramFit.quickSave", t);
            return false;
        }
    }

    /** Saves the values under the program's name (id kept); the saved live strength stays as it was. */
    static void saveBase(TrainProgram values, String name) {
        TrainProgram old = stored(name);
        values.name = name;
        if (old != null) {
            values.id = old.id;
            for (int k = 0; k < MODES; k++) {
                ProgramDataBean o = bean(old, k);
                ProgramDataBean n = bean(values, k);
                if (o != null && n != null) {
                    n.strenth = o.strenth;
                    n.pauseStrenthPercent = o.pauseStrenthPercent;
                }
            }
        }
        DataMgr dm = DataMgr.getInstance();
        if (dm.loginUser != null) {
            values.userId = Long.valueOf(dm.loginUser.id);
        }
        dm.addOrUpdateTrainProgram(values);
        try {
            ActivePauseStorage.save(values);
        } catch (Throwable ignored) {
        }
        FileUtils.saveListData(FILE_PROGRAMS, TrainProgram.class, dm.trainData);
        try {
            MessageDispatcher.dispatchEventMessage((short) 0x6a);
        } catch (Throwable ignored) {
        }
    }

    /** After the slot's own save: its values are the base now (hand-set ones included). */
    private static void rebase(Fit f, TrainProgram saved, TrainProgram row) {
        f.hasBase = true;
        f.ref = row;
        for (int k = 0; k < MODES; k++) {
            ProgramDataBean s = bean(saved, k);
            ProgramDataBean r = bean(row, k);
            if (s == null || r == null) {
                continue;
            }
            f.base[k] = values(s);
            f.fit[k] = values(r);
            for (int p = 0; p <= N; p++) {
                f.manual[k][p] = false;
            }
            f.zoneBase[k] = zones(s);
            f.zoneFit[k] = zones(r);
        }
    }

    /** The saved base changed: the other personalised slots on it follow at once (their hand-set values stay). */
    static void recalibrateOthers(TrainItem except, String name) {
        List<TrainItem> list = items;
        TrainProgram base = stored(name);
        if (list == null || base == null) {
            return;
        }
        boolean on = enabled(null);
        for (int i = 0; i < list.size(); i++) {
            TrainItem it = list.get(i);
            if (it == null || it == except || it.isEmpty() || it.getTrainProgram() == null
                    || !name.equals(it.getTrainProgram().name)) {
                continue;
            }
            Fit f = fitFor(it, false);
            if (f == null || !f.hasBase) {
                continue;                                  // a returning client keeps their own settings
            }
            TrainUser u = it.data.trainUser;
            AiProfile prof = on && u != null ? AiProfile.of(u) : null;
            int[][] bv = new int[MODES][];
            for (int k = 0; k < MODES; k++) {
                ProgramDataBean b = bean(base, k);
                bv[k] = b != null ? values(b) : null;
            }
            int[][] pv = personalize(bv, prof);
            boolean moved = false;
            for (int k = 0; k < MODES; k++) {
                ProgramDataBean rb = bean(it.getTrainProgram(), k);
                if (rb == null || bv[k] == null || f.fit[k] == null) {
                    continue;
                }
                for (int p = 0; p < N; p++) {
                    if (f.manual[k][p] || get(rb, p) != f.fit[k][p] || (p == WORK && it.data.start)) {
                        continue;
                    }
                    if (get(rb, p) != pv[k][p]) {
                        set(rb, p, pv[k][p]);
                        moved = true;
                    }
                    f.fit[k][p] = get(rb, p);
                }
                f.base[k] = bv[k];
                f.last[k] = values(rb);
            }
            if (moved) {
                if (!it.data.start) {
                    it.workLength = it.getTrainProgram().matchProgram() != null
                            ? it.getTrainProgram().matchProgram().workLength : it.workLength;
                }
                refresh(it, true);
            }
        }
    }

    static TrainItem itemOf(TrainUserProgramDataWrapper w) {
        List<TrainItem> list = items;
        if (list == null || w == null) {
            return null;
        }
        for (int i = 0; i < list.size(); i++) {
            TrainItem it = list.get(i);
            if (it != null && it.data == w) {
                return it;
            }
        }
        return null;
    }

    private static void refresh(TrainItem it, boolean send) {
        if (main == null) {
            main = new Handler(Looper.getMainLooper());
        }
        main.post(new Refresh(it, send));
    }

    static final class Refresh implements Runnable {
        private final TrainItem it;
        private final boolean send;

        Refresh(TrainItem it, boolean send) {
            this.it = it;
            this.send = send;
        }

        @Override
        public void run() {
            try {
                if (send) {
                    it.onParamsChange();
                }
                it.xemsRefresh();
            } catch (Throwable ignored) {
            }
        }
    }

    // ------------------------------------------------------------------ the switch in the parameters dialog

    /** Hook: EditUserProgramDataDialog.onStart — "Персонализация" on top of the parameters (row and master). */
    public static void attachSwitch(View anyField) {
        try {
            if (anyField == null) {
                return;
            }
            View v = anyField;
            ViewGroup content = null;
            while (v.getParent() instanceof View) {
                View parent = (View) v.getParent();
                if (parent instanceof ScrollView && v instanceof ViewGroup) {
                    content = (ViewGroup) v;
                    break;
                }
                v = parent;
            }
            if (content == null || content.findViewWithTag(SWITCH_TAG) != null) {
                return;
            }
            Context c = content.getContext();
            XemsUi.init(c);
            boolean on = enabled(c);
            LinearLayout row = XemsUi.toggleRow(c, XemsLang.tr("Персонализация", "Personalisation"),
                    hint(on), on, new Toggle(c));
            row.setTag(SWITCH_TAG);
            int pad = XemsUi.dp(c, 16);
            row.setPadding(pad, XemsUi.dp(c, 8), pad, XemsUi.dp(c, 8));
            content.addView(row, 0, new ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT));
        } catch (Throwable t) {
            XemsGuard.report("ProgramFit.attachSwitch", t);
        }
    }

    static String hint(boolean on) {
        return on ? XemsLang.tr("Всеки клиент получава записаната програма, настроена за него",
                "Each client gets the saved program, tuned for them")
                : XemsLang.tr("Изключена — всичко е ръчно, точно както го зададеш",
                "Off — everything is manual, exactly as you set it");
    }

    static final class Toggle implements XemsUi.OnToggle {
        private final Context c;

        Toggle(Context c) {
            this.c = c;
        }

        @Override
        public void onToggle(boolean on) {
            setEnabled(c, on);
        }
    }

    // ------------------------------------------------------------------ the diskette's long press

    /** Hook: TrainViewHolder.bindListener — hold the diskette = "save as" (new name). */
    public static void bindSaveAs(View save, Object holder) {
        if (save != null) {
            save.setOnLongClickListener(new SaveAs(holder));
        }
    }

    static final class SaveAs implements View.OnLongClickListener {
        private final Object holder;

        SaveAs(Object holder) {
            this.holder = holder;
        }

        @Override
        public boolean onLongClick(View v) {
            try {
                Activity a = activity(v.getContext());
                TrainUserProgramDataWrapper w = ((com.isaigu.gymapp.train.TrainViewHolder) holder).getData();
                TrainProgram out = forSave(w);
                if (a instanceof BaseActivity && out != null) {
                    XemsUi.haptic(v);
                    com.isaigu.gymapp.train.utils.OperationUtil.save((BaseActivity) a, out);
                    return true;
                }
            } catch (Throwable t) {
                XemsGuard.report("ProgramFit.saveAs", t);
            }
            return false;
        }
    }

    static Activity activity(Context c) {
        while (c instanceof ContextWrapper) {
            if (c instanceof Activity) {
                return (Activity) c;
            }
            c = ((ContextWrapper) c).getBaseContext();
        }
        return null;
    }

    /** Hook: the diskette's click (TrainViewHolder$2) — quick save, else the stock "save as". */
    public static void onSaveClick(BaseActivity a, TrainUserProgramDataWrapper w) {
        if (!quickSave(a, w)) {
            TrainProgram out = forSave(w);
            if (a != null && out != null) {
                com.isaigu.gymapp.train.utils.OperationUtil.save(a, out);
            }
        }
    }
}
