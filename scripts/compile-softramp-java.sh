#!/usr/bin/env bash
# Compile train/model/SoftRamp.java (the tablet-side ramp + the safety guard hook) to branding/smali/softramp/
# (installed into train/model by apply-soft-ramp.py). Prebuilt smali stays when the SDK is missing.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
JAVA_SRC="${ROOT}/branding/java/src"
OUT_DIR="${ROOT}/build/softramp-java"
CLASSES_DIR="${OUT_DIR}/classes"
DEX_FILE="${OUT_DIR}/classes.dex"
SMALI_OUT="${OUT_DIR}/smali"
BRANDING_SMALI="${ROOT}/branding/smali/softramp"
ANDROID_JAR="${ROOT}/android-sdk/platforms/android-30/android.jar"
D8="${ROOT}/android-sdk/build-tools/30.0.3/d8"
BAKSMALI="${ROOT}/tools/baksmali.jar"
JAVA_STUBS="${ROOT}/branding/java-stubs"

if [[ ! -f "${ANDROID_JAR}" ]]; then
  echo "Android SDK not found — keeping prebuilt ${BRANDING_SMALI}"
  exit 0
fi

echo "Compiling SoftRamp..."
rm -rf "${CLASSES_DIR}" "${OUT_DIR}/dex"
mkdir -p "${CLASSES_DIR}" "${OUT_DIR}/dex"
mapfile -t STUB_FILES < <(find "${JAVA_STUBS}" -name '*.java' | sort)
javac -nowarn -encoding UTF-8 --release 8 -classpath "${ANDROID_JAR}" -sourcepath "${JAVA_SRC}:${JAVA_STUBS}" \
  -implicit:class -d "${CLASSES_DIR}" "${STUB_FILES[@]}" "${JAVA_SRC}/com/isaigu/gymapp/train/model/SoftRamp.java"

echo "Dexing..."
mapfile -t DEX_CLASSES < <(cd "${CLASSES_DIR}" && find com/isaigu/gymapp/train/model -name 'SoftRamp*.class' | sort)
(
  cd "${CLASSES_DIR}"
  "${D8}" --min-api 21 --lib "${ANDROID_JAR}" --output "${OUT_DIR}/dex" "${DEX_CLASSES[@]}"
)
mv "${OUT_DIR}/dex/classes.dex" "${DEX_FILE}"

echo "Baksmaling..."
rm -rf "${SMALI_OUT}"
java -jar "${BAKSMALI}" d "${DEX_FILE}" -o "${SMALI_OUT}"
rm -f "${BRANDING_SMALI}"/SoftRamp*.smali
install -m 0644 "${SMALI_OUT}"/com/isaigu/gymapp/train/model/SoftRamp*.smali "${BRANDING_SMALI}/"
echo "SoftRamp smali installed in ${BRANDING_SMALI}"
