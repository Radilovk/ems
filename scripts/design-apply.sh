#!/usr/bin/env bash
# Sync studio → validate → apply train design → optional APK build
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

BUILD=0
IMPORT=""
DRY=0
SAFE=0
DESIGN_PIPELINE=0
PRESET=""
while [[ $# -gt 0 ]]; do
  case "$1" in
    --build) BUILD=1; shift ;;
    --import) IMPORT="$2"; shift 2 ;;
    --dry-run) DRY=1; shift ;;
    --safe) SAFE=1; shift ;;
    --with-design-pipeline) DESIGN_PIPELINE=1; shift ;;
    --preset)
      PRESET="$2"
      shift 2
      ;;
    -h|--help)
      cat <<'EOF'
Usage: bash scripts/design-apply.sh [--import FILE | --preset ID] [--dry-run] [--safe] [--build] [--with-design-pipeline]

  --import FILE   Import design-config.yaml then apply to branding/design/
  --preset ID     Apply phone|tablet|tablet_wide preset
  --dry-run       Show XML diffs without writing
  --safe          Validate + dry-run before apply (no @id / smali changes)
  --build         Build xems27.apk (stable default — login-safe, no design in APK)
  --with-design-pipeline  Only with --build: bake branding/design/ into APK (test only)
EOF
      exit 0
      ;;
    *) echo "Unknown option: $1" >&2; exit 1 ;;
  esac
done

echo "=== Sync Design Studio from design-config.yaml ==="
python3 scripts/generate-design-studio.py

echo ""
echo "=== Validate ==="
python3 scripts/ui-map.py --check
python3 scripts/apply-design-config.py --check

if [[ -n "$PRESET" ]]; then
  echo ""
  echo "=== Preset: $PRESET ==="
  if [[ "$SAFE" -eq 1 || "$DRY" -eq 1 ]]; then
    python3 scripts/apply-design-config.py --preset "$PRESET" --dry-run
  fi
  if [[ "$DRY" -eq 0 ]]; then
    python3 scripts/apply-design-config.py --preset "$PRESET"
  fi
elif [[ -n "$IMPORT" ]]; then
  echo ""
  echo "=== Import $IMPORT ==="
  if [[ "$SAFE" -eq 1 || "$DRY" -eq 1 ]]; then
    python3 scripts/apply-design-config.py --import "$IMPORT" --dry-run
  fi
  if [[ "$DRY" -eq 0 ]]; then
    python3 scripts/apply-design-config.py --import "$IMPORT"
  fi
else
  echo ""
  if [[ "$SAFE" -eq 1 || "$DRY" -eq 1 ]]; then
    echo "=== Dry-run current design-config.yaml ==="
    python3 scripts/apply-design-config.py --dry-run
  fi
  if [[ "$DRY" -eq 0 ]]; then
    echo "=== Apply current design-config.yaml ==="
    python3 scripts/apply-design-config.py
  fi
fi

if [[ "$DRY" -eq 0 ]]; then
  echo ""
  echo "=== Re-sync Design Studio ==="
  python3 scripts/generate-design-studio.py
  python3 scripts/apply-design-config.py --check
fi

if [[ "$BUILD" -eq 1 ]]; then
  echo ""
  if [[ "$DESIGN_PIPELINE" -eq 1 ]]; then
    echo "=== Build APK (DESIGN_PIPELINE=1 — custom train layout in APK, test only) ==="
    DESIGN_PIPELINE=1 bash build-apk.sh
  else
    echo "=== Build APK (stable — login-safe, phone factory train UI) ==="
    bash build-apk.sh
  fi
else
  echo ""
  echo "Done. branding/design/ updated (or dry-run only)."
  echo "Stable APK: bash build-apk.sh"
  echo "Test custom layout in APK: bash scripts/design-apply.sh --build --with-design-pipeline"
fi
