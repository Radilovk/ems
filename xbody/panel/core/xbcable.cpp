#include "xbcable.h"
#include "xbprog.h"
#include <cstdlib>
#include <sstream>

namespace xbcable {

unsigned short crc16(const unsigned char *p, int n) {
    unsigned c = 0xFFFF;
    for (int i = 0; i < n; i++) {
        c ^= p[i];
        for (int k = 0; k < 8; k++) c = (c & 1) ? (c >> 1) ^ 0xA001 : c >> 1;
    }
    return (unsigned short)c;
}

static int hexv(char c) {
    if (c >= '0' && c <= '9') return c - '0';
    if (c >= 'A' && c <= 'F') return c - 'A' + 10;
    if (c >= 'a' && c <= 'f') return c - 'a' + 10;
    return -1;
}

bool decodeLine(const std::string &line, Bytes &out) {
    out.clear();
    if (line.size() < 5 || line[0] != 'S' || (line.size() - 1) % 2) return false;
    for (size_t i = 1; i + 1 < line.size(); i += 2) {
        int a = hexv(line[i]), b = hexv(line[i + 1]);
        if (a < 0 || b < 0) return false;
        out.push_back((unsigned char)(a * 16 + b));
    }
    int n = (int)out.size();
    return n >= 3 && crc16(&out[0], n - 2) == (out[n - 2] | out[n - 1] << 8);
}

std::string encodeLine(Bytes b) {
    static const char *H = "0123456789ABCDEF";
    int n = (int)b.size();
    if (n >= 3) {
        unsigned short c = crc16(&b[0], n - 2);
        b[n - 2] = c & 0xFF;
        b[n - 1] = c >> 8;
    }
    std::string s = "S";
    for (int i = 0; i < n; i++) { s += H[b[i] >> 4]; s += H[b[i] & 15]; }
    return s + "\r\n";
}

// Owner's table, XEMS channel → XBody lead: Ръце→Корем, Гърди→Допълнителен, Корем→Задно бедро, Предно бедро→same,
// Гръб→Глутеус, Трапец→Кръст, Кръст→Гръб, Седалище→Трапец, Задно бедро→Ръце, Прасец→Гърди. Read per body part:
// the part XBody calls arm (4) must leave on XBody's abdomen lead (6), and so on.
int xemsLead(int part) {
    // uems index = what XBody's GUI writes for each zone, measured on the real xbody_control (abdomen 5, bottom 6;
    // the first static decode had those two swapped).
    static const int LEAD[CH] = {/*0 trapez*/ 3, /*1 back*/ 6, /*2 chest*/ 9, /*3 waist*/ 1, /*4 arm*/ 5,
                                 /*5 abdomen*/ 8, /*6 bottom*/ 0, /*7 legext*/ 7, /*8 legflex*/ 4, /*9 optional = calf*/ 2};
    return part >= 0 && part < CH ? LEAD[part] : part;
}

static int clampi(int v, int lo, int hi) { return v < lo ? lo : v > hi ? hi : v; }

Config parseConfig(const std::string &text) {
    Config c;
    std::istringstream in(text);
    std::string l;
    while (std::getline(in, l)) {
        size_t e = l.find('=');
        if (e == std::string::npos) continue;
        std::string k = l.substr(0, e), v = l.substr(e + 1);
        while (!v.empty() && (v[v.size() - 1] == '\r' || v[v.size() - 1] == ' ')) v.erase(v.size() - 1);
        int n = std::atoi(v.c_str());
        if (k == "wiring") c.wiring = v == "xems" ? WIRE_XEMS : WIRE_XBODY;
        else if (k == "double") c.dbl = v == "1" || v == "on";
        else if (k == "double_hz") c.dblHz = clampi(n, 1, 10);
        else if (k == "double_pct") c.dblPct = clampi(n, 10, 150);
        else if (k == "program") c.program = xbprog::byId(v) ? v : std::string();
    }
    return c;
}

std::string configText(const Config &c) {
    std::ostringstream o;
    o << "wiring=" << (c.wiring == WIRE_XEMS ? "xems" : "xbody") << "\ndouble=" << (c.dbl ? 1 : 0)
      << "\ndouble_hz=" << clampi(c.dblHz, 1, 10) << "\ndouble_pct=" << clampi(c.dblPct, 10, 150)
      << "\nprogram=" << (xbprog::byId(c.program) ? c.program : std::string()) << "\n";
    return o.str();
}

Shaper::Shaper()
    : training_(false), inPause_(false), second_(false), pauseStart_(0), progStart_(0), progMs_(0), progSeg_(-1),
      progOver_(false), pauseMs_(0), mainTp_(0) {}

static unsigned u16(const Bytes &b, int o) { return b[o] | b[o + 1] << 8; }
static void put16(Bytes &b, int o, unsigned v) { b[o] = v & 0xFF; b[o + 1] = (v >> 8) & 0xFF; }

Bytes Shaper::process(const Bytes &in, unsigned now) {
    second_ = false;
    if ((int)in.size() != FRAME || in[0] != 'R') return in;
    Bytes f = in;
    unsigned bits = u16(f, 2);
    bool training = (bits & 2) != 0, stim = (bits & 1) != 0;
    if (!training) {   // idle / stopped: forget the cycle, pick up new settings for the next training
        training_ = inPause_ = progOver_ = false;
        pauseMs_ = mainTp_ = 0;
        progSeg_ = -1;
        progMs_ = 0;
        live_ = want_;
    } else {
        if (!training_) { live_ = want_; progStart_ = now; }   // a training starts: wiring + program latched
        training_ = true;
        live_.dbl = want_.dbl;           // the second impulse may change any time (it is capped below)
        live_.dblHz = want_.dblHz;
        live_.dblPct = want_.dblPct;
    }
    unsigned u[CH];
    for (int i = 0; i < CH; i++) u[i] = u16(f, 16 + i * 2);
    const xbprog::Program *prog = training ? xbprog::byId(live_.program) : 0;
    if (prog) {   // a ready program plays the training; XBody's levels (u) are its ceiling
        xbprog::Out o;
        progMs_ = now - progStart_;
        progOver_ = !xbprog::step(*prog, progMs_, u, &o);
        progSeg_ = o.seg;
        second_ = o.second;
        put16(f, 2, o.stim ? (bits | 1) : (bits & ~1u));
        if (o.tp) put16(f, 10, o.tp);
        if (o.us) put16(f, 8, o.us);
    } else if (training && stim) {
        if (inPause_) {   // a whole pause seen: its length bounds the next ones
            int len = (int)(now - pauseStart_);
            pauseMs_ = len > 30000 ? 30000 : len;
            inPause_ = false;
        }
        mainTp_ = (int)u16(f, 10);
    } else if (training) {
        if (!inPause_) { inPause_ = true; pauseStart_ = now; }
        int el = (int)(now - pauseStart_);
        int mainHz = mainTp_ > 0 ? 1000 / mainTp_ : 0;
        int hz = live_.dblHz > 10 ? 10 : live_.dblHz;
        if (hz >= mainHz) hz = mainHz - 1;   // always under the main frequency; a 1 Hz main → none
        bool any = false;
        for (int i = 0; i < CH; i++) any = any || u[i] > 0;
        if (live_.dbl && any && hz >= 1 && pauseMs_ >= 800 && el >= 300 && el <= pauseMs_ - 200) {
            int pct = clampi(live_.dblPct, 10, 150);
            for (int i = 0; i < CH; i++) {
                unsigned v = u[i] * (unsigned)pct / 100;
                u[i] = v > UEMS_MAX ? UEMS_MAX : v;
            }
            put16(f, 2, bits | 1);
            put16(f, 10, (unsigned)((1000 + hz / 2) / hz));
            second_ = true;
        }
    }
    if (live_.wiring == WIRE_XEMS) {   // body part → the lead that reaches it in an XEMS suit
        unsigned w[CH];
        for (int i = 0; i < CH; i++) w[xemsLead(i)] = u[i];
        for (int i = 0; i < CH; i++) u[i] = w[i];
    }
    for (int i = 0; i < CH; i++) put16(f, 16 + i * 2, u[i]);
    return f;
}

}  // namespace xbcable
