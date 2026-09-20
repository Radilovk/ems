#!/usr/bin/env bash
# Compile segment program classes from Java to smali.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
JAVA_SRC="${ROOT}/branding/java/src"
JAVA_STUBS="${ROOT}/branding/java-stubs"
OUT_DIR="${ROOT}/build/segment-program-java"
CLASSES_DIR="${OUT_DIR}/classes"
DEX_FILE="${OUT_DIR}/classes.dex"
SMALI_OUT="${OUT_DIR}/smali"
BRANDING_SMALI="${ROOT}/branding/smali"
ANDROID_JAR="${ROOT}/android-sdk/platforms/android-30/android.jar"
D8="${ROOT}/android-sdk/build-tools/30.0.3/d8"
BAKSMALI="${ROOT}/tools/baksmali.jar"

SEGMENT_JAVA=(
  "${JAVA_SRC}/com/isaigu/gymapp/dialog/ProgramSegment.java"
  "${JAVA_SRC}/com/isaigu/gymapp/dialog/SegmentProgramEntry.java"
  "${JAVA_SRC}/com/isaigu/gymapp/dialog/SegmentProgramStorage.java"
  "${JAVA_SRC}/com/isaigu/gymapp/dialog/SegmentProgramRunner.java"
  "${JAVA_SRC}/com/isaigu/gymapp/dialog/SegmentProgramUiHelper.java"
)

mkdir -p "${CLASSES_DIR}" "${SMALI_OUT}" "${BRANDING_SMALI}" "${OUT_DIR}"

if [[ ! -f "${ANDROID_JAR}" ]]; then
  if compgen -G "${BRANDING_SMALI}/SegmentProgram*.smali" > /dev/null; then
    echo "Android SDK not found — using prebuilt segment program smali"
    exit 0
  fi
  echo "ERROR: Android SDK missing and no prebuilt segment program smali"
  exit 1
fi

mapfile -t STUB_FILES < <(find "${JAVA_STUBS}" -name '*.java' | sort)

echo "Compiling segment program classes..."
rm -rf "${CLASSES_DIR}"
mkdir -p "${CLASSES_DIR}"
javac \
  --release 8 \
  -classpath "${ANDROID_JAR}:${JAVA_STUBS}" \
  -d "${CLASSES_DIR}" \
  "${STUB_FILES[@]}" \
  "${SEGMENT_JAVA[@]}"

echo "Dexing..."
rm -f "${DEX_FILE}"
mkdir -p "${OUT_DIR}/dex"
mapfile -t DEX_CLASSES < <(find "${CLASSES_DIR}/com/isaigu/gymapp/dialog" \
  \( -name 'ProgramSegment.class' \
  -o -name 'SegmentProgram*.class' \) -print | sort)
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
find "${BRANDING_SMALI}" -maxdepth 1 \( -name 'ProgramSegment.smali' -o -name 'SegmentProgram*.smali' \) -delete
while IFS= read -r -d '' file; do
  cp "${file}" "${BRANDING_SMALI}/$(basename "${file}")"
  echo "  -> $(basename "${file}")"
done < <(find "${SMALI_OUT}" \( -path '*/dialog/ProgramSegment.smali' -o -path '*/dialog/SegmentProgram*.smali' -o -path '*/dialog/-$$Lambda$SegmentProgramUiHelper*.smali' \) -print0)

if [[ ! -f "${BRANDING_SMALI}/SegmentProgramStorage.smali" ]]; then
  echo "ERROR: SegmentProgramStorage.smali not produced"
  exit 1
fi

echo "Segment program Java compile complete."
