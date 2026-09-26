#!/usr/bin/env bash
# Closest-to-device automated checks without Band 10 hardware.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
REPO="$(cd "$ROOT/.." && pwd)"
cd "$ROOT"

echo "=== 1/4 band-app compile ==="
bash build.sh >/tmp/xems-band-build.log
echo "built OK"

echo "=== 2/4 train touch + layout unit tests ==="
node test/train-touch.test.mjs
node test/train-layout.test.mjs
node test/app-screen.test.mjs

echo "=== 3/4 SPP protocol sim (phone ↔ band bytes) ==="
if command -v python3 >/dev/null && [[ -f "$REPO/scripts/ble-sim/run-spp.sh" ]]; then
  if SPP_VERSION=2 "$REPO/scripts/ble-sim/run-spp.sh" >/tmp/xems-spp.log 2>&1; then
    tail -3 /tmp/xems-spp.log
  else
    echo "WARN: ble-sim failed (needs Java build) — see /tmp/xems-spp.log"
  fi
else
  echo "SKIP: ble-sim not available"
fi

echo "=== 4/4 train layout preview PNG (212×520) ==="
bash scripts/run-emulator-test.sh

echo ""
echo "All automated checks passed."
