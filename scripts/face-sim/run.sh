#!/usr/bin/env bash
# Offline test of the face studio's pure parts (FaceArt / FaceProgram / FaceCourse / FaceTimeline), SVGs into $1.
set -euo pipefail
D="$(cd "$(dirname "$0")" && pwd)"; ROOT="$(cd "${D}/../.." && pwd)"
OUT="$(mktemp -d)"; trap 'rm -rf "${OUT}"' EXIT
F="${ROOT}/branding/java/src/com/isaigu/gymapp/wearable/face"
B="${ROOT}/branding/java/src/com/isaigu/gymapp/wearable/bluetens"
SVG="${1:-${OUT}/svg}"
javac -nowarn -source 8 -target 8 -d "${OUT}" "${F}"/Face{Art,Program,Course,Timeline}.java "${B}"/Bluetens{Lok,Programs}.java "${D}/FaceSim.java" 2>&1 | grep -v "Picked up\|bootstrap\|warning" || true
java -Dstdout.encoding=UTF-8 -cp "${OUT}" FaceSim "${SVG}" "file://${ROOT}/branding/face/face.webp" 2>&1 | grep -v "Picked up"
