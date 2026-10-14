#include "panel.h"
#include "app.h"
#include "xbres.h"
#include <QApplication>
#include <QDesktopWidget>
#include <QFontDatabase>
#include <QMap>
#include <QMouseEvent>
#include <QPainter>
#include <QPainterPath>
#include <QPixmap>
#include <QSettings>
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
      sheet_(false), confirm_(false), sheetAge60_(false), sel_(0), selKind_(-1), k_(1), ox_(0), oy_(0) {
    loadLook();
    setAttribute(Qt::WA_OpaquePaintEvent);
    timer_.start(50, this);   // stepper repeat + change check; paints only on a change
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

int PanelWidget::selValue() const {
    Suit *s = const_cast<App *>(app_)->suit();
    if (!s) return 0;
    if (!sel_) return s->strength();
    const Zone *z;
    int n = Suit::zones(s->kind(), &z);
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
    const Zone *z;
    int n = Suit::zones(s->kind(), &z);
    for (int i = 0; i < n; i++)
        if ((sel_ & (1u << i)) && s->zone(z[i]) != v) app_->setZone(z[i], v);
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
    switch (app_->view()) {
    case App::NO_BRIDGE: paintNoBridge(p); break;
    case App::PICK:
    case App::LINKING: paintPick(p); break;
    case App::TRAIN: paintTrain(p); break;
    }
    if (sheet_) paintSheet(p);
    if (confirm_) paintConfirm(p);
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

void PanelWidget::paintNoBridge(QPainter &p) {
    paintHeader(p, U("XEMS"), QString(), false, false);
    // The XIAO in a USB port, drawn: port, plug, the little board with its LED.
    p.setPen(QPen(LINE, 2));
    p.setBrush(WHITE);
    p.drawRoundedRect(QRectF(256, 150, 112, 84), 8, 8);   // the unit's USB port
    p.setBrush(PRESS);
    p.drawRect(QRectF(278, 178, 67, 28));
    p.setPen(QPen(RED, 3, Qt::DashLine, Qt::RoundCap));
    p.drawLine(QPointF(372, 192), QPointF(422, 192));
    p.setPen(Qt::NoPen);
    p.setBrush(INK);
    p.drawRoundedRect(QRectF(434, 152, 112, 62), 8, 8);
    p.drawRect(QRectF(422, 172, 22, 22));
    p.setBrush(GREEN);
    p.drawEllipse(QRectF(522, 161, 10, 10));
    p.setPen(WHITE);
    p.setFont(uiFont(15, true));
    p.drawText(QRect(446, 182, 90, 26), Qt::AlignCenter, U("XIAO"));
    p.setPen(INK);
    p.setFont(uiFont(28));
    p.drawText(QRect(0, 270, 800, 46), Qt::AlignCenter, U("Включи XEMS моста в USB"));
    p.setPen(SOFT);
    p.setFont(uiFont(17));
    p.drawText(QRect(40, 320, 720, 50), Qt::AlignCenter | Qt::TextWordWrap,
               U("малката платка XIAO — щом я видя, ще потърся костюмите"));
    p.setPen(GREY);
    p.setFont(uiFont(16));
    p.drawText(QRect(0, 386, 800, 28), Qt::AlignCenter, U("Търся") + QString((app_->now() / 400) % 4, QLatin1Char('.')));
}

// Like XBody's program selection: tiles with a red emblem, the caption under each.
void PanelWidget::paintPick(QPainter &p) {
    int dots = (app_->now() / 400) % 4;
    QString n = app_->note();
    paintHeader(p, U("ИЗБЕРИ КОСТЮМ"), n.isEmpty() ? U("Търся наблизо") + QString(dots, QLatin1Char('.')) : n,
                !n.isEmpty() && app_->noteWarn(), !n.isEmpty() && !app_->noteWarn());
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
        bool bt = d.kind == Suit::BODYTECH;
        p.setPen(linking ? WHITE : RED);
        p.setFont(uiFont(bt ? 22 : 30, true));
        p.drawText(QRect(tile.left(), tile.top() + 20, 150, 60), Qt::AlignCenter, bt ? U("bodytech") : U("XEMS"));
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
    Suit::zones(s->kind(), &z);
    bool on = (sel_ & (1u << zi)) != 0;
    outlined(p, r, U("z:%1").arg(zi), QString(), 0, on);
    QRect in = r.adjusted(10, 0, -12, 0);
    p.setPen(on ? WHITE : INK);
    p.setFont(uiFont(15));
    p.drawText(in, (right ? Qt::AlignRight : Qt::AlignLeft) | Qt::AlignVCenter, QString::fromUtf8(z[zi].name));
    p.setFont(uiFont(19, true));
    p.drawText(in, (right ? Qt::AlignLeft : Qt::AlignRight) | Qt::AlignVCenter, QString::number(s->zone(z[zi])) + U("%"));
}

void PanelWidget::paintTrain(QPainter &p) {
    Suit *s = app_->suit();
    const Program &pr = s->program();
    bool idle = s->state() == Suit::IDLE, running = s->state() == Suit::RUNNING;
    bool bt = s->kind() == Suit::BODYTECH;
    if (selKind_ != s->kind()) { sel_ = 0; selKind_ = s->kind(); }
    sel_ &= allZones();

    const Zone *z;
    int nz = Suit::zones(s->kind(), &z), nl = Suit::zonesLeft(s->kind());
    // ---- the body, front and back; the selected zones lit ----
    if (const QPixmap *body = pix("BodyNormal")) {
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
    QString n = app_->note();
    QString sub = n;
    if (sub.isEmpty())
        sub = (bt ? U("bodytech") : U("XEMS")) + U("   ·   батерия ") + (s->battery() < 0 ? U("—") : QString::number(s->battery()) + U("%"));
    paintHeader(p, QString::fromStdString(app_->suitName()).toUpper(), sub, !n.isEmpty() && app_->noteWarn(),
                !n.isEmpty() && !app_->noteWarn());
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
               QString::number(pr.onS) + U("/") + QString::number(pr.offS) + U(" s · ") + QString::number(pr.us) + U(" µs"));
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
    p.drawText(box, Qt::AlignCenter, t);
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

void PanelWidget::stepper(QPainter &p, int y, const QString &label, const QString &value, const QString &field) {
    p.setPen(INK);
    p.setFont(uiFont(19));
    p.drawText(QRect(130, y, 230, 56), Qt::AlignLeft | Qt::AlignVCenter, label);
    outlined(p, QRect(370, y, 70, 56), U("st:") + field + U(":-"), U("−"), 30, false);
    p.setPen(INK);
    p.setFont(uiFont(22, true));
    p.drawText(QRect(440, y, 160, 56), Qt::AlignCenter, value);
    outlined(p, QRect(600, y, 70, 56), U("st:") + field + U(":+"), U("+"), 30, false);
}

void PanelWidget::paintSheet(QPainter &p) {
    p.fillRect(QRect(0, 0, 800, 600), QColor(0x30, 0x37, 0x41, 150));
    hits_.clear();   // only the sheet answers
    p.setPen(QPen(LINE, 2));
    p.setBrush(WHITE);
    p.drawRoundedRect(QRectF(100, 14, 600, 572), 10, 10);
    p.setPen(GREY);
    QFont tf = uiFont(20, true);
    tf.setLetterSpacing(QFont::AbsoluteSpacing, 1.5);
    p.setFont(tf);
    p.drawText(QRect(100, 22, 600, 44), Qt::AlignCenter, U("ПРОГРАМА"));
    const Program &q = sheetProg_;
    stepper(p, 76, U("Честота"), QString::number(q.hz) + U(" Hz"), U("hz"));
    stepper(p, 142, U("Дълбочина"), QString::number(q.us) + U(" µs"), U("us"));
    stepper(p, 208, U("Импулс"), QString::number(q.onS) + U(" s"), U("on"));
    stepper(p, 274, U("Пауза"), QString::number(q.offS) + U(" s"), U("off"));
    stepper(p, 340, U("Време"), QString::number(q.totalS / 60) + U(" мин"), U("total"));
    p.setPen(INK);
    p.setFont(uiFont(19));
    p.drawText(QRect(130, 412, 230, 56), Qt::AlignLeft | Qt::AlignVCenter, U("Клиент над 60"));
    outlined(p, QRect(370, 412, 300, 56), U("age60"), sheetAge60_ ? U("✓ Да · до 85 Hz") : U("Не"), 19, sheetAge60_);
    outlined(p, QRect(130, 500, 200, 66), U("sheet-cancel"), U("ОТКАЖИ"), 19, false);
    filled(p, QRect(470, 500, 200, 66), U("sheet-ok"), QString(), GREEN, WHITE, U("ГОТОВО"), 21);
}

// XBody's message dialog: a dark red band over the whole width.
void PanelWidget::paintConfirm(QPainter &p) {
    p.fillRect(QRect(0, 0, 800, 600), QColor(255, 255, 255, 120));
    hits_.clear();
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
        p.drawText(r, Qt::AlignCenter, i ? U("ПРЕКЪСНИ") : U("ОСТАВИ"));
        hit(r, id);
    }
}

static void stepField(Program &q, const QString &f, int d, bool age60) {
    if (f == QLatin1String("hz")) q.hz = qBound(1, q.hz + d, age60 ? 85 : 120);
    else if (f == QLatin1String("us")) q.us = qBound(50, q.us + d * 10, q.hz >= 100 ? 300 : 400);
    else if (f == QLatin1String("on")) q.onS = qBound(1, q.onS + d, 10);
    else if (f == QLatin1String("off")) q.offS = qBound(1, q.offS + d, 30);
    else if (f == QLatin1String("total")) q.totalS = qBound(60, q.totalS + d * 60, 3600);
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
        return;
    }
    if (id.startsWith(QLatin1String("st:"))) {
        QStringList parts = id.split(QLatin1Char(':'));
        stepField(sheetProg_, parts[1], parts[2] == QLatin1String("+") ? 1 : -1, sheetAge60_);
        return;
    }
    if (repeat) return;
    if (id == QLatin1String("back")) { app_->hidePanel(); return; }
    if (id.startsWith(QLatin1String("suit:"))) { app_->connectTo(id.mid(5).toStdString()); return; }
    if (id.startsWith(QLatin1String("z:"))) {   // tap = into / out of the selection (as on XBody)
        unsigned b = 1u << id.mid(2).toInt();
        sel_ = (sel_ & b) ? sel_ & ~b : sel_ | b;
        return;
    }
    if (id == QLatin1String("all")) { sel_ = sel_ == allZones() ? 0 : allZones(); return; }
    if (id == QLatin1String("master")) { sel_ = 0; return; }
    if (id == QLatin1String("go")) { app_->startPause(); return; }
    if (id == QLatin1String("stop")) { app_->stopRun(); return; }
    if (id == QLatin1String("prog") && s) {
        if (s->state() == Suit::RUNNING) return;   // greyed while running
        sheetProg_ = s->program();
        sheetAge60_ = app_->age60();
        sheet_ = true;
        return;
    }
    if (id == QLatin1String("age60")) {
        sheetAge60_ = !sheetAge60_;
        if (sheetAge60_ && sheetProg_.hz > 85) sheetProg_.hz = 85;
        return;
    }
    if (id == QLatin1String("sheet-cancel")) { sheet_ = false; return; }
    if (id == QLatin1String("sheet-ok")) { app_->applyProgram(sheetProg_, sheetAge60_); sheet_ = false; return; }
    if (id == QLatin1String("suit") && s && s->state() == Suit::IDLE) { confirm_ = true; return; }
    if (id == QLatin1String("confirm-no")) { confirm_ = false; return; }
    if (id == QLatin1String("confirm-yes")) { confirm_ = false; app_->forget(); return; }
}

void PanelWidget::drag(const QPoint &d) {
    if (pressed_ != QLatin1String("slider") || !app_->suit()) return;
    const int x0 = 104, x1 = 702;
    int v = qBound(0, (int)(100.0 * (d.x() - x0) / (x1 - x0) + 0.5), 100);
    if (sel_) v = (v + 2) / 5 * 5;   // zones in steps of 5 under a finger
    if (v != selValue()) setSelValue(v);
    update();
}

void PanelWidget::mousePressEvent(QMouseEvent *e) {
    QPoint d = toDesign(e->pos());
    pressed_ = idAt(d);
    pressMs_ = repeatMs_ = app_->now();
    if (pressed_ == QLatin1String("slider")) drag(d);
    else if (isStepper(pressed_)) act(pressed_, false);   // steppers answer on touch, then repeat while held
    update();
}

void PanelWidget::mouseMoveEvent(QMouseEvent *e) {
    if (pressed_ == QLatin1String("slider")) drag(toDesign(e->pos()));
}

void PanelWidget::mouseReleaseEvent(QMouseEvent *e) {
    QString id = pressed_;
    pressed_.clear();
    if (!id.isEmpty() && !isStepper(id) && id != QLatin1String("slider") && idAt(toDesign(e->pos())) == id) act(id, false);
    update();
}

// Everything the screen shows, as text; *clock gets the part the running clock changes by itself.
QString PanelWidget::signature(QString *clock) const {
    unsigned now = app_->now();
    App::View v = app_->view();
    QString g = QString::number(v) + U("|") + app_->note() + QString::number(app_->noteWarn()) + U("|") + pressed_ +
                QString::number(sheet_) + QString::number(confirm_) + U("|") + QString::number(sel_);
    *clock = QString();
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
    g += U("|%1 %2 %3 %4 %5").arg(pr.hz).arg(pr.us).arg(pr.onS).arg(pr.offS).arg(pr.totalS);
    for (int i = 0; i < s->channels(); i++) g += U(",") + QString::number(s->channel(i));
    if (s->startPending()) g += QString::number((now / 400) % 4);
    if (sheet_)
        g += U("|%1 %2 %3 %4 %5 %6").arg(sheetProg_.hz).arg(sheetProg_.us).arg(sheetProg_.onS).arg(sheetProg_.offS)
                 .arg(sheetProg_.totalS).arg(sheetAge60_);
    *clock = U("%1 %2").arg(s->secondsLeft(now)).arg(s->state() == Suit::RUNNING ? (s->phaseMsLeft(now) + 999) / 1000 : -1);
    return g;
}

void PanelWidget::timerEvent(QTimerEvent *) {
    unsigned t = app_->now();
    if (isStepper(pressed_) && t - pressMs_ > 450 && t - repeatMs_ > 90) { repeatMs_ = t; act(pressed_, true); }
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
    if (running || paused) {
        p.setPen(running ? GREEN : QColor(0xC8, 0x96, 0x00));
        p.setFont(uiFont((int)(18 * k), true));
        p.drawText(st, Qt::AlignRight | Qt::AlignVCenter, mmss(s->secondsLeft(app_->now())));
    } else {
        QColor dot = !app_->bridgeOk() ? LINE : s ? GREEN : YELLOW;
        p.setPen(Qt::NoPen);
        p.setBrush(dot);
        int d = (int)(12 * k);
        p.drawEllipse(QRect(st.right() - d, height() / 2 - d / 2, d, d));
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
    if (s) g += U(" %1 %2").arg(s->state()).arg(s->state() == Suit::IDLE ? 0 : s->secondsLeft(app_->now()));
    if (g != sig_) update();
    sig_ = g;
}

void TabWidget::tapAt(const QPoint &p) {
    QMouseEvent d(QEvent::MouseButtonPress, p, mapToGlobal(p), Qt::LeftButton, Qt::LeftButton, Qt::NoModifier);
    QApplication::sendEvent(this, &d);
    QMouseEvent u(QEvent::MouseButtonRelease, p, mapToGlobal(p), Qt::LeftButton, Qt::NoButton, Qt::NoModifier);
    QApplication::sendEvent(this, &u);
}
