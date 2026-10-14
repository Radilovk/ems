#include "xemsproto.h"

namespace xems {

Bytes frame(int cmd, const Bytes &pdu) {
    Bytes f;
    f.push_back(HEAD);
    f.push_back((unsigned char)(pdu.size() + 4));
    f.push_back((unsigned char)cmd);
    f.insert(f.end(), pdu.begin(), pdu.end());
    unsigned sum = 0;
    for (size_t i = 0; i < f.size(); i++) sum += f[i];
    f.push_back((unsigned char)sum);
    return f;
}

Bytes strengths(const int pct[CHANNELS], int strength) {
    Bytes p(11, 0);
    for (int i = 0; i < CHANNELS; i++) p[i + 1] = (unsigned char)(int)((float)pct[i] / 100.0f * (float)strength);
    return frame(CMD_SETTING, p);
}

Bytes run(int secondsLeft, int hz, int widthUs, int onS, int offS, bool outputOn) {
    Bytes p(11, 0);
    long wt = secondsLeft;
    if (wt > 0 && wt <= 5) wt = 5;
    p[1] = (unsigned char)(wt / 256);
    p[2] = (unsigned char)(wt % 256);
    p[3] = (unsigned char)hz;
    p[4] = (unsigned char)(widthUs / 50);
    p[5] = (unsigned char)onS;
    p[6] = (unsigned char)(wt == 0 ? 1 : offS);
    p[9] = 0;
    p[10] = outputOn ? 1 : 0;
    return frame(CMD_RUN, p);
}

Bytes start() { return frame(CMD_START, Bytes(1, 0)); }
Bytes stop() { return frame(CMD_STOP, Bytes(1, 0)); }
Bytes battery() { return frame(CMD_BATTERY, Bytes()); }

int batteryPct(const Bytes &n) {
    if (n.size() < 5 || n[0] != HEAD || n[2] != RSP_BATTERY) return -1;
    int v = (signed char)n[3];
    return v < 0 ? -1 : (v > 100 ? 100 : v);
}
}
