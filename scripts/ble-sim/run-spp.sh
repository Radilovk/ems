#!/usr/bin/env bash
# Offline protocol test: real XiaomiBandSppClient (JVM, stubbed android.*) vs spp_band.py (Band 9/10 over SPP).
# usage: SPP_VERSION=1|2 scripts/ble-sim/run-spp.sh     env: NOT_WORN=1, AUTH_KEY=<32 hex>
# needs: javac, python3, pycryptodome
set -euo pipefail
D="$(cd "$(dirname "$0")" && pwd)"; ROOT="$(cd "${D}/../.." && pwd)"
SRC="${SRC:-${ROOT}/branding/java/src}"; W="${SRC}/com/isaigu/gymapp/wearable"
KEY="${AUTH_KEY:-$(python3 -c 'import os;print(os.urandom(16).hex())')}"
OUT="$(mktemp -d)"; trap 'rm -rf "${OUT}"' EXIT
javac -nowarn -source 8 -target 8 -d "${OUT}" $(find "${D}/rt" -name '*.java' ! -name 'Harness.java') \
  "${W}/WearableBleDiagLog.java" "${W}"/xiaomi/*.java 2>&1 | grep -v "Picked up\|bootstrap\|^Note\|warning" || true
java -cp "${OUT}" com.isaigu.gymapp.wearable.xiaomi.SppHarness "${D}/spp_band.py" "${KEY}" 2>/dev/null | tee "${OUT}/log.txt" | grep -v "Picked up"
grep -q "RESULT dropped=null hr=\[71, 72, 73, 74\] finalState=streaming" "${OUT}/log.txt" && echo "PASS" || { echo "FAIL"; exit 1; }
