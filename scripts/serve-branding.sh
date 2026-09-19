#!/usr/bin/env bash
# Local web server for branding YAML maps and DEVELOPMENT.md reference.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
PORT="${PORT:-8765}"

echo "XEMS Branding Dev Reference"
echo "  Open in browser: http://127.0.0.1:${PORT}/"
echo "  Press Ctrl+C to stop"
echo ""

cd "$ROOT/branding"
exec python3 -m http.server "$PORT" --bind 127.0.0.1
