// Ready passive programs for XBody's own cable (docs/xems-auto-mode-spec.md §6.6–6.10, the same procedures the
// XEMS tablet runs). xems-xbproxy plays one over XBody's training: XBody still starts, stops and times the session,
// and the trainer's levels in XBody are the ceiling — a program only shapes (Hz, µs, rhythm, envelope, the wave
// over the zones) and scales down, never above a zone's level (the one exception is a segment's own second impulse
// in the pause, ≤ 50 %). Zones are XBody body parts (uems index: 0 trapez, 1 back, 2 chest, 3 waist, 4 arm,
// 5 abdomen, 6 bottom, 7 legext, 8 legflex, 9 optional/calf); the suit standard is applied after.
#pragma once
#include <string>

namespace xbprog {
enum { CH = 10, WAVE_PAUSE = 0 };

struct Seg {
    const char *name;       // shown on the panel
    int ms;                 // length
    int hz, hz2;            // hz2 > 0: every other cycle at hz2 (3 ↔ 8 Hz)
    int us;                 // pulse width
    int onMs, offMs, upMs, downMs;
    int e0, e1;             // envelope %, linear over the segment (≤ 100)
    const unsigned char *w; // weight % per zone (null: the wave decides)
    const unsigned *wave;   // wave steps as zone bit masks, WAVE_PAUSE = a 5-s rest; null: no wave
    int waveSteps;
    int dblHz, dblPct;      // a second impulse in the pause (0: none)
};

struct Program {
    const char *id, *name, *how;   // how: one line for the trainer
    int minutes;
    const Seg *segs;
    int n;
};

int programs(const Program **out);
const Program *byId(const std::string &id);
int totalMs(const Program &p);
// The procedure's main segment (the longest; the first of equals) — what it is about.
int mainSeg(const Program &p);
// The zones that segment mainly works (weight ≥ 70 %, a wave's zones 100; the rest 0): the tile lights these.
void zoneShare(const Program &p, int out[CH]);

// One board frame's worth: elapsed ms since the program started, XBody's levels in (u, the ceiling) → levels out,
// stimulation on/off, the period (ms) and width (µs) to send. Returns false when the program is over (all off).
struct Out { bool stim; unsigned tp, us; int seg; bool second; };
bool step(const Program &p, unsigned elapsedMs, unsigned u[CH], Out *o);
}
