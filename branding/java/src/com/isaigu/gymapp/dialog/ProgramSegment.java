package com.isaigu.gymapp.dialog;

import com.isaigu.gymapp.bean.ProgramDataBean;

import java.io.Serializable;

/** One block in a segment program: X cycles at fixed impulse params. */
public final class ProgramSegment implements Serializable {
    private static final long serialVersionUID = 1L;

    public int cycles = 1;
    public int strenth;
    public int hz;
    public int pulseWidth;
    public int pulseContinue;
    public int pulsePause;

    public ProgramSegment() {}

    public static ProgramSegment fromBean(ProgramDataBean bean) {
        ProgramSegment seg = new ProgramSegment();
        if (bean == null) {
            return seg;
        }
        seg.strenth = bean.strenth;
        seg.hz = bean.hz;
        seg.pulseWidth = bean.pulseWidth;
        seg.pulseContinue = bean.pulseContinue;
        seg.pulsePause = bean.pulsePause;
        if (seg.cycles < 1) {
            seg.cycles = 1;
        }
        return seg;
    }

    public void applyTo(ProgramDataBean bean) {
        if (bean == null) {
            return;
        }
        bean.strenth = strenth;
        bean.hz = hz;
        bean.pulseWidth = pulseWidth;
        bean.pulseContinue = pulseContinue;
        bean.pulsePause = pulsePause;
    }
}
