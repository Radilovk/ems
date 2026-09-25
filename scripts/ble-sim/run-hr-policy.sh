#!/usr/bin/env bash
# Offline HR demand policy test (settings/dial/AI vs idle link). No device, no Android SDK.
# usage: scripts/ble-sim/run-hr-policy.sh
set -euo pipefail
D="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "${D}/../.." && pwd)"
SRC="${ROOT}/branding/java/src"
OUT="$(mktemp -d)"
trap 'rm -rf "${OUT}"' EXIT

POLICY="${SRC}/com/isaigu/gymapp/wearable/HrDemandPolicy.java"
HARNESS="${D}/rt/sim/HrPolicyHarness.java"
STUB_BRIDGE="${D}/rt/com/isaigu/gymapp/wearable/NotifyWearableBridge.java"
STUB_CONFIG="${D}/rt/com/isaigu/gymapp/wearable/WearableConfig.java"
RT_ANDROID="${D}/rt/android/content/Context.java"
for f in "${POLICY}" "${HARNESS}" "${STUB_BRIDGE}" "${STUB_CONFIG}" "${RT_ANDROID}"; do
  if [[ ! -f "${f}" ]]; then
    echo "FAIL: missing ${f}" >&2
    exit 1
  fi
done

javac -nowarn -encoding UTF-8 -source 8 -target 8 -d "${OUT}" \
  "${RT_ANDROID}" \
  "${D}/rt/android/content/SharedPreferences.java" \
  "${STUB_BRIDGE}" \
  "${STUB_CONFIG}" \
  "${POLICY}" \
  "${HARNESS}" 2>&1 | grep -v "Picked up\|bootstrap\|^Note\|warning" || true

java -cp "${OUT}" sim.HrPolicyHarness 2>/dev/null | grep -v "Picked up"
echo "PASS hr-policy"
