#!/usr/bin/env bash
# Rebuild xems27.apk with translations and branding.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
TOOLS="${ROOT}/tools"
DECOMPILED="${ROOT}/build/decompiled"
OUT_APK="${ROOT}/xems27.apk"

export PATH="${TOOLS}:${PATH}"

mkdir -p "${ROOT}/build"

if [[ ! -f "${TOOLS}/apktool.jar" ]]; then
  echo "Downloading apktool..."
  curl -fsSL -o "${TOOLS}/apktool.jar" \
    https://github.com/iBotPeaches/Apktool/releases/download/v2.9.3/apktool_2.9.3.jar
fi

if [[ ! -f "${TOOLS}/uber-apk-signer.jar" ]]; then
  echo "Downloading uber-apk-signer..."
  curl -fsSL -o "${TOOLS}/uber-apk-signer.jar" \
    https://github.com/patrickfav/uber-apk-signer/releases/download/v1.3.0/uber-apk-signer-1.3.0.jar
fi

if [[ ! -d "${DECOMPILED}" ]]; then
  java -jar "${TOOLS}/apktool.jar" d "${OUT_APK}" -o "${DECOMPILED}" -f
fi

cp "${ROOT}/translations/values-bg/strings.xml" "${DECOMPILED}/res/values-bg/strings.xml"
cp "${ROOT}"/branding/layouts/*.xml "${DECOMPILED}/res/layout/"
python3 "${ROOT}/scripts/reorder-muscles.py" "${DECOMPILED}"
python3 "${ROOT}/scripts/apply-branding.py"
python3 "${ROOT}/scripts/apply-languages.py"

java -jar "${TOOLS}/apktool.jar" b "${DECOMPILED}" -o "${ROOT}/build/unsigned.apk"
java -jar "${TOOLS}/uber-apk-signer.jar" --apks "${ROOT}/build/unsigned.apk" -o "${ROOT}/build/signed" --allowResign
cp "${ROOT}/build/signed/unsigned-aligned-debugSigned.apk" "${OUT_APK}"

echo "Built: ${OUT_APK}"
