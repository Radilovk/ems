#!/bin/sh
# Off-device screenshots of XEMS's own screens: compiles the app's Java (against android.jar + the vendor stubs),
# runs the Robolectric shots, PNGs into tools/ui-shot/out/. Usage: sh tools/ui-shot/run.sh [-Dtest=Shots#name]
set -e
D="$(cd "$(dirname "$0")" && pwd)"; ROOT="$(cd "$D/../.." && pwd)"
CLS="$D/out/classes"; rm -rf "$CLS"; mkdir -p "$CLS"
find "$ROOT/branding/java/src/com/isaigu/gymapp/ai" -name 'Ai*.java' -o -name 'Auto*.java' | head -0 >/dev/null
javac -nowarn -encoding UTF-8 --release 8 -classpath "$ROOT/android-sdk/platforms/android-30/android.jar" \
  -sourcepath "$ROOT/branding/java/src:$ROOT/branding/java-stubs" -d "$CLS" \
  "$ROOT/branding/java/src/com/isaigu/gymapp/ai/AiTrain.java" "$ROOT/branding/java/src/com/isaigu/gymapp/ai/AiWizard.java" "$ROOT/branding/java/src/com/isaigu/gymapp/ai/AiChatDrawer.java" "$ROOT/branding/java/src/com/isaigu/gymapp/ai/AiCoachBar.java" "$ROOT/branding/java/src/com/isaigu/gymapp/ai/VoiceSettings.java" "$ROOT/branding/java/src/com/isaigu/gymapp/widget/XemsUi.java" \
  2>&1 | grep -v '^Note:\|warning' | head -20
# the vendor stubs must not shadow the framework in the shots (android.* comes from Robolectric)
rm -rf "$CLS/android" "$CLS/androidx"
(cd "$CLS" && jar cf "$D/out/app.jar" .)
mkdir -p "$D/out/aar"
for f in $(find "$HOME/.m2/repository/androidx/test" -name '*.aar' 2>/dev/null); do
  unzip -o -q -p "$f" classes.jar > "$D/out/aar/$(basename "$f" .aar).jar"
done
cd "$D" && mvn -q -B test -Drobolectric.offline=true -Drobolectric.dependency.dir="$D/out/robo" -Dshot.classes="$CLS" -Dshot.out="$D/out" -Dshot.res="$ROOT/build/decompiled/res" "$@" 2>&1 \
  | grep -E 'SHOT|FAIL|Tests run|Exception|Error|at xems|at com.isaigu' | head -40
