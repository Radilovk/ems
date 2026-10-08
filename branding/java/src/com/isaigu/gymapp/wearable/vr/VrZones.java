package com.isaigu.gymapp.wearable.vr;

import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.wearable.PartPick;
import com.isaigu.gymapp.wearable.WearableBleDiagLog;

/**
 * Less fatigue in VR (owner, 1.1.396): while VR drives a row, the resting channels ({@link VrSettings#rests}; by
 * default traps, back, lower back and calf — owner, 1.1.402: chosen in VrPanel) get no impulse —
 * the row's own channel switch ({@code TrainItem.partsDisabled}, read by every send: CommandUtil.getPartPduValue,
 * bodytech translates that packet). Only channels that were on are switched off, and only those are switched back
 * on when VR lets go; the trainer's own on / off stays untouched. Main thread.
 */
final class VrZones {
    private static TrainItem item;
    private static boolean[] switchedOff;

    private VrZones() {}

    static void engage(TrainItem row) {
        release();
        boolean[] d = row != null ? row.partsDisabled : null;
        if (d == null) {
            WearableBleDiagLog.log("vr", "zones: row has no channel switches");
            return;
        }
        boolean[] mine = new boolean[d.length];
        for (int i = 0; i < d.length && i < VrSettings.CHANNELS; i++) {
            if (VrSettings.rests(i) && !d[i]) {
                d[i] = true;
                mine[i] = true;
            }
        }
        item = row;
        switchedOff = mine;
        PartPick.refresh();
    }

    /** Resting channels changed mid-row: give back what was taken, take the new set. */
    static void reapply() {
        TrainItem row = item;
        if (row != null) {
            engage(row);
        }
    }

    static void release() {
        TrainItem row = item;
        boolean[] mine = switchedOff;
        item = null;
        switchedOff = null;
        if (row == null || mine == null || row.partsDisabled == null) {
            return;
        }
        boolean[] d = row.partsDisabled;
        for (int i = 0; i < mine.length && i < d.length; i++) {
            if (mine[i]) {
                d[i] = false;
            }
        }
        PartPick.refresh();
    }
}
