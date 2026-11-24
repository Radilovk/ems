#!/bin/sh
# "Тренер" by Vosk (offline, speaker-independent) — the same phrases as run-wake.sh. Needs espeak-ng, ffmpeg.
set -e
D="$(cd "$(dirname "$0")" && pwd)"; C="$D/vosk"; mkdir -p "$C"
[ -f "$C/vosk.jar" ] || curl -fsS -o "$C/vosk.jar" https://repo1.maven.org/maven2/com/alphacephei/vosk/0.3.45/vosk-0.3.45.jar
[ -f "$C/jna.jar" ] || curl -fsS -o "$C/jna.jar" https://repo1.maven.org/maven2/net/java/dev/jna/jna/5.13.0/jna-5.13.0.jar
if [ ! -d "$C/vosk-model-small-ru-0.22" ]; then
  curl -fsS -o "$C/m.zip" https://alphacephei.com/vosk/models/vosk-model-small-ru-0.22.zip && (cd "$C" && unzip -q m.zip && rm m.zip)
fi
OUT="$(mktemp -d)"; trap 'rm -rf "$OUT"' EXIT
javac -nowarn -cp "$C/vosk.jar:$C/jna.jar" -d "$OUT" "$D/VoskSim.java" 2>&1 | grep -v "Picked up" || true
java ${VOSK_OPTS:-} -Dfile.encoding=UTF-8 -Djna.encoding=UTF-8 -Dstdout.encoding=UTF-8 -Dmodel="$C/vosk-model-small-ru-0.22" -cp "$OUT:$C/vosk.jar:$C/jna.jar" VoskSim 2>&1 | grep -v "Picked up\|^LOG\|WARNING"
