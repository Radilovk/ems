#!/usr/bin/env bash
# Safest path: sync mockup → validate → dry-run → apply numeric design only → resync mockup
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

BUILD=0
IMPORT=""
PRESET=""
while [[ $# -gt 0 ]]; do
  case "$1" in
    --build) BUILD=1; shift ;;
    --import) IMPORT="$2"; shift 2 ;;
    --preset) PRESET="$2"; shift 2 ;;
    -h|--help)
      cat <<'EOF'
Usage: bash scripts/design-apply-safe.sh [--import FILE | --preset ID] [--build]

Safest design workflow (no login/smali changes):
  1. Regenerate HTML mockup from branding/design/*.xml
  2. Validate ui-map + design-config bounds
  3. Dry-run apply (show XML diffs, no write)
  4. Apply numeric tweaks to branding/design/ only
  5. Regenerate mockup (mockup stays in sync with XML)

APK build is optional (--build) and uses DESIGN_PIPELINE=1 only then.
Never edits @id names or XML structure — crash-safe by design.
EOF
      exit 0
      ;;
    *) echo "Unknown option: $1" >&2; exit 1 ;;
  esac
done

echo "=== 1/5 Sync train mockup from XML ==="
python3 scripts/generate-train-mockup.py
python3 scripts/generate-design-studio.py
python3 scripts/verify-mockup-sync.py

echo ""
echo "=== 2/5 Validate ==="
python3 scripts/ui-map.py --check
python3 scripts/apply-design-config.py --check

if [[ -n "$PRESET" ]]; then
  echo ""
  echo "=== 3/5 Import preset: $PRESET ==="
  python3 scripts/apply-design-config.py --preset "$PRESET" --dry-run
  python3 scripts/apply-design-config.py --preset "$PRESET"
elif [[ -n "$IMPORT" ]]; then
  echo ""
  echo "=== 3/5 Import $IMPORT (dry-run first) ==="
  python3 scripts/apply-design-config.py --import "$IMPORT" --dry-run
  python3 scripts/apply-design-config.py --import "$IMPORT"
else
  echo ""
  echo "=== 3/5 Dry-run current design-config.yaml ==="
  python3 scripts/apply-design-config.py --dry-run
  echo ""
  echo "=== 4/5 Apply current design-config.yaml ==="
  python3 scripts/apply-design-config.py
fi

echo ""
echo "=== 5/5 Re-sync mockup after apply ==="
python3 scripts/generate-train-mockup.py
python3 scripts/generate-design-studio.py
python3 scripts/verify-mockup-sync.py
python3 scripts/apply-design-config.py --check

if [[ "$BUILD" -eq 1 ]]; then
  echo ""
  echo "=== Build APK (DESIGN_PIPELINE=1) ==="
  DESIGN_PIPELINE=1 bash build-apk.sh
else
  echo ""
  echo "Safe apply complete. Mockup + branding/design/ are in sync."
  echo "Build when ready: DESIGN_PIPELINE=1 bash build-apk.sh"
fi
