#!/bin/sh
# The tablet's wake word "тренер" (ai/WakeWord) on the JVM with espeak-ng speech. Needs espeak-ng, ffmpeg.
set -e
PHRASE="${PHRASE:-окей тренер}"; export LC_ALL="${LC_ALL:-C.UTF-8}"   # the wake phrase under test (default: the shipped one)
D="$(cd "$(dirname "$0")" && pwd)"; ROOT="$(cd "$D/../.." && pwd)"
OUT="$(mktemp -d)"; trap 'rm -rf "$OUT"' EXIT
javac -nowarn -d "$OUT" "$ROOT/branding/java/src/com/isaigu/gymapp/ai/WakeWord.java" "$D/WakeSim.java" 2>&1 | grep -v "Picked up" || true
java -Dphrase="$PHRASE" -Dstdout.encoding=UTF-8 -cp "$OUT" WakeSim 2>&1 | grep -v "Picked up"
