#!/usr/bin/env bash
# Compile XemsLicense*.java to branding/smali/widget/
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SRC_DIR="${ROOT}/branding/java/src/com/isaigu/gymapp/widget"
OUT_DIR="${ROOT}/build/xems-license-java"
CLASSES_DIR="${OUT_DIR}/classes"
DEX_DIR="${OUT_DIR}/dex"
SMALI_OUT="${OUT_DIR}/smali"
BRANDING_SMALI="${ROOT}/branding/smali/widget"
ANDROID_JAR="${ROOT}/android-sdk/platforms/android-30/android.jar"
D8="${ROOT}/android-sdk/build-tools/30.0.3/d8"
BAKSMALI="${ROOT}/tools/baksmali.jar"

SOURCES=(
  XemsLicense.java XemsLicenseToken.java XemsLicenseClient.java XemsLicenseSection.java
)

mkdir -p "${CLASSES_DIR}" "${SMALI_OUT}" "${BRANDING_SMALI}"

if [[ ! -f "${ANDROID_JAR}" ]]; then
  echo "Android SDK missing — keeping prebuilt XemsLicense*.smali"
  exit 0
fi

echo "Compiling XemsLicense stack..."
rm -rf "${CLASSES_DIR}" "${DEX_DIR}"
mkdir -p "${CLASSES_DIR}" "${DEX_DIR}"

ARGS=()
for f in "${SOURCES[@]}"; do
  ARGS+=("${SRC_DIR}/${f}")
done

javac --release 8 -classpath "${ANDROID_JAR}" -d "${CLASSES_DIR}" "${ARGS[@]}"

(
  cd "${CLASSES_DIR}"
  "${D8}" --min-api 21 --lib "${ANDROID_JAR}" --output "${DEX_DIR}" \
    com/isaigu/gymapp/widget/XemsLicense*.class
)

java -jar "${BAKSMALI}" d "${DEX_DIR}/classes.dex" -o "${SMALI_OUT}"

for f in XemsLicense XemsLicenseToken XemsLicenseClient XemsLicenseSection; do
  src="${SMALI_OUT}/com/isaigu/gymapp/widget/${f}.smali"
  [[ -f "$src" ]] && cp "$src" "${BRANDING_SMALI}/${f}.smali"
  # inner classes
  for inner in "${SMALI_OUT}/com/isaigu/gymapp/widget/${f}"\$*.smali; do
    [[ -f "$inner" ]] && cp "$inner" "${BRANDING_SMALI}/$(basename "$inner")"
  done
done

echo "XemsLicense smali updated in ${BRANDING_SMALI}"
