#!/usr/bin/env bash
# Build XEMS Studio for Quest 3 → vr-workout/xems-studio.apk (release, signed with the launcher's debug key so
# every build installs over the last). Downloads Godot 4.4.1, its export templates, the Meta OpenXR vendors
# plugin and JDK 17 into $XEMS_TOOLS (default /tmp/xems-godot) once.
#   bash vr-workout/build.sh            needs: an Android SDK (platform 34, build-tools 34) in $ANDROID_HOME
#   bash vr-workout/build.sh shot squat 2.0 player   → a desktop preview PNG (Xvfb), no headset
set -euo pipefail
HERE="$(cd "$(dirname "$0")" && pwd)"; ROOT="$(cd "$HERE/.." && pwd)"
T="${XEMS_TOOLS:-/tmp/xems-godot}"; V=4.4.1
G="$T/Godot_v${V}-stable_linux.x86_64"
TPL="$HOME/.local/share/godot/export_templates/${V}.stable"
GH=https://github.com
mkdir -p "$T"
[[ -x "$G" ]] || { curl -fsSL -o "$T/g.zip" "$GH/godotengine/godot-builds/releases/download/${V}-stable/Godot_v${V}-stable_linux.x86_64.zip"
  unzip -oq "$T/g.zip" -d "$T" && rm "$T/g.zip"; }
[[ -d "$HERE/addons/godotopenxrvendors" ]] || { curl -fsSL -o "$T/v.zip" "$GH/GodotVR/godot_openxr_vendors/releases/download/4.0.0-stable/godotopenxrvendorsaddon.zip"
  rm -rf "$T/v" && unzip -oq "$T/v.zip" -d "$T/v" && cp -r "$T/v/asset/addons" "$HERE/"; }

if [[ "${1:-}" == shot ]]; then
  [[ -d "$HERE/.godot" ]] || timeout 300 "$G" --headless --path "$HERE" --import >/dev/null 2>&1 || true
  out="${XEMS_SHOT:-$HERE/build/shot-${2:-squat}.png}"; mkdir -p "$(dirname "$out")"
  xvfb-run -a -s "-screen 0 1600x900x24" "$G" --path "$HERE" --rendering-driver opengl3 -- \
    --shot="$out" --ex="${2:-squat}" --t="${3:-2.0}" --view="${4:-player}" >/dev/null 2>&1
  echo "$out"; exit 0
fi

[[ -f "$TPL/android_source.zip" ]] || { curl -fsSL -o "$T/t.tpz" "$GH/godotengine/godot-builds/releases/download/${V}-stable/Godot_v${V}-stable_export_templates.tpz"
  rm -rf "$T/t" && unzip -oq "$T/t.tpz" -d "$T/t" && mkdir -p "$TPL" && mv "$T/t/templates/"* "$TPL/" && rm -rf "$T/t" "$T/t.tpz"; }
JDK="$(ls -d "$T"/jdk-17* 2>/dev/null | head -1 || true)"
[[ -n "$JDK" ]] || { curl -fsSL -o "$T/jdk.tgz" "$GH/adoptium/temurin17-binaries/releases/download/jdk-17.0.12%2B7/OpenJDK17U-jdk_x64_linux_hotspot_17.0.12_7.tar.gz"
  tar xzf "$T/jdk.tgz" -C "$T" && rm "$T/jdk.tgz"; JDK="$(ls -d "$T"/jdk-17* | head -1)"; }
SDK="${ANDROID_HOME:?set ANDROID_HOME to an Android SDK (platform 34, build-tools 34)}"
KS="$ROOT/vr-bridge/patcher/android-launcher/debug.keystore"
mkdir -p "$HOME/.config/godot"
cat > "$HOME/.config/godot/editor_settings-4.4.tres" <<S
[gd_resource type="EditorSettings" format=3]

[resource]
export/android/android_sdk_path = "$SDK"
export/android/java_sdk_path = "$JDK"
export/android/debug_keystore = "$KS"
export/android/debug_keystore_user = "androiddebugkey"
export/android/debug_keystore_pass = "android"
S
if [[ "$(cat "$HERE/android/.build_version" 2>/dev/null)" != "${V}.stable" ]]; then
  rm -rf "$HERE/android" && mkdir -p "$HERE/android/build"
  unzip -oq "$TPL/android_source.zip" -d "$HERE/android/build"
  echo "${V}.stable" > "$HERE/android/.build_version" && touch "$HERE/android/build/.gdignore"
fi
export JAVA_HOME="$JDK" PATH="$JDK/bin:$PATH"
export GODOT_ANDROID_KEYSTORE_RELEASE_PATH="$KS" GODOT_ANDROID_KEYSTORE_RELEASE_USER=androiddebugkey \
       GODOT_ANDROID_KEYSTORE_RELEASE_PASSWORD=android
mkdir -p "$HERE/build"; rm -f "$HERE/build/xems-studio.apk"
for i in 1 2 3 4; do      # Maven Central answers 429 now and then; the next try uses the cache
  timeout 1500 "$G" --headless --path "$HERE" --export-release "Quest 3" build/xems-studio.apk > "$HERE/build/export.log" 2>&1 || true
  [[ -s "$HERE/build/xems-studio.apk" ]] && break
  grep -q 429 "$HERE/build/export.log" || { tail -30 "$HERE/build/export.log"; exit 1; }
  sleep $((30 * i))
done
cp "$HERE/build/xems-studio.apk" "$HERE/xems-studio.apk"
echo "built: vr-workout/xems-studio.apk ($(du -h "$HERE/xems-studio.apk" | cut -f1))"
