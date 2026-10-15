// Line protocol of the XIAO BLE bridge (xbody/bridge/xems_bridge, docs/xbody-xems-panel.md): text lines over USB serial.
#pragma once
#include "bytes.h"
#include <string>

struct BridgeEvent {
    enum Type { NONE, HELLO, PONG, ADV, LINK, LOST, FAIL, NOTIFY, WOK, WERR, SAFEOK, SCANNING, ERR, DFUOK };
    Type type;
    std::string mac, svc, name, text;
    int rssi;
    Bytes data;
    BridgeEvent() : type(NONE), rssi(0) {}
};

BridgeEvent parseBridgeLine(const std::string &line);
// The firmware version a HELLO / PONG tells (0: another event or none given).
int bridgeVersion(const BridgeEvent &e);

namespace bridgecmd {
std::string ping();
std::string scan(bool on);
std::string conn(const std::string &mac);
std::string disc(const std::string &mac);
std::string write(const std::string &mac, const Bytes &b);
std::string safe(const std::string &mac, const Bytes &b);
std::string dfu();   // outputs off, then the board restarts as its UF2 drive (firmware v2+)
}
