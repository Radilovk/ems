// Emulator only: a QWS server standing in for the XBody GUI (a grey full-screen window with its title), so
// xems-panel can be tested as a client over it — the way it runs on the unit.
#include <QApplication>
#include <QLabel>
#include <QTextCodec>

int main(int argc, char **argv) {
    QApplication a(argc, argv);
    QTextCodec::setCodecForCStrings(QTextCodec::codecForName("UTF-8"));
    QLabel l("XBody (stand-in)");
    l.setAlignment(Qt::AlignCenter);
    l.setStyleSheet("background:#3a3f46; color:#c8ced6; font-size:64px;");
    l.showFullScreen();
    return a.exec();
}
