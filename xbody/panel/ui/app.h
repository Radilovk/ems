// The panel's brain: bridge port, the suits around, the linked suit's training, the note line, saved settings.
// Plain QObject with timerEvent (no moc on the unit's toolchain): the screen widgets read it and call it.
#pragma once
#include "../core/suit.h"
#include "../core/xbcable.h"
#include "serial.h"
#include <QBasicTimer>
#include <QObject>
#include <QString>
#include <vector>

class PanelWidget;
class TabWidget;

struct Seen {
    std::string mac, name;
    int kind, rssi;
    unsigned lastMs;
};

class App : public QObject {
public:
    enum View { NO_BRIDGE, PICK, LINKING, TRAIN };
    App();
    ~App();
    void setWidgets(PanelWidget *p, TabWidget *t) { panel_ = p; tab_ = t; }

    unsigned now() const;
    View view() const;
    const std::vector<Seen> &seen() const { return seen_; }
    Suit *suit() { return suit_; }
    const std::string &suitName() const { return suitName_; }
    const std::string &linkingMac() const { return linkingMac_; }
    QString note() const;
    bool noteWarn() const { return noteWarn_; }
    bool age60() const { return age60_; }
    int wiring() const { return wiring_; }        // Suit::WIRE_XEMS / WIRE_XBODY: the XEMS suit's cable standard
    bool bridgeOk() const { return port_ && port_->ok() && helloMs_ != 0; }
    // Bridge firmware: an older one is updated by itself (DFU → UF2 drive → /opt/xems/bin/xems-uf2 copies it).
    bool bridgeUpdating() const { return dfuSent_; }
    QString uf2State() const;                     // flashing | done | error … (fresh only), else empty

    // ---- XBody's own cable output (xems-xbproxy): suit standard + double impulse ----
    struct CableLive {
        bool running, training, second;
        int wiring;
        std::string program;   // the program playing this training ("" none)
        int programSeg, programS;
        bool programOver;
        long boardRx;          // bytes the stimulator board sent back (feedback probe)
    };
    const xbcable::Config &cable() const { return cable_; }
    void setCable(const xbcable::Config &c);       // saved at once (the proxy picks it up within 0.5 s)
    const CableLive &cableLive() const { return cableLive_; }   // running = the proxy answers (state < 5 s old)

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

protected:
    void timerEvent(QTimerEvent *e);

private:
    void line(const std::string &l, unsigned t);
    void send(const std::string &s);
    void setNote(const QString &s, bool warn);
    void save();
    void load();
    void lost(const QString &why);

    BridgePort *port_;
    bool fake_;
    QBasicTimer timer_;
    unsigned t0_, helloMs_, lastPingMs_, lastOpenMs_, lastRxMs_;
    std::vector<Seen> seen_;
    Suit *suit_;
    std::string suitMac_, suitName_, linkingMac_, lastMac_;
    unsigned linkingSinceMs_;
    bool scanning_;
    Program prog_;
    bool age60_;
    int wiring_;
    int bridgeVer_, bundledVer_;
    bool dfuSent_;
    xbcable::Config cable_;
    CableLive cableLive_;
    unsigned cableReadMs_;
    void readCableState();
    QString note_;
    bool noteWarn_;
    unsigned noteUntilMs_;
    PanelWidget *panel_;
    TabWidget *tab_;
    int strengthMem_;
};
