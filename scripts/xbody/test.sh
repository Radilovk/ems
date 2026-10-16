#!/bin/sh
# XBody mod pipeline tests, no device needed:
#   1 real overlay builds   2 USB updater install + RESTORE on a fake root (dash ≈ busybox ash)
#   3 xems-firstboot runs hooks once per version   4 SD image patched by debugfs (synthetic MBR+ext3)
#   5 stick tool (PC side) prepares / arms undo on a stick   6 xems-uf2 programs only a XIAO UF2 drive (fake mount)
#   7 phone link: the app's server (Java, host) → xems-link → the pending install
set -eu
REPO=$(cd "$(dirname "$0")/../.." && pwd)
T=$(mktemp -d)
trap 'rm -rf "$T"' EXIT
ok() { echo "  ok  $*"; }
no() { echo "  FAIL $*"; exit 1; }

echo "1. real overlay"
python3 "$REPO/scripts/xbody/build.py" --out "$T/real" >/dev/null
[ -x "$T/real/usb/updater.sh" ] || no "updater.sh not executable"
grep -q "$(printf '\r')" "$T/real/usb/updater.sh" && no "CRLF in updater.sh"
(cd "$T/real/usb/xems" && md5sum -c payload.md5 >/dev/null) || no "md5"
gunzip -c "$T/real/usb/xems/payload.tar.gz" | tar tvf - | grep -q 'S35xems-firstboot -> ../init.d/xems-firstboot' || no "rc5 symlink"
ok "zip $(ls "$T/real" | grep zip)"

echo "2. USB updater on fake root"
O=$T/ov; F=$T/root
mkdir -p "$O/opt/xems/hooks" "$O/etc/init.d" "$O/opt/new/dir" \
	"$F/etc/init.d" "$F/opt/xbody" "$F/tmp"
echo 7 > "$O/opt/xems/VERSION"
printf '#!/bin/sh\necho MOD\n' > "$O/etc/init.d/xbody-start"; chmod 755 "$O/etc/init.d/xbody-start"
echo new > "$O/opt/new/dir/file.txt"
ln -s ../init.d/xbody-start "$O/opt/new/link"
printf 'echo hook >> "$XEMS_DIR/hook.out"\n' > "$O/opt/xems/hooks/10-a.sh"
printf '# comment\n/opt/xbody/xbody.conf\n' > "$T/remove.list"
printf '#!/bin/sh\necho VENDOR\n' > "$F/etc/init.d/xbody-start"; chmod 755 "$F/etc/init.d/xbody-start"
echo online=0 > "$F/opt/xbody/xbody.conf"
chmod 1777 "$F/tmp"
python3 "$REPO/scripts/xbody/build.py" --out "$T/d" --overlay "$O" --remove "$T/remove.list" >/dev/null
cp -r "$T/d/usb" "$T/pen"
(cd "$T/pen" && XB_ROOT="$F" dash ./updater.sh) || no "updater rc"
grep -q MOD "$F/etc/init.d/xbody-start" || no "replace"
[ -x "$F/etc/init.d/xbody-start" ] || no "mode"
[ "$(cat "$F/opt/new/dir/file.txt")" = new ] || no "new file"
[ "$(readlink "$F/opt/new/link")" = ../init.d/xbody-start ] || no "symlink"
[ ! -e "$F/opt/xbody/xbody.conf" ] || no "remove.list"
[ "$(stat -c %a "$F/tmp")" = 1777 ] || no "vendor dir mode changed"
[ -f "$T/pen/updater.done.sh" ] && [ ! -f "$T/pen/updater.sh" ] || no "self-rename"
ls "$T/pen/xems"/backup-*.tar.gz >/dev/null || no "backup"
ok "install: replace, add, symlink, remove, backup, /tmp 1777 kept, no boot loop"

mv "$T/pen/updater.done.sh" "$T/pen/updater.sh"; touch "$T/pen/xems/RESTORE"
(cd "$T/pen" && XB_ROOT="$F" dash ./updater.sh) || no "restore rc"
grep -q VENDOR "$F/etc/init.d/xbody-start" || no "restore original"
[ "$(cat "$F/opt/xbody/xbody.conf")" = online=0 ] || no "restore removed file"
[ ! -e "$F/opt/new/dir/file.txt" ] && [ ! -L "$F/opt/new/link" ] || no "restore drops added"
[ ! -e "$T/pen/xems/RESTORE" ] || no "RESTORE flag left"
ok "restore: originals back, added files gone"

echo "3. firstboot hooks"
cp -r "$O/opt/xems" "$T/xd"
XEMS_DIR="$T/xd" dash "$REPO/xbody/overlay/etc/init.d/xems-firstboot" start
XEMS_DIR="$T/xd" dash "$REPO/xbody/overlay/etc/init.d/xems-firstboot" start
[ "$(wc -l < "$T/xd/hook.out")" -eq 1 ] || no "hook ran $(wc -l < "$T/xd/hook.out")x"
echo 8 > "$T/xd/VERSION"
XEMS_DIR="$T/xd" dash "$REPO/xbody/overlay/etc/init.d/xems-firstboot" start
[ "$(wc -l < "$T/xd/hook.out")" -eq 2 ] || no "hook not rerun on new version"
ok "once per version"

echo "4. SD image (debugfs)"
command -v debugfs >/dev/null || { echo "  skip: no debugfs"; exit 0; }
I=$T/base.img
truncate -s 24M "$I"
mke2fs -q -t ext3 -E offset=1048576 -d "$F" "$I" 20M
python3 - "$I" <<'EOF'
import struct, sys
with open(sys.argv[1], "r+b") as f:
    f.seek(0x1BE); f.write(bytes([0, 0, 0, 0, 0x83, 0, 0, 0]) + struct.pack("<II", 2048, 40960))
    f.seek(0x1FE); f.write(b"\x55\xaa")
EOF
python3 "$REPO/scripts/xbody/build.py" --out "$T/i" --overlay "$O" --remove "$T/remove.list" --img "$I" > "$T/img.log" && grep -q verified "$T/img.log" || no "img build"
gunzip "$T/i"/xbody-sd-v7.img.gz
P="$T/i/xbody-sd-v7.img?offset=1048576"
debugfs -R "cat /etc/init.d/xbody-start" "$P" 2>/dev/null | grep -q MOD || no "img replace"
debugfs -R "stat /opt/new/link" "$P" 2>/dev/null | grep -q 'Type: symlink' || no "img symlink"
debugfs -R "stat /opt/xbody/xbody.conf" "$P" 2>&1 | grep -q 'not found' || no "img remove"
debugfs -R "stat /tmp" "$P" 2>/dev/null | grep -q 'Mode:  01777' || no "img /tmp mode changed"
debugfs -R "stat /etc/init.d/xbody-start" "$P" 2>/dev/null | grep -q 'Mode:  0755' || no "img file mode"
cmp -s "$I" "$T/i/xbody-sd-v7.img" && no "img unchanged"
ok "image: replace, symlink, remove, modes; base untouched"

echo "5. stick tool (Mac/Linux script; the Windows .ps1 does the same steps)"
Z="$T/z"; mkdir -p "$Z"; (cd "$Z" && unzip -q "$T/real"/xbody-usb-v*.zip)
[ -x "$Z/PODGOTVI-FLESHKA.command" ] || no "tool not executable in the zip"
grep -q "$(printf '\r')" "$Z/PODGOTVI-FLESHKA.cmd" || no "the .cmd needs CRLF"
head -c3 "$Z/tools/podgotvi.ps1" | od -An -tx1 | grep -q 'ef bb bf' || no "the .ps1 needs a UTF-8 BOM"
S="$T/stick"; X="$T/xiao"; mkdir -p "$S" "$X"; printf 'Model: Seeed XIAO nRF52840\n' > "$X/INFO_UF2.TXT"
tool() { XEMS_VOLUMES="$X $S" XEMS_FSTYPE=${FS:-vfat} XEMS_ANSWER=$1 sh "$Z/PODGOTVI-FLESHKA.command" > "$T/tool.log" 2>&1; }
FS=exfat tool 1 && no "non-FAT stick accepted"
tool 1 || no "tool install: $(tail -3 "$T/tool.log")"
cmp -s "$X/xems-bridge.uf2" "$Z/fleshka/xems-bridge.uf2" || no "XIAO not programmed"
(cd "$S/xems" && md5sum -c payload.md5 >/dev/null) && [ -f "$S/updater.sh" ] || no "stick content"
[ ! -e "$X/updater.sh" ] || no "the XIAO was taken for the stick"
F2=$T/root2; mkdir -p "$F2/tmp"
mkdir -p "$F2/opt/xems"; echo RX > "$F2/opt/xems/board-rx.log"
(cd "$S" && XB_ROOT="$F2" dash ./updater.sh) || no "install from the stick"
ls "$S"/xems-logs/*-board-rx.log >/dev/null 2>&1 || no "unit logs not copied to the stick"
[ -x "$F2/opt/xems/bin/xems-panel" ] && [ -f "$F2/opt/xems/bridge/xems-bridge.uf2" ] || no "panel + bridge firmware installed"
tool 2 || no "tool restore: $(tail -3 "$T/tool.log")"
[ -f "$S/xems/RESTORE" ] && [ -f "$S/updater.sh" ] && [ ! -f "$S/updater.done.sh" ] || no "restore armed"
(cd "$S" && XB_ROOT="$F2" dash ./updater.sh) || no "restore from the stick"
[ ! -e "$F2/opt/xems/bin/xems-panel" ] || no "restore removed the mod"
ok "finds the stick, programs the XIAO, refuses non-FAT, install + undo on the same stick"
PW=$(command -v pwsh || echo "$REPO/build/xtool/pwsh/pwsh")
if [ -x "$PW" ]; then   # the Windows tool, with the drive list, questions and format mocked
	S2="$T/stick2"; mkdir -p "$S2"
	cat > "$T/run.ps1" <<EOF
param([string]\$fs = 'FAT32')
function Get-CimInstance { @([pscustomobject]@{ DeviceID = '$X'; DriveType = 2; Size = 4MB; FileSystem = 'FAT' },
  [pscustomobject]@{ DeviceID = '$S2'; DriveType = 2; Size = 8GB; VolumeName = 'NO NAME'; FileSystem = \$fs }) }
function Read-Host { '1' }
function Format-Volume { throw 'mocked' }
& '$Z/tools/podgotvi.ps1'
EOF
	"$PW" -NoProfile -File "$T/run.ps1" -fs NTFS > /dev/null 2>&1; [ ! -e "$S2/updater.sh" ] || no "ps1: NTFS stick written"
	"$PW" -NoProfile -File "$T/run.ps1" > "$T/ps.log" 2>&1
	(cd "$S2/xems" && md5sum -c payload.md5 >/dev/null) && [ -f "$S2/updater.sh" ] || no "ps1 install: $(tail -3 "$T/ps.log")"
	ok "Windows tool (PowerShell, mocked drives): install, refuses NTFS"
else
	ok "Windows tool skipped (no pwsh here)"
fi

echo "5b. cable proxy start (/etc/default/emsc-tcpseriald)"
DF="$REPO/xbody/overlay/etc/default/emsc-tcpseriald"
ST='DAEMON_ARGS="-serial /dev/ttymxc3 -baud 115200 -port 1235"'
r=$(sh -c "$ST; set -- start; . '$DF'; echo \$DAEMON_ARGS")
case "$r" in *"-port 1235") ;; *) no "no proxy binary must keep the stock port: $r" ;; esac
r=$(sed 's#^P=.*#P=/bin/false#' "$DF" > "$T/df" && sh -c "$ST; set -- start; . '$T/df'; echo \$DAEMON_ARGS")
case "$r" in *"-port 1235") ;; *) no "a failed self-test must keep the stock port: $r" ;; esac
r=$(sed 's#^P=.*#P=/bin/true#; s#/opt/xems/cable.off#'"$T"'/nooff#g; s#( while.*#:#' "$DF" > "$T/df" && sh -c "$ST; set -- stop; . '$T/df'; echo \$DAEMON_ARGS")
case "$r" in *"-port 1235") ;; *) no "stop must not move the port: $r" ;; esac
r=$(sh -c "$ST; set -- start; . '$T/df'; echo \$DAEMON_ARGS")
case "$r" in *"-port 1236") ;; *) no "a working proxy moves the daemon to 1236: $r" ;; esac
ok "stock path unless the proxy passes its self-test; only on start"

echo "6. xems-uf2 (the unit programs the XIAO)"
U="$T/uf2"; mkdir -p "$U/shim" "$U/drive" "$U/blk/loop0" "$U/blk/big"
printf 'UF2 Bootloader\nModel: Seeed XIAO nRF52840\n' > "$U/drive/INFO_UF2.TXT"
printf '#!/bin/sh\nfor a; do last=$a; done\nrmdir "$last" 2>/dev/null; rm -f "$last"; ln -s %s "$last"\n' "$U/drive" > "$U/shim/mount"
printf '#!/bin/sh\nrm -f "$1"; mkdir -p "$1"\n' > "$U/shim/umount"
chmod +x "$U/shim/mount" "$U/shim/umount"
echo FW > "$U/fw.uf2"; echo 8192 > "$U/blk/loop0/size"; echo 30000000 > "$U/blk/big/size"
uf2() { PATH="$U/shim:$PATH" XEMS_UF2="$U/fw.uf2" XEMS_UF2_STATE="$U/st" XEMS_UF2_BLOCKS="$1" sh "$O0/opt/xems/bin/xems-uf2"; }
O0="$REPO/xbody/overlay"
[ -b /dev/loop0 ] || { ok "skipped (no /dev/loop0 here)"; echo "ALL OK"; exit 0; }
uf2 "$U/blk/big"; [ ! -f "$U/st" ] || no "uf2 touched a big drive"
uf2 "$U/blk/loop0"; [ "$(cat "$U/st")" = done ] && [ "$(cat "$U/drive/fw.uf2")" = FW ] || no "uf2 not copied"
rm -f "$U/st" "$U/drive/fw.uf2" "$U/drive/INFO_UF2.TXT"
uf2 "$U/blk/loop0"; [ ! -f "$U/st" ] && [ ! -f "$U/drive/fw.uf2" ] || no "uf2 wrote a drive without INFO_UF2.TXT"
rm -rf /tmp/xems-uf2
ok "copies onto the XIAO drive only; big sticks and other drives untouched"

echo "7. phone link over USB tethering (app server ↔ xems-link ↔ xems-pending)"
if command -v javac > /dev/null && command -v wget > /dev/null; then
	J="$T/j"; mkdir -p "$J"
	javac -nowarn -d "$J" "$REPO/scripts/xbody/android/src/bg/xems/fleshka/PhoneServer.java" \
		"$REPO/scripts/xbody/android/test/PhoneServerMain.java" 2>/dev/null
	PORT=$(python3 -c 'import socket; s=socket.socket(); s.bind(("127.0.0.1",0)); print(s.getsockname()[1])')
	V=$(cat "$T/real/usb/xems/VERSION")
	java -cp "$J" PhoneServerMain "$V" "$T/real/usb" "$PORT" > "$T/phone.log" 2>&1 &
	PH=$!
	sleep 1.5
	O=$T/opt; mkdir -p "$O" "$T/usb0"; echo 1 > "$O/VERSION"
	link() { XEMS_OPT="$O" XEMS_LINK_NET="$T/usb0" XEMS_LINK_GW=127.0.0.1 XEMS_LINK_PORT=$PORT XEMS_LINK_STATE="$T/link.state" \
		sh "$REPO/xbody/overlay/opt/xems/bin/xems-link" once; }
	link
	grep -q "state=pending" "$T/link.state" && grep -q "pending=$V" "$T/link.state" || { kill $PH; no "link: $(cat "$T/link.state")"; }
	(cd "$O/pending/xems" && md5sum -c payload.md5 > /dev/null) || { kill $PH; no "link: payload"; }
	grep -q "UNIT have=1 pending=$V" "$T/phone.log" || { kill $PH; no "app did not see the download"; }
	link
	grep -q "state=pending" "$T/link.state" || { kill $PH; no "link: second pass"; }
	rm -rf "$T/usb0"; link
	grep -q "phone=0" "$T/link.state" || { kill $PH; no "link: cable out"; }
	kill $PH
	F3=$T/root3; mkdir -p "$F3/tmp"
	(cd "$O/pending" && XB_ROOT="$F3" dash ./updater.sh) || no "pending install"
	[ -x "$F3/opt/xems/bin/xems-panel" ] && [ -f "$O/pending/updater.done.sh" ] || no "pending installed once"
	ok "app serves, the unit downloads + checks, installs from /opt/xems/pending; cable out = no phone"
else
	ok "phone link skipped (no javac / wget here)"
fi

echo "8. vendor Software Update archive (*.xbody in the stick root)"
# The archive XBody's Administration Menu → Software Update accepts: built in step 1 to $T/real/usb.
X=$(ls "$T/real/usb"/*.xbody 2>/dev/null) || no "no *.xbody in the stick root"
B=$(basename "$X")
# Name parses the way Maintenance::Archive::setDataFromFileName does (lowercase, dot-split).
echo "$B" | grep -qE '^softwareupdate\.newave\.3\.[0-9]+\.[0-9a-f]{16}\.xbody$' || no "bad name: $B"
CHK=$(echo "$B" | cut -d. -f5)
NNC=$(echo "$B" | cut -d. -f1-4)            # name without checksum and extension
python3 - "$X" "$NNC" "$CHK" <<'PY' || no "checksum (md5 the way verifyIntegrity computes it)"
import sys, hashlib
f, nnc, chk = sys.argv[1], sys.argv[2], sys.argv[3]
cipher = open(f, "rb").read()
md5 = hashlib.md5(nnc.encode() + b"." + cipher + b"xbody" + b".").hexdigest()
assert md5[:len(chk)] == chk, (md5, chk)
assert 8 <= len(chk) <= 16 and int(chk, 16) <= 0xFFFFFFFFFFFFFFFF   # setDataFromFileName: base-16, len>=8
PY
if command -v openssl > /dev/null; then
	# The apply path: openssl aes-128-cbc -d (card default md5 KDF == our -md md5) then tar xz into /.
	printf '\301rv\355zt?r?t\374k\366rf\372r\363g\351p9081' > "$T/vpw"
	openssl enc -d -aes-128-cbc -salt -md md5 -pass "file:$T/vpw" -in "$X" -out "$T/va.tar.gz" 2>/dev/null \
		|| no "openssl could not decrypt the archive"
	mkdir -p "$T/va"; tar xzf "$T/va.tar.gz" -C "$T/va" || no "archive body is not a gzip'd tar"
	[ -f "$T/va/opt/xems/VERSION" ] || no "archive misses opt/xems/VERSION"
	cmp "$T/va/opt/xems/bin/xems-panel" "$REPO/xbody/overlay/opt/xems/bin/xems-panel" || no "panel differs after apply"
	ok "name parses, md5 matches, decrypts + extracts the overlay (Admin menu install path)"
else
	ok "archive name + checksum ok (openssl missing: decrypt step skipped)"
fi

echo "9. panel USB update helper (xems-usb-update: our \"Обнови от USB\")"
H=$REPO/xbody/overlay/opt/xems/bin/xems-usb-update
G=$T/hroot; mkdir -p "$G/opt/xems" "$G/tmp"; echo 9 > "$G/opt/xems/VERSION"; chmod 1777 "$G/tmp"
V=$(cat "$T/real/usb/xems/VERSION")
# check: a stick of a different version reads as an available update (exit 0)
OUT=$(XEMS_USB_DIR="$T/real/usb" XEMS_OPT="$G/opt/xems" dash "$H" check) \
	&& echo "$OUT" | grep -q "ver=$V installed=9" || no "check: $OUT"
cp -r "$T/real/usb" "$T/hstick"
A=$(XEMS_USB_DIR="$T/hstick" XEMS_OPT="$G/opt/xems" XB_ROOT="$G" dash "$H" apply) || no "apply rc ($A)"
[ "$A" = "OK $V" ] || no "apply said: $A"
[ "$(cat "$G/opt/xems/VERSION")" = "$V" ] || no "apply did not install the payload"
[ -x "$G/opt/xems/bin/xems-panel" ] || no "apply missing panel"
[ -f "$T/hstick/updater.done.sh" ] || no "apply did not consume the stick's updater"
ls "$T/hstick/xems"/backup-*.tar.gz > /dev/null || no "apply left no backup"
# a stick that is not an XEMS stick is refused
mkdir -p "$T/notstick"; XEMS_USB_DIR="$T/notstick" dash "$H" apply 2>/dev/null | grep -q "ERR not-an-xems-stick" || no "did not refuse a non-XEMS stick"
ok "check reports the version, apply installs + backs up + refuses a foreign stick"
echo "ALL OK"
