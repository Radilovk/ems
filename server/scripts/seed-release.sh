#!/usr/bin/env bash
# Register current APK as a release on the license server.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
APK="$ROOT/xems27.apk"
VERSION_FILE="$ROOT/RELEASE_VERSION"

[[ -f "$APK" ]] || { echo "Missing $APK"; exit 1; }
[[ -f "$VERSION_FILE" ]] || { echo "Missing $VERSION_FILE"; exit 1; }

source "$VERSION_FILE"
SHA=$(sha256sum "$APK" | awk '{print $1}')
SIZE=$(stat -c%s "$APK")
URL="https://github.com/Radilovk/ems/raw/main/xems27.apk"
SERVER="${XEMS_LICENSE_SERVER:-https://license.biocode-bg.com}"
NOTES="${1:-Release $versionName}"

curl -s -u "${XEMS_ADMIN_USER:-admin}:${XEMS_ADMIN_PASSWORD:?set XEMS_ADMIN_PASSWORD}" \
  -X POST "$SERVER/0123/api/releases/upload" \
  -H 'Content-Type: application/json' \
  -d "{\"version_code\":$versionCode,\"version_name\":\"$versionName\",\"channel\":\"stable\",\"object_key\":\"$URL\",\"sha256\":\"$SHA\",\"size\":$SIZE,\"notes\":\"$NOTES\",\"mandatory\":false}"

echo ""
echo "Registered $versionName (code $versionCode)"
