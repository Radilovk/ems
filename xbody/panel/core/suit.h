// One suit's training: program, strength, the impulse / pause clock and the frames for its protocol.
// The host side of the bridge (xbody/panel/ui) sends queue items one at a time (next() → W → WOK → ack()).
// The unit runs the phases itself (like the stock XEMS tablet): impulse → pause → …, a soft rise at every impulse.
#pragma once
#include "bytes.h"
#include <deque>
#include <string>

struct Program {
    int hz, us, onS, offS, totalS, rampMs;
    Program() : hz(85), us(350), onS(4), offS(4), totalS(20 * 60), rampMs(500) {}
};

class Suit {
public:
    enum Kind { XEMS, BODYTECH };
    enum State { IDLE, RUNNING, PAUSED };
    enum { MAX_CH = 10, RAMP_STEPS = 4, ACK_TIMEOUT_MS = 1500 };

    explicit Suit(Kind kind);
    Kind kind() const { return kind_; }
    int channels() const;
    static const char *channelName(Kind k, int i);   // Bulgarian, the suit's own channel order

    // ---- control (the screen) ----
    void linked(unsigned now);                       // just connected: init sequence
    // Into the safety limits first (age −1 = unknown); the correction lines go to *why.
    void setProgram(const Program &p, int age, std::string *why);
    const Program &program() const { return prog_; }
    void setStrength(int s);                         // 0..100, the master
    int strength() const { return strength_; }
    void setChannel(int i, int pct);                 // 0..100 % of the master
    int channel(int i) const { return ch_[i]; }
    void start(unsigned now);                        // also resumes after pause
    void pause(unsigned now);
    void stop();
    void tick(unsigned now);                         // call often (≥ 10 Hz)
    void notify(const Bytes &n);                     // the suit's notification (battery)

    State state() const { return state_; }
    bool impulse() const { return state_ == RUNNING && on_; }
    int secondsLeft(unsigned now) const;
    int phaseMsLeft(unsigned now) const;
    int battery() const { return battery_; }         // %, −1 unknown
    bool finished() const { return finished_; }      // the last run ended by its clock
    Bytes safeFrame() const;                         // outputs off (the bridge sends it when the unit goes silent)

    // ---- link (one frame in flight) ----
    const Bytes *next(unsigned now);                 // the frame to send now, or null
    void ack(bool ok);
    bool ackLate(unsigned now) const { return inflight_ && now - sentMs_ > (unsigned)ACK_TIMEOUT_MS; }
    size_t queued() const { return out_.size(); }
    void clearQueue() { out_.clear(); inflight_ = false; }

private:
    enum Tag { T_PLAIN, T_LEVELS };
    struct Item { Bytes b; int tag; Item(const Bytes &x, int t) : b(x), tag(t) {} };
    void push(const Bytes &b, int tag = T_PLAIN);
    void dropLevels();
    void levels(int k);                      // impulse output at k/RAMP_STEPS of the strength
    void outputsOff(bool stopSuit);
    void btProgram();
    int lvl(int i, int k) const;

    Kind kind_;
    Program prog_;
    int strength_, ch_[MAX_CH];
    State state_;
    bool on_, finished_;
    unsigned endMs_, phaseEndMs_, rampStartMs_, remainMs_;
    int rampStep_;
    unsigned lastBattMs_, lastSyncMs_;
    int battery_;
    int btHz_, btUs_, btSent_[MAX_CH];
    std::deque<Item> out_;
    bool inflight_;
    unsigned sentMs_;
};

// Which suit an advertisement is: service (FE50 / FFF0 / NUS from the bridge) first, else the name the stock apps
// match. Returns −1 for anything else.
int suitKind(const std::string &svc, const std::string &name);
