#!/usr/bin/env bash
# Единна команда: sync studio → validate → apply train design → optional APK build
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

BUILD=0
IMPORT=""
DRY=0
while [[ $# -gt 0 ]]; do
  case "$1" in
    --build) BUILD=1; shift ;;
    --import) IMPORT="$2"; shift 2 ;;
    --dry-run) DRY=1; shift ;;
    --safe)
      exec bash "$ROOT/scripts/design-apply-safe.sh" "${@:2}"
      ;;
    --preset)
      echo "Applying preset: $2"
      python3 scripts/apply-design-config.py --preset "$2"
      shift 2
      ;;
    -h|--help)
      echo "Usage: bash scripts/design-apply.sh [--import FILE] [--preset ID] [--build] [--dry-run]"
      echo "  --import FILE   Import downloaded design-config.yaml then apply"
      echo "  --preset ID     Apply phone|tablet|tablet_wide preset"
      echo "  --dry-run       Show changes without writing XML"
      echo "  --safe          Use design-apply-safe.sh (validate + dry-run + resync mockup)"
      echo "  --build         Run DESIGN_PIPELINE=1 bash build-apk.sh after apply"
      exit 0
      ;;
    *) echo "Unknown option: $1" >&2; exit 1 ;;
  esac
done

echo "=== Sync design tools from XML ==="
python3 scripts/generate-train-mockup.py
python3 scripts/generate-design-studio.py

if [[ -n "$IMPORT" ]]; then
  echo ""
  echo "=== Import $IMPORT ==="
  python3 scripts/apply-design-config.py --import "$IMPORT"
fi

echo ""
echo "=== Validate ==="
python3 scripts/ui-map.py --check
python3 scripts/apply-design-config.py --check

echo ""
if [[ "$DRY" -eq 1 ]]; then
  echo "=== Dry-run (no XML write) ==="
  python3 scripts/apply-design-config.py --dry-run
else
  echo "=== Apply to branding/design/ ==="
  python3 scripts/apply-design-config.py
  python3 scripts/generate-train-mockup.py
fi

if [[ "$BUILD" -eq 1 ]]; then
  echo ""
  echo "=== Build APK (DESIGN_PIPELINE=1) ==="
  DESIGN_PIPELINE=1 bash build-apk.sh
else
  echo ""
  echo "Done. Layouts updated in branding/design/"
  echo "Build APK when ready: DESIGN_PIPELINE=1 bash build-apk.sh"
fi
