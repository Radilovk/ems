#!/bin/sh
# A ready voice model (the tablet's own recipe) → branding/voice/kws-owner.bin, shipped as the default.
# Usage: sh scripts/voice-kws/run-owner.sh <enroll dir: cut_*.raw [own.raw]> [out]
set -e
D="$(cd "$(dirname "$0")" && pwd)"; ROOT="$(cd "$D/../.." && pwd)"
OUT="$(mktemp -d)"; trap 'rm -rf "$OUT"' EXIT
A="$ROOT/branding/java/src/com/isaigu/gymapp/ai"
javac -nowarn -d "$OUT" "$A/Kws.java" "$A/KwsTrain.java" "$D/KwsOwner.java" 2>&1 | grep -v "Picked up" || true
java -Xmx2g -cp "$OUT" KwsOwner "$1" "${2:-$ROOT/branding/voice/kws-owner.bin}" "$ROOT/branding/voice/kws-pack.bin" 2>&1 | grep -v "Picked up"
