#include "app.h"
#include "panel.h"
#include "../core/bridge.h"
#include "../core/safe.h"
#include <QSettings>
#include <QTimerEvent>
#include <cstdio>
#include <cstdlib>
#include <sys/time.h>

static QString U(const char *s) { return QString::fromUtf8(s); }

// ms from `since` to `t`; never negative (times stamped later in the same tick, e.g. by line(), give 0, not a wrap).
static int age(unsigned t, unsigned since) {
    int d = (int)(t - since);
    return d < 0 ? 0 : d;
}

static QString confPath() {
    const char *p = std::getenv("XEMS_CONF");
    return QString::fromLocal8Bit(p ? p : "/opt/xems/panel.conf");
}

App::App()
    : port_(0), fake_(std::getenv("XEMS_FAKE_BRIDGE") != 0), t0_(0), helloMs_(0), lastPingMs_(0), lastOpenMs_(0),
      lastRxMs_(0), suit_(0), linkingSinceMs_(0), scanning_(false), age60_(false), noteWarn_(false), noteUntilMs_(0),
      panel_(0), tab_(0), strengthMem_(0) {
    t0_ = now();
    load();
    timer_.start(20, this);
}

App::~App() {
    if (suit_ && port_ && port_->ok()) {
        send(bridgecmd::write(suitMac_, suit_->safeFrame()));
        send(bridgecmd::disc(suitMac_));
    }
    delete suit_;
    delete port_;
}

unsigned App::now() const {
    struct timeval tv;
    gettimeofday(&tv, 0);
    return (unsigned)(tv.tv_sec * 1000ULL + tv.tv_usec / 1000) - t0_;
}

App::View App::view() const {
    if (!bridgeOk()) return NO_BRIDGE;
    if (suit_) return TRAIN;
    if (!linkingMac_.empty()) return LINKING;
    return PICK;
}

QString App::note() const { return now() < noteUntilMs_ ? note_ : QString(); }

void App::setNote(const QString &s, bool warn) {
    note_ = s;
    noteWarn_ = warn;
    noteUntilMs_ = now() + 8000;
}

void App::send(const std::string &s) {
    if (std::getenv("XEMS_DEBUG")) std::fprintf(stderr, "%6u > %s", now(), s.c_str());
    if (port_ && port_->ok()) port_->write(s);
}

void App::load() {
    QSettings st(confPath(), QSettings::IniFormat);
    lastMac_ = st.value("suit/last").toString().toStdString();
    prog_.hz = st.value("program/hz", prog_.hz).toInt();
    prog_.us = st.value("program/us", prog_.us).toInt();
    prog_.onS = st.value("program/on", prog_.onS).toInt();
    prog_.offS = st.value("program/off", prog_.offS).toInt();
    prog_.totalS = st.value("program/total", prog_.totalS).toInt();
    age60_ = st.value("program/age60", false).toBool();
    // Saved values go through the limits too (an older file, a hand edit).
    int v[safe::N] = {prog_.hz, prog_.us, prog_.onS, prog_.offS, 0, 0, 0, prog_.rampMs};
    safe::apply(v, age60_ ? 65 : -1, 0);
    prog_.hz = v[safe::HZ]; prog_.us = v[safe::PW]; prog_.onS = v[safe::ON]; prog_.offS = v[safe::OFF];
}

void App::save() {
    QSettings st(confPath(), QSettings::IniFormat);
    st.setValue("suit/last", QString::fromStdString(lastMac_));
    st.setValue("program/hz", prog_.hz);
    st.setValue("program/us", prog_.us);
    st.setValue("program/on", prog_.onS);
    st.setValue("program/off", prog_.offS);
    st.setValue("program/total", prog_.totalS);
    st.setValue("program/age60", age60_);
}

void App::connectTo(const std::string &mac) {
    if (suit_) return;
    linkingMac_ = mac;
    linkingSinceMs_ = now();
    send(bridgecmd::conn(mac));
}

void App::forget() {
    if (suit_) {
        suit_->stop();
        send(bridgecmd::write(suitMac_, suit_->safeFrame()));   // straight out, not behind the queue
        send(bridgecmd::disc(suitMac_));
        delete suit_;
        suit_ = 0;
    }
    suitMac_.clear();
    lastMac_.clear();
    save();
}

void App::lost(const QString &why) {
    if (std::getenv("XEMS_DEBUG")) std::fprintf(stderr, "%6u ! lost: %s\n", now(), why.toUtf8().constData());
    if (!suit_) return;
    delete suit_;   // the bridge has already switched it off (SAFE frame) or the link is gone
    suit_ = 0;
    suitMac_.clear();
    setNote(why, true);
}

void App::startPause() {
    if (!suit_) return;
    if (suit_->state() == Suit::RUNNING || suit_->startPending()) suit_->pause(now());   // a pending start is cancelled
    else suit_->start(now());
}

void App::stopRun() {
    if (suit_) suit_->stop();
}

void App::strengthStep(int d) {
    if (suit_) suit_->setStrength(suit_->strength() + d);
}

void App::setChannel(int i, int pct) {
    if (suit_) suit_->setChannel(i, pct);
}

void App::applyProgram(const Program &p, bool age60) {
    std::string why;
    Suit probe(Suit::XEMS);
    probe.setProgram(p, age60 ? 65 : -1, &why);
    prog_ = probe.program();
    age60_ = age60;
    if (suit_ && suit_->state() != Suit::RUNNING) suit_->setProgram(prog_, age60_ ? 65 : -1, 0);
    if (!why.empty()) {
        QString w = QString::fromUtf8(why.c_str());
        w.replace('\n', U("  ·  "));
        setNote(U("Граница за безопасност: ") + w, true);
    }
    save();
}

void App::openPanel() {
    if (tab_) tab_->hide();
    if (panel_) { panel_->showFullScreen(); panel_->raise(); panel_->activateWindow(); }
}

void App::hidePanel() {
    if (panel_) panel_->hide();
    if (tab_) { tab_->show(); tab_->raise(); }
}

void App::line(const std::string &l, unsigned t) {
    BridgeEvent e = parseBridgeLine(l);
    if (std::getenv("XEMS_DEBUG")) std::fprintf(stderr, "%6u < %s\n", t, l.c_str());
    lastRxMs_ = t;
    switch (e.type) {
    case BridgeEvent::HELLO:
    case BridgeEvent::PONG:
        if (!helloMs_) scanning_ = false;   // a fresh bridge: say SCAN again
        helloMs_ = t;
        break;
    case BridgeEvent::ADV: {
        int k = suitKind(e.svc, e.name);
        if (k < 0) break;
        size_t i = 0;
        for (; i < seen_.size(); i++) if (seen_[i].mac == e.mac) break;
        if (i == seen_.size()) { Seen s; s.mac = e.mac; seen_.push_back(s); }
        seen_[i].name = e.name.empty() ? e.mac : e.name;
        seen_[i].kind = k;
        seen_[i].rssi = e.rssi;
        seen_[i].lastMs = t;
        break;
    }
    case BridgeEvent::LINK: {
        if (e.mac != linkingMac_ || suit_) { send(bridgecmd::disc(e.mac)); break; }
        Suit::Kind k = e.svc == "FE50" ? Suit::BODYTECH : Suit::XEMS;
        suit_ = new Suit(k);
        suit_->setProgram(prog_, age60_ ? 65 : -1, 0);
        suit_->setStrength(0);   // a new link always starts from 0
        suit_->linked(t);
        suitMac_ = e.mac;
        suitName_ = e.mac;
        for (size_t i = 0; i < seen_.size(); i++) if (seen_[i].mac == e.mac) suitName_ = seen_[i].name;
        send(bridgecmd::safe(e.mac, suit_->safeFrame()));
        linkingMac_.clear();
        lastMac_ = e.mac;
        save();
        setNote(U("Свързан ✓  ") + QString::fromStdString(suitName_), false);
        break;
    }
    case BridgeEvent::LOST:
        if (e.mac == suitMac_) lost(U("Връзката с костюма прекъсна — тренировката спря"));
        if (e.mac == linkingMac_) { linkingMac_.clear(); setNote(U("Костюмът не се свърза — опитай пак"), true); }
        break;
    case BridgeEvent::FAIL:
        if (e.mac == linkingMac_) {
            linkingMac_.clear();
            setNote(e.text == "no-suit-service" ? U("Това устройство не е костюм") : U("Костюмът не се свърза — опитай пак"),
                    true);
        }
        break;
    case BridgeEvent::NOTIFY:
        if (suit_ && e.mac == suitMac_) suit_->notify(e.data);
        break;
    case BridgeEvent::WOK:
        if (suit_ && e.mac == suitMac_) suit_->ack(true);
        break;
    case BridgeEvent::WERR:
        if (suit_ && e.mac == suitMac_) {
            send(bridgecmd::disc(suitMac_));
            lost(U("Костюмът не прие команда — тренировката спря"));
        }
        break;
    default:
        break;
    }
}

void App::timerEvent(QTimerEvent *ev) {
    if (ev->timerId() != timer_.timerId()) return;
    unsigned t = now();
    // ---- the bridge port ----
    if (!port_ || !port_->ok()) {
        if (helloMs_) {
            helloMs_ = 0;
            if (suit_) lost(U("Мостът е изваден — костюмът спря"));
        }
        if (age(t, lastOpenMs_) >= 1000 || !lastOpenMs_) {
            lastOpenMs_ = t;
            delete port_;
            port_ = 0;
            if (fake_) port_ = new FakeBridge();
            else {
                SerialPort *sp = new SerialPort();
                if (sp->open()) port_ = sp;
                else delete sp;
            }
            if (port_) send(bridgecmd::ping());
        }
    }
    if (port_ && port_->ok()) {
        port_->poll(t);
        std::string l;
        while (port_->readLine(l)) line(l, t);
        if (age(t, lastPingMs_) >= 1000) { lastPingMs_ = t; send(bridgecmd::ping()); }
        if (helloMs_ && age(t, lastRxMs_) > 4000) {   // a bridge that stopped talking (stuck, wrong device)
            helloMs_ = 0;
            if (suit_) lost(U("Мостът не отговаря — костюмът спря"));
        }
    }
    // ---- scanning: only while choosing / looking for the last suit ----
    bool wantScan = bridgeOk() && !suit_;
    if (bridgeOk() && wantScan != scanning_) { scanning_ = wantScan; send(bridgecmd::scan(wantScan)); }
    for (size_t i = 0; i < seen_.size();) {
        if (age(t, seen_[i].lastMs) > 6000) seen_.erase(seen_.begin() + i);
        else i++;
    }
    // Derive, don't ask: the last suit reconnects by itself when it shows up.
    if (bridgeOk() && !suit_ && linkingMac_.empty() && !lastMac_.empty())
        for (size_t i = 0; i < seen_.size(); i++)
            if (seen_[i].mac == lastMac_) { connectTo(lastMac_); break; }
    if (!linkingMac_.empty() && age(t, linkingSinceMs_) > 12000) {
        send(bridgecmd::disc(linkingMac_));
        linkingMac_.clear();
        setNote(U("Костюмът не отговори — включен ли е?"), true);
    }
    // ---- the suit ----
    if (suit_) {
        bool wasRunning = suit_->state() != Suit::IDLE;
        suit_->tick(t);
        if (wasRunning && suit_->finished()) setNote(U("Тренировката завърши ✓"), false);
        if (suit_->ackLate(t)) {
            send(bridgecmd::disc(suitMac_));
            lost(U("Костюмът спря да отговаря — тренировката спря"));
        } else {
            const Bytes *b = suit_->next(t);
            if (b) send(bridgecmd::write(suitMac_, *b));
        }
    }
}
