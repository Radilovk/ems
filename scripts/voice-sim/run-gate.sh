#!/bin/sh
# What heard speech may cost an AI call (ai/AiVoiceGate) — noise, filler, stray words, repeats, the rate limit.
set -e
D="$(cd "$(dirname "$0")" && pwd)"; ROOT="$(cd "$D/../.." && pwd)"
OUT="$(mktemp -d)"; trap 'rm -rf "$OUT"' EXIT
S="$ROOT/branding/java/src/com/isaigu/gymapp/ai"
javac -nowarn -encoding UTF-8 -d "$OUT" "$S/AiVoiceGate.java" \
  "$D/stub/com/isaigu/gymapp/wearable/WearableBleDiagLog.java" "$D/stub/com/isaigu/gymapp/ai/AiVoiceGateProbe.java" \
  "$D/GateSim.java" 2>&1 | grep -v "Picked up" || true
java -Dstdout.encoding=UTF-8 -cp "$OUT" GateSim 2>&1 | grep -v "Picked up"
