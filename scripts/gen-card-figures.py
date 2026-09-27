#!/usr/bin/env python3
"""Muscle-group figures for the client card, precomputed from the report's anatomical masks.

The report page (branding/report/session-report.html, const IDX) draws each suit zone as many thin
strips. The client card shows whole muscle groups instead, only for the ten zones the suit reaches:
  - each zone is closed (the gaps between its strips filled, square closing of radius r);
  - the big leg / hip / abs groups become one clean belly per side (convex outline, rounded);
  - chest, traps, back, arms and lower back keep their own shapes, edges smoothed;
  - for chest, abs, traps and back the original gaps stay as a faint line between the heads.
Output per figure, one PNG: R = zone + 1 (0 = no zone) | 128 when the pixel is a line between
heads, G = the group's rounded height (for soft light), B = body coverage (the silhouette).
The PNGs replace the <!--FIG:…--> blocks of branding/report/client-card.html.

usage: python3 scripts/gen-card-figures.py        (needs numpy, scipy, Pillow)
"""
from __future__ import annotations

import base64
import io
import re
from pathlib import Path

import numpy as np
from PIL import Image, ImageDraw
from scipy import ndimage
from scipy.spatial import ConvexHull

ROOT = Path(__file__).resolve().parents[1]
REPORT = ROOT / "branding" / "report" / "session-report.html"
CARD = ROOT / "branding" / "report" / "client-card.html"

# zone: (closing radius, faint lines between heads, clean belly)
# 0 chest, 1 abs, 2 front thigh, 3 calves, 4 arms, 5 traps, 6 back, 7 lower back, 8 glutes, 9 back thigh
CLOSE = [(4, 1, 0), (5, 1, 1), (9, 0, 1), (7, 0, 1), (4, 0, 0), (5, 1, 0), (6, 1, 0), (5, 0, 0), (6, 0, 1), (9, 0, 1)]
ORDER = [0, 1, 4, 5, 6, 7, 2, 3, 8, 9]


def box(a: np.ndarray, r: int, passes: int = 1) -> np.ndarray:
    """Box blur with clamped edges (same as the page's blurF)."""
    a = a.astype(np.float32)
    for _ in range(passes):
        a = ndimage.uniform_filter1d(a, 2 * r + 1, axis=1, mode="nearest")
        a = ndimage.uniform_filter1d(a, 2 * r + 1, axis=0, mode="nearest")
    return a


def bellies(binary: np.ndarray) -> np.ndarray:
    """One convex outline per connected part (tiny crumbs dropped)."""
    lab, n = ndimage.label(binary)
    if n == 0:
        return np.zeros(binary.shape, np.float32)
    sizes = ndimage.sum(binary, lab, range(1, n + 1))
    big = sizes.max()
    img = Image.new("L", (binary.shape[1], binary.shape[0]), 0)
    dr = ImageDraw.Draw(img)
    for k in range(1, n + 1):
        if sizes[k - 1] < big * 0.08:
            continue
        ys, xs = np.nonzero(lab == k)
        pts = np.column_stack([xs, ys])
        if len(pts) < 3:
            continue
        try:
            hull = ConvexHull(pts)
        except Exception:
            continue
        dr.polygon([tuple(map(float, pts[v])) for v in hull.vertices], fill=255)
    return np.asarray(img, np.float32) / 255.0


def groups(rgb: np.ndarray) -> np.ndarray:
    k, a = rgb[..., 0].astype(int), rgb[..., 2] > 0
    lab = np.full(k.shape, -1, np.int16)
    inner = np.zeros(k.shape, bool)
    for z in ORDER:
        orig = a & (k == z + 1)
        if not orig.any():
            continue
        r, heads, belly = CLOSE[z]
        s = box(orig, r) > 0.001
        s = (box(s, r) > 0.999) | orig
        if belly:
            f = box(bellies(s), 7, 3)
        else:
            f = box(s, max(2, round(r * 0.6)), 3)
        take = a & (f > 0.5) & (lab < 0)
        lab[take] = z
        if heads:
            inner |= take & ~orig & (f > 0.9)
    dome = box(lab >= 0, 6, 2)
    out = np.zeros(rgb.shape, np.uint8)
    out[..., 0] = np.where(lab >= 0, lab + 1, 0) | np.where(inner, 128, 0)
    out[..., 1] = np.clip(dome * 255, 0, 255).astype(np.uint8)
    out[..., 2] = rgb[..., 2]
    return out


def main() -> int:
    text = REPORT.read_text(encoding="utf-8")
    idx = text[text.index("const IDX="):]
    idx = idx[: idx.index("\n")]
    figs = dict(re.findall(r'"(\w+)": "data:image/png;base64,([^"]+)"', idx))
    blocks = ""
    for sex in ("female", "male"):
        blocks += f"<!--FIG:{sex}-->"
        for side in ("front", "back"):
            key = f"{sex}_{side}"
            rgb = np.asarray(Image.open(io.BytesIO(base64.b64decode(figs[key]))).convert("RGB"))
            buf = io.BytesIO()
            Image.fromarray(groups(rgb), "RGB").save(buf, "PNG", optimize=True)
            uri = "data:image/png;base64," + base64.b64encode(buf.getvalue()).decode()
            blocks += f'<script type="text/plain" id="fig-{key}">{uri}</script>'
            print(f"{key}: {len(uri)} chars")
        blocks += f"<!--/FIG:{sex}-->\n"
    card = CARD.read_text(encoding="utf-8")
    i = card.index("<!--FIG:female-->")
    j = card.index("<!--/FIG:male-->") + len("<!--/FIG:male-->\n")
    CARD.write_text(card[:i] + blocks + card[j:], encoding="utf-8")
    print(f"{CARD.relative_to(ROOT)} updated")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
