#!/usr/bin/env bash
# Offline check of the bodytech XEMS classes (branding/java/src/.../bodytech).
# Compiles against android.jar (dx-safe Java 8), then runs the tests on the JVM with android.jar on the classpath.
set -euo pipefail
HERE="$(cd "$(dirname "$0")/.." && pwd)"
ROOT="$(cd "${HERE}/../.." && pwd)"
JAR="${ROOT}/android-sdk/platforms/android-30/android.jar"
[[ -s "${JAR}" ]] || bash "${ROOT}/scripts/setup-android-toolchain.sh"
OUT="$(mktemp -d)"
mapfile -t SRC < <(ls "${ROOT}"/branding/java/src/com/isaigu/gymapp/bodytech/{BtProto,BtSettings,BtTranslator}.java; find "${HERE}/test" -name '*.java' | sort)
javac --release 8 -nowarn -encoding UTF-8 -classpath "${JAR}" -d "${OUT}" "${SRC[@]}" 2>&1 | grep -v -E '^warning|warnings$' || true
java -cp "${OUT}:${JAR}" com.isaigu.gymapp.bodytech.BtSettingsTest
java -cp "${OUT}:${JAR}" com.isaigu.gymapp.bodytech.BtTranslatorTest
rm -rf "${OUT}"
