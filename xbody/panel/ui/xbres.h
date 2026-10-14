// XBody's own pictures and fonts, read at start from the vendor GUI binary (/opt/xbody/xbody: a not-stripped ELF with
// Qt rcc resources). Nothing of XBody's lives in git; if the binary or a resource is missing the panel paints the same
// style itself. Paths as in the rcc tree, e.g. "/please_use_the_Pixmap_class/BodyNormal.png", "/arial.ttf".
#pragma once
#include <QByteArray>
#include <QMap>
#include <QString>
#include <QStringList>

namespace xbres {
// Every resource whose path is in `wanted` (all if empty) → its bytes (uncompressed). Empty map: not found / not ELF.
QMap<QString, QByteArray> load(const QString &elfPath, const QStringList &wanted);
}
