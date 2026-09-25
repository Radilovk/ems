#!/usr/bin/env bash
# Build the XEMS band app (Xiaomi Vela quick app) in both languages:
#   band-app/xems-band.rpk     Bulgarian (the source)
#   band-app/xems-band-en.rpk  English (scripts/gen-lang.py + scripts/en.json)
# Needs node ≥ 18 and network for npm the first time. The .rpk is signed with the toolkit's
# debug certificate (the same as `aiot build` in the Xiaomi AIoT IDE).
set -euo pipefail
D="$(cd "$(dirname "$0")" && pwd)"
cd "${D}"
[[ -d node_modules/aiot-toolkit ]] || npm i --no-audit --no-fund
python3 scripts/gen-bg.py
python3 scripts/gen-pages.py

rm -rf build dist
npx aiot build
cp dist/*.rpk "${D}/xems-band.rpk"
echo "built ${D}/xems-band.rpk"

# English: same project, src swapped for the translated copy for the build (restored always).
EN="$(mktemp -d)/band-app-en"
python3 scripts/gen-lang.py "${EN}"
mv src src.bg
trap 'rm -rf "${D}/src"; mv "${D}/src.bg" "${D}/src"' EXIT
cp -r "${EN}/src" src
rm -rf build dist
npx aiot build
cp dist/*.rpk "${D}/xems-band-en.rpk"
echo "built ${D}/xems-band-en.rpk"
