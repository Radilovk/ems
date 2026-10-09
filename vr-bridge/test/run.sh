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
mkdir -p "$OUT/shimlib"   # the game's original loader stand-in, found by the shim through LD_LIBRARY_PATH
c++ -std=c++17 -O2 -fPIC -shared -fvisibility=hidden -I"$SDK/include" "$HERE/fake_loader.cpp" \
  -o "$OUT/shimlib/libopenxr_loader_orig_xems.so"

rm -rf "$OUT/cls"; mkdir -p "$OUT/cls"
V="$ROOT/branding/java/src/com/isaigu/gymapp/wearable/vr"   # the app-independent part of the tablet side
VR=("$V/VrWire.java" "$V/VrHapticEvent.java" "$V/VrHapticSink.java" "$V/VrClockSync.java" "$V/VrTelemetryReceiver.java" "$V/VrPulses.java" "$V/VrNoiseGate.java")
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
[[ $rc -eq 0 ]] || exit "$rc"

# Again with the tablet baked into the .so by the patcher (no env, no property) — what --tablet ships.
PYTHONPATH="$HERE/../patcher" python3 -c 'import sys, xems_vr_patch as p
open(sys.argv[2], "wb").write(p.bake_target(open(sys.argv[1], "rb").read(), sys.argv[3]))' \
  "$OUT/layer/libXrApiLayer_xems_haptics.so" "$OUT/baked.so" "127.0.0.1:$PORT"
java -cp "$OUT/cls:$JAR" VrReceiverHostTest "$PORT" 4500 > "$OUT/rx2.log" 2>&1 &
RX=$!
until grep -q READY "$OUT/rx2.log" 2>/dev/null; do sleep 0.1; done
env -u XEMS_VR_TARGET "$OUT/host_driver" "$OUT/baked.so"
wait "$RX" && rc=0 || rc=$?
echo "— baked target:"; cat "$OUT/rx2.log"
[[ $rc -eq 0 ]] || exit "$rc"

# Loader-shim mode: the game loads the shim as its loader; the real one sits beside it (what Godot games get).
PYTHONPATH="$HERE/../patcher" python3 -c 'import sys, xems_vr_patch as p
open(sys.argv[2], "wb").write(p.bake_target(open(sys.argv[1], "rb").read(), sys.argv[3]))' \
  "$OUT/layer/libopenxr_loader_xems_shim.so" "$OUT/shim_baked.so" "127.0.0.1:$PORT"
java -cp "$OUT/cls:$JAR" VrReceiverHostTest "$PORT" 4500 > "$OUT/rx3.log" 2>&1 &
RX=$!
until grep -q READY "$OUT/rx3.log" 2>/dev/null; do sleep 0.1; done
env -u XEMS_VR_TARGET LD_LIBRARY_PATH="$OUT/shimlib" "$OUT/host_driver" "$OUT/shim_baked.so" shim
wait "$RX" && rc=0 || rc=$?
echo "— loader shim:"; cat "$OUT/rx3.log"
exit "$rc"
