// The screens: PanelWidget (full screen over XBody: no bridge / pick a suit / training, program sheet) and
// TabWidget (the small handle in a corner while XBody is in front). Painted by hand with QPainter in the XEMS dark
// palette (XemsUi), sizes from a 1920×1080 design scaled to the real height. No moc: virtual event handlers only.
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
    void tapAt(const QPoint &p);   // scripted taps (emulator)

protected:
    void paintEvent(QPaintEvent *);
    void mousePressEvent(QMouseEvent *);
    void mouseMoveEvent(QMouseEvent *);
    void mouseReleaseEvent(QMouseEvent *);
    void timerEvent(QTimerEvent *);

private:
    struct Hit { QRect r; QString id; };
    int S(double v) const;
    QRect R(double x, double y, double w, double h) const;
    void hit(const QRect &r, const QString &id) { hits_.push_back(Hit()); hits_.back().r = r; hits_.back().id = id; }
    QString idAt(const QPoint &p) const;
    void act(const QString &id, bool repeat);
    void drag(const QPoint &p);

    void paintNoBridge(QPainter &p);
    void paintPick(QPainter &p);
    void paintTrain(QPainter &p);
    void paintSheet(QPainter &p);
    void paintConfirm(QPainter &p);
    void paintClose(QPainter &p);
    void button(QPainter &p, const QRect &r, const QString &id, int kind, const QString &text, int px);
    void stepper(QPainter &p, double y, const QString &label, const QString &value, const QString &field, bool enabled);

    App *app_;
    std::vector<Hit> hits_;
    QString pressed_;
    QPoint pressPos_;
    unsigned pressMs_, repeatMs_;
    QBasicTimer timer_;
    bool sheet_, confirm_;
    Program sheetProg_;
    bool sheetAge60_;
    double vw_;   // virtual width at the 1080 design height
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
};
