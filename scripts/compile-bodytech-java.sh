#!/usr/bin/env bash
# Compile the bodytech suit driver (com.isaigu.gymapp.bodytech: BtProto, BtSettings, BtTranslator, BtBridge)
# to branding/smali/bodytech/ (installed into the app by apply-bodytech.py). Prebuilt smali stays when the SDK is missing.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
JAVA_SRC="${ROOT}/branding/java/src"
OUT_DIR="${ROOT}/build/bodytech-java"
CLASSES_DIR="${OUT_DIR}/classes"
DEX_FILE="${OUT_DIR}/classes.dex"
SMALI_OUT="${OUT_DIR}/smali"
BRANDING_SMALI="${ROOT}/branding/smali/bodytech"
ANDROID_JAR="${ROOT}/android-sdk/platforms/android-30/android.jar"
D8="${ROOT}/android-sdk/build-tools/30.0.3/d8"
BAKSMALI="${ROOT}/tools/baksmali.jar"
JAVA_STUBS="${ROOT}/branding/java-stubs"
PKG=com/isaigu/gymapp/bodytech

if [[ ! -f "${ANDROID_JAR}" ]]; then
  echo "Android SDK not found — keeping prebuilt ${BRANDING_SMALI}"
  exit 0
fi

echo "Compiling bodytech..."
rm -rf "${CLASSES_DIR}" "${OUT_DIR}/dex"
mkdir -p "${CLASSES_DIR}" "${OUT_DIR}/dex"
mapfile -t STUB_FILES < <(find "${JAVA_STUBS}" -name '*.java' | sort)
mapfile -t SRC_FILES < <(find "${JAVA_SRC}/${PKG}" -name '*.java' | sort)
javac -nowarn -encoding UTF-8 --release 8 -classpath "${ANDROID_JAR}" -sourcepath "${JAVA_SRC}:${JAVA_STUBS}" \
  -implicit:class -d "${CLASSES_DIR}" "${STUB_FILES[@]}" "${SRC_FILES[@]}"

echo "Dexing..."
mapfile -t DEX_CLASSES < <(cd "${CLASSES_DIR}" && find "${PKG}" -name '*.class' | sort)
(
  cd "${CLASSES_DIR}"
  "${D8}" --min-api 21 --lib "${ANDROID_JAR}" --output "${OUT_DIR}/dex" "${DEX_CLASSES[@]}"
)
mv "${OUT_DIR}/dex/classes.dex" "${DEX_FILE}"

echo "Baksmaling..."
rm -rf "${SMALI_OUT}"
java -jar "${BAKSMALI}" d "${DEX_FILE}" -o "${SMALI_OUT}"
mkdir -p "${BRANDING_SMALI}"
rm -f "${BRANDING_SMALI}"/*.smali
install -m 0644 "${SMALI_OUT}/${PKG}"/*.smali "${BRANDING_SMALI}/"
echo "bodytech smali installed in ${BRANDING_SMALI}: $(ls "${BRANDING_SMALI}" | wc -l) classes"
