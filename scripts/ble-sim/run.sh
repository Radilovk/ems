#!/usr/bin/env bash
# Offline protocol test: real XiaomiBandBleClient (JVM, stubbed android.*) vs Python Band 8 simulator.
# usage: scripts/ble-sim/run.sh [nomtu]      env: STRICT=1 (ACK must come back on the frame's channel)
#        NOACK_FIRST_ENC=1 (band swallows one ACK)   AUTH_KEY=<32 hex> (default: random test key)
# needs: javac, python3, pycryptodome (pip install pycryptodome)
set -euo pipefail
D="$(cd "$(dirname "$0")" && pwd)"; ROOT="$(cd "${D}/../.." && pwd)"
SRC="${SRC:-${ROOT}/branding/java/src}"; W="${SRC}/com/isaigu/gymapp/wearable"
KEY="${AUTH_KEY:-$(python3 -c 'import os;print(os.urandom(16).hex())')}"
OUT="$(mktemp -d)"; trap 'rm -rf "${OUT}"' EXIT
javac -nowarn -encoding UTF-8 -source 8 -target 8 -d "${OUT}" $(find "${D}/rt" -name '*.java') \
  "${W}/WearableBleDiagLog.java" "${W}"/xiaomi/*.java 2>&1 | grep -v "Picked up\|bootstrap\|^Note\|warning" || true
java -cp "${OUT}" sim.Harness "${D}/band.py" "${KEY}" "${1:-}" 2>/dev/null | tee "${OUT}/log.txt" | grep -v "Picked up"
grep -q "RESULT dropped=null hr=\[71, 72, 73, 74\]" "${OUT}/log.txt" && echo "PASS" || { echo "FAIL"; exit 1; }
