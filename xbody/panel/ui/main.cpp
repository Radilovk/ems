// xems-panel — XEMS / bodytech suits on the XBody unit through the XIAO BLE bridge (docs/xbody-xems-panel.md).
// On the unit: a QWS client of the running XBody GUI (/etc/init.d/xems-panel). In the emulator: `-qws` and
//   XEMS_FAKE_BRIDGE=1  in-process bridge with two suits around
//   XEMS_OPEN=1         start with the panel open (else only the corner tab)
//   XEMS_SCRIPT="ms tap x y;ms shot file.png;ms quit"   taps in screen pixels (the unit: 800×600)
#include "app.h"
#include "panel.h"
#include <QApplication>
#include <QDesktopWidget>
#include <QObject>
#include <QPixmap>
#include <QStringList>
#include <QTextCodec>
#include <QTimerEvent>
#include <cstdlib>

class Script : public QObject {
public:
    Script(App *app, PanelWidget *panel, TabWidget *tab, const QString &spec)
        : app_(app), panel_(panel), tab_(tab), steps_(spec.split(QLatin1Char(';'), QString::SkipEmptyParts)), i_(0) {
        timer_.start(30, this);
    }

protected:
    void timerEvent(QTimerEvent *) {
        while (i_ < steps_.size()) {
            QStringList w = steps_[i_].trimmed().split(QLatin1Char(' '), QString::SkipEmptyParts);
            if (w.isEmpty() || app_->now() < (unsigned)w[0].toInt()) return;
            i_++;
            if (w.size() >= 4 && w[1] == QLatin1String("tap")) {
                QPoint g(w[2].toInt(), w[3].toInt());
                if (panel_->isVisible()) panel_->tapAt(panel_->mapFromGlobal(g));
                else if (tab_->isVisible() && tab_->geometry().contains(g)) tab_->tapAt(tab_->mapFromGlobal(g));
            } else if (w.size() >= 3 && w[1] == QLatin1String("shot")) {
                QPixmap::grabWindow(QApplication::desktop()->winId()).save(w[2], "PNG");
            } else if (w.size() >= 2 && w[1] == QLatin1String("quit")) {
                QApplication::quit();
            }
        }
    }

private:
    App *app_;
    PanelWidget *panel_;
    TabWidget *tab_;
    QStringList steps_;
    int i_;
    QBasicTimer timer_;
};

int main(int argc, char **argv) {
    QApplication a(argc, argv);
    QTextCodec::setCodecForCStrings(QTextCodec::codecForName("UTF-8"));
    QTextCodec::setCodecForTr(QTextCodec::codecForName("UTF-8"));
    App app;
    PanelWidget panel(&app);
    TabWidget tab(&app);
    app.setWidgets(&panel, &tab);
    if (std::getenv("XEMS_OPEN")) app.openPanel();
    else app.hidePanel();
    Script *script = 0;
    if (const char *s = std::getenv("XEMS_SCRIPT")) script = new Script(&app, &panel, &tab, QString::fromLocal8Bit(s));
    int rc = a.exec();
    delete script;
    return rc;
}
