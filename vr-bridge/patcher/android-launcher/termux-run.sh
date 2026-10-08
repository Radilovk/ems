#!/data/data/com.termux/files/usr/bin/bash
# Termux side of the XEMS VR launcher: connect to the Quest over Wi-Fi adb, then run the patcher.
#   termux-run.sh <quest-ip[:port]> <package> [tablet-ip]
# The launcher app starts it through RunCommandService (workdir = vr-bridge/patcher). Exit codes the app maps:
#   0 done · 2 bad arguments · 3 adb missing · 4 adb connect failed · 5 headset unauthorized/offline
#   anything else = xems_vr_patch.py's own code.
set -uo pipefail

PATCHER="$(cd "$(dirname "$0")/.." && pwd)"
IPV4='^([0-9]{1,3}\.){3}[0-9]{1,3}$'
PKG='^[A-Za-z][A-Za-z0-9_]*(\.[A-Za-z][A-Za-z0-9_]*)+$'

die() { echo "✗ $2" >&2; exit "$1"; }

[[ $# -ge 2 && $# -le 3 ]] || die 2 "употреба: termux-run.sh <IP на шлема[:порт]> <пакет> [IP на таблета]"
quest="$1"; pkg="$2"; tablet="${3:-}"
host="${quest%%:*}"; port="5555"
[[ "$quest" == *:* ]] && port="${quest##*:}"
[[ "$host" =~ $IPV4 ]] || die 2 "грешен IP на шлема: $host"
[[ "$port" =~ ^[0-9]{1,5}$ ]] || die 2 "грешен порт: $port"
[[ "$pkg" =~ $PKG ]] || die 2 "грешен пакет: $pkg"
[[ -z "$tablet" || "$tablet" =~ $IPV4 ]] || die 2 "грешен IP на таблета: $tablet"

command -v adb >/dev/null 2>&1 || die 3 "няма adb в Termux — pkg install android-tools"
serial="$host:$port"

echo "→ adb connect $serial"
out="$(adb connect "$serial" 2>&1)"; echo "$out"
case "$out" in
  *"connected to"*) ;;
  *) die 4 "шлемът не отговаря на $serial — същият Wi-Fi ли е и пуснат ли е adb tcpip 5555?" ;;
esac

state=""
for _ in 1 2 3 4 5 6 7 8 9 10; do
  state="$(adb -s "$serial" get-state 2>/dev/null)"
  [[ "$state" == "device" ]] && break
  sleep 1
done
[[ "$state" == "device" ]] || die 5 "шлемът е свързан, но не е разрешен — приеми „Allow USB debugging“ в шлема и опитай пак"
echo "✓ шлем: $serial"

export ANDROID_SERIAL="$serial"                # the patcher's plain `adb …` calls go to this headset
args=(xems_vr_patch.py "$pkg" --yes)           # background run: no stdin for the reinstall prompt
[[ -n "$tablet" ]] && args+=(--tablet "$tablet")
cd "$PATCHER" || die 2 "няма $PATCHER"
echo "→ python3 ${args[*]}"
exec python3 "${args[@]}"
