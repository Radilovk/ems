#!/bin/sh
# The cloud ear's end of speech (ai/EarEnd) on real speech over noise.
# Usage: sh scripts/voice-sim/run-earend.sh <dir of 16 kHz mono 16-bit *.raw phrases>
set -e
D="$(cd "$(dirname "$0")" && pwd)"; ROOT="$(cd "$D/../.." && pwd)"
OUT="$(mktemp -d)"; trap 'rm -rf "$OUT"' EXIT
javac -nowarn -d "$OUT" "$ROOT/branding/java/src/com/isaigu/gymapp/ai/EarEnd.java" "$D/EarEndSim.java" 2>&1 | grep -v "Picked up" || true
java -cp "$OUT" EarEndSim "$1" 2>&1 | grep -v "Picked up"
