#!/usr/bin/env bash
# Build the Quest 3 layer with the Android NDK and refresh vr-bridge/prebuilt/ (what xems_vr_patch.py injects).
#   bash vr-bridge/quest-layer/build-ndk.sh        NDK: $ANDROID_NDK_HOME, else r27c is downloaded to build/ndk
set -euo pipefail
HERE="$(cd "$(dirname "$0")" && pwd)"; ROOT="$(cd "$HERE/../.." && pwd)"
NDK="${ANDROID_NDK_HOME:-$ROOT/build/ndk/android-ndk-r27c}"
if [[ ! -f "$NDK/build/cmake/android.toolchain.cmake" ]]; then
  mkdir -p "$ROOT/build/ndk"
  curl -fL --retry 3 -o "$ROOT/build/ndk/ndk.zip" https://dl.google.com/android/repository/android-ndk-r27c-linux.zip
  (cd "$ROOT/build/ndk" && unzip -q ndk.zip 'android-ndk-r27c/build/*' 'android-ndk-r27c/toolchains/llvm/prebuilt/linux-x86_64/*' \
     'android-ndk-r27c/meta/*' 'android-ndk-r27c/prebuilt/*' 'android-ndk-r27c/source.properties' && rm ndk.zip)
fi
OUT="$ROOT/build/vr-layer"
cmake -S "$HERE" -B "$OUT" -DCMAKE_TOOLCHAIN_FILE="$NDK/build/cmake/android.toolchain.cmake" \
  -DANDROID_ABI=arm64-v8a -DANDROID_PLATFORM=android-29 -DANDROID_STL=c++_static -DCMAKE_BUILD_TYPE=Release \
  ${OPENXR_SDK_DIR:+-DOPENXR_SDK_DIR="$OPENXR_SDK_DIR"} >/dev/null
cmake --build "$OUT"
cp "$OUT/libXrApiLayer_xems_haptics.so" "$ROOT/vr-bridge/prebuilt/arm64-v8a/"
cp "$HERE/manifest/XrApiLayer_xems_haptics.json" "$ROOT/vr-bridge/prebuilt/"
echo "prebuilt updated: vr-bridge/prebuilt/arm64-v8a/libXrApiLayer_xems_haptics.so"
