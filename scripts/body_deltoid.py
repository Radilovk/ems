"""The deltoid (shoulder cap) on the body figures' zone maps — one cut for every figure: the report and the client
card (scripts/gen-card-art.py), the Auto live board (scripts/gen-body-figures.py, from the report's maps) and the
band (band-app/scripts/gen-body.py, through gen-card-art). The suit has no deltoid channel: the exercises alone
colour it (their muscles' shoulder column), so the source art has no region for it.

Map format: R = zone + 1 (1…10 the suit channels, DELTOID_R the deltoid), G = the painted light, B = coverage.
The cap: an ellipse over the top of each arm region (R 5), on body pixels no other region holds, faded towards
the neck; G from the art's lightness the way the map's other regions have it, B = a soft edge × the silhouette.
"""
from __future__ import annotations

import numpy as np
from PIL import Image

DELTOID_R = 13
ARMS_R = 5
CORE_R = (1, 6, 7)          # chest, traps, back: the inner limit


def add_deltoid(art: Image.Image, idx: Image.Image) -> Image.Image:
    a = np.asarray(art.convert("RGBA")).astype(np.float32)
    ix = np.array(idx.convert("RGB"))
    r = ix[..., 0]
    if (r == DELTOID_R).any() or not (r == ARMS_R).any():
        return Image.fromarray(ix)
    lum = a[..., :3].mean(-1)
    h, w = r.shape
    yy, xx = np.mgrid[0:h, 0:w]
    mid = w / 2
    cov = np.zeros((h, w), np.float32)
    for side in (-1, 1):
        m = (r == ARMS_R) & ((xx < mid) if side < 0 else (xx >= mid))
        ys, xs = np.nonzero(m)
        if not len(ys):
            continue
        top = ys.min()
        aw = float(xs.max() - xs.min())
        cx = xs[ys < top + 0.02 * h].mean() - side * 0.05 * aw
        cy = top - 0.35 * aw
        d = ((xx - cx) / (0.8 * aw)) ** 2 + ((yy - cy) / (0.9 * aw)) ** 2
        e = np.clip((1 - d) / 0.25, 0, 1)
        e[yy > top + 0.25 * aw] = 0
        cov = np.maximum(cov, e)
    cov *= a[..., 3] / 255.0
    cov[r > 0] = 0
    core = np.nonzero(np.isin(r, CORE_R))[1]
    if len(core):
        half = (core.max() - core.min()) / 2.0
        cov *= np.clip((np.abs(xx - mid) - 0.30 * half) / (0.18 * half), 0, 1)
    sel = cov * 255 > 8
    known = r > 0
    k = np.polyfit(lum[known], ix[..., 1][known].astype(np.float64), 1)
    g = np.clip(k[0] * lum + k[1], 0, 255)
    ix[..., 0][sel] = DELTOID_R
    ix[..., 1][sel] = g[sel].astype(np.uint8)
    ix[..., 2][sel] = np.clip(cov[sel] * 255, 0, 255).astype(np.uint8)
    return Image.fromarray(ix)
