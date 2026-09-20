package com.isaigu.gymapp.dialog;

import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.train.TrainItemManager;
import com.isaigu.gymapp.train.model.TrainItem;

import java.util.ArrayList;
import java.util.List;

/**
 * Global block program runner (interval timer extension).
 * Counts impulse ON+OFF cycles; applies MA/Hz/width to all active rows.
 */
public final class BlockProgramRunner {
    private static final Object LOCK = new Object();

    private static boolean armed;
    private static boolean repeat;
    private static int configuredWorkSec;
    private static int sequenceWorkSec;
    private static int blockIndex;
    private static int cyclesDone;
    private static long lastAdvanceMs;
    private static long blockRemainingMs;
    private static long blockTotalMs;
    private static int cycleMs;
    private static ArrayList<ProgramSegment> blocks = new ArrayList<>();
    private static TrainItemManager manager;

    private BlockProgramRunner() {}

    public static boolean isArmed() {
        return armed;
    }

    public static int getBlockIndex() {
        return blockIndex;
    }

    public static int getCyclesDone() {
        return cyclesDone;
    }

    public static int getBlockCount() {
        return blocks != null ? blocks.size() : 0;
    }

    public static int getCurrentBlockCycles() {
        if (blocks == null || blockIndex < 0 || blockIndex >= blocks.size()) {
            return 0;
        }
        return Math.max(1, blocks.get(blockIndex).cycles);
    }

    public static long getBlockRemainingMs() {
        return blockRemainingMs;
    }

    public static long getBlockTotalMs() {
        return blockTotalMs;
    }

    public static void tickBlock(long deltaMs) {
        if (deltaMs <= 0L || blockRemainingMs <= 0L) {
            return;
        }
        blockRemainingMs -= deltaMs;
        if (blockRemainingMs < 0L) {
            blockRemainingMs = 0L;
        }
    }

    /** Reset current block countdown to full (interval timer overlay restart). */
    public static void resetCurrentBlockCountdown() {
        synchronized (LOCK) {
            if (!armed || blocks.isEmpty()) {
                return;
            }
            cyclesDone = 0;
            syncBlockTimerFromState();
        }
    }

    public static void arm(
            TrainItemManager itemManager,
            ArrayList<ProgramSegment> blockList,
            boolean repeatProgram,
            int trainingSeconds) {
        synchronized (LOCK) {
            manager = itemManager;
            repeat = repeatProgram;
            configuredWorkSec = Math.max(1, trainingSeconds);
            blocks = blockList != null ? new ArrayList<>(blockList) : new ArrayList<>();
            blockIndex = 0;
            cyclesDone = 0;
            lastAdvanceMs = 0L;
            armed = blocks.size() > 0;
            int[] onOff = resolveOnOff();
            sequenceWorkSec = computeSequenceSeconds(blocks, onOff[0], onOff[1]);
        }
    }

    public static void reset() {
        synchronized (LOCK) {
            armed = false;
            repeat = false;
            configuredWorkSec = 0;
            sequenceWorkSec = 0;
            blockIndex = 0;
            cyclesDone = 0;
            lastAdvanceMs = 0L;
            blockRemainingMs = 0L;
            blockTotalMs = 0L;
            cycleMs = 0;
            blocks = new ArrayList<>();
            manager = null;
        }
    }

    public static void onTrainingStart() {
        synchronized (LOCK) {
            if (!armed || blocks.isEmpty()) {
                return;
            }
            blockIndex = 0;
            cyclesDone = 0;
            applyWorkLengthToAll();
            applyBlockToAll(blocks.get(0));
            syncBlockTimerFromState();
        }
    }

    /** Called from TrainItem pulse timer when entering ON phase (full OFF+ON cycle done). */
    public static void onPulseCycleComplete(TrainItem item) {
        if (item == null || item.data == null || !item.data.inStart) {
            return;
        }
        if (!armed || blocks.isEmpty()) {
            return;
        }
        TrainItem leader = firstActiveItem();
        if (leader != null && leader != item) {
            return;
        }
        synchronized (LOCK) {
            if (!armed || blocks.isEmpty()) {
                return;
            }
            long now = System.currentTimeMillis();
            if (now - lastAdvanceMs < 200L) {
                return;
            }
            if (blockIndex >= blocks.size()) {
                return;
            }
            ProgramSegment current = blocks.get(blockIndex);
            cyclesDone++;
            syncBlockTimerFromState();
            if (cyclesDone < Math.max(1, current.cycles)) {
                IntervalTimerHelper.refreshBlockOverlay();
                return;
            }
            lastAdvanceMs = now;
            cyclesDone = 0;
            blockIndex++;
            if (blockIndex >= blocks.size()) {
                if (repeat) {
                    blockIndex = 0;
                    applyBlockToAll(blocks.get(0));
                    syncBlockTimerFromState();
                    IntervalTimerHelper.refreshBlockOverlay();
                    return;
                }
                blockRemainingMs = 0L;
                armed = false;
                IntervalTimerHelper.triggerAllStop();
                return;
            }
            applyBlockToAll(blocks.get(blockIndex));
            syncBlockTimerFromState();
            IntervalTimerHelper.refreshBlockOverlay();
            IntervalTimerHelper.playBlockSignal();
        }
    }

    private static void syncBlockTimerFromState() {
        if (blocks.isEmpty() || blockIndex < 0 || blockIndex >= blocks.size()) {
            blockRemainingMs = 0L;
            blockTotalMs = 0L;
            return;
        }
        int[] onOff = resolveOnOff();
        cycleMs = Math.max(1000, (onOff[0] + onOff[1]) * 1000);
        ProgramSegment current = blocks.get(blockIndex);
        int blockCycles = Math.max(1, current.cycles);
        blockTotalMs = (long) blockCycles * cycleMs;
        int cyclesLeft = Math.max(0, blockCycles - cyclesDone);
        blockRemainingMs = (long) cyclesLeft * cycleMs;
    }

    public static int computeSequenceSeconds(ArrayList<ProgramSegment> list, int onSec, int offSec) {
        if (list == null || list.isEmpty()) {
            return 0;
        }
        int cycleSec = Math.max(1, onSec + offSec);
        int total = 0;
        for (int i = 0; i < list.size(); i++) {
            total += Math.max(1, list.get(i).cycles) * cycleSec;
        }
        return Math.max(1, total);
    }

    static int resolveWorkLengthSeconds() {
        int[] onOff = resolveOnOff();
        sequenceWorkSec = computeSequenceSeconds(blocks, onOff[0], onOff[1]);
        if (repeat) {
            return Math.max(1, configuredWorkSec);
        }
        return Math.max(1, sequenceWorkSec);
    }

    private static int[] resolveOnOff() {
        TrainItem item = firstActiveItem();
        int on = 4;
        int off = 4;
        if (item != null && item.getTrainProgram() != null) {
            ProgramDataBean bean = item.getTrainProgram().matchProgram();
            if (bean != null) {
                if (bean.pulseContinue > 0) {
                    on = bean.pulseContinue;
                }
                if (bean.pulsePause > 0) {
                    off = bean.pulsePause;
                }
            }
        }
        return new int[] {on, off};
    }

    private static void applyWorkLengthToAll() {
        if (manager == null) {
            return;
        }
        List<TrainItem> list = manager.getItemList();
        if (list == null) {
            return;
        }
        int workSec = resolveWorkLengthSeconds();
        for (int i = 0; i < list.size(); i++) {
            TrainItem item = list.get(i);
            if (item != null && !item.isEmpty()) {
                item.workLength = workSec;
            }
        }
    }

    private static void applyBlockToAll(ProgramSegment segment) {
        if (segment == null || manager == null) {
            return;
        }
        List<TrainItem> list = manager.getItemList();
        if (list == null) {
            return;
        }
        for (int i = 0; i < list.size(); i++) {
            TrainItem item = list.get(i);
            if (item == null || item.isEmpty() || item.getTrainProgram() == null) {
                continue;
            }
            ProgramDataBean bean = item.getTrainProgram().matchProgram();
            segment.applyTo(bean);
            if (item.data != null && item.data.inStart) {
                item.data.secondValue = bean.pulseContinue > 0 ? bean.pulseContinue : item.data.secondValue;
            }
            item.onParamsChange();
        }
    }

    private static TrainItem firstActiveItem() {
        if (manager == null) {
            return null;
        }
        List<TrainItem> list = manager.getItemList();
        if (list == null) {
            return null;
        }
        for (int i = 0; i < list.size(); i++) {
            TrainItem item = list.get(i);
            if (item != null && !item.isEmpty()) {
                return item;
            }
        }
        return null;
    }

}
