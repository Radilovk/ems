#!/bin/sh
# XBody mod pipeline tests, no device needed:
#   1 real overlay builds   2 USB updater install + RESTORE on a fake root (dash ≈ busybox ash)
#   3 xems-firstboot runs hooks once per version   4 SD image patched by debugfs (synthetic MBR+ext3)
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
echo "ALL OK"
