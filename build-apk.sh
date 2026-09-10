#!/usr/bin/env bash
# Rebuild xems27.apk with Bulgarian translations from translations/values-bg/
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
TOOLS="${ROOT}/tools"
DECOMPILED="${ROOT}/build/decompiled"
OUT_APK="${ROOT}/xems27.apk"

export PATH="${TOOLS}:${PATH}"

mkdir -p "${ROOT}/build"

if [[ ! -d "${DECOMPILED}" ]]; then
  java -jar "${TOOLS}/apktool.jar" d "${OUT_APK}" -o "${DECOMPILED}" -f
fi

cp "${ROOT}/translations/values-bg/strings.xml" "${DECOMPILED}/res/values-bg/strings.xml"

java -jar "${TOOLS}/apktool.jar" b "${DECOMPILED}" -o "${ROOT}/build/unsigned.apk"
java -jar "${TOOLS}/uber-apk-signer.jar" --apks "${ROOT}/build/unsigned.apk" -o "${ROOT}/build/signed" --allowResign
cp "${ROOT}/build/signed/unsigned-aligned-debugSigned.apk" "${OUT_APK}"

echo "Built: ${OUT_APK}"
