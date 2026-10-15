#!/usr/bin/env python3
"""The XBody panel's program icons: Health Icons outline SVGs (CC0, xbody/panel/art/*.svg) painted XBody red
(#E21A22), 96 px on transparent — the panel draws them on a white tile like XBody's own program selection.
→ xbody/overlay/opt/xems/art/<program id>.png      (needs: pip install cairosvg)
   python3 scripts/xbody/gen-panel-art.py"""
import io
import re
from pathlib import Path

import cairosvg
from PIL import Image

ROOT = Path(__file__).resolve().parents[2]
SRC = ROOT / "xbody/panel/art"
OUT = ROOT / "xbody/overlay/opt/xems/art"
OUT.mkdir(parents=True, exist_ok=True)
for old in OUT.glob("*.png"):
    old.unlink()
for svg in sorted(SRC.glob("*.svg")):
    s = re.sub(r"#333333|#333\b|currentColor|black|#000000|#000\b", "#E21A22", svg.read_text())
    png = cairosvg.svg2png(bytestring=s.encode(), output_width=96, output_height=96)
    out = OUT / f"{svg.stem}.png"
    Image.open(io.BytesIO(png)).convert("RGBA").save(out, optimize=True)
    print(f"  {out.name} {out.stat().st_size} B")
