#include "panel.h"
#include "app.h"
#include <QApplication>
#include <QDesktopWidget>
#include <QMouseEvent>
#include <QPainter>
#include <QPainterPath>
#include <QSettings>
#include <cstdlib>

// XemsUi dark palette (branding/java/src/com/isaigu/gymapp/widget/XemsUi.java).
static const QColor BG(0x06, 0x0B, 0x14), CARD(0x0B, 0x16, 0x23), SURFACE(0x10, 0x20, 0x2F), ELEVATED(0x15, 0x29, 0x3B),
    STROKE(0x1C, 0x3A, 0x52), TEXT(0xE6, 0xF3, 0xFF), MUTED(0x93, 0xAF, 0xC6), HINT(0x5E, 0x7A, 0x92),
    ACCENT(0x37, 0xD0, 0xEB), GO(0x22, 0xC5, 0x5E), GO_TEXT(0x4A, 0xDE, 0x80), AMBER(0xF5, 0xB0, 0x21),
    DANGER(0xEF, 0x44, 0x44);
enum { K_GHOST, K_GO, K_AMBER, K_DANGER, K_CHIP, K_ON };

static QString U(const char *s) { return QString::fromUtf8(s); }

static QFont uiFont(int px, bool bold = false) {
    QFont f(QString::fromLatin1("DejaVu Sans"));
    f.setPixelSize(px > 4 ? px : 4);
    f.setBold(bold);
    return f;
}

static QString mmss(int s) {
    if (s < 0) s = 0;
    return QString::fromLatin1("%1:%2").arg(s / 60).arg(s % 60, 2, 10, QLatin1Char('0'));
}

static QColor mix(const QColor &a, const QColor &b, double t) {
    return QColor((int)(a.red() + (b.red() - a.red()) * t), (int)(a.green() + (b.green() - a.green()) * t),
                  (int)(a.blue() + (b.blue() - a.blue()) * t));
}

static void playIcon(QPainter &p, const QRect &r, const QColor &c) {
    QPolygon g;
    g << QPoint(r.left() + r.width() / 5, r.top()) << QPoint(r.right(), r.center().y())
      << QPoint(r.left() + r.width() / 5, r.bottom());
    p.setPen(Qt::NoPen);
    p.setBrush(c);
    p.drawPolygon(g);
}

static void pauseIcon(QPainter &p, const QRect &r, const QColor &c) {
    int w = r.width() * 3 / 10;
    p.setPen(Qt::NoPen);
    p.setBrush(c);
    p.drawRoundedRect(QRect(r.left() + r.width() / 10, r.top(), w, r.height()), w / 5, w / 5);
    p.drawRoundedRect(QRect(r.right() - r.width() / 10 - w, r.top(), w, r.height()), w / 5, w / 5);
}

static void stopIcon(QPainter &p, const QRect &r, const QColor &c) {
    p.setPen(Qt::NoPen);
    p.setBrush(c);
    p.drawRoundedRect(r, r.width() / 8, r.width() / 8);
}

static void battery(QPainter &p, const QRect &r, int pct) {
    QColor c = pct < 0 ? HINT : pct <= 15 ? DANGER : pct <= 30 ? AMBER : GO_TEXT;
    p.setPen(QPen(c, r.height() / 10 > 2 ? r.height() / 10 : 2));
    p.setBrush(Qt::NoBrush);
    QRect body(r.left(), r.top(), r.width() * 9 / 10, r.height());
    p.drawRoundedRect(body, r.height() / 6, r.height() / 6);
    p.setPen(Qt::NoPen);
    p.setBrush(c);
    p.drawRect(QRect(body.right() + 2, r.top() + r.height() / 3, r.width() / 12, r.height() / 3));
    if (pct > 0) {
        int m = r.height() / 5;
        QRect in = body.adjusted(m, m, -m, -m);
        in.setWidth(in.width() * pct / 100);
        p.drawRect(in);
    }
}

static void signalBars(QPainter &p, const QRect &r, int rssi) {
    int lv = rssi >= -60 ? 4 : rssi >= -70 ? 3 : rssi >= -80 ? 2 : 1;
    int bw = r.width() / 6;
    for (int i = 0; i < 4; i++) {
        int h = r.height() * (i + 1) / 4;
        p.setPen(Qt::NoPen);
        p.setBrush(i < lv ? ACCENT : STROKE);
        p.drawRoundedRect(QRect(r.left() + i * bw * 3 / 2, r.bottom() - h, bw, h), 2, 2);
    }
}

// ============================================================================ PanelWidget

PanelWidget::PanelWidget(App *app)
    : QWidget(0, Qt::FramelessWindowHint | Qt::WindowStaysOnTopHint), app_(app), pressMs_(0), repeatMs_(0),
      sheet_(false), confirm_(false), sheetAge60_(false), vw_(1920) {
    setAttribute(Qt::WA_OpaquePaintEvent);
    timer_.start(60, this);
}

int PanelWidget::S(double v) const { return (int)(v * height() / 1080.0 + 0.5); }
QRect PanelWidget::R(double x, double y, double w, double h) const { return QRect(S(x), S(y), S(w), S(h)); }

QString PanelWidget::idAt(const QPoint &p) const {
    for (int i = (int)hits_.size() - 1; i >= 0; i--)   // last painted = on top
        if (hits_[i].r.contains(p)) return hits_[i].id;
    return QString();
}

void PanelWidget::button(QPainter &p, const QRect &r, const QString &id, int kind, const QString &text, int px) {
    bool down = !id.isEmpty() && pressed_ == id;
    QColor bg, fg = TEXT, line = Qt::transparent;
    switch (kind) {
    case K_GO: bg = GO; fg = QColor(0x04, 0x1A, 0x0C); break;
    case K_AMBER: bg = AMBER; fg = QColor(0x24, 0x18, 0x00); break;
    case K_DANGER: bg = DANGER; fg = Qt::white; break;
    case K_CHIP: bg = SURFACE; line = STROKE; break;
    case K_ON: bg = mix(SURFACE, AMBER, 0.22); line = AMBER; fg = AMBER; break;
    default: bg = CARD; line = STROKE; fg = MUTED; break;
    }
    if (down) bg = mix(bg, Qt::black, 0.25);
    p.setPen(line == Qt::transparent ? Qt::NoPen : QPen(line, S(2)));
    p.setBrush(bg);
    p.drawRoundedRect(r, S(22), S(22));
    if (!text.isEmpty()) {
        p.setPen(fg);
        p.setFont(uiFont(S(px), kind == K_GO || kind == K_AMBER || kind == K_DANGER));
        p.drawText(r, Qt::AlignCenter, text);
    }
    if (!id.isEmpty()) hit(r, id);
}

void PanelWidget::paintClose(QPainter &p) {
    QRect r = R(vw_ - 32 - 112, 24, 112, 96);
    button(p, r, U("close"), K_GHOST, QString(), 0);
    p.setPen(QPen(MUTED, S(6), Qt::SolidLine, Qt::RoundCap));
    QPoint c = r.center();
    int d = S(18);
    p.drawLine(c.x() - d, c.y() - d, c.x() + d, c.y() + d);
    p.drawLine(c.x() - d, c.y() + d, c.x() + d, c.y() - d);
}

void PanelWidget::paintEvent(QPaintEvent *) {
    QPainter p(this);
    p.setRenderHint(QPainter::Antialiasing, true);
    p.setRenderHint(QPainter::TextAntialiasing, true);
    p.fillRect(rect(), BG);
    hits_.clear();
    vw_ = width() * 1080.0 / (height() > 0 ? height() : 1);
    switch (app_->view()) {
    case App::NO_BRIDGE: paintNoBridge(p); break;
    case App::PICK:
    case App::LINKING: paintPick(p); break;
    case App::TRAIN: paintTrain(p); break;
    }
    paintClose(p);
    QString n = app_->note();
    if (!n.isEmpty() && app_->view() != App::NO_BRIDGE) {
        p.setFont(uiFont(S(28), true));
        p.setPen(app_->noteWarn() ? AMBER : GO_TEXT);
        p.drawText(R(32, 128, vw_ - 64, 52), Qt::AlignLeft | Qt::AlignVCenter, n);
    }
    if (sheet_) paintSheet(p);
    if (confirm_) paintConfirm(p);
}

void PanelWidget::paintNoBridge(QPainter &p) {
    double cx = vw_ / 2;
    // The XIAO in a USB port, drawn: port, plug, the little board with its LED.
    p.setPen(QPen(STROKE, S(4)));
    p.setBrush(CARD);
    p.drawRoundedRect(R(cx - 260, 250, 200, 150), S(16), S(16));   // the unit's USB port
    p.setBrush(SURFACE);
    p.drawRect(R(cx - 220, 300, 120, 50));
    p.setPen(QPen(ACCENT, S(6), Qt::DashLine, Qt::RoundCap));
    p.drawLine(QPoint(S(cx - 50), S(325)), QPoint(S(cx + 40), S(325)));
    p.setPen(QPen(ACCENT, S(4)));
    p.setBrush(ELEVATED);
    p.drawRoundedRect(R(cx + 60, 270, 200, 110), S(14), S(14));
    p.setBrush(SURFACE);
    p.drawRect(R(cx + 40, 305, 40, 40));
    p.setPen(Qt::NoPen);
    p.setBrush(GO);
    p.drawEllipse(R(cx + 220, 290, 18, 18));
    p.setPen(MUTED);
    p.setFont(uiFont(S(24), true));
    p.drawText(R(cx + 80, 330, 160, 40), Qt::AlignCenter, U("XIAO"));
    p.setPen(TEXT);
    p.setFont(uiFont(S(56), true));
    p.drawText(R(0, 470, vw_, 80), Qt::AlignCenter, U("Включи XEMS моста в USB"));
    p.setPen(MUTED);
    p.setFont(uiFont(S(30)));
    p.drawText(R(0, 560, vw_, 50), Qt::AlignCenter, U("малката платка XIAO — щом я видя, ще потърся костюмите"));
    p.setPen(HINT);
    p.setFont(uiFont(S(24)));
    int dots = (app_->now() / 400) % 4;
    p.drawText(R(0, 640, vw_, 40), Qt::AlignCenter, U("Търся") + QString(dots, QLatin1Char('.')));
}

void PanelWidget::paintPick(QPainter &p) {
    p.setPen(TEXT);
    p.setFont(uiFont(S(56), true));
    p.drawText(R(40, 24, vw_ - 300, 96), Qt::AlignLeft | Qt::AlignVCenter, U("Избери костюм"));
    const std::vector<Seen> &s = app_->seen();
    std::vector<int> order;
    for (size_t i = 0; i < s.size(); i++) order.push_back((int)i);
    for (size_t i = 0; i < order.size(); i++)   // strongest signal first
        for (size_t j = i + 1; j < order.size(); j++)
            if (s[order[j]].rssi > s[order[i]].rssi) { int t = order[i]; order[i] = order[j]; order[j] = t; }
    if (order.empty()) {
        p.setPen(MUTED);
        p.setFont(uiFont(S(40), true));
        p.drawText(R(0, 400, vw_, 70), Qt::AlignCenter, U("Включи костюма — ще се появи тук"));
        p.setPen(HINT);
        p.setFont(uiFont(S(28)));
        int dots = (app_->now() / 400) % 4;
        p.drawText(R(0, 480, vw_, 50), Qt::AlignCenter, U("Търся наблизо") + QString(dots, QLatin1Char('.')));
        return;
    }
    double cw = 440, ch = 300, gap = 28, x0 = 40, y0 = 230;
    int perRow = (int)((vw_ - 80 + gap) / (cw + gap));
    if (perRow < 1) perRow = 1;
    for (size_t n = 0; n < order.size() && n < (size_t)perRow * 2; n++) {
        const Seen &d = s[order[n]];
        bool linking = d.mac == app_->linkingMac();
        QRect r = R(x0 + (n % perRow) * (cw + gap), y0 + (n / perRow) * (ch + gap), cw, ch);
        QString id = U("suit:") + QString::fromStdString(d.mac);
        bool down = pressed_ == id;
        p.setPen(QPen(linking ? ACCENT : STROKE, S(linking ? 4 : 2)));
        p.setBrush(down ? mix(CARD, Qt::black, 0.25) : CARD);
        p.drawRoundedRect(r, S(26), S(26));
        bool bt = d.kind == Suit::BODYTECH;
        QRect badge(r.left() + S(28), r.top() + S(28), S(bt ? 180 : 130), S(50));
        p.setPen(Qt::NoPen);
        p.setBrush(mix(CARD, bt ? AMBER : ACCENT, 0.22));
        p.drawRoundedRect(badge, S(25), S(25));
        p.setPen(bt ? AMBER : ACCENT);
        p.setFont(uiFont(S(26), true));
        p.drawText(badge, Qt::AlignCenter, bt ? U("bodytech") : U("XEMS"));
        p.setPen(TEXT);
        p.setFont(uiFont(S(40), true));
        p.drawText(QRect(r.left() + S(28), r.top() + S(100), r.width() - S(56), S(70)), Qt::AlignLeft | Qt::AlignVCenter,
                   QString::fromStdString(d.name));
        signalBars(p, QRect(r.left() + S(28), r.bottom() - S(76), S(60), S(44)), d.rssi);
        p.setFont(uiFont(S(30), true));
        p.setPen(linking ? ACCENT : MUTED);
        int dots = (app_->now() / 400) % 4;
        p.drawText(QRect(r.left(), r.bottom() - S(84), r.width() - S(28), S(60)), Qt::AlignRight | Qt::AlignVCenter,
                   linking ? U("Свързвам") + QString(dots, QLatin1Char('.')) : U("Свържи  ›"));
        if (app_->linkingMac().empty()) hit(r, id);
    }
}

void PanelWidget::paintTrain(QPainter &p) {
    Suit *s = app_->suit();
    unsigned now = app_->now();
    const Program &pr = s->program();
    bool idle = s->state() == Suit::IDLE, running = s->state() == Suit::RUNNING;
    bool bt = s->kind() == Suit::BODYTECH;

    // ---- top bar: the suit, the program, ✕ ----
    QRect chip = R(32, 24, 600, 96);
    button(p, chip, U("suit"), K_CHIP, QString(), 0);
    QRect badge(chip.left() + S(20), chip.top() + S(23), S(bt ? 160 : 112), S(50));
    p.setPen(Qt::NoPen);
    p.setBrush(mix(SURFACE, bt ? AMBER : ACCENT, 0.25));
    p.drawRoundedRect(badge, S(25), S(25));
    p.setPen(bt ? AMBER : ACCENT);
    p.setFont(uiFont(S(24), true));
    p.drawText(badge, Qt::AlignCenter, bt ? U("bodytech") : U("XEMS"));
    p.setPen(TEXT);
    p.setFont(uiFont(S(32), true));
    QRect nameR(badge.right() + S(18), chip.top(), chip.right() - S(170) - badge.right() - S(18), chip.height());
    p.drawText(nameR, Qt::AlignLeft | Qt::AlignVCenter,
               p.fontMetrics().elidedText(QString::fromStdString(app_->suitName()), Qt::ElideRight, nameR.width()));
    battery(p, QRect(chip.right() - S(150), chip.top() + S(32), S(56), S(32)), s->battery());
    p.setPen(MUTED);
    p.setFont(uiFont(S(26), true));
    p.drawText(QRect(chip.right() - S(88), chip.top(), S(76), chip.height()), Qt::AlignLeft | Qt::AlignVCenter,
               s->battery() < 0 ? U("—") : QString::number(s->battery()) + U("%"));

    double x = 660;
    QString chips[4] = {QString::number(pr.hz) + U(" Hz"), QString::number(pr.us) + U(" µs"),
                        QString::number(pr.onS) + U(" s  ▸  ") + QString::number(pr.offS) + U(" s"),
                        QString::number(pr.totalS / 60) + U(" мин")};
    double cw[4] = {190, 200, 270, 190};
    for (int i = 0; i < 4; i++) {
        button(p, R(x, 24, cw[i], 96), U("prog"), running ? K_GHOST : K_CHIP, chips[i], 32);
        x += cw[i] + 14;
    }

    // ---- left: the clock ring (phase progress), time left, phase ----
    QRect ring = R(70, 205, 440, 440);
    p.setBrush(Qt::NoBrush);
    p.setPen(QPen(SURFACE, S(26), Qt::SolidLine, Qt::FlatCap));
    p.drawEllipse(ring);
    QColor phaseC = HINT;
    QString phase = U("ГОТОВ");
    double frac = 0;
    if (running) {
        int len = (s->impulse() ? pr.onS : pr.offS) * 1000;
        frac = len > 0 ? 1.0 - (double)s->phaseMsLeft(now) / len : 0;
        phaseC = s->impulse() ? GO : ACCENT;
        phase = s->impulse() ? U("ИМПУЛС") : U("ПАУЗА");
    } else if (s->startPending() || (idle && s->preparing())) {
        phaseC = AMBER;
        phase = U("ПОДГОТОВКА") + QString((now / 400) % 4, QLatin1Char('.'));
        frac = 0;
    } else if (!idle) {
        phaseC = AMBER;
        phase = U("НА ПАУЗА");
        frac = 1;
    }
    if (frac > 0) {
        p.setPen(QPen(phaseC, S(26), Qt::SolidLine, Qt::RoundCap));
        p.drawArc(ring, 90 * 16, -(int)(frac * 360 * 16));
    }
    p.setPen(TEXT);
    p.setFont(uiFont(S(112), true));
    p.drawText(QRect(ring.left(), ring.top() + S(110), ring.width(), S(150)), Qt::AlignCenter, mmss(s->secondsLeft(now)));
    p.setPen(phaseC == HINT ? MUTED : phaseC);
    p.setFont(uiFont(S(34), true));
    p.drawText(QRect(ring.left(), ring.top() + S(265), ring.width(), S(60)), Qt::AlignCenter, phase);
    if (!idle) {
        QRect st = R(560, 545, 170, 100);
        button(p, st, U("stop"), K_GHOST, QString(), 0);
        stopIcon(p, QRect(st.left() + S(30), st.center().y() - S(18), S(36), S(36)), MUTED);
        p.setPen(MUTED);
        p.setFont(uiFont(S(30), true));
        p.drawText(QRect(st.left() + S(74), st.top(), S(90), st.height()), Qt::AlignLeft | Qt::AlignVCenter, U("Стоп"));
    }

    // ---- right: the strength, biggest thing on the screen ----
    double bx = 800, bw = vw_ - 32 - bx;
    p.setPen(MUTED);
    p.setFont(uiFont(S(32), true));
    p.drawText(R(bx, 200, bw, 50), Qt::AlignCenter, U("Сила"));
    QRect minus = R(bx + 20, 280, 230, 230), plus = R(bx + bw - 250, 280, 230, 230);
    button(p, minus, U("str-"), K_CHIP, QString(), 0);
    button(p, plus, U("str+"), K_CHIP, QString(), 0);
    p.setPen(QPen(TEXT, S(14), Qt::SolidLine, Qt::RoundCap));
    p.drawLine(minus.center().x() - S(50), minus.center().y(), minus.center().x() + S(50), minus.center().y());
    p.drawLine(plus.center().x() - S(50), plus.center().y(), plus.center().x() + S(50), plus.center().y());
    p.drawLine(plus.center().x(), plus.center().y() - S(50), plus.center().x(), plus.center().y() + S(50));
    p.setPen(s->impulse() ? GO_TEXT : TEXT);
    p.setFont(uiFont(S(200), true));
    p.drawText(R(bx + 260, 255, bw - 520, 280), Qt::AlignCenter, QString::number(s->strength()));
    QRect meter = R(bx + 270, 545, bw - 540, 18);
    p.setPen(Qt::NoPen);
    p.setBrush(SURFACE);
    p.drawRoundedRect(meter, meter.height() / 2, meter.height() / 2);
    p.setBrush(s->impulse() ? GO : ACCENT);
    QRect fill = meter;
    fill.setWidth(meter.width() * s->strength() / 100);
    if (fill.width() > 0) p.drawRoundedRect(fill, meter.height() / 2, meter.height() / 2);

    // ---- bottom: the channels (tap / drag a bar) ----
    int n = s->channels();
    double sx = 32, sw = vw_ - 32 - 400 - sx, gap = 12;
    double colW = (sw - gap * (n - 1)) / n;
    for (int i = 0; i < n; i++) {
        QRect col = R(sx + i * (colW + gap), 690, colW, 350);
        p.setPen(Qt::NoPen);
        p.setBrush(CARD);
        p.drawRoundedRect(col, S(20), S(20));
        QRect bar(col.left() + S(14), col.top() + S(70), col.width() - S(28), col.height() - S(130));
        p.setBrush(SURFACE);
        p.drawRoundedRect(bar, S(14), S(14));
        int pct = s->channel(i);
        QRect f = bar;
        f.setTop(bar.bottom() - bar.height() * pct / 100);
        QColor c = pct == 0 ? HINT : (s->impulse() ? GO : ACCENT);
        p.setBrush(mix(SURFACE, c, pressed_ == U("ch:%1").arg(i) ? 1.0 : 0.75));
        if (pct > 0) p.drawRoundedRect(f, S(14), S(14));
        p.setPen(pct == 0 ? HINT : TEXT);
        p.setFont(uiFont(S(34), true));
        p.drawText(QRect(col.left(), col.top() + S(10), col.width(), S(56)), Qt::AlignCenter, QString::number(pct));
        p.setPen(MUTED);
        p.setFont(uiFont(S(colW < 150 ? 20 : 23), true));
        p.drawText(QRect(col.left() + S(4), col.bottom() - S(58), col.width() - S(8), S(52)),
                   Qt::AlignCenter | Qt::TextWordWrap, QString::fromUtf8(Suit::channelName(s->kind(), i)));
        hit(col, U("ch:%1").arg(i));
    }

    // ---- primary action, bottom right ----
    QRect go = R(vw_ - 32 - 370, 690, 370, 350);
    bool pending = s->startPending();
    if (pending) {   // waiting for the suit's program: a tap cancels
        button(p, go, U("go"), K_GHOST, QString(), 0);
        p.setPen(AMBER);
        p.setFont(uiFont(S(44), true));
        p.drawText(QRect(go.left(), go.top() + S(80), go.width(), S(100)), Qt::AlignCenter, U("Миг") + QString((now / 400) % 4, QLatin1Char('.')));
        p.setPen(MUTED);
        p.setFont(uiFont(S(28)));
        p.drawText(QRect(go.left(), go.top() + S(200), go.width(), S(90)), Qt::AlignCenter | Qt::TextWordWrap,
                   U("костюмът се програмира,\nтръгва сам"));
        return;
    }
    int kind = running ? K_AMBER : K_GO;
    button(p, go, U("go"), kind, QString(), 0);
    QColor ic = running ? QColor(0x24, 0x18, 0x00) : QColor(0x04, 0x1A, 0x0C);
    QRect icon(go.center().x() - S(55), go.top() + S(70), S(110), S(120));
    if (running) pauseIcon(p, icon, ic);
    else playIcon(p, icon, ic);
    p.setPen(ic);
    p.setFont(uiFont(S(44), true));
    p.drawText(QRect(go.left(), go.top() + S(220), go.width(), S(80)), Qt::AlignCenter,
               running ? U("Пауза") : idle ? U("Старт") : U("Продължи"));
}

void PanelWidget::stepper(QPainter &p, double y, const QString &label, const QString &value, const QString &field,
                          bool enabled) {
    double cx = vw_ / 2 - 600;
    p.setPen(TEXT);
    p.setFont(uiFont(S(36), true));
    p.drawText(R(cx + 60, y, 520, 96), Qt::AlignLeft | Qt::AlignVCenter, label);
    double vx = cx + 640;
    button(p, R(vx, y, 120, 96), enabled ? U("st:") + field + U(":-") : QString(), K_CHIP, U("−"), 54);
    p.setPen(TEXT);
    p.setFont(uiFont(S(46), true));
    p.drawText(R(vx + 130, y, 260, 96), Qt::AlignCenter, value);
    button(p, R(vx + 400, y, 120, 96), enabled ? U("st:") + field + U(":+") : QString(), K_CHIP, U("+"), 54);
}

void PanelWidget::paintSheet(QPainter &p) {
    p.fillRect(rect(), QColor(0, 0, 0, 170));
    hits_.clear();   // only the sheet answers
    double cx = vw_ / 2 - 600;
    p.setPen(QPen(STROKE, S(2)));
    p.setBrush(CARD);
    p.drawRoundedRect(R(cx, 60, 1200, 960), S(30), S(30));
    p.setPen(TEXT);
    p.setFont(uiFont(S(48), true));
    p.drawText(R(cx + 60, 90, 800, 80), Qt::AlignLeft | Qt::AlignVCenter, U("Програма"));
    const Program &q = sheetProg_;
    stepper(p, 200, U("Честота"), QString::number(q.hz) + U(" Hz"), U("hz"), true);
    stepper(p, 312, U("Дълбочина"), QString::number(q.us) + U(" µs"), U("us"), true);
    stepper(p, 424, U("Импулс"), QString::number(q.onS) + U(" s"), U("on"), true);
    stepper(p, 536, U("Пауза"), QString::number(q.offS) + U(" s"), U("off"), true);
    stepper(p, 648, U("Време"), QString::number(q.totalS / 60) + U(" мин"), U("total"), true);
    p.setPen(TEXT);
    p.setFont(uiFont(S(36), true));
    p.drawText(R(cx + 60, 768, 520, 96), Qt::AlignLeft | Qt::AlignVCenter, U("Клиент над 60"));
    button(p, R(cx + 640, 768, 520, 96), U("age60"), sheetAge60_ ? K_ON : K_CHIP,
           sheetAge60_ ? U("✓ Да · до 85 Hz") : U("Не"), 34);
    button(p, R(cx + 60, 900, 300, 96), U("sheet-cancel"), K_GHOST, U("Откажи"), 34);
    button(p, R(cx + 1200 - 60 - 420, 900, 420, 96), U("sheet-ok"), K_GO, U("✓ Готово"), 38);
}

void PanelWidget::paintConfirm(QPainter &p) {
    p.fillRect(rect(), QColor(0, 0, 0, 170));
    hits_.clear();
    double cx = vw_ / 2 - 520;
    p.setPen(QPen(STROKE, S(2)));
    p.setBrush(CARD);
    p.drawRoundedRect(R(cx, 300, 1040, 420), S(30), S(30));
    p.setPen(TEXT);
    p.setFont(uiFont(S(42), true));
    p.drawText(R(cx + 60, 350, 920, 90), Qt::AlignLeft | Qt::AlignVCenter, U("Прекъсни връзката с костюма?"));
    p.setPen(MUTED);
    p.setFont(uiFont(S(30)));
    p.drawText(R(cx + 60, 440, 920, 70), Qt::AlignLeft | Qt::AlignVCenter,
               U("Изходите се изключват. Ще можеш да избереш друг костюм."));
    button(p, R(cx + 60, 580, 360, 96), U("confirm-no"), K_GHOST, U("Остави"), 34);
    button(p, R(cx + 1040 - 60 - 380, 580, 380, 96), U("confirm-yes"), K_DANGER, U("Прекъсни"), 36);
}

static void stepField(Program &q, const QString &f, int d, bool age60) {
    if (f == QLatin1String("hz")) q.hz = qBound(1, q.hz + d, age60 ? 85 : 120);
    else if (f == QLatin1String("us")) q.us = qBound(50, q.us + d * 10, q.hz >= 100 ? 300 : 400);
    else if (f == QLatin1String("on")) q.onS = qBound(1, q.onS + d, 10);
    else if (f == QLatin1String("off")) q.offS = qBound(1, q.offS + d, 30);
    else if (f == QLatin1String("total")) q.totalS = qBound(60, q.totalS + d * 60, 3600);
}

void PanelWidget::act(const QString &id, bool repeat) {
    Suit *s = app_->suit();
    if (id == QLatin1String("str+")) { app_->strengthStep(1); return; }
    if (id == QLatin1String("str-")) { app_->strengthStep(-1); return; }
    if (id.startsWith(QLatin1String("st:"))) {
        QStringList parts = id.split(QLatin1Char(':'));
        stepField(sheetProg_, parts[1], parts[2] == QLatin1String("+") ? 1 : -1, sheetAge60_);
        return;
    }
    if (repeat) return;
    if (id == QLatin1String("close")) { app_->hidePanel(); return; }
    if (id.startsWith(QLatin1String("suit:"))) { app_->connectTo(id.mid(5).toStdString()); return; }
    if (id == QLatin1String("go")) { app_->startPause(); return; }
    if (id == QLatin1String("stop")) { app_->stopRun(); return; }
    if (id == QLatin1String("prog") && s) {
        if (s->state() == Suit::RUNNING) return;   // the chips look disabled while running
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

void PanelWidget::drag(const QPoint &pt) {
    if (!pressed_.startsWith(QLatin1String("ch:")) || !app_->suit()) return;
    int i = pressed_.mid(3).toInt();
    for (size_t k = 0; k < hits_.size(); k++) {
        if (hits_[k].id != pressed_) continue;
        QRect col = hits_[k].r;
        QRect bar(col.left(), col.top() + S(70), col.width(), col.height() - S(130));
        int pct = (int)(100.0 * (bar.bottom() - pt.y()) / (bar.height() > 0 ? bar.height() : 1) + 0.5);
        pct = qBound(0, (pct + 2) / 5 * 5, 100);   // steps of 5 under a finger
        app_->setChannel(i, pct);
        break;
    }
    update();
}

void PanelWidget::mousePressEvent(QMouseEvent *e) {
    pressed_ = idAt(e->pos());
    pressPos_ = e->pos();
    pressMs_ = repeatMs_ = app_->now();
    if (pressed_.startsWith(QLatin1String("ch:"))) drag(e->pos());
    else if (pressed_ == QLatin1String("str+") || pressed_ == QLatin1String("str-") || pressed_.startsWith(QLatin1String("st:")))
        act(pressed_, false);   // steppers answer on touch, then repeat while held
    update();
}

void PanelWidget::mouseMoveEvent(QMouseEvent *e) {
    if (pressed_.startsWith(QLatin1String("ch:"))) drag(e->pos());
}

void PanelWidget::mouseReleaseEvent(QMouseEvent *e) {
    QString id = pressed_;
    pressed_.clear();
    bool stepper = id == QLatin1String("str+") || id == QLatin1String("str-") || id.startsWith(QLatin1String("st:"));
    if (!id.isEmpty() && !stepper && !id.startsWith(QLatin1String("ch:")) && idAt(e->pos()) == id) act(id, false);
    update();
}

void PanelWidget::timerEvent(QTimerEvent *) {
    unsigned t = app_->now();
    bool stepper = pressed_ == QLatin1String("str+") || pressed_ == QLatin1String("str-") || pressed_.startsWith(QLatin1String("st:"));
    if (stepper && t - pressMs_ > 450 && t - repeatMs_ > 90) { repeatMs_ = t; act(pressed_, true); }
    if (isVisible()) update();
}

void PanelWidget::tapAt(const QPoint &p) {
    QMouseEvent d(QEvent::MouseButtonPress, p, mapToGlobal(p), Qt::LeftButton, Qt::LeftButton, Qt::NoModifier);
    QApplication::sendEvent(this, &d);
    QMouseEvent u(QEvent::MouseButtonRelease, p, mapToGlobal(p), Qt::LeftButton, Qt::NoButton, Qt::NoModifier);
    QApplication::sendEvent(this, &u);
}

// ============================================================================ TabWidget

TabWidget::TabWidget(App *app)
    : QWidget(0, Qt::FramelessWindowHint | Qt::WindowStaysOnTopHint | Qt::Tool), app_(app), dragging_(false), down_(false) {
    QRect scr = QApplication::desktop()->screenGeometry();
    double k = scr.height() / 1080.0;
    resize((int)(260 * k), (int)(84 * k));
    // Top right: the corner XBody's own buttons never use (its click log); the trainer can drag it elsewhere.
    QSettings st(QString::fromLocal8Bit(std::getenv("XEMS_CONF") ? std::getenv("XEMS_CONF") : "/opt/xems/panel.conf"),
                 QSettings::IniFormat);
    QPoint def(scr.width() - width() - (int)(24 * k), (int)(18 * k));
    QPoint pos = st.value("tab/pos", def).toPoint();
    if (!scr.contains(QRect(pos, size()))) pos = def;
    move(pos);
    // Rounded window shape: XBody stays visible in the corners (QWS honours window masks).
    QPainterPath shape;
    shape.addRoundedRect(QRectF(rect()), 20 * k, 20 * k);
    setMask(QRegion(shape.toFillPolygon().toPolygon()));
    timer_.start(250, this);
}

void TabWidget::paintEvent(QPaintEvent *) {
    QPainter p(this);
    p.setRenderHint(QPainter::Antialiasing, true);
    double k = height() / 84.0;
    Suit *s = app_->suit();
    bool running = s && s->state() == Suit::RUNNING, paused = s && s->state() == Suit::PAUSED;
    QColor edge = running ? GO : paused ? AMBER : ACCENT;
    p.fillRect(rect(), BG);
    p.setPen(QPen(edge, 3 * k));
    p.setBrush(down_ ? mix(ELEVATED, Qt::black, 0.3) : ELEVATED);
    p.drawRoundedRect(rect().adjusted((int)(2 * k), (int)(2 * k), -(int)(2 * k), -(int)(2 * k)), 20 * k, 20 * k);
    p.setPen(TEXT);
    p.setFont(uiFont((int)(30 * k), true));
    p.drawText(QRect((int)(22 * k), 0, (int)(110 * k), height()), Qt::AlignLeft | Qt::AlignVCenter, U("XEMS"));
    QRect st((int)(126 * k), 0, width() - (int)(140 * k), height());
    if (running || paused) {
        p.setPen(running ? GO_TEXT : AMBER);
        p.setFont(uiFont((int)(30 * k), true));
        p.drawText(st, Qt::AlignRight | Qt::AlignVCenter, mmss(s->secondsLeft(app_->now())));
    } else {
        QColor dot = !app_->bridgeOk() ? HINT : s ? GO : AMBER;
        p.setPen(Qt::NoPen);
        p.setBrush(dot);
        int d = (int)(18 * k);
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
    if (isVisible()) { update(); raise(); }   // stay above XBody's windows
}

void TabWidget::tapAt(const QPoint &p) {
    QMouseEvent d(QEvent::MouseButtonPress, p, mapToGlobal(p), Qt::LeftButton, Qt::LeftButton, Qt::NoModifier);
    QApplication::sendEvent(this, &d);
    QMouseEvent u(QEvent::MouseButtonRelease, p, mapToGlobal(p), Qt::LeftButton, Qt::NoButton, Qt::NoModifier);
    QApplication::sendEvent(this, &u);
}
