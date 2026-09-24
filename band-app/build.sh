#!/usr/bin/env bash
# Build the XEMS band app (Xiaomi Vela quick app) → band-app/xems-band.rpk.
# Needs node ≥ 18 and network for npm the first time. The .rpk is signed with the toolkit's
# debug certificate (the same as `aiot build` in the Xiaomi AIoT IDE).
set -euo pipefail
D="$(cd "$(dirname "$0")" && pwd)"
cd "${D}"
[[ -d node_modules/aiot-toolkit ]] || npm i --no-audit --no-fund
python3 tools/gen-pages.py
rm -rf build dist
npx aiot build
cp dist/*.rpk "${D}/xems-band.rpk"
echo "built ${D}/xems-band.rpk"
