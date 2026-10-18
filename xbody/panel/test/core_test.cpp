// Host tests of the panel core: protocol bytes, safety limits, the impulse / pause clock.
//   sh scripts/xbody/test-panel.sh
#include "../core/xbcable.h"
#include "../core/xbprog.h"
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
    eqHex("wi currents (the vendor's own frame, check bits)", "00 0C 00 02 0F 8F 8F 8D 0D 00 0F", wi::currents(c));
    int big[10] = {300, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    eqHex("wi currents cap", "00 14 00 00 80 00 80 00 00 00 00", wi::currents(big));
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
    eqHex("wi start prog (Ru 1 s)", "01 29 55 04 04 01 00 7E 05 02 04", f[0]);
    eqHex("wi rest: nothing in the pause", "02 05 00 00 00 00 00 00 00 A5 A0", f[1]);
    eqHex("wi start run", "04 25", f.back());
    s.tick(2000);
    eqInt("wi still counting", Suit::IDLE, s.state());
    Bytes n;
    fromHex("0401", n);
    s.notify(n, 4000);   // the unit's first "01"
    s.tick(5100);
    f = drain(s, 5100);
    eqInt("wi running", Suit::RUNNING, s.state());
    eqInt("wi begin frames", 3, (int)f.size());
    eqHex("wi begin zero", "00 00 00 00 00 00 00 00 00 00 00", f[0]);
    eqHex("wi begin prog", "01 29 55 04 04 01 00 7E 05 00 06", f[1]);
    // zones start at 0 (owner): only ch 1 (50 % × 40 % = 20 % → byte 4), the check bits for XOR 4 on ch 5
    eqHex("wi full at once: the unit rises by itself", "00 00 04 00 00 00 80 00 00 00 00", f[2]);
    fromHex("0401", n);
    s.notify(n, 9000);
    s.tick(9200);   // impulse over → the unit's own pause: nothing written (as the vendor)
    f = drain(s, 9200);
    eqInt("wi pause: nothing written", 0, (int)f.size());
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
    // the measured order (owner, WiEMS app 1.15): "Ръце" = unit channel 7 (к.8), "Трапец" channel 3 (к.4)
    const Zone *z;
    int nz = Suit::zones(Suit::WIEMS, &z);
    eqInt("wi zones", 10, nz);
    eqInt("wi arms ch", 7, z[8].ch[0]);
    eqInt("wi trapez ch", 3, z[6].ch[0]);
    eqInt("wi ch0 name back thigh", 1, std::strcmp(Suit::channelName(Suit::WIEMS, 0), "Задно бедро") == 0 ? 1 : 0);
    Suit w(Suit::WIEMS);
    w.linked(0);
    drain(w, 0);
    for (int i = 0; i < 10; i++) w.setZone(z[i], 0);
    w.setZone(z[8], 100);   // only the arms
    w.setStrength(20);
    w.start(0);
    drain(w, 0);
    fromHex("0401", n);
    w.notify(n, 2500);
    w.tick(2500);
    w.tick(3100);
    f = drain(w, 3100);
    eqHex("wi arms only → ch 7 (check bit on ch 5)", "00 00 00 00 00 00 80 00 04 00 00", f.empty() ? Bytes() : f.back());
    // ---- the owner's traces on the Lenovo app, now on the panel: the vendor's pace, a trip, a stop, a silent unit
    Suit v(Suit::WIEMS);
    v.linked(0);
    drain(v, 0);
    for (int i = 0; i < 10; i++) v.setZone(z[i], 25);
    v.setStrength(100);
    v.start(0);
    drain(v, 0);
    fromHex("0401", n);
    v.notify(n, 4100);
    v.tick(4100);
    f = drain(v, 4100);
    eqHex("wi v begin: all at 5 (XOR 0, no bits)", "00 05 05 05 05 05 05 05 05 05 05", f.empty() ? Bytes() : f.back());
    v.tick(4200);
    v.setZone(z[3], 30);   // Корем, a finger: waits to settle and for the gap
    v.setZone(z[3], 35);
    v.setZone(z[3], 45);
    eqInt("wi v held (gap 0.8 s)", 0, (int)drain(v, 4300).size());
    f = drain(v, 5000);
    eqInt("wi v one write for three taps", 1, (int)f.size());
    eqHex("wi v Корем 9 on ch 5, check bits (XOR 12 → ch 4, 5)", "00 05 05 05 05 85 89 05 05 05 05", f.empty() ? Bytes() : f[0]);
    v.setZone(z[3], 45);
    eqInt("wi v the same value: nothing", 0, (int)drain(v, 6000).size());
    v.notify(n, 6000);
    v.tick(6000);
    fromHex("0486", n);    // the unit's protection: back to what ran, named, paused, 0 + stop
    v.notify(n, 6050);
    eqInt("wi v trip → paused", Suit::PAUSED, v.state());
    int code = 0, hch = -1;
    eqInt("wi v trip seen", Suit::HALT_TRIP, v.takeHalt(&code, &hch));
    eqInt("wi v trip code", 0x86, code);
    eqInt("wi v trip names Корем (ch 5)", 5, hch);
    eqInt("wi v Корем back to 25", 25, v.zone(z[3]));
    f = drain(v, 6100);
    eqHex("wi v trip → stop", "04 00", f.empty() ? Bytes() : f.back());
    eqInt("wi v taken once", Suit::HALT_NONE, v.takeHalt(0, 0));
    v.start(7000);         // ▶ again: runs; then the unit goes silent → paused
    drain(v, 7000);
    fromHex("0401", n);
    v.notify(n, 11100);
    v.tick(11100);
    drain(v, 11100);
    eqInt("wi v runs again", Suit::RUNNING, v.state());
    v.tick(16300);
    eqInt("wi v silent 5 s → paused", Suit::HALT_SILENT, v.takeHalt(0, 0));
    // a START cancelled in the count-down: the queued start never goes out
    Suit c(Suit::WIEMS);
    c.linked(0);
    drain(c, 0);
    c.start(0);
    c.next(0);             // the program is on air
    c.pause(10);
    c.ack(true);
    f = drain(c, 20);
    bool started = false;
    for (size_t i = 0; i < f.size(); i++) started = started || (f[i].size() == 2 && f[i][0] == 4 && f[i][1] == 0x25);
    eqInt("wi cancelled count-down: no 25", 0, started ? 1 : 0);
    // the link drops mid-training: kept on pause, the time done kept
    Suit d(Suit::WIEMS);
    d.linked(0);
    drain(d, 0);
    d.setZone(z[0], 40);
    d.start(0);
    drain(d, 0);
    fromHex("0401", n);
    d.notify(n, 4100);
    d.tick(4100);
    drain(d, 4100);
    d.tick(64100);
    int left = d.secondsLeft(64100);
    d.lost(64100);
    eqInt("wi lost → paused", Suit::PAUSED, d.state());
    eqInt("wi lost keeps the zone", 40, d.zone(z[0]));
    eqInt("wi lost keeps the time", left, d.secondsLeft(70000));
    // an XEMS suit on the unit's leads (the owner's table): Ръце → the lead "Корем" (measured ch 5)
    const Zone *zx;
    Suit::zones(Suit::WIEMS, &zx, Suit::WIRE_XBODY);
    eqInt("wi xems suit: Ръце → ch 5", 5, zx[8].ch[0]);
    eqInt("wi xems suit: Гърди → ch 9", 9, zx[7].ch[0]);
    eqInt("wi xems suit: Гръб → ch 1", 1, zx[5].ch[0]);
    BridgeEvent e = parseBridgeLine("ADV 88:6B:0F:CC:BE:49 -58 WIEMS WIEMS_-_EMS_Device");
    eqInt("wi adv kind", Suit::WIEMS, suitKind(e.svc, e.name));
    eqInt("wi kind by name", Suit::WIEMS, suitKind("-", "WIEMS - EMS Device"));
}

static void doubleImpulse() {
    // XEMS: the pause carries the second impulse — its strength share and its Hz, output on
    Suit x(Suit::XEMS);
    x.linked(0);
    drain(x, 0);
    Program p;
    p.dbl = true;
    p.dblHz = 6;
    p.dblPct = 50;
    p.onS = 4;
    p.offS = 8;
    std::string why;
    x.setProgram(p, -1, &why);
    eqInt("x dbl kept", 1, x.program().dbl ? 1 : 0);
    x.setStrength(40);
    x.start(0);
    x.tick(600);
    drain(x, 600);
    x.tick(4000);   // impulse over → the second impulse
    std::vector<Bytes> f = drain(x, 4000);
    eqInt("x dbl frames", 2, (int)f.size());
    eqInt("x dbl strength 50 %", 20, f.size() ? f[0][4] : -1);
    eqInt("x dbl Hz", 6, f.size() > 1 ? f[1][6] : -1);
    eqInt("x dbl output on", 1, f.size() > 1 ? f[1][13] : -1);
    eqInt("x dbl live level", 20, x.liveLevel(0));
    // the safety limits: Hz₂ ≤ 10 and under the main
    p.dblHz = 30;
    x.stop();
    x.setProgram(p, -1, &why);
    eqInt("x dbl Hz capped", 10, x.program().dblHz);
    // bodytech: the pause's Hz on every channel, back to the main at the next impulse
    Suit b(Suit::BODYTECH);
    b.linked(0);
    drain(b, 0);
    p.dblHz = 5;
    b.setProgram(p, -1, 0);
    b.setStrength(60);
    b.start(0);
    b.tick(600);
    drain(b, 600);
    b.tick(4000);
    f = drain(b, 4000);
    eqHex("bt dbl Hz ch1", "36 00 10 00 03 0D 40 C9", f.empty() ? Bytes() : f[0]);
    b.tick(12000);
    f = drain(b, 12000);
    Bytes back;
    for (size_t i = 0; i < f.size(); i++) if (toHex(f[i]).compare(0, 6, "360010") == 0) { back = f[i]; break; }
    eqHex("bt main Hz back", "36 00 10 00 00 2D F4 C9", back);
    // WiEMS: the unit's own rest = Hz₂ at its %
    Suit w(Suit::WIEMS);
    w.linked(0);
    drain(w, 0);
    p.dblHz = 7;
    p.dblPct = 60;
    w.setProgram(p, -1, 0);
    w.start(0);
    f = drain(w, 0);
    eqHex("wi dbl rest", "02 07 3C 00 00 00 00 00 00 A5 9E", f.size() > 1 ? f[1] : Bytes());
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
    e = parseBridgeLine("PONG 6 1234");
    eqInt("pong v6 version", 6, bridgeVersion(e));
    eqInt("pong v6 heard", 1234, e.rssi);
    e = parseBridgeLine("PONG 6 0 ble-off");
    eqInt("pong v6 radio off", 1, (int)(e.name == "ble-off"));
    eqInt("pong old: no count", -1, parseBridgeLine("PONG 5").rssi);
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
// XBody uems index of a body part, as the real xbody_control writes it (emulator capture, 2026-10-15: one zone
// raised at a time; "Прасец" = optional). docs/xbody-protocol.md.
static int xbPart(const std::string &n) {
    const char *N[10] = {"Трапец", "Гръб", "Гърди", "Кръст", "Ръце", "Корем", "Седалище", "Предно бедро",
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
    // Pinned to the measurement, not to a name table (owner's report: XBody's "Корем" came out on an XEMS suit's
    // back — abdomen and bottom were swapped). XBody GUI zone → uems: abdomen 5, bottom 6, legflex 8, arm 4.
    eqInt("GUI abdomen (uems 5) → legflex lead (= XEMS Корем)", 8, xemsLead(5));
    eqInt("GUI bottom (uems 6) → trapez lead (= XEMS Седалище)", 0, xemsLead(6));
    eqInt("GUI back (uems 1) → bottom lead (= XEMS Гръб)", 6, xemsLead(1));
    eqInt("GUI arm (uems 4) → abdomen lead (= XEMS Ръце)", 5, xemsLead(4));
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

static std::string numS(int v) {
    char b[16];
    std::snprintf(b, sizeof b, "%d", v);
    return b;
}

// Every ready program at every length against the absolute limits (docs/xems-auto-mode-spec.md §4.1) and the length.
static void programLimits() {
    const xbprog::Program *ps;
    int n = xbprog::programs(&ps);
    eqInt("seven passive programs", 7, n);
    int posts = 0;
    for (int k = 0; k < n; k++) {
        eqInt((std::string(ps[k].id) + " own length").c_str(), ps[k].minutes * 60000, xbprog::totalMs(ps[k]));
        if (ps[k].post) posts++;
        for (int li = -1; li < xbprog::LEN_N; li++) {
            xbprog::Plan pl;
            int want = li < 0 ? 0 : xbprog::LENGTHS[li];
            eqInt("plan made", 1, xbprog::plan(ps[k], want, &pl));
            const xbprog::Program p = pl.program();
            std::string id = std::string(p.id) + "@" + (want ? numS(want) : std::string("own"));
            eqInt(id.c_str(), (want ? want : ps[k].minutes) * 60000, xbprog::totalMs(p));
            eqInt((id + " after-training version at 10").c_str(), want == 10 && ps[k].post, pl.post);
            if (pl.post) eqInt((id + " post is 10 min of its own").c_str(), 600000, xbprog::totalMs(p));
            bool drain = std::string(p.id) == "drain", noDouble = std::string(p.id) == "postpartum";   // L12
            for (int i = 0; i < p.n; i++) {
                const xbprog::Seg &g = p.segs[i];
                std::string w = id + "/" + g.name;
                int hz = g.hz > g.hz2 ? g.hz : g.hz2;
                eqInt((w + " ≥ 30 s").c_str(), 1, g.ms >= 30000);
                if (!g.wave && hz >= 20) eqInt((w + " ≥ 20 Hz work ≤ 15 min without a break").c_str(), 1, g.ms <= xbprog::WORK_MAX);
                if (i == 0 && want == 10 && !pl.post)
                    eqInt((w + " 10: no warm-up, starts ≤ 80 %").c_str(), 1,
                          (g.wave || g.e0 <= 80) && (ps[k].n < 3 || std::string(g.name) != ps[k].segs[0].name || g.wave));
                if (i == 0 && want == 15 && ps[k].n > 2 && std::string(g.name) == ps[k].segs[0].name && !g.wave)
                    eqInt((w + " 15: warm-up 2 min").c_str(), 120000, g.ms);
                if (hz >= 20) {
                    eqInt((w + " L1 on ≤ 4 s").c_str(), 1, g.onMs <= 4000);
                    eqInt((w + " L2 ramp ≥ 0.3 s").c_str(), 1, g.upMs >= 300);
                    if (!g.wave) eqInt((w + " L3 rest ≥ on").c_str(), 1, g.offMs >= g.onMs);
                }
                if (hz >= 70) eqInt((w + " L4 ≤ 400 µs").c_str(), 1, g.us <= 400);
                if (hz >= 100) eqInt((w + " L4 ≤ 300 µs").c_str(), 1, g.us <= 300);
                eqInt((w + " L5 150–400 µs").c_str(), 1, g.us >= 150 && g.us <= 400);
                eqInt((w + " envelope ≤ 100").c_str(), 1, g.e0 <= 100 && g.e1 <= 100 && g.e0 > 0 && g.e1 > 0);
                eqInt((w + " a wave or weights").c_str(), 1, (g.wave != 0) != (g.w != 0));
                if (noDouble) eqInt((w + " L12 no 2nd impulse").c_str(), 0, g.dblHz);
                if (drain) eqInt((w + " L12 drainage: none in the wave, ≤ 30 % ≤ 5 Hz after it").c_str(), 1,
                                 !g.dblHz || (!g.wave && g.dblPct <= 30 && g.dblHz <= 5 && pl.post));
                if (g.dblHz) {
                    eqInt((w + " 2nd ≤ 10 Hz, under main, ≤ 50 %").c_str(), 1, g.dblHz <= 10 && g.dblHz < g.hz && g.dblPct <= 50);
                    eqInt((w + " 2nd has a window ≥ 0.5 s").c_str(), 1, g.offMs >= 1000);
                }
            }
            eqInt((id + " ends soft (last segment ≤ 50 %)").c_str(), 1, p.segs[p.n - 1].e1 <= 50);
        }
    }
    eqInt("after-training versions: drain, shaping, cellulite", 3, posts);
    xbprog::Plan pl;
    static const char *const POSTS[] = {"drain", "shaping", "cellulite"};
    for (int q = 0; q < 3; q++) {
        const char *id = POSTS[q];
        xbprog::plan(*xbprog::byId(id), 10, &pl);
        bool dbl = false;
        for (int i = 0; i < pl.info.n; i++) dbl = dbl || pl.segs[i].dblHz;
        eqInt((std::string(id) + " after training: a second impulse").c_str(), 1, dbl);
    }
}

// The runner: never above XBody's level (the ceiling), the wave's order, the end.
static void programRun() {
    const xbprog::Program *ps;
    int n = xbprog::programs(&ps);
    for (int k = 0; k < n; k++)
        for (int li = 0; li < xbprog::LEN_N; li++) {
            xbprog::Plan pl;
            xbprog::plan(ps[k], xbprog::LENGTHS[li], &pl);
            const xbprog::Program p = pl.program();
            bool ok = true, ended = false;
            for (unsigned t = 0; t < (unsigned)xbprog::totalMs(p) + 2000; t += 50) {
                unsigned u[10], in[10];
                for (int i = 0; i < 10; i++) u[i] = in[i] = 1000 + i * 3000 + (t % 7);
                xbprog::Out o;
                bool on = xbprog::step(p, t, u, &o);
                for (int i = 0; i < 10; i++) ok = ok && u[i] <= in[i];
                ok = ok && (!o.stim || (o.tp >= 1 && o.us >= 150 && o.us <= 400));
                ok = ok && (on || t >= (unsigned)xbprog::totalMs(p));
                ended = ended || !on;
            }
            eqInt((std::string(p.id) + "@" + numS(xbprog::LENGTHS[li]) + " never above XBody's level, ends on time").c_str(),
                  1, ok && ended);
        }
    const xbprog::Program *d = xbprog::byId("drain");
    unsigned u[10];
    xbprog::Out o;
    for (int i = 0; i < 10; i++) u[i] = 10000;
    xbprog::step(*d, 1500, u, &o);   // first step: abdomen + waist, at 90 %, ramp done
    eqInt("drain step 1 abdomen", 9000, (int)u[5]);
    eqInt("drain step 1 waist", 9000, (int)u[3]);
    eqInt("drain step 1 legs off", 0, (int)u[7]);
    eqInt("drain 35 Hz", 29, (int)o.tp);
    for (int i = 0; i < 10; i++) u[i] = 10000;
    xbprog::step(*d, 4000 + 1500, u, &o);   // second step: trapez full, abdomen + waist at half
    eqInt("drain step 2 trapez", 9000, (int)u[0]);
    eqInt("drain step 2 previous at half", 4500, (int)u[5]);
    for (int i = 0; i < 10; i++) u[i] = 10000;
    xbprog::step(*d, 180000 + 1500, u, &o);   // legs wave starts at the calf
    eqInt("legs wave starts at the calf", 9000, (int)u[9]);
    for (int i = 0; i < 10; i++) u[i] = 10000;
    xbprog::step(*d, 180000 + 16000 + 2000, u, &o);   // the 5-s rest after the four leg groups
    eqInt("wave rest: off", 0, o.stim);
    for (int i = 0; i < 10; i++) u[i] = 10000;
    eqInt("over after 20 min", 0, xbprog::step(*d, 20 * 60000, u, &o));
    eqInt("over: all off", 0, (int)u[0] + o.stim);
    const xbprog::Program *r = xbprog::byId("regen");
    for (int i = 0; i < 10; i++) u[i] = 10000;
    xbprog::step(*r, 1000, u, &o);
    eqInt("regen 1st cycle 3 Hz", 333, (int)o.tp);
    xbprog::step(*r, 12000 + 1000, u, &o);
    eqInt("regen 2nd cycle 8 Hz", 125, (int)o.tp);
    const xbprog::Program *c = xbprog::byId("cellulite");
    for (int i = 0; i < 10; i++) u[i] = 10000;
    xbprog::step(*c, 150000 + 4000 + 1000, u, &o);   // tone segment, in the pause: its second impulse
    eqInt("cellulite 2nd impulse 8 Hz", 1, o.second && o.tp == 125);
    eqInt("cellulite 2nd impulse half of the level", 5000, (int)u[6]);
    eqInt("cellulite back stays off", 0, (int)u[1]);
    xbprog::Plan pl;
    xbprog::plan(*xbprog::byId("drain"), 10, &pl);
    xbprog::Program dp = pl.program();
    eqInt("drain at 10 = after training", 1, pl.post && dp.n == 4);
    for (int i = 0; i < 10; i++) u[i] = 10000;
    xbprog::step(dp, 480000 + 2000 + 500, u, &o);   // the pump, in its pause: a 3-Hz second impulse
    eqInt("drain pump 2nd impulse 3 Hz", 1, o.second && o.tp == 333);
    eqInt("drain pump 2nd impulse ≤ 30 %", 1, u[0] <= 3000 && u[0] > 0);
    for (int i = 0; i < 10; i++) u[i] = 10000;
    xbprog::step(dp, 60000 + 3500, u, &o);   // the legs wave, in its pause: nothing
    eqInt("drain wave pause clean", 0, o.stim);
    xbprog::plan(*xbprog::byId("shaping"), 10, &pl);
    for (int i = 0; i < 10; i++) u[i] = 10000;
    xbprog::step(pl.program(), 4000 + 1000, u, &o);
    eqInt("shaping after training starts at 85 Hz + 8 Hz second", 1, o.second && o.tp == 125);
    xbprog::plan(*xbprog::byId("metabolic"), 30, &pl);
    eqInt("metabolic stretched to 30", 1800000, xbprog::totalMs(pl.program()));
    eqInt("30: warm-up 3 min", 180000, pl.segs[0].ms);
    eqInt("30: end 3 min", 180000, pl.segs[pl.info.n - 1].ms);
    xbprog::plan(*xbprog::byId("back"), 10, &pl);
    eqInt("back at 10: no warm-up, starts at the work ≤ 80 %", 1, !pl.post && pl.segs[0].hz == 80 && pl.segs[0].e0 == 80);
    eqInt("back at 10: work 8 min + end 2 min", 1, pl.info.n == 2 && pl.segs[0].ms == 480000 && pl.segs[1].ms == 120000);
    xbprog::plan(*xbprog::byId("back"), 15, &pl);
    eqInt("back at 15: warm-up 2 min, work 11, end 2", 1,
          pl.segs[0].ms == 120000 && pl.segs[1].ms == 660000 && pl.segs[2].ms == 120000);
    xbprog::plan(*xbprog::byId("back"), 30, &pl);
    eqInt("back at 30: the work in two blocks with a massage between", 1,
          pl.info.n == 5 && pl.segs[1].hz == 80 && pl.segs[2].hz == 3 && pl.segs[2].hz2 == 8 && pl.segs[3].hz == 80);
    eqInt("back at 30: massage 2 min, works the same zones", 1, pl.segs[2].ms == 120000 && pl.segs[2].w == pl.segs[1].w);
    xbprog::plan(*xbprog::byId("back"), 0, &pl);
    eqInt("own length = the program as written", 1, pl.info.n == 3 && pl.segs[1].ms == 660000);

    // Through the Shaper: latched at the training's start, XBody's own clock ignored, stop ends it.
    xbcable::Shaper sh;
    xbcable::Config cfg;
    cfg.program = "back";
    sh.setConfig(cfg);
    Bytes fo = sh.process(frame(2, 12, 3, 20000), 0);        // XBody in its pause, the program in its 1st impulse
    eqInt("program drives the impulse", 3, (int)w16(fo, 2));
    eqInt("program Hz (4 Hz)", 250, (int)w16(fo, 10));
    eqInt("program width", 250, (int)w16(fo, 8));
    eqInt("program envelope 60 % at the start", 12000, lv(fo, 3));
    eqInt("program seg", 0, sh.programSeg());
    fo = sh.process(frame(3, 12, 3, 20000), 10500);          // XBody impulse, the program's 1-s rest
    eqInt("program rest beats XBody's impulse", 2, (int)w16(fo, 2));
    sh.setConfig(xbcable::Config());                         // unselected mid-run: plays on
    fo = sh.process(frame(3, 12, 3, 20000), 11500);
    eqInt("program latched mid-run", 1, sh.programLive() == "back");
    fo = sh.process(frame(0, 12, -1, 0), 12000);
    eqInt("stop ends it", 0, (int)w16(fo, 2));
    eqInt("program config roundtrip", 1, xbcable::parseConfig("program=drain\n").program == "drain");
    eqInt("unknown program refused", 1, xbcable::parseConfig("program=xyz\n").program.empty());
    eqInt("minutes roundtrip", 10, xbcable::parseConfig(xbcable::configText(xbcable::parseConfig("minutes=10\n"))).minutes);
    eqInt("odd minutes → own", 0, xbcable::parseConfig("minutes=7\n").minutes);

    xbcable::Shaper s2;   // the length latched with the program
    cfg = xbcable::Config();
    cfg.program = "drain";
    cfg.minutes = 10;
    s2.setConfig(cfg);
    s2.process(frame(2, 12, 3, 20000), 0);
    cfg.minutes = 30;
    s2.setConfig(cfg);
    s2.process(frame(2, 12, 3, 20000), 50);
    eqInt("length latched at START", 10, s2.programMinutes());
    s2.process(frame(2, 12, 3, 20000), 600000);
    eqInt("10 min → over at 10", 1, s2.programOver());
    s2.process(frame(0, 12, -1, 0), 600100);
    s2.process(frame(2, 12, 3, 20000), 700000);
    eqInt("next training takes the new length", 30, s2.programMinutes());
}

int main() {
    programLimits();
    programRun();
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
    doubleImpulse();
    bridgeLines();
    std::printf("%s: %d checks, %d failed\n", fails ? "FAIL" : "OK", checks, fails);
    return fails ? 1 : 0;
}
