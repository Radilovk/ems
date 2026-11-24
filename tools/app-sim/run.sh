#!/bin/sh
# The whole XEMS app off-device (docs/xems-app-sim.md): xems27.apk → dex2jar → Robolectric, resources from the APK
# itself; our Java freshly compiled on top (overlay), so a change is tested without a new APK.
# Usage: sh tools/app-sim/run.sh [-Dtest=SimBoot]   → tools/app-sim/out/*.png + *.log
set -e
D="$(cd "$(dirname "$0")" && pwd)"; ROOT="$(cd "$D/../.." && pwd)"
O="$D/out"; mkdir -p "$O"
APK="$ROOT/xems27.apk"
if [ ! -f "$D/d2j/dex-tools-2.4.39.jar" ]; then
  mvn -q -B -f "$D/pom-d2j.xml" dependency:copy-dependencies -DoutputDirectory="$D/d2j"
fi
if [ ! -f "$O/app.jar" ] || [ "$APK" -nt "$O/app.jar" ]; then
  java -cp "$D/d2j/*" com.googlecode.dex2jar.tools.Dex2jarCmd -f -o "$O/app.jar" "$APK" >/dev/null 2>&1
fi
# our Java over the APK's copy (the same classes, the source as it is now)
C="$O/overlay"; rm -rf "$C"; mkdir -p "$C"
if [ "${OVERLAY:-1}" = "1" ]; then
  find "$ROOT/branding/java/src" -name '*.java' > "$O/src.txt"
  javac -nowarn -encoding UTF-8 --release 8 -proc:none -classpath "$ROOT/android-sdk/platforms/android-30/android.jar:$O/app.jar" \
    -d "$C" @"$O/src.txt" 2>&1 | grep -v '^Note:\|warning' | head -20 || true
fi
(cd "$C" && jar cf "$O/overlay.jar" . 2>/dev/null || jar cf "$O/overlay.jar" -C "$C" .)
# Robolectric reads the app's manifest (text) and its compiled resources (the APK)
mkdir -p "$D/src/test/resources/com/android/tools"
cat > "$D/src/test/resources/com/android/tools/test_config.properties" <<P
android_merged_manifest=$ROOT/build/decompiled/AndroidManifest.xml
android_resource_apk=$APK
android_custom_package=com.isaigu.gymapp
P
mkdir -p "$O/aar"; cp -n "$D/../ui-shot/out/aar/"*.jar "$O/aar/" 2>/dev/null || true
cd "$D" && mvn -q -B test -Drobolectric.offline=true -Drobolectric.dependency.dir="$D/../ui-shot/out/robo" \
  -Dsim.out="$O" "$@" 2>&1 | grep -E 'SIM|FAIL|Tests run|ERROR.*java|Exception|at sim' | head -60
