#!/usr/bin/env bash
# Координация user brief → validate → XML staging → optional apply → optional APK
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

BRIEF=""
APPLY=0
BUILD=0
ALLOW_DRAFT=0

usage() {
  echo "Usage: bash scripts/coord-design.sh --brief FILE [--apply] [--build] [--allow-draft]"
  echo ""
  echo "  1. Ти одобряваш brief от Layout Workshop"
  echo "  2. --brief   валидира + генерира XML в branding/layouts/staging/"
  echo "  3. --apply   копира XML към branding/design/ или branding/layouts/"
  echo "  4. --build   DESIGN_PIPELINE=1 bash build-apk.sh"
  exit 0
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --brief) BRIEF="$2"; shift 2 ;;
    --apply) APPLY=1; shift ;;
    --build) BUILD=1; shift ;;
    --allow-draft) ALLOW_DRAFT=1; shift ;;
    -h|--help) usage ;;
    *) echo "Unknown: $1" >&2; exit 1 ;;
  esac
done

[[ -n "$BRIEF" ]] || { echo "Missing --brief FILE" >&2; exit 1; }
[[ -f "$BRIEF" ]] || { echo "Brief not found: $BRIEF" >&2; exit 1; }

echo "=== Layout brief ==="
python3 scripts/layout-brief.py "$BRIEF" --check || true

ARGS=("$BRIEF")
[[ "$ALLOW_DRAFT" -eq 1 ]] && ARGS+=(--allow-draft)
[[ "$APPLY" -eq 1 ]] && ARGS+=(--apply)

python3 scripts/layout-implement.py "${ARGS[@]}"

if [[ "$APPLY" -eq 1 && "$BUILD" -eq 1 ]]; then
  echo ""
  echo "=== APK build ==="
  DESIGN_PIPELINE=1 bash build-apk.sh
fi

echo ""
echo "Coordination complete."
