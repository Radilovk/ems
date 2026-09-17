#!/usr/bin/env bash
# Automated safety test: BETA build must not change login-critical code vs baseline.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
TOOLS="${ROOT}/tools"
OUT_DIR="${ROOT}/build/safety-test"
BASELINE_APK="${OUT_DIR}/baseline.apk"
BETA_APK="${OUT_DIR}/beta.apk"
BASELINE_DEC="${OUT_DIR}/baseline-decompiled"
BETA_DEC="${OUT_DIR}/beta-decompiled"

CRITICAL_FILES=(
  "smali_classes2/com/isaigu/gymapp/fragment/LoginFragment.smali"
  "smali_classes2/com/isaigu/gymapp/fragment/MainFragment.smali"
  "smali_classes2/com/isaigu/gymapp/fragment/NewTrainFragment.smali"
  "smali_classes2/com/isaigu/gymapp/fragment/SplashFragment.smali"
  "smali_classes2/com/isaigu/gymapp/train/TrainItemManager.smali"
  "smali_classes2/com/isaigu/gymapp/MainActivity.smali"
  "smali_classes2/com/isaigu/gymapp/mgr/DataMgr.smali"
  "AndroidManifest.xml"
)

mkdir -p "${OUT_DIR}"

echo "=== [0/5] Verify MusicSync smali branch logic ==="
python3 "${ROOT}/scripts/verify-music-sync-smali.py"

echo "=== [1/5] Build baseline APK (BETA_MUSIC=0) ==="
SKIP_APK_COMMIT_CHECK=1 BETA_MUSIC=0 "${ROOT}/build-apk.sh"
cp "${ROOT}/xems27.apk" "${BASELINE_APK}"

echo "=== [2/5] Build BETA APK (BETA_MUSIC=1) ==="
SKIP_APK_COMMIT_CHECK=1 BETA_MUSIC=1 "${ROOT}/build-apk.sh"
cp "${ROOT}/xems27.apk" "${BETA_APK}"

echo "=== [3/5] Compare login-critical smali (baseline vs BETA) ==="
java -jar "${TOOLS}/apktool.jar" d "${BASELINE_APK}" -o "${BASELINE_DEC}" -f -q
java -jar "${TOOLS}/apktool.jar" d "${BETA_APK}" -o "${BETA_DEC}" -f -q

check_manifest_diff() {
  local base="${BASELINE_DEC}/AndroidManifest.xml"
  local beta="${BETA_DEC}/AndroidManifest.xml"
  local changes
  changes="$(diff -u "${base}" "${beta}" | grep '^[+-]' | grep -v '^[+-][+-][+-]' || true)"
  if [[ -z "${changes}" ]]; then
    echo "OK: AndroidManifest.xml unchanged"
    return 0
  fi
  if [[ "${changes}" == '+    <uses-permission android:name="android.permission.RECORD_AUDIO"/>' ]]; then
    echo "OK: AndroidManifest.xml — only RECORD_AUDIO permission added"
    return 0
  fi
  echo "FAIL: AndroidManifest.xml unexpected changes:" >&2
  echo "${changes}" >&2
  return 1
}

DIFF_FAILED=0
for rel in "${CRITICAL_FILES[@]}"; do
  base="${BASELINE_DEC}/${rel}"
  beta="${BETA_DEC}/${rel}"
  if [[ "${rel}" == "AndroidManifest.xml" ]]; then
    if ! check_manifest_diff; then
      DIFF_FAILED=1
    fi
    continue
  fi
  if ! diff -q "${base}" "${beta}" >/dev/null 2>&1; then
    echo "FAIL: ${rel} differs between baseline and BETA build" >&2
    diff -u "${base}" "${beta}" | head -40 >&2 || true
    DIFF_FAILED=1
  else
    echo "OK: ${rel} unchanged"
  fi
done

if [[ "${DIFF_FAILED}" -ne 0 ]]; then
  echo "SAFETY TEST FAILED: login-critical files were modified by BETA patches." >&2
  exit 1
fi

echo "=== [4/5] Static BETA safety rules ==="
DECOMPILED="${BETA_DEC}" python3 - "${BETA_DEC}" <<'PY'
import os, sys
from pathlib import Path

dec = Path(sys.argv[1])
forbidden = {
    "NewTrainFragment.smali": ("MusicSync", "MusicSyncBridge", "betaFeatures"),
    "TrainItemManager.smali": ("MusicSync", "MusicSyncBridge"),
    "LoginFragment.smali": ("MusicSync", "MusicSyncHelper"),
    "MainFragment.smali": ("MusicSync", "MusicSyncHelper"),
}
errors = []
for name, needles in forbidden.items():
    matches = list(dec.rglob(name))
    if not matches:
        continue
    text = matches[0].read_text(encoding="utf-8")
    for n in needles:
        if n in text:
            errors.append(f"{name}: contains '{n}'")
if errors:
    print("Static rules FAILED:", file=sys.stderr)
    for e in errors:
        print(f"  - {e}", file=sys.stderr)
    sys.exit(1)
print("Static rules passed.")
PY

echo "=== [5/5] Copy BETA APK to repo root ==="
cp "${BETA_APK}" "${ROOT}/xems27.apk"
echo "Copied BETA APK -> ${ROOT}/xems27.apk"

echo ""
echo "=============================================="
echo "  SAFETY TEST PASSED"
echo "  Baseline: ${BASELINE_APK}"
echo "  BETA:     ${BETA_APK}"
echo "=============================================="
