package com.isaigu.gymapp.dialog;

import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.utils.FileUtils;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/** Persists segment programs per TrainProgram (sidecar file). */
public final class SegmentProgramStorage {
    private static final String FILE_NAME = "file_name_segment_program_overlay";

    private SegmentProgramStorage() {}

    public static void apply(TrainProgram program) {
        if (program == null) {
            return;
        }
        List<SegmentProgramEntry> entries = loadEntries();
        SegmentProgramEntry entry = findEntry(entries, program);
        if (entry == null || !entry.enabled || entry.segments == null || entry.segments.isEmpty()) {
            return;
        }
        ProgramSegment first = entry.segments.get(0);
        applySegmentToAll(program, first);
    }

    public static void save(TrainProgram program) {
        if (program == null) {
            return;
        }
        List<SegmentProgramEntry> entries = loadEntries();
        SegmentProgramEntry entry = findEntry(entries, program);
        if (entry == null) {
            entry = new SegmentProgramEntry();
            entry.id = program.id;
            entry.name = program.name;
            entries.add(entry);
        }
        entry.id = program.id;
        entry.name = program.name;
        saveEntries(entries);
    }

    public static void saveEntry(TrainProgram program, SegmentProgramEntry entry) {
        if (program == null || entry == null) {
            return;
        }
        List<SegmentProgramEntry> entries = loadEntries();
        SegmentProgramEntry existing = findEntry(entries, program);
        if (existing == null) {
            entries.add(entry);
        } else {
            existing.enabled = entry.enabled;
            existing.segments = entry.segments != null ? entry.segments : new ArrayList<ProgramSegment>();
            existing.id = program.id;
            existing.name = program.name;
        }
        saveEntries(entries);
    }

    public static SegmentProgramEntry loadForProgram(TrainProgram program) {
        if (program == null) {
            return null;
        }
        SegmentProgramEntry entry = findEntry(loadEntries(), program);
        if (entry != null) {
            return entry;
        }
        SegmentProgramEntry created = new SegmentProgramEntry();
        created.id = program.id;
        created.name = program.name;
        created.enabled = false;
        created.segments = new ArrayList<>();
        return created;
    }

    public static boolean isActive(TrainProgram program) {
        SegmentProgramEntry entry = loadForProgram(program);
        return entry != null && entry.enabled && entry.segments != null && !entry.segments.isEmpty();
    }

    public static ArrayList<ProgramSegment> getSegments(TrainProgram program) {
        SegmentProgramEntry entry = loadForProgram(program);
        if (entry == null || entry.segments == null) {
            return new ArrayList<>();
        }
        return entry.segments;
    }

    public static void mergeList(List<TrainProgram> programs) {
        if (programs == null || programs.isEmpty()) {
            return;
        }
        List<SegmentProgramEntry> entries = loadEntries();
        for (TrainProgram program : programs) {
            applyLoaded(entries, program);
        }
    }

    private static void applyLoaded(List<SegmentProgramEntry> entries, TrainProgram program) {
        SegmentProgramEntry entry = findEntry(entries, program);
        if (entry == null || !entry.enabled || entry.segments == null || entry.segments.isEmpty()) {
            return;
        }
        applySegmentToAll(program, entry.segments.get(0));
    }

    private static void applySegmentToAll(TrainProgram program, ProgramSegment segment) {
        if (segment == null) {
            return;
        }
        applySegment(program.programDataBean, segment);
        applySegment(program.muscleTrainingProgramDataBean, segment);
        applySegment(program.aerobicTrainingProgramDataBean, segment);
        applySegment(program.massageModeProgramDataBean, segment);
    }

    private static void applySegment(ProgramDataBean bean, ProgramSegment segment) {
        if (bean != null) {
            segment.applyTo(bean);
        }
    }

    private static SegmentProgramEntry findEntry(List<SegmentProgramEntry> entries, TrainProgram program) {
        if (entries == null || program == null) {
            return null;
        }
        Iterator<SegmentProgramEntry> it = entries.iterator();
        while (it.hasNext()) {
            SegmentProgramEntry entry = it.next();
            if (entry.id != null && program.id != null && entry.id.equals(program.id)) {
                return entry;
            }
            if (entry.name != null && program.name != null && entry.name.equals(program.name)) {
                return entry;
            }
        }
        return null;
    }

    @SuppressWarnings("unchecked")
    private static List<SegmentProgramEntry> loadEntries() {
        Object raw = FileUtils.getDataList(FILE_NAME, SegmentProgramEntry.class);
        if (raw instanceof List) {
            return (List<SegmentProgramEntry>) raw;
        }
        return new ArrayList<>();
    }

    private static void saveEntries(List<SegmentProgramEntry> entries) {
        FileUtils.saveListData(FILE_NAME, SegmentProgramEntry.class, entries);
    }
}
