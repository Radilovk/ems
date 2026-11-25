#!/usr/bin/env bash
# Host test of the spy (no device): javac the pure classes + test, run; optionally check the table against the aar.
set -euo pipefail
cd "$(dirname "$0")"
OUT=$(mktemp -d)
javac -nowarn -d "$OUT" src/com/xems/bhspy/{Sig,CallLog,Responder,Uploader}.java test/HostTest.java 2>&1 | grep -v -E 'Picked up|^Note' || true
java -cp "$OUT" com.xems.bhspy.HostTest 2>&1 | grep -v 'Picked up'
AAR=${BHAPTICS_AAR:-/home/user/bhaptics/tact-android/libs/bhaptics_manager.aar}
[[ -f "$AAR" ]] && python3 check-table.py "$AAR" 2>&1 | grep -v 'Picked up' || echo "(no aar: table check skipped)"
