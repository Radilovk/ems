#!/usr/bin/env bash
# Host end-to-end: real layer .so (host build) -> UDP loopback -> real tablet receiver (JVM, android stubs).
#   bash vr-bridge/test/run.sh        needs: cmake, clang++/g++, javac, android-sdk/platforms/android-30/android.jar
set -euo pipefail
HERE="$(cd "$(dirname "$0")" && pwd)"; ROOT="$(cd "$HERE/../.." && pwd)"
OUT="${TMPDIR:-/tmp}/xems-vr-test"; mkdir -p "$OUT"
JAR="$ROOT/android-sdk/platforms/android-30/android.jar"
[[ -s "$JAR" ]] || { echo "missing $JAR — bash scripts/setup-android-toolchain.sh"; exit 1; }
SDK="${OPENXR_SDK_DIR:-$OUT/OpenXR-SDK}"
[[ -f "$SDK/include/openxr/openxr.h" ]] || git clone -q --depth 1 --branch release-1.1.38 \
  https://github.com/KhronosGroup/OpenXR-SDK.git "$SDK"
PORT="${XEMS_VR_TEST_PORT:-47811}"

cmake -S "$HERE/../quest-layer" -B "$OUT/layer" -DOPENXR_SDK_DIR="$SDK" -DCMAKE_BUILD_TYPE=Release >/dev/null
cmake --build "$OUT/layer" 2>&1 | grep -E 'warning|error' || true
c++ -std=c++17 -O2 -I"$SDK/include" "$HERE/host_driver.cpp" -ldl -o "$OUT/host_driver"

rm -rf "$OUT/cls"; mkdir -p "$OUT/cls"
V="$ROOT/branding/java/src/com/isaigu/gymapp/wearable/vr"   # the app-independent part of the tablet side
VR=("$V/VrWire.java" "$V/VrHapticEvent.java" "$V/VrHapticSink.java" "$V/VrClockSync.java" "$V/VrTelemetryReceiver.java" "$V/VrPulses.java")
javac -source 8 -target 8 -nowarn -d "$OUT/cls" -cp "$JAR" \
  "$HERE"/stubs/android/*/*.java "${VR[@]}" "$HERE/VrReceiverHostTest.java" "$HERE/VrPulsesHostTest.java" 2>&1 \
  | grep -v 'bootstrap classpath' || true

java -cp "$OUT/cls:$JAR" VrPulsesHostTest
java -cp "$OUT/cls:$JAR" VrReceiverHostTest "$PORT" 4500 > "$OUT/rx.log" 2>&1 &
RX=$!
until grep -q READY "$OUT/rx.log" 2>/dev/null; do sleep 0.1; done
XEMS_VR_TARGET="127.0.0.1:$PORT" "$OUT/host_driver" "$OUT/layer/libXrApiLayer_xems_haptics.so"
wait "$RX" && rc=0 || rc=$?
cat "$OUT/rx.log"
exit "$rc"
