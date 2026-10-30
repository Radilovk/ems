#!/usr/bin/env bash
# iComon's ICDeviceManager SDK (branding/vendor/icomon/ICDeviceManager.aar, Java 11 bytecode) → real D8 (R8 from
# Google Maven: desugars nestmates / lambdas, which dx cannot) → baksmali → branding/smali/icomon-sdk/.
# Without android.jar or R8 the committed smali is kept (like every compile-*-java.sh).
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
AAR="${ROOT}/branding/vendor/icomon/ICDeviceManager.aar"
OUT="${ROOT}/build/icomon-sdk"
SMALI_DST="${ROOT}/branding/smali/icomon-sdk"
ANDROID_JAR="${ROOT}/android-sdk/platforms/android-30/android.jar"
BAKSMALI="${ROOT}/tools/baksmali.jar"
R8_VER="8.2.47"
R8="${ROOT}/tools/r8-${R8_VER}.jar"

bash "${ROOT}/scripts/icomon-sdk-jars.sh"

if [[ ! -f "${ANDROID_JAR}" || ! -f "${BAKSMALI}" ]]; then
  echo "iComon SDK: toolchain missing — keeping prebuilt smali in branding/smali/icomon-sdk"
  exit 0
fi
if [[ ! -f "${R8}" ]]; then
  mkdir -p "${ROOT}/tools"
  curl -fsSL -o "${R8}.part" \
    "https://dl.google.com/android/maven2/com/android/tools/r8/${R8_VER}/r8-${R8_VER}.jar" \
    && mv "${R8}.part" "${R8}" || { rm -f "${R8}.part"; echo "iComon SDK: no R8 — keeping prebuilt smali"; exit 0; }
fi

JDK_HOME="$(dirname "$(dirname "$(readlink -f "$(command -v java)")")")"
rm -rf "${OUT}/dex" "${OUT}/smali"
mkdir -p "${OUT}/dex"
java -cp "${R8}" com.android.tools.r8.D8 --release --min-api 21 \
  --lib "${ANDROID_JAR}" --lib "${JDK_HOME}" \
  --output "${OUT}/dex" "${OUT}"/jars/*.jar 2>&1 | grep -v "Picked up" || true
[[ -f "${OUT}/dex/classes.dex" ]] || { echo "ERROR: iComon SDK dex not produced"; exit 1; }
java -jar "${BAKSMALI}" d "${OUT}/dex/classes.dex" -o "${OUT}/smali" 2>&1 | grep -v "Picked up" || true
rm -rf "${SMALI_DST}"
mkdir -p "${SMALI_DST}"
cp -r "${OUT}/smali/." "${SMALI_DST}/"
echo "iComon SDK smali installed: $(find "${SMALI_DST}" -name '*.smali' | wc -l) classes in branding/smali/icomon-sdk"
