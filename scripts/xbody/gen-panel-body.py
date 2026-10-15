#!/usr/bin/env python3
"""The XBody panel's body figures: the tablet's XEMS figures (branding/body: art + zone map, scripts/gen-body-figures.py)
scaled to the panel's 372 design px (the unit's 800×600: no scaling at run time) and saved as PNG (Qt 4.8 on the card
has no WebP) → xbody/overlay/opt/xems/body/<sex>_<side>-art.png / -idx.png. idx: R nearest (a region id must never
blend), G shade / B coverage smooth — as the tablet's maps.
   python3 scripts/xbody/gen-panel-body.py"""
from pathlib import Path

from PIL import Image

ROOT = Path(__file__).resolve().parents[2]
SRC = ROOT / "branding/body"
OUT = ROOT / "xbody/overlay/opt/xems/body"
H = 372
OUT.mkdir(parents=True, exist_ok=True)
for key in ("female_front", "female_back", "male_front", "male_back"):
    art = Image.open(SRC / f"{key}-art.webp").convert("RGBA")
    idx = Image.open(SRC / f"{key}-idx.webp").convert("RGB")
    w = round(art.width * H / art.height)
    art = art.resize((w, H), Image.LANCZOS)
    # lighter than the tablet's near-black figures (owner): 85 + 0.65·v, a touch cool — as the WiEMS tablet app
    r, g, b, a = art.split()
    art = Image.merge("RGBA", (r.point(lambda v: 85 + v * 65 // 100), g.point(lambda v: 85 + v * 65 // 100),
                               b.point(lambda v: min(255, 91 + v * 65 // 100)), a))
    art.save(OUT / f"{key}-art.png", optimize=True)
    r, g, b = idx.split()
    Image.merge("RGB", (r.resize((w, H), Image.NEAREST), g.resize((w, H), Image.BILINEAR),
                        b.resize((w, H), Image.BILINEAR))).save(OUT / f"{key}-idx.png", optimize=True)
    print(f"  {key}: {w}×{H}")
