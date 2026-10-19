#!/usr/bin/env python3
"""The WiEMS app's body figures: the XEMS figures in both looks (scripts/figure_looks.py) at 500 px — the app draws
them 372 design px tall, ×1.33 on the Lenovo's 1280×800 — lossless WebP → wiems/app/body/<sex>_<side>-art.webp
(light) / -dark.webp / -idx.webp (R region, G tone, B coverage). Shipped by scripts/build-wiems-app.sh.
   python3 scripts/gen-wiems-figures.py"""
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "scripts"))
from figure_looks import KEYS, SRC, looks  # noqa: E402

OUT = ROOT / "wiems/app/body"
H = 500
OUT.mkdir(parents=True, exist_ok=True)
html = SRC.read_text(encoding="utf-8")
for key in KEYS:
    light, dark, idx = looks(key, H, html)
    for name, im in (("art", light), ("dark", dark), ("idx", idx)):
        im.save(OUT / f"{key}-{name}.webp", lossless=True, quality=100, method=6)
    print(f"  {key}: {light.width}×{H}")
