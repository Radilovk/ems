package com.isaigu.gymapp.dialog;

import java.io.Serializable;
import java.util.ArrayList;

/** Sidecar entry for one user program's segment sequence. */
public final class SegmentProgramEntry implements Serializable {
    private static final long serialVersionUID = 1L;

    public Long id;
    public String name;
    public boolean enabled;
    public ArrayList<ProgramSegment> segments = new ArrayList<>();
}
