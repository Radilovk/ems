// Host tests of the panel core: protocol bytes, safety limits, the impulse / pause clock.
//   sh scripts/xbody/test-panel.sh
#include "../core/bridge.h"
#include "../core/btproto.h"
#include "../core/safe.h"
#include "../core/suit.h"
#include "../core/xemsproto.h"
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

int main() {
    zones();
    bodytechGolden();
    xemsFrames();
    safety();
    xemsSession();
    bodytechSession();
    bridgeLines();
    std::printf("%s: %d checks, %d failed\n", fails ? "FAIL" : "OK", checks, fails);
    return fails ? 1 : 0;
}
