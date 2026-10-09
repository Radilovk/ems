#!/usr/bin/env bash
# Host test of termux/termux-run.sh with fake adb / python3 / timeout / sleep on PATH.
set -uo pipefail
HERE="$(cd "$(dirname "$0")" && pwd)"
RUN="$HERE/../termux/termux-run.sh"
T="$(mktemp -d)"; trap 'rm -rf "$T"' EXIT
mkdir -p "$T/bin"
cat > "$T/bin/adb" <<'A'
#!/usr/bin/env bash
echo "adb $*" >> "$FAKE_LOG"
case "$1" in
  connect) [[ "${FAKE_CONNECT:-ok}" == ok ]] && echo "connected to $2" || echo "failed to connect to $2" ;;
  disconnect) ;;
  -s)
    ip="${2%%:*}"
    case "$3" in
      get-state) [[ " ${FAKE_UNAUTH:-} " == *" $ip "* ]] && echo unauthorized || echo "${FAKE_STATE:-device}" ;;
      shell)
        case "$4 $5" in
          "getprop ro.product.manufacturer") [[ " ${FAKE_QUESTS:-} " == *" $ip "* ]] && echo $'Oculus\r' || echo $'samsung\r' ;;
          "getprop ro.product.model") echo $'Quest 3\r' ;;
          *libopenxr_loader*) printf 'com.a.fight ok\r\ncom.beat.games vrapi\r\n' ;;
          "pm list") printf 'package:com.oculus.vrshell\r\npackage:com.beat.games\r\npackage:com.meta.store\r\npackage:com.a.fight\r\n' ;;
        esac ;;
    esac ;;
esac
A
cat > "$T/bin/python3" <<'P'
#!/usr/bin/env bash
echo "python3 $* serial=${ANDROID_SERIAL:-} cwd=$(basename "$PWD")" >> "$FAKE_LOG"
if [[ "$1 $2" == "catalog.py resolve" ]]; then printf '%b\n' "${FAKE_RESOLVE:-apk /dl/OpenSaber.apk}"; exit "${FAKE_RESOLVE_EXIT:-0}"; fi
exit "${FAKE_PY_EXIT:-0}"
P
cat > "$T/bin/timeout" <<'S'
#!/usr/bin/env bash
ip="$(echo "$*" | sed -n 's|.*/dev/tcp/\([0-9.]*\)/.*|\1|p')"
[[ " ${FAKE_OPEN:-} " == *" $ip "* ]]
S
printf '#!/usr/bin/env bash\n' > "$T/bin/sleep"
chmod +x "$T/bin/"*
export XEMS_UPDATED=1
export FAKE_LOG="$T/log" FAKE_OUT="$T/out"
fails=0
check() { # name expected-exit expected-text-in-log-or-stdout -- args...
  local name="$1" want="$2" grepfor="$3"; shift 3
  : > "$FAKE_LOG"
  PATH="$T/bin:$PATH" bash "$RUN" "$@" > "$FAKE_OUT" 2>&1; local got=$?
  if [[ $got -ne $want ]] || { [[ -n "$grepfor" ]] && ! cat "$FAKE_LOG" "$FAKE_OUT" | grep -qF -- "$grepfor"; }; then
    echo "FAIL $name: exit $got (want $want)"; sed 's/^/   /' "$FAKE_LOG" "$FAKE_OUT"; fails=$((fails+1))
  else echo "ok   $name"; fi
}
# patch
check "patch: default port + tablet" 0 "python3 xems_vr_patch.py com.a.game --yes --tablet 192.168.1.50 serial=192.168.1.23:5555 cwd=patcher" \
      patch 192.168.1.23 com.a.game 192.168.1.50
check "patch: legacy form, explicit port" 0 "python3 xems_vr_patch.py com.a.game --yes serial=10.0.0.7:5037" 10.0.0.7:5037 com.a.game
check "patch: bad quest ip"      2 "" patch 192.168.1 com.a.game
check "patch: bad package"       2 "" patch 192.168.1.23 'game; rm -rf'
check "patch: bad tablet ip"     2 "" patch 192.168.1.23 com.a.game nope
check "patch: missing args"      2 "" patch 192.168.1.23
check "no args"                  2 ""
FAKE_CONNECT=no check "patch: connect refused" 4 "adb connect" patch 192.168.1.23 com.a.game
FAKE_STATE=unauthorized check "patch: unauthorized" 5 "" patch 192.168.1.23 com.a.game
FAKE_PY_EXIT=1 check "patch: patcher exit code passes" 1 "python3" patch 192.168.1.23 com.a.game
# catalog / install
check "catalog: lists via catalog.py" 0 "python3 catalog.py list" catalog
check "install: download → patch with --install" 0 "python3 xems_vr_patch.py --install /dl/OpenSaber.apk --yes --tablet 192.168.1.50 serial=192.168.1.23:5555" \
      install 192.168.1.23 opensaber 192.168.1.50
FAKE_RESOLVE='page https://x.itch.io/g' FAKE_RESOLVE_EXIT=7 check "install: page game → 7 + url" 7 "page https://x.itch.io/g" install 192.168.1.23 opensaber
FAKE_RESOLVE_EXIT=8 check "install: no Downloads access → 8" 8 "" install 192.168.1.23 opensaber
check "install: bad id"             2 "" install 192.168.1.23 'Bad;id'
FAKE_CONNECT=no check "install: headset away" 4 "" install 192.168.1.23 opensaber

# games
check "games: filters system packages" 0 "game com.a.fight ok" games 192.168.1.23
out="$(PATH="$T/bin:$PATH" bash "$RUN" games 192.168.1.23 2>/dev/null | grep '^game ')"
[[ "$out" == $'game com.a.fight ok\ngame com.beat.games vrapi' ]] && echo "ok   games: exact list" || { echo "FAIL games list: $out"; fails=$((fails+1)); }
FAKE_CONNECT=no check "games: headset away" 4 "" games 192.168.1.23
# find
FAKE_OPEN="192.168.1.23 192.168.1.40" FAKE_QUESTS="192.168.1.23" check "find: Quest among other adb devices" 0 "quest 192.168.1.23 Quest 3" find 192.168.1.50
out="$(FAKE_OPEN="192.168.1.23 192.168.1.40" FAKE_QUESTS="192.168.1.23" PATH="$T/bin:$PATH" bash "$RUN" find 192.168.1.50 2>/dev/null | grep '^quest ')"
[[ "$out" == "quest 192.168.1.23 Quest 3" ]] && echo "ok   find: non-Quest skipped" || { echo "FAIL find: $out"; fails=$((fails+1)); }
FAKE_OPEN="192.168.1.77" FAKE_UNAUTH="192.168.1.77" check "find: unauthorised headset listed" 0 "quest 192.168.1.77 ?" find 192.168.1.50
FAKE_OPEN="" check "find: nothing" 4 "" find 192.168.1.50
check "find: bad ip" 2 "" find nope
# check (real python3/java/git may be missing on the host: only the shape is tested)
PATH="$T/bin:$PATH" bash "$RUN" check > "$FAKE_OUT" 2>&1; rc=$?
if grep -q '^ok adb$' "$FAKE_OUT" && grep -q '^ok patcher$' "$FAKE_OUT" && grep -q '^ok layer$' "$FAKE_OUT" && [[ $rc -eq 0 || $rc -eq 6 ]]; then
  echo "ok   check: report lines"; else echo "FAIL check (rc $rc)"; cat "$FAKE_OUT"; fails=$((fails+1)); fi
[[ $fails -eq 0 ]] && echo "termux-run: all ok" || { echo "termux-run: $fails failed"; exit 1; }
