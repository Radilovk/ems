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
    /** Channels that were on when VR engaged (the only ones VR may switch) and the focus mask now applied. */
    private static boolean[] managed;
    private static int focus;

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
        boolean[] man = new boolean[d.length];
        for (int i = 0; i < d.length; i++) {
            man[i] = !d[i] || mine[i];                 // on at the start (the rests are ours already)
        }
        item = row;
        switchedOff = mine;
        managed = man;
        focus = 0;
        PartPick.refresh();
    }

    /**
     * A zone hit is running: only its channels carry the impulse ({@code mask}, bit = partsDisabled index); 0 = back
     * to the resting channels. Only channels that were on when VR engaged are touched. Main thread, every tick.
     */
    static void setFocus(int mask) {
        TrainItem row = item;
        boolean[] man = managed;
        if (row == null || man == null || row.partsDisabled == null || mask == focus) {
            return;
        }
        focus = mask;
        boolean[] d = row.partsDisabled;
        for (int i = 0; i < d.length && i < man.length && i < VrSettings.CHANNELS; i++) {
            if (!man[i]) {
                continue;
            }
            d[i] = mask != 0 ? (mask & (1 << i)) == 0 : VrSettings.rests(i);
        }
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
        boolean[] man = managed;
        item = null;
        switchedOff = null;
        managed = null;
        focus = 0;
        if (row == null || man == null || row.partsDisabled == null) {
            return;
        }
        boolean[] d = row.partsDisabled;
        for (int i = 0; i < man.length && i < d.length; i++) {
            if (man[i]) {
                d[i] = false;                          // on again (the trainer's own off was never ours)
            }
        }
        PartPick.refresh();
    }
}
