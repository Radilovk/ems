#include "xbprog.h"

namespace xbprog {

// Zone weights in uems order: trapez, back, chest, waist, arm, abdomen, bottom, legext, legflex, calf
// (from the auto-mode table §5: пр ПБ ЗБ сед кор кр гр тр гър ръ).
static const unsigned char W_ALL[CH] = {100, 100, 100, 100, 100, 100, 100, 100, 100, 100};
static const unsigned char W_CELL[CH] = {0, 0, 0, 60, 50, 75, 100, 100, 100, 70};
static const unsigned char W_BACK[CH] = {60, 90, 0, 100, 0, 70, 80, 40, 60, 0};
static const unsigned char W_POST[CH] = {50, 60, 0, 90, 50, 60, 100, 70, 80, 50};   // chest 0 (breastfeeding: L10)
static const unsigned char W_REGEN[CH] = {80, 80, 40, 70, 60, 50, 90, 90, 90, 80};
static const unsigned char W_META[CH] = {40, 70, 40, 60, 60, 60, 100, 100, 100, 90};
static const unsigned char W_SHAPE[CH] = {40, 70, 40, 100, 80, 100, 100, 90, 90, 60};   // waist, belly, glutes, legs, arms

#define Z(i) (1u << (i))
// Drainage (§6.6): central paths first, then the legs upward, then the arms; one group per cycle, the previous one
// at 50 % (like pneumatic compression), a 5-s rest to fill.
static const unsigned WAVE_OPEN[] = {Z(5) | Z(3), Z(0)};
static const unsigned WAVE_LEGS[] = {Z(9), Z(8) | Z(7), Z(6), Z(5) | Z(3), WAVE_PAUSE};
static const unsigned WAVE_ARMS[] = {Z(4), Z(2) | Z(1), Z(0), WAVE_PAUSE};

//                 name            ms      hz hz2  us   on    off  up    down  e0   e1   w        wave       steps dbl
static const Seg DRAIN[] = {
    {"Отваряне", 180000, 35, 0, 300, 3000, 1000, 1000, 500, 90, 90, 0, WAVE_OPEN, 2, 0, 0},
    {"Вълна: крака", 660000, 35, 0, 300, 3000, 1000, 1000, 500, 90, 90, 0, WAVE_LEGS, 5, 0, 0},
    {"Вълна: ръце", 240000, 35, 0, 300, 3000, 1000, 1000, 500, 90, 90, 0, WAVE_ARMS, 4, 0, 0},
    {"Край", 120000, 3, 0, 250, 10000, 1000, 0, 0, 50, 50, W_ALL, 0, 0, 0, 0}};
// After a training (10 min): the body is warm, so no warm-up; the wave and a light pump with a slow second impulse
// at the end. L12 (no second impulse in drainage) keeps the wave clean — it would stop the vessels refilling in its
// pauses; the pump is outside the wave, ≤ 30 %, 3 Hz.
static const Seg DRAIN_POST[] = {
    {"Отваряне", 60000, 35, 0, 300, 3000, 1000, 1000, 500, 80, 80, 0, WAVE_OPEN, 2, 0, 0},
    {"Вълна: крака", 300000, 35, 0, 300, 3000, 1000, 1000, 500, 90, 90, 0, WAVE_LEGS, 5, 0, 0},
    {"Вълна: ръце", 120000, 30, 0, 300, 3000, 1000, 1000, 500, 90, 90, 0, WAVE_ARMS, 4, 0, 0},
    {"Помпа 8 Hz", 120000, 8, 0, 250, 2000, 2000, 0, 0, 70, 40, W_ALL, 0, 0, 3, 30}};
static const Seg CELL[] = {
    {"Загрявка", 150000, 5, 0, 250, 10000, 1000, 0, 0, 60, 100, W_CELL, 0, 0, 0, 0},
    {"Стягане", 600000, 85, 0, 350, 4000, 6000, 500, 300, 100, 100, W_CELL, 0, 0, 8, 50},
    {"Вълна: крака", 600000, 35, 0, 300, 3000, 1000, 1000, 500, 90, 90, 0, WAVE_LEGS, 5, 0, 0},
    {"Край", 150000, 3, 0, 250, 10000, 1000, 0, 0, 90, 50, W_CELL, 0, 0, 0, 0}};
static const Seg CELL_POST[] = {
    {"Стягане 85 Hz", 240000, 85, 0, 350, 4000, 6000, 500, 300, 80, 90, W_CELL, 0, 0, 8, 50},
    {"Вълна: крака", 240000, 35, 0, 300, 3000, 1000, 1000, 500, 90, 90, 0, WAVE_LEGS, 5, 0, 0},
    {"Масаж 3 ↔ 8 Hz", 120000, 3, 8, 250, 10000, 2000, 0, 0, 80, 50, W_CELL, 0, 0, 0, 0}};
static const Seg SHAPE[] = {
    {"Загрявка", 180000, 6, 0, 300, 10000, 1000, 0, 0, 60, 100, W_SHAPE, 0, 0, 0, 0},
    {"Оформяне 85 Hz", 540000, 85, 0, 350, 4000, 6000, 500, 300, 100, 100, W_SHAPE, 0, 0, 8, 40},
    {"Стягане 50 Hz", 300000, 50, 0, 300, 3000, 5000, 500, 300, 100, 100, W_SHAPE, 0, 0, 6, 40},
    {"Край", 180000, 4, 0, 250, 10000, 1000, 0, 0, 90, 50, W_SHAPE, 0, 0, 0, 0}};
static const Seg SHAPE_POST[] = {
    {"Оформяне 85 Hz", 240000, 85, 0, 350, 4000, 6000, 500, 300, 80, 90, W_SHAPE, 0, 0, 8, 40},
    {"Стягане 40 Hz", 180000, 40, 0, 300, 3000, 4000, 500, 300, 90, 90, W_SHAPE, 0, 0, 6, 40},
    {"Масаж 3 ↔ 8 Hz", 180000, 3, 8, 250, 10000, 2000, 0, 0, 80, 50, W_SHAPE, 0, 0, 0, 0}};
static const Seg BACK[] = {
    {"Отпускане", 240000, 4, 0, 250, 10000, 1000, 0, 0, 60, 100, W_BACK, 0, 0, 0, 0},
    {"Стабилизация", 660000, 80, 0, 300, 4000, 8000, 500, 300, 100, 100, W_BACK, 0, 0, 0, 0},
    {"Обезболяване", 300000, 2, 0, 200, 10000, 1000, 0, 0, 100, 50, W_BACK, 0, 0, 0, 0}};
static const Seg POST[] = {   // spec 5:10 at 40 Hz breaks L1 (≤ 4 s in passive) → 4:8, the same 1:2
    {"Загрявка", 180000, 5, 0, 250, 10000, 1000, 0, 0, 60, 100, W_POST, 0, 0, 0, 0},
    {"Тазово дъно", 840000, 40, 0, 250, 4000, 8000, 500, 300, 60, 90, W_POST, 0, 0, 0, 0},
    {"Край", 180000, 3, 0, 250, 10000, 1000, 0, 0, 90, 50, W_POST, 0, 0, 0, 0}};
static const Seg REGEN[] = {
    {"Релакс 3 ↔ 8 Hz", 1080000, 3, 8, 250, 10000, 2000, 0, 0, 100, 100, W_REGEN, 0, 0, 0, 0},
    {"Край", 120000, 3, 8, 250, 10000, 2000, 0, 0, 100, 50, W_REGEN, 0, 0, 0, 0}};
static const Seg META[] = {
    {"6 Hz", 450000, 6, 0, 350, 10000, 2000, 0, 0, 60, 100, W_META, 0, 0, 0, 0},
    {"Блок 85 Hz", 180000, 85, 0, 350, 4000, 6000, 500, 300, 100, 100, W_META, 0, 0, 0, 0},
    {"6 Hz", 450000, 6, 0, 350, 10000, 2000, 0, 0, 100, 100, W_META, 0, 0, 0, 0},
    {"Блок 85 Hz", 180000, 85, 0, 350, 4000, 6000, 500, 300, 100, 100, W_META, 0, 0, 0, 0},
    {"6 Hz · край", 240000, 6, 0, 350, 10000, 2000, 0, 0, 100, 50, W_META, 0, 0, 0, 0}};

#define N(a) (int)(sizeof a / sizeof a[0])
static const Program PROGS[] = {
    {"drain", "Дренаж", "Легнал, краката леко повдигнати · ясно, не болезнено", 20, DRAIN, N(DRAIN), DRAIN_POST,
     N(DRAIN_POST), "След тренировка: вълна отдолу нагоре и лека помпа с бавен втори импулс"},
    {"shaping", "Оформяне", "Талия, корем, седалище, бедра · 85 и 50 Hz с втори импулс в паузата", 20, SHAPE, N(SHAPE),
     SHAPE_POST, N(SHAPE_POST), "След тренировка: 85 и 40 Hz с втори импулс, масаж накрая"},
    {"cellulite", "Антицелулит", "Тонус на долната част + дренажна вълна по краката", 25, CELL, N(CELL), CELL_POST,
     N(CELL_POST), "След тренировка: стягане 85 Hz с втори импулс, вълна по краката, масаж"},
    {"back", "Болки в гърба", "Легнал по корем или седнал · при остра болка — не", 20, BACK, N(BACK), 0, 0, 0},
    {"postpartum", "След раждане", "Дишане и свиване на тазовото дъно с импулса", 20, POST, N(POST), 0, 0, 0},
    {"regen", "Регенерация", "Масаж 3 ↔ 8 Hz · 24–48 ч след активна тренировка", 20, REGEN, N(REGEN), 0, 0, 0},
    {"metabolic", "Пасивен метаболизъм", "6 Hz за разход + два блока по 3 мин 85 Hz", 25, META, N(META), 0, 0, 0}};

const int LENGTHS[LEN_N] = {10, 15, 20, 25, 30};

Plan::Plan() : post(false) {
    Program z = {0, 0, 0, 0, 0, 0, 0, 0, 0};
    info = z;
}

bool plan(const Program &p, int minutes, Plan *out) {
    out->info = p;
    out->post = minutes == POST_MIN && p.post;
    const Seg *src = out->post ? p.post : p.segs;
    int n = out->post ? p.postN : p.n;
    if (n > MAXSEG) n = MAXSEG;
    for (int i = 0; i < n; i++) out->segs[i] = src[i];
    out->info.n = n;
    out->info.how = out->post ? p.postHow : p.how;
    int own = 0;
    for (int i = 0; i < n; i++) own += src[i].ms;
    int want = minutes > 0 ? minutes * 60000 : own;
    if (want != own) {   // in proportion, whole seconds; the last phase takes the rest
        int t = 0;
        for (int i = 0; i < n - 1; i++) {
            out->segs[i].ms = (int)(((long long)src[i].ms * want / own + 500) / 1000) * 1000;
            if (out->segs[i].ms < 1000) out->segs[i].ms = 1000;
            t += out->segs[i].ms;
        }
        out->segs[n - 1].ms = want - t;
    }
    out->info.minutes = want / 60000;
    out->info.segs = out->segs;
    return out->segs[n - 1].ms > 0;
}

int programs(const Program **out) {
    *out = PROGS;
    return (int)(sizeof PROGS / sizeof PROGS[0]);
}

const Program *byId(const std::string &id) {
    for (unsigned i = 0; i < sizeof PROGS / sizeof PROGS[0]; i++)
        if (id == PROGS[i].id) return &PROGS[i];
    return 0;
}

int totalMs(const Program &p) {
    int t = 0;
    for (int i = 0; i < p.n; i++) t += p.segs[i].ms;
    return t;
}

int mainSeg(const Program &p) {
    int best = 0;
    for (int k = 1; k < p.n; k++)
        if (p.segs[k].ms > p.segs[best].ms) best = k;
    return best;
}

void zoneShare(const Program &p, int out[CH]) {
    const Seg &s = p.segs[mainSeg(p)];
    for (int i = 0; i < CH; i++) {
        int v = 0;
        if (s.w) v = s.w[i];
        else
            for (int j = 0; j < s.waveSteps; j++)
                if (s.wave[j] & (1u << i)) v = 100;
        out[i] = v >= 70 ? v : 0;
    }
}

static int waveStepMs(const Seg &s, unsigned mask) { return mask == WAVE_PAUSE ? 5000 : s.onMs + s.offMs; }

bool step(const Program &p, unsigned el, unsigned u[CH], Out *o) {
    o->stim = false;
    o->tp = 0;
    o->us = 0;
    o->seg = -1;
    o->second = false;
    unsigned t0 = 0;
    int si = -1;
    for (int i = 0; i < p.n; i++) {
        if (el < t0 + (unsigned)p.segs[i].ms) { si = i; break; }
        t0 += (unsigned)p.segs[i].ms;
    }
    if (si < 0) {   // over: outputs off until XBody ends the training
        for (int i = 0; i < CH; i++) u[i] = 0;
        return false;
    }
    const Seg &s = p.segs[si];
    unsigned ts = el - t0;
    o->seg = si;
    o->us = (unsigned)s.us;
    int env = s.e0 + (int)((long long)(s.e1 - s.e0) * ts / (unsigned)s.ms);
    double w[CH];
    unsigned pos;   // ms into the current cycle
    int hz = s.hz;
    if (s.wave) {   // one group per cycle, the previous one at half
        unsigned len = 0;
        for (int k = 0; k < s.waveSteps; k++) len += (unsigned)waveStepMs(s, s.wave[k]);
        unsigned r = ts % len;
        int k = 0;
        while (r >= (unsigned)waveStepMs(s, s.wave[k])) { r -= (unsigned)waveStepMs(s, s.wave[k]); k++; }
        unsigned cur = s.wave[k], prev = s.wave[(k - 1 + s.waveSteps) % s.waveSteps];   // after a rest: none
        if (cur == WAVE_PAUSE) prev = 0;
        for (int i = 0; i < CH; i++) w[i] = (cur & (1u << i)) ? 1.0 : (prev & (1u << i)) ? 0.5 : 0.0;
        pos = cur == WAVE_PAUSE ? (unsigned)s.onMs : r;   // a rest step = all off
    } else {
        for (int i = 0; i < CH; i++) w[i] = s.w[i] / 100.0;
        unsigned cyc = (unsigned)(s.onMs + s.offMs);
        pos = ts % cyc;
        if (s.hz2 && (ts / cyc) % 2) hz = s.hz2;
    }
    double ramp = 0;
    bool on = pos < (unsigned)s.onMs;
    if (on) {
        ramp = 1.0;
        if (s.upMs && pos < (unsigned)s.upMs) ramp = (double)pos / s.upMs;
        unsigned left = (unsigned)s.onMs - pos;
        if (s.downMs && left < (unsigned)s.downMs) {
            double d = (double)left / s.downMs;
            if (d < ramp) ramp = d;
        }
    }
    double k = env / 100.0;
    if (k > 1.0) k = 1.0;
    if (on && ramp > 0) {
        for (int i = 0; i < CH; i++) u[i] = (unsigned)(u[i] * k * w[i] * ramp);
        o->stim = true;
        o->tp = (unsigned)((1000 + hz / 2) / hz);
    } else if (!on && s.dblHz && pos >= (unsigned)s.onMs + 300 && pos + 200 <= (unsigned)(s.onMs + s.offMs)) {
        for (int i = 0; i < CH; i++) u[i] = (unsigned)(u[i] * k * w[i] * s.dblPct / 100.0);
        o->stim = true;
        o->second = true;
        o->tp = (unsigned)((1000 + s.dblHz / 2) / s.dblHz);
    }
    if (!o->stim) o->tp = (unsigned)((1000 + hz / 2) / hz);
    return true;
}

}  // namespace xbprog
