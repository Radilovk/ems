package com.isaigu.gymapp.dialog;

import com.isaigu.gymapp.bean.ProgramDataBean;

import java.io.Serializable;

/** One block: X impulse cycles at MA / Hz / width (ON/OFF stay from the program). */
public final class ProgramSegment implements Serializable {
    private static final long serialVersionUID = 1L;

    public int cycles = 1;
    public int strenth;
    public int hz;
    public int pulseWidth;

    public ProgramSegment() {}

    public static ProgramSegment fromBean(ProgramDataBean bean) {
        ProgramSegment seg = new ProgramSegment();
        if (bean == null) {
            return seg;
        }
        seg.strenth = bean.strenth;
        seg.hz = bean.hz;
        seg.pulseWidth = bean.pulseWidth;
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
    }

    public String serialize() {
        return cycles + "," + strenth + "," + hz + "," + pulseWidth;
    }

    public static ProgramSegment deserialize(String token) {
        ProgramSegment seg = new ProgramSegment();
        if (token == null || token.length() == 0) {
            return seg;
        }
        String[] parts = token.split(",", 4);
        try {
            if (parts.length > 0) {
                seg.cycles = Math.max(1, Integer.parseInt(parts[0].trim()));
            }
            if (parts.length > 1) {
                seg.strenth = Integer.parseInt(parts[1].trim());
            }
            if (parts.length > 2) {
                seg.hz = Integer.parseInt(parts[2].trim());
            }
            if (parts.length > 3) {
                seg.pulseWidth = Integer.parseInt(parts[3].trim());
            }
        } catch (NumberFormatException ignored) {
        }
        return seg;
    }
}
