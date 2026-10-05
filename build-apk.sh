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
BASE_COMMIT="724be17b049fe267da7f7cc4fabbcd188aa53fc8"
BASE_SHA256="57106241f9d26a218d26c348bf7e6acb9191dc83dc78b65cd4a206bcb8c3f875"
if [[ ! -f "${BASE_APK}" ]]; then
  echo "Extracting v0.50 base APK from git..."
  # a shallow clone (cloud session, CI) does not hold the base commit: fetch just that one commit
  if ! git cat-file -e "${BASE_COMMIT}^{commit}" 2>/dev/null; then
    git fetch --depth=1 origin "${BASE_COMMIT}"
  fi
  git show "${BASE_COMMIT}:xems27.apk" > "${BASE_APK}"
fi
if [[ "$(sha256sum "${BASE_APK}" | cut -d' ' -f1)" != "${BASE_SHA256}" ]]; then
  echo "ERROR: ${BASE_APK} is not the v0.50 base APK (sha256 differs) — delete it and rebuild."
  exit 1
fi

echo "Fresh decompile from v0.50 base (${BASE_APK})..."
rm -rf "${DECOMPILED}"
java -jar "${TOOLS}/apktool.jar" d "${BASE_APK}" -o "${DECOMPILED}" -f

cp "${ROOT}/translations/values-bg/strings.xml" "${DECOMPILED}/res/values-bg/strings.xml"
cp "${ROOT}"/branding/layouts/*.xml "${DECOMPILED}/res/layout/"
python3 "${ROOT}/scripts/apply-version.py"
python3 "${ROOT}/scripts/reorder-muscles.py" "${DECOMPILED}"
python3 "${ROOT}/scripts/apply-branding.py"
python3 "${ROOT}/scripts/apply-muscle-icons.py"
python3 "${ROOT}/scripts/apply-languages.py"
python3 "${ROOT}/scripts/apply-ui-theme.py"
python3 "${ROOT}/scripts/apply-dark-polish.py"
python3 "${ROOT}/scripts/apply-list-theme.py"
python3 "${ROOT}/scripts/apply-client-search-fix.py"
python3 "${ROOT}/scripts/apply-picker-colors.py"
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
python3 "${ROOT}/scripts/apply-main-mode-button.py"
if [[ "${SKIP_JAVA_RECOMPILE:-0}" != "1" ]]; then
  bash "${ROOT}/scripts/compile-xems-license-java.sh"
  bash "${ROOT}/scripts/compile-avatar-cluster-java.sh"
  bash "${ROOT}/scripts/compile-channel-scale-java.sh"
  bash "${ROOT}/scripts/compile-softramp-java.sh"
  bash "${ROOT}/scripts/compile-bodytech-java.sh"
else
  echo "SKIP_JAVA_RECOMPILE=1 — using prebuilt smali in branding/smali/"
fi
python3 "${ROOT}/scripts/apply-avatar-proportional-lock.py"
python3 "${ROOT}/scripts/apply-active-pause-pulse-labels.py"
python3 "${ROOT}/scripts/remove-ramp.py"
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
  if [[ "${SKIP_JAVA_RECOMPILE:-0}" != "1" ]]; then
    bash "${ROOT}/scripts/compile-music-sync-java.sh"
  fi
  python3 "${ROOT}/scripts/apply-beta-features.py"
  python3 "${ROOT}/scripts/apply-live-settings.py"
  python3 "${ROOT}/scripts/apply-music-sync-pulse.py"
  python3 "${ROOT}/scripts/apply-music-sync-slider.py"
  python3 "${ROOT}/scripts/apply-music-sync-controls.py"
  python3 "${ROOT}/scripts/apply-music-player.py"
  python3 "${ROOT}/scripts/apply-music-seek-fix.py"
  if [[ "${SKIP_JAVA_RECOMPILE:-0}" != "1" ]]; then
    bash "${ROOT}/scripts/compile-interval-timer-java.sh"
  fi
  python3 "${ROOT}/scripts/apply-interval-timer.py"
  python3 "${ROOT}/scripts/apply-music-training-sync.py"
  if [[ "${SKIP_JAVA_RECOMPILE:-0}" != "1" ]]; then
    bash "${ROOT}/scripts/compile-wearable-java.sh"
  fi
  python3 "${ROOT}/scripts/apply-wearable-bridge.py"
  python3 "${ROOT}/scripts/apply-wearable-permissions.py"
  python3 "${ROOT}/scripts/apply-pulse-cycle-hook.py"
  python3 "${ROOT}/scripts/apply-ai-session.py"
  python3 "${ROOT}/scripts/apply-exercise-assets.py"
  if [[ "${SKIP_JAVA_RECOMPILE:-0}" != "1" ]]; then
    bash "${ROOT}/scripts/compile-xems-local-java.sh"
  fi
  python3 "${ROOT}/scripts/apply-xems-nav.py"
  python3 "${ROOT}/scripts/apply-local-mode.py"
  python3 "${ROOT}/scripts/apply-ramp-setting.py"
  python3 "${ROOT}/scripts/apply-program-fit.py"
  python3 "${ROOT}/scripts/apply-quick-start.py"
  python3 "${ROOT}/scripts/apply-soft-ramp.py"
  python3 "${ROOT}/scripts/apply-avatar-card.py"
  python3 "${ROOT}/scripts/apply-band-app.py"
  python3 "${ROOT}/scripts/apply-session-report.py"
  python3 "${ROOT}/scripts/apply-plan-tab.py"
  python3 "${ROOT}/scripts/apply-train-swipe-delete-fix.py"
  python3 "${ROOT}/scripts/apply-diag-logging.py"
  python3 "${ROOT}/scripts/verify-music-sync-smali.py"
  python3 "${ROOT}/scripts/verify-beta-safety.py"
  if [[ ! -f "${DECOMPILED}/smali_classes2/com/isaigu/gymapp/dialog/MusicPlayerHelper.smali" ]]; then
    echo "ERROR: BETA_MUSIC=1 but MusicPlayerHelper.smali missing — build would crash after login."
    echo "  Fix compile-music-sync-java.sh or set BETA_MUSIC=0 intentionally."
    exit 1
  fi
  python3 "${ROOT}/scripts/verify-interval-timer-smali.py"
  bash "${ROOT}/scripts/ble-sim/run-hr-policy.sh"
  python3 "${ROOT}/scripts/verify-wearable-smali.py"
else
  echo "BETA music sync disabled (BETA_MUSIC=0)."
fi

# Last: train control routing (depends on music-sync smali when BETA_MUSIC=1).
python3 "${ROOT}/scripts/apply-active-pause-control-fixes.py"
python3 "${ROOT}/scripts/verify-active-pause-routing.py"
python3 "${ROOT}/scripts/apply-arms-channel-scale.py"
python3 "${ROOT}/scripts/verify-arms-channel-scale.py"
# After the train control routing: + / − and the slider act on the selected muscle groups.
python3 "${ROOT}/scripts/apply-part-strength.py"
# After the active-pause listeners are final: 2nd impulse from Hz or MA, 5 s auto-clear (TrainIndex).
python3 "${ROOT}/scripts/apply-train-index.py"
python3 "${ROOT}/scripts/apply-double-impulse.py"
python3 "${ROOT}/scripts/apply-suit-reconnect.py"
# The bodytech suit (service FE50) on the stock row: its XEMS commands become bodytech frames (BtBridge). After every
# patch that rewrites BleDeviceManager / CommandSender / CommandReceiver.
python3 "${ROOT}/scripts/apply-bodytech.py"
python3 "${ROOT}/scripts/verify-bodytech.py"
# After every train row layout patch: name / time / status icons / big + and − (column right of the avatar).
python3 "${ROOT}/scripts/apply-train-info-column.py"
# Every app class that smali references must be installed (a missed one = NoClassDefFoundError at run time).
python3 "${ROOT}/scripts/verify-no-missing-classes.py"

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

# Every release must carry the same signing key, or Android refuses the update over an installed copy
# ("App not installed" / package conflict). uber-apk-signer prefers ~/.android/debug.keystore when one exists —
# a different machine would silently sign with another key. Pinned: the key all releases so far carry.
SIGN_SHA256="1E:08:A9:03:AE:F9:C3:A7:21:51:0B:64:EC:76:4D:01:D3:D0:94:EB:95:41:61:B6:25:44:EA:8F:18:7B:59:53"
GOT_SHA256="$(unzip -p "${OUT_APK}" 'META-INF/*.RSA' | keytool -printcert 2>/dev/null | grep -m1 'SHA256:' | sed 's/.*SHA256: *//')"
if [[ "${GOT_SHA256}" != "${SIGN_SHA256}" ]]; then
  echo "ERROR: ${OUT_APK} is signed with another key (${GOT_SHA256:-none}); updates over installed copies would fail."
  echo "  Move ~/.android/debug.keystore aside (uber-apk-signer then uses its embedded debug key) and rebuild."
  exit 1
fi
echo "Signing key OK (same as every release)."

# Healthy builds are ~16.2 MB (1.1.328); a build that lost a whole stack (music, wearable, AI, assets) is far smaller.
MIN_APK_BYTES="${MIN_APK_BYTES:-15000000}"
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
  if [[ "${version_dirty}" -eq 1 ]]; then
    echo ""
    if [[ "${SKIP_APK_COMMIT_CHECK:-0}" == "1" ]]; then
      echo "WARN: RELEASE_VERSION is not committed (SKIP_APK_COMMIT_CHECK=1)."
    else
      echo "ERROR: RELEASE_VERSION is not committed. Users cannot download the new version until you:"
      echo "  git add xems27.apk RELEASE_VERSION"
      echo "  git commit -m \"Build ${VERSION_NAME}\""
      echo "  git push"
      exit 1
    fi
  elif [[ "${apk_dirty}" -eq 1 ]]; then
    echo ""
    if [[ "${SKIP_APK_COMMIT_CHECK:-0}" == "1" ]]; then
      echo "WARN: xems27.apk differs from git (SKIP_APK_COMMIT_CHECK=1)."
    else
      echo "ERROR: xems27.apk was rebuilt but is not committed. Users will NOT get these changes until you:"
      echo "  git add xems27.apk RELEASE_VERSION band-app/xems-band.rpk band-app/xems-band-en.rpk"
      echo "  git commit -m \"Build ${VERSION_NAME}\""
      echo "  git push"
      exit 1
    fi
  fi
fi
