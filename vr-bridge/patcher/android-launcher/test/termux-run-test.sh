#!/usr/bin/env bash
# Host test of termux-run.sh with a fake adb and python3 on PATH.
set -uo pipefail
HERE="$(cd "$(dirname "$0")" && pwd)"
RUN="$HERE/../termux-run.sh"
T="$(mktemp -d)"; trap 'rm -rf "$T"' EXIT
mkdir -p "$T/bin"
cat > "$T/bin/adb" <<'A'
#!/usr/bin/env bash
echo "adb $*" >> "$FAKE_LOG"
case "$1" in
  connect) [[ "${FAKE_CONNECT:-ok}" == ok ]] && echo "connected to $2" || echo "failed to connect to $2" ;;
  -s) [[ "$3" == get-state ]] && echo "${FAKE_STATE:-device}" ;;
esac
A
cat > "$T/bin/python3" <<'P'
#!/usr/bin/env bash
echo "python3 $* serial=$ANDROID_SERIAL cwd=$(basename "$PWD")" >> "$FAKE_LOG"
exit "${FAKE_PY_EXIT:-0}"
P
cat > "$T/bin/sleep" <<'S'
#!/usr/bin/env bash
S
chmod +x "$T/bin/"*
export FAKE_LOG="$T/log"
fails=0
check() { # name expected-exit expected-log-grep -- args...
  local name="$1" want="$2" grepfor="$3"; shift 3
  : > "$FAKE_LOG"
  PATH="$T/bin:$PATH" bash "$RUN" "$@" >/dev/null 2>&1; local got=$?
  if [[ $got -ne $want ]] || { [[ -n "$grepfor" ]] && ! grep -qF -- "$grepfor" "$FAKE_LOG"; }; then
    echo "FAIL $name: exit $got (want $want)"; sed 's/^/   /' "$FAKE_LOG"; fails=$((fails+1))
  else echo "ok   $name"; fi
}
check "default port + tablet"   0 "python3 xems_vr_patch.py com.a.game --yes --tablet 192.168.1.50 serial=192.168.1.23:5555 cwd=patcher" \
      192.168.1.23 com.a.game 192.168.1.50
check "explicit port, no tablet" 0 "python3 xems_vr_patch.py com.a.game --yes serial=10.0.0.7:5037" 10.0.0.7:5037 com.a.game
check "connect command"          0 "adb connect 192.168.1.23:5555" 192.168.1.23 com.a.game
check "bad quest ip"             2 "" 192.168.1 com.a.game
check "bad package"              2 "" 192.168.1.23 'game; rm -rf'
check "bad tablet ip"            2 "" 192.168.1.23 com.a.game nope
check "missing args"             2 "" 192.168.1.23
FAKE_CONNECT=no check "connect refused" 4 "adb connect" 192.168.1.23 com.a.game
FAKE_STATE=unauthorized check "unauthorized" 5 "" 192.168.1.23 com.a.game
FAKE_PY_EXIT=1 check "patcher exit code passes" 1 "python3" 192.168.1.23 com.a.game
[[ $fails -eq 0 ]] && echo "termux-run: all ok" || { echo "termux-run: $fails failed"; exit 1; }
