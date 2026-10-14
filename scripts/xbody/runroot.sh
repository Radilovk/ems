#!/bin/sh
# Runtime root for qemu-arm (-L): the card's /lib, /usr/lib (Qt, fonts, plugins) with the flattened symlinks
# restored → build/xbody-runroot. Lets scripts/xbody/screen.py run ARM Qt programs on a virtual QVFb screen.
set -eu
REPO=$(cd "$(dirname "$0")/../.." && pwd)
BASE=$REPO/build/xbody-base/rootfs
RR=$REPO/build/xbody-runroot
[ -d "$BASE/usr/lib" ] || { echo "runroot: run scripts/xbody/fetch-base.py first"; exit 1; }
rm -rf "$RR"; mkdir -p "$RR/usr" "$RR/etc"
cp -a "$BASE/lib" "$RR/lib"
cp -a "$BASE/usr/lib" "$RR/usr/lib"
cp -a "$BASE/etc/ld.so.conf" "$BASE/etc/fonts" "$RR/etc/" 2>/dev/null || true
python3 "$REPO/scripts/xbody/relink.py" "$RR/lib" "$RR/usr/lib"
echo "runroot: $RR"
