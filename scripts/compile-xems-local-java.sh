#!/usr/bin/env bash
# Compile XemsLocal*.java to branding/smali/widget/
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
JAVA_SRC="${ROOT}/branding/java/src"
JAVA_STUBS="${ROOT}/branding/java-stubs"
OUT_DIR="${ROOT}/build/xems-local-java"
CLASSES_DIR="${OUT_DIR}/classes"
DEX_FILE="${OUT_DIR}/classes.dex"
SMALI_OUT="${OUT_DIR}/smali"
BRANDING_SMALI="${ROOT}/branding/smali/widget"
ANDROID_JAR="${ROOT}/android-sdk/platforms/android-30/android.jar"
D8="${ROOT}/android-sdk/build-tools/30.0.3/d8"
BAKSMALI="${ROOT}/tools/baksmali.jar"
WIDGET_SRC="${JAVA_SRC}/com/isaigu/gymapp/widget"
SOURCES=(
  "${WIDGET_SRC}/XemsLang.java"
  "${WIDGET_SRC}/XemsLocalStore.java"
  "${WIDGET_SRC}/XemsLocalApi.java"
  "${WIDGET_SRC}/XemsLocalSection.java"
  "${WIDGET_SRC}/XemsLocalGate.java"
  "${WIDGET_SRC}/XemsLocalUserForm.java"
)

mkdir -p "${CLASSES_DIR}" "${SMALI_OUT}" "${BRANDING_SMALI}"

if [[ ! -f "${ANDROID_JAR}" ]]; then
  echo "Android SDK missing — keeping prebuilt XemsLocal*.smali"
  exit 0
fi

mapfile -t STUB_FILES < <(find "${JAVA_STUBS}" -name '*.java' | sort)

echo "Compiling XemsLocal stack..."
rm -rf "${CLASSES_DIR}"
mkdir -p "${CLASSES_DIR}"
LICENSE_CLASSES="${ROOT}/build/xems-license-java/classes"
if [[ ! -d "${LICENSE_CLASSES}" ]]; then
  echo "ERROR: ${LICENSE_CLASSES} missing — run compile-xems-license-java.sh first"
  exit 1
fi
javac \
  --release 8 \
  -classpath "${ANDROID_JAR}:${JAVA_STUBS}:${LICENSE_CLASSES}" \
  -d "${CLASSES_DIR}" \
  "${STUB_FILES[@]}" \
  "${SOURCES[@]}"

echo "Dexing..."
rm -f "${DEX_FILE}"
mkdir -p "${OUT_DIR}/dex"
(
  cd "${CLASSES_DIR}"
  "${D8}" --min-api 21 --lib "${ANDROID_JAR}" --classpath "${CLASSES_DIR}" --output "${OUT_DIR}/dex" \
    com/isaigu/gymapp/widget/XemsLocalStore*.class \
    com/isaigu/gymapp/widget/XemsLocalApi*.class \
    com/isaigu/gymapp/widget/XemsLocalSection*.class \
    com/isaigu/gymapp/widget/XemsLocalGate*.class \
    com/isaigu/gymapp/widget/XemsLocalUserForm*.class
)
mv "${OUT_DIR}/dex/classes.dex" "${DEX_FILE}"

echo "Baksmaling..."
rm -rf "${SMALI_OUT}"
java -jar "${BAKSMALI}" d "${DEX_FILE}" -o "${SMALI_OUT}"

for f in XemsLocalStore XemsLocalApi XemsLocalSection XemsLocalGate XemsLocalUserForm; do
  src="${SMALI_OUT}/com/isaigu/gymapp/widget/${f}.smali"
  [[ -f "$src" ]] && cp "$src" "${BRANDING_SMALI}/${f}.smali"
  for inner in "${SMALI_OUT}/com/isaigu/gymapp/widget/${f}"\$*.smali; do
    [[ -f "$inner" ]] && cp "$inner" "${BRANDING_SMALI}/$(basename "$inner")"
  done
done

echo "XemsLocal smali updated in ${BRANDING_SMALI}"
