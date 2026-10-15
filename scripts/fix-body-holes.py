#!/usr/bin/env python3
"""Close a gap in the body figures' art (branding/body/*-art.webp) that is not a real gap of the body: male_back had
a transparent wedge between the left glute and the thigh (x 100..149, y 336..348 at 640 px high) — the background
showed through as a white spot (owner). It joins the space between the legs, so it is named here, not found. Its
pixels get the colour of their opaque neighbours (grown inward ring by ring) and full opacity. Idempotent.
   python3 scripts/fix-body-holes.py      (then: scripts/xbody/gen-panel-body.py, the APKs carry branding/body)"""
from pathlib import Path

import numpy as np
from PIL import Image

ROOT = Path(__file__).resolve().parents[1]
PATCHES = {"male_back": [(100, 336, 150, 349)]}   # x0, y0, x1, y1 (exclusive) in the 640-high art

for key, rects in PATCHES.items():
    f = ROOT / "branding/body" / f"{key}-art.webp"
    a = np.array(Image.open(f).convert("RGBA")).astype(np.int32)
    h, w = a.shape[:2]
    todo = np.zeros((h, w), bool)
    for x0, y0, x1, y1 in rects:
        todo[y0:y1, x0:x1] = a[y0:y1, x0:x1, 3] < 250
    n = int(todo.sum())
    while todo.any():
        done = []
        for y, x in zip(*np.nonzero(todo)):
            nb = [a[yy, xx, :3] for yy, xx in ((y + 1, x), (y - 1, x), (y, x + 1), (y, x - 1))
                  if 0 <= yy < h and 0 <= xx < w and not todo[yy, xx] and a[yy, xx, 3] >= 250]
            if nb:
                done.append((y, x, np.mean(nb, axis=0)))
        if not done:
            break
        for y, x, c in done:
            a[y, x, :3] = c
            a[y, x, 3] = 255
            todo[y, x] = False
    if n:
        Image.fromarray(a.clip(0, 255).astype(np.uint8), "RGBA").save(f, "WEBP", quality=88, method=6)
    print(f"{key}: closed {n} px")
