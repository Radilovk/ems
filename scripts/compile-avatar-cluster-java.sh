#!/usr/bin/env bash
# Compile AvatarClusterLayout.java to smali (prebuilt fallback when SDK missing).
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
JAVA_SRC="${ROOT}/branding/java/src/com/isaigu/gymapp/widget/AvatarClusterLayout.java"
OUT_DIR="${ROOT}/build/avatar-cluster-java"
CLASSES_DIR="${OUT_DIR}/classes"
DEX_FILE="${OUT_DIR}/classes.dex"
SMALI_OUT="${OUT_DIR}/smali"
BRANDING_SMALI="${ROOT}/branding/smali/widget"
ANDROID_JAR="${ROOT}/android-sdk/platforms/android-30/android.jar"
D8="${ROOT}/android-sdk/build-tools/30.0.3/d8"
BAKSMALI="${ROOT}/tools/baksmali.jar"
PREBUILT="${BRANDING_SMALI}/AvatarClusterLayout.smali"

mkdir -p "${CLASSES_DIR}" "${SMALI_OUT}" "${BRANDING_SMALI}" "${OUT_DIR}"

if [[ ! -f "${ANDROID_JAR}" ]]; then
  if [[ -f "${PREBUILT}" ]]; then
    echo "Android SDK not found — using prebuilt ${PREBUILT}"
    exit 0
  fi
  echo "ERROR: Android SDK missing (${ANDROID_JAR}) and no prebuilt AvatarClusterLayout.smali"
  exit 1
fi

echo "Compiling AvatarClusterLayout..."
rm -rf "${CLASSES_DIR}"
mkdir -p "${CLASSES_DIR}"
javac --release 8 -classpath "${ANDROID_JAR}" -d "${CLASSES_DIR}" "${JAVA_SRC}"

echo "Dexing..."
rm -f "${DEX_FILE}"
mkdir -p "${OUT_DIR}/dex"
(
  cd "${CLASSES_DIR}"
  "${D8}" --min-api 21 --lib "${ANDROID_JAR}" --output "${OUT_DIR}/dex" \
    com/isaigu/gymapp/widget/AvatarClusterLayout.class
)
mv "${OUT_DIR}/dex/classes.dex" "${DEX_FILE}"

echo "Baksmaling..."
rm -rf "${SMALI_OUT}"
java -jar "${BAKSMALI}" d "${DEX_FILE}" -o "${SMALI_OUT}"

install -m 0644 "${SMALI_OUT}/com/isaigu/gymapp/widget/AvatarClusterLayout.smali" "${PREBUILT}"
echo "Installed ${PREBUILT}"
