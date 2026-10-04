package com.isaigu.gymapp.wearable;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ScrollView;
import com.isaigu.gymapp.BaseActivity;
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
import java.util.List;

/**
 * The manual mode's programs, exactly as the trainer sets them (owner, 1.1.323: no automatic adaptation in the
 * manual mode — the only automatic thing is the absolute limits at every send, wearable/SafeGuard):
 * <ul>
 *   <li>The diskette and the row's ⚙ save the row's settings for its client in that program ({@link ClientPrograms});
 *       they come back whenever the client is on that program again. Holding the diskette = the stock "save as".</li>
 *   <li>⚙ Master saves its values into the program (the base everybody starts from).</li>
 *   <li>The parameters dialog gets the XEMS look (dialog/ParamDialogUi).</li>
 * </ul>
 * Before 1.1.323 this class also personalised the saved program per client and carried hand changes between the
 * modes; both are gone.
 */
public final class ProgramFit {
    static final int MODES = 4;
    private static final String FILE_PROGRAMS = "file_name_train_data";

    private ProgramFit() {}

    static ProgramDataBean bean(TrainProgram p, int k) {
        if (p == null) {
            return null;
        }
        return k == 1 ? p.muscleTrainingProgramDataBean
                : k == 2 ? p.aerobicTrainingProgramDataBean
                : k == 3 ? p.massageModeProgramDataBean : p.programDataBean;
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

    /** SessionRecorder, every second (ManualDefaults): the slot's client as it is now (ProgramLive). */
    static void tick(Context c, List<TrainItem> list) {
        if (list == null) {
            return;
        }
        for (int i = 0; i < list.size(); i++) {
            TrainItem it = list.get(i);
            if (it != null && !it.isEmpty() && it.getTrainProgram() != null) {
                com.isaigu.gymapp.train.utils.ProgramLive.seen(it);
            }
        }
    }

    /** ProgramLive: the row's ⚙ saved new parameters for the same client — the client's own from now on. */
    public static void onEdit(TrainItem it, TrainProgram was, TrainProgram now) {
        try {
            if (it != null && it.data != null && it.data.trainUser != null) {
                ClientPrograms.save(it.data.trainUser, now);
            }
        } catch (Throwable t) {
            XemsGuard.report("ProgramFit.onEdit", t);
        }
    }

    /** ProgramLive: ⚙ Master put new parameters on this slot — saved into the program, the base for everyone. */
    public static void onMaster(TrainItem it, TrainProgram was, TrainProgram now) {
        try {
            TrainProgram raw = (TrainProgram) BeanUtils.cloneObject(now);
            if (raw != null && now.name != null) {
                saveBase(raw, now.name);
            }
        } catch (Throwable t) {
            XemsGuard.report("ProgramFit.onMaster", t);
        }
    }

    /** The row's program for "save as" (a copy). */
    public static TrainProgram forSave(TrainUserProgramDataWrapper w) {
        TrainProgram row = w != null ? w.trainProgram : null;
        if (row == null) {
            return null;
        }
        TrainProgram out = (TrainProgram) BeanUtils.cloneObject(row);
        return out != null ? out : row;
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
                    n.strenth = o.strenth;                 // the live strength is not a setting
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

    // ------------------------------------------------------------------ the parameters dialog

    /** Hook: EditUserProgramDataDialog.onStart — the XEMS look of the dialog (name kept for the smali hook). */
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
            if (content != null) {
                com.isaigu.gymapp.dialog.ParamDialogUi.style(content);
            }
        } catch (Throwable t) {
            XemsGuard.report("ProgramFit.attachSwitch", t);
        }
    }

    // ------------------------------------------------------------------ the diskette

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
                    com.isaigu.gymapp.widget.XemsUi.haptic(v);
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

    /** Hook: the diskette's click (TrainViewHolder$2) — the row's settings into its client's profile. */
    public static void onSaveClick(BaseActivity a, TrainUserProgramDataWrapper w) {
        try {
            ClientPrograms.init(a);
            TrainUser u = w != null ? w.trainUser : null;
            if (a != null && u != null && w.trainProgram != null && ClientPrograms.save(u, w.trainProgram)) {
                a.showTips(XemsLang.tr("✓ Записано за " + u.name + " · " + w.trainProgram.name,
                        "✓ Saved for " + u.name + " · " + w.trainProgram.name));
                return;
            }
            TrainProgram out = forSave(w);                 // no client in the slot: the stock "save as"
            if (a != null && out != null) {
                com.isaigu.gymapp.train.utils.OperationUtil.save(a, out);
            }
        } catch (Throwable t) {
            XemsGuard.report("ProgramFit.onSaveClick", t);
        }
    }
}
