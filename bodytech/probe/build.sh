#!/usr/bin/env bash
# XEMS BT Probe → bodytech/probe/xems-btprobe.apk (no Google SDK needed).
# Needs: android-sdk/platforms/android-30/android.jar + tools/dx.jar (bash scripts/setup-android-toolchain.sh),
#        tools/apktool.jar, tools/uber-apk-signer.jar (downloaded by build-apk.sh, or fetched here).
set -euo pipefail
HERE="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "${HERE}/../.." && pwd)"
JAR="${ROOT}/android-sdk/platforms/android-30/android.jar"
T="${ROOT}/tools"
B="${HERE}/build"
[[ -s "${JAR}" && -s "${T}/dx.jar" ]] || bash "${ROOT}/scripts/setup-android-toolchain.sh" || true
[[ -s "${T}/apktool.jar" ]] || curl -fsSL -o "${T}/apktool.jar" \
  https://github.com/iBotPeaches/Apktool/releases/download/v2.9.3/apktool_2.9.3.jar
[[ -s "${T}/uber-apk-signer.jar" ]] || curl -fsSL -o "${T}/uber-apk-signer.jar" \
  https://github.com/patrickfav/uber-apk-signer/releases/download/v1.3.0/uber-apk-signer-1.3.0.jar
rm -rf "${B}" && mkdir -p "${B}/classes" "${B}/dex"
mapfile -t SRC < <(find "${HERE}/src" -name '*.java' | sort)
javac --release 8 -classpath "${JAR}" -d "${B}/classes" "${SRC[@]}"
( cd "${B}/classes" && mapfile -t CLS < <(find . -name '*.class' | sort) && \
  java -cp "${T}/dx.jar" com.android.dx.command.Main --dex --min-sdk-version=21 \
    --output="${B}/dex/classes.dex" "${CLS[@]}" )
cp -r "${HERE}/app" "${B}/app"
java -jar "${T}/apktool.jar" b "${B}/app" -o "${B}/unsigned.apk" >/dev/null
( cd "${B}/dex" && zip -q "${B}/unsigned.apk" classes.dex )
java -jar "${T}/uber-apk-signer.jar" --apks "${B}/unsigned.apk" -o "${B}/signed" >/dev/null
cp "$(ls "${B}"/signed/*.apk | head -1)" "${HERE}/xems-btprobe.apk"
echo "built ${HERE}/xems-btprobe.apk ($(stat -c %s "${HERE}/xems-btprobe.apk") bytes)"
