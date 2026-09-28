#!/usr/bin/env bash
# Two bands (Settings → Band → second band): the same simulated Band 9/10 as the client's band (ROLE=hr) and as
# the trainer's band (ROLE=control). hr: heart rate only, no keys / band app; control: keys and band app, no heart rate.
# needs: javac, python3, pycryptodome
set -euo pipefail
D="$(cd "$(dirname "$0")" && pwd)"; ROOT="$(cd "${D}/../.." && pwd)"
SRC="${SRC:-${ROOT}/branding/java/src}"; W="${SRC}/com/isaigu/gymapp/wearable"
KEY="${AUTH_KEY:-$(python3 -c 'import os;print(os.urandom(16).hex())')}"
OUT="$(mktemp -d)"; trap 'rm -rf "${OUT}"' EXIT
javac -nowarn -encoding UTF-8 -source 8 -target 8 -d "${OUT}" $(find "${D}/rt" -name '*.java' ! -name 'Harness.java' ! -name 'HrPolicyHarness.java') \
  "${W}/WearableBleDiagLog.java" "${W}"/xiaomi/*.java 2>&1 | grep -v "Picked up\|bootstrap\|^Note\|warning" || true
ROLE=hr java -cp "${OUT}" com.isaigu.gymapp.wearable.xiaomi.SppHarness "${D}/spp_band.py" "${KEY}" 2>/dev/null > "${OUT}/hr.txt" || true
ROLE=control java -cp "${OUT}" com.isaigu.gymapp.wearable.xiaomi.SppHarness "${D}/spp_band.py" "${KEY}" 2>/dev/null > "${OUT}/ctl.txt" || true
grep -E "^(RESULT|KEYS|STATUS|INSTALL)" "${OUT}/hr.txt" | sed 's/^/hr      /'
grep -E "^(RESULT|KEYS|STATUS|INSTALL)" "${OUT}/ctl.txt" | sed 's/^/control /'
ok=1
grep -q "hr=\[71, 72, 73, 74\]" "${OUT}/hr.txt" || { echo "hr band: no heart rate"; ok=0; }
grep -q "KEYS \[\]" "${OUT}/hr.txt" || { echo "hr band: took remote keys"; ok=0; }
grep -q "\[app\]" "${OUT}/hr.txt" && { echo "hr band: took band-app messages"; ok=0; }
grep -q "hr=\[\]" "${OUT}/ctl.txt" || { echo "control band: gave heart rate"; ok=0; }
grep -q "KEYS \[4\]" "${OUT}/ctl.txt" || { echo "control band: no remote keys"; ok=0; }
grep -q "INSTALL true installed listed=v4" "${OUT}/ctl.txt" || { echo "control band: band app install failed"; ok=0; }
grep -q "STATUS battery=-1" "${OUT}/ctl.txt" || { echo "control band: changed the worn / battery status"; ok=0; }
[[ "${ok}" == 1 ]] && echo "PASS dual" || { echo "FAIL dual"; exit 1; }
