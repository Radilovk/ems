#!/usr/bin/env bash
# Quick train screen previews (212×520 PNG) — no emulator required.
set -euo pipefail
D="$(cd "$(dirname "$0")/.." && pwd)"
cd "$D"
ART="${ARTIFACT_DIR:-/opt/cursor/artifacts/screenshots}"
mkdir -p "$ART"
python3 scripts/gen-bg.py
python3 scripts/gen-icons.py
python3 scripts/gen-all-btn.py
python3 scripts/gen-train-preview.py idle "$ART/train_play_idle.png"
python3 scripts/gen-train-preview.py running "$ART/train_play_running.png"
python3 scripts/gen-train-preview.py multi "$ART/train_play_multi_click.png"
echo ""
echo "Previews:"
ls -la "$ART"/train_play_*.png
