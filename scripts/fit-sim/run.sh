#!/usr/bin/env bash
# Offline test of wearable/ProgramFit (saved program = base, hand changes as reference) and the
# phonetic client search (widget/XemsSearch) on the JVM.
# Needs android-sdk/platforms/android-30/android.jar (scripts/setup-android-toolchain.sh).
set -euo pipefail
D="$(cd "$(dirname "$0")" && pwd)"; ROOT="$(cd "${D}/../.." && pwd)"
JAR="${ROOT}/android-sdk/platforms/android-30/android.jar"
[[ -f "${JAR}" ]] || { echo "android.jar missing — run scripts/setup-android-toolchain.sh"; exit 1; }
OUT="$(mktemp -d)"; trap 'rm -rf "${OUT}"' EXIT
javac -nowarn -source 8 -target 8 -d "${OUT}" -cp "${JAR}" \
  -sourcepath "${ROOT}/branding/java/src:${ROOT}/branding/java-stubs" \
  "${D}/FitSim.java" "${D}/SearchSim.java" 2>&1 | grep -v "Picked up\|bootstrap\|warning\|^Note:" || true
java -cp "${OUT}:${JAR}" com.isaigu.gymapp.wearable.FitSim 2>&1 | grep -v "Picked up"
java -Dfile.encoding=UTF-8 -cp "${OUT}:${JAR}" SearchSim 2>&1 | grep -v "Picked up"
