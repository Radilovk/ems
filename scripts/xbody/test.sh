#!/bin/sh
# XBody mod pipeline tests, no device needed:
#   1 real overlay builds   2 USB updater install + RESTORE on a fake root (dash ≈ busybox ash)
#   3 xems-firstboot runs hooks once per version   4 SD image patched by debugfs (synthetic MBR+ext3)
#   5 stick tool (PC side) prepares / arms undo on a stick   6 xems-uf2 programs only a XIAO UF2 drive (fake mount)
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
(cd "$S" && XB_ROOT="$F2" dash ./updater.sh) || no "install from the stick"
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
echo "ALL OK"
