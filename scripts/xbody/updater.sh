#!/bin/sh
# XEMS mod installer for the XBody unit (i.MX53, Yocto 1.7, busybox 1.22 ash).
# Run as root by the vendor /etc/init.d/xbody-updater (rc5 S30) when a USB stick
# with /updater.sh is present; cwd = stick root; the vendor script powers off after.
#
#   default : back up the files it will replace -> xems/backup-STAMP.tar.gz
#             (+ backup-STAMP.added = new files), unpack xems/payload.tar.gz over /,
#             delete paths in xems/remove.list, rename itself to updater.done.sh
#             so the next boot does not loop.
#   restore : empty file xems/RESTORE on the stick -> unpack the newest backup,
#             delete the files that install added.
# XB_ROOT overrides / (host tests only).

PEN=$(pwd)
ROOT=${XB_ROOT:-/}
X=$PEN/xems
LOG=$PEN/xems-update.log
STAMP=$(date +%Y%m%d_%H%M%S)

say() {
	echo "$*" >> "$LOG"
	[ -n "$XB_ROOT" ] || echo "$*" > /dev/tty0 2>/dev/null
}
fail() {
	say "XEMS: ERROR: $* (nothing more changed)"
	sync
	exit 1
}
done_self() {
	mv "$PEN/updater.sh" "$PEN/updater.done.sh" 2>/dev/null
	sync
}

say "=== $STAMP XEMS updater, mod $(cat "$X/VERSION" 2>/dev/null)"

if [ -e "$X/RESTORE" ]; then
	# Undo the newest install (repeat RESTORE to step further back).
	A=$(ls "$X"/backup-*.added 2>/dev/null | tail -n 1)
	[ -n "$A" ] || fail "RESTORE requested but no xems/backup-*.added"
	B=${A%.added}.tar.gz
	say "XEMS: restoring $(basename "${A%.added}")"
	while read -r p; do
		[ -n "$p" ] && rm -f "$ROOT/$p"
	done < "$A"
	if [ -f "$B" ]; then
		gunzip -c "$B" | tar xf - -C "$ROOT" || fail "restore unpack failed"
		mv "$B" "${B%.tar.gz}.restored.tar.gz"
	fi
	mv "$A" "${A%.added}.restored.added"
	rm -f "$X/RESTORE"
	say "XEMS: restore done"
	say ""
	say "   XEMS removed (previous state back)  -  the unit powers off by itself."
	say "   Then REMOVE THE STICK and switch it on again."
	done_self
	exit 0
fi

[ -f "$X/payload.tar.gz" ] || fail "missing xems/payload.tar.gz"
(cd "$X" && md5sum -c payload.md5 >> "$LOG" 2>&1) || fail "payload checksum mismatch (copy the stick again)"

# What will be touched: payload entries (minus dirs) + remove.list.
gunzip -c "$X/payload.tar.gz" | tar tf - | sed -e 's#^\./##' -e '/\/$/d' -e '/^$/d' > "$X/.touch.list" \
	|| fail "cannot list payload"
[ -f "$X/remove.list" ] && sed -e 's#^/##' -e '/^#/d' -e '/^$/d' "$X/remove.list" >> "$X/.touch.list"

: > "$X/.exist.list"
: > "$X/backup-$STAMP.added"
while read -r p; do
	if [ -e "$ROOT/$p" ] || [ -L "$ROOT/$p" ]; then
		echo "$p" >> "$X/.exist.list"
	else
		echo "$p" >> "$X/backup-$STAMP.added"
	fi
done < "$X/.touch.list"

# Overlay paths contain no spaces (build.py refuses them), so word splitting is safe.
if [ -s "$X/.exist.list" ]; then
	(cd "$ROOT" && tar cf - $(cat "$X/.exist.list")) | gzip > "$X/backup-$STAMP.tar.gz" \
		|| { rm -f "$X/backup-$STAMP.added"; fail "backup failed"; }
fi
say "XEMS: backup -> xems/backup-$STAMP.* ($(wc -l < "$X/.exist.list") replaced, $(wc -l < "$X/backup-$STAMP.added") new)"

gunzip -c "$X/payload.tar.gz" | tar xf - -C "$ROOT" || fail "unpack failed (backup is on the stick: create xems/RESTORE)"

if [ -f "$X/remove.list" ]; then
	sed -e 's#^/##' -e '/^#/d' -e '/^$/d' "$X/remove.list" | while read -r p; do
		case "$p" in ""|.|..|*/..*|../*) continue ;; esac
		rm -rf "$ROOT/$p" && say "XEMS: removed /$p"
	done
fi

rm -f "$X/.touch.list" "$X/.exist.list"
say "XEMS: installed mod $(cat "$X/VERSION" 2>/dev/null); hooks run on next boot"
say ""
say "   XEMS v$(cat "$X/VERSION" 2>/dev/null) OK  -  the unit powers off by itself."
say "   Then REMOVE THE STICK and switch it on again."
done_self
exit 0
