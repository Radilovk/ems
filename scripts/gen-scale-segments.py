#!/usr/bin/env python3
"""The scale's five body segments on the project's anatomical figures (branding/body/<key>-art.webp, made by
scripts/gen-body-figures.py) → branding/body/<key>-seg.webp: R = segment id (0 outside / head, 1 trunk, 2 left arm,
3 right arm, 4 left leg, 5 right leg — the client's own left and right, so on the front view the client's left is
on the image's right). Cut from the silhouette's alpha, row by row: the run through the midline is the trunk, runs
beside it are the arms (deltoids go to the arm beyond the armpit width), below the crotch the two runs are the
legs; the head and neck stay out. Shipped with the other body assets (scripts/apply-exercise-assets.py).
Run after the figures change: python3 scripts/gen-scale-segments.py [--debug DIR]
"""

from __future__ import annotations

import sys
from pathlib import Path

from PIL import Image

ROOT = Path(__file__).resolve().parents[1]
BODY = ROOT / "branding" / "body"
KEYS = ("male_front", "male_back", "female_front", "female_back")
TRUNK, L_ARM, R_ARM, L_LEG, R_LEG = 1, 2, 3, 4, 5
DEBUG_COL = {0: (0, 0, 0, 0), TRUNK: (34, 197, 94, 255), L_ARM: (59, 130, 246, 255), R_ARM: (236, 72, 153, 255),
             L_LEG: (250, 204, 21, 255), R_LEG: (168, 85, 247, 255)}


def runs(row: list[bool]) -> list[tuple[int, int]]:
    out, start = [], None
    for x, on in enumerate(row + [False]):
        if on and start is None:
            start = x
        elif not on and start is not None:
            out.append((start, x - 1))
            start = None
    return out


def segment(art: Image.Image, front: bool) -> Image.Image:
    w, h = art.size
    a = art.getchannel("A").load()
    mask = [[a[x, y] > 40 for x in range(w)] for y in range(h)]
    rows = [runs(mask[y]) for y in range(h)]
    # midline: the centre of the widest run in the middle of the figure
    mid = w / 2
    # neck: the narrowest single run in the top fifth below the head's widest row
    top = next(y for y in range(h) if rows[y])
    head_w = [(r[-1][1] - r[0][0]) if r else 0 for r in rows]
    y_headmax = max(range(top, top + h // 10), key=lambda y: head_w[y])
    y_neck = min(range(y_headmax, top + h // 5), key=lambda y: head_w[y])
    # armpit: first row below the neck where three or more runs appear (arm | trunk | arm)
    y_pit = next((y for y in range(y_neck, h // 2) if len(rows[y]) >= 3), h // 3)
    trunk_run = min(rows[y_pit], key=lambda r: abs((r[0] + r[1]) / 2 - mid))
    pit_half = (trunk_run[1] - trunk_run[0]) / 2 + 2
    # crotch: first row below the middle where the midline is outside the figure
    y_crotch = next((y for y in range(int(h * 0.42), h) if not mask[y][int(mid)]), int(h * 0.5))
    out = Image.new("L", (w, h), 0)
    o = out.load()
    for y in range(y_neck + 2, h):
        # below the crotch: on each side the run nearest the midline is the leg, any further out is a hand
        legs = set()
        for side in (-1, 1):
            cand = [r for r in rows[y] if ((r[0] + r[1]) / 2 - mid) * side > 0 or r[0] <= mid <= r[1]]
            if cand:
                legs.add(min(cand, key=lambda r: abs((r[0] + r[1]) / 2 - mid)))
        for (x0, x1) in rows[y]:
            for x in range(x0, x1 + 1):
                image_left = x < mid
                if y >= y_crotch:
                    seg = "leg" if (x0, x1) in legs or abs((x0 + x1) / 2 - mid) < w * 0.3 else "arm"
                elif y < y_pit:
                    # shoulders: within the armpit width = trunk, beyond = the arm's deltoid
                    seg = "trunk" if abs(x - mid) <= pit_half else "arm"
                else:
                    seg = "trunk" if x0 <= mid <= x1 else "arm"
                # front view: the image's left is the client's right; back view: the same side
                client_left = (not image_left) if front else image_left
                if seg == "trunk":
                    v = TRUNK
                elif seg == "arm":
                    v = L_ARM if client_left else R_ARM
                else:
                    v = L_LEG if client_left else R_LEG
                o[x, y] = v
    return out


def main() -> int:
    debug = Path(sys.argv[sys.argv.index("--debug") + 1]) if "--debug" in sys.argv else None
    for key in KEYS:
        art = Image.open(BODY / f"{key}-art.webp").convert("RGBA")
        seg = segment(art, key.endswith("front"))
        Image.merge("RGB", (seg, Image.new("L", seg.size, 0), Image.new("L", seg.size, 0))).save(
            BODY / f"{key}-seg.webp", "WEBP", lossless=True, method=6)
        if debug:
            debug.mkdir(parents=True, exist_ok=True)
            col = Image.new("RGBA", seg.size)
            px, sp = col.load(), seg.load()
            for y in range(seg.size[1]):
                for x in range(seg.size[0]):
                    px[x, y] = DEBUG_COL[sp[x, y]]
            Image.alpha_composite(art, Image.blend(Image.new("RGBA", seg.size), col, 0.6)).save(debug / f"{key}.png")
        print(f"{key}: {seg.size}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
