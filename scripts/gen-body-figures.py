#!/usr/bin/env python3
"""The body figures of the Auto live board (ai/BodyHeatView): the report's anatomical art and channel maps
(branding/report/session-report.html, ids art-<key> / fig-<key>, docs/session-report/README.md) → branding/body/,
scaled to HEIGHT px for the tablet. art = the grey figure (RGBA); idx = R channel + 1 (0 outside, 1..10 the suit
channels in PartStrenthBean.buwei order, 11 other muscle, 12 body, 13 the deltoid), G shade, B coverage — R scaled
nearest (a region id must never blend), G / B smooth. The deltoid has no suit channel (no current, the exercises
only) and no region in the report's maps: it is cut here, a soft cap over each upper arm outside chest / back. Shipped by scripts/apply-exercise-assets.py → assets/xems/body/.
Run after the report's figures change.
"""

from __future__ import annotations

import base64
import io
import re
from pathlib import Path

import numpy as np
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


DELTOID = 13


def add_deltoid(art: Image.Image, idx: Image.Image) -> Image.Image:
    """The shoulder cap (R = DELTOID): an ellipse over each arm region's top, body pixels no other region holds,
    faded towards the neck; G from the art's lightness the way the other regions have it, B = soft edge."""
    a = np.array(art).astype(float)
    ix = np.array(idx).copy()
    r = ix[..., 0]
    lum = a[..., :3].mean(-1)
    h, w = r.shape
    yy, xx = np.mgrid[0:h, 0:w]
    arm = r == 5
    mid = w / 2
    cov = np.zeros((h, w))
    for side in (-1, 1):
        m = arm & ((xx < mid) if side < 0 else (xx >= mid))
        ys, xs = np.nonzero(m)
        top = ys.min()
        aw = xs.max() - xs.min()
        cx = xs[ys < top + 12].mean() - side * 0.05 * aw
        cy = top - 0.35 * aw
        d = ((xx - cx) / (0.8 * aw)) ** 2 + ((yy - cy) / (0.9 * aw)) ** 2
        e = np.clip((1 - d) / 0.25, 0, 1)
        e[yy > top + 0.25 * aw] = 0
        cov = np.maximum(cov, e)
    cov *= a[..., 3] / 255.0
    cov[r > 0] = 0
    core = np.nonzero((r == 1) | (r == 6) | (r == 7))[1]
    half = (core.max() - core.min()) / 2.0
    cov *= np.clip((np.abs(xx - mid) - 0.30 * half) / (0.18 * half), 0, 1)
    sel = cov * 255 > 8
    known = r > 0
    k = np.polyfit(lum[known], ix[..., 1][known].astype(float), 1)
    g = np.clip(k[0] * lum + k[1], 0, 255)
    ix[..., 0][sel] = DELTOID
    ix[..., 1][sel] = g[sel].astype(np.uint8)
    ix[..., 2][sel] = np.clip(cov[sel] * 255, 0, 255).astype(np.uint8)
    return Image.fromarray(ix)


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
        add_deltoid(art, Image.merge("RGB", (r, g, b))).save(OUT / f"{key}-idx.webp", "WEBP", lossless=True, method=6)
        print(f"{key}: {w}×{HEIGHT}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
