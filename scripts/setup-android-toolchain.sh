#!/usr/bin/env bash
# Java → smali toolchain without the Google Android SDK (cloud sessions: dl.google.com is blocked).
# Puts into gitignored folders what compile-*-java.sh expect:
#   android-sdk/platforms/android-30/android.jar   Robolectric android-all 11 (API 30), Maven Central
#   android-sdk/build-tools/30.0.3/d8              wrapper → dx (dalvik-dx 14, Maven Central)
#   tools/baksmali.jar                              baksmali 2.5.2 (bitbucket.org/JesusFreke); if refused,
#                                                   a wrapper over apktool.jar's baksmali (scripts/toolchain)
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
if [[ ! -s "${ROOT}/tools/baksmali.jar" ]]; then
  if ! curl -fL --retry 3 -o "${ROOT}/tools/baksmali.jar" https://bitbucket.org/JesusFreke/smali/downloads/baksmali-2.5.2.jar; then
    # bitbucket refuses some networks (HTTP 405): build a "baksmali d <dex> -o <dir>" jar on top of the baksmali
    # library that apktool.jar already carries (scripts/toolchain/BakMain.java).
    rm -f "${ROOT}/tools/baksmali.jar"
    [[ -s "${ROOT}/tools/apktool.jar" ]] || curl -fL --retry 3 -o "${ROOT}/tools/apktool.jar" \
      https://github.com/iBotPeaches/Apktool/releases/download/v2.9.3/apktool_2.9.3.jar
    BK="$(mktemp -d)"
    javac -cp "${ROOT}/tools/apktool.jar" -d "${BK}" "${ROOT}/scripts/toolchain/BakMain.java"
    printf 'Main-Class: BakMain\nClass-Path: apktool.jar\n' > "${BK}/manifest.txt"
    jar cfm "${ROOT}/tools/baksmali.jar" "${BK}/manifest.txt" -C "${BK}" BakMain.class
    rm -rf "${BK}"
  fi
fi
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
