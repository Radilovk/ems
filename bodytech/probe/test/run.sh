#!/usr/bin/env bash
# Offline check: bodytech frames from Proto.java == the vendor's (golden vectors in ProtoTest.java). JDK only.
set -euo pipefail
HERE="$(cd "$(dirname "$0")" && pwd)"
OUT="$(mktemp -d)"
javac --release 8 -nowarn -d "${OUT}" "${HERE}/../src/com/xems/btprobe/Proto.java" "${HERE}/ProtoTest.java" 2>&1 | grep -v -E '^warning|warnings$' || true
java -cp "${OUT}" ProtoTest
rm -rf "${OUT}"
