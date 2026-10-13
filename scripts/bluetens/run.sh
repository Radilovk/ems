#!/usr/bin/env bash
# Offline test of the Bluetens module: the real BluetensShell / BluetensLok / BluetensPrograms / BluetensProgram
# against a simulated pad, then every program re-read by the independent Python parser. No pad, no tablet.
# Needs android-sdk/platforms/android-30/android.jar (scripts/setup-android-toolchain.sh) for ai/SafeLimits' deps.
set -euo pipefail
D="$(cd "$(dirname "$0")" && pwd)"; ROOT="$(cd "${D}/../.." && pwd)"
JAR="${ROOT}/android-sdk/platforms/android-30/android.jar"
[[ -f "${JAR}" ]] || { echo "android.jar missing — run scripts/setup-android-toolchain.sh"; exit 1; }
OUT="$(mktemp -d)"; trap 'rm -rf "${OUT}"' EXIT
mkdir -p "${OUT}/classes" "${OUT}/lok"
javac -nowarn -encoding UTF-8 -source 8 -target 8 -d "${OUT}/classes" -cp "${JAR}" \
  -sourcepath "${ROOT}/branding/java/src:${ROOT}/branding/java-stubs" \
  "${D}/BluetensSim.java" 2>&1 | grep -v "Picked up\|bootstrap\|warning\|^Note:" || true
java -Dfile.encoding=UTF-8 -cp "${OUT}/classes:${JAR}" BluetensSim "${OUT}/lok" 2>&1 | grep -v "Picked up"
python3 "${D}/lok.py" --selftest
python3 "${D}/lok.py" "${OUT}"/lok/*.lok | sed -n '1,40p'
