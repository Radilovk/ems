#!/data/data/com.termux/files/usr/bin/bash
# Termux side of the XEMS VR launcher (workdir = vr-bridge/patcher). The app parses the machine lines.
#   termux-run.sh check                                → "ok <what>" / "missing <what>" lines
#   termux-run.sh find <tablet-ip>                     → "quest <ip> <model>" per Quest on the /24 (adb :5555)
#   termux-run.sh games <quest-ip[:port]>              → "game <package>" per third-party app on the headset
#   termux-run.sh patch <quest-ip[:port]> <pkg> [tablet-ip]   adb connect + xems_vr_patch.py --yes [--tablet]
#   termux-run.sh catalog                              → "item <id>\t<name>\t<github|page>\t<note>" (catalog.json)
#   termux-run.sh install <quest-ip[:port]> <id> [tablet-ip]   catalog game: download / find in Downloads →
#                                                      patch → install on the headset ("page <url>" + exit 7 = open it)
#   termux-run.sh downloads                            → "dl <path>\t<file>\t<ok|vrapi|?>\t<MB>" (APKs in Downloads)
#   termux-run.sh installfile <quest-ip[:port]> <apk> [tablet-ip]   any downloaded APK → patch → install
#   termux-run.sh vrcheck <quest-ip[:port]>            → "patched <pkg> shim|asset" per patched game + "log <line>"
#                                                      (the layer's logcat: shim loaded / active / paired)
#   (a first argument that is not a verb = patch, the pre-verb form)
# Exit codes the app maps: 0 done · 2 bad arguments · 3 adb missing · 4 headset not reachable / none found
#   5 headset unauthorized/offline · 6 setup incomplete · 7 download it from the page (browser) ·
#   8 Termux cannot read Downloads (termux-setup-storage) · anything else = xems_vr_patch.py's own code.
set -uo pipefail

PATCHER="$(cd "$(dirname "$0")/../.." && pwd)"
IPV4='^([0-9]{1,3}\.){3}[0-9]{1,3}$'
PKG='^[A-Za-z][A-Za-z0-9_]*(\.[A-Za-z][A-Za-z0-9_]*)+$'
# Store / shell apps that come as third-party but are never a game (Meta's own games stay: com.oculus.* can be one).
SYSTEM='^(com\.oculus\.(vrshell|store|horizon|systemux|socialplatform|tv|browser|explore)|com\.meta\.(store|horizon)|com\.facebook\.|com\.google\.|com\.android\.|android$)'

die() { echo "✗ $2" >&2; exit "$1"; }
need_adb() { command -v adb >/dev/null 2>&1 || die 3 "няма adb в Termux — pkg install android-tools"; }

# "ip[:port]" → $serial, or die 2
parse_quest() {
  local host="${1%%:*}" port="5555"
  [[ "$1" == *:* ]] && port="${1##*:}"
  [[ "$host" =~ $IPV4 ]] || die 2 "грешен IP на шлема: $host"
  [[ "$port" =~ ^[0-9]{1,5}$ ]] || die 2 "грешен порт: $port"
  serial="$host:$port"
}

# adb connect + wait for "device", or die 4/5
connect() {
  echo "→ adb connect $serial"
  local out state=""
  out="$(adb connect "$serial" 2>&1)"; echo "$out"
  case "$out" in
    *"connected to"*) ;;
    *) die 4 "шлемът не отговаря на $serial — същият Wi-Fi ли е? След рестарт на шлема го включи веднъж с кабел в таблета." ;;
  esac
  for _ in 1 2 3 4 5 6 7 8 9 10; do
    state="$(adb -s "$serial" get-state 2>/dev/null)"
    [[ "$state" == "device" ]] && break
    sleep 1
  done
  [[ "$state" == "device" ]] || die 5 "шлемът е свързан, но не е разрешен — приеми „Allow USB debugging“ в шлема и опитай пак"
  echo "✓ шлем: $serial"
}

cmd_check() {
  local bad=0 t
  for t in python3 java adb git; do
    if command -v "$t" >/dev/null 2>&1; then echo "ok $t"; else echo "missing $t"; bad=1; fi
  done
  if [[ -f "$PATCHER/xems_vr_patch.py" ]]; then echo "ok patcher"; else echo "missing patcher"; bad=1; fi
  if compgen -G "$PATCHER/../prebuilt/arm64-v8a/*.so" >/dev/null; then echo "ok layer"; else echo "missing layer"; bad=1; fi
  [[ $bad -eq 0 ]] || exit 6
}

cmd_find() {
  [[ $# -eq 1 && "$1" =~ $IPV4 ]] || die 2 "употреба: termux-run.sh find <IP на таблета>"
  need_adb
  local net="${1%.*}" i ip found=0 tmp
  tmp="$(mktemp -d)"
  echo "→ търся шлем в $net.0/24 (порт 5555)"
  for i in $(seq 1 254); do
    ip="$net.$i"
    [[ "$ip" == "$1" ]] && continue
    ( timeout 1 bash -c "exec 3<>/dev/tcp/$ip/5555" 2>/dev/null && touch "$tmp/$ip" ) &
  done
  wait
  for f in "$tmp"/*; do
    [[ -e "$f" ]] || continue
    ip="$(basename "$f")"; serial="$ip:5555"
    adb connect "$serial" >/dev/null 2>&1
    local state="" maker model
    for _ in 1 2 3; do state="$(adb -s "$serial" get-state 2>/dev/null)"; [[ -n "$state" ]] && break; sleep 1; done
    if [[ "$state" == "device" ]]; then
      maker="$(adb -s "$serial" shell getprop ro.product.manufacturer 2>/dev/null | tr -d '\r')"
      model="$(adb -s "$serial" shell getprop ro.product.model 2>/dev/null | tr -d '\r')"
      case "$maker" in
        Oculus|Meta*) echo "quest $ip ${model:-Quest}"; found=1 ;;
        *) adb disconnect "$serial" >/dev/null 2>&1 ;;      # some other Android device with adb on
      esac
    else
      echo "quest $ip ?"; found=1                           # not authorised yet: cannot ask its model
    fi
  done
  rm -rf "$tmp"
  [[ $found -eq 1 ]] || die 4 "не намерих шлем — същият Wi-Fi ли е? След рестарт на шлема го включи веднъж с кабел в таблета."
}

cmd_games() {
  [[ $# -eq 1 ]] || die 2 "употреба: termux-run.sh games <IP на шлема[:порт]>"
  parse_quest "$1"; need_adb; connect
  local p pkgs=()
  while read -r p; do
    p="${p#package:}"; p="${p%$'\r'}"
    [[ -z "$p" || "$p" =~ $SYSTEM ]] && continue
    pkgs+=("$p")
  done < <(adb -s "$serial" shell pm list packages -3 2>/dev/null | sort)
  [[ ${#pkgs[@]} -gt 0 ]] || { echo "(няма инсталирани игри от трети страни)"; return 0; }
  # Fit, in one round trip: the zip central directory (end of every APK/split) names the native libs.
  #   ok = OpenXR loader (the layer can go in) · vrapi = old VrApi/OVRPlugin (cannot) · ? = neither (not VR?)
  local probe='for p in '"${pkgs[*]}"'; do f="?"; for a in $(pm path $p | sed "s/^package://"); do
    if tail -c 4194304 "$a" 2>/dev/null | grep -q -F lib/arm64-v8a/libopenxr_loader.so; then f=ok; break; fi
    tail -c 4194304 "$a" 2>/dev/null | grep -q -F lib/arm64-v8a/libvrapi.so && f=vrapi; done; echo "$p $f"; done'
  local fit; fit="$(adb -s "$serial" shell "$probe" 2>/dev/null | tr -d '\r')"
  for p in "${pkgs[@]}"; do
    local f; f="$(awk -v p="$p" '$1==p {print $2}' <<<"$fit")"
    echo "game $p ${f:-?}"
  done
}

cmd_patch() {
  [[ $# -ge 2 && $# -le 3 ]] || die 2 "употреба: termux-run.sh patch <IP на шлема[:порт]> <пакет> [IP на таблета]"
  parse_quest "$1"
  local pkg="$2" tablet="${3:-}"
  [[ "$pkg" =~ $PKG ]] || die 2 "грешен пакет: $pkg"
  [[ -z "$tablet" || "$tablet" =~ $IPV4 ]] || die 2 "грешен IP на таблета: $tablet"
  need_adb; connect
  export ANDROID_SERIAL="$serial"              # the patcher's plain `adb …` calls go to this headset
  local args=(xems_vr_patch.py "$pkg" --yes)   # no stdin in Termux: the app asked the reinstall question
  [[ -n "$tablet" ]] && args+=(--tablet "$tablet")
  cd "$PATCHER" || die 6 "няма $PATCHER"
  echo "→ python3 ${args[*]}"
  exec python3 "${args[@]}"
}

[[ $# -ge 1 ]] || die 2 "употреба: termux-run.sh check | find <IP> | games <IP> | patch <IP> <пакет> [IP]"
verb="$1"
cmd_catalog() {
  cd "$PATCHER" || die 6 "няма $PATCHER"
  exec python3 catalog.py list
}

cmd_install() {
  [[ $# -ge 2 && $# -le 3 ]] || die 2 "употреба: termux-run.sh install <IP на шлема[:порт]> <id> [IP на таблета]"
  parse_quest "$1"
  local id="$2" tablet="${3:-}" out apk rc
  [[ "$id" =~ ^[a-z0-9_-]+$ ]] || die 2 "грешно id: $id"
  [[ -z "$tablet" || "$tablet" =~ $IPV4 ]] || die 2 "грешен IP на таблета: $tablet"
  cd "$PATCHER" || die 6 "няма $PATCHER"
  out="$(python3 catalog.py resolve "$id")"; rc=$?
  echo "$out"
  [[ $rc -eq 0 ]] || exit "$rc"                    # 7 = open the page, 8 = no Downloads access
  apk="$(sed -n 's/^apk //p' <<<"$out" | tail -1)"
  need_adb; connect
  export ANDROID_SERIAL="$serial"
  local args=(xems_vr_patch.py --install "$apk" --yes)
  [[ -n "$tablet" ]] && args+=(--tablet "$tablet")
  echo "→ python3 ${args[*]}"
  exec python3 "${args[@]}"
}

cmd_downloads() {
  cd "$PATCHER" || die 6 "няма $PATCHER"
  exec python3 catalog.py downloads
}

cmd_installfile() {
  [[ $# -ge 2 && $# -le 3 ]] || die 2 "употреба: termux-run.sh installfile <IP на шлема[:порт]> <файл.apk> [IP на таблета]"
  parse_quest "$1"
  local apk="$2" tablet="${3:-}"
  [[ -f "$apk" && "${apk,,}" == *.apk ]] || die 2 "няма такъв APK: $apk"
  [[ -z "$tablet" || "$tablet" =~ $IPV4 ]] || die 2 "грешен IP на таблета: $tablet"
  need_adb; connect
  export ANDROID_SERIAL="$serial"
  cd "$PATCHER" || die 6 "няма $PATCHER"
  local args=(xems_vr_patch.py --install "$apk" --yes)
  [[ -n "$tablet" ]] && args+=(--tablet "$tablet")
  echo "→ python3 ${args[*]}"
  exec python3 "${args[@]}"
}

cmd_vrcheck() {
  [[ $# -eq 1 ]] || die 2 "употреба: termux-run.sh vrcheck <IP на шлема[:порт]>"
  parse_quest "$1"; need_adb; connect
  # Which games carry the haptics, and how (one round trip; the zip central directory names the entries).
  local probe='for p in $(pm list packages -3 | sed "s/^package://"); do for a in $(pm path $p | sed "s/^package://"); do
    t=$(tail -c 4194304 "$a" 2>/dev/null | grep -c -F -e libopenxr_loader_orig_xems.so -e XrApiLayer_xems_haptics.json)
    if tail -c 4194304 "$a" 2>/dev/null | grep -q -F libopenxr_loader_orig_xems.so; then echo "patched $p shim"; break; fi
    [ "$t" != 0 ] && echo "patched $p asset" && break; done; done'
  local out p pid dir
  out="$(adb -s "$serial" shell "$probe" 2>/dev/null | tr -d '\r')"
  [[ -n "$out" ]] && echo "$out"
  # Per patched game: which libopenxr_loader*.so the installer unpacked (ours ≈ 280 KB) and what the game's
  # process said about loading libraries — the evidence when the layer stays silent.
  for p in $(sed -n 's/^patched \([^ ]*\) .*/\1/p' <<<"$out"); do
    dir="$(adb -s "$serial" shell pm path "$p" 2>/dev/null | head -1 | tr -d '\r' | sed 's/^package://; s|/[^/]*$||')"
    adb -s "$serial" shell "ls -l $dir/lib/arm64/ 2>&1 | grep -i -e openxr -e 'No such'" 2>/dev/null | tr -d '\r' \
      | awk -v p="$p" '{print "lib " p " " $5 " " $NF}'
    pid="$(adb -s "$serial" shell pidof "$p" 2>/dev/null | tr -d '\r')"
    if [[ -z "$pid" ]]; then echo "plog $p не е пусната"; continue; fi
    adb -s "$serial" logcat -d --pid="$pid" 2>/dev/null | tr -d '\r' \
      | grep -i -e openxr -e loader -e dlopen -e linker -e xems -e 'cannot locate' | tail -12 | sed "s/^/plog /"
  done
  adb -s "$serial" logcat -d -s XemsVrLayer 2>/dev/null | tr -d '\r' | grep -v '^-----' | tail -15 | sed 's/^/log /'
  return 0
}

# games / patch: take the newest scripts from the repo first (setup ran once, fixes land later). Offline = as is.
self_update() {
  local dir="$PATCHER/../.." branch="${XEMS_BRANCH:-main}"
  [[ -z "${XEMS_UPDATED:-}" && -d "$dir/.git" ]] || return 0
  command -v git >/dev/null 2>&1 || return 0
  timeout 25 git -C "$dir" fetch -q --depth 1 origin "$branch" 2>/dev/null || return 0
  [[ "$(git -C "$dir" rev-parse HEAD)" == "$(git -C "$dir" rev-parse FETCH_HEAD)" ]] && return 0
  git -C "$dir" checkout -q -f -B "$branch" FETCH_HEAD 2>/dev/null || return 0
  echo "→ скриптовете са обновени"
  XEMS_UPDATED=1 exec bash "$0" "$@"
}
[[ "$verb" != check && "$verb" != find ]] && self_update "$@"   # catalog/install too: new games land in main

case "$verb" in
  check) shift; cmd_check "$@" ;;
  find)  shift; cmd_find "$@" ;;
  games) shift; cmd_games "$@" ;;
  catalog) shift; cmd_catalog "$@" ;;
  install) shift; cmd_install "$@" ;;
  vrcheck) shift; cmd_vrcheck "$@" ;;
  downloads) shift; cmd_downloads "$@" ;;
  installfile) shift; cmd_installfile "$@" ;;
  patch) shift; cmd_patch "$@" ;;
  *)     cmd_patch "$@" ;;
esac
