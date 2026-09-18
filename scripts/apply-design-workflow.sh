#!/usr/bin/env bash
# Safe train UI design workflow — does NOT run automatically in build-apk.sh
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

echo "=== 1/3 UI map check ==="
python3 scripts/ui-map.py --check

echo ""
echo "=== 2/3 Design config check ==="
python3 scripts/apply-design-config.py --check

echo ""
echo "=== 3/3 Apply config to branding/design/ ==="
python3 scripts/apply-design-config.py

echo ""
echo "Done. branding/design/*.xml updated."
echo ""
echo "To include in APK (opt-in):"
echo "  DESIGN_PIPELINE=1 bash build-apk.sh"
echo ""
echo "Design pipeline is OFF by default — login-critical builds stay unchanged."
