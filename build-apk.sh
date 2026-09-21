#!/usr/bin/env bash
# Rebuild xems27.apk with translations and branding.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
TOOLS="${ROOT}/tools"
DECOMPILED="${ROOT}/build/decompiled"
OUT_APK="${ROOT}/xems27.apk"

export PATH="${TOOLS}:${PATH}"

mkdir -p "${ROOT}/build"

if [[ ! -f "${TOOLS}/apktool.jar" ]]; then
  echo "Downloading apktool..."
  curl -fsSL -o "${TOOLS}/apktool.jar" \
    https://github.com/iBotPeaches/Apktool/releases/download/v2.9.3/apktool_2.9.3.jar
fi

if [[ ! -f "${TOOLS}/uber-apk-signer.jar" ]]; then
  echo "Downloading uber-apk-signer..."
  curl -fsSL -o "${TOOLS}/uber-apk-signer.jar" \
    https://github.com/patrickfav/uber-apk-signer/releases/download/v1.3.0/uber-apk-signer-1.3.0.jar
fi

BASE_APK="${ROOT}/build/xems27-base.apk"
if [[ ! -f "${BASE_APK}" ]]; then
  echo "Extracting v0.50 base APK from git..."
  git show 724be17:xems27.apk > "${BASE_APK}"
fi

echo "Fresh decompile from v0.50 base (${BASE_APK})..."
rm -rf "${DECOMPILED}"
java -jar "${TOOLS}/apktool.jar" d "${BASE_APK}" -o "${DECOMPILED}" -f

cp "${ROOT}/translations/values-bg/strings.xml" "${DECOMPILED}/res/values-bg/strings.xml"
cp "${ROOT}"/branding/layouts/*.xml "${DECOMPILED}/res/layout/"
python3 "${ROOT}/scripts/reorder-muscles.py" "${DECOMPILED}"
python3 "${ROOT}/scripts/apply-branding.py"
python3 "${ROOT}/scripts/apply-muscle-icons.py"
python3 "${ROOT}/scripts/apply-languages.py"
python3 "${ROOT}/scripts/apply-ui-theme.py"
python3 "${ROOT}/scripts/apply-dark-polish.py"
python3 "${ROOT}/scripts/apply-list-theme.py"
python3 "${ROOT}/scripts/apply-tab-theme.py"
python3 "${ROOT}/scripts/apply-form-theme.py"
python3 "${ROOT}/scripts/apply-impulse-display.py"
python3 "${ROOT}/scripts/apply-slider-theme.py"
python3 "${ROOT}/scripts/apply-avatar-timer.py"
python3 "${ROOT}/scripts/apply-hz-controls.py"
python3 "${ROOT}/scripts/apply-train-ui-refinements.py"
if [[ "${DESIGN_PIPELINE:-0}" == "1" ]]; then
  echo "Design pipeline enabled (DESIGN_PIPELINE=1)..."
  python3 "${ROOT}/scripts/ui-map.py" --check
  python3 "${ROOT}/scripts/apply-design-config.py" --check
  python3 "${ROOT}/scripts/apply-design-config.py"
  python3 "${ROOT}/scripts/apply-branding-train-layouts.py"
else
  echo "Design pipeline skipped (set DESIGN_PIPELINE=1 to apply branding/design train layouts)."
fi
python3 "${ROOT}/scripts/apply-active-pause.py"
python3 "${ROOT}/scripts/apply-active-pause-fixes.py"
python3 "${ROOT}/scripts/apply-login-fix.py"
python3 "${ROOT}/scripts/apply-active-pause-avatar-button.py"
bash "${ROOT}/scripts/compile-avatar-cluster-java.sh"
python3 "${ROOT}/scripts/apply-avatar-proportional-lock.py"
python3 "${ROOT}/scripts/apply-active-pause-pulse-labels.py"
python3 "${ROOT}/scripts/remove-ramp.py"
python3 "${ROOT}/scripts/remove-software-ramp.py"
python3 "${ROOT}/scripts/remove-active-pause-segments.py"
python3 "${ROOT}/scripts/remove-active-pause-settings.py"
python3 "${ROOT}/scripts/apply-settings-username-theme.py"
python3 "${ROOT}/scripts/apply-edit-parameter-scroll.py"
python3 "${ROOT}/scripts/apply-defaults.py"
python3 "${ROOT}/scripts/apply-settings-ui.py"
python3 "${ROOT}/scripts/apply-theme-toggle.py"
python3 "${ROOT}/scripts/remove-demo-mode.py"
python3 "${ROOT}/scripts/apply-guide-tab.py"
python3 "${ROOT}/scripts/apply-bt-latency.py"
python3 "${ROOT}/scripts/apply-ble-scan-lifecycle.py"
if [[ "${BETA_MUSIC:-1}" != "0" ]]; then
  bash "${ROOT}/scripts/compile-music-sync-java.sh"
  python3 "${ROOT}/scripts/apply-beta-features.py"
  python3 "${ROOT}/scripts/apply-music-sync-pulse.py"
  python3 "${ROOT}/scripts/apply-music-sync-slider.py"
  python3 "${ROOT}/scripts/apply-music-sync-controls.py"
  python3 "${ROOT}/scripts/apply-music-player.py"
  bash "${ROOT}/scripts/compile-interval-timer-java.sh"
  python3 "${ROOT}/scripts/apply-interval-timer.py"
  python3 "${ROOT}/scripts/apply-music-training-sync.py"
  python3 "${ROOT}/scripts/apply-block-program.py"
  python3 "${ROOT}/scripts/remove-segment-program-gear.py"
  python3 "${ROOT}/scripts/apply-diag-logging.py"
  python3 "${ROOT}/scripts/verify-music-sync-smali.py"
  python3 "${ROOT}/scripts/verify-beta-safety.py"
  if [[ ! -f "${DECOMPILED}/smali_classes2/com/isaigu/gymapp/dialog/MusicPlayerHelper.smali" ]]; then
    echo "ERROR: BETA_MUSIC=1 but MusicPlayerHelper.smali missing — build would crash after login."
    echo "  Fix compile-music-sync-java.sh or set BETA_MUSIC=0 intentionally."
    exit 1
  fi
  if [[ -f "${DECOMPILED}/smali_classes2/com/isaigu/gymapp/dialog/BlockProgramRunner.smali" ]] \
      && grep -q '\-\$\$Lambda\$BlockProgramRunner' \
        "${DECOMPILED}/smali_classes2/com/isaigu/gymapp/dialog/BlockProgramRunner.smali"; then
    echo "ERROR: BlockProgramRunner.smali references missing lambda classes — training start will crash."
    echo "  Re-run compile-interval-timer-java.sh (BlockProgramRunner must not use lambdas)."
    exit 1
  fi
  python3 "${ROOT}/scripts/verify-interval-timer-smali.py"
else
  echo "BETA music sync disabled (BETA_MUSIC=0)."
fi

java -jar "${TOOLS}/apktool.jar" b "${DECOMPILED}" -o "${ROOT}/build/unsigned.apk"
java -jar "${TOOLS}/uber-apk-signer.jar" --apks "${ROOT}/build/unsigned.apk" -o "${ROOT}/build/signed" --allowResign
SIGNED_APK="${ROOT}/build/signed/unsigned-aligned-debugSigned.apk"
if [[ ! -f "${SIGNED_APK}" ]]; then
  SIGNED_APK="$(find "${ROOT}/build/signed" -maxdepth 1 -name '*.apk' ! -name '*.idsig' -printf '%T@ %p\n' 2>/dev/null | sort -rn | head -1 | cut -d' ' -f2-)"
fi
if [[ -z "${SIGNED_APK}" || ! -f "${SIGNED_APK}" ]]; then
  echo "ERROR: signed APK not found under build/signed/"
  exit 1
fi
cp "${SIGNED_APK}" "${OUT_APK}"
echo "Copied ${SIGNED_APK} -> ${OUT_APK}"

# Broken builds (missing BETA music stack) were ~8.76MB; healthy builds ~8.78MB+.
MIN_APK_BYTES="${MIN_APK_BYTES:-8765000}"
APK_BYTES="$(wc -c < "${OUT_APK}")"
if [[ "${APK_BYTES}" -lt "${MIN_APK_BYTES}" ]]; then
  echo "ERROR: ${OUT_APK} is only ${APK_BYTES} bytes — likely missing BETA music stack (broken login/crash)."
  echo "  Rebuild with BETA_MUSIC=1 (default) and verify MusicPlayerHelper.smali exists."
  exit 1
fi

VERSION_NAME=""
VERSION_CODE=""
if [[ -f "${DECOMPILED}/apktool.yml" ]]; then
  VERSION_NAME="$(grep '^  versionName:' "${DECOMPILED}/apktool.yml" | sed 's/^  versionName: //')"
  VERSION_CODE="$(grep '^  versionCode:' "${DECOMPILED}/apktool.yml" | sed 's/^  versionCode: //')"
  release_version="${ROOT}/RELEASE_VERSION"
  release_text="versionName=${VERSION_NAME}
versionCode=${VERSION_CODE}
"
  if [[ ! -f "${release_version}" ]] || [[ "$(cat "${release_version}")" != "${release_text}" ]]; then
    printf '%s' "${release_text}" > "${release_version}"
  fi
fi

echo ""
echo "=============================================="
echo "  Built: ${OUT_APK}"
echo "  Version: ${VERSION_NAME} (code ${VERSION_CODE})"
echo "=============================================="

if git rev-parse --git-dir >/dev/null 2>&1; then
  apk_dirty=0
  version_dirty=0
  if ! git diff --quiet -- "${OUT_APK}" 2>/dev/null || ! git diff --cached --quiet -- "${OUT_APK}" 2>/dev/null; then
    apk_dirty=1
  fi
  if ! git diff --quiet -- "${ROOT}/RELEASE_VERSION" 2>/dev/null || ! git diff --cached --quiet -- "${ROOT}/RELEASE_VERSION" 2>/dev/null; then
    version_dirty=1
  fi
  if [[ "${apk_dirty}" -eq 1 || "${version_dirty}" -eq 1 ]]; then
    echo ""
    if [[ "${SKIP_APK_COMMIT_CHECK:-0}" == "1" ]]; then
      echo "WARN: Built APK is not committed (SKIP_APK_COMMIT_CHECK=1)."
    else
      echo "ERROR: Built APK is not committed. Users cannot download the new version until you:"
      echo "  git add xems27.apk RELEASE_VERSION"
      echo "  git commit -m \"Build ${VERSION_NAME}\""
      echo "  git push"
      exit 1
    fi
  fi
fi
