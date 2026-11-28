#!/bin/sh
# The setup's cut and the live detector checked on the JVM. Usage: sh scripts/voice-kws/run-setup.sh <enroll dir with cut_*.raw>
set -e
D="$(cd "$(dirname "$0")" && pwd)"; ROOT="$(cd "$D/../.." && pwd)"
OUT="$(mktemp -d)"; trap 'rm -rf "$OUT"' EXIT
A="$ROOT/branding/java/src/com/isaigu/gymapp/ai"
javac -nowarn -d "$OUT" "$A/Kws.java" "$A/WakeWord.java" "$D/SetupSim.java" 2>&1 | grep -v "Picked up" || true
java -cp "$OUT" com.isaigu.gymapp.ai.SetupSim "$1" 2>&1 | grep -v "Picked up"
