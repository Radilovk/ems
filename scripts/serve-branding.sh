#!/usr/bin/env bash
# Local web server so design HTML pages open reliably in the browser.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
PORT="${PORT:-8765}"

python3 "$ROOT/scripts/generate-design-studio.py" 2>/dev/null || true

echo "XEMS Design Tools"
echo "  Open in browser: http://127.0.0.1:${PORT}/"
echo "  Press Ctrl+C to stop"
echo ""

cd "$ROOT/branding"
exec python3 -m http.server "$PORT" --bind 127.0.0.1
