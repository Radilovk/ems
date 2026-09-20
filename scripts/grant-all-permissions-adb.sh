#!/usr/bin/env bash
# One-time tablet setup: grant all runtime permissions via ADB (optional fallback).
# Usage: connect tablet via USB/Wi‑Fi ADB, then: bash scripts/grant-all-permissions-adb.sh
set -euo pipefail

PKG="${1:-com.isaigu.gymapp25}"
PERMS=(
  android.permission.ACCESS_FINE_LOCATION
  android.permission.ACCESS_COARSE_LOCATION
  android.permission.RECORD_AUDIO
  android.permission.READ_CALENDAR
  android.permission.WRITE_CALENDAR
  android.permission.READ_EXTERNAL_STORAGE
  android.permission.WRITE_EXTERNAL_STORAGE
)

for perm in "${PERMS[@]}"; do
  adb shell pm grant "${PKG}" "${perm}" 2>/dev/null || true
  echo "granted ${perm}"
done

echo "Done for ${PKG}"
