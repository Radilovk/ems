#!/usr/bin/env bash
# Auto-tune checks on the JVM. No Android.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
OUT="${ROOT}/build/music-sim"
rm -rf "${OUT}"
mkdir -p "${OUT}"
javac --release 8 -d "${OUT}" \
  "${ROOT}/branding/java/src/com/isaigu/gymapp/train/utils/MusicAutoTune.java" \
  "${ROOT}/scripts/music-sim/MusicAutoTuneSim.java"
java -cp "${OUT}" MusicAutoTuneSim
