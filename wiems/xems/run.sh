#!/usr/bin/env bash
# Offline check of the XEMS WiEMS driver (WiProto, WiTranslator) against the owner's capture.
set -euo pipefail
HERE="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "${HERE}/../.." && pwd)"
JAR="${ROOT}/android-sdk/platforms/android-30/android.jar"
[[ -s "${JAR}" ]] || bash "${ROOT}/scripts/setup-android-toolchain.sh"
OUT="$(mktemp -d)"
javac --release 8 -nowarn -encoding UTF-8 -classpath "${JAR}" -d "${OUT}" \
  "${ROOT}"/branding/java/src/com/isaigu/gymapp/bodytech/{WiProto,WiTranslator}.java "${HERE}/WiTranslatorTest.java"
java -cp "${OUT}:${JAR}" com.isaigu.gymapp.bodytech.WiTranslatorTest
rm -rf "${OUT}"
