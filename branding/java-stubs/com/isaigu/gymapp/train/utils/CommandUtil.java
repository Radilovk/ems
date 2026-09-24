package com.isaigu.gymapp.train.utils;

import com.isaigu.gymapp.bean.ProgramDataBean;

/** Stub: the app's packet builder (per-channel strengths = part% × strength). */
public class CommandUtil {
    public static byte[] getPartsParamsPduWithStrength(ProgramDataBean bean, boolean[] partsDisabled, int strength) {
        return new byte[11];
    }
}
