#!/bin/sh
# "XEMS WiEMS" — the light tablet app for one WiEMS unit (wiems/app, docs/xems-wiems-app.md): XBody's training
# screen, no XEMS stack. javac (android.jar, Java 8; WiProto from branding/ is shared with xems27.apk) → dx →
# baksmali → apktool b → uber-apk-signer (its debug key, like xems27.apk).
#   sh scripts/build-wiems-app.sh   → wiems/dist/xems-wiems.apk (committed, like xems27.apk)
# Version: wiems/app/VERSION "<name> <code>" — bump on every change of wiems/app.
set -eu
REPO=$(cd "$(dirname "$0")/.." && pwd)
TOOLS=$REPO/tools
SRC=$REPO/wiems/app
T=$REPO/build/wiems-app
JAR=$REPO/android-sdk/platforms/android-30/android.jar
[ -s "$JAR" ] || bash "$REPO/scripts/setup-android-toolchain.sh"
[ -f "$TOOLS/apktool.jar" ] || curl -fsSL -o "$TOOLS/apktool.jar" \
	https://github.com/iBotPeaches/Apktool/releases/download/v2.9.3/apktool_2.9.3.jar
[ -f "$TOOLS/uber-apk-signer.jar" ] || curl -fsSL -o "$TOOLS/uber-apk-signer.jar" \
	https://github.com/patrickfav/uber-apk-signer/releases/download/v1.3.0/uber-apk-signer-1.3.0.jar
NAME=$(cut -d' ' -f1 "$SRC/VERSION")
CODE=$(cut -d' ' -f2 "$SRC/VERSION" | tr -d '\r\n ')
rm -rf "$T"
mkdir -p "$T/classes" "$T/apk/res/drawable"
javac --release 8 -nowarn -encoding UTF-8 -classpath "$JAR" -d "$T/classes" \
	$(find "$SRC/src" -name '*.java') "$REPO/branding/java/src/com/isaigu/gymapp/bodytech/WiProto.java" 2>&1 \
	| grep -v 'bootstrap\|^Note\|warning: \[options\]\|^1 warning' || true
[ -f "$T/classes/bg/xems/wiems/MainActivity.class" ] || { echo "build-wiems-app: javac failed"; exit 1; }
# dx-safe: no lambdas / anonymous classes (a $1 class is one)
if find "$T/classes" -name '*$[0-9]*.class' | grep -q .; then
	echo "build-wiems-app: anonymous class found:"; find "$T/classes" -name '*$[0-9]*.class'; exit 1
fi
java -cp "$TOOLS/dx.jar" com.android.dx.command.Main --dex --min-sdk-version=21 --output="$T/classes.dex" "$T/classes"
java -jar "$TOOLS/baksmali.jar" d "$T/classes.dex" -o "$T/apk/smali"
cp "$SRC/ic_launcher.png" "$T/apk/res/drawable/ic_launcher.png"
mkdir -p "$T/apk/assets/body"   # the XEMS body figures (art + zone maps), the same as the tablet's
cp "$REPO"/branding/body/*.webp "$T/apk/assets/body/"
sed "s/@NAME@/$NAME/g; s/@CODE@/$CODE/g" "$SRC/AndroidManifest.xml" > "$T/apk/AndroidManifest.xml"
cat > "$T/apk/apktool.yml" <<YML
version: 2.9.3
apkFileName: xems-wiems.apk
isFrameworkApk: false
usesFramework:
  ids:
  - 1
sdkInfo:
  minSdkVersion: '21'
  targetSdkVersion: '29'
packageInfo:
  forcedPackageId: '127'
doNotCompress:
- webp
versionInfo:
  versionCode: '$CODE'
  versionName: '$NAME'
YML
java -jar "$TOOLS/apktool.jar" b "$T/apk" -o "$T/unsigned.apk" > "$T/apktool.log" 2>&1 || { tail -20 "$T/apktool.log"; exit 1; }
java -jar "$TOOLS/uber-apk-signer.jar" --apks "$T/unsigned.apk" -o "$T/signed" --allowResign > "$T/sign.log" 2>&1 \
	|| { tail -20 "$T/sign.log"; exit 1; }
mkdir -p "$REPO/wiems/dist"
cp "$(ls "$T"/signed/*.apk | head -1)" "$REPO/wiems/dist/xems-wiems.apk"
echo "build-wiems-app: wiems/dist/xems-wiems.apk v$NAME ($CODE), $(wc -c < "$REPO/wiems/dist/xems-wiems.apk") bytes"
