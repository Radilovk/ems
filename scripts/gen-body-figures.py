#!/usr/bin/env python3
"""The body figures of the Auto live board (ai/BodyHeatView): the report's anatomical art and channel maps
(branding/report/session-report.html, ids art-<key> / fig-<key>, docs/session-report/README.md) → branding/body/,
scaled to HEIGHT px for the tablet. art = the grey figure (RGBA); idx = R channel + 1 (0 outside, 1..10 the suit
channels in PartStrenthBean.buwei order, 11 other muscle, 12 body, 13 the deltoid), G shade, B coverage — R scaled
nearest (a region id must never blend), G / B smooth. The deltoid (no suit channel: the exercises only) comes with the
report's maps (scripts/body_deltoid.py, cut in gen-card-art.py). Shipped by scripts/apply-exercise-assets.py → assets/xems/body/.
Run after the report's figures change.
"""

from __future__ import annotations

import base64
import io
import re
from pathlib import Path

from PIL import Image

ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / "branding" / "report" / "session-report.html"
OUT = ROOT / "branding" / "body"
HEIGHT = 640
KEYS = ("male_front", "male_back", "female_front", "female_back")


def grab(html: str, kind: str, key: str) -> Image.Image:
    m = re.search(r'id="%s-%s">data:image/webp;base64,([A-Za-z0-9+/=]+)' % (kind, key), html)
    if not m:
        raise SystemExit(f"{SRC.name}: no {kind}-{key}")
    return Image.open(io.BytesIO(base64.b64decode(m.group(1))))


def main() -> int:
    html = SRC.read_text(encoding="utf-8")
    OUT.mkdir(parents=True, exist_ok=True)
    for key in KEYS:
        art = grab(html, "art", key).convert("RGBA")
        idx = grab(html, "fig", key).convert("RGB")
        w = round(art.width * HEIGHT / art.height)
        art = art.resize((w, HEIGHT), Image.LANCZOS)
        art.save(OUT / f"{key}-art.webp", "WEBP", quality=88, method=6)
        r, g, b = idx.split()
        r = r.resize((w, HEIGHT), Image.NEAREST)
        g = g.resize((w, HEIGHT), Image.BILINEAR)
        b = b.resize((w, HEIGHT), Image.BILINEAR)
        Image.merge("RGB", (r, g, b)).save(OUT / f"{key}-idx.webp", "WEBP", lossless=True, method=6)
        print(f"{key}: {w}×{HEIGHT}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
