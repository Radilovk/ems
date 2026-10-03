#!/usr/bin/env bash
# Offline test of the body-composition scale (wearable/scale: protocol A + B, WLA25 body composition) on the JVM,
# against real captures from sacoma-lib and Fitman. Needs android-sdk/platforms/android-30/android.jar
# (scripts/setup-android-toolchain.sh).
set -euo pipefail
D="$(cd "$(dirname "$0")" && pwd)"; ROOT="$(cd "${D}/../.." && pwd)"
JAR="${ROOT}/android-sdk/platforms/android-30/android.jar"
[[ -f "${JAR}" ]] || { echo "android.jar missing — run scripts/setup-android-toolchain.sh"; exit 1; }
OUT="$(mktemp -d)"; trap 'rm -rf "${OUT}"' EXIT
javac -nowarn -source 8 -target 8 -d "${OUT}" -cp "${JAR}" \
  -sourcepath "${ROOT}/branding/java/src:${ROOT}/branding/java-stubs" \
  "${D}/ScaleSim.java" 2>&1 | grep -v "Picked up\|bootstrap\|warning\|^Note:" || true
java -cp "${OUT}:${JAR}" com.isaigu.gymapp.wearable.scale.ScaleSim 2>&1 | grep -av "Picked up"
