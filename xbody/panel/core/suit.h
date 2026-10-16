// One suit's training: program, strength, the impulse / pause clock and the frames for its protocol.
// The host side of the bridge (xbody/panel/ui) sends queue items one at a time (next() → W → WOK → ack()).
// The unit runs the phases itself (like the stock XEMS tablet): impulse → pause → …, a soft rise at every impulse.
#pragma once
#include "bytes.h"
#include <deque>
#include <string>

// One control on the screen: a body zone driving one or two of the suit's channels at the same % (bodytech
// "Бедра" = left + right thigh). Screen order follows XBody's own training screen: column 1, then column 2.
struct Zone {
    const char *name;
    int ch[2], n;
    const char *mask[2];   // XBody's body picture(s) lit for it (BodyLegFront …), 0 = none
};

struct Program {
    int hz, us, onS, offS, totalS, rampMs;
    // Double impulse: a second, low impulse in the pause (Hz ≤ 10 and under the main, % of the main strength).
    bool dbl;
    int dblHz, dblPct;
    // Continuous (XBody's Cardiovascular): the pause is the client's rest, the impulse goes on (WiEMS: its rest at
    // the same Hz, 100 %; the other suits keep their pause).
    bool cont;
    Program() : hz(85), us(350), onS(4), offS(4), totalS(20 * 60), rampMs(500), dbl(false), dblHz(5), dblPct(50), cont(false) {}
    // XBody's own modes with its defaults (read off its Impulse sheet): 1 Muscle development, 2 Cardiovascular, 3 Relax.
    static Program mode(int m);
};

class Suit {
public:
    enum Kind { XEMS, BODYTECH, WIEMS };
    enum State { IDLE, RUNNING, PAUSED };
    enum { MAX_CH = 10, RAMP_STEPS = 4, ACK_TIMEOUT_MS = 1500 };
    // Which connector standard the XEMS suit's cables follow: its own, or XBody's (the same plug feeds another
    // body part, e.g. XBody's "Корем" lead lands on XEMS channel "Ръце"). bodytech has one layout only.
    enum Wiring { WIRE_XEMS, WIRE_XBODY };

    explicit Suit(Kind kind);
    Kind kind() const { return kind_; }
    int channels() const;
    static const char *channelName(Kind k, int i);   // Bulgarian, the suit's own channel order
    // The screen's zones (count) for the cables' standard; the first zonesLeft() are column 1.
    static int zones(Kind k, const Zone **out, int wiring = WIRE_XEMS);
    static int zonesLeft(Kind k);

    // ---- control (the screen) ----
    void linked(unsigned now);                       // just connected: init sequence
    // Into the safety limits first (age −1 = unknown); the correction lines go to *why.
    void setProgram(const Program &p, int age, std::string *why);
    const Program &program() const { return prog_; }
    void setStrength(int s);                         // 0..100, the master
    int strength() const { return strength_; }
    void setChannel(int i, int pct);                 // 0..100 % of the master
    int channel(int i) const { return ch_[i]; }
    void setZone(const Zone &z, int pct);            // every channel of the zone, one output update
    int zone(const Zone &z) const { return ch_[z.ch[0]]; }
    void start(unsigned now);                        // also resumes after pause
    void pause(unsigned now);
    void stop();
    void tick(unsigned now);                         // call often (≥ 10 Hz)
    void notify(const Bytes &n, unsigned now);       // the suit's notification (battery, WiEMS run state)
    // WiEMS: the unit stopped by itself (its "00", its protection "0x80|x", or silent 5 s) — the training went on
    // pause, 0 + stop sent. Taken once by the screen: why (Bulgarian-ready keys below), the trip code (0 none) and the
    // zone channel whose change set it off (−1 none).
    enum Halt { HALT_NONE, HALT_STOPPED, HALT_SILENT, HALT_TRIP };
    int takeHalt(int *code, int *changedCh);
    // The link dropped: kept (zones, strength, program, time done) and on pause; nothing queued goes anywhere.
    void lost(unsigned now);

    State state() const { return state_; }
    bool impulse() const { return state_ == RUNNING && on_; }
    int secondsLeft(unsigned now) const;
    int phaseMsLeft(unsigned now) const;
    int battery() const { return battery_; }         // %, −1 unknown
    // What channel i gives out now (0..100, for the body figure): its share of the strength in the impulse (with the
    // soft rise), 0 in the pause or while a WiEMS unit still counts down.
    int liveLevel(int i) const;
    bool finished() const { return finished_; }      // the last run ended by its clock
    // The suit is still being programmed (bodytech: ~110 frames, ~3 s after a link; WiEMS: its ~4 s count-down
    // after a start); a start waits for it.
    bool preparing() const;
    bool startPending() const { return startWanted_; }
    Bytes safeFrame() const;                         // outputs off (the bridge sends it when the unit goes silent)

    // ---- link (one frame in flight) ----
    const Bytes *next(unsigned now);                 // the frame to send now, or null
    void ack(bool ok);
    bool ackLate(unsigned now) const { return inflight_ && (int)(now - sentMs_) > (int)ACK_TIMEOUT_MS; }
    size_t queued() const { return out_.size(); }
    void clearQueue() { out_.clear(); inflight_ = false; }

private:
    enum Tag { T_PLAIN, T_LEVELS, T_PROG };
    struct Item {
        Bytes b;
        int tag;
        bool hasLv;                 // WiEMS strengths: the unit bytes, the zones and strength behind them
        int lv[MAX_CH], chs[MAX_CH], str;
        unsigned at;                // asked when (a finger's change waits to settle); 0 = at once
        Item(const Bytes &x, int t) : b(x), tag(t), hasLv(false), str(0), at(0) {}
    };
    // WiEMS: the vendor's pace — strengths only when they change, ≥ 0.8 s apart, a finger's change after 0.3 s.
    enum { WI_GAP_MS = 800, WI_SETTLE_MS = 300, WI_SILENT_MS = 5000 };
    int wiSent_[MAX_CH], wiOnAir_[MAX_CH], wiOk_[MAX_CH];
    bool wiSentValid_, wiOnAirValid_, wiOkValid_, userChange_, runNotifies_;
    int wiOnAirStr_, wiOkStr_;
    unsigned levelsMs_, runSeenMs_, lastTick_;
    int halt_, haltCode_, haltCh_;
    void wiHalted(int why, int code);
    void dropTag(int tag);
    void push(const Bytes &b, int tag = T_PLAIN);
    void dropLevels();
    void levels(int k);                      // impulse output at k/RAMP_STEPS of the strength
    void pauseLevels();                      // the pause with the double impulse: the second impulse's output
    bool second() const { return state_ == RUNNING && !on_ && prog_.dbl; }
    void outputsOff(bool stopSuit);
    void btProgram();
    int lvl(int i, int k) const;

    Kind kind_;
    Program prog_;
    int strength_, ch_[MAX_CH];
    State state_;
    bool on_, finished_, startWanted_;
    unsigned endMs_, phaseEndMs_, rampStartMs_, remainMs_;
    int rampStep_;
    unsigned lastBattMs_, lastSyncMs_;
    int battery_;
    int btHz_, btUs_, btSent_[MAX_CH];
    // WiEMS: the unit runs its own work / rest once started; idle → count-down (~4 s) → running.
    enum { WI_IDLE, WI_COUNT, WI_RUN };
    int wi_;
    bool wiGo_;
    unsigned wiAt_;
    void wiStop();
    int wiRampS() const { return (prog_.rampMs + 500) / 1000; }   // the unit's own rise, whole seconds
    bool preparingQueue() const;   // program frames still queued (not yet sent)
    std::deque<Item> out_;
    bool inflight_;
    unsigned sentMs_;
};

// Which suit an advertisement is: service (FE50 / FFF0 / NUS from the bridge) first, else the name the stock apps
// match. Returns −1 for anything else.
int suitKind(const std::string &svc, const std::string &name);
