#!/bin/sh
# Qt 4.8.6 headers matching the card's Qt Embedded (build key "arm linux g++-4 full-config", ARMv7 NEON softfp,
# qreal = float — checked: libQtGuiE exports _ZN7QWidget16setWindowOpacityEf) → build/xbody-qt/{include,src}.
# The source tarball ships the include/ forwarders; only qconfig.h (made by configure) is written here.
set -eu
REPO=$(cd "$(dirname "$0")/../.." && pwd)
OUT=$REPO/build/xbody-qt
SRC=$REPO/build/xtool/qt-everywhere-opensource-src-4.8.6
if [ ! -d "$SRC/include" ]; then
	mkdir -p "$REPO/build/xtool"
	curl -fsSL --retry 3 https://download.qt.io/archive/qt/4.8/4.8.6/qt-everywhere-opensource-src-4.8.6.tar.gz \
		| tar xzf - -C "$REPO/build/xtool" qt-everywhere-opensource-src-4.8.6/include qt-everywhere-opensource-src-4.8.6/src
fi
rm -rf "$OUT"; mkdir -p "$OUT"
cp -r "$SRC/include" "$OUT/include"
(cd "$SRC" && find src -name '*.h' | tar cf - -T -) | tar xf - -C "$OUT"
cat > "$OUT/src/corelib/global/qconfig.h" <<'EOF'
/* XEMS: qconfig for the XBody card's Qt 4.8.6 Embedded (Yocto 1.7). */
#ifndef Q_WS_QWS
#  define Q_WS_QWS
#endif
#define QT_ARCH_ARM
#define QT_EDITION QT_EDITION_OPENSOURCE
#define QT_BUILD_KEY "arm linux g++-4 full-config"
#define QT_BUILD_KEY_COMPAT "x86_64 Linux g++-4 full-config"
#define QT_POINTER_SIZE 4
#define Q_BYTE_ORDER Q_LITTLE_ENDIAN
#ifndef QT_NO_GLIB
#  define QT_NO_GLIB
#endif
EOF
echo "qt-headers: $OUT"
