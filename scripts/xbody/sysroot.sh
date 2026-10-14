#!/bin/sh
# Build the cross sysroot for the XBody unit (armel soft-float, glibc 2.20 on the card):
#   build/xbody-sysroot/  = glibc 2.19 dev files (Debian jessie armel — older than the card's 2.20, so every
#                           symbol we link exists there) + the card's own libs (Qt 4.8.6 Embedded, sqlite, …)
#                           with the symlinks the 7z dump flattened restored.
# Needs build/xbody-base/rootfs (scripts/xbody/fetch-base.py) and g++-arm-linux-gnueabi.
set -eu
REPO=$(cd "$(dirname "$0")/../.." && pwd)
BASE=$REPO/build/xbody-base/rootfs
SR=$REPO/build/xbody-sysroot
DEB=http://archive.debian.org/debian/pool/main
[ -d "$BASE/usr/lib" ] || { echo "sysroot: run scripts/xbody/fetch-base.py first"; exit 1; }
rm -rf "$SR"; mkdir -p "$SR/dl" "$SR/usr/lib/xbody"

for p in g/glibc/libc6_2.19-18+deb8u10_armel.deb g/glibc/libc6-dev_2.19-18+deb8u10_armel.deb \
         l/linux/linux-libc-dev_3.16.56-1+deb8u1_armel.deb; do
	f=$SR/dl/$(basename "$p")
	curl -fsSL --retry 3 -o "$f" "$DEB/$p"
	dpkg-deb -x "$f" "$SR"
done
rm -rf "$SR/dl"
# Debian ships absolute links (/lib/ld-linux.so.3 -> /lib/arm-linux-gnueabi/ld-2.19.so): make them relative.
find "$SR" -type l -lname '/*' | while read -r l; do
	t=$(readlink "$l"); ln -sfn "$(realpath -m --relative-to="$(dirname "$l")" "$SR$t")" "$l"
done

# The card's libraries (not libc/libm/libpthread/ld: those come from jessie above, same ABI, older symbols).
for d in lib usr/lib; do
	for f in "$BASE/$d"/lib*.so*; do
		n=$(basename "$f")
		case "$n" in libc.so*|libc-*|libm.so*|libm-*|libpthread*|libdl*|librt*|ld-*) continue ;; esac
		cp -p "$f" "$SR/usr/lib/xbody/$n"
	done
done
# 0-byte = flattened symlink: point it at the longest real sibling (libQtCoreE.so.4 → libQtCoreE.so.4.8.6).
cd "$SR/usr/lib/xbody"
for f in *; do
	[ -s "$f" ] && continue
	t=$(ls -1 "$f".* 2>/dev/null | while read -r c; do [ -s "$c" ] && echo "$c"; done | awk '{print length, $0}' | sort -n | tail -n 1 | cut -d' ' -f2-)
	if [ -n "$t" ]; then rm -f "$f"; ln -s "$t" "$f"; else rm -f "$f"; fi
done
# Link names for -l (libQtGuiE.so → libQtGuiE.so.4).
for f in lib*.so.[0-9]*; do
	b=${f%%.so.*}.so
	[ -e "$b" ] || ln -s "$f" "$b"
done
echo "sysroot: $SR ($(ls | wc -l) card libs)"
