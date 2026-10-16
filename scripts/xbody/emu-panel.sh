#!/bin/sh
# Run the ARM xems-panel in qemu on the card's own Qt (fake /dev/fb0 → PNG), fake bridge, scripted taps.
#   sh scripts/xbody/emu-panel.sh OUTDIR "ms tap x y;ms slide x0 y0 x1 y1;ms shot NAME.png;…;ms quit" [client]
# Screen: the unit's 800×600 (XEMS_FB_W / XEMS_FB_H override). Taps are in screen pixels; shots land in OUTDIR. With "client" a stand-in QWS server runs first and
# the panel joins it as a client, the way it runs next to XBody on the unit.
# EMU_NO_BRIDGE=1: no fake bridge (the "plug the XIAO" view); EMU_TAB=1: start with only the corner tab;
# EMU_ENV=VAR=value: one more variable for the panel.
# Needs: fetch-base.py, sysroot.sh, qt-headers.sh, runroot.sh, build/xtool/qemu (see xbody/CLAUDE.md).
set -eu
REPO=$(cd "$(dirname "$0")/../.." && pwd)
OUT=$(mkdir -p "$1" && cd "$1" && pwd)
SCRIPT=$2
MODE=${3:-server}
Q=$REPO/build/xtool/qemu/usr/bin/qemu-arm-static
RR=$REPO/build/xbody-runroot
[ -x "$Q" ] || { echo "emu-panel: qemu missing (build/xtool/qemu, see xbody/CLAUDE.md)"; exit 1; }
sh "$REPO/scripts/xbody/xcc.sh" -shared -fPIC "$REPO/xbody/emu/fbshim.cpp" -o "$RR/usr/lib/libxemsfb.so" -ldl
sh "$REPO/scripts/xbody/xcc.sh" "$REPO"/xbody/panel/core/*.cpp "$REPO"/xbody/panel/ui/*.cpp -o "$OUT/xems-panel" -lQtGuiE -lQtCoreE
W=${XEMS_FB_W:-800}
H=${XEMS_FB_H:-600}
FB=$OUT/fb.raw
rm -f "$FB" "$OUT/panel.conf"
truncate -s $((W * H * 4)) "$FB"
FLAGS="-E XEMS_FAKE_BRIDGE=1 -E XEMS_OPEN=1"
ART="-E XEMS_ART=$REPO/xbody/overlay/opt/xems/art -E XEMS_BODY=$REPO/xbody/overlay/opt/xems/body -E XEMS_FIGS=$REPO/xbody/overlay/opt/xems/xbody-body"
[ -z "${EMU_NO_BRIDGE:-}" ] || FLAGS="-E XEMS_OPEN=1"
[ -z "${EMU_TAB:-}" ] || FLAGS="-E XEMS_FAKE_BRIDGE=1"
[ -z "${EMU_ENV:-}" ] || FLAGS="$FLAGS -E $EMU_ENV"   # one extra VAR=value, e.g. XEMS_UF2_STATE=/tmp/s
SCRIPT=$(echo "$SCRIPT" | sed "s# shot # shot $OUT/#g")
run() { QWS_KEYBOARD=none QWS_MOUSE_PROTO=none "$Q" -L "$RR" -E LD_PRELOAD=/usr/lib/libxemsfb.so -E XEMS_FB="$FB" -E XEMS_FB_W="$W" -E XEMS_FB_H="$H" "$@"; }
if [ "$MODE" = client ]; then
	# A plain QWS server in place of XBody (the panel's own binary with -qws and no script would grab the screen).
	sh "$REPO/scripts/xbody/xcc.sh" "$REPO/xbody/emu/stand_in_server.cpp" -o "$OUT/stand-in" -lQtGuiE -lQtCoreE
	run "$OUT/stand-in" -qws >/dev/null 2>&1 &
	SRV=$!
	sleep 4
	run $FLAGS $ART -E XEMS_CONF="$OUT/panel.conf" -E "XEMS_SCRIPT=$SCRIPT" "$OUT/xems-panel" 2>&1 | grep -v icui18n || true
	kill $SRV 2>/dev/null || true
else
	run $FLAGS $ART -E XEMS_CONF="$OUT/panel.conf" -E "XEMS_SCRIPT=$SCRIPT" "$OUT/xems-panel" -qws 2>&1 | grep -v icui18n || true
fi
ls "$OUT"/*.png 2>/dev/null || true
