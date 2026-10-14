#include "btproto.h"

namespace bt {

Bytes frame(int ch, int reg, int value) {
    Bytes b(8);
    unsigned id = (unsigned)((ch << 4) | reg) & 0xFFFF;
    unsigned v = (unsigned)value;
    b[0] = 0x36;
    b[1] = (unsigned char)(id >> 8);
    b[2] = (unsigned char)id;
    b[3] = (unsigned char)(v >> 24);
    b[4] = (unsigned char)(v >> 16);
    b[5] = (unsigned char)(v >> 8);
    b[6] = (unsigned char)v;
    b[7] = 0xC9;
    return b;
}

Bytes reset() { return frame(0, G_RESET, 1); }
Bytes batteryInit() { return frame(0, G_STATUS, 0x00020102); }
Bytes batteryInit2() { return frame(0, G_STATUS, 0x00020010); }
Bytes batterySync() { return frame(0, G_STATUS, 0x08010000); }
Bytes sync(int seconds) { return frame(0, G_SYNC, seconds <= 360 ? seconds * 1000 * 1000 * 10 : 0); }

Bytes enable(int onMask) {
    int on = onMask & 0xFF;
    return frame(0, G_SEL, on | ((~on & 0xFF) << 16));
}
Bytes allOff() { return frame(0, G_SEL, 0x00FF0000); }

Bytes hz(int ch, int h) { return frame(ch, R_CLOCK, (h <= 0 || h > 1000000) ? 0 : (1000000 / h) & 0xFFFFF); }
Bytes stepNor(int ch, int v) {
    return frame(ch, R_STEP_NOR, (v <= 0 || v >= 0x20202020) ? 0x01010101 : v & 0x1F1F1F1F);
}
Bytes intensity(int ch, int pct) { return frame(ch, R_INTENSITY, (pct < 0 || pct >= 100) ? 0 : pct & 127); }
Bytes width(int ch, int us) { return frame(ch, R_WIDTH, (us <= 0 || us >= 512) ? 800 : ((us * 10) / 2) & 8191); }
Bytes tPeriod(int ch, int v) { return frame(ch, R_T_PERIOD, (v <= 0 || v >= 16) ? 0 : (v * 10) & 15); }

Bytes t(int ch, int which, int ms) {
    int v;
    if (which == 2) v = (ms <= 0 || ms * 10 >= 1048575) ? 9765 : ((ms * 10000) / 1024) & 0xFFFFF;
    else v = (ms < 0 || ms * 10 >= 1048575) ? 0 : ((ms * 10000) / 1024) & 0xFFFFF;
    return frame(ch, R_T1 + which - 1, v);
}

Bytes t1IntStep(int ch, int v) { return frame(ch, R_T1_INT_STEP, (v < 0 || v >= 100) ? 0 : v & 127); }
Bytes t1WidthStep(int ch, int v) { return frame(ch, R_T1_W_STEP, (v < 0 || v >= 256) ? 0 : (v * 10) & 4095); }
Bytes t3IntStep(int ch, int v) { return frame(ch, R_T3_INT_STEP, (v < 0 || v >= 100) ? 0 : v & 127); }
Bytes t3WidthStep(int ch, int v) { return frame(ch, R_T3_W_STEP, (v < 0 || v >= 256) ? 0 : (v * 10) & 4095); }

int batteryRaw(const Bytes &v) {
    if (v.size() != 8 || v[2] != 1 || v[3] != 8 || v[4] != 1) return -1;
    if (v[5] == 0 && v[6] == 0) return -1;
    return (v[5] << 8) | v[6];
}

int batteryPercent(int raw) {
    float f = raw * 0.0024f;
    int p = (int)(((f - 3.6f) * 100.0f) / 0.48f);
    return p < 0 ? 0 : (p > 100 ? 100 : p);
}
}
