#include "wiproto.h"

namespace wi {
static const int DUR = 41, DEC_LO = 0x7E, DEC_HI = 0x05;
// Pulse width (µs) of the muscle on each channel of the unit's own (XBody-standard) suit — what the vendor app sent in
// the owner's session (capture 1: 7f 7f 6d 49 7f 7f 64 52 7f 52); the vendor keeps widths per muscle (WiProto.java).
static const int WIDTH_US[CHANNELS] = {400, 400, 300, 100, 400, 400, 250, 150, 400, 150};
static const int WIDTH_GAP_US = 50;

static int clamp(int v, int lo, int hi) { return v < lo ? lo : (v > hi ? hi : v); }

static Bytes op(int sel, const int *v, int n) {
    Bytes b;
    b.push_back((unsigned char)sel);
    for (int i = 0; i < n; i++) b.push_back((unsigned char)v[i]);
    return b;
}

static int xor9(const int *v) {
    int x = 0;
    for (int i = 0; i < 9; i++) x ^= v[i] & 0xFF;
    return x;
}

int unit(int pct) { return (clamp(pct, 0, 100) * UNIT_MAX + 50) / 100; }

// The vendor's check (its code, DispositivoConectado.getCurrentsCoded): the XOR of the ten values, bit 7 − i of it in
// bit 7 of byte i, i = 0..7. Without it any unequal channels make the unit stop with "86".
Bytes currents(const int c[CHANNELS]) {
    int v[CHANNELS], x = 0;
    for (int i = 0; i < CHANNELS; i++) v[i] = c ? clamp(c[i], 0, UNIT_MAX) : 0;
    for (int i = 0; i < CHANNELS; i++) x ^= v[i];
    for (int i = 0; i < 8; i++) v[i] |= (x << i) & 0x80;
    return op(OP_CURRENTS, v, CHANNELS);
}

Bytes zero() { return currents(0); }

Bytes program(int hz, int workS, int restS, int rampUpS, int rampDownS, int phase) {
    int v[10] = {DUR, clamp(hz, 1, 255), clamp(workS, 1, 255), clamp(restS, 0, 255), clamp(rampUpS, 0, 255),
                 clamp(rampDownS, 0, 255), DEC_LO, DEC_HI, phase & 0xFF, 0};
    v[9] = xor9(v);
    return op(OP_PROGRAM, v, 10);
}

Bytes rest(int hz, int pct) {
    int v[10] = {clamp(hz, 1, 255), clamp(pct, 0, 100), 0, 0, 0, 0, 0, 0, 0xA5, 0};
    v[9] = xor9(v);
    return op(OP_REST, v, 10);
}

static int widthCode(int us) { return us >= 400 ? 7 : us >= 100 && us % 50 == 0 ? us / 50 - 1 : 0; }

int widthByte(int us) {
    int g = WIDTH_GAP_US >= 100 ? 2 : WIDTH_GAP_US == 50 ? 1 : 0;
    return widthCode(us) | widthCode(us) << 3 | g << 6;
}

Bytes widths(const int muscleOf[CHANNELS]) {
    int v[CHANNELS];
    for (int ch = 0; ch < CHANNELS; ch++) {
        int m = muscleOf && muscleOf[ch] >= 0 && muscleOf[ch] < CHANNELS ? muscleOf[ch] : ch;
        v[ch] = widthByte(WIDTH_US[m]);
    }
    return op(OP_WIDTHS, v, CHANNELS);
}

Bytes run(bool start) {
    int v[1] = {start ? 0x25 : 0x00};
    return op(OP_RUN, v, 1);
}

bool runTick(const Bytes &n) { return n.size() >= 2 && n[0] == N_RUN && n[1] == 1; }

int runCode(const Bytes &n) { return n.size() >= 2 && n[0] == N_RUN ? n[1] : -1; }

int battery(const Bytes &n) { return n.size() >= 2 && n[0] == N_BATTERY && n[1] <= 100 ? n[1] : -1; }
}
