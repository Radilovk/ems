#!/usr/bin/env bash
# XEMS bHaptics listener (personal research tool, NOT shipped in any customer APK): javac → d8/dx → apktool wraps the
# manifest → classes.dex goes in → debug-signed. Output: bhaptics-spy/build/xems-bhaptics-spy.apk
# Needs android-sdk/platforms/android-30/android.jar + build-tools/30.0.3/d8 (bash scripts/setup-android-toolchain.sh).
set -euo pipefail
HERE="$(cd "$(dirname "$0")" && pwd)"; ROOT="$(dirname "$HERE")"; TOOLS="$ROOT/tools"; B="$HERE/build"
rm -rf "$B"; mkdir -p "$B/classes" "$B/proj" "$TOOLS"
[[ -f "$TOOLS/apktool.jar" ]] || curl -fsSL -o "$TOOLS/apktool.jar" https://github.com/iBotPeaches/Apktool/releases/download/v2.9.3/apktool_2.9.3.jar
[[ -f "$TOOLS/uber-apk-signer.jar" ]] || curl -fsSL -o "$TOOLS/uber-apk-signer.jar" https://github.com/patrickfav/uber-apk-signer/releases/download/v1.3.0/uber-apk-signer-1.3.0.jar
javac -nowarn -source 8 -target 8 -cp "$ROOT/android-sdk/platforms/android-30/android.jar" -d "$B/classes" "$HERE"/src/com/xems/bhspy/*.java 2>&1 | grep -v -E 'Picked up|^Note|warning' || true
"$ROOT/android-sdk/build-tools/30.0.3/d8" --min-api 24 --lib "$ROOT/android-sdk/platforms/android-30/android.jar" --output "$B" $(find "$B/classes" -name '*.class')
cp -r "$HERE/skeleton/." "$B/proj/"
java -jar "$TOOLS/apktool.jar" b "$B/proj" -o "$B/unsigned.apk" 2>&1 | grep -v -E 'Picked up|^I:' || true
python3 - "$B" <<'PY'
import sys, zipfile, shutil
b = sys.argv[1]
src = zipfile.ZipFile(f"{b}/unsigned.apk")
dst = zipfile.ZipFile(f"{b}/withdex.apk", "w", zipfile.ZIP_DEFLATED)
for i in src.infolist():
    dst.writestr(i, src.read(i.filename))
dst.write(f"{b}/classes.dex", "classes.dex")
dst.close()
PY
java -jar "$TOOLS/uber-apk-signer.jar" --apks "$B/withdex.apk" -o "$B/signed" --allowResign 2>&1 | grep -E 'VERIFY|SUCCESS|ERROR|fail' | head -5
cp "$B"/signed/withdex-aligned-debugSigned.apk "$B/xems-bhaptics-spy.apk"
ls -la "$B/xems-bhaptics-spy.apk"
