#!/usr/bin/env bash
# Offline test of the double-impulse button (setup / off / 5 s / sync) and the second impulse per channel
# (wearable.DoubleImpulse, train.utils.PartStrength / PartLook, wearable.PartPick, wearable.SecondParts) on the JVM.
# Needs android-sdk/platforms/android-30/android.jar (scripts/setup-android-toolchain.sh).
set -euo pipefail
D="$(cd "$(dirname "$0")" && pwd)"; ROOT="$(cd "${D}/../.." && pwd)"
JAR="${ROOT}/android-sdk/platforms/android-30/android.jar"
[[ -f "${JAR}" ]] || { echo "android.jar missing — run scripts/setup-android-toolchain.sh"; exit 1; }
OUT="$(mktemp -d)"; SHIM="$(mktemp -d)"; trap 'rm -rf "${OUT}" "${SHIM}"' EXIT
javac -nowarn -encoding UTF-8 -source 8 -target 8 -d "${OUT}" -cp "${JAR}" \
  -sourcepath "${ROOT}/branding/java/src:${ROOT}/branding/java-stubs" \
  "${D}/PartSim.java" 2>&1 | grep -v "Picked up\|bootstrap\|warning\|^Note:" || true
# android.os.Handler / Looper shims first at run time only: the android.jar stubs throw "Stub!"
javac -nowarn -encoding UTF-8 -source 8 -target 8 -d "${SHIM}" "${D}/shim/android/os/Handler.java" "${D}/shim/android/os/Looper.java" 2>&1 | grep -v "Picked up\|bootstrap\|warning\|^Note:" || true
java -cp "${SHIM}:${OUT}:${JAR}" com.isaigu.gymapp.train.utils.PartSim 2>&1 | grep -v "Picked up"
