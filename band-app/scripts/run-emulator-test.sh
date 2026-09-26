#!/usr/bin/env bash
# Build band app, boot Vela 212×520 emulator on train page with mock XEMS state,
# capture pixel-perfect gRPC screenshots (idle + after play tap).
set -euo pipefail
D="$(cd "$(dirname "$0")/.." && pwd)"
cd "$D"
ART="${ARTIFACT_DIR:-/opt/cursor/artifacts/screenshots}"
VVD=Vela_XEMS_Band
PLAY_X=106
PLAY_Y=292

if [[ ! -r /dev/kvm ]]; then
  echo "WARN: no /dev/kvm — emulator may be slow."
fi

node scripts/setup-emulator.mjs
bash build.sh >/tmp/xems-band-build.log

APP_UX="$D/src/app.ux"
BAK="$(mktemp)"
cp "$APP_UX" "$BAK"
trap 'mv "$BAK" "$APP_UX"; pkill -f "qemu-system-armel.*${VVD}" 2>/dev/null || true' EXIT
sed -i 's/const DEV_MOCK = false/const DEV_MOCK = true/' "$APP_UX"

# Rebuild with mock enabled
bash build.sh >/tmp/xems-band-build-mock.log

echo "Starting emulator → pages/train (background) ..."
pkill -f "qemu-system-armel.*${VVD}" 2>/dev/null || true
sleep 1
printf 'Y\n' | npx aiot start --start-page 'pages/train' > /tmp/xems-emulator.log 2>&1 &
EMU_PID=$!

echo "Waiting for emulator boot (30s) ..."
sleep 30
mkdir -p "$ART"

echo "Capture: train idle (play green) ..."
node scripts/capture-emulator-screenshot.mjs "$ART/train_play_idle.png"

echo "Tap play at ${PLAY_X},${PLAY_Y} ..."
node scripts/capture-emulator-screenshot.mjs --tap "$PLAY_X" "$PLAY_Y" "$ART/train_play_running.png"

echo ""
echo "Screenshots:"
ls -la "$ART"/train_play_*.png
echo "Done. Emulator log: /tmp/xems-emulator.log"

kill "$EMU_PID" 2>/dev/null || pkill -f "qemu-system-armel.*${VVD}" 2>/dev/null || true
