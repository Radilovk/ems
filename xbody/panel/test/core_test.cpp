// Host tests of the panel core: protocol bytes, safety limits, the impulse / pause clock.
//   sh scripts/xbody/test-panel.sh
#include "../core/xbcable.h"
#include "../core/bridge.h"
#include "../core/btproto.h"
#include "../core/safe.h"
#include "../core/suit.h"
#include "../core/xemsproto.h"
#include "../core/wiproto.h"
#include <cstdio>
#include <cstring>

static int fails = 0, checks = 0;

static void eqHex(const char *what, const std::string &want, const Bytes &got) {
    checks++;
    std::string w;
    for (size_t i = 0; i < want.size(); i++) if (want[i] != ' ') w += want[i];
    if (toHex(got) != w) { fails++; std::printf("FAIL %s: want %s got %s\n", what, w.c_str(), toHex(got).c_str()); }
}

static void eqInt(const char *what, int want, int got) {
    checks++;
    if (want != got) { fails++; std::printf("FAIL %s: want %d got %d\n", what, want, got); }
}

static void bodytechGolden() {
    // bodytech/probe/test/ProtoTest.java — vendor bytes (com.emsfit.way8 5.1).
    eqHex("bt reset", "36 00 00 00 00 00 01 C9", bt::reset());
    eqHex("bt battInit", "36 00 01 00 02 01 02 C9", bt::batteryInit());
    eqHex("bt battInit2", "36 00 01 00 02 00 10 C9", bt::batteryInit2());
    eqHex("bt battSync", "36 00 01 08 01 00 00 C9", bt::batterySync());
    eqHex("bt sync6", "36 00 05 03 93 87 00 C9", bt::sync(6));
    eqHex("bt allOff", "36 00 03 00 FF 00 00 C9", bt::allOff());
    eqHex("bt enable5", "36 00 03 00 FA 00 05 C9", bt::enable(0x05));
    eqHex("bt hz1/85", "36 00 10 00 00 2D F4 C9", bt::hz(1, 85));
    eqHex("bt hz8/7", "36 00 80 00 02 2E 09 C9", bt::hz(8, 7));
    eqHex("bt stepNor", "36 00 21 01 01 01 01 C9", bt::stepNor(2, 0x01010101));
    eqHex("bt int25", "36 00 32 00 00 00 19 C9", bt::intensity(3, 25));
    eqHex("bt int100", "36 00 32 00 00 00 00 C9", bt::intensity(3, 100));
    eqHex("bt w360", "36 00 43 00 00 07 08 C9", bt::width(4, 360));
    eqHex("bt w600", "36 00 43 00 00 03 20 C9", bt::width(4, 600));
    eqHex("bt tPeriod", "36 00 56 00 00 00 00 C9", bt::tPeriod(5, 0));
    eqHex("bt t1", "36 00 57 00 00 0F 42 C9", bt::t(5, 1, 400));
    eqHex("bt t2", "36 00 58 00 00 98 96 C9", bt::t(5, 2, 4000));
    eqHex("bt t2 0", "36 00 58 00 00 26 25 C9", bt::t(5, 2, 0));
    eqHex("bt t3", "36 00 69 00 00 0F 42 C9", bt::t(6, 3, 400));
    eqHex("bt t4", "36 00 6A 00 00 98 96 C9", bt::t(6, 4, 4000));
    eqHex("bt t1i", "36 00 7B 00 00 00 01 C9", bt::t1IntStep(7, 1));
    eqHex("bt t1w", "36 00 7C 00 00 00 00 C9", bt::t1WidthStep(7, 0));
    eqHex("bt t3i", "36 00 7D 00 00 00 01 C9", bt::t3IntStep(7, 1));
    eqHex("bt t3w", "36 00 7E 00 00 00 78 C9", bt::t3WidthStep(7, 12));
    Bytes b;
    fromHex("36000108010622C9", b);
    eqInt("bt battRaw", 0x0622, bt::batteryRaw(b));
    eqInt("bt batt% (3.77 V)", 35, bt::batteryPercent(1571));
}

static void xemsFrames() {
    // Expected bytes from the stock frame rule (0x53 | len | cmd | pdu | sum), computed independently.
    eqHex("x start", "5305F10049", xems::start());
    eqHex("x stop", "5305F2004A", xems::stop());
    eqHex("x batt", "5304055C", xems::battery());
    int all[10] = {100, 100, 100, 100, 100, 100, 100, 100, 100, 100};
    eqHex("x str50", "530F01003232323232323232323257", xems::strengths(all, 50));
    int mix[10] = {100, 50, 0, 100, 100, 100, 100, 100, 100, 33};
    eqHex("x strmix", "530F01002814002828282828280D9C", xems::strengths(mix, 40));
    eqHex("x run on", "530F030004B055070404000000017E", xems::run(1200, 85, 350, 4, 4, true));
    eqHex("x run 3s", "530F030000055507040400000000CE", xems::run(3, 85, 350, 4, 4, false));
    eqHex("x run 0s", "530F030000005507040100000000C6", xems::run(0, 85, 350, 4, 4, false));
    Bytes n;
    fromHex("530506410000", n);
    eqInt("x batt%", 65, xems::batteryPct(n));
}

static void safety() {
    // docs/xems-safety-limits.md: shortest pause (s) for impulse 2…10 s.
    static const int hz[5] = {30, 50, 85, 100, 120};
    static const int on[7] = {2, 3, 4, 5, 6, 8, 10};
    static const int want[5][7] = {{1, 1, 1, 1, 1, 2, 2}, {1, 2, 2, 3, 3, 4, 5}, {2, 3, 3, 4, 5, 7, 9},
                                   {2, 3, 4, 5, 6, 8, 11}, {2, 3, 4, 5, 7, 9, 13}};
    for (int i = 0; i < 5; i++)
        for (int j = 0; j < 7; j++) {
            char what[40];
            std::snprintf(what, sizeof what, "minOff %d Hz %d s", hz[i], on[j]);
            eqInt(what, want[i][j], safe::minOff(hz[i], on[j], 0, 0));
        }
    int v[safe::N] = {150, 450, 8, 1, 0, 0, 0, 0};
    std::string why;
    safe::apply(v, 65, &why);
    eqInt("apply hz 60+", 85, v[safe::HZ]);
    eqInt("apply pw", 400, v[safe::PW]);
    eqInt("apply on", 6, v[safe::ON]);
    eqInt("apply off", 5, v[safe::OFF]);
    eqInt("apply ramp", 300, v[safe::RAMP]);
    int w[safe::N] = {110, 380, 4, 4, 0, 0, 0, 500};
    safe::apply(w, 30, 0);
    eqInt("apply pw 100Hz", 300, w[safe::PW]);
    checks++;
    if (why.find("Пауза 1 → 5 s") == std::string::npos) { fails++; std::printf("FAIL why: %s\n", why.c_str()); }
}

// Sends everything queued (as the bridge link does: one in flight, ack) and returns the frames.
static std::vector<Bytes> drain(Suit &s, unsigned now) {
    std::vector<Bytes> v;
    const Bytes *b;
    while ((b = s.next(now)) != 0) { v.push_back(*b); s.ack(true); }
    return v;
}

static void xemsSession() {
    Suit s(Suit::XEMS);
    s.linked(0);
    std::vector<Bytes> f = drain(s, 0);
    eqInt("x link frames", 2, (int)f.size());
    eqHex("x link stop", "5305F2004A", f[0]);
    std::string why;
    Program p;
    p.totalS = 60;
    s.setProgram(p, -1, &why);
    eqInt("x prog untouched", 1, why.empty() ? 1 : 0);
    s.setStrength(40);
    s.start(1000);
    f = drain(s, 1000);
    eqInt("x start frames", 3, (int)f.size());
    eqHex("x start F1", "5305F10049", f[0]);
    eqInt("x ramp 1/4 strength", 10, f[1][4]);
    eqInt("x run flag on", 1, f[2][13]);
    s.tick(1200);   // 200 ms of 500 → step 2
    f = drain(s, 1200);
    eqInt("x ramp 2/4", 20, f.size() ? f[0][4] : -1);
    s.tick(1600);
    f = drain(s, 1600);
    eqInt("x ramp full", 40, f.size() ? f[0][4] : -1);
    s.tick(5000);   // impulse over → pause
    f = drain(s, 5000);
    eqInt("x pause frames", 1, (int)f.size());
    eqInt("x pause flag off", 0, f.size() ? f[0][13] : -1);
    eqInt("x impulse off", 0, s.impulse() ? 1 : 0);
    s.tick(9000);
    eqInt("x impulse again", 1, s.impulse() ? 1 : 0);
    drain(s, 9000);
    s.setStrength(41);
    s.setStrength(42);
    s.setStrength(43);   // a quick ± run: only the newest level stays queued
    eqInt("x coalesced", 2, (int)s.queued());
    s.pause(9500);
    f = drain(s, 9500);
    eqHex("x pause→stop", "5305F2004A", f.back());
    eqInt("x left after pause", 52, s.secondsLeft(20000));
    s.start(20000);
    drain(s, 20000);
    s.tick(20000 + 52000);
    eqInt("x finished", 1, s.finished() ? 1 : 0);
    eqInt("x idle", Suit::IDLE, s.state());
}

static void bodytechSession() {
    Suit s(Suit::BODYTECH);
    s.linked(0);
    std::vector<Bytes> f = drain(s, 0);
    eqInt("bt link frames", 4 + 1 + 8 * 13 + 1, (int)f.size());
    eqHex("bt link last", "36 00 03 00 FF 00 00 C9", f.back());
    s.setChannel(1, 50);   // glutes at half
    s.setStrength(60);
    s.start(0);
    s.tick(600);           // ramp done
    f = drain(s, 600);
    eqHex("bt full C1", "36 00 12 00 00 00 3C C9", f[f.size() - 9]);   // C1: 60
    eqHex("bt full C2", "36 00 22 00 00 00 1E C9", f[f.size() - 8]);   // C2: 50 % of 60
    eqHex("bt SEL all", "36 00 03 00 00 00 FF C9", f.back());
    s.tick(4000);
    f = drain(s, 4000);
    eqHex("bt pause = all off", "36 00 03 00 FF 00 00 C9", f.back());
    s.tick(4500);
    f = drain(s, 4500);
    eqHex("bt keep-alive", "36 00 05 03 93 87 00 C9", f.empty() ? Bytes() : f[0]);
    eqHex("bt safe", "36 00 03 00 FF 00 00 C9", s.safeFrame());
    Program p;
    p.hz = 100;
    s.stop();
    s.setProgram(p, -1, 0);
    drain(s, 5000);
    s.start(5000);
    f = drain(s, 5000);
    eqHex("bt new Hz before output", "36 00 10 00 00 27 10 C9", f[0]);
}

static void wiemsGolden() {
    // The vendor app's writes in the owner's capture (wiems/PROTOCOL.md), with the bridge's selector byte first.
    eqHex("wi prog 84 arm", "01 29 54 04 08 00 00 7E 05 02 08", wi::program(84, 4, 8, 0, 0, wi::PHASE_ARM));
    eqHex("wi prog 84 run", "01 29 54 04 08 00 00 7E 05 00 0A", wi::program(84, 4, 8, 0, 0, wi::PHASE_RUN));
    eqHex("wi prog 92 rd1", "01 29 5C 04 08 00 01 7E 05 00 03", wi::program(92, 4, 8, 0, 1, wi::PHASE_RUN));
    eqHex("wi rest 5", "02 05 64 00 00 00 00 00 00 A5 C4", wi::rest(5, 100));
    eqHex("wi rest 7", "02 07 64 00 00 00 00 00 00 A5 C6", wi::rest(7, 100));
    eqHex("wi widths", "03 7F 7F 6D 49 7F 7F 64 52 7F 52", wi::widths());
    int c[10] = {12, 0, 2, 15, 15, 15, 13, 13, 0, 15};
    eqHex("wi currents", "00 0C 00 02 0F 0F 0F 0D 0D 00 0F", wi::currents(c));
    int big[10] = {300, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    eqHex("wi currents cap", "00 64 00 00 00 00 00 00 00 00 00", wi::currents(big));
    eqHex("wi start", "04 25", wi::run(true));
    eqHex("wi stop", "04 00", wi::run(false));
    Bytes n;
    fromHex("0401", n);
    eqInt("wi run tick", 1, wi::runTick(n) ? 1 : 0);
    fromHex("1051", n);
    eqInt("wi battery", 81, wi::battery(n));
}

static void wiemsSession() {
    Suit s(Suit::WIEMS);
    eqInt("wi channels", 10, s.channels());
    s.linked(0);
    std::vector<Bytes> f = drain(s, 0);
    eqInt("wi link frames", 2, (int)f.size());
    eqHex("wi link stop", "04 00", f.back());
    eqHex("wi safe", "04 00", s.safeFrame());
    s.setStrength(40);
    s.setChannel(1, 50);
    s.start(1000);
    eqInt("wi waits for its count-down", Suit::IDLE, s.state());
    eqInt("wi preparing", 1, s.preparing() ? 1 : 0);
    f = drain(s, 1000);
    eqInt("wi start frames", 5, (int)f.size());
    eqHex("wi start prog", "01 29 55 04 04 00 00 7E 05 02 05", f[0]);
    eqHex("wi start run", "04 25", f.back());
    s.tick(2000);
    eqInt("wi still counting", Suit::IDLE, s.state());
    Bytes n;
    fromHex("0401", n);
    s.notify(n);   // the unit's first "01"
    s.tick(5100);
    f = drain(s, 5100);
    eqInt("wi running", Suit::RUNNING, s.state());
    eqInt("wi begin frames", 3, (int)f.size());
    eqHex("wi begin zero", "00 00 00 00 00 00 00 00 00 00 00", f[0]);
    eqHex("wi begin prog", "01 29 55 04 04 00 00 7E 05 00 07", f[1]);
    eqHex("wi ramp 1/4", "00 0A 05 0A 0A 0A 0A 0A 0A 0A 0A", f[2]);
    s.tick(5700);
    f = drain(s, 5700);
    eqHex("wi ramp full", "00 28 14 28 28 28 28 28 28 28 28", f.empty() ? Bytes() : f.back());
    s.tick(9200);   // impulse over → pause: strengths 0, the unit keeps running
    f = drain(s, 9200);
    eqInt("wi pause frames", 1, (int)f.size());
    eqHex("wi pause zero", "00 00 00 00 00 00 00 00 00 00 00", f.empty() ? Bytes() : f[0]);
    s.pause(9500);
    f = drain(s, 9500);
    eqHex("wi pause → stop", "04 00", f.empty() ? Bytes() : f.back());
    // stop during a count-down stops the unit
    s.start(10000);
    drain(s, 10000);
    s.stop();
    f = drain(s, 10100);
    eqHex("wi stop in count-down", "04 00", f.empty() ? Bytes() : f.back());
    eqInt("wi idle", Suit::IDLE, s.state());
    // no "01" from the unit: it runs after 6 s anyway
    Suit u(Suit::WIEMS);
    u.linked(0);
    drain(u, 0);
    u.start(100);
    drain(u, 100);
    u.tick(6000);
    eqInt("wi no tick yet", Suit::IDLE, u.state());
    u.tick(6200);
    eqInt("wi timeout → running", Suit::RUNNING, u.state());
    BridgeEvent e = parseBridgeLine("ADV 88:6B:0F:CC:BE:49 -58 WIEMS WIEMS_-_EMS_Device");
    eqInt("wi adv kind", Suit::WIEMS, suitKind(e.svc, e.name));
    eqInt("wi kind by name", Suit::WIEMS, suitKind("-", "WIEMS - EMS Device"));
}

static void bridgeLines() {
    BridgeEvent e = parseBridgeLine("ADV 02:BC:34:D6:2D:93 -61 FE50 EMS08-05629");
    eqInt("adv type", BridgeEvent::ADV, e.type);
    eqInt("adv rssi", -61, e.rssi);
    eqInt("adv kind", Suit::BODYTECH, suitKind(e.svc, e.name));
    e = parseBridgeLine("ADV AA:BB:CC:DD:EE:FF -70 - NB-2231");
    eqInt("adv xems by name", Suit::XEMS, suitKind(e.svc, e.name));
    eqInt("adv other", -1, suitKind("-", "Mi Band 10"));
    e = parseBridgeLine("N 02:BC:34:D6:2D:93 36000108010622C9");
    eqInt("notify len", 8, (int)e.data.size());
    checks++;
    if (bridgecmd::write("AA:BB:CC:DD:EE:FF", xems::battery()) != "W AA:BB:CC:DD:EE:FF 5304055C\n") fails++;
    eqInt("hello version", 2, bridgeVersion(parseBridgeLine("HELLO XEMS-BRIDGE 2 4")));
    eqInt("pong version", 1, bridgeVersion(parseBridgeLine("PONG 1")));
    eqInt("no version", 0, bridgeVersion(parseBridgeLine("SCANNING 1")));
    eqInt("dfuok", BridgeEvent::DFUOK, parseBridgeLine("DFUOK").type);
}

static void zones() {
    // Every channel on the screen exactly once, column 1 / column 2 as on XBody's screen.
    for (int k = 0; k < 3; k++) {
        Suit::Kind kind = k == 1 ? Suit::BODYTECH : Suit::XEMS;
        Suit s(kind);
        const Zone *z;
        int n = Suit::zones(kind, &z, k == 2 ? Suit::WIRE_XBODY : Suit::WIRE_XEMS), seen[Suit::MAX_CH] = {0}, total = 0;
        for (int i = 0; i < n; i++)
            for (int j = 0; j < z[i].n; j++) { seen[z[i].ch[j]]++; total++; }
        eqInt(k == 1 ? "bt zones cover" : "x zones cover", s.channels(), total);
        for (int c = 0; c < s.channels(); c++) eqInt("zone channel once", 1, seen[c]);
    }
    const Zone *z;
    Suit::zones(Suit::BODYTECH, &z);
    eqInt("bt zone 0 = thighs", 2, z[0].n);
    Suit b(Suit::BODYTECH);
    b.setZone(z[0], 35);
    eqInt("thigh L", 35, b.channel(4));
    eqInt("thigh R", 35, b.channel(6));
    eqInt("thigh zone", 35, b.zone(z[0]));
    eqInt("others kept", 100, b.channel(0));
    Suit::zones(Suit::XEMS, &z);
    eqInt("x col1 first = legext", 2, z[0].ch[0]);
    eqInt("x col2 first = back", 6, z[Suit::zonesLeft(Suit::XEMS)].ch[0]);
    // XBody cables: the "Корем" zone is fed by XEMS channel "Ръце" (owner's example), names stay body parts.
    Suit::zones(Suit::XEMS, &z, Suit::WIRE_XBODY);
    eqInt("xbody wiring: Корем → ch Ръце", 4, z[3].ch[0]);
    eqInt("xbody wiring: Предно бедро stays", 2, z[0].ch[0]);
    eqInt("xbody wiring: Прасец (optional) → ch Гърди", 0, z[9].ch[0]);
    eqInt("bt ignores wiring", 2, Suit::zones(Suit::BODYTECH, &z, Suit::WIRE_XBODY) == 7 ? z[0].n : 0);
}

// The owner's table is the one truth: a connector pin is called X by XEMS and B by XBody.
static const char *PINS[10][2] = {{"Ръце", "Корем"},           {"Гърди", "Прасец"}, {"Корем", "Задно бедро"},
                                  {"Предно бедро", "Предно бедро"}, {"Гръб", "Седалище"}, {"Трапец", "Кръст"},
                                  {"Кръст", "Гръб"},             {"Седалище", "Трапец"}, {"Задно бедро", "Ръце"},
                                  {"Прасец", "Гърди"}};
// XBody uems index of a body part (docs/xbody-protocol.md; "Прасец" = optional).
static int xbPart(const std::string &n) {
    const char *N[10] = {"Трапец", "Гръб", "Гърди", "Кръст", "Ръце", "Седалище", "Корем", "Предно бедро",
                         "Задно бедро", "Прасец"};
    for (int i = 0; i < 10; i++) if (n == N[i]) return i;
    return -1;
}
static int xemsCh(const std::string &n) {
    for (int i = 0; i < 10; i++) if (n == Suit::channelName(Suit::XEMS, i)) return i;
    return -1;
}

static void cableWiring() {
    using namespace xbcable;
    // XBody unit + XEMS suit (cable): part p leaves on the XBody lead of the pin XEMS calls p.
    for (int k = 0; k < 10; k++) eqInt(PINS[k][0], xbPart(PINS[k][1]), xemsLead(xbPart(PINS[k][0])));
    // XEMS unit + XBody suit (BLE zones): zone p drives the XEMS channel of the pin XBody calls p.
    const Zone *z;
    int n = Suit::zones(Suit::XEMS, &z, Suit::WIRE_XBODY);
    for (int i = 0; i < n; i++)
        for (int k = 0; k < 10; k++)
            if (std::string(z[i].name) == PINS[k][1]) eqInt(z[i].name, xemsCh(PINS[k][0]), z[i].ch[0]);
    int seen[10] = {0};
    for (int p = 0; p < 10; p++) seen[xemsLead(p)]++;
    for (int p = 0; p < 10; p++) eqInt("lead used once", 1, seen[p]);
}

// A board frame as xbody_control sends it (captured in the emulator: 83 Hz, 350 µs, legflex 60).
static Bytes frame(unsigned bits, unsigned tp, int ch, unsigned level) {
    Bytes b(xbcable::FRAME, 0);
    b[0] = 'R';
    b[2] = bits & 0xFF; b[3] = bits >> 8;
    b[6] = 100; b[8] = 350 & 0xFF; b[9] = 350 >> 8; b[10] = tp & 0xFF; b[11] = tp >> 8;
    if (ch >= 0) { b[16 + ch * 2] = level & 0xFF; b[17 + ch * 2] = level >> 8; }
    Bytes back;
    xbcable::decodeLine(xbcable::encodeLine(b).substr(0, 77), back);   // CRC filled in
    return back;
}
static unsigned lv(const Bytes &b, int ch) { return b[16 + ch * 2] | b[17 + ch * 2] << 8; }
static unsigned w16(const Bytes &b, int o) { return b[o] | b[o + 1] << 8; }

static void cableShaper() {
    using namespace xbcable;
    Bytes b;
    eqInt("real frame decodes", 1, decodeLine("S52000000000000000000A0860000000000000000000000000000000000000000000000001839", b));
    eqInt("bad crc refused", 0, decodeLine("S52000000000000000000A0860000000000000000000000000000000000000000000000001838", b));
    Config c = parseConfig("wiring=xems\ndouble=1\ndouble_hz=50\ndouble_pct=900\n");
    eqInt("cfg wiring", WIRE_XEMS, c.wiring);
    eqInt("cfg hz capped", 10, c.dblHz);
    eqInt("cfg pct capped", 150, c.dblPct);
    eqInt("cfg roundtrip", 1, configText(parseConfig(configText(c))) == configText(c));

    Shaper s;
    Config x;
    x.wiring = WIRE_XEMS;
    s.setConfig(x);
    Bytes o = s.process(frame(3, 12, 8, 60), 0);              // legflex at 60 → XEMS suit: its lead is arm (4)
    eqInt("xems wiring moves legflex", 60, lv(o, 4));
    eqInt("xems wiring empties legflex lead", 0, lv(o, 8));
    s.setConfig(Config());                                    // back to XBody suit mid-training: not now
    eqInt("wiring latched mid-run", 60, lv(s.process(frame(3, 12, 8, 60), 50), 4));
    s.process(frame(0, 12, -1, 0), 100);                      // stop
    eqInt("new wiring after stop", 60, lv(s.process(frame(3, 12, 8, 60), 150), 8));

    // Double impulse: 5 Hz at 50 %, only from the second pause, inside the measured pause.
    Shaper d;
    Config dc;
    dc.dbl = true; dc.dblHz = 5; dc.dblPct = 50;
    d.setConfig(dc);
    d.process(frame(3, 12, 8, 60), 0);                        // impulse 0–4 s
    d.process(frame(2, 12, 8, 60), 4000);                     // pause 4–5 s
    o = d.process(frame(2, 12, 8, 60), 4500);                 // first pause: length unknown → nothing
    eqInt("1st pause: no 2nd impulse", 2, (int)w16(o, 2));
    d.process(frame(3, 12, 8, 60), 5000);                     // impulse again: pause measured = 1000 ms
    eqInt("pause measured", 1000, d.learnedPauseMs());
    d.process(frame(2, 12, 8, 60), 9000);
    o = d.process(frame(2, 12, 8, 60), 9100);
    eqInt("relax first 300 ms", 2, (int)w16(o, 2));
    o = d.process(frame(2, 12, 8, 60), 9400);
    eqInt("2nd impulse on", 3, (int)w16(o, 2));
    eqInt("2nd impulse 5 Hz → 200 ms", 200, (int)w16(o, 10));
    eqInt("2nd impulse 50 %", 30, lv(o, 8));
    o = d.process(frame(2, 12, 8, 60), 9850);
    eqInt("off 200 ms before the impulse", 2, (int)w16(o, 2));
    o = d.process(frame(2, 12, 8, 60), 12000);                // XBody kept pausing (a held pause): never longer
    eqInt("never past the measured pause", 2, (int)w16(o, 2));
    o = d.process(frame(0, 12, -1, 0), 12050);                // stop
    eqInt("stop passes", 0, (int)w16(o, 2));
    o = d.process(frame(2, 12, 8, 60), 12100);                // training again: has to measure again
    eqInt("after stop: measured again", 0, d.learnedPauseMs());

    Shaper h;                                                 // strength cap and Hz under the main one
    dc.dblPct = 150; dc.dblHz = 10;
    h.setConfig(dc);
    h.process(frame(3, 250, 8, 40000), 0);                    // 4 Hz main
    h.process(frame(2, 250, 8, 40000), 4000);
    h.process(frame(3, 250, 8, 40000), 6000);
    h.process(frame(2, 250, 8, 40000), 10000);
    o = h.process(frame(2, 250, 8, 40000), 10500);
    eqInt("capped at the board's 100 %", UEMS_MAX, lv(o, 8));
    eqInt("under the main Hz (3 Hz)", 333, (int)w16(o, 10));
    Shaper z;                                                 // strength 0: nothing
    z.setConfig(dc);
    z.process(frame(3, 12, -1, 0), 0); z.process(frame(2, 12, -1, 0), 4000); z.process(frame(3, 12, -1, 0), 5000);
    z.process(frame(2, 12, -1, 0), 9000);
    eqInt("no 2nd impulse at strength 0", 2, (int)w16(z.process(frame(2, 12, -1, 0), 9400), 2));
    Bytes other(4, 0); other[0] = 0x4F;
    eqInt("other frames pass", 1, d.process(other, 0) == other);
}

int main() {
    cableWiring();
    cableShaper();
    zones();
    bodytechGolden();
    xemsFrames();
    safety();
    xemsSession();
    bodytechSession();
    wiemsGolden();
    wiemsSession();
    bridgeLines();
    std::printf("%s: %d checks, %d failed\n", fails ? "FAIL" : "OK", checks, fails);
    return fails ? 1 : 0;
}
