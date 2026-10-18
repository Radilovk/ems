#include "panel.h"
#include "app.h"
#include "xbres.h"
#include "../core/xbprog.h"
#include <QApplication>
#include <QDesktopWidget>
#include <QFile>
#include <QFontDatabase>
#include <QMap>
#include <QMouseEvent>
#include <QPainter>
#include <QPainterPath>
#include <QPixmap>
#include <QSettings>
#include <cmath>
#include <cstdlib>

// XBody's palette (sampled from its own training screen and pictures).
static const QColor WHITE(0xFF, 0xFF, 0xFF), INK(0x30, 0x37, 0x41), GREY(0xB1, 0xB3, 0xB5), LINE(0xBF, 0xC2, 0xC5),
    SOFT(0x6B, 0x71, 0x78), RED(0xE2, 0x1A, 0x22), GREEN(0x00, 0xB3, 0x8B), YELLOW(0xFF, 0xC0, 0x00),
    BAR(0x22, 0x26, 0x2E), DIALOG(0x6B, 0x2F, 0x2F), PRESS(0xEC, 0xED, 0xEE);

static QString U(const char *s) { return QString::fromUtf8(s); }

// ---- XBody's look: pictures + Arial from /opt/xbody/xbody, loaded once ----
static QMap<QString, QPixmap> *g_pix = 0;
static QString g_family = QString::fromLatin1("DejaVu Sans");

static void loadLook() {
    if (g_pix) return;
    g_pix = new QMap<QString, QPixmap>;
    const char *names[] = {"BodyNormal", "BodyLegFront", "BodyLegBack", "BodyBottom", "BodyAbdomen", "BodyWaist",
                           "BodyBack", "BodyTrapezius", "BodyChest", "BodyArm", "BodyOptional", "MainWindowBg",
                           "TimerBg", "MasterNormal", "MasterSelected", "SliderBg", "SliderLeds", "Fader",
                           "TrainingMinusNormal", "TrainingMinusPressed", "TrainingPlusNormal", "TrainingPlusPressed",
                           "Start", "Stop", "Pause", "XBodyLogo", 0};
    QStringList want;
    for (int i = 0; names[i]; i++) want << U("/please_use_the_Pixmap_class/") + QString::fromLatin1(names[i]) + U(".png");
    want << U("/arial.ttf") << U("/arialbd.ttf");
    const char *bin = std::getenv("XEMS_XBODY_BIN");
    QMap<QString, QByteArray> res = xbres::load(QString::fromLocal8Bit(bin ? bin : "/opt/xbody/xbody"), want);
    for (QMap<QString, QByteArray>::const_iterator it = res.constBegin(); it != res.constEnd(); ++it) {
        if (it.key().endsWith(U(".ttf"))) {
            int id = QFontDatabase::addApplicationFontFromData(it.value());
            QStringList fam = id >= 0 ? QFontDatabase::applicationFontFamilies(id) : QStringList();
            if (!fam.isEmpty()) g_family = fam.first();
            continue;
        }
        QPixmap pm;
        if (pm.loadFromData(it.value(), "PNG"))
            (*g_pix)[it.key().section(QLatin1Char('/'), -1).section(QLatin1Char('.'), 0, 0)] = pm;
    }
}

static const QPixmap *pix(const char *name) {
    QMap<QString, QPixmap>::const_iterator it = g_pix->constFind(QString::fromLatin1(name));
    return it == g_pix->constEnd() ? 0 : &it.value();
}

static QFont uiFont(int px, bool bold = false) {
    QFont f(g_family);
    f.setPixelSize(px > 4 ? px : 4);
    f.setBold(bold);
    return f;
}

static QString mmss(int s) {
    if (s < 0) s = 0;
    return QString::fromLatin1("%1:%2").arg(s / 60, 2, 10, QLatin1Char('0')).arg(s % 60, 2, 10, QLatin1Char('0'));
}

static QColor mix(const QColor &a, const QColor &b, double t) {
    return QColor((int)(a.red() + (b.red() - a.red()) * t), (int)(a.green() + (b.green() - a.green()) * t),
                  (int)(a.blue() + (b.blue() - a.blue()) * t));
}

static void battery(QPainter &p, const QRect &r, int pct) {
    QColor c = pct < 0 ? GREY : pct <= 15 ? RED : pct <= 30 ? YELLOW : GREEN;
    p.setPen(QPen(c, 2));
    p.setBrush(Qt::NoBrush);
    QRect body(r.left(), r.top(), r.width() * 9 / 10, r.height());
    p.drawRoundedRect(body, 3, 3);
    p.setPen(Qt::NoPen);
    p.setBrush(c);
    p.drawRect(QRect(body.right() + 2, r.top() + r.height() / 3, r.width() / 12 + 1, r.height() / 3));
    if (pct > 0) {
        QRect in = body.adjusted(3, 3, -3, -3);
        in.setWidth(in.width() * pct / 100);
        p.drawRect(in);
    }
}

static void signalBars(QPainter &p, const QRect &r, int rssi, const QColor &on, const QColor &off) {
    int lv = rssi >= -60 ? 4 : rssi >= -70 ? 3 : rssi >= -80 ? 2 : 1;
    int bw = r.width() / 6;
    for (int i = 0; i < 4; i++) {
        int h = r.height() * (i + 1) / 4;
        p.setPen(Qt::NoPen);
        p.setBrush(i < lv ? on : off);
        p.drawRect(QRect(r.left() + i * bw * 3 / 2, r.bottom() - h, bw, h));
    }
}

// ============================================================================ PanelWidget
// The training screen follows XBody's manual-settings screen pixel for pixel (800×600): header 0–56, timer hump
// 190–609 × 56–101, body picture at (153, 45), zone buttons 175×50 at x 14 / 619, y 86 + 70·i, START / STOP 175×70
// at y 436, MASTER hump 190–610 × 480–534, slider bar 535–600.

PanelWidget::PanelWidget(App *app)
    : QWidget(0, Qt::FramelessWindowHint | Qt::WindowStaysOnTopHint), app_(app), pressMs_(0), repeatMs_(0),
      sheet_(false), confirm_(false), confirmKind_(0), netWasBusy_(false), wifi_(false), wifiPage_(0), kb_(false), kbShow_(false), kbLayer_(0), sheetAge60_(false), sheetWiring_(Suit::WIRE_XEMS), info_(false), cableInfo_(false), showCable_(false), cableTab_(0), dy_(0),
      bubbleUntilMs_(0), toastUntilMs_(0), sel_(0), selKind_(-1), k_(1), ox_(0), oy_(0), figsSex_(-1), touchedMs_(0),
      slideZone_(-1), slideStart_(0), slideValue_(-1), sliding_(false) {
    loadLook();
    setAttribute(Qt::WA_OpaquePaintEvent);
    timer_.start(50, this);   // stepper repeat + change check; paints only on a change
}

void PanelWidget::sessionChanged() {
    sel_ = 0;
    selKind_ = -1;
    sheet_ = confirm_ = info_ = false;
    showCable_ = false;
    pressed_.clear();
    sig_.clear();   // repaint
}

void PanelWidget::layout() {
    double kw = width() / 800.0, kh = height() / 600.0;
    k_ = kw < kh ? kw : kh;
    if (k_ <= 0) k_ = 1;
    ox_ = (int)((width() - 800 * k_) / 2);
    oy_ = (int)((height() - 600 * k_) / 2);
}

QPoint PanelWidget::toDesign(const QPoint &s) const {
    return QPoint((int)((s.x() - ox_) / k_), (int)((s.y() - oy_) / k_));
}

QRect PanelWidget::toScreen(const QRect &d) const {
    return QRect((int)(ox_ + d.left() * k_) - 1, (int)(oy_ + d.top() * k_) - 1, (int)(d.width() * k_) + 3,
                 (int)(d.height() * k_) + 3);
}

QString PanelWidget::idAt(const QPoint &d) const {
    for (int i = (int)hits_.size() - 1; i >= 0; i--)   // last painted = on top
        if (hits_[i].r.contains(d)) return hits_[i].id;
    return QString();
}

unsigned PanelWidget::allZones() const {
    const Suit *s = const_cast<App *>(app_)->suit();
    if (!s) return 0;
    const Zone *z;
    return (1u << Suit::zones(s->kind(), &z)) - 1;
}

int PanelWidget::zonesOf(const Zone **z) const {
    const Suit *s = const_cast<App *>(app_)->suit();
    return Suit::zones(s ? s->kind() : Suit::XEMS, z, app_->wiring());
}

int PanelWidget::selValue() const {
    Suit *s = const_cast<App *>(app_)->suit();
    if (!s) return 0;
    if (sliding_ && slideZone_ >= 0 && slideValue_ >= 0) return slideValue_;
    if (!sel_) return s->strength();
    const Zone *z;
    int n = zonesOf(&z);
    for (int i = 0; i < n; i++)
        if (sel_ & (1u << i)) return s->zone(z[i]);
    return 0;
}

void PanelWidget::setSelValue(int v) {
    Suit *s = app_->suit();
    if (!s) return;
    v = qBound(0, v, 100);
    if (!sel_) {
        app_->strengthStep(v - s->strength());
        return;
    }
    // several zones move by the same step — their differences stay (arms 30 / legs 60 + 5 → 35 / 65, never all
    // to one value: a weak zone would jump to the strong one's level)
    int d = v - selValue();
    if (d == 0) return;
    const Zone *z;
    int n = zonesOf(&z);
    for (int i = 0; i < n; i++)
        if (sel_ & (1u << i)) app_->setZone(z[i], qBound(0, s->zone(z[i]) + d, 100));
}

// XBody's white button with a grey outline (zone buttons, tiles, dialogs); `on` = its red selected state.
void PanelWidget::outlined(QPainter &p, const QRect &r, const QString &id, const QString &text, int px, bool on) {
    bool down = !id.isEmpty() && pressed_ == id;
    p.setPen(on ? Qt::NoPen : QPen(LINE, 2));
    p.setBrush(on ? (down ? mix(RED, Qt::black, 0.2) : RED) : (down ? PRESS : WHITE));
    p.drawRoundedRect(QRectF(r).adjusted(1, 1, -1, -1), 8, 8);
    if (!text.isEmpty()) {
        p.setPen(on ? WHITE : INK);
        p.setFont(uiFont(px));
        p.drawText(r, Qt::AlignCenter | Qt::TextWordWrap, text);
    }
    if (!id.isEmpty()) hit(r, id);
}

// XBody's coloured 175×70 action buttons (its Start / Stop / Pause pictures, painted when missing).
void PanelWidget::filled(QPainter &p, const QRect &r, const QString &id, const QString &pm, const QColor &bg,
                         const QColor &fg, const QString &text, int px) {
    bool down = !id.isEmpty() && pressed_ == id;
    const QPixmap *pic = pm.isEmpty() ? 0 : pix(pm.toLatin1().constData());
    if (pic && pic->size() == r.size()) p.drawPixmap(r.topLeft(), *pic);
    else {
        p.setPen(Qt::NoPen);
        p.setBrush(bg);
        p.drawRoundedRect(QRectF(r), 8, 8);
    }
    if (down) {
        p.setPen(Qt::NoPen);
        p.setBrush(QColor(0, 0, 0, 50));
        p.drawRoundedRect(QRectF(r), 8, 8);
    }
    p.setPen(fg);
    p.setFont(uiFont(px));
    p.drawText(r, Qt::AlignCenter, text);
    if (!id.isEmpty()) hit(r, id);
}

void PanelWidget::paintEvent(QPaintEvent *) {
    QPainter p(this);
    p.fillRect(rect(), WHITE);
    layout();
    p.translate(ox_, oy_);
    p.scale(k_, k_);
    p.setRenderHint(QPainter::Antialiasing, true);
    p.setRenderHint(QPainter::TextAntialiasing, true);
    p.setRenderHint(QPainter::SmoothPixmapTransform, k_ != 1);
    if (const QPixmap *bg = pix("MainWindowBg")) p.drawPixmap(0, 0, *bg);
    hits_.clear();
    clockRect_ = QRect();
    App::View v = app_->view();
    if (v == App::TRAIN) paintTrain(p);                         // a wireless suit training wins the screen
    else if (v == App::NO_BRIDGE || showCable_) paintCable(p);  // XBody's own cable: the home
    else paintPick(p);
    if (cableInfo_) paintCableInfo(p);
    if (app_->view() == App::TRAIN && !sheet_ && !confirm_ && (int)(bubbleUntilMs_ - app_->now()) > 0) paintBubble(p);
    if (sheet_) paintSheet(p);
    if (confirm_) paintConfirm(p);
    if (wifi_) paintWifi(p);
}

// XBody's header: logo block (here: back to XBody) | grey title + one line under it | right block.
void PanelWidget::paintHeader(QPainter &p, const QString &title, const QString &sub, bool subWarn, bool subOk) {
    p.fillRect(QRect(0, 0, 800, 56), WHITE);
    p.setPen(QPen(QColor(0xE3, 0xE4, 0xE6), 1));
    p.drawLine(0, 56, 800, 56);
    p.drawLine(155, 6, 155, 50);
    p.drawLine(652, 6, 652, 50);
    // ← XBody: hides the panel, XBody is underneath.
    QRect back(0, 0, 155, 56);
    if (pressed_ == U("back")) p.fillRect(back, PRESS);
    p.setPen(QPen(INK, 2.5, Qt::SolidLine, Qt::RoundCap, Qt::RoundJoin));
    p.drawLine(QPointF(8, 28), QPointF(26, 28));
    p.drawLine(QPointF(8, 28), QPointF(16, 20));
    p.drawLine(QPointF(8, 28), QPointF(16, 36));
    if (const QPixmap *logo = pix("XBodyLogo")) p.drawPixmap(QPoint(36, 18), *logo);
    else {
        p.setPen(INK);
        p.setFont(uiFont(20, true));
        p.drawText(QRect(50, 0, 100, 56), Qt::AlignLeft | Qt::AlignVCenter, U("XBODY"));
    }
    hit(back, U("back"));
    p.setPen(GREY);
    QFont tf = uiFont(20, true);
    tf.setLetterSpacing(QFont::AbsoluteSpacing, 1.5);
    p.setFont(tf);
    p.drawText(QRect(160, 2, 488, 30), Qt::AlignCenter, p.fontMetrics().elidedText(title, Qt::ElideRight, 480));
    if (!sub.isEmpty()) {
        p.setPen(subWarn ? RED : subOk ? GREEN : INK);
        p.setFont(uiFont(14, true));
        p.drawText(QRect(160, 30, 488, 24), Qt::AlignCenter, p.fontMetrics().elidedText(sub, Qt::ElideRight, 480));
    }
}

// A tiny suit figure for the standard tiles: XBody's own body picture (front half) when there, else a silhouette.
static void suitFigure(QPainter &p, const QRect &r, bool lit) {
    if (const QPixmap *b = pix("BodyNormal")) {
        QRectF src(70, 40, 170, 430);   // the front figure inside the 500×500 picture
        double h = r.height(), w = h * src.width() / src.height();
        p.drawPixmap(QRectF(r.center().x() - w / 2, r.top(), w, h), *b, src);
        return;
    }
    p.setPen(Qt::NoPen);
    p.setBrush(lit ? INK : GREY);
    double cx = r.center().x(), t = r.top(), s = r.height() / 100.0;
    p.drawEllipse(QRectF(cx - 8 * s, t, 16 * s, 18 * s));
    p.drawRoundedRect(QRectF(cx - 18 * s, t + 20 * s, 36 * s, 40 * s), 8 * s, 8 * s);
    p.drawRoundedRect(QRectF(cx - 16 * s, t + 58 * s, 14 * s, 42 * s), 6 * s, 6 * s);
    p.drawRoundedRect(QRectF(cx + 2 * s, t + 58 * s, 14 * s, 42 * s), 6 * s, 6 * s);
}

// "Кабел на XBody": how XBody's own output reaches the suit on its cable — the suit's standard and the double
// impulse. The home of the XEMS tab when no wireless bridge is plugged; from the suit list via the header.
void PanelWidget::paintCable(QPainter &p) {
    const xbcable::Config &c = app_->cable();
    const App::CableLive &live = app_->cableLive();
    bool toastOn = (int)(toastUntilMs_ - app_->now()) > 0;
    QString sub;
    bool warn = false, ok = false;
    const App::PhoneLink &ph = app_->phoneLink();
    if (toastOn) { warn = !toast_.startsWith(U("✓")); ok = !warn; sub = toast_; }
    else if (!ph.pending.isEmpty()) { sub = U("Версия ") + ph.pending + U(" е изтеглена — изключи и включи XBody"); ok = true; }
    else if (ph.phone && ph.state == U("downloading")) sub = U("Телефонът е свързан — изтеглям версия ") + ph.phoneVer + U("…");
    else if (ph.phone && ph.state.startsWith(U("error"))) { sub = U("Телефонът е свързан, но изтеглянето не стана — опитвам пак"); warn = true; }
    else if (ph.phone && ph.state == U("current")) { sub = U("Телефонът е свързан · XBody е с последната версия"); ok = true; }
    else if (!live.running) { sub = U("Модулът за кабела не отговаря — XBody работи както без него"); warn = true; }
    else if (live.training && !live.program.empty()) {
        const xbprog::Program *pr = xbprog::byId(live.program);
        xbprog::Plan pl;
        bool ok2 = pr && xbprog::plan(*pr, live.programMin, &pl);
        int si = live.programSeg < 0 ? 0 : live.programSeg >= pl.info.n ? pl.info.n - 1 : live.programSeg;
        sub = ok2 ? U("XBody тренира · ") + U(pr->name) +
                        (live.programOver ? U(" завърши") : U(" — ") + U(pl.segs[si].name))
                  : U("XBody тренира");
    } else if (live.training) sub = live.second ? U("XBody тренира · сега върви двойният импулс") : U("XBody тренира");
    else sub = U("Важи за всяка тренировка на XBody");
    paintHeader(p, U("КАБЕЛ НА XBODY"), sub, warn, ok);
    if (app_->bridgeOk()) {   // back to the wireless suits
        QRect r(653, 0, 147, 56);
        if (pressed_ == U("wireless")) p.fillRect(r.adjusted(1, 0, 0, 0), PRESS);
        p.setPen(INK);
        p.setFont(uiFont(16, true));
        p.drawText(r, Qt::AlignCenter, U("Безжични  ›"));
        hit(r, U("wireless"));
    }
    // Two tabs: the ready programs (per session) | the suit standard and the double impulse (set once).
    QRect seg(130, 64, 540, 44);
    p.setPen(QPen(LINE, 2));
    p.setBrush(WHITE);
    p.drawRoundedRect(QRectF(seg).adjusted(1, 1, -1, -1), 10, 10);
    for (int i = 0; i < 2; i++) {
        QRect h(seg.left() + i * 270, seg.top(), 270, 44);
        QString id = i ? U("tab-cable") : U("tab-prog");
        bool sel = cableTab_ == i;
        if (sel || pressed_ == id) {
            p.setPen(Qt::NoPen);
            p.setBrush(sel ? INK : PRESS);
            p.drawRoundedRect(QRectF(h).adjusted(4, 4, -4, -4), 8, 8);
        }
        p.setPen(sel ? WHITE : INK);
        p.setFont(uiFont(16, sel));
        QString t = i ? U("Кабел и импулс") : U("Програми");
        if (!i && !c.program.empty()) t += U("  ●");
        p.drawText(h, Qt::AlignCenter, t);
        hit(h, id);
    }
    if (cableTab_ == 0) { paintPrograms(p); return; }
    p.save();
    p.translate(0, 48);
    dy_ = 48;
    paintCableSettings(p);
    dy_ = 0;
    p.restore();
}

void PanelWidget::paintCableSettings(QPainter &p) {
    const xbcable::Config &c = app_->cable();
    const App::CableLive &live = app_->cableLive();
    // ---- left: the suit on the cable ----
    caption(p, 24, 70, U("КОСТЮМЪТ НА КАБЕЛА"));
    QRect info(352, 62, 36, 36);
    p.setPen(QPen(pressed_ == U("cable-info") ? RED : GREY, 2));
    p.setBrush(pressed_ == U("cable-info") ? PRESS : WHITE);
    p.drawEllipse(QRectF(info).adjusted(5, 5, -5, -5));
    p.setPen(SOFT);
    p.setFont(uiFont(15, true));
    p.drawText(info, Qt::AlignCenter, U("i"));
    hit(info.adjusted(-6, -6, 6, 6), U("cable-info"));
    for (int i = 0; i < 2; i++) {
        int w = i ? xbcable::WIRE_XEMS : xbcable::WIRE_XBODY;
        bool sel = c.wiring == w;
        QRect t(24 + i * 192, 100, 172, 190);
        QString id = i ? U("cw-xems") : U("cw-xbody");
        p.setPen(QPen(sel ? RED : LINE, sel ? 3 : 2));
        p.setBrush(pressed_ == id ? PRESS : WHITE);
        p.drawRoundedRect(QRectF(t).adjusted(1.5, 1.5, -1.5, -1.5), 10, 10);
        suitFigure(p, QRect(t.left() + 20, t.top() + 16, 132, 110), sel);
        p.setPen(sel ? RED : INK);
        p.setFont(uiFont(22, true));
        p.drawText(QRect(t.left(), t.top() + 130, t.width(), 30), Qt::AlignCenter, i ? U("XEMS") : U("XBody"));
        p.setPen(SOFT);
        p.setFont(uiFont(15));
        p.drawText(QRect(t.left(), t.top() + 158, t.width(), 22), Qt::AlignCenter, U("костюм"));
        if (sel) {   // ✓ badge in the corner
            p.setPen(Qt::NoPen);
            p.setBrush(RED);
            p.drawEllipse(QRectF(t.right() - 34, t.top() + 8, 26, 26));
            p.setPen(QPen(WHITE, 2.5, Qt::SolidLine, Qt::RoundCap, Qt::RoundJoin));
            p.drawLine(QPointF(t.right() - 27, t.top() + 21), QPointF(t.right() - 23, t.top() + 26));
            p.drawLine(QPointF(t.right() - 23, t.top() + 26), QPointF(t.right() - 15, t.top() + 16));
        }
        hit(t, id);
    }
    p.setPen(SOFT);
    p.setFont(uiFont(15));
    p.drawText(QRect(24, 302, 364, 44), Qt::AlignLeft | Qt::AlignTop | Qt::TextWordWrap,
               c.wiring == xbcable::WIRE_XEMS ? U("Каналите се пренасочват: „Корем“ на XBody работи корема на XEMS костюма.")
                                              : U("Зоните на XBody отиват направо — както винаги."));
    if (live.training && live.wiring != c.wiring) {   // latched for the running training
        p.setPen(Qt::NoPen);
        p.setBrush(QColor(0xFF, 0xF4, 0xD6));
        p.drawRoundedRect(QRectF(24, 352, 364, 40), 8, 8);
        p.setPen(QColor(0x9A, 0x6B, 0x00));
        p.setFont(uiFont(15, true));
        p.drawText(QRect(36, 352, 340, 40), Qt::AlignLeft | Qt::AlignVCenter, U("Сменя се от следващата тренировка"));
    }

    // ---- right: the double impulse ----
    p.setPen(QPen(QColor(0xE3, 0xE4, 0xE6), 1));
    p.drawLine(400, 70, 400, 400);
    caption(p, 424, 70, U("ДВОЕН ИМПУЛС"));
    if (live.second) {   // on right now: a live dot
        p.setPen(Qt::NoPen);
        p.setBrush(YELLOW);
        p.drawEllipse(QRectF(578, 74, 12, 12));
        p.setPen(QColor(0x9A, 0x6B, 0x00));
        p.setFont(uiFont(13, true));
        p.drawText(QRect(596, 70, 60, 20), Qt::AlignLeft | Qt::AlignVCenter, U("СЕГА"));
    }
    QRect sw(696, 64, 80, 34);   // the switch
    p.setPen(Qt::NoPen);
    p.setBrush(c.dbl ? GREEN : QColor(0xD5, 0xD7, 0xDA));
    p.drawRoundedRect(QRectF(sw), 17, 17);
    p.setBrush(WHITE);
    p.drawEllipse(QRectF(c.dbl ? sw.right() - 31 : sw.left() + 3, sw.top() + 3, 28, 28));
    hit(sw.adjusted(-80, -8, 4, 8), U("cdbl"));
    // The rhythm: impulse (green), pause (grey) with the second impulse's beats (amber) inside it.
    QRectF tl(424, 108, 352, 56);
    p.setPen(Qt::NoPen);
    p.setBrush(QColor(0xF4, 0xF5, 0xF6));
    p.drawRoundedRect(tl, 10, 10);
    QRectF imp(tl.left() + 12, tl.top() + 14, 130, 18), pau(tl.left() + 146, tl.top() + 14, 194, 18);
    p.setBrush(GREEN);
    p.drawRoundedRect(imp, 4, 4);
    p.setBrush(QColor(0xDD, 0xDF, 0xE2));
    p.drawRoundedRect(pau, 4, 4);
    if (c.dbl) {
        int beats = c.dblHz * 2 > 18 ? 18 : c.dblHz * 2;   // a 2-s look at it
        double x0 = pau.left() + 24, x1 = pau.right() - 16, h = 18 * (c.dblPct > 100 ? 1.0 : 0.45 + c.dblPct / 180.0);
        for (int b = 0; b < beats; b++) {
            double x = x0 + (x1 - x0) * (beats > 1 ? (double)b / (beats - 1) : 0.5);
            p.setBrush(YELLOW);
            p.drawRoundedRect(QRectF(x - 2, pau.bottom() - h, 4, h), 1.5, 1.5);
        }
    }
    p.setFont(uiFont(13, true));
    p.setPen(GREEN);
    p.drawText(QRect((int)imp.left(), (int)tl.top() + 34, 130, 18), Qt::AlignLeft | Qt::AlignVCenter, U("импулс"));
    p.setPen(c.dbl ? QColor(0x9A, 0x6B, 0x00) : SOFT);
    p.drawText(QRect((int)pau.left(), (int)tl.top() + 34, 194, 18), Qt::AlignLeft | Qt::AlignVCenter,
               c.dbl ? U("пауза + втори импулс") : U("пауза"));
    // Its settings (greyed while off).
    p.setOpacity(c.dbl ? 1.0 : 0.4);
    p.setPen(INK);
    p.setFont(uiFont(16));
    p.drawText(QRect(424, 182, 150, 52), Qt::AlignLeft | Qt::AlignVCenter, U("Честота"));
    pill(p, QRect(590, 182, 186, 52), QString::number(c.dblHz) + U(" Hz"), U("cbhz"), c.dbl);
    p.setPen(INK);
    p.setFont(uiFont(16));
    p.drawText(QRect(424, 246, 160, 52), Qt::AlignLeft | Qt::AlignVCenter | Qt::TextWordWrap, U("Сила спрямо импулса"));
    pill(p, QRect(590, 246, 186, 52), QString::number(c.dblPct) + U(" %"), U("cbpct"), c.dbl);
    p.setOpacity(1.0);
    p.setPen(SOFT);
    p.setFont(uiFont(14));
    p.drawText(QRect(424, 310, 352, 60), Qt::AlignLeft | Qt::AlignTop | Qt::TextWordWrap,
               U("В паузата, от втория цикъл. Винаги под честотата на импулса, до 1,5 × силата му. СТОП го спира веднага."));

    // ---- update XEMS (internet / USB stick) and send the log: one button, the choices behind it ----
    {
        QRect u(24, 352, 364, 42);
        bool pr = pressed_ == U("usb-update");
        p.setPen(QPen(pr ? RED : GREY, 2));
        p.setBrush(pr ? PRESS : WHITE);
        p.drawRoundedRect(QRectF(u).adjusted(1, 1, -1, -1), 10, 10);
        p.setPen(pr ? RED : INK);
        p.setFont(uiFont(16, true));
        p.drawText(u, Qt::AlignCenter, app_->netBusy() ? U("Обновяване и лог …") : U("Обнови  ·  Лог  ·  Wi‑Fi"));
        hit(u, U("usb-update"));
    }

    // ---- bottom: the wireless suits (XIAO), only while no bridge is plugged ----
    if (app_->bridgeOk()) return;
    QString uf2 = app_->uf2State();
    bool flashing = uf2 == U("flashing"), restarting = uf2 == U("done") || app_->bridgeUpdating(),
         failed = uf2.startsWith(U("error"));
    QRect card(24, 412, 752, 120);
    p.setPen(Qt::NoPen);
    p.setBrush(QColor(0xF4, 0xF5, 0xF6));
    p.drawRoundedRect(QRectF(card), 12, 12);
    QRectF board(48, 440, 100, 66);   // the XIAO, RESET circled
    p.setBrush(INK);
    p.drawRoundedRect(board, 8, 8);
    p.setBrush(QColor(0x9A, 0xA0, 0xA8));
    p.drawRect(QRectF(80, 431, 36, 12));
    p.setBrush(flashing ? RED : GREEN);
    p.drawEllipse(QRectF(130, 447, 8, 8));
    p.setBrush(WHITE);
    p.drawRoundedRect(QRectF(120, 482, 16, 12), 3, 3);
    p.setPen(QPen(RED, 2.5));
    p.setBrush(Qt::NoBrush);
    p.drawEllipse(QRectF(112, 472, 32, 32));
    p.setPen(RED);
    p.setFont(uiFont(16, true));
    p.drawText(QRect(152, 462, 34, 22), Qt::AlignLeft | Qt::AlignVCenter, U("2×"));
    QString t1 = U("Безжичен костюм? Включи XEMS моста в USB"),
            t2 = U("Нова платка: натисни RESET два пъти бързо — машината сама я програмира, без компютър.");
    QColor c1 = INK;
    if (flashing) { t1 = U("Програмирам моста") + QString((app_->now() / 400) % 4, QLatin1Char('.')); t2 = U("Не вади платката — няколко секунди."); }
    else if (restarting) { t1 = U("Мостът се рестартира…"); t2 = U("След миг ще потърся костюмите."); }
    else if (failed) { t1 = U("Платката не се записа"); t2 = U("Натисни RESET на XIAO два пъти още веднъж."); c1 = RED; }
    p.setPen(c1);
    p.setFont(uiFont(18, true));
    p.drawText(QRect(204, 426, 556, 30), Qt::AlignLeft | Qt::AlignVCenter, t1);
    p.setPen(SOFT);
    p.setFont(uiFont(15));
    p.drawText(QRect(204, 460, 556, 48), Qt::AlignLeft | Qt::AlignTop | Qt::TextWordWrap, t2);
    if (!flashing && !restarting) {   // what the unit sees — a photo of this line tells why a bridge stays silent
        const App::BridgeDiag &d = app_->bridgeDiag();
        QString l = U("Виждам: ") + (d.usb ? U("XIAO по USB ✓") : U("няма XIAO по USB")) + U("  ·  ") +
                    (d.port.isEmpty() ? U("няма порт") : d.port.mid(d.port.lastIndexOf(QLatin1Char('/')) + 1) + U(" ✓")) +
                    U("  ·  ") + (d.rx ? U("отговор ") + QString::number(d.rx) + U(" байта") : U("без отговор"));
        p.setFont(uiFont(13));
        p.drawText(QRect(204, 508, 556, 20), Qt::AlignLeft | Qt::AlignVCenter, l);
    }
}

// A program's tile: a red line icon for the procedure (Health Icons, CC0 — xbody/panel/art) on white, like XBody's
// own program-selection tiles (/opt/xems/art, scripts/xbody/gen-panel-art.py).
static QPixmap programTile(const xbprog::Program &pr) {
    static QMap<QString, QPixmap> cache;
    QString key = QString::fromLatin1(pr.id);
    if (cache.contains(key)) return cache.value(key);
    QPixmap out(128, 128);
    out.fill(Qt::white);
    const char *dir = std::getenv("XEMS_ART");
    QPixmap art;
    if (art.load(QString::fromLocal8Bit(dir ? dir : "/opt/xems/art") + U("/") + key + U(".png"))) {
        QPainter p(&out);
        p.drawPixmap((128 - art.width()) / 2, (128 - art.height()) / 2 - 8, art);
    }
    cache.insert(key, out);
    return out;
}

// The length a program runs at with this config (the trainer's pick, else its own).
static int planMinutes(const xbcable::Config &c, const xbprog::Program &pr) { return c.minutes ? c.minutes : pr.minutes; }

// "Програми": a tile per ready passive program (+ "Без програма") (left), what the chosen one does, its length and
// its phases (right). One tap chooses (it starts with XBody's START), a second tap or "Без програма" leaves XBody as
// set. The length: 10 min = the after-training version where a program has one, else the phases in proportion.
void PanelWidget::paintPrograms(QPainter &p) {
    const xbcable::Config &c = app_->cable();
    const App::CableLive &live = app_->cableLive();
    const xbprog::Program *ps;
    int n = xbprog::programs(&ps);
    p.setRenderHint(QPainter::SmoothPixmapTransform, true);
    for (int i = 0; i <= n && i < 8; i++) {
        QRect t(24 + (i % 4) * 128, 120 + (i / 4) * 208, 120, 200);
        bool none = i == n;
        const xbprog::Program *pr = none ? 0 : &ps[i];
        QString id = none ? U("prog-none") : U("prog:") + QString::fromLatin1(pr->id);
        bool sel = none ? c.program.empty() : c.program == pr->id;
        bool run = !none && live.training && live.program == pr->id && !live.programOver;
        p.setPen(QPen(sel ? RED : LINE, sel ? 3 : 2));
        p.setBrush(pressed_ == id ? PRESS : WHITE);
        p.drawRoundedRect(QRectF(t).adjusted(1.5, 1.5, -1.5, -1.5), 12, 12);
        QRect img(t.left() + 10, t.top() + 10, 100, 100);
        if (none) {   // XBody as set: a red line "off" ring, in the icons' style
            p.setPen(QPen(RED, 3.5, Qt::SolidLine, Qt::RoundCap));
            p.setBrush(Qt::NoBrush);
            p.drawEllipse(QRectF(img.center().x() - 26, img.center().y() - 22, 52, 52));
            p.drawLine(QPointF(img.center().x() - 16, img.center().y() + 4), QPointF(img.center().x() + 16, img.center().y() + 4));
        } else {
            p.save();
            QPainterPath clip;
            clip.addRoundedRect(QRectF(img), 10, 10);
            p.setClipPath(clip);
            p.drawPixmap(img, programTile(*pr));
            p.restore();
        }
        if (!none && pr->post && c.minutes == xbprog::POST_MIN) {   // its own after-training version plays
            QRect tag(t.left() + 7, t.top() + 7, 66, 18);
            p.setPen(Qt::NoPen);
            p.setBrush(GREEN);
            p.drawRoundedRect(QRectF(tag), 9, 9);
            p.setPen(WHITE);
            p.setFont(uiFont(10, true));
            p.drawText(tag, Qt::AlignCenter, U("след трен."));
        }
        if (sel) {   // ✓ badge
            p.setPen(Qt::NoPen);
            p.setBrush(RED);
            p.drawEllipse(QRectF(t.right() - 32, t.top() + 6, 26, 26));
            p.setPen(QPen(WHITE, 2.5, Qt::SolidLine, Qt::RoundCap, Qt::RoundJoin));
            p.drawLine(QPointF(t.right() - 25.5, t.top() + 19), QPointF(t.right() - 21, t.top() + 23.5));
            p.drawLine(QPointF(t.right() - 21, t.top() + 23.5), QPointF(t.right() - 12.5, t.top() + 14));
        }
        p.setPen(INK);
        p.setFont(uiFont(15, true));
        p.drawText(QRect(t.left() + 4, t.top() + 114, t.width() - 8, 40), Qt::AlignHCenter | Qt::AlignTop | Qt::TextWordWrap,
                   none ? U("Без програма") : U(pr->name));
        p.setPen(run ? GREEN : SOFT);
        p.setFont(uiFont(13, run));
        QString cap;
        if (none) cap = U("XBody както е");
        else if (run) cap = U("▶ върви");
        else {
            xbprog::Plan pl;
            xbprog::plan(*pr, planMinutes(c, *pr), &pl);
            const xbprog::Seg &g = pl.segs[xbprog::mainSeg(pl.program())];   // its main frequency
            cap = QString::number(pl.info.minutes) + U(" мин · ") + QString::number(g.hz) +
                  (g.hz2 ? U("↔") + QString::number(g.hz2) : QString()) + U(" Hz");
        }
        p.drawText(QRect(t.left(), t.top() + 172, t.width(), 20), Qt::AlignCenter, cap);
        hit(t, id);
    }

    // ---- right: the chosen program ----
    QRect side(552, 120, 224, 408);
    p.setPen(Qt::NoPen);
    p.setBrush(QColor(0xF4, 0xF5, 0xF6));
    p.drawRoundedRect(QRectF(side), 12, 12);
    const xbprog::Program *pr = xbprog::byId(c.program);
    int x = side.left() + 14, w = side.width() - 28;
    if (!pr) {
        caption(p, x, 136, U("БЕЗ ПРОГРАМА"));
        p.setPen(INK);
        p.setFont(uiFont(17));
        p.drawText(QRect(x, 164, w, 120), Qt::AlignLeft | Qt::AlignTop | Qt::TextWordWrap,
                   U("XBody работи точно както го настроиш."));
        p.setPen(SOFT);
        p.setFont(uiFont(15));
        p.drawText(QRect(x, 226, w, 290), Qt::AlignLeft | Qt::AlignTop | Qt::TextWordWrap,
                   U("Избери пасивна програма вляво и времето ѝ. Тя тръгва със START на XBody и сама води честотата, "
                     "ритъма и вълната. Силата по зоните остава твоя — в XBody; програмата никога не я надвишава.\n\n"
                     "10 мин — за след тренировка."));
        return;
    }
    bool run = live.training && live.program == pr->id;
    xbprog::Plan pl;   // what plays: the running one as latched, else the chosen length
    xbprog::plan(*pr, run ? live.programMin : planMinutes(c, *pr), &pl);
    p.setPen(INK);
    int tpx = 20;   // the name on one line: smaller rather than cut
    while (tpx > 15 && QFontMetrics(uiFont(tpx, true)).width(U(pr->name)) > w) tpx--;
    p.setFont(uiFont(tpx, true));
    p.drawText(QRect(x, 128, w, 28), Qt::AlignLeft | Qt::AlignVCenter, U(pr->name));
    p.setPen(pl.post ? GREEN : SOFT);
    p.setFont(uiFont(13, pl.post));
    p.drawText(QRect(x, 156, w, 52), Qt::AlignLeft | Qt::AlignTop | Qt::TextWordWrap, U(pl.info.how));
    // The length: one tap. The program's own length carries a dot; 10 = after a training.
    int cur = planMinutes(c, *pr), cw = w / xbprog::LEN_N;
    for (int i = 0; i < xbprog::LEN_N; i++) {
        int m = xbprog::LENGTHS[i];
        QRect h(x + i * cw, 212, cw - 4, 40);
        QString id = U("pmin:") + QString::number(m);
        bool sel = m == cur;
        p.setPen(sel ? Qt::NoPen : QPen(LINE, 1.5));
        p.setBrush(sel ? INK : pressed_ == id ? PRESS : WHITE);
        p.drawRoundedRect(QRectF(h).adjusted(0.75, 0.75, -0.75, -0.75), 8, 8);
        p.setPen(sel ? WHITE : INK);
        p.setFont(uiFont(16, sel));
        p.drawText(h.adjusted(0, -4, 0, -4), Qt::AlignCenter, QString::number(m));
        if (m == pr->minutes) {   // its own length
            p.setPen(Qt::NoPen);
            p.setBrush(sel ? WHITE : SOFT);
            p.drawEllipse(QRectF(h.center().x() - 2, h.bottom() - 9, 4, 4));
        } else if (m == xbprog::POST_MIN) {
            p.setPen(sel ? WHITE : GREEN);
            p.setFont(uiFont(9, true));
            p.drawText(QRect(h.left(), h.bottom() - 14, h.width(), 12), Qt::AlignCenter, U("след"));
        }
        if (!run) hit(h, id);
    }
    // The phases: a bar in proportion (green = ≥ 20 Hz work, teal = the wave, grey = low Hz), then the list.
    const xbprog::Program prog = pl.program();
    int total = xbprog::totalMs(prog), bx = x, by = 264;
    for (int i = 0; i < prog.n; i++) {
        const xbprog::Seg &g = prog.segs[i];
        int bw = (int)((double)w * g.ms / total + 0.5);
        if (i == prog.n - 1) bw = x + w - bx;
        QColor col = g.wave ? QColor(0x1F, 0x9E, 0xB0) : g.hz >= 20 ? GREEN : QColor(0xC4, 0xC8, 0xCC);
        p.setPen(Qt::NoPen);
        p.setBrush(col);
        p.drawRect(QRectF(bx, by, bw - 2, 8));
        bx += bw;
    }
    if (run) {   // where the training is
        double f = (double)live.programS * 1000.0 / total;
        if (f > 1) f = 1;
        p.setPen(QPen(INK, 2));
        p.drawLine(QPointF(x + w * f, by - 4), QPointF(x + w * f, by + 12));
    }
    for (int i = 0; i < prog.n && i < 6; i++) {
        const xbprog::Seg &g = prog.segs[i];
        int y = 278 + i * 25;
        bool now = run && !live.programOver && live.programSeg == i;
        QColor col = g.wave ? QColor(0x1F, 0x9E, 0xB0) : g.hz >= 20 ? GREEN : QColor(0xC4, 0xC8, 0xCC);
        p.setPen(Qt::NoPen);
        p.setBrush(col);
        p.drawEllipse(QRectF(x, y + 8, 8, 8));
        p.setPen(now ? INK : SOFT);
        p.setFont(uiFont(13, now));
        int sec = g.ms / 1000;
        QString len = sec % 60 ? QString::number(sec / 60) + U(":") + QString::number(sec % 60).rightJustified(2, QLatin1Char('0'))
                               : QString::number(sec / 60) + U(" мин");
        QString right = len + (g.dblHz ? U(" · 2×") : QString());
        int rw = QFontMetrics(uiFont(13, now)).width(right) + 6;
        p.drawText(QRect(x + 14, y, w - 14 - rw, 24), Qt::AlignLeft | Qt::AlignVCenter,
                   QFontMetrics(uiFont(13, now)).elidedText(U(g.name), Qt::ElideRight, w - 14 - rw));
        p.drawText(QRect(x + 14, y, w - 14, 24), Qt::AlignRight | Qt::AlignVCenter, right);
    }
    QRect box(x, 432, w, 84);
    p.setPen(Qt::NoPen);
    if (run && live.programOver) {
        p.setBrush(QColor(0xDF, 0xF5, 0xEC));
        p.drawRoundedRect(QRectF(box), 8, 8);
        p.setPen(GREEN);
        p.setFont(uiFont(15, true));
        p.drawText(box.adjusted(10, 0, -10, 0), Qt::AlignLeft | Qt::AlignVCenter | Qt::TextWordWrap,
                   U("✓ Програмата завърши — спри XBody"));
    } else if (run) {
        p.setBrush(WHITE);
        p.drawRoundedRect(QRectF(box), 8, 8);
        p.setPen(INK);
        p.setFont(uiFont(28, true));
        p.drawText(box.adjusted(12, 0, 0, -22), Qt::AlignLeft | Qt::AlignVCenter, mmss(live.programS));
        p.setPen(SOFT);
        p.setFont(uiFont(14));
        p.drawText(box.adjusted(12, 0, -12, -10), Qt::AlignLeft | Qt::AlignBottom, U("от ") + mmss(total / 1000));
    } else {
        p.setBrush(QColor(0xFF, 0xF4, 0xD6));   // the strategy for this length, then what to do
        p.drawRoundedRect(QRectF(box), 8, 8);
        p.setPen(QColor(0x7A, 0x55, 0x00));
        p.setFont(uiFont(13, true));
        p.drawText(box.adjusted(10, 6, -10, -40), Qt::AlignLeft | Qt::AlignTop | Qt::TextWordWrap, U(pl.note));
        p.setFont(uiFont(13));
        p.drawText(box.adjusted(10, 44, -10, -4), Qt::AlignLeft | Qt::AlignTop | Qt::TextWordWrap,
                   live.training ? U("Тръгва от следващата тренировка на XBody")
                                 : U("XBody ≥ ") + QString::number(pl.info.minutes) + U(" мин → START"));
    }
}

// ⓘ What the XEMS standard does on the cable: each XBody zone and the lead it now leaves on.
void PanelWidget::paintCableInfo(QPainter &p) {
    hits_.clear();
    p.fillRect(QRect(0, 0, 800, 600), QColor(0x30, 0x37, 0x41, 120));
    QRect card(170, 40, 460, 520);
    p.setPen(Qt::NoPen);
    p.setBrush(WHITE);
    p.drawRoundedRect(QRectF(card), 14, 14);
    p.setPen(INK);
    p.setFont(uiFont(20));
    p.drawText(QRect(196, 54, 410, 36), Qt::AlignLeft | Qt::AlignVCenter, U("XEMS костюм на кабела на XBody"));
    caption(p, 196, 96, U("ЗОНА В XBODY"));
    p.setFont(uiFont(13, true));
    p.setPen(GREY);
    p.drawText(QRect(420, 96, 186, 20), Qt::AlignRight | Qt::AlignVCenter, U("ИЗЛИЗА ПО КАБЕЛ"));
    // XBody uems order shown as XBody's screen lists them (column 1, then 2).
    static const int ORDER[10] = {7, 8, 6, 5, 3, 1, 0, 2, 4, 9};
    static const char *NAME[10] = {"Трапец", "Гръб", "Гърди", "Кръст", "Ръце", "Корем", "Седалище", "Предно бедро",
                                   "Задно бедро", "Прасец"};
    for (int i = 0; i < 10; i++) {
        int part = ORDER[i], lead = xbcable::xemsLead(part), y = 122 + i * 36;
        bool same = lead == part;
        if (i % 2 == 0) p.fillRect(QRect(186, y, 428, 36), QColor(0xF4, 0xF5, 0xF6));
        p.setPen(INK);
        p.setFont(uiFont(16));
        p.drawText(QRect(196, y, 190, 36), Qt::AlignLeft | Qt::AlignVCenter, U(NAME[part]));
        p.setPen(same ? GREY : RED);
        p.drawText(QRect(380, y, 40, 36), Qt::AlignCenter, U("→"));
        p.setPen(same ? SOFT : INK);
        p.setFont(uiFont(16, !same));
        p.drawText(QRect(420, y, 186, 36), Qt::AlignRight | Qt::AlignVCenter, U(NAME[lead]));
    }
    filled(p, QRect(500, 492, 110, 52), U("info-close"), QString(), INK, WHITE, U("Ясно"), 17);
    hit(QRect(0, 0, 800, 600), U("info-close"));
}

// Like XBody's program selection: tiles with a red emblem, the caption under each.
void PanelWidget::paintPick(QPainter &p) {
    int dots = (app_->now() / 400) % 4;
    QString n = app_->note();
    paintHeader(p, U("ИЗБЕРИ КОСТЮМ"), n.isEmpty() ? U("Търся наблизо") + QString(dots, QLatin1Char('.')) : n,
                !n.isEmpty() && app_->noteWarn(), !n.isEmpty() && !app_->noteWarn());
    QRect cb(653, 0, 147, 56);   // XBody's own cable settings
    if (pressed_ == U("cable")) p.fillRect(cb.adjusted(1, 0, 0, 0), PRESS);
    p.setPen(INK);
    p.setFont(uiFont(16, true));
    p.drawText(QRect(653, 4, 147, 26), Qt::AlignCenter, U("Кабел"));
    const xbcable::Config &cc = app_->cable();
    p.setPen(SOFT);
    p.setFont(uiFont(14));
    p.drawText(QRect(653, 28, 147, 22), Qt::AlignCenter,
               (cc.wiring == xbcable::WIRE_XEMS ? U("XEMS") : U("XBody")) + (cc.dbl ? U(" · 2×") : QString()));
    hit(cb, U("cable"));
    const std::vector<Seen> &s = app_->seen();
    std::vector<int> order;
    for (size_t i = 0; i < s.size(); i++) order.push_back((int)i);
    for (size_t i = 0; i < order.size(); i++)   // strongest signal first
        for (size_t j = i + 1; j < order.size(); j++)
            if (s[order[j]].rssi > s[order[i]].rssi) { int t = order[i]; order[i] = order[j]; order[j] = t; }
    if (order.empty()) {
        p.setPen(INK);
        p.setFont(uiFont(24));
        p.drawText(QRect(0, 250, 800, 40), Qt::AlignCenter, U("Включи костюма — ще се появи тук"));
        return;
    }
    const int cx[3] = {152, 400, 648};
    for (size_t k = 0; k < order.size() && k < 6; k++) {
        const Seen &d = s[order[k]];
        bool linking = d.mac == app_->linkingMac();
        QRect tile(cx[k % 3] - 75, 80 + (int)(k / 3) * 236, 150, 150);
        QString id = U("suit:") + QString::fromStdString(d.mac);
        outlined(p, tile, app_->linkingMac().empty() ? id : QString(), QString(), 0, linking);
        bool bt = d.kind == Suit::BODYTECH, wi = d.kind == Suit::WIEMS;
        p.setPen(linking ? WHITE : RED);
        p.setFont(uiFont(bt || wi ? 22 : 30, true));
        p.drawText(QRect(tile.left(), tile.top() + 20, 150, 60), Qt::AlignCenter,
                   bt ? U("bodytech") : wi ? U("WiEMS") : U("XEMS"));
        if (linking) {
            p.setFont(uiFont(16));
            p.drawText(QRect(tile.left(), tile.top() + 86, 150, 40), Qt::AlignCenter,
                       U("Свързвам") + QString(dots, QLatin1Char('.')));
        } else {
            signalBars(p, QRect(tile.left() + 57, tile.top() + 92, 36, 30), d.rssi, RED, LINE);
        }
        p.setPen(INK);
        p.setFont(uiFont(17));
        QRect cap(tile.left() - 45, tile.bottom() + 8, 240, 44);
        p.drawText(cap, Qt::AlignHCenter | Qt::AlignTop | Qt::TextWordWrap, QString::fromStdString(d.name).toUpper());
        if (app_->linkingMac().empty()) hit(cap, id);
    }
}

// One zone button, XBody style: name and % (left column "name … %", right column "% … name").
void PanelWidget::paintZone(QPainter &p, const QRect &r, int zi, bool right) {
    Suit *s = app_->suit();
    const Zone *z;
    zonesOf(&z);
    bool on = (sel_ & (1u << zi)) != 0;
    outlined(p, r, U("z:%1").arg(zi), QString(), 0, on);
    QRect in = r.adjusted(10, 0, -12, 0);
    p.setPen(on ? WHITE : INK);
    p.setFont(uiFont(15));
    p.drawText(in, (right ? Qt::AlignRight : Qt::AlignLeft) | Qt::AlignVCenter, QString::fromUtf8(z[zi].name));
    int pct = sliding_ && slideZone_ == zi && slideValue_ >= 0 ? slideValue_ : s->zone(z[zi]);
    if (!on && pct == 0) p.setPen(GREY);   // an idle zone reads as off
    p.setFont(uiFont(18, true));
    p.drawText(in, (right ? Qt::AlignLeft : Qt::AlignRight) | Qt::AlignVCenter, QString::number(pct) + U("%"));
    if (sliding_ && slideZone_ == zi) {    // the slide's bar: where the finger has it
        p.setPen(Qt::NoPen);
        p.setBrush(on ? WHITE : RED);
        p.drawRoundedRect(QRectF(r.left() + 8, r.bottom() - 7, (r.width() - 16) * pct / 100.0, 3), 1.5, 1.5);
    }
}

// The zone of the screen that drives figure region `region` (XEMS channel order); −1 = none on this suit.
int PanelWidget::zoneOfRegion(int region) const {
    static const char *REGION[BodyFig::REGIONS] = {"Гърди", "Корем", "Предно бедро", "Прасец", "Ръце",
                                                   "Трапец", "Гръб", "Кръст", "Седалище", "Задно бедро"};
    const Zone *z;
    int n = zonesOf(&z);
    for (int i = 0; i < n; i++) {
        if (!qstrcmp(z[i].name, REGION[region])) return i;
        if (!qstrcmp(z[i].name, "Бедра") && (region == 2 || region == 9)) return i;   // bodytech: both thighs
    }
    return -1;
}

// The XEMS figures of the session's sex (owner: female by default), front | back, every zone in XBody's red as strong
// as its impulse now; a selected zone that gives nothing is tinted lightly (as XBody lights its selection). false =
// the figures are not on the card (an old mod): XBody's own picture is painted instead.
bool PanelWidget::paintFigures(QPainter &p) {
    Suit *s = app_->suit();
    int sex = app_->female() ? 1 : 0;
    if (figsSex_ != sex) {
        const char *d = std::getenv("XEMS_BODY");
        QString dir = QString::fromLocal8Bit(d ? d : "/opt/xems/body"), key = sex ? U("female") : U("male");
        figs_[0].load(dir, key + U("_front"));
        figs_[1].load(dir, key + U("_back"));
        figsSex_ = sex;
    }
    if (!figs_[0].ok() || !figs_[1].ok()) return false;
    const QColor light(0xF4, 0xA0, 0xA3);
    unsigned col[BodyFig::REGIONS];
    int alpha[BodyFig::REGIONS];
    const Zone *z;
    zonesOf(&z);
    for (int r = 0; r < BodyFig::REGIONS; r++) {
        int zi = zoneOfRegion(r);
        col[r] = RED.rgb() & 0xFFFFFF;
        alpha[r] = 0;
        if (zi < 0) continue;
        double t = s->liveLevel(z[zi].ch[0]) / 100.0;
        if (t > 0) {
            double k = t / 0.8 > 1 ? 1.0 : t / 0.8;   // in step with the impulse: deep red from 80 % (as the tablet app)
            // the second impulse (double impulse, in the pause) in XBody's yellow — the main one in its red
            bool second = s->state() == Suit::RUNNING && !s->impulse();
            col[r] = (second ? mix(QColor(0xFF, 0xE2, 0x8A), QColor(0xF5, 0xA6, 0x00), k) : mix(light, RED, k)).rgb() & 0xFFFFFF;
            alpha[r] = (int)(28 + 72 * k);
        } else if (sel_ & (1u << zi)) {
            alpha[r] = 30;
        }
    }
    for (int f = 0; f < 2; f++) {
        BodyFig &b = figs_[f];
        b.paint(col, alpha);
        QRect r((f ? 510 : 300) - b.width() / 2, 106, b.width(), b.height());
        figRect_[f] = r;
        p.drawImage(r.topLeft(), b.art());
        p.drawImage(r.topLeft(), b.over());
        hit(r, U("fig:%1").arg(f));
    }
    return true;
}

void PanelWidget::paintTrain(QPainter &p) {
    Suit *s = app_->suit();
    const Program &pr = s->program();
    bool idle = s->state() == Suit::IDLE, running = s->state() == Suit::RUNNING;
    bool bt = s->kind() == Suit::BODYTECH;
    if (selKind_ != s->kind()) { sel_ = 0; selKind_ = s->kind(); }
    sel_ &= allZones();

    const Zone *z;
    int nz = zonesOf(&z), nl = Suit::zonesLeft(s->kind());
    // ---- the body, front and back: the XEMS figures (each zone as red as its impulse), else XBody's own ----
    if (paintFigures(p)) {
    } else if (const QPixmap *body = pix("BodyNormal")) {
        p.drawPixmap(153, 45, *body);
        for (int i = 0; i < nz; i++)
            for (int m = 0; m < 2; m++)
                if ((sel_ & (1u << i)) && z[i].mask[m])
                    if (const QPixmap *mk = pix(z[i].mask[m])) p.drawPixmap(153, 45, *mk);
    } else {   // a plain stand-in figure
        p.setPen(Qt::NoPen);
        p.setBrush(QColor(0xD9, 0xDB, 0xDE));
        for (int f = 0; f < 2; f++) {
            int c = f ? 495 : 305;
            p.drawEllipse(QRectF(c - 22, 112, 44, 52));
            p.drawRoundedRect(QRectF(c - 55, 170, 110, 170), 24, 24);
            p.drawRoundedRect(QRectF(c - 50, 330, 44, 150), 18, 18);
            p.drawRoundedRect(QRectF(c + 6, 330, 44, 150), 18, 18);
        }
    }

    // ---- header over the picture's top edge (as on XBody): ← XBody | suit, kind, battery or the note | program ----
    bool toastOn = (int)(toastUntilMs_ - app_->now()) > 0;
    QString n = toastOn ? toast_ : app_->note();
    bool warn = toastOn || app_->noteWarn();
    QString sub = n;
    if (sub.isEmpty())
        sub = (bt ? U("bodytech") : s->kind() == Suit::WIEMS ? (app_->wiring() == Suit::WIRE_XBODY ? U("WiEMS · XEMS костюм") : U("WiEMS"))
               : app_->wiring() == Suit::WIRE_XBODY ? U("XEMS · кабели XBody") : U("XEMS")) +
              U("   ·   батерия ") + (s->battery() < 0 ? U("—") : QString::number(s->battery()) + U("%"));
    paintHeader(p, QString::fromStdString(app_->suitName()).toUpper(), sub, !n.isEmpty() && warn, !n.isEmpty() && !warn);
    if (n.isEmpty()) battery(p, QRect(400 + QFontMetrics(uiFont(14, true)).width(sub) / 2 + 10, 37, 24, 12), s->battery());
    if (idle) hit(QRect(160, 0, 488, 56), U("suit"));   // tap the suit's name: disconnect / another suit
    QRect prog(653, 0, 147, 56);
    if (pressed_ == U("prog")) p.fillRect(prog.adjusted(1, 0, 0, 0), PRESS);
    p.setPen(running ? GREY : INK);
    p.setFont(uiFont(22, true));
    p.drawText(QRect(653, 3, 147, 28), Qt::AlignCenter, QString::number(pr.hz) + U(" Hz"));
    p.setPen(running ? GREY : SOFT);
    p.setFont(uiFont(14, true));
    p.drawText(QRect(653, 30, 147, 22), Qt::AlignCenter,
               QString::number(pr.onS) + U("/") + QString::number(pr.offS) + U(" s · ") +
                   (s->kind() == Suit::WIEMS ? QString::number(pr.totalS / 60) + U(" мин") : QString::number(pr.us) + U(" µs")) +
                   (pr.dbl ? U(" · 2×") : QString()));
    hit(prog, U("prog"));

    // ---- the zone buttons in XBody's two columns ----
    for (int i = 0; i < nz; i++) {
        bool right = i >= nl;
        int row = right ? i - nl : i;
        paintZone(p, QRect(right ? 619 : 14, 86 + row * 70, 175, 50), i, right);
    }

    // ---- timer hump: elapsed | ВСИЧКИ (select every zone) | left ----
    if (const QPixmap *tb = pix("TimerBg")) p.drawPixmap(190, 56, *tb);
    else {
        QPainterPath hump;
        hump.moveTo(190, 56);
        hump.cubicTo(250, 56, 250, 101, 300, 101);
        hump.lineTo(500, 101);
        hump.cubicTo(550, 101, 550, 56, 609, 56);
        hump.closeSubpath();
        p.fillPath(hump, INK);
    }
    clockRect_ = QRect(190, 56, 420, 112);
    paintClock(p);
    bool all = sel_ && sel_ == allZones();
    QRect selR(344, 56, 120, 45);
    p.fillRect(selR, all ? RED : (pressed_ == U("all") ? PRESS : WHITE));
    p.setPen(all ? WHITE : INK);
    QFont sf = uiFont(17, true);
    sf.setLetterSpacing(QFont::AbsoluteSpacing, 1);
    p.setFont(sf);
    p.drawText(selR, Qt::AlignCenter, U("ВСИЧКИ"));
    hit(selR, U("all"));

    // ---- СТАРТ / ПАУЗА left, СТОП right ----
    QRect go(14, 436, 175, 70);
    if (s->startPending())
        filled(p, go, U("go"), QString(), GREY, WHITE, U("МИГ") + QString((app_->now() / 400) % 4, QLatin1Char('.')), 24);
    else if (running) filled(p, go, U("go"), U("Pause"), YELLOW, INK, U("ПАУЗА"), 24);
    else filled(p, go, U("go"), U("Start"), GREEN, WHITE, idle ? U("СТАРТ") : U("ПРОДЪЛЖИ"), idle ? 24 : 20);
    if (!idle) filled(p, QRect(619, 436, 175, 70), U("stop"), U("Stop"), RED, WHITE, U("СТОП"), 24);

    // ---- MASTER hump: the strength; selected (red) = − / + and the slider move it ----
    const QPixmap *mp = pix(sel_ ? "MasterNormal" : "MasterSelected");
    if (mp) p.drawPixmap(190, 480, *mp);
    else {
        QPainterPath hump;
        hump.moveTo(190, 534);
        hump.cubicTo(270, 534, 300, 480, 400, 480);
        hump.cubicTo(500, 480, 530, 534, 610, 534);
        hump.closeSubpath();
        p.fillPath(hump, sel_ ? QColor(0x30, 0x37, 0x41, 204) : RED);
    }
    QFont lf = uiFont(15), bf = uiFont(15, true);
    QString ms = U("СИЛА "), mv = QString::number(s->strength()) + U("%");
    int w1 = QFontMetrics(lf).width(ms), w2 = QFontMetrics(bf).width(mv), x0 = 400 - (w1 + w2) / 2;
    p.setPen(WHITE);
    p.setFont(lf);
    p.drawText(QRect(x0, 500, w1 + 2, 28), Qt::AlignLeft | Qt::AlignVCenter, ms);
    p.setFont(bf);
    p.drawText(QRect(x0 + w1, 500, w2 + 2, 28), Qt::AlignLeft | Qt::AlignVCenter, mv);
    hit(QRect(250, 486, 300, 48), U("master"));

    paintSlider(p);
}

// The clock inside the timer hump and the phase box under it (the part that changes by itself).
void PanelWidget::paintClock(QPainter &p) {
    Suit *s = app_->suit();
    unsigned now = app_->now();
    const Program &pr = s->program();
    bool idle = s->state() == Suit::IDLE, running = s->state() == Suit::RUNNING;
    int left = s->secondsLeft(now), elapsed = pr.totalS - left;
    p.setPen(QColor(0xBE, 0xC0, 0xC2));
    p.setFont(uiFont(16));
    p.drawText(QRect(250, 56, 94, 45), Qt::AlignCenter, mmss(idle ? 0 : elapsed));
    p.drawText(QRect(464, 56, 94, 45), Qt::AlignCenter, mmss(left));
    if (idle && !s->startPending() && !s->preparing()) return;
    // The phase box: seconds left of the impulse (green) / pause (grey), "II" while paused.
    QRect box(344, 101, 120, 64);
    p.setPen(QPen(LINE, 1.5));
    p.setBrush(WHITE);
    p.drawRoundedRect(QRectF(box).adjusted(0.5, -8, -0.5, -0.5), 6, 6);
    QString t;
    QColor c = GREY;
    int px = 50;
    if (running) {
        t = QString::number((s->phaseMsLeft(now) + 999) / 1000).rightJustified(2, QLatin1Char('0'));
        c = s->impulse() ? GREEN : GREY;
    } else if (!idle) {
        t = U("II");
        c = YELLOW;
    } else {
        t = U("…");
        c = YELLOW;
        px = 36;
    }
    p.setPen(c);
    p.setFont(uiFont(px, true));
    p.drawText(box.adjusted(0, -4, 0, -4), Qt::AlignCenter, t);
    if (running) {   // how far the phase is: a thin line along the box's foot
        int len = (s->impulse() ? pr.onS : pr.offS) * 1000;
        double f = len > 0 ? 1.0 - (double)s->phaseMsLeft(now) / len : 0;
        QRectF track(box.left() + 14, box.bottom() - 9, box.width() - 28, 4);
        p.setPen(Qt::NoPen);
        p.setBrush(QColor(0xE3, 0xE4, 0xE6));
        p.drawRoundedRect(track, 2, 2);
        p.setBrush(s->impulse() ? GREEN : GREY);
        p.drawRoundedRect(QRectF(track.left(), track.top(), track.width() * qBound(0.0, f, 1.0), 4), 2, 2);
    }
}

// The bottom bar: − | LED scale with the fader | +, for the selection (MASTER or the lit zones).
void PanelWidget::paintSlider(QPainter &p) {
    if (const QPixmap *bg = pix("SliderBg")) p.drawPixmap(0, 535, *bg);
    else p.fillRect(QRect(0, 535, 800, 65), BAR);
    const QPixmap *mi = pix(pressed_ == U("dec") ? "TrainingMinusPressed" : "TrainingMinusNormal");
    const QPixmap *pl = pix(pressed_ == U("inc") ? "TrainingPlusPressed" : "TrainingPlusNormal");
    QRect minus(0, 535, 79, 65), plus(721, 535, 79, 65);
    if (mi && pl) {
        p.drawPixmap(minus.topLeft(), *mi);
        p.drawPixmap(plus.topLeft(), *pl);
    } else {
        p.setPen(QPen(WHITE, 2));
        p.drawLine(28, 567, 52, 567);
        p.drawLine(748, 567, 772, 567);
        p.drawLine(760, 555, 760, 579);
    }
    hit(minus, U("dec"));
    hit(plus, U("inc"));
    int v = selValue();
    const int x0 = 104, x1 = 702;
    int x = x0 + (x1 - x0) * v / 100;
    if (const QPixmap *leds = pix("SliderLeds")) {   // the coloured scale up to the value
        p.save();
        p.setClipRect(QRect(x0 - 6, 535, x - x0 + 6, 65));
        p.drawPixmap(53, 535, *leds);
        p.restore();
    } else if (x > x0) {
        p.setPen(QPen(GREEN, 6, Qt::SolidLine, Qt::RoundCap));
        p.drawLine(x0, 567, x, 567);
    }
    if (const QPixmap *f = pix("Fader")) p.drawPixmap(x - 17, 549, *f);
    else {
        p.setPen(Qt::NoPen);
        p.setBrush(QColor(255, 255, 255, 160));
        p.drawRoundedRect(QRectF(x - 14, 551, 28, 32), 4, 4);
    }
    hit(QRect(80, 535, 640, 65), U("slider"));
}

// A small grey caps caption above a group (XBody's header type, letter-spaced).
void PanelWidget::caption(QPainter &p, int x, int y, const QString &text) {
    QFont f = uiFont(13, true);
    f.setLetterSpacing(QFont::AbsoluteSpacing, 1.5);
    p.setFont(f);
    p.setPen(GREY);
    p.drawText(QRect(x, y, 360, 20), Qt::AlignLeft | Qt::AlignVCenter, text);
}

// −  value  + in one outlined pill: one shape, one value, two big targets (hold repeats).
void PanelWidget::pill(QPainter &p, const QRect &r, const QString &value, const QString &field, bool enabled) {
    QString minus = U("st:") + field + U(":-"), plus = U("st:") + field + U(":+");
    int b = r.height();
    p.setPen(QPen(LINE, 2));
    p.setBrush(WHITE);
    p.drawRoundedRect(QRectF(r).adjusted(1, 1, -1, -1), b / 2.0, b / 2.0);
    for (int i = 0; i < 2; i++) {
        QRect k = i ? QRect(r.right() - b + 1, r.top(), b, b) : QRect(r.left(), r.top(), b, b);
        QString id = i ? plus : minus;
        if (pressed_ == id) {
            p.setPen(Qt::NoPen);
            p.setBrush(PRESS);
            p.drawEllipse(QRectF(k).adjusted(4, 4, -4, -4));
        }
        p.setPen(QPen(enabled ? INK : LINE, 2.5, Qt::SolidLine, Qt::RoundCap));
        QPointF c = QRectF(k).center();
        p.drawLine(QPointF(c.x() - 9, c.y()), QPointF(c.x() + 9, c.y()));
        if (i) p.drawLine(QPointF(c.x(), c.y() - 9), QPointF(c.x(), c.y() + 9));
        if (enabled) hit(k, id);
    }
    p.setPen(INK);
    int fpx = 20;   // smaller rather than cut ("по модула")
    while (fpx > 13 && QFontMetrics(uiFont(fpx, true)).width(value) > r.width() - 2 * b - 4) fpx--;
    p.setFont(uiFont(fpx, true));
    p.drawText(r.adjusted(b, 0, -b, 0), Qt::AlignCenter, value);
}


// "Настройки на сесията": landscape, two groups side by side. Left: the program (what changes the feel of the
// session). Right: the setup of this client and suit (cables, age). Cancel left, the primary ✓ bottom right.
void PanelWidget::paintSheet(QPainter &p) {
    p.fillRect(QRect(0, 0, 800, 600), QColor(0x30, 0x37, 0x41, 150));
    hits_.clear();   // only the sheet answers
    const QRect card(36, 22, 728, 556);
    p.setPen(Qt::NoPen);
    p.setBrush(QColor(0, 0, 0, 40));
    p.drawRoundedRect(QRectF(card).translated(0, 4), 14, 14);   // soft shadow
    p.setBrush(WHITE);
    p.drawRoundedRect(QRectF(card), 14, 14);
    p.setPen(INK);
    p.setFont(uiFont(22));
    p.drawText(QRect(64, 34, 300, 44), Qt::AlignLeft | Qt::AlignVCenter, U("Настройки на сесията"));
    // XBody's own modes, one tap each (its defaults); the values below can still be changed — ✓ Готово applies
    if (!(app_->suit() && app_->suit()->state() == Suit::RUNNING)) {
        const char *mn[3] = {"Мускули", "Кардио", "Релакс"};
        for (int i = 0; i < 3; i++) {
            QRect c(392 + i * 116, 40, 108, 36);
            QString id = U("mode:%1").arg(i + 1);
            Program m = Program::mode(i + 1);
            bool on = sheetProg_.hz == m.hz && sheetProg_.onS == m.onS && sheetProg_.offS == m.offS && sheetProg_.cont == m.cont;
            p.setPen(on ? Qt::NoPen : QPen(LINE, 1.5));
            p.setBrush(on ? RED : pressed_ == id ? PRESS : WHITE);
            p.drawRoundedRect(QRectF(c).adjusted(0.75, 0.75, -0.75, -0.75), 18, 18);
            p.setPen(on ? WHITE : INK);
            p.setFont(uiFont(15, on));
            p.drawText(c, Qt::AlignCenter, U(mn[i]));
            hit(c, id);
        }
    }
    p.setPen(QPen(QColor(0xE3, 0xE4, 0xE6), 1));
    p.drawLine(64, 84, 736, 84);
    p.drawLine(432, 100, 432, 452);

    // ---- left: the program ----
    const Program &q = sheetProg_;
    Suit *running = app_->suit() && app_->suit()->state() == Suit::RUNNING ? app_->suit() : 0;
    caption(p, 64, 98, running ? U("ПРОГРАМА · СМЕНЯ СЕ НА ПАУЗА") : U("ПРОГРАМА"));
    const char *labels[4] = {"Честота", "Ширина на импулса", "Времетраене", "Рампа"};
    QString values[4] = {QString::number(q.hz) + U(" Hz"), QString::number(q.us) + U(" µs"),
                         QString::number(q.totalS / 60) + U(" мин"),
                         QString::number(q.rampMs / 1000) + U(",") + QString::number(q.rampMs % 1000 / 100) + U(" s")};
    const char *fields[4] = {"hz", "us", "total", "ramp"};
    for (int i = 0; i < 4; i++) {
        int y = 116 + i * 56;
        p.setPen(INK);
        p.setFont(uiFont(16));
        p.drawText(QRect(64, y, 160, 48), Qt::AlignLeft | Qt::AlignVCenter | Qt::TextWordWrap, U(labels[i]));
        bool unitOwn = i == 1 && app_->suit() && app_->suit()->kind() == Suit::WIEMS;   // WiEMS keeps its own widths
        pill(p, QRect(222, y, 186, 48), unitOwn ? U("по модула") : values[i], U(fields[i]), !running && !unitOwn);
    }
    // Impulse / pause: the rhythm as a picture (green = work, grey = rest — yellow with the double impulse).
    p.setPen(INK);
    p.setFont(uiFont(16));
    p.drawText(QRect(64, 342, 300, 24), Qt::AlignLeft | Qt::AlignVCenter, U("Ритъм"));
    QRect bar(64, 370, 344, 10);
    int on = q.onS, off = q.offS, wOn = bar.width() * on / (on + off > 0 ? on + off : 1);
    p.setPen(Qt::NoPen);
    p.setBrush(q.dbl ? QColor(0xFF, 0xD9, 0x66) : QColor(0xE3, 0xE4, 0xE6));
    p.drawRoundedRect(QRectF(bar), 5, 5);
    p.setBrush(GREEN);
    p.drawRoundedRect(QRectF(bar.left(), bar.top(), wOn, bar.height()), 5, 5);
    QRect pOn(64, 390, 166, 48), pOff(242, 390, 166, 48);
    pill(p, pOn, QString::number(on) + U(" s"), U("on"), !running);
    pill(p, pOff, QString::number(off) + U(" s"), U("off"), !running);
    p.setFont(uiFont(14, true));
    p.setPen(GREEN);
    p.drawText(QRect(pOn.left(), 438, pOn.width(), 22), Qt::AlignCenter, U("импулс"));
    p.setPen(SOFT);
    p.drawText(QRect(pOff.left(), 426, pOff.width(), 22), Qt::AlignCenter, U("пауза"));

    // ---- right: this suit and this client ----
    Suit *s = app_->suit();
    int y = 98;
    // XEMS: its own cables or XBody's; WiEMS (owner: both standards): an XBody suit on its leads or an XEMS suit.
    // bodytech has one cable layout: no choice to show.
    bool wiK = s && s->kind() == Suit::WIEMS;
    if (s && (s->kind() == Suit::XEMS || wiK)) {
        caption(p, 456, y, wiK ? U("КОСТЮМ") : U("КОНЕКТОРИ НА КОСТЮМА"));
        QRect info(700, y - 8, 36, 36);   // ⓘ: the lead → channel table
        p.setPen(QPen(pressed_ == U("info") ? RED : GREY, 2));
        p.setBrush(pressed_ == U("info") ? PRESS : WHITE);
        p.drawEllipse(QRectF(info).adjusted(4, 4, -4, -4));
        p.setPen(pressed_ == U("info") ? RED : SOFT);
        p.setFont(uiFont(16, true));
        p.drawText(info, Qt::AlignCenter, U("i"));
        hit(info.adjusted(-8, -8, 8, 8), U("info"));
        // Segmented control: two equal halves in one outline, the chosen one red (XBody's selected state).
        QRect seg(456, y + 28, 280, 56);
        p.setPen(QPen(LINE, 2));
        p.setBrush(WHITE);
        p.drawRoundedRect(QRectF(seg).adjusted(1, 1, -1, -1), 10, 10);
        for (int i = 0; i < 2; i++) {
            QRect h(seg.left() + i * 140, seg.top(), 140, 56);
            // XEMS kind: XBody cables | its own; WiEMS: an XBody suit (native) | an XEMS suit on XBody leads
            bool sel = sheetWiring_ == (wiK ? (i ? Suit::WIRE_XBODY : Suit::WIRE_XEMS) : (i ? Suit::WIRE_XEMS : Suit::WIRE_XBODY));
            QString id = i ? U("wire-xems") : U("wire-xbody");
            if (sel) {
                p.setPen(Qt::NoPen);
                p.setBrush(RED);
                p.drawRoundedRect(QRectF(h).adjusted(4, 4, -4, -4), 8, 8);
            } else if (pressed_ == id) {
                p.setPen(Qt::NoPen);
                p.setBrush(PRESS);
                p.drawRoundedRect(QRectF(h).adjusted(4, 4, -4, -4), 8, 8);
            }
            p.setPen(sel ? WHITE : INK);
            p.setFont(uiFont(18, sel));
            p.drawText(h, Qt::AlignCenter, (sel ? U("✓ ") : QString()) + (i ? U("XEMS") : U("XBody")));
            if (!running) hit(h, id);
        }
        p.setPen(SOFT);
        p.setFont(uiFont(14));
        p.drawText(QRect(456, y + 90, 280, 44), Qt::AlignLeft | Qt::AlignTop | Qt::TextWordWrap,
                   wiK ? (sheetWiring_ == Suit::WIRE_XBODY ? U("XEMS костюм на кабелите на модула — зоните се пренасочват сами.")
                                                           : U("XBody костюм — зоните са по канала на модула."))
                       : sheetWiring_ == Suit::WIRE_XBODY ? U("Кабелите са на XBody — зоните се пренасочват сами.")
                                                          : U("Кабелите са на XEMS — зоните са по канала."));
        y += 160;
    }
    caption(p, 456, y, U("КЛИЕНТ"));
    // the figures' sex on the caption's line: a small segmented control, the chosen half red; works mid-training too
    QRect sx(566, y - 9, 170, 38);
    p.setPen(QPen(LINE, 2));
    p.setBrush(WHITE);
    p.drawRoundedRect(QRectF(sx).adjusted(1, 1, -1, -1), 8, 8);
    for (int i = 0; i < 2; i++) {
        QRect h(sx.left() + i * 85, sx.top(), 85, sx.height());
        bool chosen = app_->female() == (i == 0);
        QString id = i ? U("sex-m") : U("sex-f");
        if (chosen || pressed_ == id) {
            p.setPen(Qt::NoPen);
            p.setBrush(chosen ? RED : PRESS);
            p.drawRoundedRect(QRectF(h).adjusted(3, 3, -3, -3), 6, 6);
        }
        p.setPen(chosen ? WHITE : INK);
        p.setFont(uiFont(15, chosen));
        p.drawText(h, Qt::AlignCenter, i ? U("Мъж") : U("Жена"));
        hit(h, id);
    }
    QRect age(456, y + 28, 280, 56);
    outlined(p, age, running ? QString() : U("age60"), QString(), 0, false);
    p.setPen(INK);
    p.setFont(uiFont(17));
    p.drawText(age.adjusted(16, 0, -90, 0), Qt::AlignLeft | Qt::AlignVCenter, U("Над 60 години"));
    QRect sw(age.right() - 80 - 12, age.center().y() - 15, 80, 30);   // a switch, on = green
    p.setPen(Qt::NoPen);
    p.setBrush(sheetAge60_ ? GREEN : QColor(0xD5, 0xD7, 0xDA));
    p.drawRoundedRect(QRectF(sw), 15, 15);
    p.setBrush(WHITE);
    p.drawEllipse(QRectF(sheetAge60_ ? sw.right() - 27 : sw.left() + 3, sw.top() + 3, 24, 24));
    if (sheetAge60_) {
        p.setPen(GREEN);
        p.setFont(uiFont(14, true));
        p.drawText(QRect(456, y + 88, 280, 22), Qt::AlignLeft | Qt::AlignVCenter, U("✓ Честотата спира до 85 Hz"));
    }

    // ---- the double impulse: a second, low impulse in the pause (switch on the caption's line, then Hz / %) ----
    caption(p, 456, 356, U("ДВОЕН ИМПУЛС"));
    QRect dsw(656, 350, 80, 30);
    p.setPen(Qt::NoPen);
    p.setBrush(q.dbl ? YELLOW : QColor(0xD5, 0xD7, 0xDA));
    p.drawRoundedRect(QRectF(dsw), 15, 15);
    p.setBrush(WHITE);
    p.drawEllipse(QRectF(q.dbl ? dsw.right() - 27 : dsw.left() + 3, dsw.top() + 3, 24, 24));
    if (!running) hit(dsw.adjusted(-90, -6, 0, 6), U("dbl"));
    pill(p, QRect(456, 388, 136, 48), QString::number(q.dblHz) + U(" Hz"), U("dblhz"), q.dbl && !running);
    pill(p, QRect(600, 388, 136, 48), QString::number(q.dblPct) + U("%"), U("dblpct"), q.dbl && !running);
    // what the session will be, derived (nothing to set): one line
    int cycles = q.onS + q.offS > 0 ? q.totalS / (q.onS + q.offS) : 0;
    p.setPen(SOFT);
    p.setFont(uiFont(14));
    p.drawText(QRect(456, 440, 280, 24), Qt::AlignLeft | Qt::AlignVCenter,
               QString::number(cycles) + U(" импулса · ") + QString::number(q.onS * cycles / 60) + U(" мин работа"));

    // ---- footer ----
    p.setPen(QPen(QColor(0xE3, 0xE4, 0xE6), 1));
    p.drawLine(64, 470, 736, 470);
    outlined(p, QRect(64, 494, 200, 60), U("sheet-cancel"), U("Откажи"), 18, false);
    filled(p, QRect(496, 494, 240, 60), U("sheet-ok"), QString(), GREEN, WHITE, U("✓  Готово"), 20);
    if (info_) paintWiringInfo(p);
}

// ⓘ The owner's table: which XBody lead lands on which XEMS channel. Any tap closes it.
void PanelWidget::paintWiringInfo(QPainter &p) {
    hits_.clear();
    p.fillRect(QRect(0, 0, 800, 600), QColor(0x30, 0x37, 0x41, 120));
    QRect card(170, 40, 460, 520);
    p.setPen(Qt::NoPen);
    p.setBrush(WHITE);
    p.drawRoundedRect(QRectF(card), 14, 14);
    p.setPen(INK);
    p.setFont(uiFont(20));
    Suit *su = app_->suit();
    Suit::Kind kk = su && su->kind() == Suit::WIEMS ? Suit::WIEMS : Suit::XEMS;
    p.drawText(QRect(196, 54, 410, 36), Qt::AlignLeft | Qt::AlignVCenter,
               kk == Suit::WIEMS ? U("XEMS костюм на кабелите на WiEMS") : U("Кабели на XBody в костюм XEMS"));
    caption(p, 196, 96, kk == Suit::WIEMS ? U("ЗОНА") : U("ЗОНА (КАБЕЛ XBODY)"));
    p.setFont(uiFont(13, true));
    p.setPen(GREY);
    p.drawText(QRect(420, 96, 186, 20), Qt::AlignRight | Qt::AlignVCenter, kk == Suit::WIEMS ? U("КАБЕЛ НА МОДУЛА") : U("КАНАЛ XEMS"));
    const Zone *xb, *xe;
    int n = Suit::zones(kk, &xb, Suit::WIRE_XBODY);
    Suit::zones(kk, &xe, Suit::WIRE_XEMS);
    for (int i = 0; i < n; i++) {
        int y = 122 + i * 36;
        if (i % 2 == 0) p.fillRect(QRect(186, y, 428, 36), QColor(0xF4, 0xF5, 0xF6));
        const char *chName = Suit::channelName(kk, xb[i].ch[0]);
        bool same = false;
        for (int j = 0; j < n; j++)
            if (xe[j].ch[0] == xb[i].ch[0]) same = !qstrcmp(xe[j].name, xb[i].name);
        p.setPen(INK);
        p.setFont(uiFont(16));
        p.drawText(QRect(196, y, 190, 36), Qt::AlignLeft | Qt::AlignVCenter, QString::fromUtf8(xb[i].name));
        p.setPen(same ? GREY : RED);
        p.drawText(QRect(380, y, 40, 36), Qt::AlignCenter, U("→"));
        p.setPen(same ? SOFT : INK);
        p.setFont(uiFont(16, !same));
        p.drawText(QRect(420, y, 186, 36), Qt::AlignRight | Qt::AlignVCenter, QString::fromUtf8(chName));
    }
    filled(p, QRect(500, 492, 110, 52), U("info-close"), QString(), INK, WHITE, U("Ясно"), 17);
    hit(QRect(0, 0, 800, 600), U("info-close"));
}

// XBody's showPercent: while a value changes, a big % over the body with what it belongs to.
void PanelWidget::paintBubble(QPainter &p) {
    Suit *s = app_->suit();
    if (!s) return;
    QString what = U("Сила");
    const Zone *zs;
    zonesOf(&zs);
    if (sliding_ && slideZone_ >= 0) what = QString::fromUtf8(zs[slideZone_].name);
    else if (sel_) {
        const Zone *z;
        int n = zonesOf(&z), c = 0;
        QStringList names;
        for (int i = 0; i < n; i++)
            if (sel_ & (1u << i)) { c++; if (names.size() < 2) names << QString::fromUtf8(z[i].name); }
        what = c == n ? U("Всички зони") : names.join(U(", ")) + (c > 2 ? U(" +%1").arg(c - 2) : QString());
    }
    QRect card(260, 222, 280, 150);
    p.setPen(Qt::NoPen);
    p.setBrush(QColor(0, 0, 0, 45));
    p.drawRoundedRect(QRectF(card).translated(0, 4), 16, 16);
    p.setBrush(QColor(0x30, 0x37, 0x41, 235));
    p.drawRoundedRect(QRectF(card), 16, 16);
    p.setPen(WHITE);
    p.setFont(uiFont(64, true));
    p.drawText(QRect(card.left(), card.top() + 10, card.width(), 86), Qt::AlignCenter, QString::number(selValue()) + U("%"));
    p.setPen(QColor(0xBE, 0xC0, 0xC2));
    p.setFont(uiFont(16));
    p.drawText(QRect(card.left() + 12, card.top() + 98, card.width() - 24, 34), Qt::AlignCenter,
               QFontMetrics(uiFont(16)).elidedText(what, Qt::ElideRight, card.width() - 24));
}

void PanelWidget::toast(const QString &text) {
    toast_ = text;
    toastUntilMs_ = app_->now() + 3000;
}

// XBody's message dialog: a dark red band over the whole width.
void PanelWidget::paintConfirm(QPainter &p) {
    p.fillRect(QRect(0, 0, 800, 600), QColor(255, 255, 255, 120));
    hits_.clear();
    if (confirmKind_ == 2) { paintService(p); return; }
    p.fillRect(QRect(0, 150, 800, 232), DIALOG);
    p.setPen(WHITE);
    p.setFont(uiFont(32));
    p.drawText(QRect(0, 170, 800, 50), Qt::AlignCenter, U("Прекъсни връзката с костюма?"));
    p.setFont(uiFont(17));
    p.drawText(QRect(40, 222, 720, 50), Qt::AlignCenter | Qt::TextWordWrap,
               U("Изходите се изключват. Ще можеш да избереш друг костюм."));
    for (int i = 0; i < 2; i++) {
        QRect r = i ? QRect(420, 294, 190, 56) : QRect(190, 294, 190, 56);
        QString id = i ? U("confirm-yes") : U("confirm-no");
        p.setPen(QPen(WHITE, 2));
        p.setBrush(pressed_ == id ? QColor(255, 255, 255, 60) : QColor(Qt::transparent));
        p.drawRoundedRect(QRectF(r).adjusted(1, 1, -1, -1), 8, 8);
        p.setPen(WHITE);
        p.setFont(uiFont(18));
        p.drawText(r, Qt::AlignCenter, i ? U("ПРЕКЪСНИ") : U("ОТКАЖИ"));
        hit(r, id);
    }
}

// The update / log sheet, in XBody's dialog band: three one-tap choices side by side, what happened under them.
// Nothing here runs on its own — each tile is the one request. Updates wait while XBody's cable is training.
void PanelWidget::paintService(QPainter &p) {
    p.fillRect(QRect(0, 110, 800, 380), DIALOG);
    p.setPen(WHITE);
    p.setFont(uiFont(30));
    p.drawText(QRect(0, 122, 800, 48), Qt::AlignCenter, U("Обновяване, лог и Wi‑Fi"));
    bool busy = app_->netBusy(), training = app_->cableLive().training;
    static const char *const ID[4] = {"svc-net", "svc-usb", "svc-log", "svc-wifi"};
    static const char *const TITLE[4] = {"От интернет", "От USB", "Изпрати лог", "Wi‑Fi"};
    static const char *const SUB[4] = {"новата версия от сървъра", "от поставената флашка", "последните 2 минути", ""};
    for (int i = 0; i < 4; i++) {
        QRect r(40 + i * 183, 186, 170, 128);
        QString id = U(ID[i]), sub = U(SUB[i]);
        bool on = !busy && (i >= 2 || !training);
        bool run = busy && i != 1 && i != 3 && app_->netJob() == (i == 2 ? App::NET_LOG : App::NET_UPDATE);
        if (i < 2 && training && !busy) sub = U("след тренировката");
        if (i == 3) sub = app_->wifiSsid().isEmpty() ? U("търси мрежа, свържи") : U("свързан: ") + app_->wifiSsid();
        p.setOpacity(on || run ? 1.0 : 0.4);
        p.setPen(QPen(WHITE, 2));
        p.setBrush(pressed_ == id || run ? QColor(255, 255, 255, 60) : QColor(Qt::transparent));
        p.drawRoundedRect(QRectF(r).adjusted(1, 1, -1, -1), 10, 10);
        p.setPen(WHITE);
        p.setFont(uiFont(20, true));
        p.drawText(QRect(r.left(), r.top() + 24, r.width(), 36), Qt::AlignCenter, U(TITLE[i]));
        p.setFont(uiFont(14));
        p.drawText(QRect(r.left() + 8, r.top() + 64, r.width() - 16, 44), Qt::AlignCenter | Qt::TextWordWrap,
                   QFontMetrics(uiFont(14)).elidedText(sub, Qt::ElideRight, 2 * (r.width() - 24)));
        if (on) hit(r, id);
    }
    p.setOpacity(1.0);
    QString line = usbLine_.isEmpty() ? app_->netLine() : usbLine_;
    if (busy && line.endsWith(U("…"))) line = line.left(line.length() - 1) + QString(1 + (app_->now() / 400) % 3, QLatin1Char('.'));
    p.setFont(uiFont(18, true));
    p.drawText(QRect(30, 326, 740, 52), Qt::AlignCenter | Qt::TextWordWrap, line);
    QRect c(305, 392, 190, 56);
    p.setPen(QPen(WHITE, 2));
    p.setBrush(pressed_ == U("svc-close") ? QColor(255, 255, 255, 60) : QColor(Qt::transparent));
    p.drawRoundedRect(QRectF(c).adjusted(1, 1, -1, -1), 8, 8);
    p.setFont(uiFont(18));
    p.drawText(c, Qt::AlignCenter, U("ЗАТВОРИ"));
    hit(c, U("svc-close"));
}

// Signal strength as XBody draws it nowhere: four bars, lit by dBm (or a 0–100 quality on drivers that give one).
static void wifiBars(QPainter &p, int x, int y, int dbm, const QColor &on, const QColor &off) {
    int lvl = dbm > 0 ? (dbm >= 75 ? 4 : dbm >= 50 ? 3 : dbm >= 25 ? 2 : 1)
                      : (dbm >= -55 ? 4 : dbm >= -65 ? 3 : dbm >= -75 ? 2 : 1);
    p.setPen(Qt::NoPen);
    for (int b = 0; b < 4; b++) {
        p.setBrush(b < lvl ? on : off);
        int h = 7 + b * 5;
        p.drawRoundedRect(QRectF(x + b * 8, y + 22 - h, 5, h), 1.5, 1.5);
    }
}

static void padlock(QPainter &p, int x, int y, const QColor &c) {
    p.setPen(QPen(c, 2));
    p.setBrush(Qt::NoBrush);
    p.drawArc(QRectF(x + 3, y, 10, 12), 0, 180 * 16);
    p.drawLine(QPointF(x + 3, y + 6), QPointF(x + 3, y + 9));
    p.drawLine(QPointF(x + 13, y + 6), QPointF(x + 13, y + 9));
    p.setPen(Qt::NoPen);
    p.setBrush(c);
    p.drawRoundedRect(QRectF(x, y + 9, 16, 11), 2, 2);
}

// The Wi-Fi page: the networks around, strongest first (left), what is happening and the actions (right).
// Opening it is the request for a scan; a tap on a network joins it (a password first when it has one).
void PanelWidget::paintWifi(QPainter &p) {
    p.fillRect(QRect(0, 0, 800, 600), WHITE);
    hits_.clear();
    if (kb_) { paintKeyboard(p); return; }
    bool busy = app_->wifiBusy();
    QString on = app_->wifiSsid(), sub;
    bool ok = false, warn = false;
    if (!on.isEmpty()) { sub = U("Свързан с ") + on + (app_->wifiIp().isEmpty() ? QString() : U("  ·  ") + app_->wifiIp()); ok = true; }
    else if (app_->wifiNoRadio()) { sub = U("Wi‑Fi модулът не отговаря"); warn = true; }
    else sub = U("Не е свързан");
    paintHeader(p, U("WI‑FI"), sub, warn, ok);
    // header right: search again
    QRect sr(653, 0, 147, 56);
    if (!busy) {
        if (pressed_ == U("wifi-scan")) p.fillRect(sr.adjusted(1, 0, 0, 0), PRESS);
        p.setPen(INK);
        p.setFont(uiFont(16, true));
        p.drawText(sr, Qt::AlignCenter, U("Търси отново"));
        hit(sr, U("wifi-scan"));
    }
    // ---- left: the networks ----
    const std::vector<App::WifiNet> &n = app_->wifiNets();
    const int ROWS = 7;
    int pages = ((int)n.size() + ROWS - 1) / ROWS;
    if (wifiPage_ >= pages) wifiPage_ = 0;
    if (n.empty()) {
        p.setPen(SOFT);
        p.setFont(uiFont(18));
        p.drawText(QRect(24, 72, 496, 400), Qt::AlignCenter | Qt::TextWordWrap,
                   busy && app_->wifiJob() == App::WIFI_SCAN ? U("Търся мрежи…") : app_->wifiLine());
    }
    for (int i = 0; i < ROWS && wifiPage_ * ROWS + i < (int)n.size(); i++) {
        const App::WifiNet &w = n[wifiPage_ * ROWS + i];
        QRect r(24, 72 + i * 62, 496, 56);
        QString id = U("wn:") + QString::number(i);
        bool cur = w.ssid == on;
        p.setPen(QPen(cur ? GREEN : LINE, 2));
        p.setBrush(pressed_ == id ? PRESS : WHITE);
        p.drawRoundedRect(QRectF(r).adjusted(1, 1, -1, -1), 10, 10);
        wifiBars(p, r.left() + 16, r.top() + 16, w.dbm, w.sec == 2 ? GREY : INK, LINE);
        p.setPen(w.sec == 2 ? SOFT : INK);
        p.setFont(uiFont(18, cur));
        p.drawText(QRect(r.left() + 62, r.top(), 300, r.height()), Qt::AlignLeft | Qt::AlignVCenter,
                   QFontMetrics(uiFont(18, cur)).elidedText(w.ssid, Qt::ElideRight, 296));
        QRect rt(r.right() - 140, r.top(), 126, r.height());
        p.setFont(uiFont(14, cur));
        if (cur) { p.setPen(GREEN); p.drawText(rt, Qt::AlignRight | Qt::AlignVCenter, U("✓ свързан")); }
        else if (w.sec == 2) { p.setPen(SOFT); p.drawText(rt, Qt::AlignRight | Qt::AlignVCenter, U("не се поддържа")); }
        else if (w.sec == 1) padlock(p, r.right() - 34, r.top() + 17, SOFT);
        if (!busy && !cur && w.sec != 2) hit(r, id);
    }
    if (pages > 1) {
        QRect m(24, 72 + ROWS * 62, 496, 44);
        outlined(p, m, U("wifi-more"), U("Още мрежи  ·  ") + QString::number(wifiPage_ + 1) + U(" / ") + QString::number(pages), 15, false);
    }
    // ---- right: what is happening, the actions ----
    p.setPen(QPen(LINE, 1));
    p.drawLine(536, 76, 536, 560);
    caption(p, 552, 70, U("СЕГА"));
    QString line = app_->wifiLine();
    if (line.isEmpty()) line = on.isEmpty() ? U("Избери мрежа отляво") : U("✓ Свързан с ") + on;
    if (busy && line.endsWith(U("…"))) line = line.left(line.length() - 1) + QString(1 + (app_->now() / 400) % 3, QLatin1Char('.'));
    bool good = line.startsWith(U("✓"));
    bool bad = !busy && !good && !app_->wifiOk() && app_->wifiJob() != App::WIFI_NONE && !line.startsWith(U("Избери"));
    p.setPen(good ? GREEN : bad ? RED : INK);
    p.setFont(uiFont(19, true));
    p.drawText(QRect(552, 96, 224, 130), Qt::AlignLeft | Qt::AlignTop | Qt::TextWordWrap, line);
    if (!on.isEmpty() && !busy) outlined(p, QRect(552, 250, 224, 52), U("wifi-forget"), U("Забрави тази мрежа"), 16, false);
    p.setPen(SOFT);
    p.setFont(uiFont(14));
    p.drawText(QRect(552, 316, 224, 120), Qt::AlignLeft | Qt::AlignTop | Qt::TextWordWrap,
               U("Мрежата се помни: след рестарт машината се свързва сама. Интернет се ползва само когато поискаш обновяване или лог."));
    filled(p, QRect(552, 492, 224, 64), U("wifi-close"), QString(), INK, WHITE, U("Готово"), 18);
}

// The password keyboard: big keys for a finger, Latin letters, digits and signs; one-shot capitals (no ⌫ glyph in
// the unit's font: "Изтрий").
static const char *const KB_ROWS[3][4] = {
    {"1234567890", "qwertyuiop", "asdfghjkl", "zxcvbnm"},
    {"1234567890", "QWERTYUIOP", "ASDFGHJKL", "ZXCVBNM"},
    {"1234567890", "!@#$%^&*()", "-_=+[]{}~|", "'\",.?/:;"},
};

void PanelWidget::paintKeyboard(QPainter &p) {
    paintHeader(p, U("ПАРОЛА"), kbSsid_, false, false);
    QRect f(24, 72, 640, 60);
    p.setPen(QPen(INK, 2));
    p.setBrush(WHITE);
    p.drawRoundedRect(QRectF(f).adjusted(1, 1, -1, -1), 10, 10);
    QString shown = kbShow_ ? kbText_ : QString(kbText_.length(), QChar(0x2022));
    if ((app_->now() / 500) % 2) shown += QLatin1Char('|');
    p.setPen(INK);
    p.setFont(uiFont(24));
    p.drawText(f.adjusted(18, 0, -12, 0), Qt::AlignLeft | Qt::AlignVCenter,
               QFontMetrics(uiFont(24)).elidedText(shown, Qt::ElideLeft, f.width() - 30));
    outlined(p, QRect(680, 72, 96, 60), U("k-show"), kbShow_ ? U("Скрий") : U("Покажи"), 16, kbShow_);
    QString hint = app_->wifiLine();
    bool bad = hint == U("Грешна парола — опитай пак");
    p.setPen(bad ? RED : SOFT);
    p.setFont(uiFont(14, bad));
    p.drawText(QRect(24, 136, 752, 28), Qt::AlignLeft | Qt::AlignVCenter,
               bad ? hint : U("Паролата на Wi‑Fi мрежата — от 8 до 63 знака"));
    const int Y0 = 172, PITCH = 76, H = 68;
    double unit = 752.0 / 10;
    for (int row = 0; row < 4; row++) {
        QString keys = QString::fromUtf8(KB_ROWS[kbLayer_][row]);
        int nk = keys.length();
        double side = (10 - nk) / 2.0;   // rows 2–3 are centred; row 3 puts ⇧ and ⌫ in the sides
        double x = 24 + (row == 3 ? 0 : side * unit);
        int y = Y0 + row * PITCH;
        if (row == 3) {   // shift (letters) | keys | backspace
            QRect sh((int)x, y, (int)(side * unit) - 6, H);
            if (kbLayer_ != 2) outlined(p, sh, U("k-shift"), U("⇧"), 22, kbLayer_ == 1);
            x += side * unit;
        }
        for (int k = 0; k < nk; k++) {
            QRect r((int)(x + k * unit), y, (int)unit - 6, H);
            outlined(p, r, U("k:") + keys.mid(k, 1), keys.mid(k, 1), 22, false);
        }
        if (row == 3) outlined(p, QRect((int)(x + nk * unit), y, (int)(side * unit) - 6, H), U("k-back"), U("Изтрий"), 16, false);
    }
    int y = Y0 + 4 * PITCH;
    outlined(p, QRect(24, y, (int)(1.5 * unit) - 6, H), U("k-sym"), kbLayer_ == 2 ? U("abc") : U("?123"), 18, false);
    outlined(p, QRect(24 + (int)(1.5 * unit), y, (int)(4.5 * unit) - 6, H), U("k-space"), U("интервал"), 16, false);
    outlined(p, QRect(24 + (int)(6 * unit), y, (int)(2 * unit) - 6, H), U("k-cancel"), U("Отказ"), 18, false);
    bool okLen = kbText_.length() >= 8 && kbText_.length() <= 63;
    QRect go(24 + (int)(8 * unit), y, (int)(2 * unit) - 6, H);
    p.setOpacity(okLen ? 1.0 : 0.4);
    filled(p, go, okLen ? U("k-ok") : QString(), QString(), GREEN, WHITE, U("Свържи"), 18);
    p.setOpacity(1.0);
}

static void stepField(Program &q, const QString &f, int d, bool age60) {
    if (f == QLatin1String("hz")) q.hz = qBound(1, q.hz + d, age60 ? 85 : 120);
    else if (f == QLatin1String("us")) q.us = qBound(50, q.us + d * 10, q.hz >= 100 ? 300 : 400);
    else if (f == QLatin1String("on")) {
        q.onS = qBound(1, q.onS + d, 10);
        int rMax = q.onS > 1 ? (q.onS - 1) * 1000 : 300;   // the rise stays inside the impulse
        if (q.rampMs > rMax) q.rampMs = rMax;
    }
    else if (f == QLatin1String("off")) q.offS = qBound(1, q.offS + d, 30);
    else if (f == QLatin1String("total")) q.totalS = qBound(60, q.totalS + d * 60, 3600);
    else if (f == QLatin1String("ramp")) q.rampMs = qBound(0, q.rampMs + d * 500, q.onS > 1 ? (q.onS - 1) * 1000 : 300);
    else if (f == QLatin1String("dblhz")) q.dblHz = qBound(1, q.dblHz + d, q.hz - 1 < 10 ? (q.hz > 1 ? q.hz - 1 : 1) : 10);
    else if (f == QLatin1String("dblpct")) q.dblPct = qBound(10, q.dblPct + d * 10, 150);
}

static bool isStepper(const QString &id) {
    return id == QLatin1String("inc") || id == QLatin1String("dec") || id.startsWith(QLatin1String("st:"));
}

void PanelWidget::act(const QString &id, bool repeat) {
    Suit *s = app_->suit();
    if (id == QLatin1String("inc") || id == QLatin1String("dec")) {   // MASTER ±1, zones to the next 5 %
        int d = id == QLatin1String("inc") ? 1 : -1;
        if (!sel_) app_->strengthStep(d);
        else setSelValue(d > 0 ? (selValue() / 5 + 1) * 5 : (selValue() + 4) / 5 * 5 - 5);
        bubbleUntilMs_ = app_->now() + 1200;
        return;
    }
    if (id.startsWith(QLatin1String("st:cb"))) {   // the double impulse on XBody's cable: saved on every step
        xbcable::Config c = app_->cable();
        int d = id.endsWith(QLatin1String("+")) ? 1 : -1;
        if (id.startsWith(QLatin1String("st:cbhz"))) c.dblHz = qBound(1, c.dblHz + d, 10);
        else c.dblPct = qBound(10, c.dblPct + d * 10, 150);
        app_->setCable(c);
        toast(U("✓ Запазено"));
        return;
    }
    if (id.startsWith(QLatin1String("st:"))) {
        QStringList parts = id.split(QLatin1Char(':'));
        stepField(sheetProg_, parts[1], parts[2] == QLatin1String("+") ? 1 : -1, sheetAge60_);
        return;
    }
    if (repeat) return;
    if (id == QLatin1String("back") && wifi_) { if (kb_) kb_ = false; else wifi_ = false; return; }
    if (id == QLatin1String("back")) { app_->hidePanel(); return; }
    if (id == QLatin1String("cable")) { showCable_ = true; return; }
    if (id == QLatin1String("wireless")) { showCable_ = false; return; }
    if (id == QLatin1String("cable-info")) { cableInfo_ = true; return; }
    if (id == QLatin1String("tab-prog") || id == QLatin1String("tab-cable")) {
        cableTab_ = id == QLatin1String("tab-cable") ? 1 : 0;
        return;
    }
    if (id.startsWith(QLatin1String("prog:")) || id == QLatin1String("prog-none")) {   // one program, or none
        xbcable::Config c = app_->cable();
        std::string pid = id == QLatin1String("prog-none") ? std::string() : id.mid(5).toStdString();
        c.program = c.program == pid ? std::string() : pid;
        app_->setCable(c);
        toast(c.program.empty() ? U("✓ Без програма — XBody както го настроиш") : U("✓ Тръгва със START на XBody"));
        return;
    }
    if (id.startsWith(QLatin1String("pmin:"))) {   // the length; the program's own is stored as 0
        xbcable::Config c = app_->cable();
        int m = id.mid(5).toInt();
        const xbprog::Program *pr = xbprog::byId(c.program);
        c.minutes = pr && m == pr->minutes ? 0 : m;
        app_->setCable(c);
        toast(m == xbprog::POST_MIN ? U("✓ 10 мин — за след тренировка") : U("✓ ") + QString::number(m) + U(" мин"));
        return;
    }
    if (id == QLatin1String("cw-xbody") || id == QLatin1String("cw-xems") || id == QLatin1String("cdbl")) {
        xbcable::Config c = app_->cable();
        if (id == QLatin1String("cdbl")) c.dbl = !c.dbl;
        else c.wiring = id == QLatin1String("cw-xems") ? xbcable::WIRE_XEMS : xbcable::WIRE_XBODY;
        app_->setCable(c);
        toast(U("✓ Запазено"));
        return;
    }
    if (id.startsWith(QLatin1String("suit:"))) { app_->connectTo(id.mid(5).toStdString()); return; }
    if (id.startsWith(QLatin1String("fig:"))) {   // a muscle on the figure: its zone into / out of the selection
        int f = id.mid(4).toInt();
        int r = figs_[f].regionAt(pressAt_.x() - figRect_[f].left(), pressAt_.y() - figRect_[f].top());
        int zi = r >= 0 ? zoneOfRegion(r) : -1;
        if (zi >= 0) sel_ = sel_ == allZones() ? 1u << zi : sel_ ^ (1u << zi);   // under ВСИЧКИ: that zone
        return;
    }
    if (id.startsWith(QLatin1String("z:"))) {   // tap = into / out of the selection (as on XBody)
        unsigned b = 1u << id.mid(2).toInt();
        if (sel_ == allZones()) sel_ = b;       // with ВСИЧКИ on, a tap on one zone means THAT zone
        else sel_ = (sel_ & b) ? sel_ & ~b : sel_ | b;
        return;
    }
    if (id == QLatin1String("all")) { sel_ = sel_ == allZones() ? 0 : allZones(); return; }
    if (id == QLatin1String("master")) { sel_ = 0; return; }
    if (id == QLatin1String("go")) { app_->startPause(); return; }
    if (id == QLatin1String("stop")) { app_->stopRun(); return; }
    if (id == QLatin1String("prog") && s) {
        sheetProg_ = s->program();   // running: the sheet opens for the client (sex); the program waits for a pause
        sheetAge60_ = app_->age60();
        sheetWiring_ = app_->wiring();
        info_ = false;
        sheet_ = true;
        return;
    }
    if (id == QLatin1String("age60")) {
        sheetAge60_ = !sheetAge60_;
        if (sheetAge60_ && sheetProg_.hz > 85) sheetProg_.hz = 85;
        return;
    }
    if (id == QLatin1String("sheet-cancel")) { sheet_ = false; return; }
    if (id == QLatin1String("dbl")) { sheetProg_.dbl = !sheetProg_.dbl; return; }
    if (id == QLatin1String("sheet-ok")) {
        if (!s || s->state() != Suit::RUNNING) {
            app_->setWiring(sheetWiring_);
            app_->applyProgram(sheetProg_, sheetAge60_);
        }
        sheet_ = false;
        return;
    }
    if (id == QLatin1String("sex-f") || id == QLatin1String("sex-m")) {   // the figures change at once
        app_->setFemale(id == QLatin1String("sex-f"));
        return;
    }
    if (id.startsWith(QLatin1String("mode:"))) {   // XBody's mode: its defaults into the sheet (✓ applies)
        sheetProg_ = Program::mode(id.mid(5).toInt());
        return;
    }
    if (id == QLatin1String("wire-xbody") || id == QLatin1String("wire-xems")) {
        bool xb = id == QLatin1String("wire-xbody");
        bool wiK = s && s->kind() == Suit::WIEMS;   // WiEMS: "XBody" = an XBody suit (native), "XEMS" = an XEMS suit
        sheetWiring_ = wiK ? (xb ? Suit::WIRE_XEMS : Suit::WIRE_XBODY) : (xb ? Suit::WIRE_XBODY : Suit::WIRE_XEMS);
        return;
    }
    if (id == QLatin1String("info")) { info_ = true; return; }
    if (id == QLatin1String("info-close")) { info_ = cableInfo_ = false; return; }
    if (id == QLatin1String("suit") && s && s->state() == Suit::IDLE) { confirm_ = true; confirmKind_ = 0; return; }
    if (id == QLatin1String("usb-update")) { confirm_ = true; confirmKind_ = 2; netWasBusy_ = false; return; }
    if (id == QLatin1String("svc-close")) { confirm_ = false; netWasBusy_ = app_->netBusy(); return; }
    if (id == QLatin1String("svc-net")) { usbLine_.clear(); app_->netStart(App::NET_UPDATE); return; }
    if (id == QLatin1String("svc-log")) { usbLine_.clear(); app_->netStart(App::NET_LOG); return; }
    if (id == QLatin1String("svc-usb")) { usbLine_ = app_->updateFromUsb(); return; }   // mount the stick, install
    // ---- Wi-Fi: opening the page is the request for a scan ----
    if (id == QLatin1String("svc-wifi")) { wifi_ = true; kb_ = false; wifiPage_ = 0; app_->wifiStart(App::WIFI_SCAN); return; }
    if (id == QLatin1String("wifi-scan")) { wifiPage_ = 0; app_->wifiStart(App::WIFI_SCAN); return; }
    if (id == QLatin1String("wifi-close")) { wifi_ = kb_ = false; return; }
    if (id == QLatin1String("wifi-more")) { wifiPage_++; return; }
    if (id == QLatin1String("wifi-forget")) { app_->wifiStart(App::WIFI_FORGET, app_->wifiSsid()); return; }
    if (id.startsWith(QLatin1String("wn:"))) {
        int i = wifiPage_ * 7 + id.mid(3).toInt();
        const std::vector<App::WifiNet> &n = app_->wifiNets();
        if (i < 0 || i >= (int)n.size() || n[i].sec == 2) return;
        if (n[i].sec == 0) { app_->wifiStart(App::WIFI_CONNECT, n[i].ssid); return; }
        kb_ = true;
        kbSsid_ = n[i].ssid;
        kbText_.clear();
        kbLayer_ = 0;
        kbShow_ = false;
        return;
    }
    if (id.startsWith(QLatin1String("k:"))) {
        if (kbText_.length() < 63) kbText_ += id.mid(2);
        if (kbLayer_ == 1) kbLayer_ = 0;   // capitals for one letter, like a phone
        return;
    }
    if (id == QLatin1String("k-shift")) { kbLayer_ = kbLayer_ == 1 ? 0 : 1; return; }
    if (id == QLatin1String("k-sym")) { kbLayer_ = kbLayer_ == 2 ? 0 : 2; return; }
    if (id == QLatin1String("k-back")) { kbText_.chop(1); return; }
    if (id == QLatin1String("k-space")) { if (kbText_.length() < 63) kbText_ += QLatin1Char(' '); return; }
    if (id == QLatin1String("k-show")) { kbShow_ = !kbShow_; return; }
    if (id == QLatin1String("k-cancel")) { kb_ = false; kbText_.clear(); return; }
    if (id == QLatin1String("k-ok")) {
        app_->wifiStart(App::WIFI_CONNECT, kbSsid_, kbText_);
        kbText_.clear();
        kb_ = false;
        return;
    }
    if (id == QLatin1String("confirm-no")) { confirm_ = false; return; }
    if (id == QLatin1String("confirm-yes")) {
        confirm_ = false;
        app_->forget();
        return;
    }
}

void PanelWidget::slideZone(const QPoint &d) {
    int dx = d.x() - slideFrom_.x(), dy = d.y() - slideFrom_.y();
    if (!sliding_) {
        if (std::abs(dx) < 12 || std::abs(dx) < std::abs(dy)) return;
        sliding_ = true;
        slideFrom_ = d;
        unsigned b = 1u << slideZone_;
        sel_ = sel_ == allZones() ? b : sel_ | b;   // picked first, as its tap
        return;
    }
    int dl = qBound(-(int)SLIDE, (int)(dx * (double)SLIDE / 175.0 + (dx >= 0 ? 0.5 : -0.5)), (int)SLIDE);
    slideValue_ = qBound(0, slideStart_ + dl, 100);
    bubbleUntilMs_ = app_->now() + 1200;
    update();
}

void PanelWidget::drag(const QPoint &d) {
    if (pressed_ != QLatin1String("slider") || !app_->suit()) return;
    const int x0 = 104, x1 = 702;
    int v = qBound(0, (int)(100.0 * (d.x() - x0) / (x1 - x0) + 0.5), 100);
    if (sel_) v = (v + 2) / 5 * 5;   // zones in steps of 5 under a finger
    if (v != selValue()) setSelValue(v);
    bubbleUntilMs_ = app_->now() + 1200;
    update();
}

void PanelWidget::mousePressEvent(QMouseEvent *e) {
    QPoint d = toDesign(e->pos());
    pressAt_ = d;
    pressed_ = idAt(d);
    pressMs_ = repeatMs_ = touchedMs_ = app_->now();
    sliding_ = false;
    slideValue_ = -1;
    slideZone_ = pressed_.startsWith(QLatin1String("z:")) && app_->suit() ? pressed_.mid(2).toInt() : -1;
    if (slideZone_ >= 0) {
        const Zone *z;
        zonesOf(&z);
        slideFrom_ = d;
        slideStart_ = app_->suit()->zone(z[slideZone_]);
    }
    if (pressed_ == QLatin1String("slider")) drag(d);
    else if (isStepper(pressed_)) act(pressed_, false);   // steppers answer on touch, then repeat while held
    update();
}

void PanelWidget::mouseMoveEvent(QMouseEvent *e) {
    touchedMs_ = app_->now();
    if (pressed_ == QLatin1String("slider")) drag(toDesign(e->pos()));
    else if (slideZone_ >= 0) slideZone(toDesign(e->pos()));
}

void PanelWidget::mouseReleaseEvent(QMouseEvent *e) {
    touchedMs_ = app_->now();
    QString id = pressed_;
    pressed_.clear();
    if (sliding_ && slideZone_ >= 0) {   // the slide goes out on release (as the XEMS chip): one write
        Suit *s = app_->suit();
        if (s && slideValue_ >= 0 && slideValue_ != slideStart_) {
            const Zone *z;
            zonesOf(&z);
            app_->setZone(z[slideZone_], slideValue_);
        }
        sliding_ = false;
        slideZone_ = -1;
        slideValue_ = -1;
        bubbleUntilMs_ = app_->now() + 1200;
        update();
        return;
    }
    slideZone_ = -1;
    if (!id.isEmpty() && !isStepper(id) && id != QLatin1String("slider") && idAt(toDesign(e->pos())) == id) act(id, false);
    update();
}

// Everything the screen shows, as text; *clock gets the part the running clock changes by itself.
QString PanelWidget::signature(QString *clock) const {
    unsigned now = app_->now();
    App::View v = app_->view();
    QString g = QString::number(v) + U("|") + app_->note() + QString::number(app_->noteWarn()) + U("|") + pressed_ +
                QString::number(sheet_) + QString::number(confirm_) + QString::number(confirmKind_) + U("|") + QString::number(sel_) +
                QString::number(slideZone_) + U("/") + QString::number(slideValue_) + U("|") +
                U("|%1 %2 %3 %4 %5").arg(info_).arg(sheetWiring_).arg(app_->wiring())
                    .arg((int)(bubbleUntilMs_ - now) > 0).arg((int)(toastUntilMs_ - now) > 0);
    if (wifi_)
        g += U("|w") + app_->wifiLine() + app_->wifiSsid() + app_->wifiIp() + QString::number(app_->wifiNets().size()) +
             QString::number(app_->wifiBusy() ? (now / 400) % 4 : 9) + QString::number(kb_) + QString::number(kbLayer_) +
             QString::number(kbShow_) + kbText_ + QString::number(wifiPage_) + QString::number(kb_ ? (now / 500) % 2 : 0);
    if (confirm_ && confirmKind_ == 2)
        g += U("|n") + app_->netLine() + usbLine_ + QString::number(app_->netBusy() ? (now / 400) % 4 : 9) +
             QString::number(app_->cableLive().training);
    *clock = QString();
    if (v == App::NO_BRIDGE) {
        const App::BridgeDiag &d = app_->bridgeDiag();
        g += app_->uf2State() + QString::number(app_->bridgeUpdating()) + U("|d%1%2 %3").arg(d.usb).arg(d.port).arg(d.rx);
    }
    {
        const xbcable::Config &c = app_->cable();
        const App::CableLive &l = app_->cableLive();
        g += U("|c%1 %2 %3 %4 %5%6%7%8 %9").arg(c.wiring).arg(c.dbl).arg(c.dblHz).arg(c.dblPct).arg(l.running)
                 .arg(l.training).arg(l.second).arg(l.wiring).arg(showCable_ * 2 + cableInfo_);
        const App::PhoneLink &ph = app_->phoneLink();
        g += U("|ph%1 ").arg(ph.phone) + ph.phoneVer + ph.pending + ph.state;
        g += U("|p") + QString::fromStdString(c.program + "/" + l.program) +
             U(" %1 %2 %3 %4 %5 %6").arg(l.programSeg).arg(l.programS).arg(l.programOver).arg(cableTab_).arg(c.minutes).arg(l.programMin);
    }
    if (v == App::NO_BRIDGE || v == App::PICK || v == App::LINKING) {
        g += U("|") + QString::number((now / 400) % 4) + QString::fromStdString(app_->linkingMac());
        const std::vector<Seen> &s = app_->seen();
        for (size_t i = 0; i < s.size(); i++) {
            int lv = s[i].rssi >= -60 ? 4 : s[i].rssi >= -70 ? 3 : s[i].rssi >= -80 ? 2 : 1;
            g += U("|") + QString::fromStdString(s[i].mac + s[i].name) + QString::number(lv);
        }
        return g;
    }
    Suit *s = const_cast<App *>(app_)->suit();
    if (!s) return g;
    const Program &pr = s->program();
    g += U("|") + QString::fromStdString(app_->suitName()) +
         U("|%1 %2 %3 %4 %5 %6").arg(s->state()).arg(s->impulse()).arg(s->strength()).arg(s->battery())
             .arg(s->startPending()).arg(s->preparing());
    g += U("|%1 %2 %3 %4 %5 %6").arg(pr.hz).arg(pr.us).arg(pr.onS).arg(pr.offS).arg(pr.totalS).arg(pr.dbl);
    for (int i = 0; i < s->channels(); i++) g += U(",") + QString::number(s->channel(i)) + U("/") + QString::number(s->liveLevel(i));
    g += QString::number(app_->female());
    if (s->startPending()) g += QString::number((now / 400) % 4);
    if (sheet_)
        g += U("|%1 %2 %3 %4 %5 %6").arg(sheetProg_.hz).arg(sheetProg_.us).arg(sheetProg_.onS).arg(sheetProg_.offS)
                 .arg(sheetProg_.totalS).arg(sheetAge60_) +
             U("|%1 %2 %3 %4").arg(sheetProg_.rampMs).arg(sheetProg_.dbl).arg(sheetProg_.dblHz).arg(sheetProg_.dblPct) +
             U("|%1 %2 %3").arg(sheetProg_.hz).arg(sheetProg_.onS).arg(sheetProg_.cont);
    *clock = U("%1 %2").arg(s->secondsLeft(now)).arg(s->state() == Suit::RUNNING ? (s->phaseMsLeft(now) + 999) / 1000 : -1);
    return g;
}

void PanelWidget::timerEvent(QTimerEvent *) {
    unsigned t = app_->now();
    if (sel_ && pressed_.isEmpty() && !sheet_ && !confirm_ && t - touchedMs_ > (unsigned)SEL_IDLE_MS) sel_ = 0;   // 5 s idle
    if (isStepper(pressed_) && t - pressMs_ > 450 && t - repeatMs_ > 90) { repeatMs_ = t; act(pressed_, true); }
    // A request that ended after its sheet was closed: its result as a toast.
    if (netWasBusy_ && !app_->netBusy()) { netWasBusy_ = false; if (!confirm_) toast(app_->netLine()); }
    if (!isVisible()) { sig_.clear(); return; }
    QString clock, g = signature(&clock);
    if (g != sig_) update();
    else if (clock != clockSig_) {
        if (!clockRect_.isNull() && !sheet_ && !confirm_) update(toScreen(clockRect_));
        else update();
    }
    sig_ = g;
    clockSig_ = clock;
}

void PanelWidget::slideAt(const QPoint &a, const QPoint &b) {
    QMouseEvent d(QEvent::MouseButtonPress, a, mapToGlobal(a), Qt::LeftButton, Qt::LeftButton, Qt::NoModifier);
    QApplication::sendEvent(this, &d);
    for (int i = 1; i <= 10; i++) {
        QPoint m(a.x() + (b.x() - a.x()) * i / 10, a.y() + (b.y() - a.y()) * i / 10);
        QMouseEvent mv(QEvent::MouseMove, m, mapToGlobal(m), Qt::NoButton, Qt::LeftButton, Qt::NoModifier);
        QApplication::sendEvent(this, &mv);
    }
    QMouseEvent u(QEvent::MouseButtonRelease, b, mapToGlobal(b), Qt::LeftButton, Qt::NoButton, Qt::NoModifier);
    QApplication::sendEvent(this, &u);
}

void PanelWidget::tapAt(const QPoint &p) {
    QMouseEvent d(QEvent::MouseButtonPress, p, mapToGlobal(p), Qt::LeftButton, Qt::LeftButton, Qt::NoModifier);
    QApplication::sendEvent(this, &d);
    QMouseEvent u(QEvent::MouseButtonRelease, p, mapToGlobal(p), Qt::LeftButton, Qt::NoButton, Qt::NoModifier);
    QApplication::sendEvent(this, &u);
}

// ============================================================================ TabWidget
// A small white XBody-style key in a corner of XBody's screen.

TabWidget::TabWidget(App *app)
    : QWidget(0, Qt::FramelessWindowHint | Qt::WindowStaysOnTopHint | Qt::Tool), app_(app), dragging_(false), down_(false) {
    loadLook();
    QRect scr = QApplication::desktop()->screenGeometry();
    double k = scr.height() / 600.0;
    resize((int)(150 * k), (int)(48 * k));
    // Top right, over XBody's clock (it takes no taps there); the trainer can drag it elsewhere.
    QSettings st(QString::fromLocal8Bit(std::getenv("XEMS_CONF") ? std::getenv("XEMS_CONF") : "/opt/xems/panel.conf"),
                 QSettings::IniFormat);
    QPoint def(scr.width() - width() - (int)(4 * k), (int)(4 * k));
    QPoint pos = st.value("tab/pos", def).toPoint();
    if (!scr.contains(QRect(pos, size()))) pos = def;
    move(pos);
    // Rounded window shape: XBody stays visible in the corners (QWS honours window masks).
    QPainterPath shape;
    shape.addRoundedRect(QRectF(rect()), 8 * k, 8 * k);
    setMask(QRegion(shape.toFillPolygon().toPolygon()));
    timer_.start(250, this);
}

void TabWidget::paintEvent(QPaintEvent *) {
    QPainter p(this);
    p.setRenderHint(QPainter::Antialiasing, true);
    double k = height() / 48.0;
    Suit *s = app_->suit();
    bool running = s && s->state() == Suit::RUNNING, paused = s && s->state() == Suit::PAUSED;
    QColor edge = running ? GREEN : paused ? YELLOW : LINE;
    p.fillRect(rect(), WHITE);
    p.setPen(QPen(edge, (running || paused ? 3 : 2) * k));
    p.setBrush(down_ ? PRESS : WHITE);
    p.drawRoundedRect(QRectF(rect()).adjusted(1.5 * k, 1.5 * k, -1.5 * k, -1.5 * k), 8 * k, 8 * k);
    p.setPen(INK);
    p.setFont(uiFont((int)(18 * k), true));
    p.drawText(QRect((int)(12 * k), 0, (int)(64 * k), height()), Qt::AlignLeft | Qt::AlignVCenter, U("XEMS"));
    QRect st((int)(70 * k), 0, width() - (int)(82 * k), height());
    if (app_->sessions() > 0) {   // each suit has its own tab below: this one adds another
        bool more = app_->sessions() < App::MAX_SESSIONS;
        p.setPen(more ? INK : LINE);
        p.setFont(uiFont((int)(26 * k), true));
        p.drawText(st, Qt::AlignRight | Qt::AlignVCenter, more ? U("+") : U("4/4"));
        return;
    }
    if (running || paused) {
        p.setPen(running ? GREEN : QColor(0xC8, 0x96, 0x00));
        p.setFont(uiFont((int)(18 * k), true));
        p.drawText(st, Qt::AlignRight | Qt::AlignVCenter, mmss(s->secondsLeft(app_->now())));
    } else {
        // XBody's cable output changed by us: say so where the trainer looks (⇄ XEMS suit, 2× double impulse).
        const xbcable::Config &c = app_->cable();
        int x = st.right();
        p.setFont(uiFont((int)(14 * k), true));
        for (int b = 0; b < 4; b++) {
            bool on = b == 3 ? !app_->phoneLink().pending.isEmpty()
                     : b == 2 ? !c.program.empty() : b ? c.wiring == xbcable::WIRE_XEMS : c.dbl;
            if (!on) continue;
            QString t = b == 3 ? U("↓") : b == 2 ? U("▶") : b ? U("⇄") : U("2×");
            int w = (int)(30 * k);
            QRectF r(x - w, height() / 2 - 11 * k, w, 22 * k);
            p.setPen(Qt::NoPen);
            p.setBrush(b == 3 ? INK : b == 2 ? GREEN : b ? RED : YELLOW);
            p.drawRoundedRect(r, 6 * k, 6 * k);
            p.setPen(b ? WHITE : INK);
            p.drawText(r, Qt::AlignCenter, t);
            x -= w + (int)(4 * k);
        }
        if (x == st.right()) {
            QColor dot = !app_->bridgeOk() ? LINE : s ? GREEN : YELLOW;
            p.setPen(Qt::NoPen);
            p.setBrush(dot);
            int d = (int)(12 * k);
            p.drawEllipse(QRect(st.right() - d, height() / 2 - d / 2, d, d));
        }
    }
}

void TabWidget::mousePressEvent(QMouseEvent *e) {
    pressGlobal_ = e->globalPos();
    startPos_ = pos();
    dragging_ = false;
    down_ = true;
    update();
}

void TabWidget::mouseMoveEvent(QMouseEvent *e) {
    QPoint d = e->globalPos() - pressGlobal_;
    if (!dragging_ && d.manhattanLength() > height() / 4) dragging_ = true;
    if (dragging_) move(startPos_ + d);
}

void TabWidget::mouseReleaseEvent(QMouseEvent *) {
    down_ = false;
    if (dragging_) {
        QSettings st(QString::fromLocal8Bit(std::getenv("XEMS_CONF") ? std::getenv("XEMS_CONF") : "/opt/xems/panel.conf"),
                     QSettings::IniFormat);
        st.setValue("tab/pos", pos());
    } else if (app_->sessions() > 0 && app_->sessions() < App::MAX_SESSIONS) {
        app_->showPick();
    } else if (app_->sessions() > 0) {
        app_->showSession(app_->current() >= 0 ? app_->current() : 0);
    } else {
        app_->openPanel();
    }
    dragging_ = false;
    update();
}

void TabWidget::timerEvent(QTimerEvent *) {
    if (!isVisible()) { sig_.clear(); return; }
    raise();   // stay above XBody's windows
    Suit *s = app_->suit();
    QString g = QString::number(down_) + QString::number(app_->bridgeOk()) + QString::number(s != 0);
    g += U(" %1%2").arg(app_->cable().wiring).arg(app_->cable().dbl) + QString::fromStdString(app_->cable().program) +
         app_->phoneLink().pending;
    if (s) g += U(" %1 %2").arg(s->state()).arg(s->state() == Suit::IDLE ? 0 : s->secondsLeft(app_->now()));
    g += U(" n%1").arg(app_->sessions());
    if (g != sig_) update();
    sig_ = g;
}

void TabWidget::tapAt(const QPoint &p) {
    QMouseEvent d(QEvent::MouseButtonPress, p, mapToGlobal(p), Qt::LeftButton, Qt::LeftButton, Qt::NoModifier);
    QApplication::sendEvent(this, &d);
    QMouseEvent u(QEvent::MouseButtonRelease, p, mapToGlobal(p), Qt::LeftButton, Qt::NoButton, Qt::NoModifier);
    QApplication::sendEvent(this, &u);
}

// ---------------------------------------------------------------- session tabs

SessionTab::SessionTab(App *app, int index)
    : QWidget(0, Qt::FramelessWindowHint | Qt::WindowStaysOnTopHint | Qt::Tool), app_(app), index_(index), down_(false),
      downStop_(false) {
    QRect scr = QApplication::desktop()->screenGeometry();
    double k = scr.height() / 600.0;
    resize((int)(230 * k), (int)(48 * k));
    QPainterPath shape;
    shape.addRoundedRect(QRectF(rect()), 8 * k, 8 * k);
    setMask(QRegion(shape.toFillPolygon().toPolygon()));
    hide();
    timer_.start(250, this);
}

QRect SessionTab::stopRect() const {
    double k = height() / 48.0;
    return QRect(width() - (int)(52 * k), (int)(5 * k), (int)(46 * k), height() - (int)(10 * k));
}

void SessionTab::paintEvent(QPaintEvent *) {
    QPainter p(this);
    p.setRenderHint(QPainter::Antialiasing, true);
    double k = height() / 48.0;
    Suit *s = app_->sessionSuit(index_);
    if (!s) return;
    bool running = s->state() == Suit::RUNNING, paused = s->state() == Suit::PAUSED;
    bool counting = s->startPending();
    QColor edge = running ? GREEN : paused || counting ? YELLOW : LINE;
    p.fillRect(rect(), WHITE);
    p.setPen(QPen(edge, (running || paused ? 3 : 2) * k));
    p.setBrush(down_ && !downStop_ ? PRESS : WHITE);
    p.drawRoundedRect(QRectF(rect()).adjusted(1.5 * k, 1.5 * k, -1.5 * k, -1.5 * k), 8 * k, 8 * k);
    QRect stop = stopRect();
    int textRight = stop.left() - (int)(6 * k);
    // the time (or the state) next to STOP, the suit's name in what is left
    QString t = running || paused ? mmss(s->secondsLeft(app_->now())) : counting ? U("МИГ…") : U("готов");
    p.setFont(uiFont((int)(17 * k), true));
    int tw = QFontMetrics(p.font()).width(t);
    p.setPen(running ? GREEN : paused || counting ? QColor(0xC8, 0x96, 0x00) : SOFT);
    p.drawText(QRect(textRight - tw, 0, tw, height()), Qt::AlignRight | Qt::AlignVCenter, t);
    p.setPen(INK);
    p.setFont(uiFont((int)(14 * k), true));
    QRect nr((int)(10 * k), 0, textRight - tw - (int)(16 * k), height());
    QString n = QFontMetrics(p.font()).elidedText(QString::fromStdString(app_->sessionName(index_)), Qt::ElideRight, nr.width());
    p.drawText(nr, Qt::AlignLeft | Qt::AlignVCenter, n);
    // ■ STOP: red while something can be stopped, grey when the suit is idle
    bool live = running || paused || counting;
    p.setPen(Qt::NoPen);
    p.setBrush(live ? (down_ && downStop_ ? QColor(0xB0, 0x10, 0x18) : RED) : PRESS);
    p.drawRoundedRect(QRectF(stop), 6 * k, 6 * k);
    p.setBrush(live ? WHITE : LINE);
    int q = (int)(14 * k);
    p.drawRect(QRect(stop.center().x() - q / 2, stop.center().y() - q / 2, q, q));
}

void SessionTab::mousePressEvent(QMouseEvent *e) {
    down_ = true;
    downStop_ = stopRect().contains(e->pos());
    update();
}

void SessionTab::mouseReleaseEvent(QMouseEvent *e) {
    bool stop = downStop_ && stopRect().contains(e->pos());
    bool open = down_ && !downStop_ && rect().contains(e->pos());
    down_ = downStop_ = false;
    if (stop) app_->stopSession(index_);
    else if (open) app_->showSession(index_);
    update();
}

void SessionTab::timerEvent(QTimerEvent *) {
    bool want = index_ < app_->sessions() && !app_->panelOpen();
    if (want != isVisible()) setVisible(want);
    if (!want) { sig_.clear(); return; }
    // under the XEMS tab (it can be dragged): one row per session
    QPoint c = app_->tabCorner();
    QPoint at(c.x(), c.y() + (int)(4 * height() / 48.0) + index_ * (height() + (int)(4 * height() / 48.0)));
    QRect scr = QApplication::desktop()->screenGeometry();
    if (at.x() + width() > scr.right()) at.setX(scr.right() - width());
    if (at != pos()) move(at);
    raise();
    Suit *s = app_->sessionSuit(index_);
    QString g = QString::number(down_) + QString::number(downStop_) + QString::fromStdString(app_->sessionName(index_));
    if (s) g += U(" %1 %2 %3").arg(s->state()).arg(s->startPending()).arg(s->state() == Suit::IDLE ? 0 : s->secondsLeft(app_->now()));
    if (g != sig_) update();
    sig_ = g;
}

void SessionTab::tapAt(const QPoint &p) {
    QMouseEvent d(QEvent::MouseButtonPress, p, mapToGlobal(p), Qt::LeftButton, Qt::LeftButton, Qt::NoModifier);
    QApplication::sendEvent(this, &d);
    QMouseEvent u(QEvent::MouseButtonRelease, p, mapToGlobal(p), Qt::LeftButton, Qt::NoButton, Qt::NoModifier);
    QApplication::sendEvent(this, &u);
}
