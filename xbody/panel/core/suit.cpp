#include "suit.h"
#include "btproto.h"
#include "safe.h"
#include "xemsproto.h"
#include <cctype>

static const char *XEMS_NAMES[10] = {"Гърди", "Корем", "Предно бедро", "Прасец", "Ръце",
                                     "Трапец", "Гръб", "Кръст", "Седалище", "Задно бедро"};
// EMSFIT C1..C8 as the owner's bodytech setup names them (docs/xems-bodytech.md, 1.1.389).
static const char *BT_NAMES[8] = {"Кръст", "Седалище", "Трапец", "Гръб", "Ляво бедро", "Ръце", "Дясно бедро", "Корем"};

// XBody's training screen (TrainingWindow: two columns of BodyPartButton) — column 1: legext, legflex, bottom,
// abdomen, waist; column 2: back, trapez, chest, arm, optional (= calf). XEMS indices as in XEMS_NAMES.
static const Zone XEMS_ZONES[10] = {
    {"Предно бедро", {2, 0}, 1, {"BodyLegFront", 0}}, {"Задно бедро", {9, 0}, 1, {"BodyLegBack", 0}},
    {"Седалище", {8, 0}, 1, {"BodyBottom", 0}},       {"Корем", {1, 0}, 1, {"BodyAbdomen", 0}},
    {"Кръст", {7, 0}, 1, {"BodyWaist", 0}},           {"Гръб", {6, 0}, 1, {"BodyBack", 0}},
    {"Трапец", {5, 0}, 1, {"BodyTrapezius", 0}},      {"Гърди", {0, 0}, 1, {"BodyChest", 0}},
    {"Ръце", {4, 0}, 1, {"BodyArm", 0}},              {"Прасец", {3, 0}, 1, {"BodyOptional", 0}}};
// bodytech in the same order; its two thigh channels are one zone (owner: the same strength on both).
static const Zone BT_ZONES[7] = {
    {"Бедра", {4, 6}, 2, {"BodyLegFront", "BodyLegBack"}}, {"Седалище", {1, 0}, 1, {"BodyBottom", 0}},
    {"Корем", {7, 0}, 1, {"BodyAbdomen", 0}},              {"Кръст", {0, 0}, 1, {"BodyWaist", 0}},
    {"Гръб", {3, 0}, 1, {"BodyBack", 0}},                  {"Трапец", {2, 0}, 1, {"BodyTrapezius", 0}},
    {"Ръце", {5, 0}, 1, {"BodyArm", 0}}};

// ms from `since` to `now`, never negative (a stamp taken a moment later by the caller gives 0, not a wrap).
static unsigned age(unsigned now, unsigned since) {
    int d = (int)(now - since);
    return d < 0 ? 0u : (unsigned)d;
}

Suit::Suit(Kind kind)
    : kind_(kind), strength_(0), state_(IDLE), on_(false), finished_(false), startWanted_(false), endMs_(0), phaseEndMs_(0),
      rampStartMs_(0), remainMs_(0), rampStep_(0), lastBattMs_(0), lastSyncMs_(0), battery_(-1), btHz_(0), btUs_(0),
      inflight_(false), sentMs_(0) {
    for (int i = 0; i < MAX_CH; i++) { ch_[i] = 100; btSent_[i] = -1; }
}

int Suit::channels() const { return kind_ == XEMS ? (int)xems::CHANNELS : (int)bt::CHANNELS; }

const char *Suit::channelName(Kind k, int i) {
    if (k == XEMS) return i >= 0 && i < 10 ? XEMS_NAMES[i] : "";
    return i >= 0 && i < 8 ? BT_NAMES[i] : "";
}

int Suit::zones(Kind k, const Zone **out) {
    *out = k == XEMS ? XEMS_ZONES : BT_ZONES;
    return k == XEMS ? 10 : 7;
}

int Suit::zonesLeft(Kind k) { return k == XEMS ? 5 : 4; }

void Suit::push(const Bytes &b, int tag) { out_.push_back(Item(b, tag)); }

void Suit::dropLevels() {
    // A newer output step makes the queued, not yet sent ones useless (a quick ± run): drop them as a whole group.
    for (size_t i = inflight_ ? 1 : 0; i < out_.size();) {
        if (out_[i].tag == T_LEVELS) out_.erase(out_.begin() + i);
        else i++;
    }
}

const Bytes *Suit::next(unsigned now) {
    if (inflight_ || out_.empty()) return 0;
    inflight_ = true;
    sentMs_ = now;
    return &out_.front().b;
}

void Suit::ack(bool ok) {
    (void)ok;
    if (inflight_ && !out_.empty()) out_.pop_front();
    inflight_ = false;
}

void Suit::linked(unsigned now) {
    clearQueue();
    lastBattMs_ = lastSyncMs_ = now;
    if (kind_ == XEMS) {
        push(xems::stop());      // the stock row's init: stop first
        push(xems::battery());
    } else {
        push(bt::batteryInit());
        push(bt::batteryInit2());
        push(bt::batterySync());
        push(bt::sync(6));
        btProgram();
    }
}

void Suit::btProgram() {
    // The suit's own cycle as one long burst (T2 100 s, no ramps / pause): the unit runs the phases with SEL.
    push(bt::reset(), T_PROG);
    for (int c = 1; c <= bt::CHANNELS; c++) {
        push(bt::hz(c, prog_.hz), T_PROG);
        push(bt::stepNor(c, 0x01010101), T_PROG);
        push(bt::intensity(c, 0), T_PROG);
        push(bt::width(c, prog_.us), T_PROG);
        push(bt::tPeriod(c, 0), T_PROG);
        push(bt::t(c, 1, 0), T_PROG);
        push(bt::t(c, 2, 100000), T_PROG);
        push(bt::t(c, 3, 0), T_PROG);
        push(bt::t(c, 4, 0), T_PROG);
        push(bt::t1IntStep(c, 1), T_PROG);
        push(bt::t1WidthStep(c, 0), T_PROG);
        push(bt::t3IntStep(c, 1), T_PROG);
        push(bt::t3WidthStep(c, 0), T_PROG);
        btSent_[c - 1] = 0;
    }
    push(bt::allOff(), T_PROG);
    btHz_ = prog_.hz;
    btUs_ = prog_.us;
}

void Suit::setProgram(const Program &p, int age, std::string *why) {
    int v[safe::N] = {p.hz, p.us, p.onS, p.offS, 0, 0, 0, p.rampMs};
    safe::apply(v, age, why);
    prog_ = p;
    prog_.hz = v[safe::HZ];
    prog_.us = v[safe::PW];
    prog_.onS = v[safe::ON];
    prog_.offS = v[safe::OFF];
    prog_.rampMs = v[safe::RAMP];
    if (prog_.totalS < 60) prog_.totalS = 60;
    if (prog_.totalS > 60 * 60) prog_.totalS = 60 * 60;
}

void Suit::setStrength(int s) {
    strength_ = s < 0 ? 0 : (s > safe::STRENGTH_MAX ? safe::STRENGTH_MAX : s);
    if (impulse()) levels(rampStep_);
}

void Suit::setChannel(int i, int pct) {
    if (i < 0 || i >= channels()) return;
    ch_[i] = pct < 0 ? 0 : (pct > 100 ? 100 : pct);
    if (impulse()) levels(rampStep_);
}

void Suit::setZone(const Zone &z, int pct) {
    pct = pct < 0 ? 0 : (pct > 100 ? 100 : pct);
    for (int j = 0; j < z.n; j++)
        if (z.ch[j] >= 0 && z.ch[j] < channels()) ch_[z.ch[j]] = pct;
    if (impulse()) levels(rampStep_);
}

int Suit::lvl(int i, int k) const {
    int s = strength_ * k / RAMP_STEPS;
    if (kind_ == XEMS) return s;   // XEMS: the channel % is applied in the frame (vendor float math)
    int v = ch_[i] * s / 100;
    return v > 99 ? 99 : v;        // bodytech takes 0..99 (100 reads as 0)
}

void Suit::levels(int k) {
    dropLevels();
    unsigned left = remainMs_ / 1000;
    if (kind_ == XEMS) {
        push(xems::strengths(ch_, lvl(0, k)), T_LEVELS);
        push(xems::run((int)left, prog_.hz, prog_.us, prog_.onS, prog_.offS, true), T_LEVELS);
        return;
    }
    int mask = 0;
    for (int c = 0; c < bt::CHANNELS; c++) {
        int v = lvl(c, k);
        if (v != btSent_[c]) { push(bt::intensity(c + 1, v), T_LEVELS); btSent_[c] = v; }
        if (v > 0) mask |= 1 << c;
    }
    push(mask ? bt::enable(mask) : bt::allOff(), T_LEVELS);
}

void Suit::outputsOff(bool stopSuit) {
    dropLevels();
    unsigned left = remainMs_ / 1000;
    if (kind_ == XEMS) {
        push(xems::run((int)left, prog_.hz, prog_.us, prog_.onS, prog_.offS, false), T_LEVELS);
        if (stopSuit) push(xems::stop());
    } else {
        push(bt::allOff(), T_LEVELS);
    }
}

bool Suit::preparing() const {
    for (size_t i = 0; i < out_.size(); i++) if (out_[i].tag == T_PROG) return true;
    return false;
}

void Suit::start(unsigned now) {
    if (state_ == RUNNING) return;
    if (preparing()) { startWanted_ = true; return; }   // the clock starts when the suit can follow it
    startWanted_ = false;
    if (state_ == IDLE) remainMs_ = (unsigned)prog_.totalS * 1000u;
    finished_ = false;
    state_ = RUNNING;
    endMs_ = now + remainMs_;
    if (kind_ == XEMS) push(xems::start());
    else if (btHz_ != prog_.hz || btUs_ != prog_.us) {
        for (int c = 1; c <= bt::CHANNELS; c++) { push(bt::hz(c, prog_.hz)); push(bt::width(c, prog_.us)); }
        btHz_ = prog_.hz;
        btUs_ = prog_.us;
    }
    on_ = true;
    phaseEndMs_ = now + (unsigned)prog_.onS * 1000u;
    rampStartMs_ = now;
    rampStep_ = 1;
    levels(rampStep_);
}

void Suit::pause(unsigned now) {
    startWanted_ = false;
    if (state_ != RUNNING) return;
    remainMs_ = endMs_ > now ? endMs_ - now : 0;
    state_ = PAUSED;
    on_ = false;
    outputsOff(true);
}

void Suit::stop() {
    startWanted_ = false;
    bool was = state_ != IDLE;
    state_ = IDLE;
    on_ = false;
    remainMs_ = 0;
    if (was) outputsOff(true);
}

void Suit::tick(unsigned now) {
    if (kind_ == XEMS) {
        if (age(now, lastBattMs_) >= 10000) { lastBattMs_ = now; push(xems::battery()); }
    } else {
        if (age(now, lastSyncMs_) >= 4500) { lastSyncMs_ = now; push(bt::sync(6)); }
        if (age(now, lastBattMs_) >= 10000) { lastBattMs_ = now; push(bt::batterySync()); }
    }
    if (startWanted_ && !preparing()) start(now);
    if (state_ != RUNNING) return;
    remainMs_ = endMs_ > now ? endMs_ - now : 0;
    if ((int)(now - endMs_) >= 0) {
        stop();
        finished_ = true;
        return;
    }
    if ((int)(now - phaseEndMs_) >= 0) {
        on_ = !on_;
        phaseEndMs_ += (unsigned)(on_ ? prog_.onS : prog_.offS) * 1000u;
        if ((int)(now - phaseEndMs_) >= 0) phaseEndMs_ = now + (unsigned)(on_ ? prog_.onS : prog_.offS) * 1000u;
        if (on_) {
            rampStartMs_ = now;
            rampStep_ = 1;
            levels(rampStep_);
        } else {
            outputsOff(false);
        }
        return;
    }
    if (on_ && rampStep_ < RAMP_STEPS) {
        int want = 1 + (int)(age(now, rampStartMs_) * (unsigned)RAMP_STEPS / (unsigned)(prog_.rampMs > 0 ? prog_.rampMs : 1));
        if (want > RAMP_STEPS) want = RAMP_STEPS;
        if (want > rampStep_) { rampStep_ = want; levels(rampStep_); }
    }
}

void Suit::notify(const Bytes &n) {
    if (kind_ == XEMS) {
        int p = xems::batteryPct(n);
        if (p >= 0) battery_ = p;
    } else {
        int raw = bt::batteryRaw(n);
        if (raw >= 0) battery_ = bt::batteryPercent(raw);
    }
}

int Suit::secondsLeft(unsigned now) const {
    if (state_ == RUNNING) return endMs_ > now ? (int)((endMs_ - now + 999) / 1000) : 0;
    if (state_ == PAUSED) return (int)((remainMs_ + 999) / 1000);
    return prog_.totalS;
}

int Suit::phaseMsLeft(unsigned now) const {
    return state_ == RUNNING && phaseEndMs_ > now ? (int)(phaseEndMs_ - now) : 0;
}

Bytes Suit::safeFrame() const { return kind_ == XEMS ? xems::stop() : bt::allOff(); }

static std::string upper(const std::string &s) {
    std::string u(s);
    for (size_t i = 0; i < u.size(); i++) u[i] = (char)std::toupper((unsigned char)u[i]);
    return u;
}

int suitKind(const std::string &svc, const std::string &name) {
    if (svc == "FE50") return Suit::BODYTECH;
    if (svc == "FFF0" || svc == "NUS") return Suit::XEMS;
    std::string u = upper(name);
    if (u.compare(0, 4, "TZLJ") == 0 || u.compare(0, 3, "ADT") == 0) return Suit::BODYTECH;
    if (u.size() > 4 && u.compare(0, 3, "EMS") == 0 && std::isdigit((unsigned char)u[3]) && u.find('-') != std::string::npos &&
        u.find('-') > 3)
        return Suit::BODYTECH;
    // The stock XEMS app's name filters (BleDeviceManager configs): nord, nbee, ems-ble, xems, NB-, ems.
    if (u.find("NORD") != std::string::npos || u.find("NBEE") != std::string::npos || u.find("EMS") != std::string::npos ||
        u.compare(0, 3, "NB-") == 0)
        return Suit::XEMS;
    return -1;
}
