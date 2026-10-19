#!/usr/bin/env python3
"""The XBody panel's body figures: the XEMS figures in both looks (scripts/figure_looks.py — made from the report's
full-size art, one downscale at the end: smooth edges, clear muscles) at the panel's 372 design px (the unit's 800×600:
no scaling at run time), PNG (Qt 4.8 on the card has no WebP) → xbody/overlay/opt/xems/body/<sex>_<side>-art.png
(light) / -dark.png / -idx.png (R region, G tone, B coverage).
   python3 scripts/xbody/gen-panel-body.py"""
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / "scripts"))
from figure_looks import KEYS, SRC, looks  # noqa: E402

OUT = ROOT / "xbody/overlay/opt/xems/body"
H = 372
OUT.mkdir(parents=True, exist_ok=True)
html = SRC.read_text(encoding="utf-8")
for key in KEYS:
    light, dark, idx = looks(key, H, html)
    light.save(OUT / f"{key}-art.png", optimize=True)
    dark.save(OUT / f"{key}-dark.png", optimize=True)
    idx.save(OUT / f"{key}-idx.png", optimize=True)
    print(f"  {key}: {light.width}×{H}")
