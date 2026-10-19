// The panel's brain: bridge port, the suits around, the linked suit's training, the note line, saved settings.
// Plain QObject with timerEvent (no moc on the unit's toolchain): the screen widgets read it and call it.
#pragma once
#include "../core/suit.h"
#include "../core/xbcable.h"
#include "serial.h"
#include <QBasicTimer>
#include <QObject>
#include <QPoint>
#include <QString>
#include <map>
#include <vector>

class PanelWidget;
class QProcess;
class TabWidget;
class SessionTab;

struct Seen {
    std::string mac, name;
    int kind, rssi;
    unsigned lastMs;
};

// One wireless suit / unit in training: each has its own training screen (the panel shows one at a time — XBody's
// layout, the same for every kind) and its own tab with a STOP under the XEMS tab while XBody is in front.
struct Session {
    Suit *suit;
    std::string mac, name;
    Program prog;
    bool age60;
    int wiring;
    bool female;   // the body figures (owner: female by default)
    bool linkOk;   // false: the link dropped — kept on pause until the same suit is back (it reconnects by itself)
    Session() : suit(0), age60(false), wiring(0), female(true), linkOk(true) {}
};

class App : public QObject {
public:
    enum View { NO_BRIDGE, PICK, LINKING, TRAIN };
    enum { MAX_SESSIONS = 4 };   // = the bridge's links
    App();
    ~App();
    void setWidgets(PanelWidget *p, TabWidget *t) { panel_ = p; tab_ = t; }
    void addSessionTab(SessionTab *s) { stabs_.push_back(s); }

    unsigned now() const;
    View view() const;
    const std::vector<Seen> &seen() const { return seen_; }
    // The session the panel shows (0 = the suit list).
    Suit *suit() { return cur_ >= 0 && cur_ < (int)ses_.size() ? ses_[cur_].suit : 0; }
    const std::string &suitName() const;
    // ---- every session (the tabs) ----
    int sessions() const { return (int)ses_.size(); }
    Suit *sessionSuit(int i) { return i >= 0 && i < (int)ses_.size() ? ses_[i].suit : 0; }
    std::string sessionName(int i) const { return i >= 0 && i < (int)ses_.size() ? ses_[i].name : std::string(); }
    int current() const { return cur_; }
    void showSession(int i);                      // its training screen
    void showPick();                              // the suit list: one more suit
    void stopSession(int i);                      // the tab's STOP: its outputs off now
    bool panelOpen() const;
    QPoint tabCorner() const;                      // where the XEMS tab is (the session tabs hang under it)
    const std::string &linkingMac() const { return linkingMac_; }
    QString note() const;
    bool noteWarn() const { return noteWarn_; }
    bool age60() const { return age60_; }
    // The cable standard of the suit on the screen (else the XEMS default): XEMS — its own or XBody's cables; WiEMS —
    // an XBody suit (WIRE_XEMS, native) or an XEMS suit on its XBody-standard leads (WIRE_XBODY).
    int wiring() const { return cur_ >= 0 && cur_ < (int)ses_.size() ? ses_[cur_].wiring : wiring_; }
    bool sessionLinked(int i) const { return i >= 0 && i < (int)ses_.size() && ses_[i].linkOk; }
    bool female() const;                          // the body figures of the session on the screen
    void setFemale(bool f);                       // at once, also mid-training
    bool dark() const { return dark_; }           // the panel's theme (owner, mod v29: light = XBody's, and a dark one)
    void setDark(bool d);                         // saved at once
    bool bridgeOk() const { return port_ && port_->ok() && helloMs_ != 0; }
    // Bridge firmware: an older one is updated by itself (DFU → UF2 drive → /opt/xems/bin/xems-uf2 copies it).
    bool bridgeUpdating() const { return dfuSent_; }
    QString uf2State() const;                     // flashing | done | error … (fresh only), else empty
    // What the unit sees of the bridge while it is not answering: a XIAO on USB, the port, bytes heard.
    struct BridgeDiag { bool usb; QString port; long rx; };
    const BridgeDiag &bridgeDiag() const { return diag_; }
    // Every Bluetooth device the bridge hears (suit or not) in the last 10 s, and the bridge's own report count (-1:
    // an older bridge) — "Bluetooth наоколо: N" while looking for suits; the list goes to /tmp/xems-bridge.state.
    int nearby() const;
    long bridgeHeard() const { return bridgeHeard_; }
    bool bleOff() const { return bleOff_; }

    // ---- XBody's own cable output (xems-xbproxy): suit standard + double impulse ----
    struct CableLive {
        bool running, training, second;
        int wiring;
        std::string program;   // the program playing this training ("" none)
        int programSeg, programS, programMin;   // programMin: its length this training
        bool programOver;
        long boardRx;          // bytes the stimulator board sent back (feedback probe)
    };
    const xbcable::Config &cable() const { return cable_; }
    void setCable(const xbcable::Config &c);       // saved at once (the proxy picks it up within 0.5 s)
    const CableLive &cableLive() const { return cableLive_; }   // running = the proxy answers (state < 5 s old)
    // The phone over USB (xems-link): connected, its version, a downloaded update waiting for the next boot.
    struct PhoneLink { bool phone; QString phoneVer, pending, state; };
    const PhoneLink &phoneLink() const { return phone_; }

    // ---- what the screen asks for ----
    void connectTo(const std::string &mac);
    void forget();                               // disconnect, back to the list
    void startPause();
    void stopRun();
    void strengthStep(int d);
    void setChannel(int i, int pct);
    void setZone(const Zone &z, int pct);
    void setWiring(int w);                        // every body zone keeps its %, the channels behind it change
    void applyProgram(const Program &p, bool age60);   // through the safety limits, note if corrected
    void openPanel();
    void hidePanel();
    // Install an XEMS update from a USB stick now (our panel's "Обнови от USB"): runs
    // /opt/xems/bin/xems-usb-update, returns a short Bulgarian result line for a toast.
    QString updateFromUsb();
    // The internet, only when the trainer asks (/opt/xems/bin/xems-net, in the background; nothing polls):
    // NET_UPDATE = a newer mod from our server (the panel's loop installs it), NET_LOG = the last 2 minutes of logs.
    enum NetJob { NET_NONE, NET_UPDATE, NET_LOG };
    void netStart(int job);
    bool netBusy() const { return net_ != 0; }
    int netJob() const { return netJob_; }
    QString netLine() const { return netLine_; }   // its progress, then its result — in Bulgarian
    bool netOk() const { return netOk_; }
    // Wi-Fi (/opt/xems/bin/xems-wifi, the panel's Wi-Fi page): a scan when the page opens or on "Търси", a join
    // when a network is tapped. Nothing in the background.
    struct WifiNet { QString ssid; int dbm, sec; };   // sec: 0 open, 1 WPA/WPA2, 2 not supported (EAP / WEP)
    enum WifiJob { WIFI_NONE, WIFI_SCAN, WIFI_CONNECT, WIFI_FORGET };
    void wifiStart(int job, const QString &ssid = QString(), const QString &pass = QString());
    bool wifiBusy() const { return wifiProc_ != 0; }
    int wifiJob() const { return wifiJob_; }
    const std::vector<WifiNet> &wifiNets() const { return wifiNets_; }
    QString wifiSsid() const { return wifiSsid_; }   // the network it is on ("" none)
    QString wifiIp() const { return wifiIp_; }
    QString wifiLine() const { return wifiLine_; }   // progress / result, in Bulgarian
    bool wifiOk() const { return wifiOk_; }
    bool wifiNoRadio() const { return wifiNoRadio_; }

protected:
    void timerEvent(QTimerEvent *e);

private:
    void line(const std::string &l, unsigned t);
    int find(const std::string &mac) const;
    void drop(int i, const QString &why);          // a session ends (link lost / forgotten)
    void send(const std::string &s);
    void setNote(const QString &s, bool warn);
    void save();
    void load();
    void rememberZones(int i);                     // the session's zones + strength → kept per suit kind
    void restoreZones(Session &n);
    void lostLink(int i, const QString &why);       // kept on pause, reconnects by itself

    BridgePort *port_;
    bool fake_;
    QBasicTimer timer_;
    unsigned t0_, helloMs_, lastPingMs_, lastOpenMs_, lastRxMs_;
    std::vector<Seen> seen_;
    std::vector<Session> ses_;
    int cur_;
    std::vector<SessionTab *> stabs_;
    std::string linkingMac_, lastMac_;
    unsigned linkingSinceMs_;
    bool scanning_;
    Program prog_;
    bool age60_;
    int wiring_, wiWiring_;
    bool female_, dark_;
    // The zones (screen order) and strength as last set, per suit kind (owner: they stay as set, also over restarts).
    int keptZones_[3][Suit::MAX_CH], keptStrength_[3];
    unsigned keptSavedMs_;
    int bridgeVer_, bundledVer_;
    bool dfuSent_;
    xbcable::Config cable_;
    CableLive cableLive_;
    PhoneLink phone_;
    unsigned cableReadMs_;
    void readCableState();
    QProcess *net_;
    int netJob_;
    QString netLine_, netOut_;
    bool netOk_;
    unsigned netSinceMs_;
    void pollNet(unsigned t);
    void netSay(const QString &l);
    QProcess *wifiProc_;
    int wifiJob_;
    QString wifiOut_, wifiLine_, wifiSsid_, wifiIp_, wifiTarget_;
    bool wifiOk_, wifiNoRadio_;
    unsigned wifiSinceMs_;
    std::vector<WifiNet> wifiNets_, wifiScan_;
    void pollWifi(unsigned t);
    BridgeDiag diag_;
    struct Heard { unsigned ms; int rssi; std::string svc, name; };
    std::map<std::string, Heard> heard_;
    long bridgeHeard_;
    bool bleOff_;
    unsigned diagMs_;
    void readDiag();
    void wifiSay(const QString &l);
    QString note_;
    bool noteWarn_;
    unsigned noteUntilMs_;
    PanelWidget *panel_;
    TabWidget *tab_;
    int strengthMem_;
    bool busy_;             // a suit is linked → /tmp/xems-busy is set (a USB update waits to restart the panel)
};
