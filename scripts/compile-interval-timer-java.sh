#!/usr/bin/env bash
# Compile IntervalTimerHelper from Java to smali.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
JAVA_SRC="${ROOT}/branding/java/src"
JAVA_STUBS="${ROOT}/branding/java-stubs"
OUT_DIR="${ROOT}/build/interval-timer-java"
CLASSES_DIR="${OUT_DIR}/classes"
DEX_FILE="${OUT_DIR}/classes.dex"
SMALI_OUT="${OUT_DIR}/smali"
BRANDING_SMALI="${ROOT}/branding/smali"
MUSIC_CLASSES="${ROOT}/build/music-sync-java/classes"
ANDROID_JAR="${ROOT}/android-sdk/platforms/android-30/android.jar"
D8="${ROOT}/android-sdk/build-tools/30.0.3/d8"
BAKSMALI="${ROOT}/tools/baksmali.jar"

mkdir -p "${CLASSES_DIR}" "${SMALI_OUT}" "${BRANDING_SMALI}" "${OUT_DIR}"

if [[ ! -f "${ANDROID_JAR}" ]]; then
  if [[ -f "${BRANDING_SMALI}/IntervalTimerHelper.smali" ]]; then
    echo "Android SDK not found — using prebuilt IntervalTimerHelper.smali"
    exit 0
  fi
  echo "ERROR: Android SDK missing and no prebuilt IntervalTimerHelper.smali"
  exit 1
fi

bash "${ROOT}/scripts/compile-music-sync-java.sh"

JAVA_FILE="${JAVA_SRC}/com/isaigu/gymapp/dialog/IntervalTimerHelper.java"
mapfile -t STUB_FILES < <(find "${JAVA_STUBS}" -name '*.java' | sort)

echo "Compiling IntervalTimerHelper..."
rm -rf "${CLASSES_DIR}"
mkdir -p "${CLASSES_DIR}"
javac \
  --release 8 \
  -classpath "${ANDROID_JAR}:${JAVA_STUBS}:${MUSIC_CLASSES}" \
  -d "${CLASSES_DIR}" \
  "${STUB_FILES[@]}" \
  "${JAVA_FILE}"

echo "Dexing..."
rm -f "${DEX_FILE}"
mkdir -p "${OUT_DIR}/dex"
mapfile -t DEX_CLASSES < <(find "${CLASSES_DIR}/com/isaigu/gymapp/dialog" \
  -name 'IntervalTimerHelper*.class' -print | sort)
(
  cd "${CLASSES_DIR}"
  "${D8}" \
    --min-api 21 \
    --lib "${ANDROID_JAR}" \
    --output "${OUT_DIR}/dex" \
    "${DEX_CLASSES[@]#${CLASSES_DIR}/}"
)
mv "${OUT_DIR}/dex/classes.dex" "${DEX_FILE}"

echo "Baksmaling..."
rm -rf "${SMALI_OUT}"
java -jar "${BAKSMALI}" d "${DEX_FILE}" -o "${SMALI_OUT}"

echo "Installing smali..."
find "${BRANDING_SMALI}" -name 'IntervalTimerHelper*.smali' -delete
while IFS= read -r -d '' file; do
  cp "${file}" "${BRANDING_SMALI}/$(basename "${file}")"
  echo "  -> $(basename "${file}")"
done < <(find "${SMALI_OUT}" -name 'IntervalTimerHelper*.smali' -print0)

echo "Interval timer Java compile complete."
