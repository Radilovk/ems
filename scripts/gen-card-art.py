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

Writes into branding/report/client-card.html and session-report.html, per view (<sex>_<side>):
  art-…  WebP with alpha: the neutral figure
  fig-…  lossless WebP map: R = zone + 1 (0 = none; 13 = the deltoid, scripts/body_deltoid.py),
         G = the zone's light (32 levels), B = zone coverage (soft edge)

usage: python3 scripts/gen-card-art.py        (needs numpy, scipy, Pillow with WebP)
"""
from __future__ import annotations

import base64
import io
import sys
from pathlib import Path

import numpy as np
from PIL import Image
from scipy import ndimage

sys.path.insert(0, str(Path(__file__).resolve().parent))
from body_deltoid import DELTOID_R, add_deltoid  # noqa: E402  (the shoulder cap: the suit has no channel there)

ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / "branding" / "report" / "figures"
CARD = ROOT / "branding" / "report" / "client-card.html"
REPORT = ROOT / "branding" / "report" / "session-report.html"

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
    sat = (al > 0.5) & (s > 0.5) & (v > 0.33)
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


def smooth(x, a, b):
    t = np.clip((x - a) / (b - a), 0, 1)
    return t * t * (3 - 2 * t)


def build(rgb, al, side, layers):
    """Colour follows the painting itself. Each pixel belongs to a zone by its own hue (and height
    on the body); how much of it is muscle comes from its saturation and brightness in the art,
    so every edge is the painted, anti-aliased edge. Crumbs are dropped; low-saturation pixels
    enclosed by a muscle (highlights, creases between heads) count as fully inside it."""
    lum = rgb @ np.array([0.3, 0.59, 0.11], np.float32)
    h, s, v = hsv(rgb)
    px = hue_rules(rgb, al, side)                       # sat > .5, v > .3, by hue and height
    body_m = al > 0.5
    zone = np.full(al.shape, -1, np.int8)
    w = np.zeros(al.shape, np.float32)
    shade = np.zeros_like(lum)
    wsat = smooth(s, 0.3, 0.62) * smooth(v, 0.3, 0.55)
    for k in range(10):
        m = px == k
        if not m.any():
            continue
        lab, n = ndimage.label(m)
        sizes = ndimage.sum(m, lab, range(1, n + 1))
        m = np.isin(lab, [i + 1 for i, sz in enumerate(sizes) if sz >= max(300, sizes.max() * 0.04)])
        filled = ndimage.binary_fill_holes(m) & body_m
        edge = ndimage.binary_dilation(filled, iterations=2) & body_m & (zone < 0)
        wk = np.where(filled & ~m, 1.0, 0.0)            # enclosed highlights / creases
        wk = np.maximum(wk, np.where(edge, wsat, 0.0))  # painted edge and body of the muscle
        take = (wk > 0.02) & (wk > w)
        zone[take] = k
        w[take] = wk[take]
        # light = the painted HSL lightness, scaled so the zone's typical lightness sits at 0.5:
        # the card recolours with it (dark → black, 0.5 → the colour, bright → white), so every
        # shadow, highlight and fibre of the painting stays, in the client's colour
        L = (rgb.max(-1) + rgb.min(-1)) / 2
        med = float(np.median(L[m]))
        shade[take] = np.clip(L[take] * 0.5 / max(med, 1e-3), 0, 1)
    w *= al
    body = (zone < 0) & (al > 0.9) & (s < 0.2)
    body_l = float(np.median(lum[body])) if body.any() else 0.25
    # neutral art: grey body as painted; coloured glow left on the skin loses its colour
    tinted = smooth(s, 0.12, 0.35)
    base = lum * (1 - tinted) + rgb.min(-1) * 1.15 * tinted
    zgrey = body_l * (0.55 + 0.75 * shade)
    grey = base * (1 - w) + zgrey * w
    tint = np.array([0.97, 0.99, 1.06], np.float32)
    art = np.clip(grey[..., None] * tint[None, None, :], 0, 1)
    art_rgba = np.dstack([art, al])
    zmap = np.zeros(al.shape + (3,), np.uint8)
    zmap[..., 0] = np.where(zone >= 0, zone + 1, 0)
    zmap[..., 1] = np.clip(shade * 255, 0, 255).astype(np.uint8)
    zmap[..., 2] = np.clip(w * 255, 0, 255).astype(np.uint8)
    art_im = Image.fromarray((art_rgba * 255).astype(np.uint8), "RGBA")
    return art_im, add_deltoid(art_im, Image.fromarray(zmap, "RGB"))


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
    for page in (CARD, REPORT):                 # the client card and the tablet report share them
        html = page.read_text(encoding="utf-8")
        i = html.index("<!--FIG:female-->")
        j = html.index("<!--/FIG:male-->") + len("<!--/FIG:male-->")
        tail = "\n" if html[j:j + 1] == "\n" else ""
        page.write_text(html[:i] + blocks.rstrip("\n") + tail + html[j + len(tail):], encoding="utf-8")
        print(f"{page.relative_to(ROOT)} updated")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
