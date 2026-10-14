#!/bin/sh
# xems-panel for the XBody unit → xbody/overlay/opt/xems/bin/xems-panel (committed, like the APK).
# Checks that the binary needs nothing newer than the card has (glibc 2.20, libstdc++ 6.0.20).
# Needs: fetch-base.py, sysroot.sh, qt-headers.sh (see xbody/CLAUDE.md).
set -eu
REPO=$(cd "$(dirname "$0")/../.." && pwd)
OUT=$REPO/xbody/overlay/opt/xems/bin/xems-panel
mkdir -p "$(dirname "$OUT")" "$REPO/build/xpanel"
sh "$REPO/scripts/xbody/test-panel.sh"
sh "$REPO/scripts/xbody/xcc.sh" "$REPO"/xbody/panel/core/*.cpp "$REPO"/xbody/panel/ui/*.cpp \
	-o "$REPO/build/xpanel/xems-panel" -lQtGuiE -lQtCoreE 2>&1 | grep -v 'dynsym local symbol' || true
arm-linux-gnueabi-strip -o "$OUT" "$REPO/build/xpanel/xems-panel"
chmod 755 "$OUT"
bad=$(readelf -V "$OUT" | grep -oE '(GLIBC_2\.(2[1-9]|[3-9][0-9])|GLIBCXX_3\.4\.(2[1-9]|[3-9][0-9])|CXXABI_1\.3\.(9|1[0-9]))' | sort -u || true)
[ -z "$bad" ] || { echo "build-panel: needs symbols the card lacks: $bad"; exit 1; }
echo "build-panel: $OUT ($(wc -c < "$OUT") bytes)"
