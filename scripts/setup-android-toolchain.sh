#!/usr/bin/env bash
# Java → smali toolchain without the Google Android SDK (cloud sessions: dl.google.com is blocked).
# Puts into gitignored folders what compile-*-java.sh expect:
#   android-sdk/platforms/android-30/android.jar   Robolectric android-all 11 (API 30), Maven Central
#   android-sdk/build-tools/30.0.3/d8              wrapper → dx (dalvik-dx 14, Maven Central)
#   tools/baksmali.jar                              baksmali 2.5.2 (bitbucket.org/JesusFreke)
# dx output differs from d8 (registers, line numbers) though it is equivalent: after compiling,
# commit only the smali of classes whose Java you changed (plus their inner classes) and
# `git checkout` the rest of branding/smali — see CLAUDE.md.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
M=https://repo1.maven.org/maven2
JAR="${ROOT}/android-sdk/platforms/android-30/android.jar"
D8="${ROOT}/android-sdk/build-tools/30.0.3/d8"
mkdir -p "$(dirname "${JAR}")" "$(dirname "${D8}")" "${ROOT}/tools"
[[ -s "${JAR}" ]] || curl -fL --retry 3 -o "${JAR}" "${M}/org/robolectric/android-all/11-robolectric-6757853/android-all-11-robolectric-6757853.jar"
[[ -s "${ROOT}/tools/dx.jar" ]] || curl -fL --retry 3 -o "${ROOT}/tools/dx.jar" "${M}/com/jakewharton/android/repackaged/dalvik-dx/14.0.0_r21/dalvik-dx-14.0.0_r21.jar"
[[ -s "${ROOT}/tools/baksmali.jar" ]] || curl -fL --retry 3 -o "${ROOT}/tools/baksmali.jar" https://bitbucket.org/JesusFreke/smali/downloads/baksmali-2.5.2.jar
cat > "${D8}" <<'WRAP'
#!/usr/bin/env bash
# d8-compatible wrapper around dx (scripts/setup-android-toolchain.sh). Accepts what the compile
# scripts pass: --min-api N --lib JAR --output DIR <class files...>
set -euo pipefail
HERE="$(cd "$(dirname "$0")/../../.." && pwd)"
api=21; out=""; files=()
while [[ $# -gt 0 ]]; do
  case "$1" in
    --min-api) api="$2"; shift 2;;
    --lib|--classpath) shift 2;;
    --output) out="$2"; shift 2;;
    --release|--debug) shift;;
    *) files+=("$1"); shift;;
  esac
done
mkdir -p "$out"
exec java -cp "$HERE/tools/dx.jar" com.android.dx.command.Main --dex --no-strict --min-sdk-version="$api" \
  --output="$out/classes.dex" "${files[@]}"
WRAP
chmod +x "${D8}"
echo "toolchain ready: $(basename "${JAR}"), d8 → dx, baksmali"
