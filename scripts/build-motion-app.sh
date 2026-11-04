#!/bin/sh
# "XEMS Движение" — the XEMS Motion app for Android phones / tablets (motion/app, docs/xems-motion.md "The app"): the
# test bench page (motion/viewer) in a WebView + native Bluetooth (all sensors at once, no chooser) + the sensors'
# firmware over the USB cable + recordings to Downloads / share. Same toolchain as the WiEMS app: javac (android.jar,
# Java 8) → dx → baksmali → apktool b → uber-apk-signer.
#   sh scripts/build-motion-app.sh   → motion/dist/xems-motion.apk (committed)
# Version: motion/app/VERSION "<name> <code>" — bump on every change of motion/app, motion/viewer or the firmware.
set -eu
REPO=$(cd "$(dirname "$0")/.." && pwd)
TOOLS=$REPO/tools
SRC=$REPO/motion/app
T=$REPO/build/motion-app
JAR=$REPO/android-sdk/platforms/android-30/android.jar
[ -s "$JAR" ] || bash "$REPO/scripts/setup-android-toolchain.sh"
[ -f "$TOOLS/apktool.jar" ] || curl -fsSL -o "$TOOLS/apktool.jar" \
	https://github.com/iBotPeaches/Apktool/releases/download/v2.9.3/apktool_2.9.3.jar
[ -f "$TOOLS/uber-apk-signer.jar" ] || curl -fsSL -o "$TOOLS/uber-apk-signer.jar" \
	https://github.com/patrickfav/uber-apk-signer/releases/download/v1.3.0/uber-apk-signer-1.3.0.jar
NAME=$(cut -d' ' -f1 "$SRC/VERSION")
CODE=$(cut -d' ' -f2 "$SRC/VERSION" | tr -d '\r\n ')
rm -rf "$T"
mkdir -p "$T/classes" "$T/apk/res/drawable" "$T/apk/res/xml"
javac --release 8 -nowarn -encoding UTF-8 -classpath "$JAR" -d "$T/classes" $(find "$SRC/src" -name '*.java') 2>&1 \
	| grep -v 'bootstrap\|^Note\|warning: \[options\]\|^1 warning' || true
[ -f "$T/classes/bg/xems/motion/MainActivity.class" ] || { echo "build-motion-app: javac failed"; exit 1; }
if find "$T/classes" -name '*$[0-9]*.class' | grep -q .; then       # dx-safe: no anonymous classes
	echo "build-motion-app: anonymous class found:"; find "$T/classes" -name '*$[0-9]*.class'; exit 1
fi
java -cp "$TOOLS/dx.jar" com.android.dx.command.Main --dex --min-sdk-version=23 --output="$T/classes.dex" "$T/classes"
java -jar "$TOOLS/baksmali.jar" d "$T/classes.dex" -o "$T/apk/smali"
cp "$SRC/ic_launcher.png" "$T/apk/res/drawable/ic_launcher.png"
cp "$SRC/res/xml/"*.xml "$T/apk/res/xml/"
# the page, as published at radilovk.github.io/ems/motion/viewer/ (the same relative paths)
mkdir -p "$T/apk/assets/viewer/vendor" "$T/apk/assets/viewer/models" "$T/apk/assets/mocap"
cp "$REPO"/motion/viewer/index.html "$REPO"/motion/viewer/*.js "$T/apk/assets/viewer/"
cp "$REPO"/motion/viewer/vendor/*.js "$T/apk/assets/viewer/vendor/"
cp "$REPO"/motion/viewer/models/*.js "$T/apk/assets/viewer/models/"
cp "$REPO"/motion/mocap/cmu.js "$T/apk/assets/mocap/"
# the sensors' firmware (sh scripts/motion/build-motion.sh): the Bluetooth-update zips hold app.dat + app.bin
for B in sense sense-plus; do
	mkdir -p "$T/apk/assets/fw/$B" "$T/fw-$B"
	unzip -q -o "$REPO/motion/xems-motion-$B-ota.zip" -d "$T/fw-$B"
	cp "$T/fw-$B"/*.dat "$T/apk/assets/fw/$B/app.dat"
	cp "$T/fw-$B"/*.bin "$T/apk/assets/fw/$B/app.bin"
done
sed "s/@NAME@/$NAME/g; s/@CODE@/$CODE/g" "$SRC/AndroidManifest.xml" > "$T/apk/AndroidManifest.xml"
cat > "$T/apk/apktool.yml" <<YML
version: 2.9.3
apkFileName: xems-motion.apk
isFrameworkApk: false
usesFramework:
  ids:
  - 1
sdkInfo:
  minSdkVersion: '23'
  targetSdkVersion: '29'
packageInfo:
  forcedPackageId: '127'
doNotCompress:
- bin
versionInfo:
  versionCode: '$CODE'
  versionName: '$NAME'
YML
java -jar "$TOOLS/apktool.jar" b "$T/apk" -o "$T/unsigned.apk" > "$T/apktool.log" 2>&1 || { tail -20 "$T/apktool.log"; exit 1; }
java -jar "$TOOLS/uber-apk-signer.jar" --apks "$T/unsigned.apk" -o "$T/signed" --allowResign > "$T/sign.log" 2>&1 \
	|| { tail -20 "$T/sign.log"; exit 1; }
mkdir -p "$REPO/motion/dist"
cp "$(ls "$T"/signed/*.apk | head -1)" "$REPO/motion/dist/xems-motion.apk"
echo "build-motion-app: motion/dist/xems-motion.apk v$NAME ($CODE), $(wc -c < "$REPO/motion/dist/xems-motion.apk") bytes"
