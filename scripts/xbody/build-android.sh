#!/bin/sh
# "XEMS за XBody" Android app: prepares the USB stick from a phone / tablet (OTG) — the PC tools' job
# (scripts/xbody/stick) for people without a PC. Carries the stick of the current mod: run build.py first.
#   sh scripts/xbody/build-android.sh   → build/xbody-dist/xems-fleshka-vN.apk   (gitignored, hand it over)
# javac (android.jar, Java 8) → dx → baksmali → apktool b → uber-apk-signer (its debug key, like xems27.apk).
set -eu
REPO=$(cd "$(dirname "$0")/../.." && pwd)
TOOLS=$REPO/tools
SRC=$REPO/scripts/xbody/android
USB=$REPO/build/xbody-dist/usb
T=$REPO/build/xandroid
[ -f "$USB/xems/VERSION" ] || { echo "build-android: run scripts/xbody/build.py first"; exit 1; }
[ -s "$REPO/android-sdk/platforms/android-30/android.jar" ] || bash "$REPO/scripts/setup-android-toolchain.sh"
[ -f "$TOOLS/apktool.jar" ] || curl -fsSL -o "$TOOLS/apktool.jar" \
	https://github.com/iBotPeaches/Apktool/releases/download/v2.9.3/apktool_2.9.3.jar
[ -f "$TOOLS/uber-apk-signer.jar" ] || curl -fsSL -o "$TOOLS/uber-apk-signer.jar" \
	https://github.com/patrickfav/uber-apk-signer/releases/download/v1.3.0/uber-apk-signer-1.3.0.jar
V=$(tr -d '\r\n ' < "$USB/xems/VERSION")
rm -rf "$T"
mkdir -p "$T/classes" "$T/apk/assets/fleshka" "$T/apk/res/drawable"
javac --release 8 -nowarn -encoding UTF-8 -classpath "$REPO/android-sdk/platforms/android-30/android.jar" \
	-d "$T/classes" $(find "$SRC/src" -name '*.java') 2>&1 | grep -v 'bootstrap\|^Note\|warning: \[options\]\|^1 warning' || true
java -cp "$TOOLS/dx.jar" com.android.dx.command.Main --dex --min-sdk-version=21 --output="$T/classes.dex" "$T/classes"
java -jar "$TOOLS/baksmali.jar" d "$T/classes.dex" -o "$T/apk/smali"
cp -r "$USB"/. "$T/apk/assets/fleshka/"
cp "$SRC/ic_launcher.png" "$T/apk/res/drawable/ic_launcher.png"
sed "s/@VERSION@/$V/g" "$SRC/AndroidManifest.xml" > "$T/apk/AndroidManifest.xml"
cat > "$T/apk/apktool.yml" <<YML
version: 2.9.3
apkFileName: xems-fleshka.apk
isFrameworkApk: false
usesFramework:
  ids:
  - 1
sdkInfo:
  minSdkVersion: '21'
  targetSdkVersion: '29'
packageInfo:
  forcedPackageId: '127'
versionInfo:
  versionCode: '$V'
  versionName: '$V'
doNotCompress:
- gz
- uf2
YML
java -jar "$TOOLS/apktool.jar" b "$T/apk" -o "$T/unsigned.apk" > "$T/apktool.log" 2>&1 || { tail -20 "$T/apktool.log"; exit 1; }
java -jar "$TOOLS/uber-apk-signer.jar" --apks "$T/unsigned.apk" -o "$T/signed" --allowResign > "$T/sign.log" 2>&1 \
	|| { tail -20 "$T/sign.log"; exit 1; }
OUT=$REPO/build/xbody-dist/xems-fleshka-v$V.apk
cp "$(ls "$T"/signed/*.apk | head -1)" "$OUT"
unzip -l "$OUT" | grep -q 'assets/fleshka/xems/payload.tar.gz' || { echo "build-android: payload missing in the APK"; exit 1; }
echo "build-android: $OUT ($(wc -c < "$OUT") bytes, mod v$V)"
