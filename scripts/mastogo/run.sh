#!/usr/bin/env bash
# Offline test of the MASTOGO H-024B module: the real MastogoShell against a simulated unit (no unit, no tablet).
set -euo pipefail
D="$(cd "$(dirname "$0")" && pwd)"; ROOT="$(cd "${D}/../.." && pwd)"
OUT="$(mktemp -d)"; trap 'rm -rf "${OUT}"' EXIT
javac -nowarn -encoding UTF-8 -source 8 -target 8 -d "${OUT}" \
  "${ROOT}/branding/java/src/com/isaigu/gymapp/wearable/mastogo/MastogoShell.java" \
  "${ROOT}/branding/java/src/com/isaigu/gymapp/wearable/mastogo/MastogoStore.java" \
  "${D}/MastogoSim.java" 2>&1 | grep -v "Picked up\|bootstrap\|warning\|^Note:" || true
java -Dfile.encoding=UTF-8 -cp "${OUT}" MastogoSim 2>&1 | grep -v "Picked up"
