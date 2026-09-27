#!/usr/bin/env python3
"""Client card figures from the illustrated art in branding/report/figures/.

Sources (one canvas each, front view left, back view right, figure on black):
  <sex>.png          the illustration; every suit zone painted in its own hue
                       front: chest magenta, abs green, arms blue, front thigh pink, calves orange
                       back:  traps yellow, back (lats) green, lower back purple, glutes red,
                              back thigh blue, arms blue, calves orange
  <sex>_layers.png   optional: the zones cut out by hand/tool (R = layer index, 0 = none), aligned
                     to <sex>.png. Each layer's zone is its majority vote of the hue rules below.
                     Without it the hue rules make the zones directly.
Every zone is cleaned the same way: whiskers opened away, holes filled, crumbs dropped, the edge
smoothed at sub-pixel level. The art keeps the whole body; zone pixels and the coloured glow
around them turn to the body's graphite, the zones keep their painted light for the card.

Writes into branding/report/client-card.html, per view (<sex>_<side>):
  art-…  WebP with alpha: the neutral figure
  fig-…  lossless WebP map: R = zone + 1 (0 = none), G = the zone's light (32 levels),
         B = zone coverage (soft edge)

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

CHEST, ABS, QUADS, CALVES, ARMS, TRAPS, BACK, LOWBACK, GLUTES, HAMS = range(10)


def hsv(rgb: np.ndarray):
    r, g, b = rgb[..., 0], rgb[..., 1], rgb[..., 2]
    mx, mn = rgb.max(-1), rgb.min(-1)
    d = mx - mn + 1e-6
    h = np.where(mx == r, ((g - b) / d) % 6, np.where(mx == g, (b - r) / d + 2, (r - g) / d + 4)) * 60
    return h, (mx - mn) / np.maximum(mx, 1e-6), mx


def silhouette(rgb: np.ndarray) -> np.ndarray:
    """The figure on black: bright enough, solid inside, soft 1 px edge."""
    lum = rgb.max(-1)
    solid = ndimage.binary_fill_holes(lum > 0.045)
    lab, n = ndimage.label(solid)
    if n > 1:
        sizes = ndimage.sum(solid, lab, range(1, n + 1))
        solid = np.isin(lab, [i + 1 for i, s in enumerate(sizes) if s > sizes.max() * 0.02])
    soft = ndimage.gaussian_filter(solid.astype(np.float32), 0.8)
    return np.clip((soft - 0.2) / 0.6, 0, 1)


def views(al: np.ndarray):
    """Front left, back right: one crop size for both so they keep one scale."""
    w = al.shape[1]
    col = al.sum(0)
    mid = int(np.argmin(col[w // 3: 2 * w // 3])) + w // 3
    rows = np.nonzero(al.max(1) > 0.5)[0]
    y0, y1 = max(0, rows[0] - 12), min(al.shape[0], rows[-1] + 13)
    boxes = []
    for x0, x1 in ((0, mid), (mid, w)):
        cols = np.nonzero(al[:, x0:x1].max(0) > 0.5)[0] + x0
        boxes.append((cols[0], cols[-1]))
    half = max((b - a) // 2 for a, b in boxes) + 14
    return [((a + b) // 2 - half, y0, (a + b) // 2 + half, y1) for a, b in boxes]


def hue_rules(rgb, al, side):
    """Per pixel zone from its hue and height on the body (ry: 0 head … 1 feet)."""
    h, s, v = hsv(rgb)
    rows = np.nonzero(al.max(1) > 0.5)[0]
    top, bot = rows[0], rows[-1]
    ry = ((np.arange(rgb.shape[0]) - top) / max(1, bot - top))[:, None] * np.ones(rgb.shape[:2])
    sat = (al > 0.5) & (s > 0.5) & (v > 0.3)
    z = np.full(rgb.shape[:2], -1, np.int8)
    blue = sat & (h >= 180) & (h < 245)
    green = sat & (h >= 85) & (h < 165)
    if side == "front":
        pink = sat & ((h >= 280) | (h < 10))
        z[pink & (ry < 0.42)] = CHEST
        z[pink & (ry >= 0.42) & (ry < 0.7)] = QUADS
        z[green & (ry < 0.6)] = ABS
        z[blue & (ry > 0.15) & (ry < 0.45)] = ARMS
        z[sat & (h >= 10) & (h < 60) & (ry > 0.6)] = CALVES
    else:
        z[sat & (h >= 42) & (h < 70) & (ry < 0.4)] = TRAPS
        z[green & (ry < 0.5)] = BACK
        z[sat & (h >= 245) & (h < 300) & (ry < 0.62)] = LOWBACK
        z[sat & ((h >= 330) | (h < 12)) & (ry > 0.3) & (ry < 0.64)] = GLUTES
        z[blue & (ry > 0.15) & (ry < 0.45)] = ARMS
        z[blue & (ry >= 0.48) & (ry < 0.75)] = HAMS
        z[sat & (h >= 12) & (h < 45) & (ry > 0.6)] = CALVES
    return z


def clean(m: np.ndarray, body: np.ndarray) -> np.ndarray:
    """One zone: whiskers off, holes filled, crumbs dropped, a smooth sub-pixel edge (0..1)."""
    m = ndimage.binary_opening(m, iterations=2)
    m = ndimage.binary_closing(m, iterations=3)
    m = ndimage.binary_fill_holes(m) & body
    lab, n = ndimage.label(m)
    if not n:
        return np.zeros(m.shape, np.float32)
    sizes = ndimage.sum(m, lab, range(1, n + 1))
    m = np.isin(lab, [i + 1 for i, s in enumerate(sizes) if s >= max(300, sizes.max() * 0.03)])
    soft = ndimage.gaussian_filter(m.astype(np.float32), 2.2)
    return np.clip((soft - 0.3) / 0.4, 0, 1)


def zones(rgb, al, side, layers):
    rules = hue_rules(rgb, al, side)
    body = al > 0.5
    cov = np.zeros((10,) + al.shape, np.float32)
    if layers is not None:
        for i in np.unique(layers):
            if i == 0:
                continue
            m = layers == i
            votes = rules[m]
            votes = votes[votes >= 0]
            if not len(votes):
                continue
            z = int(np.bincount(votes).argmax())
            # the layer bounds the muscle, its painted colour draws the exact edge
            cov[z] = np.maximum(cov[z], clean(ndimage.binary_dilation(m, iterations=4) & (rules == z), body))
    else:
        for z in range(10):
            if (rules == z).any():
                cov[z] = clean(rules == z, body)
    zone = np.where(cov.max(0) > 0.02, cov.argmax(0), -1)
    return zone, cov.max(0)


def build(rgb, al, side, layers):
    zone, cov = zones(rgb, al, side, layers)
    lum = rgb @ np.array([0.3, 0.59, 0.11], np.float32)
    grey_under = rgb.min(-1)                      # the body under a coloured glow
    h, s, v = hsv(rgb)
    inz = zone >= 0
    body = (~inz) & (al > 0.9) & (s < 0.25)
    body_l = float(np.median(lum[body])) if body.any() else 0.25
    shade = np.zeros_like(lum)
    for k in range(10):
        m = (zone == k) & (cov > 0.5)
        if m.any():
            lo, hi = np.percentile(lum[m], 3), np.percentile(lum[m], 97)
            shade[zone == k] = np.clip((lum[zone == k] - lo) / max(hi - lo, 1e-3), 0, 1)
    # neutral art: the body as painted where it is grey; where a zone's colour or glow tints it,
    # the grey underneath; the zones themselves in the body tone with their own light
    tinted = np.clip((s - 0.18) / 0.25, 0, 1)
    base = lum * (1 - tinted) + grey_under * 1.15 * tinted
    zgrey = body_l * (0.55 + 0.75 * shade)
    grey = base * (1 - cov) + zgrey * cov
    tint = np.array([0.97, 0.99, 1.06], np.float32)
    art = np.clip(grey[..., None] * tint[None, None, :], 0, 1)
    art_rgba = np.dstack([art, al])
    zmap = np.zeros(al.shape + (3,), np.uint8)
    zmap[..., 0] = np.where(inz, zone + 1, 0)
    zmap[..., 1] = (np.clip(shade * 255, 0, 255).astype(np.uint8) & 0xF8)
    zmap[..., 2] = np.clip(cov * 255, 0, 255).astype(np.uint8)
    return Image.fromarray((art_rgba * 255).astype(np.uint8), "RGBA"), Image.fromarray(zmap, "RGB")


def uri(im: Image.Image, lossless: bool) -> str:
    buf = io.BytesIO()
    if lossless:
        im.save(buf, "WEBP", lossless=True, quality=100, method=6)
    else:
        im.save(buf, "WEBP", quality=90, method=6)
    return "data:image/webp;base64," + base64.b64encode(buf.getvalue()).decode()


def crop(a: np.ndarray, box):
    x0, y0, x1, y1 = box
    out = np.zeros((y1 - y0, x1 - x0) + a.shape[2:], a.dtype)
    sx0, sx1 = max(0, x0), min(a.shape[1], x1)
    out[:, sx0 - x0: sx1 - x0] = a[y0:y1, sx0:sx1]
    return out


def main() -> int:
    blocks = ""
    for sex in ("female", "male"):
        rgb = np.asarray(Image.open(SRC / f"{sex}.png").convert("RGB")).astype(np.float32) / 255
        lp = SRC / f"{sex}_layers.png"
        layers = np.asarray(Image.open(lp)) if lp.exists() else None
        al = silhouette(rgb)
        blocks += f"<!--FIG:{sex}-->"
        for side, box in zip(("front", "back"), views(al)):
            art, zmap = build(crop(rgb, box), crop(al, box), side, None if layers is None else crop(layers, box))
            key = f"{sex}_{side}"
            a, m = uri(art, False), uri(zmap, True)
            blocks += (f'<script type="text/plain" id="art-{key}">{a}</script>'
                       f'<script type="text/plain" id="fig-{key}">{m}</script>')
            print(f"{key}: {art.size} art {len(a) // 1024} KB, map {len(m) // 1024} KB"
                  + (" (layers)" if layers is not None else ""))
        blocks += f"<!--/FIG:{sex}-->\n"
    card = CARD.read_text(encoding="utf-8")
    i = card.index("<!--FIG:female-->")
    j = card.index("<!--/FIG:male-->") + len("<!--/FIG:male-->\n")
    CARD.write_text(card[:i] + blocks + card[j:], encoding="utf-8")
    print(f"{CARD.relative_to(ROOT)} updated")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
