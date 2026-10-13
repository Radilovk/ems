#!/usr/bin/env bash
# Offline test of the Bluetens module: real BluetensShell / BluetensLok / BluetensPrograms (pure Java) against a
# simulated pad, then every XEMS program re-read by the independent Python parser. No Android SDK, no pad.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
SRC="${ROOT}/branding/java/src/com/isaigu/gymapp/wearable/bluetens"
OUT="$(mktemp -d)"
trap 'rm -rf "${OUT}"' EXIT
mkdir -p "${OUT}/classes" "${OUT}/lok"
javac --release 8 -d "${OUT}/classes" "${SRC}/BluetensLok.java" "${SRC}/BluetensPrograms.java" \
  "${SRC}/BluetensShell.java" "${SRC}/BluetensAdvert.java" "${ROOT}/scripts/bluetens/BluetensSim.java"
java -cp "${OUT}/classes" BluetensSim "${OUT}/lok"
python3 "${ROOT}/scripts/bluetens/lok.py" --selftest
python3 "${ROOT}/scripts/bluetens/lok.py" "${OUT}"/lok/*.lok | sed -n '1,40p'
