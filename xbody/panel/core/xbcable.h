// XBody's own cable output, shaped on its way to the stimulator board (no BLE, no XIAO). xbody_control sends the
// board's full state every 50 ms ("S"+hex+CRLF, pc_emse, docs/xbody-protocol.md); xems-xbproxy sits on that socket
// and runs every frame through Shaper:
//   wiring  — an XEMS suit on XBody's cable: each body part goes out on the lead that reaches it in an XEMS suit
//             (owner's table), so XBody's "Корем" works the abdomen. Latched at a training's start, never mid-run.
//   double  — XEMS's double impulse: in XBody's pause a second, low impulse (≤ 10 Hz, under the main Hz, strength
//             10–150 % of the main, never above the board's 100 %). Only in a pause of the length measured in the
//             previous cycle (XBody has no pause button: anything else — stop, end — stops it at once), 300 ms after
//             the impulse, ending 200 ms before the next one.
#pragma once
#include "bytes.h"
#include <string>

namespace xbcable {
enum { FRAME = 38, CH = 10, UEMS_MAX = 50000 };
enum Wiring { WIRE_XBODY, WIRE_XEMS };

unsigned short crc16(const unsigned char *p, int n);       // MODBUS
bool decodeLine(const std::string &line, Bytes &out);      // "S<hex>" (CR/LF stripped), CRC must match
std::string encodeLine(Bytes b);                            // CRC rewritten, "S…\r\n"

// XBody lead (uems index: 0 trapez, 1 back, 2 chest, 3 waist, 4 arm, 5 bottom, 6 abdomen, 7 legext, 8 legflex,
// 9 optional) that carries XBody body part `part` to an XEMS suit.
int xemsLead(int part);

struct Config {
    int wiring;
    bool dbl;
    int dblHz, dblPct;
    Config() : wiring(WIRE_XBODY), dbl(false), dblHz(5), dblPct(50) {}
};
Config parseConfig(const std::string &text);                // key=value lines; values clamped to the limits
std::string configText(const Config &c);

class Shaper {
public:
    Shaper();
    void setConfig(const Config &c) { want_ = c; }
    // One board frame (type 'R', 38 bytes, CRC checked by the caller) → what goes to the board. Other frames: as is.
    Bytes process(const Bytes &frame, unsigned nowMs);
    // For the screen: is XBody training, which wiring runs, is the second impulse on right now.
    bool training() const { return training_; }
    int wiringLive() const { return live_.wiring; }
    bool secondNow() const { return second_; }
    int learnedPauseMs() const { return pauseMs_; }

private:
    Config want_, live_;
    bool training_, inPause_, second_;
    unsigned pauseStart_;
    int pauseMs_, mainTp_;
};
}
