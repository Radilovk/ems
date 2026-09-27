#!/usr/bin/env python3
"""Client card figures from the illustrated art (branding/report/figures/{female,male}.png).

Each source is one transparent PNG with the front view on the left and the back view on the right;
the ten suit zones are painted in their own flat hues:
  front: chest magenta, abs green, arms blue, front thigh pink, calves orange
  back:  traps yellow, back (lats) green, lower back purple, glutes red, back thigh blue,
         arms blue (upper), calves orange
Per view this writes into branding/report/client-card.html:
  art-<sex>_<side>  WebP: the figure with every zone turned to the body's graphite (shading kept)
  fig-<sex>_<side>  lossless WebP map: R = zone + 1 (0 = none), G = the zone's shading (0..255), B = coverage
The card draws the art, then colours each zone by the client's data with the shading and a glow.

usage: python3 scripts/gen-card-art.py        (needs numpy, scipy, Pillow with WebP)
"""
from __future__ import annotations

import base64
import io
from pathlib import Path

import numpy as np
from PIL import Image
from scipy import ndimage

ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / "branding" / "report" / "figures"
CARD = ROOT / "branding" / "report" / "client-card.html"

# zone ids (the report's CH order)
CHEST, ABS, QUADS, CALVES, ARMS, TRAPS, BACK, LOWBACK, GLUTES, HAMS = range(10)


def hsv(rgb: np.ndarray):
    r, g, b = rgb[..., 0], rgb[..., 1], rgb[..., 2]
    mx, mn = rgb.max(-1), rgb.min(-1)
    d = mx - mn + 1e-6
    h = np.where(mx == r, ((g - b) / d) % 6, np.where(mx == g, (b - r) / d + 2, (r - g) / d + 4)) * 60
    return h, (mx - mn) / np.maximum(mx, 1e-6), mx


def split(al: np.ndarray):
    """Front on the left, back on the right: one shared crop size so both views keep one scale."""
    w = al.shape[1]
    col = al.sum(0)
    mid = int(np.argmin(col[w // 3: 2 * w // 3])) + w // 3
    rows = np.nonzero(al.max(1) > 0.5)[0]
    y0, y1 = max(0, rows[0] - 10), min(al.shape[0], rows[-1] + 11)
    boxes = []
    for x0, x1 in ((0, mid), (mid, w)):
        cols = np.nonzero(al[:, x0:x1].max(0) > 0.5)[0] + x0
        boxes.append((cols[0], cols[-1]))
    half = max((b - a) // 2 for a, b in boxes) + 12
    out = []
    for a, b in boxes:
        c = (a + b) // 2
        out.append((c - half, y0, c + half, y1))
    return out


def classify(rgb, al, side):
    h, s, v = hsv(rgb)
    H = rgb.shape[0]
    ry = np.arange(H)[:, None] / H * np.ones(rgb.shape[:2])
    sat = (al > 0.6) & (s > 0.4) & (v > 0.25)
    z = np.full(rgb.shape[:2], -1, np.int8)
    blue = sat & (h >= 180) & (h < 245)
    green = sat & (h >= 85) & (h < 165)
    if side == "front":
        pink = sat & ((h >= 280) | (h < 10))
        z[pink & (ry < 0.42)] = CHEST
        z[pink & (ry >= 0.42) & (ry < 0.68)] = QUADS
        z[green & (ry < 0.6)] = ABS
        z[blue & (ry > 0.18) & (ry < 0.42)] = ARMS
        z[sat & (h >= 10) & (h < 60) & (ry > 0.6)] = CALVES
    else:
        z[sat & (h >= 42) & (h < 70) & (ry < 0.4)] = TRAPS
        z[green & (ry < 0.45)] = BACK
        z[sat & (h >= 245) & (h < 300) & (ry < 0.6)] = LOWBACK
        z[sat & ((h >= 330) | (h < 12)) & (ry > 0.3) & (ry < 0.62)] = GLUTES
        z[blue & (ry > 0.18) & (ry < 0.42)] = ARMS
        z[blue & (ry >= 0.5) & (ry < 0.72)] = HAMS
        z[sat & (h >= 12) & (h < 45) & (ry > 0.6)] = CALVES
    # each zone: close small gaps, fill the dark detail lines inside, drop crumbs
    out = np.full(z.shape, -1, np.int8)
    body = al > 0.5
    for k in range(10):
        m = z == k
        if not m.any():
            continue
        m = ndimage.binary_opening(m & ndimage.binary_erosion(body, iterations=3), iterations=3)
        m = ndimage.binary_closing(m, iterations=3) & body
        m = ndimage.binary_fill_holes(m)
        lab, n = ndimage.label(m)
        if n:
            sizes = ndimage.sum(m, lab, range(1, n + 1))
            keep = np.isin(lab, [i + 1 for i, sz in enumerate(sizes) if sz >= max(250, sizes.max() * 0.03)])
            keep = ndimage.gaussian_filter(keep.astype(np.float32), 1.6) > 0.5   # smooth edges
            out[keep & body & (out < 0)] = k
    return out, v


def build(img: Image.Image, side: str):
    a = np.asarray(img).astype(np.float32) / 255
    rgb, al = a[..., :3], a[..., 3]
    zone, v = classify(rgb, al, side)
    inz = zone >= 0
    lum = rgb @ np.array([0.3, 0.59, 0.11], np.float32)
    body = (~inz) & (al > 0.9)
    body_l = float(np.median(lum[body])) if body.any() else 0.25
    shade = np.zeros_like(v)
    for k in range(10):
        m = zone == k
        if m.any():
            # light of the painted muscle: luminance against the zone's own bright end (hue-independent)
            lo, hi = np.percentile(lum[m], 3), np.percentile(lum[m], 97)
            shade[m] = np.clip((lum[m] - lo) / max(hi - lo, 1e-3), 0, 1)
    # neutral art: everything to graphite, zones take the body tone with their own shading
    grey = np.where(inz, body_l * (0.55 + 0.75 * shade), lum)
    tint = np.array([0.97, 0.99, 1.06], np.float32)
    art = np.clip(grey[..., None] * tint[None, None, :], 0, 1)
    art_rgba = np.dstack([art, al])
    zmap = np.zeros(zone.shape + (3,), np.uint8)
    zmap[..., 0] = np.where(inz, zone + 1, 0)
    zmap[..., 1] = (np.clip(shade * 255, 0, 255).astype(np.uint8) & 0xF8)   # 32 light levels: plenty, packs small
    zmap[..., 2] = np.clip(al * 255, 0, 255).astype(np.uint8)
    return Image.fromarray((art_rgba * 255).astype(np.uint8), "RGBA"), Image.fromarray(zmap, "RGB")


def uri(im: Image.Image, fmt: str) -> str:
    buf = io.BytesIO()
    if fmt == "webp":
        im.save(buf, "WEBP", quality=90, method=6)
        return "data:image/webp;base64," + base64.b64encode(buf.getvalue()).decode()
    im.save(buf, "WEBP", lossless=True, quality=100, method=6)
    return "data:image/webp;base64," + base64.b64encode(buf.getvalue()).decode()


def main() -> int:
    blocks = ""
    for sex in ("female", "male"):
        src = Image.open(SRC / f"{sex}.png").convert("RGBA")
        al = np.asarray(src)[..., 3].astype(np.float32) / 255
        blocks += f"<!--FIG:{sex}-->"
        for side, box in zip(("front", "back"), split(al)):
            crop = Image.new("RGBA", (box[2] - box[0], box[3] - box[1]), (0, 0, 0, 0))
            crop.alpha_composite(src.crop((max(0, box[0]), box[1], min(src.width, box[2]), box[3])),
                                 (max(0, -box[0]), 0))
            art, zmap = build(crop, side)
            key = f"{sex}_{side}"
            a, m = uri(art, "webp"), uri(zmap, "png")
            blocks += (f'<script type="text/plain" id="art-{key}">{a}</script>'
                       f'<script type="text/plain" id="fig-{key}">{m}</script>')
            print(f"{key}: {art.size} art {len(a) // 1024} KB, map {len(m) // 1024} KB")
        blocks += f"<!--/FIG:{sex}-->\n"
    card = CARD.read_text(encoding="utf-8")
    i = card.index("<!--FIG:female-->")
    j = card.index("<!--/FIG:male-->") + len("<!--/FIG:male-->\n")
    CARD.write_text(card[:i] + blocks + card[j:], encoding="utf-8")
    print(f"{CARD.relative_to(ROOT)} updated")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
