#!/usr/bin/env bash
# Compile Notify wearable bridge + sync UI from Java to smali.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
JAVA_SRC="${ROOT}/branding/java/src"
JAVA_STUBS="${ROOT}/branding/java-stubs"
OUT_DIR="${ROOT}/build/wearable-java"
CLASSES_DIR="${OUT_DIR}/classes"
DEX_FILE="${OUT_DIR}/classes.dex"
SMALI_OUT="${OUT_DIR}/smali"
BRANDING_SMALI="${ROOT}/branding/smali/wearable"
ANDROID_JAR="${ROOT}/android-sdk/platforms/android-30/android.jar"
D8="${ROOT}/android-sdk/build-tools/30.0.3/d8"
BAKSMALI="${ROOT}/tools/baksmali.jar"
INTERVAL_CLASSES="${ROOT}/build/interval-timer-java/classes"
MUSIC_CLASSES="${ROOT}/build/music-sync-java/classes"

WEARABLE_JAVA=(
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/WearableConfig.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/NotifyHrReceiver.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/NotifyWearableBridge.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/WearableSyncHelper.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/NotifyHaServer.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/HaEntityRecord.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/NotifyHaForegroundService.java"
)

mkdir -p "${CLASSES_DIR}" "${SMALI_OUT}" "${BRANDING_SMALI}" "${OUT_DIR}"

if [[ ! -f "${ANDROID_JAR}" ]]; then
  if [[ -f "${BRANDING_SMALI}/WearableSyncHelper.smali" ]]; then
    echo "Android SDK not found — using prebuilt wearable smali"
    exit 0
  fi
  echo "ERROR: Android SDK missing and no prebuilt wearable smali"
  exit 1
fi

bash "${ROOT}/scripts/compile-music-sync-java.sh"
bash "${ROOT}/scripts/compile-interval-timer-java.sh"

mapfile -t STUB_FILES < <(find "${JAVA_STUBS}" -name '*.java' | sort)

echo "Compiling wearable bridge + sync UI classes..."
rm -rf "${CLASSES_DIR}"
mkdir -p "${CLASSES_DIR}"
javac \
  --release 8 \
  -classpath "${ANDROID_JAR}:${JAVA_STUBS}:${MUSIC_CLASSES}:${INTERVAL_CLASSES}" \
  -d "${CLASSES_DIR}" \
  "${STUB_FILES[@]}" \
  "${WEARABLE_JAVA[@]}"

echo "Dexing..."
rm -f "${DEX_FILE}"
mkdir -p "${OUT_DIR}/dex"
mapfile -t DEX_CLASSES < <(find "${CLASSES_DIR}/com/isaigu/gymapp/wearable" -name '*.class' | sort)
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
rm -f "${BRANDING_SMALI}"/*.smali
while IFS= read -r -d '' file; do
  cp "${file}" "${BRANDING_SMALI}/$(basename "${file}")"
  echo "  -> wearable/$(basename "${file}")"
done < <(find "${SMALI_OUT}/com/isaigu/gymapp/wearable" -name '*.smali' -print0)

if [[ ! -f "${BRANDING_SMALI}/WearableSyncHelper.smali" ]]; then
  echo "ERROR: WearableSyncHelper.smali not produced"
  exit 1
fi

echo "Wearable bridge Java compile complete."
