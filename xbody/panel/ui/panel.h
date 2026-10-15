// The screens: PanelWidget (full screen over XBody: no bridge / pick a suit / training, program sheet) and
// TabWidget (the small handle in a corner while XBody is in front). They look like XBody's own manual-training
// screen: the same 800×600 layout (body picture front/back in the middle, five zone buttons each side, START / STOP,
// the MASTER hump, the slider bar with − / +), XBody's pictures and Arial read from its binary (xbres), painted
// stand-ins when they are missing. Painted in 800×600 design units (other screens: scaled, centred). Repaints only
// when something on it changed (signature check in timerEvent). No moc: virtual event handlers only.
#pragma once
#include "../core/suit.h"
#include <QBasicTimer>
#include <QRect>
#include <QString>
#include <QWidget>
#include <vector>

class App;
class QPainter;

class PanelWidget : public QWidget {
public:
    explicit PanelWidget(App *app);
    void tapAt(const QPoint &p);   // scripted taps (emulator), screen pixels

protected:
    void paintEvent(QPaintEvent *);
    void mousePressEvent(QMouseEvent *);
    void mouseMoveEvent(QMouseEvent *);
    void mouseReleaseEvent(QMouseEvent *);
    void timerEvent(QTimerEvent *);

private:
    struct Hit { QRect r; QString id; };
    void hit(const QRect &r, const QString &id) { hits_.push_back(Hit()); hits_.back().r = r; hits_.back().id = id; }
    QString idAt(const QPoint &design) const;
    QPoint toDesign(const QPoint &screen) const;
    QRect toScreen(const QRect &design) const;
    void layout();
    QString signature(QString *clock) const;
    void act(const QString &id, bool repeat);
    void drag(const QPoint &design);
    unsigned allZones() const;
    int zonesOf(const Zone **z) const;   // the linked suit's zones for the chosen cable standard
    int selValue() const;          // what the slider shows: the strength, or the first selected zone's %
    void setSelValue(int v);

    void paintHeader(QPainter &p, const QString &title, const QString &sub, bool subWarn, bool subOk);
    void paintCable(QPainter &p);
    void paintCableInfo(QPainter &p);
    void paintPick(QPainter &p);
    void paintTrain(QPainter &p);
    void paintClock(QPainter &p);
    void paintZone(QPainter &p, const QRect &r, int zi, bool right);
    void paintSlider(QPainter &p);
    void paintSheet(QPainter &p);
    void paintWiringInfo(QPainter &p);
    void paintBubble(QPainter &p);
    void paintConfirm(QPainter &p);
    void pill(QPainter &p, const QRect &r, const QString &value, const QString &field, bool enabled = true);
    void caption(QPainter &p, int x, int y, const QString &text);
    void toast(const QString &text);
    void outlined(QPainter &p, const QRect &r, const QString &id, const QString &text, int px, bool on);
    void filled(QPainter &p, const QRect &r, const QString &id, const QString &pixmap, const QColor &bg,
                const QColor &fg, const QString &text, int px);

    App *app_;
    std::vector<Hit> hits_;        // design coordinates
    QString pressed_;
    unsigned pressMs_, repeatMs_;
    QBasicTimer timer_;
    bool sheet_, confirm_;
    Program sheetProg_;
    bool sheetAge60_;
    int sheetWiring_;
    bool info_;                    // the cable table (ⓘ) over the sheet
    bool cableInfo_;               // the XBody-cable table (ⓘ) over the cable page
    bool showCable_;               // the cable page while a bridge is plugged (else it is the home)
    unsigned bubbleUntilMs_;       // the big % over the body (XBody's showPercent) stays until then
    QString toast_;
    unsigned toastUntilMs_;
    unsigned sel_;                 // selected zones (bits); 0 = MASTER (the strength) is selected
    int selKind_;
    double k_;                     // screen pixels per design unit
    int ox_, oy_;                  // the design's origin on the screen (centred)
    QRect clockRect_;              // design rect the running clock repaints by itself
    QString sig_, clockSig_;       // what is on the screen now
};

class TabWidget : public QWidget {
public:
    explicit TabWidget(App *app);
    void tapAt(const QPoint &p);

protected:
    void paintEvent(QPaintEvent *);
    void mousePressEvent(QMouseEvent *);
    void mouseMoveEvent(QMouseEvent *);
    void mouseReleaseEvent(QMouseEvent *);
    void timerEvent(QTimerEvent *);

private:
    App *app_;
    QBasicTimer timer_;
    QPoint pressGlobal_, startPos_;
    bool dragging_, down_;
    QString sig_;
};
