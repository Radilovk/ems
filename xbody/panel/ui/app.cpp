#include "app.h"
#include "panel.h"
#include "../core/bridge.h"
#include "../core/safe.h"
#include <QDateTime>
#include <QDir>
#include <map>
#include <QFile>
#include <QFileInfo>
#include <QProcess>
#include <QSettings>
#include <QStringList>
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

static QString envPath(const char *var, const char *def) {
    const char *p = std::getenv(var);
    return QString::fromLocal8Bit(p ? p : def);
}

static std::string slurp(const QString &path) {
    QFile f(path);
    return f.open(QIODevice::ReadOnly) ? std::string(f.readAll().constData()) : std::string();
}

static QString confPath() {
    const char *p = std::getenv("XEMS_CONF");
    return QString::fromLocal8Bit(p ? p : "/opt/xems/panel.conf");
}

App::App()
    : port_(0), fake_(std::getenv("XEMS_FAKE_BRIDGE") != 0), t0_(0), helloMs_(0), lastPingMs_(0), lastOpenMs_(0),
      lastRxMs_(0), cur_(-1), linkingSinceMs_(0), scanning_(false), age60_(false), wiring_(Suit::WIRE_XEMS), wiWiring_(Suit::WIRE_XEMS), female_(true), keptSavedMs_(0), bridgeVer_(0), bundledVer_(0), dfuSent_(false), cableReadMs_(0),
      net_(0), netJob_(NET_NONE), netOk_(false), netSinceMs_(0),
      wifiProc_(0), wifiJob_(WIFI_NONE), wifiOk_(false), wifiNoRadio_(false), wifiSinceMs_(0),
      noteWarn_(false), noteUntilMs_(0),
      panel_(0), tab_(0), strengthMem_(0), busy_(false) {
    t0_ = now();
    load();
    cable_ = xbcable::parseConfig(slurp(envPath("XEMS_CABLE_CONF", "/opt/xems/xbody-cable.conf")));
    cableLive_.running = cableLive_.training = cableLive_.second = cableLive_.programOver = false;
    cableLive_.wiring = xbcable::WIRE_XBODY;
    cableLive_.programSeg = cableLive_.programS = cableLive_.programMin = 0;
    cableLive_.boardRx = 0;
    readCableState();
    const char *bd = std::getenv("XEMS_BRIDGE_DIR");
    QFile vf(QString::fromLocal8Bit(bd ? bd : "/opt/xems/bridge") + U("/VERSION"));
    if (vf.open(QIODevice::ReadOnly)) bundledVer_ = vf.readAll().trimmed().toInt();
    // Back after an update from the internet (xems-net left the version it fetched): say so in the update sheet.
    QString done = envPath("XEMS_NET_DONE", "/opt/xems/net-updated");
    QString got = QString::fromLatin1(slurp(done).c_str()).trimmed(),
            have = QString::fromLatin1(slurp(envPath("XEMS_VERSION", "/opt/xems/VERSION")).c_str()).trimmed();
    QString pend = envPath("XEMS_PENDING", "/opt/xems/pending");
    if (!got.isEmpty() && got == have) {
        netJob_ = NET_UPDATE;
        netOk_ = true;
        netLine_ = U("✓ XEMS е обновен до версия ") + got;
        QFile::remove(done);
    } else if (!got.isEmpty() && !QFile::exists(pend + U("/updater.sh"))) {   // not waiting to install: it failed
        netJob_ = NET_UPDATE;
        netLine_ = U("Версия ") + got + U(" не се инсталира — пробвай пак");
        QFile::remove(done);
    }
    diag_.usb = false;
    diag_.rx = 0;
    diagMs_ = 0;
    timer_.start(20, this);
}

App::~App() {
    for (size_t i = 0; i < ses_.size(); i++) {
        if (port_ && port_->ok()) {
            send(bridgecmd::write(ses_[i].mac, ses_[i].suit->safeFrame()));
            send(bridgecmd::disc(ses_[i].mac));
        }
        delete ses_[i].suit;
    }
    delete port_;
    if (net_) { net_->kill(); net_->waitForFinished(1000); delete net_; }
    if (wifiProc_) { wifiProc_->kill(); wifiProc_->waitForFinished(1000); delete wifiProc_; }
}

const std::string &App::suitName() const {
    static const std::string none;
    return cur_ >= 0 && cur_ < (int)ses_.size() ? ses_[cur_].name : none;
}

bool App::female() const { return cur_ >= 0 && cur_ < (int)ses_.size() ? ses_[cur_].female : female_; }

void App::setFemale(bool f) {
    female_ = f;
    if (cur_ >= 0 && cur_ < (int)ses_.size()) ses_[cur_].female = f;
    save();
}

int App::find(const std::string &mac) const {
    for (size_t i = 0; i < ses_.size(); i++) if (ses_[i].mac == mac) return (int)i;
    return -1;
}

void App::showSession(int i) {
    if (i < 0 || i >= (int)ses_.size()) return;
    cur_ = i;
    prog_ = ses_[i].prog;   // the sheet and the header show this session's values
    age60_ = ses_[i].age60;
    wiring_ = ses_[i].wiring;
    if (panel_) panel_->sessionChanged();
    openPanel();
}

void App::showPick() {
    cur_ = -1;
    if (panel_) panel_->sessionChanged();
    openPanel();
}

void App::stopSession(int i) {
    if (i < 0 || i >= (int)ses_.size()) return;
    Suit *s = ses_[i].suit;
    s->stop();
    send(bridgecmd::write(ses_[i].mac, s->safeFrame()));   // straight out, not behind the queue
}

bool App::panelOpen() const { return panel_ && panel_->isVisible(); }

QPoint App::tabCorner() const { return tab_ ? tab_->geometry().bottomLeft() : QPoint(); }

void App::drop(int i, const QString &why) {
    if (i < 0 || i >= (int)ses_.size()) return;
    if (std::getenv("XEMS_DEBUG")) std::fprintf(stderr, "%6u ! lost %s: %s\n", now(), ses_[i].mac.c_str(), why.toUtf8().constData());
    delete ses_[i].suit;   // the bridge has already switched it off (SAFE frame) or the link is gone
    ses_.erase(ses_.begin() + i);
    if (cur_ == i) cur_ = -1;
    else if (cur_ > i) cur_--;
    if (panel_) panel_->sessionChanged();
    if (!why.isEmpty()) setNote(why, true);
}

unsigned App::now() const {
    struct timeval tv;
    gettimeofday(&tv, 0);
    return (unsigned)(tv.tv_sec * 1000ULL + tv.tv_usec / 1000) - t0_;
}

App::View App::view() const {
    if (!bridgeOk()) return NO_BRIDGE;
    if (cur_ >= 0 && cur_ < (int)ses_.size()) return TRAIN;
    if (!linkingMac_.empty()) return LINKING;
    return PICK;
}

void App::setCable(const xbcable::Config &c) {
    cable_ = c;
    QString path = envPath("XEMS_CABLE_CONF", "/opt/xems/xbody-cable.conf"), tmp = path + U(".tmp");
    QFile f(tmp);
    if (f.open(QIODevice::WriteOnly)) {
        std::string t = xbcable::configText(c);
        f.write(t.data(), (qint64)t.size());
        f.close();
        std::rename(tmp.toLocal8Bit().constData(), path.toLocal8Bit().constData());   // the proxy never reads half
    }
}

void App::readCableState() {
    QString path = envPath("XEMS_CABLE_STATE", "/tmp/xems-cable.state");
    QFileInfo fi(path);
    CableLive l;
    l.running = l.training = l.second = l.programOver = false;
    l.wiring = cable_.wiring;
    l.programSeg = l.programS = l.programMin = 0;
    l.boardRx = 0;
    if (fi.exists() && fi.lastModified().secsTo(QDateTime::currentDateTime()) <= 5) {
        std::string s = slurp(path);
        std::map<std::string, std::string> kv;
        size_t a = 0;
        while (a < s.size()) {
            size_t e = s.find('\n', a);
            std::string line = s.substr(a, e == std::string::npos ? std::string::npos : e - a);
            size_t q = line.find('=');
            if (q != std::string::npos) kv[line.substr(0, q)] = line.substr(q + 1);
            if (e == std::string::npos) break;
            a = e + 1;
        }
        l.running = true;
        l.training = kv["training"] == "1";
        l.second = kv["second"] == "1";
        if (l.training) l.wiring = kv["wiring"] == "xems" ? xbcable::WIRE_XEMS : xbcable::WIRE_XBODY;
        l.program = kv["program"];
        l.programSeg = std::atoi(kv["program_seg"].c_str());
        l.programS = std::atoi(kv["program_s"].c_str());
        l.programMin = std::atoi(kv["program_min"].c_str());
        l.programOver = kv["program_over"] == "1";
        l.boardRx = std::atol(kv["board_rx"].c_str());
    }
    cableLive_ = l;
    PhoneLink ph;
    ph.phone = false;
    std::string t = slurp(envPath("XEMS_LINK_STATE", "/tmp/xems-link.state"));
    size_t a = 0;
    while (a < t.size()) {
        size_t e = t.find('\n', a);
        std::string line = t.substr(a, e == std::string::npos ? std::string::npos : e - a);
        size_t q = line.find('=');
        if (q != std::string::npos) {
            std::string k = line.substr(0, q);
            QString v = QString::fromStdString(line.substr(q + 1));
            if (k == "phone") ph.phone = v == U("1");
            else if (k == "phone_ver") ph.phoneVer = v;
            else if (k == "pending") ph.pending = v;
            else if (k == "state") ph.state = v;
        }
        if (e == std::string::npos) break;
        a = e + 1;
    }
    phone_ = ph;
}

QString App::uf2State() const {
    const char *p = std::getenv("XEMS_UF2_STATE");
    QString path = QString::fromLocal8Bit(p ? p : "/tmp/xems-uf2.state");
    QFileInfo fi(path);
    if (!fi.exists() || fi.lastModified().secsTo(QDateTime::currentDateTime()) > 60) return QString();
    QFile f(path);
    return f.open(QIODevice::ReadOnly) ? QString::fromLatin1(f.readAll().trimmed()) : QString();
}

QString App::updateFromUsb() {
    const char *bin = std::getenv("XEMS_USB_UPDATE");
    QString prog = QString::fromLocal8Bit(bin ? bin : "/opt/xems/bin/xems-usb-update");
    QProcess pr;
    pr.start(prog, QStringList() << U("apply"));
    if (!pr.waitForStarted(4000)) return U("Няма програма за ъпдейт на машината");
    pr.waitForFinished(120000);          // mount + unpack can take a few seconds
    QString out = QString::fromLocal8Bit(pr.readAllStandardOutput()).trimmed();
    if (out.startsWith(U("OK")))
        return U("✓ Инсталирана версия ") + out.section(QLatin1Char(' '), 1, 1) +
               U(" — изключи и включи XBody");
    if (out.contains(U("no-stick"))) return U("Няма USB флашка — сложи я и пробвай пак");
    if (out.contains(U("not-an-xems"))) return U("Флашката не е XEMS ъпдейт");
    return U("Ъпдейтът не стана — виж xems-update.log на флашката");
}

void App::netStart(int job) {
    if (net_ || (job != NET_UPDATE && job != NET_LOG)) return;
    const char *bin = std::getenv("XEMS_NET");
    net_ = new QProcess();
    // Through /bin/sh: a script that lost its exec bit (mod v21 shipped xems-net 0644) still runs.
    net_->start(U("/bin/sh"), QStringList() << QString::fromLocal8Bit(bin ? bin : "/opt/xems/bin/xems-net")
                                            << (job == NET_UPDATE ? U("update") : U("log")));
    netJob_ = job;
    netOk_ = false;
    netOut_.clear();
    netSinceMs_ = now();
    netLine_ = job == NET_UPDATE ? U("Свързвам се със сървъра…") : U("Събирам лога…");
}

// One line of xems-net: ". step" while it runs, then OK / CURRENT / ERR.
void App::netSay(const QString &l) {
    QString a = l.section(QLatin1Char(' '), 1, 1);
    if (l == U(". connect")) netLine_ = U("Свързвам се със сървъра…");
    else if (l.startsWith(U(". download"))) netLine_ = U("Изтеглям версия ") + a + U("…");
    else if (l == U(". collect")) netLine_ = U("Събирам лога…");
    else if (l == U(". send")) netLine_ = U("Изпращам лога…");
    else if (l.startsWith(U("OK "))) {
        netOk_ = true;
        netLine_ = netJob_ == NET_LOG ? U("✓ Логът е изпратен · № ") + a
                                      : U("✓ Версия ") + a + U(" е изтеглена · влиза сама");
    }
    else if (l.startsWith(U("CURRENT "))) { netOk_ = true; netLine_ = U("✓ Това е последната версия (") + a + U(")"); }
    else if (l == U("ERR no-net")) netLine_ = U("Няма интернет — провери кабела или Wi‑Fi");
    else if (l == U("ERR tls")) netLine_ = U("Няма сигурна връзка със сървъра — пробвай по-късно");
    else if (l == U("ERR check")) netLine_ = U("Изтегленото е повредено — пробвай пак");
    else if (l.startsWith(U("ERR "))) netLine_ = U("Сървърът не отговори — пробвай пак след малко");
}

void App::pollNet(unsigned t) {
    netOut_ += QString::fromUtf8(net_->readAllStandardOutput());
    int nl;
    while ((nl = netOut_.indexOf(QLatin1Char('\n'))) >= 0) {
        netSay(netOut_.left(nl).trimmed());
        netOut_.remove(0, nl + 1);
    }
    bool over = age(t, netSinceMs_) > 6 * 60 * 1000;   // xems-net's own timeouts end it long before this
    if (net_->state() != QProcess::NotRunning && !over) return;
    if (over) { net_->kill(); net_->waitForFinished(1000); }
    if (!netOut_.trimmed().isEmpty()) netSay(netOut_.trimmed());
    netOut_.clear();
    // Ended without its final line (killed, missing): the last step it said is no answer.
    if (!netOk_ && netLine_.endsWith(U("…")))
        netLine_ = net_->exitCode() == 127 ? U("Не стана — липсва програмата xems-net") : U("Не стана — пробвай пак");
    delete net_;
    net_ = 0;
}

// The bridge as the unit sees it (only while it does not answer): a Seeed / XIAO device on the USB bus, the port the
// panel holds, bytes heard on it. On the card and in /tmp/xems-bridge.state for the log.
void App::readDiag() {
    QString sys = envPath("XEMS_USB_SYS", "/sys/bus/usb/devices");
    diag_.usb = false;
    QStringList devs = QDir(sys).entryList(QDir::Dirs | QDir::NoDotAndDotDot);
    for (int i = 0; i < devs.size() && !diag_.usb; i++) {
        QString d = sys + U("/") + devs[i];
        QString vid = QString::fromLatin1(slurp(d + U("/idVendor")).c_str()).trimmed();
        QString prod = QString::fromLatin1(slurp(d + U("/product")).c_str());
        diag_.usb = vid == U("2886") || prod.contains(U("XIAO"), Qt::CaseInsensitive) || prod.contains(U("nRF52"), Qt::CaseInsensitive);
    }
    diag_.port = port_ && port_->ok() ? QString::fromStdString(port_->name()) : QString();
    diag_.rx = port_ && port_->ok() ? port_->rxBytes() : 0;
    QFile f(envPath("XEMS_BRIDGE_STATE", "/tmp/xems-bridge.state"));
    if (f.open(QIODevice::WriteOnly | QIODevice::Truncate))
        f.write(QString(U("usb=%1\nport=%2\nrx=%3\nhello=%4\nver=%5\n")).arg(diag_.usb).arg(diag_.port).arg(diag_.rx)
                    .arg(helloMs_ != 0).arg(bridgeVer_).toLatin1());
}

void App::wifiStart(int job, const QString &ssid, const QString &pass) {
    if (wifiProc_ || job == WIFI_NONE) return;
    const char *bin = std::getenv("XEMS_WIFI");
    wifiProc_ = new QProcess();
    static const char *const CMD[] = {"", "scan", "connect", "forget"};
    wifiProc_->start(U("/bin/sh"), QStringList() << QString::fromLocal8Bit(bin ? bin : "/opt/xems/bin/xems-wifi") << U(CMD[job]));
    if (job != WIFI_SCAN) {   // the name and the password go on stdin, never on the command line
        wifiProc_->write((ssid + U("\n") + pass + U("\n")).toUtf8());
        wifiProc_->closeWriteChannel();
    }
    wifiJob_ = job;
    wifiOk_ = false;
    wifiOut_.clear();
    wifiScan_.clear();
    wifiTarget_ = ssid;
    wifiSinceMs_ = now();
    wifiLine_ = job == WIFI_SCAN ? U("Търся мрежи…") : job == WIFI_CONNECT ? U("Свързвам се с ") + ssid + U("…")
                                                                          : U("Забравям мрежата…");
}

void App::wifiSay(const QString &l) {
    QString a = l.section(QLatin1Char(' '), 1, 1);
    if (l.startsWith(U("CUR "))) {
        QString st = a, ip = l.section(QLatin1Char(' '), 2, 2);
        bool on = st == U("COMPLETED");
        wifiSsid_ = on ? l.section(QLatin1Char(' '), 3) : QString();
        wifiIp_ = on && ip != U("-") ? ip : QString();
    } else if (l.startsWith(U("NET "))) {
        WifiNet n;
        n.dbm = a.toInt();
        n.sec = l.section(QLatin1Char(' '), 2, 2).toInt();
        n.ssid = l.section(QLatin1Char(' '), 3);
        if (!n.ssid.isEmpty()) wifiScan_.push_back(n);
    } else if (l == U(". address")) wifiLine_ = U("Взимам адрес от рутера…");
    else if (l.startsWith(U("OK"))) {
        wifiOk_ = true;
        wifiNoRadio_ = false;
        if (wifiJob_ == WIFI_SCAN) {
            wifiNets_ = wifiScan_;
            wifiLine_ = wifiNets_.empty() ? U("Не намирам мрежи наблизо") : QString();
        } else if (wifiJob_ == WIFI_CONNECT) {
            wifiSsid_ = wifiTarget_;
            wifiIp_ = a;
            wifiLine_ = U("✓ Свързан с ") + wifiTarget_;
        } else {
            if (wifiSsid_ == wifiTarget_) { wifiSsid_.clear(); wifiIp_.clear(); }
            wifiLine_ = U("✓ Мрежата е забравена");
        }
    }
    else if (l == U("ERR no-wifi")) { wifiNoRadio_ = true; wifiLine_ = U("Wi‑Fi модулът на машината не отговаря"); }
    else if (l == U("ERR auth")) wifiLine_ = U("Грешна парола — опитай пак");
    else if (l == U("ERR timeout")) wifiLine_ = U("Мрежата не отговори — опитай пак по-близо до рутера");
    else if (l == U("ERR address")) wifiLine_ = U("Свързан, но рутерът не даде адрес");
    else if (l.startsWith(U("ERR "))) wifiLine_ = U("Не стана — опитай пак");
}

void App::pollWifi(unsigned t) {
    wifiOut_ += QString::fromUtf8(wifiProc_->readAllStandardOutput());
    int nl;
    while ((nl = wifiOut_.indexOf(QLatin1Char('\n'))) >= 0) {
        wifiSay(wifiOut_.left(nl).trimmed());
        wifiOut_.remove(0, nl + 1);
    }
    bool over = age(t, wifiSinceMs_) > 90 * 1000;
    if (wifiProc_->state() != QProcess::NotRunning && !over) return;
    if (over) { wifiProc_->kill(); wifiProc_->waitForFinished(1000); }
    if (!wifiOut_.trimmed().isEmpty()) wifiSay(wifiOut_.trimmed());
    wifiOut_.clear();
    if (!wifiOk_ && wifiLine_.endsWith(U("…"))) wifiLine_ = U("Не стана — опитай пак");
    delete wifiProc_;
    wifiProc_ = 0;
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
    prog_.rampMs = st.value("program/ramp", prog_.rampMs).toInt();
    prog_.dbl = st.value("program/dbl", false).toBool();
    prog_.dblHz = st.value("program/dbl_hz", prog_.dblHz).toInt();
    prog_.dblPct = st.value("program/dbl_pct", prog_.dblPct).toInt();
    prog_.cont = st.value("program/cont", false).toBool();
    age60_ = st.value("program/age60", false).toBool();
    female_ = st.value("client/female", true).toBool();
    wiring_ = st.value("suit/wiring", 0).toInt() == Suit::WIRE_XBODY ? Suit::WIRE_XBODY : Suit::WIRE_XEMS;
    wiWiring_ = st.value("suit/wiems_wiring", 0).toInt() == Suit::WIRE_XBODY ? Suit::WIRE_XBODY : Suit::WIRE_XEMS;
    for (int k = 0; k < 3; k++) {
        QStringList z = st.value(QString::fromLatin1("zones/k%1").arg(k)).toString().split(QLatin1Char(','));
        for (int i = 0; i < Suit::MAX_CH; i++) keptZones_[k][i] = i < z.size() ? z[i].toInt() : 0;
        keptStrength_[k] = st.value(QString::fromLatin1("zones/strength%1").arg(k), 100).toInt();
    }
    // Saved values go through the limits too (an older file, a hand edit).
    int v[safe::N] = {prog_.hz, prog_.us, prog_.onS, prog_.offS, prog_.dbl ? 1 : 0, prog_.dblHz, prog_.dblPct, prog_.rampMs};
    safe::apply(v, age60_ ? 65 : -1, 0);
    prog_.hz = v[safe::HZ]; prog_.us = v[safe::PW]; prog_.onS = v[safe::ON]; prog_.offS = v[safe::OFF];
    prog_.dbl = v[safe::AP] == 1; prog_.dblHz = v[safe::PHZ]; prog_.dblPct = v[safe::PS]; prog_.rampMs = v[safe::RAMP];
}

void App::save() {
    QSettings st(confPath(), QSettings::IniFormat);
    st.setValue("suit/last", QString::fromStdString(lastMac_));
    st.setValue("program/hz", prog_.hz);
    st.setValue("program/us", prog_.us);
    st.setValue("program/on", prog_.onS);
    st.setValue("program/off", prog_.offS);
    st.setValue("program/total", prog_.totalS);
    st.setValue("program/ramp", prog_.rampMs);
    st.setValue("program/dbl", prog_.dbl);
    st.setValue("program/dbl_hz", prog_.dblHz);
    st.setValue("program/dbl_pct", prog_.dblPct);
    st.setValue("program/cont", prog_.cont);
    st.setValue("program/age60", age60_);
    st.setValue("client/female", female_);
    st.setValue("suit/wiring", wiring_);
    st.setValue("suit/wiems_wiring", wiWiring_);
    for (int k = 0; k < 3; k++) {
        QStringList z;
        for (int i = 0; i < Suit::MAX_CH; i++) z << QString::number(keptZones_[k][i]);
        st.setValue(QString::fromLatin1("zones/k%1").arg(k), z.join(QLatin1String(",")));
        st.setValue(QString::fromLatin1("zones/strength%1").arg(k), keptStrength_[k]);
    }
}

void App::restoreZones(Session &n) {
    int k = n.suit->kind();
    const Zone *z;
    int nz = Suit::zones(n.suit->kind(), &z, n.wiring);
    for (int i = 0; i < nz; i++) n.suit->setZone(z[i], keptZones_[k][i]);
    n.suit->setStrength(keptStrength_[k]);
}

void App::rememberZones(int i) {
    if (i < 0 || i >= (int)ses_.size()) return;
    Suit *s = ses_[i].suit;
    int k = s->kind();
    const Zone *z;
    int nz = Suit::zones(s->kind(), &z, ses_[i].wiring);
    bool changed = keptStrength_[k] != s->strength();
    for (int j = 0; j < nz; j++) changed = changed || keptZones_[k][j] != s->zone(z[j]);
    if (!changed) return;
    for (int j = 0; j < nz; j++) keptZones_[k][j] = s->zone(z[j]);
    keptStrength_[k] = s->strength();
    if (age(now(), keptSavedMs_) > 2000) {   // not on every step of a finger
        keptSavedMs_ = now();
        save();
    }
}

void App::lostLink(int i, const QString &why) {
    if (i < 0 || i >= (int)ses_.size()) return;
    if (!ses_[i].linkOk) return;
    ses_[i].linkOk = false;
    ses_[i].suit->lost(now());
    lastMac_ = ses_[i].mac;
    setNote(why + U(" · свързвам отново…"), true);
}

void App::connectTo(const std::string &mac) {
    if (find(mac) >= 0 || (int)ses_.size() >= MAX_SESSIONS || !linkingMac_.empty()) return;
    linkingMac_ = mac;
    linkingSinceMs_ = now();
    send(bridgecmd::conn(mac));
}

void App::forget() {
    Suit *s = suit();
    if (s) {
        s->stop();
        send(bridgecmd::write(ses_[cur_].mac, s->safeFrame()));   // straight out, not behind the queue
        send(bridgecmd::disc(ses_[cur_].mac));
        drop(cur_, QString());
    }
    lastMac_.clear();
    save();
}

void App::startPause() {
    Suit *s = suit();
    if (!s) return;
    if (s->state() == Suit::RUNNING || s->startPending()) s->pause(now());   // a pending start is cancelled
    else s->start(now());
}

void App::stopRun() {
    if (suit()) suit()->stop();
}

void App::strengthStep(int d) {
    if (suit()) suit()->setStrength(suit()->strength() + d);
}

void App::setChannel(int i, int pct) {
    if (suit()) suit()->setChannel(i, pct);
}

void App::setZone(const Zone &z, int pct) {
    if (suit()) suit()->setZone(z, pct);
}

void App::setWiring(int w) {
    w = w == Suit::WIRE_XBODY ? Suit::WIRE_XBODY : Suit::WIRE_XEMS;
    Suit *s = suit();
    int was = wiring();
    if (w == was) return;
    if (s && s->kind() == Suit::WIEMS && s->state() == Suit::RUNNING) {   // the channels behind the zones: not mid-run
        setNote(U("Стандартът на костюма се сменя на пауза"), true);
        return;
    }
    if (s && (s->kind() == Suit::XEMS || s->kind() == Suit::WIEMS)) {   // every zone keeps its %
        const Zone *from, *to;
        int n = Suit::zones(s->kind(), &from, was);
        Suit::zones(s->kind(), &to, w);
        int pct[Suit::MAX_CH];
        for (int i = 0; i < n; i++) pct[i] = s->zone(from[i]);
        for (int i = 0; i < n; i++) s->setZone(to[i], 0);
        for (int i = 0; i < n; i++) s->setZone(to[i], pct[i]);
    }
    if (s && s->kind() == Suit::WIEMS) wiWiring_ = w;
    else wiring_ = w;
    if (s) ses_[cur_].wiring = w;
    save();
}

void App::applyProgram(const Program &p, bool age60) {
    std::string why;
    Suit probe(Suit::XEMS);
    probe.setProgram(p, age60 ? 65 : -1, &why);
    prog_ = probe.program();
    age60_ = age60;
    Suit *s = suit();
    if (s && s->state() != Suit::RUNNING) {
        s->setProgram(prog_, age60_ ? 65 : -1, 0);
        ses_[cur_].prog = prog_;
        ses_[cur_].age60 = age60_;
    }
    if (!why.empty()) {
        QString w = QString::fromUtf8(why.c_str());
        w.replace('\n', U("  ·  "));
        setNote(U("Граница за безопасност: ") + w, true);
    }
    save();
}

void App::openPanel() {
    if (tab_) tab_->hide();
    for (size_t i = 0; i < stabs_.size(); i++) stabs_[i]->hide();
    if (panel_) { panel_->showFullScreen(); panel_->raise(); panel_->activateWindow(); }
}

void App::hidePanel() {
    if (panel_) panel_->hide();
    if (tab_) { tab_->show(); tab_->raise(); }   // the session tabs show themselves (SessionTab::timerEvent)
}

void App::line(const std::string &l, unsigned t) {
    BridgeEvent e = parseBridgeLine(l);
    if (std::getenv("XEMS_DEBUG")) std::fprintf(stderr, "%6u < %s\n", t, l.c_str());
    lastRxMs_ = t;
    switch (e.type) {
    case BridgeEvent::HELLO:
    case BridgeEvent::PONG: {
        if (!helloMs_) scanning_ = false;   // a fresh bridge: say SCAN again
        helloMs_ = t;
        int v = bridgeVersion(e);
        if (v > 0) {
            if (dfuSent_ && v >= bundledVer_) setNote(U("✓ Мостът е обновен"), false);
            if (v >= bundledVer_) dfuSent_ = false;
            bridgeVer_ = v;
        }
        break;
    }
    case BridgeEvent::DFUOK:
        setNote(U("Обновявам моста — след миг е готов"), false);
        break;
    case BridgeEvent::ERR:
        if (dfuSent_ && e.text.find("DFU") != std::string::npos) {   // v1 firmware: no DFU command yet
            setNote(U("Мостът е стар — натисни 2 пъти RESET на XIAO, машината ще го обнови"), true);
            dfuSent_ = false;
            bundledVer_ = bridgeVer_;   // works as it is; no second try this run
        }
        break;
    case BridgeEvent::ADV: {
        int k = suitKind(e.svc, e.name);
        if (k < 0) break;
        size_t i = 0;
        for (; i < seen_.size(); i++) if (seen_[i].mac == e.mac) break;
        if (i == seen_.size()) { Seen s; s.mac = e.mac; seen_.push_back(s); }
        seen_[i].name = e.name.empty() ? e.mac : e.name;
        for (size_t j = 0; j < seen_[i].name.size(); j++)   // the bridge sends a name's spaces as '_'
            if (seen_[i].name[j] == '_') seen_[i].name[j] = ' ';
        seen_[i].kind = k;
        seen_[i].rssi = e.rssi;
        seen_[i].lastMs = t;
        break;
    }
    case BridgeEvent::LINK: {
        if (e.mac == linkingMac_ && find(e.mac) >= 0 && !ses_[find(e.mac)].linkOk) {
            // the same suit is back: the training goes on from where it stopped (0 + stop first, then ПРОДЪЛЖИ)
            Session &b = ses_[find(e.mac)];
            b.linkOk = true;
            b.suit->linked(t);
            send(bridgecmd::safe(e.mac, b.suit->safeFrame()));
            linkingMac_.clear();
            setNote(QString::fromStdString(b.name) + (b.suit->state() == Suit::PAUSED ? U(": свързан отново ✓ — натисни ПРОДЪЛЖИ")
                                                                                     : U(": свързан отново ✓")), false);
            break;
        }
        if (e.mac != linkingMac_ || find(e.mac) >= 0 || (int)ses_.size() >= MAX_SESSIONS) {
            send(bridgecmd::disc(e.mac));
            break;
        }
        Suit::Kind k = e.svc == "FE50" ? Suit::BODYTECH : e.svc == "WIEMS" ? Suit::WIEMS : Suit::XEMS;
        Session n;
        n.suit = new Suit(k);
        n.suit->setProgram(prog_, age60_ ? 65 : -1, 0);
        n.wiring = k == Suit::WIEMS ? wiWiring_ : wiring_;
        restoreZones(n);          // the zones and strength as left last time (owner); a new suit: zones 0, strength 100
        n.suit->linked(t);
        n.mac = e.mac;
        n.name = e.mac;
        n.prog = n.suit->program();
        n.age60 = age60_;
        n.female = female_;
        for (size_t i = 0; i < seen_.size(); i++)
            if (seen_[i].mac == e.mac) { n.name = seen_[i].name; seen_.erase(seen_.begin() + i); break; }
        ses_.push_back(n);
        cur_ = (int)ses_.size() - 1;   // the screen goes to the new suit
        if (panel_) panel_->sessionChanged();
        send(bridgecmd::safe(e.mac, n.suit->safeFrame()));
        linkingMac_.clear();
        lastMac_ = e.mac;
        save();
        setNote(U("Свързан ✓  ") + QString::fromStdString(n.name), false);
        break;
    }
    case BridgeEvent::LOST:
        if (find(e.mac) >= 0) lostLink(find(e.mac), U("Връзката с ") + QString::fromStdString(ses_[find(e.mac)].name) +
                                                         U(" прекъсна — тренировката е на пауза"));
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
        if (find(e.mac) >= 0) ses_[find(e.mac)].suit->notify(e.data, t);
        break;
    case BridgeEvent::WOK:
        if (find(e.mac) >= 0) ses_[find(e.mac)].suit->ack(true);
        break;
    case BridgeEvent::WERR:
        if (find(e.mac) >= 0) {
            send(bridgecmd::disc(e.mac));
            lostLink(find(e.mac), U("Костюмът не прие команда — тренировката е на пауза"));
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
            while (!ses_.empty()) drop((int)ses_.size() - 1, U("Мостът е изваден — костюмите спряха"));
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
            while (!ses_.empty()) drop((int)ses_.size() - 1, U("Мостът не отговаря — костюмите спряха"));
        }
    }
    if (age(t, cableReadMs_) >= 500) { cableReadMs_ = t; readCableState(); }
    if (!bridgeOk() && age(t, diagMs_) >= 2000) { diagMs_ = t; readDiag(); }
    if (net_) pollNet(t);
    if (wifiProc_) pollWifi(t);
    // ---- an older bridge firmware: update it before any suit links (outputs are off, nothing runs) ----
    bool update = bridgeOk() && bridgeVer_ > 0 && bundledVer_ > bridgeVer_;
    if (update && !dfuSent_ && ses_.empty() && linkingMac_.empty()) {
        dfuSent_ = true;
        send(bridgecmd::dfu());
    }
    // ---- scanning: only while choosing / looking for the last suit ----
    bool waiting = false;   // a session whose link dropped: look for it
    for (size_t i = 0; i < ses_.size(); i++) waiting = waiting || !ses_[i].linkOk;
    bool wantScan = bridgeOk() && ((cur_ < 0 && (int)ses_.size() < MAX_SESSIONS) || waiting);
    if (bridgeOk() && wantScan != scanning_) { scanning_ = wantScan; send(bridgecmd::scan(wantScan)); }
    for (size_t i = 0; i < seen_.size();) {
        if (age(t, seen_[i].lastMs) > 6000) seen_.erase(seen_.begin() + i);
        else i++;
    }
    // Derive, don't ask: the last suit reconnects by itself when it shows up.
    if (bridgeOk() && ses_.empty() && linkingMac_.empty() && !lastMac_.empty() && !update)
        for (size_t i = 0; i < seen_.size(); i++)
            if (seen_[i].mac == lastMac_) { connectTo(lastMac_); break; }
    for (size_t j = 0; j < ses_.size() && bridgeOk() && linkingMac_.empty(); j++)   // a dropped suit is back in range
        if (!ses_[j].linkOk)
            for (size_t i = 0; i < seen_.size(); i++)
                if (seen_[i].mac == ses_[j].mac) {
                    linkingMac_ = ses_[j].mac;
                    linkingSinceMs_ = t;
                    send(bridgecmd::conn(ses_[j].mac));
                    break;
                }
    if (!linkingMac_.empty() && age(t, linkingSinceMs_) > 12000) {
        send(bridgecmd::disc(linkingMac_));
        linkingMac_.clear();
        setNote(U("Костюмът не отговори — включен ли е?"), true);
    }
    // ---- the suits: each its own clock and its own queue (one frame in flight per link) ----
    for (int i = 0; i < (int)ses_.size(); i++) {
        Suit *s = ses_[i].suit;
        bool wasRunning = s->state() != Suit::IDLE;
        s->tick(t);
        rememberZones(i);
        if (wasRunning && s->finished())
            setNote(QString::fromStdString(ses_[i].name) + U(": тренировката завърши ✓"), false);
        int code = 0, hch = -1, h = s->takeHalt(&code, &hch);
        if (h != Suit::HALT_NONE) {
            QString who = QString::fromStdString(ses_[i].name);
            if (h == Suit::HALT_TRIP) {
                QString zone;
                const Zone *z;
                int nz = Suit::zones(s->kind(), &z, ses_[i].wiring);
                for (int k = 0; k < nz; k++)
                    if (z[k].ch[0] == hch) zone = QString::fromUtf8(z[k].name);
                setNote(who + U(": спря — защита на тока (код ") + QString::number(code, 16) + U(")") +
                            (zone.isEmpty() ? QString() : U(" след промяната на ") + zone) + U(". Силите са както вървяха"),
                        true);
            } else if (h == Suit::HALT_SILENT) {
                setNote(who + U(" не отговаря — пауза. Натисни ПРОДЪЛЖИ"), true);
            } else {
                setNote(who + U(" спря сам — пауза. Натисни ПРОДЪЛЖИ"), true);
            }
        }
        if (!ses_[i].linkOk) continue;   // waits for its suit to come back
        if (s->ackLate(t)) {
            send(bridgecmd::disc(ses_[i].mac));
            lostLink(i, U("Костюмът спря да отговаря — тренировката е на пауза"));
        } else {
            const Bytes *b = s->next(t);
            if (b) send(bridgecmd::write(ses_[i].mac, *b));
        }
    }
    // A flag the boot scripts read: a wireless suit is linked, so a USB update must not restart the panel now.
    bool busy = !ses_.empty() || !linkingMac_.empty();
    if (busy != busy_) {
        busy_ = busy;
        const char *bp = std::getenv("XEMS_BUSY");
        QString path = QString::fromLocal8Bit(bp ? bp : "/tmp/xems-busy");
        if (busy) { QFile f(path); f.open(QIODevice::WriteOnly); f.close(); }
        else QFile::remove(path);
    }
}
