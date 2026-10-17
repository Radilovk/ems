#include "safe.h"
#include <cmath>
#include <cstdio>

namespace safe {

// AiPlanner.fatigueParams(HIGH): τ 30 s, F_max = 1.15·τ/(1+e^(−4/τ)).
static const double TAU = 30.0;
static double fMax() { return 1.15 * TAU / (1 + std::exp(-4.0 / TAU)); }

static double forceShare(int hz) {
    double x = std::pow((double)(hz < 0 ? 0 : hz), 2.5);
    return x / (x + std::pow(15.0, 2.5));
}

double fatigueWeight(int hz) {
    return forceShare(hz) * (0.7 + 0.3 * (hz < 0 ? 0 : hz) / 85.0) / forceShare(85);
}

int hzMax(int age) { return age >= 60 ? HZ_MAX_60 : HZ_MAX; }

static void note(std::string *why, const char *fmt, int a, int b, int c, int d) {
    if (!why) return;
    char buf[200];
    std::snprintf(buf, sizeof buf, fmt, a, b, c, d);
    if (!why->empty()) *why += "\n";
    *why += buf;
}

void apply(int v[N], int age, std::string *why) {
    int hm = hzMax(age);
    if (v[HZ] > hm) {
        note(why, age >= 60 ? "Честота %d → %d Hz (60+)" : "Честота %d → %d Hz", v[HZ], hm, 0, 0);
        v[HZ] = hm;
    }
    if (v[HZ] < 1) v[HZ] = 1;
    int pwMax = v[HZ] >= 100 ? PW_MAX_100HZ : PW_MAX;
    if (v[PW] > pwMax) {
        note(why, "Дълбочина %d → %d µs при %d Hz", v[PW], pwMax, v[HZ], 0);
        v[PW] = pwMax;
    }
    if (v[PW] < PW_MIN) v[PW] = PW_MIN;
    if (v[ON] < 1) v[ON] = 1;
    if (v[OFF] < 1) v[OFF] = 1;
    bool tet = v[HZ] >= TETANIC_HZ;
    if (tet) {
        int onMax = v[HZ] >= 50 ? ON_MAX_50HZ : ON_MAX_TETANIC;
        if (v[ON] > onMax) {
            note(why, "Импулс %d → %d s при %d Hz", v[ON], onMax, v[HZ], 0);
            v[ON] = onMax;
        }
        if (v[RAMP] < RAMP_MIN_MS) v[RAMP] = RAMP_MIN_MS;
    }
    // The rise lives inside the impulse (owner: a 5 s rise in a 4 s impulse is no rise): ≤ the impulse − 1 s
    // (≥ 1 s at full strength); a 1 s impulse keeps only the shortest soft start.
    int rMax = v[ON] > 1 ? (v[ON] - 1) * 1000 : RAMP_MIN_MS;
    if (v[RAMP] > rMax) {
        note(why, "Рампа %d → %d ms: не по-дълга от импулса", v[RAMP], rMax, 0, 0);
        v[RAMP] = rMax;
    }
    if (v[AP] == 1) {
        int phzMax = v[HZ] - 1 < PAUSE_HZ_MAX ? v[HZ] - 1 : PAUSE_HZ_MAX;
        if (phzMax < 1) {
            note(why, "Втори импулс изключен: основната честота е твърде ниска", 0, 0, 0, 0);
            v[AP] = 0;
        } else {
            if (v[PHZ] > phzMax) {
                note(why, "Втори импулс %d → %d Hz (паузата е за отпускане)", v[PHZ], phzMax, 0, 0);
                v[PHZ] = phzMax;
            }
            if (v[PHZ] < 1) v[PHZ] = 1;
            if (v[PS] > PAUSE_PCT_MAX) {
                note(why, "Вторият импулс е най-много 1,5 пъти по-силен от основния", 0, 0, 0, 0);
                v[PS] = PAUSE_PCT_MAX;
            }
        }
    }
    if (tet) {
        int min = minOff(v[HZ], v[ON], v[AP] == 1 ? v[PHZ] : 0, v[AP] == 1 ? v[PS] / 100.0 : 0);
        if (v[OFF] < min) {
            note(why, "Пауза %d → %d s: при %d Hz · %d s по-кратка не е безопасна", v[OFF], min, v[HZ], v[ON]);
            v[OFF] = min;
        }
    }
}

int minOff(int hz, int on, int pauseHz, double pauseSigma) {
    if (hz < TETANIC_HZ) return 1;
    double fm = fMax();
    int off = 1;
    while (off < OFF_MAX_SEARCH && peak(hz, on, off, pauseHz, pauseSigma, TAU) > fm + 1e-6) off++;
    return off;
}

double peak(int hz, int on, int off, int pauseHz, double pauseSigma, double tau) {
    double e1 = std::exp(-on / tau);
    double e2 = std::exp(-(off > 1 ? off : 1) / tau);
    double g = fatigueWeight(hz) * tau;
    double p = pauseHz > 0 ? fatigueWeight(pauseHz) * pauseSigma * tau : 0;
    double den = 1 - e1 * e2;
    double f0 = (g * (1 - e1) * e2 + p * (1 - e2)) / (den > 1e-9 ? den : 1e-9);
    double a = f0 * e1 + g * (1 - e1);
    return a > f0 ? a : f0;
}
}
