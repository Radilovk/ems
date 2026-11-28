#!/bin/sh
# The personal "тренер" (ai/Kws, ai/KwsTrain) measured on the JVM with the tablet's own code.
# Usage: sh scripts/voice-kws/run-kws.sh <enroll dir: cut_*.raw own.raw> <dir of s_*.raw> <dir of t_/tr_/tp_/tv_*.raw> [pack out]
set -e
D="$(cd "$(dirname "$0")" && pwd)"; ROOT="$(cd "$D/../.." && pwd)"
OUT="$(mktemp -d)"; trap 'rm -rf "$OUT"' EXIT
javac -nowarn -d "$OUT" "$ROOT/branding/java/src/com/isaigu/gymapp/ai/Kws.java" "$ROOT/branding/java/src/com/isaigu/gymapp/ai/KwsTrain.java" "$D/KwsSim.java" 2>&1 | grep -v "Picked up" || true
java -Xmx3g $JOPTS -cp "$OUT" KwsSim "$@" 2>&1 | grep -v "Picked up"
