#!/usr/bin/env bash
# Compile BETA music-sync classes from Java to smali (avoids hand-written branch bugs).
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
JAVA_SRC="${ROOT}/branding/java/src"
JAVA_STUBS="${ROOT}/branding/java-stubs"
OUT_DIR="${ROOT}/build/music-sync-java"
CLASSES_DIR="${OUT_DIR}/classes"
DEX_FILE="${OUT_DIR}/classes.dex"
SMALI_OUT="${OUT_DIR}/smali"
BRANDING_SMALI="${ROOT}/branding/smali"
ANDROID_JAR="${ROOT}/android-sdk/platforms/android-30/android.jar"
D8="${ROOT}/android-sdk/build-tools/30.0.3/d8"
BAKSMALI="${ROOT}/tools/baksmali.jar"

mkdir -p "${CLASSES_DIR}" "${SMALI_OUT}" "${BRANDING_SMALI}" "${OUT_DIR}"

if [[ ! -f "${ANDROID_JAR}" ]]; then
  PREBUILT=(
    MusicSync.smali
    MusicPlayerHelper.smali
    MusicDiagLog.smali
    AudioOutputLatency.smali
    MusicUriSource.smali
  )
  missing=0
  for name in "${PREBUILT[@]}"; do
    if [[ ! -f "${BRANDING_SMALI}/${name}" ]]; then
      missing=1
      echo "Missing prebuilt ${BRANDING_SMALI}/${name}"
    fi
  done
  if [[ "${missing}" -eq 0 ]]; then
    echo "Android SDK not found — using prebuilt branding/smali for music sync."
    exit 0
  fi
  echo "ERROR: Android SDK missing (${ANDROID_JAR}) and prebuilt smali incomplete."
  exit 1
fi

mapfile -t JAVA_FILES < <(find "${JAVA_SRC}" -name '*.java' | sort)
mapfile -t STUB_FILES < <(find "${JAVA_STUBS}" -name '*.java' | sort)

echo "Compiling ${#JAVA_FILES[@]} music-sync source files..."
rm -rf "${CLASSES_DIR}"
mkdir -p "${CLASSES_DIR}"
javac \
  --release 8 \
  -classpath "${ANDROID_JAR}:${JAVA_STUBS}" \
  -d "${CLASSES_DIR}" \
  "${STUB_FILES[@]}" \
  "${JAVA_FILES[@]}"

echo "Dexing..."
rm -f "${DEX_FILE}"
mkdir -p "${OUT_DIR}/dex"
mapfile -t DEX_CLASSES < <(find "${CLASSES_DIR}/com/isaigu/gymapp" \
  \( -path '*/train/utils/MusicSync*.class' \
     -o -path '*/train/utils/MasterStrengthControl.class' \
     -o -path '*/train/utils/MusicSyncBridge.class' \
     -o -path '*/train/utils/MusicPlayerEngine*.class' \
     -o -path '*/train/utils/AudioOutputLatency.class' \
     -o -path '*/train/utils/MusicUriSource.class' \
     -o -path '*/train/utils/SoundEnvelopeMapper.class' \
     -o -path '*/train/utils/MusicDiagLog.class' \
     -o -path '*/train/utils/StartupPermissions.class' \
     -o -path '*/dialog/MusicSyncHelper*.class' \
     -o -path '*/dialog/MusicPlayerHelper*.class' \) -print | sort)
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

echo "Installing smali to branding/smali..."
find "${BRANDING_SMALI}" -name 'MusicSync*.smali' -delete
find "${BRANDING_SMALI}" -name 'MasterStrengthControl.smali' -delete
find "${BRANDING_SMALI}" -name 'MusicSyncBridge.smali' -delete
find "${BRANDING_SMALI}" -name 'MusicPlayerHelper*.smali' -delete
find "${BRANDING_SMALI}" -name 'MusicPlayerEngine*.smali' -delete
find "${BRANDING_SMALI}" -name 'MusicDiagLog.smali' -delete
while IFS= read -r -d '' file; do
  cp "${file}" "${BRANDING_SMALI}/$(basename "${file}")"
  echo "  -> $(basename "${file}")"
done < <(find "${SMALI_OUT}" \( -name 'MusicSync*.smali' -o -name 'MasterStrengthControl.smali' -o -name 'MusicSyncBridge.smali' -o -name 'MusicPlayerHelper*.smali' -o -name 'MusicPlayerEngine*.smali' -o -name 'AudioOutputLatency.smali' -o -name 'MusicUriSource.smali' -o -name 'SoundEnvelopeMapper.smali' -o -name 'MusicDiagLog.smali' -o -name 'StartupPermissions.smali' \) -print0)

echo "Music-sync Java compile complete."
