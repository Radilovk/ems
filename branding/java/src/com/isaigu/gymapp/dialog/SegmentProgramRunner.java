package com.isaigu.gymapp.dialog;

import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.train.model.TrainItem;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/** Runs multi-block segment programs during training (per program key). */
public final class SegmentProgramRunner {
    private static final int EXTENDED_WORK_LENGTH_SEC = 86400;

    private static final class State {
        int segmentIndex;
        int cyclesDone;
        int savedWorkLength;
        boolean extended;
    }

    private static final Map<String, State> states = new HashMap<>();

    private SegmentProgramRunner() {}

    public static void onTrainingStart(TrainItem item) {
        if (item == null) {
            return;
        }
        TrainProgram program = item.getTrainProgram();
        clearState(program);
        if (!SegmentProgramStorage.isActive(program)) {
            return;
        }
        ArrayList<ProgramSegment> segments = SegmentProgramStorage.getSegments(program);
        if (segments.isEmpty()) {
            return;
        }
        State state = stateFor(program);
        state.segmentIndex = 0;
        state.cyclesDone = 0;
        state.savedWorkLength = item.workLength;
        state.extended = true;
        item.workLength = EXTENDED_WORK_LENGTH_SEC;
        applySegment(item, segments.get(0));
    }

    public static void onTrainingStop(TrainItem item) {
        if (item == null) {
            return;
        }
        TrainProgram program = item.getTrainProgram();
        State state = states.get(keyFor(program));
        if (state != null && state.extended) {
            ProgramDataBean bean = program != null ? program.matchProgram() : null;
            if (bean != null && bean.workLength > 0) {
                item.workLength = bean.workLength;
            } else if (state.savedWorkLength > 0) {
                item.workLength = state.savedWorkLength;
            }
        }
        clearState(program);
    }

    /** Called at end of each ON/OFF pulse phase, before the next pulse starts. */
    public static void onPulsePhaseFinished(TrainItem item) {
        if (item == null || item.data == null) {
            return;
        }
        if (!item.data.inStart) {
            return;
        }
        TrainProgram program = item.getTrainProgram();
        if (!SegmentProgramStorage.isActive(program)) {
            return;
        }
        ArrayList<ProgramSegment> segments = SegmentProgramStorage.getSegments(program);
        if (segments.isEmpty()) {
            return;
        }
        State state = stateFor(program);
        if (state.segmentIndex >= segments.size()) {
            return;
        }
        ProgramSegment current = segments.get(state.segmentIndex);
        state.cyclesDone++;
        if (state.cyclesDone < Math.max(1, current.cycles)) {
            return;
        }
        state.cyclesDone = 0;
        state.segmentIndex++;
        if (state.segmentIndex >= segments.size()) {
            item.stop();
            return;
        }
        ProgramSegment next = segments.get(state.segmentIndex);
        applySegment(item, next);
        if (item.data.inStart) {
            item.data.secondValue = next.pulseContinue;
        } else {
            item.data.secondValue = next.pulsePause;
        }
    }

    private static void applySegment(TrainItem item, ProgramSegment segment) {
        TrainProgram program = item.getTrainProgram();
        if (program == null || segment == null) {
            return;
        }
        ProgramDataBean bean = program.matchProgram();
        segment.applyTo(bean);
        item.onParamsChange();
    }

    private static State stateFor(TrainProgram program) {
        String key = keyFor(program);
        State state = states.get(key);
        if (state == null) {
            state = new State();
            states.put(key, state);
        }
        return state;
    }

    private static void clearState(TrainProgram program) {
        states.remove(keyFor(program));
    }

    private static String keyFor(TrainProgram program) {
        if (program == null) {
            return "unknown";
        }
        if (program.id != null) {
            return "id:" + program.id;
        }
        if (program.name != null) {
            return "name:" + program.name;
        }
        return "unknown";
    }
}
