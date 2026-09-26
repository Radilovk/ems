#!/usr/bin/env bash
# Quick train screen previews (212×520 PNG) — no emulator required.
set -euo pipefail
D="$(cd "$(dirname "$0")/.." && pwd)"
cd "$D"
ART="${ARTIFACT_DIR:-/opt/cursor/artifacts/screenshots}"
mkdir -p "$ART"
# Read-only: previews use the committed images. (gen-icons.py draws the reverted v4 icon set —
# running it here used to overwrite the shipped v3 icons.)
python3 scripts/gen-train-preview.py idle "$ART/train_play_idle.png"
python3 scripts/gen-train-preview.py running "$ART/train_play_running.png"
python3 scripts/gen-train-preview.py multi "$ART/train_play_multi_click.png"
python3 scripts/gen-home-preview.py idle "$ART/home_dial_idle.png"
python3 scripts/gen-home-preview.py running "$ART/home_dial_running.png"
echo ""
echo "Previews:"
ls -la "$ART"/train_play_*.png "$ART"/home_dial_*.png
