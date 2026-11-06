#!/usr/bin/env bash
# The face procedures as one data file (docs/xems-face.md §10): FaceProgram + the automatic mode's plans + FaceArt's
# geometry + the Bluetens files → branding/face/procedures.json (or $1). XBody's panel reads this; never edit it by hand.
# scripts/face-sim/run.sh fails when the committed file no longer matches the Java.
set -euo pipefail
D="$(cd "$(dirname "$0")" && pwd)"; ROOT="$(cd "${D}/../.." && pwd)"
OUT="$(mktemp -d)"; trap 'rm -rf "${OUT}"' EXIT
A="${ROOT}/branding/java/src/com/isaigu/gymapp/ai"
F="${ROOT}/branding/java/src/com/isaigu/gymapp/wearable/face"
B="${ROOT}/branding/java/src/com/isaigu/gymapp/wearable/bluetens"
S="${ROOT}/scripts/ai-sim/stub/com/isaigu/gymapp"
javac -nowarn -encoding UTF-8 -source 8 -target 8 -d "${OUT}" "${A}"/Ai{Model,Screening,Planner,Personal,Energy}.java \
  "${S}/ai/AiText.java" "${S}/train/utils/ChannelStrengthScale.java" \
  "${A}"/Auto{Model,Catalog,Limits,Planner,Dynamics,Engine,Cues,TemplateData,Templates}.java "${A}/SafeLimits.java" \
  "${A}/PulseAdvice.java" "${F}"/Face{Art,Program}.java "${B}"/Bluetens{Lok,Programs}.java "${D}/FaceExport.java" 2>&1 \
  | grep -v "Picked up\|bootstrap\|warning" || true
java -Dfile.encoding=UTF-8 -cp "${OUT}" FaceExport "${1:-${ROOT}/branding/face/procedures.json}" 2>&1 | grep -v "Picked up" || true
