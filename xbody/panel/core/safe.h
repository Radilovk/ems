// Absolute limits of the impulse — C++ port of ai/SafeLimits.java (docs/xems-safety-limits.md). Same rules as the
// tablet, every path to the suit: Hz 1–120 (60+ ≤ 85), depth 50–400 µs (≤ 300 from 100 Hz), fused impulse ≤ 6 s
// from 50 Hz / ≤ 10 s at 20–49 Hz, soft rise ≥ 0.3 s, and the shortest pause a trained person's fatigue allows.
#pragma once
#include <string>

namespace safe {
enum { HZ = 0, PW, ON, OFF, AP, PHZ, PS, RAMP, N };
enum { HZ_MAX = 120, HZ_MAX_60 = 85, PW_MIN = 50, PW_MAX = 400, PW_MAX_100HZ = 300, TETANIC_HZ = 20,
       ON_MAX_50HZ = 6, ON_MAX_TETANIC = 10, RAMP_MIN_MS = 300, PAUSE_HZ_MAX = 10, PAUSE_PCT_MAX = 150,
       STRENGTH_MAX = 100, OFF_MAX_SEARCH = 30 };

int hzMax(int age);
// v: {hz, µs, on s, off s, 2nd impulse 0/1, its Hz, its strength %, rise ms} → corrected in place;
// whyBg gets one Bulgarian line per correction (may be null).
void apply(int v[N], int age, std::string *whyBg);
int minOff(int hz, int on, int pauseHz, double pauseSigma);
double peak(int hz, int on, int off, int pauseHz, double pauseSigma, double tau);
double fatigueWeight(int hz);
}
