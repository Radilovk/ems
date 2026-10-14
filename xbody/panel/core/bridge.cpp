#include "bridge.h"
#include <cstdlib>
#include <sstream>

BridgeEvent parseBridgeLine(const std::string &line) {
    BridgeEvent e;
    std::istringstream in(line);
    std::string w;
    in >> w;
    if (w == "HELLO") { e.type = BridgeEvent::HELLO; std::getline(in, e.text); }
    else if (w == "PONG") { e.type = BridgeEvent::PONG; in >> e.text; }
    else if (w == "SCANNING") { e.type = BridgeEvent::SCANNING; in >> e.text; }
    else if (w == "ADV") {
        std::string rssi;
        e.type = BridgeEvent::ADV;
        in >> e.mac >> rssi >> e.svc;
        std::getline(in, e.name);
        if (!e.name.empty() && e.name[0] == ' ') e.name.erase(0, 1);
        if (e.name == "-") e.name.clear();
        e.rssi = std::atoi(rssi.c_str());
    } else if (w == "LINK") { e.type = BridgeEvent::LINK; in >> e.mac >> e.svc; }
    else if (w == "LOST") { e.type = BridgeEvent::LOST; in >> e.mac >> e.text; }
    else if (w == "FAIL") { e.type = BridgeEvent::FAIL; in >> e.mac >> e.text; }
    else if (w == "N") {
        std::string hx;
        e.type = BridgeEvent::NOTIFY;
        in >> e.mac >> hx;
        fromHex(hx, e.data);
    } else if (w == "WOK") { e.type = BridgeEvent::WOK; in >> e.mac; }
    else if (w == "WERR") { e.type = BridgeEvent::WERR; in >> e.mac >> e.text; }
    else if (w == "SAFEOK") { e.type = BridgeEvent::SAFEOK; in >> e.mac; }
    else if (w == "ERR") { e.type = BridgeEvent::ERR; std::getline(in, e.text); }
    return e;
}

namespace bridgecmd {
std::string ping() { return "PING\n"; }
std::string scan(bool on) { return on ? "SCAN 1\n" : "SCAN 0\n"; }
std::string conn(const std::string &mac) { return "CONN " + mac + "\n"; }
std::string disc(const std::string &mac) { return "DISC " + mac + "\n"; }
std::string write(const std::string &mac, const Bytes &b) { return "W " + mac + " " + toHex(b) + "\n"; }
std::string safe(const std::string &mac, const Bytes &b) { return "SAFE " + mac + " " + toHex(b) + "\n"; }
}
