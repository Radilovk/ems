#!/bin/sh
# Cross g++ for the XBody unit: ARMv7 NEON softfp like the vendor binaries, glibc ≤ 2.19 symbols (card has 2.20),
# the card's own libstdc++ 6.0.20 / Qt 4.8.6 Embedded (qreal = float). C++98 because of the Qt 4 headers.
#   sh scripts/xbody/xcc.sh a.cpp b.cpp -o out [-lQtGuiE -lQtCoreE]
# Needs scripts/xbody/sysroot.sh + qt-headers.sh (build/xbody-sysroot, build/xbody-qt).
REPO=$(cd "$(dirname "$0")/../.." && pwd)
S=$REPO/build/xbody-sysroot
Q=$REPO/build/xbody-qt
[ -d "$S/usr/lib/xbody" ] && [ -d "$Q/include" ] || { echo "xcc: run scripts/xbody/sysroot.sh and qt-headers.sh" >&2; exit 1; }
# Ubuntu's cross gcc searches its own glibc 2.39 (/usr/arm-linux-gnueabi) before any --sysroot: spell the order
# out — gcc's C++ and builtin headers, then jessie's glibc headers; jessie's crt files (-B) and libs (-L) first.
GV=$(arm-linux-gnueabi-g++ -dumpversion)
GI=$(dirname "$(arm-linux-gnueabi-g++ -print-libgcc-file-name)")
exec arm-linux-gnueabi-g++ -std=gnu++98 -march=armv7-a -mfpu=neon -mfloat-abi=softfp -marm -O2 -Wall \
	-D_GLIBCXX_USE_CXX11_ABI=0 -DQT_SHARED -DQT_NO_DEBUG \
	--sysroot="$S" -nostdinc \
	-isystem /usr/arm-linux-gnueabi/include/c++/"$GV" -isystem /usr/arm-linux-gnueabi/include/c++/"$GV"/arm-linux-gnueabi \
	-isystem /usr/arm-linux-gnueabi/include/c++/"$GV"/backward -isystem "$GI/include" -isystem "$GI/include-fixed" \
	-isystem "$S/usr/include/arm-linux-gnueabi" -isystem "$S/usr/include" \
	-I"$Q/include" -I"$Q/include/QtCore" -I"$Q/include/QtGui" -I"$Q/include/QtNetwork" \
	-B"$S/usr/lib/arm-linux-gnueabi/" \
	-L"$S/usr/lib/xbody" -L"$S/usr/lib/arm-linux-gnueabi" -L"$S/lib/arm-linux-gnueabi" \
	-Wl,-rpath-link,"$S/usr/lib/xbody" -Wl,-rpath-link,"$S/lib/arm-linux-gnueabi" \
	-Wl,-rpath-link,"$S/usr/lib/arm-linux-gnueabi" -Wl,--hash-style=both "$@"
