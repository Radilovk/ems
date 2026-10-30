#!/usr/bin/env bash
# The iComon SDK's jars out of the .aar → build/icomon-sdk/jars/ (javac classpath for ScaleIcomon, D8 input).
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
AAR="${ROOT}/branding/vendor/icomon/ICDeviceManager.aar"
OUT="${ROOT}/build/icomon-sdk"
mkdir -p "${OUT}/aar" "${OUT}/jars"
if [[ ! -f "${OUT}/jars/classes.jar" || "${AAR}" -nt "${OUT}/jars/classes.jar" ]]; then
  rm -rf "${OUT}/aar" && mkdir -p "${OUT}/aar"
  ( cd "${OUT}/aar" && unzip -q -o "${AAR}" )
  cp "${OUT}/aar/classes.jar" "${OUT}/aar/libs/"*.jar "${OUT}/jars/"
fi
