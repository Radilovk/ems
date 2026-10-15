// Ready passive programs for XBody's own cable (docs/xems-auto-mode-spec.md §6.6–6.10, the same procedures the
// XEMS tablet runs). xems-xbproxy plays one over XBody's training: XBody still starts, stops and times the session,
// and the trainer's levels in XBody are the ceiling — a program only shapes (Hz, µs, rhythm, envelope, the wave
// over the zones) and scales down, never above a zone's level (the one exception is a segment's own second impulse
// in the pause, ≤ 50 %). Zones are XBody body parts (uems index: 0 trapez, 1 back, 2 chest, 3 waist, 4 arm,
// 5 abdomen, 6 bottom, 7 legext, 8 legflex, 9 optional/calf); the suit standard is applied after.
#pragma once
#include <string>

namespace xbprog {
enum { CH = 10, WAVE_PAUSE = 0, MAXSEG = 8, POST_MIN = 10 };

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
    int minutes;                   // its own length
    const Seg *segs;
    int n;
    const Seg *post;               // its own 10-min version for after a training (null: the full one, shortened)
    int postN;
    const char *postHow;
};

// The lengths the trainer can pick (minutes); 0 in the config = the program's own.
enum { LEN_N = 5 };
extern const int LENGTHS[LEN_N];

// A program at a chosen length — a different strategy per length (docs/xems-ems-physiology.md §1, §3):
//   10 min  after a training: its own version where it has one; else no warm-up (the body is warm), the work starts at
//           ≤ 80 %, a 2-min end;
//   15 min  short: warm-up and end 2 min each, the work in between;
//   20–25   standard: warm-up and end as the program has them, the work stretched or shortened;
//   30 min  long: warm-up and end 3 min each; ≥ 20 Hz work is never longer than WORK_MAX without a break — a longer
//           block becomes two with a 2-min 3 ↔ 8 Hz massage between (the fatigue recovers, τ 30–50 s).
// The work phases share the rest in proportion (whole seconds); Hz, µs, rhythm, ramps and the wave stay as they are,
// so the limits hold at every length.
enum { WORK_MAX = 900000, BREAK_MS = 120000 };
struct Plan {
    Program info;            // segs → this plan's own copy (use program())
    Seg segs[MAXSEG];
    bool post;               // the after-training version
    const char *note;        // the strategy, one line for the trainer
    Plan();
    Program program() const { Program p = info; p.segs = segs; return p; }
};
bool plan(const Program &p, int minutes, Plan *out);

int programs(const Program **out);
const Program *byId(const std::string &id);
int totalMs(const Program &p);
// The procedure's main segment (the most time at one frequency; the first of equals) — what it is about.
int mainSeg(const Program &p);
// The zones that segment mainly works (weight ≥ 70 %, a wave's zones 100; the rest 0): the tile lights these.
void zoneShare(const Program &p, int out[CH]);

// One board frame's worth: elapsed ms since the program started, XBody's levels in (u, the ceiling) → levels out,
// stimulation on/off, the period (ms) and width (µs) to send. Returns false when the program is over (all off).
struct Out { bool stim; unsigned tp, us; int seg; bool second; };
bool step(const Program &p, unsigned elapsedMs, unsigned u[CH], Out *o);
}
