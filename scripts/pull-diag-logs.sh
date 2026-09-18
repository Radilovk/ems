#!/usr/bin/env bash
# Pull music/crash diagnostic logs from a connected device into diag-logs/ (repo root).
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
PKG="com.isaigu.gymapp25"
DEST="${ROOT}/diag-logs"
EXT_BASE="/sdcard/Android/data/${PKG}/files/diag-logs"
EXT_BASE_ALT="/storage/emulated/0/Android/data/${PKG}/files/diag-logs"

mkdir -p "${DEST}"

if ! command -v adb >/dev/null 2>&1; then
  echo "adb not found in PATH" >&2
  exit 1
fi

if ! adb get-state >/dev/null 2>&1; then
  echo "No device connected (adb get-state failed)" >&2
  exit 1
fi

pulled=0

for base in "${EXT_BASE}" "${EXT_BASE_ALT}"; do
  if adb shell "test -d '${base}'" 2>/dev/null; then
    echo "Pulling from ${base} ..."
    adb pull "${base}/." "${DEST}/" 2>/dev/null && pulled=1 || true
  fi
done

if adb shell "run-as ${PKG} test -d files/diag-logs" 2>/dev/null; then
  echo "Pulling internal files/diag-logs via run-as ..."
  for name in music-diag.log last-crash.txt music-diag.log.old; do
    if adb exec-out run-as "${PKG}" cat "files/diag-logs/${name}" > "${DEST}/${name}" 2>/dev/null; then
      if [[ -s "${DEST}/${name}" ]]; then
        pulled=1
        echo "  -> ${name}"
      else
        rm -f "${DEST}/${name}"
      fi
    fi
  done
fi

if [[ "${pulled}" -eq 0 ]]; then
  echo "No diag logs found on device. Open the app, reproduce the crash, then retry."
  exit 1
fi

echo ""
echo "Logs saved to ${DEST}/"
ls -la "${DEST}/"
