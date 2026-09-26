#!/usr/bin/env bash
# Build with dev mock state, start Vela emulator on train page, capture screenshot.
# Needs KVM for reasonable speed; falls back with a clear message.
set -euo pipefail
D="$(cd "$(dirname "$0")/.." && pwd)"
cd "$D"

if [[ ! -r /dev/kvm ]]; then
  echo "WARN: no /dev/kvm — emulator will be very slow or may fail in CI/cloud VMs."
  echo "      Run this script on a Linux machine with KVM for real UI verification."
fi

node scripts/setup-emulator.mjs

# Enable interconnect mock for emulator (no XEMS tablet peer).
APP_UX="$D/src/app.ux"
BAK="$(mktemp)"
cp "$APP_UX" "$BAK"
trap 'mv "$BAK" "$APP_UX"' EXIT
sed -i 's/const DEV_MOCK = false/const DEV_MOCK = true/' "$APP_UX"

echo "Starting emulator → pages/train ..."
printf 'Y\n' | timeout 180 npx aiot start \
  --start-page 'pages/train' \
  2>&1 | tee /tmp/xems-emulator.log || {
  echo "Emulator start failed or timed out. See /tmp/xems-emulator.log"
  exit 1
}
