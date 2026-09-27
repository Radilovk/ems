#!/usr/bin/env python3
"""The muscle figure for the band (summary page, screen 2), from the same art as the client card.

The band cannot recolour an image, so the figure is two layers:
  1. colour boxes (plain divs, CSS background-color from the tablet's muscle levels), a few per
     muscle, each lying only on that muscle's pixels or on the neutral body;
  2. a stencil PNG on top: the figure opaque everywhere except the muscles, where it is partly
     transparent and carries the painted light — out = stencil·a + colour·(1−a) gives, per pixel,
     the card's recolour (dark → black, 0.5 → the colour, bright → white) blended with the body.
Writes src/common/body/<sex>-<side>.png (palette PNG) and src/common/body-map.js (boxes + sizes).

usage: python3 scripts/gen-body.py        (needs numpy, scipy, Pillow; reads ../branding/report/figures)
"""
from __future__ import annotations

import importlib.util
import json
from pathlib import Path

import numpy as np
from PIL import Image
from scipy import ndimage

ROOT = Path(__file__).resolve().parents[1]
REPO = ROOT.parent
OUT = ROOT / "src" / "common" / "body"
MAP_JS = ROOT / "src" / "common" / "body-map.js"
W = 96                                   # each view; front + back side by side on the 212 px screen
# Where the figures sit on the summary page (screen 2): x of front / back, y of both (preview-measured).
POS = {"front": 2, "back": 106}
POS_Y = 92
# the page background under them: bg/summary.png, background-size cover on 212 × 520
PAGE = np.asarray(Image.open(ROOT / "src/common/bg/summary.png").convert("RGB").resize((212, 520), Image.BILINEAR)).astype(np.float32) / 255
GRID = 3                                 # colour boxes snap to 2 px
NEED = 0.12                              # below this share of colour a pixel keeps the stencil alone

spec = importlib.util.spec_from_file_location("art", REPO / "scripts" / "gen-card-art.py")
art = importlib.util.module_from_spec(spec)
spec.loader.exec_module(art)


def stencil(rgb, al, side):
    """Full-resolution premultiplied stencil (S·a, a) and the colour share k per zone."""
    art_im, zmap = art.build(rgb, al, side, None)
    A = np.asarray(art_im).astype(np.float32) / 255
    Z = np.asarray(zmap).astype(np.float32)
    zone = Z[..., 0].astype(int) - 1
    l = Z[..., 1] / 255
    w = Z[..., 2] / 255
    cov = A[..., 3]
    m = np.where(l < 0.5, 2 * l, 1 - (2 * l - 1) * 0.55)
    q = np.where(l < 0.5, 0, (2 * l - 1) * 0.55)          # soft highlight, as the card
    k = w * m * cov                                        # how much of the zone colour shows
    Sa = A[..., :3] * (1 - w)[..., None] * cov[..., None] + (w * q * cov)[..., None]
    a = cov - k
    return Sa, a, k, zone


def down(x, f):
    """Box average by an integer-free factor via PIL (area resampling)."""
    h, w = x.shape[:2]
    H, Wd = round(h / f), round(w / f)
    if x.ndim == 2:
        return np.asarray(Image.fromarray(x.astype(np.float32), "F").resize((Wd, H), Image.BOX))
    return np.stack([down(x[..., c], f) for c in range(x.shape[2])], -1)


def boxes(need, allowed):
    """Few rectangles covering every `need` pixel, each inside `allowed`: a piece's bounding box when
    it fits, else split across its longer side (a zone surrounded by body is one box)."""
    out = []

    def cover(y0, y1, x0, x1):
        sub = need[y0:y1, x0:x1]
        if not sub.any():
            return
        ys, xs = np.nonzero(sub)
        y0, y1, x0, x1 = y0 + ys.min(), y0 + ys.max() + 1, x0 + xs.min(), x0 + xs.max() + 1
        if allowed[y0:y1, x0:x1].all() or (y1 - y0 == 1 and x1 - x0 == 1):
            out.append([int(x0), int(y0), int(x1 - x0), int(y1 - y0)])
            return
        if y1 - y0 >= x1 - x0:
            m = (y0 + y1) // 2
            cover(y0, m, x0, x1)
            cover(m, y1, x0, x1)
        else:
            m = (x0 + x1) // 2
            cover(y0, y1, x0, m)
            cover(y0, y1, m, x1)

    cover(0, need.shape[0], 0, need.shape[1])
    return out


def main() -> int:
    OUT.mkdir(parents=True, exist_ok=True)
    data = {"w": W, "views": {}}
    for sex in ("female", "male"):
        rgb = np.asarray(Image.open(REPO / "branding/report/figures" / f"{sex}.png").convert("RGB")).astype(np.float32) / 255
        al = art.silhouette(rgb)
        for side, box in zip(("front", "back"), art.views(al)):
            Sa, a, k, zone = stencil(art.crop(rgb, box), art.crop(al, box), side)
            f = Sa.shape[1] / W
            Sa_s, a_s = down(Sa, f), down(a, f)
            H = a_s.shape[0]
            S = np.where(a_s[..., None] > 1e-3, Sa_s / np.maximum(a_s[..., None], 1e-3), 0)
            # colour boxes per zone at screen resolution: needed where the colour shows, allowed anywhere
            # except on another muscle (the stencil hides them over the body and around it)
            K = np.stack([down(np.where(zone == z, k, 0), f) for z in range(10)])   # 10 × H × W
            rects = []
            G = GRID                                        # boxes on a coarser grid: fewer divs
            Hg, Wg = -(-K.shape[1] // G), -(-K.shape[2] // G)
            pad = lambda x: np.pad(x, ((0, Hg * G - x.shape[0]), (0, Wg * G - x.shape[1])))
            K = np.stack([pad(k_).reshape(Hg, G, Wg, G).max((1, 3)) for k_ in K])
            for z in range(10):
                need = (K[z] > NEED) & (K[z] >= np.delete(K, z, 0).max(0))
                if not need.any():
                    continue
                other = (np.delete(K, z, 0) > np.maximum(K[z], 0.6)).any(0)
                allowed = ~other
                for r in boxes(need, allowed):
                    rects.append([r[0] * G, r[1] * G, r[2] * G, r[3] * G, z])
            # around the figure the stencil is opaque page black over the colour boxes (they may run past the
            # outline); elsewhere it stays transparent over the page background
            kk = np.clip(1 - a_s - down(k, f), 0, 1)           # the page shows here
            under = np.zeros(a_s.shape, bool)                   # … but only where a colour box lies
            for x0, y0, bw, bh, _ in rects:
                under[y0:y0 + bh, x0:x0 + bw] = True
            under = ndimage.binary_dilation(under, iterations=1)  # 1 px more: no colour line when scaled
            kk = kk * under[:a_s.shape[0], :a_s.shape[1]]
            ox = POS[side]
            page = PAGE[POS_Y:POS_Y + a_s.shape[0], ox:ox + W]      # the real page background there
            S = S * (1 - kk)[..., None] + page * kk[..., None]
            a_s = np.clip(a_s + kk, 0, 1)
            png = np.dstack([np.clip(S, 0, 1), np.clip(a_s, 0, 1)])
            im = Image.fromarray((png * 255 + 0.5).astype(np.uint8), "RGBA")
            key = f"{sex[0]}-{side}"
            im.quantize(256, method=Image.Quantize.FASTOCTREE).save(OUT / f"{key}.png", optimize=True)
            data["views"][key] = {"h": int(H), "boxes": rects}
            print(f"{key}: {W}×{H}, {len(rects)} boxes, {(OUT / f'{key}.png').stat().st_size // 1024} KB")
    MAP_JS.write_text("// Generated by scripts/gen-body.py — colour boxes under the muscle stencils "
                      "(x, y, w, h, zone).\nexport const BODY = " + json.dumps(data, separators=(",", ":")) + "\n",
                      encoding="utf-8")
    print(f"{MAP_JS.relative_to(ROOT)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
