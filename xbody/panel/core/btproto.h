// Bodytech / EMSFIT 5.1 suit (service FE50, FE51 write+notify) — C++ port of BtProto.java, same golden vectors
// (bodytech/PROTOCOL.md, bodytech/probe/test). Frame: 0x36 | u16 (ch<<4 | reg) | i32 | 0xC9, big endian.
#pragma once
#include "bytes.h"

namespace bt {
enum { CHANNELS = 8 };
enum { G_RESET = 0, G_STATUS = 1, G_SEL = 3, G_SYNC = 5 };
enum { R_CLOCK = 0, R_STEP_NOR = 1, R_INTENSITY = 2, R_WIDTH = 3, R_WAVEFORM = 4, R_T_PERIOD = 6, R_T1 = 7,
       R_T1_INT_STEP = 11, R_T1_W_STEP = 12, R_T3_INT_STEP = 13, R_T3_W_STEP = 14 };

Bytes frame(int ch, int reg, int value);
Bytes reset();
Bytes batteryInit();
Bytes batteryInit2();
Bytes batterySync();
Bytes sync(int seconds);
Bytes enable(int onMask);   // bit n−1 = channel n on
Bytes allOff();
Bytes hz(int ch, int hz);
Bytes stepNor(int ch, int v);
Bytes intensity(int ch, int pct);
Bytes width(int ch, int us);
Bytes tPeriod(int ch, int v);
Bytes t(int ch, int which, int ms);   // which = 1..4
Bytes t1IntStep(int ch, int v);
Bytes t1WidthStep(int ch, int v);
Bytes t3IntStep(int ch, int v);
Bytes t3WidthStep(int ch, int v);
int batteryRaw(const Bytes &v);      // −1 if not a battery reply
int batteryPercent(int raw);
}
