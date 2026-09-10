#!/usr/bin/env bash
# Build X EMS PRO xems27 APK (full apktool rebuild + install-safe manifest).
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
DECOMPILED="${ROOT}/analysis/xems27-decompiled"
ANDROID_HOME="${ANDROID_HOME:-${ROOT}/android-sdk}"
BUILD_TOOLS="${ANDROID_HOME}/build-tools/34.0.0"
export PATH="${ROOT}/tools:${BUILD_TOOLS}:${ANDROID_HOME}/platform-tools:${PATH}"

WORK="${ROOT}/.build-xems27"
mkdir -p "${WORK}"

echo "==> apktool build"
apktool b "${DECOMPILED}" -o "${WORK}/unsigned.apk"

echo "==> normalize APK structure"
python3 "${ROOT}/fix-apk.py" "${WORK}/unsigned.apk" "${WORK}/fixed.apk"

echo "==> zipalign"
zipalign -f -p 4 "${WORK}/fixed.apk" "${WORK}/aligned.apk"

if [[ ! -f /tmp/debug.keystore ]]; then
  keytool -genkey -v -keystore /tmp/debug.keystore -storepass android -alias androiddebugkey \
    -keypass android -keyalg RSA -keysize 2048 -validity 10000 \
    -dname "CN=Debug, OU=Debug, O=Debug, L=Debug, S=Debug, C=US" >/dev/null 2>&1
fi

echo "==> sign"
apksigner sign \
  --ks /tmp/debug.keystore --ks-pass pass:android --key-pass pass:android \
  --v1-signing-enabled true --v2-signing-enabled true --v3-signing-enabled true \
  --min-sdk-version 21 \
  --out "${ROOT}/X-EMS-PRO-xems27-aligned-debugSigned.apk" "${WORK}/aligned.apk"

echo "==> verify"
apksigner verify --verbose "${ROOT}/X-EMS-PRO-xems27-aligned-debugSigned.apk" | head -6
aapt dump badging "${ROOT}/X-EMS-PRO-xems27-aligned-debugSigned.apk" | head -4
aapt dump permissions "${ROOT}/X-EMS-PRO-xems27-aligned-debugSigned.apk" | grep -i bluetooth || true
echo "Built: ${ROOT}/X-EMS-PRO-xems27-aligned-debugSigned.apk"
