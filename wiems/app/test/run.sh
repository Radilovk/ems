#!/bin/sh
# Offline test of the WiEMS tablet app: session ops + screenshots of the real screen at 1280×800 (Java2D shim).
#   sh wiems/app/test/run.sh [OUTDIR]   (screenshots default to build/wiems-app/shots)
set -eu
HERE=$(cd "$(dirname "$0")" && pwd)
REPO=$(cd "$HERE/../../.." && pwd)
JAR=$REPO/android-sdk/platforms/android-30/android.jar
[ -s "$JAR" ] || bash "$REPO/scripts/setup-android-toolchain.sh"
OUT=$(mktemp -d)
SHOTS=${1:-$REPO/build/wiems-app/shots}
mkdir -p "$SHOTS"
SRC=$REPO/wiems/app/src/bg/xems/wiems
javac --release 8 -nowarn -encoding UTF-8 -classpath "$JAR" -d "$OUT" \
	$(find "$HERE/shim" -name '*.java') "$SRC/Host.java" "$SRC/XView.java" "$SRC/Session.java" "$SRC/Safe.java" \
	"$SRC/Seen.java" "$SRC/BodyFig.java" "$SRC/Procs.java" "$REPO/branding/java/src/com/isaigu/gymapp/bodytech/WiProto.java" "$HERE/bg/xems/wiems/AppTest.java" \
	"$HERE/MainActivity.java" 2>&1 | grep -v '^Note\|warning' || true
mkdir -p "$OUT/assets/body" "$OUT/assets/art"
cp "$REPO"/xbody/overlay/opt/xems/art/*.png "$OUT/assets/art/"
python3 -c "
import sys,glob,os
from PIL import Image
for f in glob.glob('$REPO/branding/body/*.webp'):
    Image.open(f).save(os.path.join('$OUT/assets/body', os.path.basename(f)), 'PNG')
"
java -Djava.awt.headless=true -Dassets="$OUT/assets" -cp "$OUT:$JAR" bg.xems.wiems.AppTest "$SHOTS"
rm -rf "$OUT"
