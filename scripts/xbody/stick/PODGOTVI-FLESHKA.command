#!/bin/sh
# XEMS — prepares the USB stick for the XBody unit (Mac: double-click; Linux: sh PODGOTVI-FLESHKA.command).
# Same as PODGOTVI-FLESHKA.cmd on Windows: finds the stick, makes it FAT32 if needed (asks first, Mac only),
# copies the mod to its root, checks it, ejects it; a XIAO in UF2 mode gets the bridge firmware; backups on the
# stick are kept, "върни назад" arms the stick to undo the last install.
# Tests: XEMS_VOLUMES="dir …" (candidate mount points), XEMS_FSTYPE=vfat, XEMS_ANSWER=1|2 (no questions).
cd "$(dirname "$0")" || exit 1
SRC=$PWD/fleshka
say() { printf '%s\n' "$*"; }
bye() { [ -n "${XEMS_ANSWER:-}" ] || { printf '\nНатисни Enter за изход '; read -r _; }; exit "$1"; }
ask() { if [ -n "${XEMS_ANSWER:-}" ]; then REPLY=$XEMS_ANSWER; else printf '%s ' "$1"; read -r REPLY; fi; }

[ -f "$SRC/updater.sh" ] || { say 'Не намирам папката "fleshka" — разархивирай целия zip и пусни пак.'; bye 1; }
VER=$(cat "$SRC/xems/VERSION")
say ""
say "  XEMS за XBody — версия $VER"
say "  ------------------------------------------------------------"
say ""

volumes() {
	if [ -n "${XEMS_VOLUMES:-}" ]; then for v in $XEMS_VOLUMES; do echo "$v"; done; return; fi
	for v in /Volumes/* /media/*/* /media/* /run/media/*/*; do
		[ -d "$v" ] && [ -w "$v" ] && [ "$v" != "/Volumes/Macintosh HD" ] && echo "$v"
	done
}
fstype() {
	if [ -n "${XEMS_FSTYPE:-}" ]; then echo "$XEMS_FSTYPE"
	elif command -v diskutil > /dev/null; then diskutil info "$1" 2>/dev/null | sed -n 's/^ *Type (Bundle): *//p'
	else findmnt -no FSTYPE --target "$1" 2>/dev/null; fi
}
isfat() { case "$(fstype "$1")" in msdos|vfat|fat32|FAT32) return 0 ;; esac; return 1; }
isxiao() { grep -qiE 'nrf52840|xiao' "$1/INFO_UF2.TXT" 2>/dev/null; }
md5of() { if command -v md5sum > /dev/null; then md5sum "$1" | cut -d' ' -f1; else md5 -q "$1"; fi; }

# ---- a XIAO in UF2 mode: program the bridge ----
volumes | while read -r v; do
	if isxiao "$v"; then
		say "Намерих платката XIAO ($v) — програмирам моста..."
		cp "$SRC/xems-bridge.uf2" "$v/" 2>/dev/null; sync
		say "  OK Мостът е програмиран. Платката се рестартира сама — извади я."
		say ""
	fi
done

# ---- the stick ----
while :; do
	LIST=$(volumes | while read -r v; do isxiao "$v" || echo "$v"; done)
	[ -n "$LIST" ] && break
	ask 'Сложи USB флашката в компютъра и натисни Enter.'
	[ -n "${XEMS_ANSWER:-}" ] && bye 1
done
N=$(printf '%s\n' "$LIST" | wc -l | tr -d ' ')
if [ "$N" -eq 1 ]; then STICK=$LIST
else
	say "Има няколко диска:"
	printf '%s\n' "$LIST" | awk '{ printf "  %d  %s\n", NR, $0 }'
	ask 'Номер на флашката:'
	STICK=$(printf '%s\n' "$LIST" | sed -n "${REPLY}p")
	[ -n "$STICK" ] || { say "Няма такава."; bye 1; }
fi
say "Флашка: $STICK ($(fstype "$STICK"))"

MODE=install
if ls "$STICK"/xems/backup-*.added 2>/dev/null | grep -qv restored; then
	say ""
	say "  1  Инсталирай версия $VER  (Enter)"
	say "  2  Върни назад последната инсталация"
	ask 'Избор:'
	[ "$REPLY" = 2 ] && MODE=restore
fi

if [ $MODE = install ] && ! isfat "$STICK"; then
	if command -v diskutil > /dev/null && [ -z "${XEMS_VOLUMES:-}" ]; then
		DISK=$(diskutil info "$STICK" | sed -n 's/^ *Part of Whole: *//p')
		say "Флашката не е FAT32 — машината чете само FAT32. Ще я форматирам: ВСИЧКО на нея ще се изтрие."
		ask 'Напиши ДА за да продължа:'
		case "$REPLY" in ДА|да|Да|DA|da|Da) ;; *) say "Нищо не е променено."; bye 1 ;; esac
		diskutil eraseDisk FAT32 XEMS MBRFormat "/dev/$DISK" > /dev/null || { say "Не успях да форматирам."; bye 1; }
		STICK=/Volumes/XEMS
		say "  OK Форматирана (FAT32)."
	else
		say "Флашката не е FAT32 — машината чете само FAT32. Форматирай я като FAT32 (до 32 GB) и пусни пак."
		bye 1
	fi
fi

if [ $MODE = restore ]; then
	cp "$SRC/updater.sh" "$STICK/" && rm -f "$STICK/updater.done.sh" && : > "$STICK/xems/RESTORE" \
		|| { say "Грешка при запис на флашката."; bye 1; }
	say "  OK Флашката е готова да ВЪРНЕ последната инсталация."
else
	rm -f "$STICK/updater.done.sh" "$STICK/xems/RESTORE"
	mkdir -p "$STICK/xems"
	cp "$SRC/updater.sh" "$SRC/xems-bridge.uf2" "$SRC/README.txt" "$STICK/" &&
		cp "$SRC"/xems/* "$STICK/xems/" || { say "Грешка при копиране — опитай с друга флашка."; bye 1; }
	sync
	WANT=$(cut -d' ' -f1 "$STICK/xems/payload.md5")
	[ "$WANT" = "$(md5of "$STICK/xems/payload.tar.gz")" ] || { say "Копието не е наред — опитай с друга флашка."; bye 1; }
	say "  OK Версия $VER е на флашката и е проверена."
fi
sync
if [ -z "${XEMS_VOLUMES:-}" ]; then
	if command -v diskutil > /dev/null; then diskutil eject "$STICK" > /dev/null 2>&1
	elif command -v udisksctl > /dev/null; then
		DEV=$(findmnt -no SOURCE --target "$STICK" 2>/dev/null)
		[ -n "$DEV" ] && udisksctl unmount -b "$DEV" > /dev/null 2>&1
	fi
fi
say ""
say "  Извади флашката и я занеси на машината:"
say "   1. Изключи XBody."
say "   2. Вкарай флашката и включи."
say "   3. Изчакай — след около минута машината се изключва сама."
say "   4. Извади флашката и включи пак."
if [ $MODE = install ]; then say "   Горе вдясно на екрана на XBody се появява копче XEMS."
else say "   Машината е както преди последната инсталация."; fi
say "   Пази флашката — на нея е копието за връщане назад."
bye 0
