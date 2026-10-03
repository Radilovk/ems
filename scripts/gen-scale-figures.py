#!/usr/bin/env python3
"""The scale page's body figures, from the owner's colour-coded anatomical art (branding/body/scale/src/<sex>.png:
front and back side by side, each suit muscle group in its own colour on a transparent background) →
branding/body/scale/<sex>_<side>-art.webp + -map.webp, HEIGHT px high:

- art: the figure in grey (its own light, so every muscle keeps its definition), the glow cut;
- map (lossless RGB): R = scale segment (0 outside / head, 1 trunk, 2 left arm, 3 right arm, 4 left leg, 5 right leg —
  the client's own sides), G = suit channel + 1 (PartStrenthBean.buwei order: 0 chest, 1 abs, 2 front thigh, 3 calf,
  4 arms, 5 traps, 6 back, 7 lower back, 8 glutes, 9 back thigh; 0 = no channel muscle).

Segments are cut from the silhouette row by row (trunk = the run through the midline, arms beside it, deltoids beyond
the armpit width, legs below the crotch, hands at any height go to the arm); channels from the colour (hue bands +
position for the two pairs that share a hue), then closed so the striations inside a muscle stay part of it.
Shipped by scripts/apply-exercise-assets.py → assets/xems/body/scale/. Run after the source art changes:
python3 scripts/gen-scale-figures.py [--debug DIR]
"""

from __future__ import annotations

import colorsys
import sys
from pathlib import Path

from PIL import Image, ImageFilter

ROOT = Path(__file__).resolve().parents[1]
DIR = ROOT / "branding" / "body" / "scale"
HEIGHT = 720
TRUNK, L_ARM, R_ARM, L_LEG, R_LEG = 1, 2, 3, 4, 5
DEBUG_SEG = {0: (0, 0, 0, 0), 1: (34, 197, 94), 2: (59, 130, 246), 3: (236, 72, 153), 4: (250, 204, 21), 5: (168, 85, 247)}
DEBUG_CH = [(255, 0, 255), (0, 200, 0), (255, 60, 150), (255, 140, 0), (0, 170, 255), (255, 230, 0), (0, 130, 60),
            (130, 0, 220), (230, 0, 0), (0, 70, 230)]


def split(img: Image.Image) -> tuple[Image.Image, Image.Image]:
    """Front | back at the empty column gap in the middle third."""
    a = img.getchannel("A")
    w, h = img.size
    filled = [any(a.getpixel((x, y)) > 40 for y in range(0, h, 3)) for x in range(w)]
    gap = [x for x in range(w // 3, 2 * w // 3) if not filled[x]]
    cut = (gap[0] + gap[-1]) // 2 if gap else w // 2
    out = []
    for box in ((0, 0, cut, h), (cut, 0, w, h)):
        part = img.crop(box)
        bb = part.getchannel("A").point(lambda v: 255 if v > 60 else 0).getbbox()
        part = part.crop(bb)
        out.append(part.resize((round(part.width * HEIGHT / part.height), HEIGHT), Image.LANCZOS))
    return out[0], out[1]


def runs(row):
    out, start = [], None
    for x, on in enumerate(row + [False]):
        if on and start is None:
            start = x
        elif not on and start is not None:
            out.append((start, x - 1))
            start = None
    return out


def segments(alpha: Image.Image, front: bool) -> list[list[int]]:
    w, h = alpha.size
    a = alpha.load()
    mask = [[a[x, y] > 110 for x in range(w)] for y in range(h)]
    rows = [runs(mask[y]) for y in range(h)]
    mid = w / 2
    width = [(r[-1][1] - r[0][0]) if r else 0 for r in rows]
    top = next(y for y in range(h) if rows[y])
    y_head = max(range(top, top + h // 10), key=lambda y: width[y])
    y_neck = min(range(y_head, top + h // 5), key=lambda y: width[y])
    # armpit: the first row from which arm | trunk | arm stay apart for 20 rows (not a gap in the hair or a hand)
    y_pit = next((y for y in range(y_neck, h // 2) if all(len(rows[y + k]) >= 3 for k in range(20))), h // 3)
    trunk_run = min(rows[y_pit + 6], key=lambda r: abs((r[0] + r[1]) / 2 - mid))
    pit_half = min((trunk_run[1] - trunk_run[0]) / 2 - 2, w * 0.215)
    y_crotch = next((y for y in range(int(h * 0.42), h) if not mask[y][int(mid)]), int(h * 0.5))
    seg = [[0] * w for _ in range(h)]
    for y in range(y_neck + 2, h):
        legs = set()
        for side in (-1, 1):
            cand = [r for r in rows[y] if ((r[0] + r[1]) / 2 - mid) * side > 0 or r[0] <= mid <= r[1]]
            if cand:
                legs.add(min(cand, key=lambda r: abs((r[0] + r[1]) / 2 - mid)))
        for (x0, x1) in rows[y]:
            for x in range(x0, x1 + 1):
                if y >= y_crotch:
                    s = "leg" if (x0, x1) in legs or abs((x0 + x1) / 2 - mid) < w * 0.3 else "arm"
                elif y < y_pit:
                    s = "trunk" if abs(x - mid) <= pit_half else "arm"
                else:
                    s = "trunk" if x0 <= mid <= x1 else "arm"
                left = (x >= mid) if front else (x < mid)
                seg[y][x] = TRUNK if s == "trunk" else (L_ARM if left else R_ARM) if s == "arm" else (L_LEG if left else R_LEG)
    return seg, y_crotch


def channels(img: Image.Image, seg, front: bool, y_crotch: int) -> list[list[int]]:
    w, h = img.size
    px = img.load()
    # the glow paints the dark skin along the outline: only well inside the silhouette counts
    core = img.getchannel("A").point(lambda v: 255 if v > 200 else 0).filter(ImageFilter.MinFilter(9)).load()
    raw = [[0] * w for _ in range(h)]
    for y in range(h):
        for x in range(w):
            r, g, b, al = px[x, y]
            if al < 200 or seg[y][x] == 0 or core[x, y] == 0:
                continue
            hh, ss, vv = colorsys.rgb_to_hsv(r / 255, g / 255, b / 255)
            if ss < 0.42 or vv < 0.32:
                continue
            hue = hh * 360
            s = seg[y][x]
            arm = s in (L_ARM, R_ARM)
            ch = -1
            if 175 <= hue <= 235:
                # upper arm (not the forearm) / back of the thigh (not the foot)
                ch = 4 if arm and y < h * 0.40 else 9 if not arm and not front and y_crotch * 0.95 <= y < h * 0.75 else -1
            elif 95 <= hue <= 155:
                ch = (1 if front else 6) if y < y_crotch else -1
            elif front and 280 <= hue < 318 and y < y_crotch * 0.8:
                ch = 0
            elif front and (hue >= 280 or hue < 8) and y >= y_crotch * 0.9 and y < h * 0.72:
                ch = 2
            elif not front and 245 <= hue < 295 and y < y_crotch:
                ch = 7
            elif not front and (hue >= 330 or hue < 14) and h * 0.38 <= y < h * 0.62:
                ch = 8
            elif 12 <= hue < 68:
                ch = 5 if (not front and y < h * 0.3) else 3 if h * 0.6 < y < h * 0.92 else -1
            if ch >= 0:
                raw[y][x] = ch + 1
    # close each channel (5 px) so the dark striations inside a muscle stay part of it
    out = [[0] * w for _ in range(h)]
    for ch in range(1, 11):
        m = Image.new("L", (w, h), 0)
        mp = m.load()
        any_px = False
        for y in range(h):
            for x in range(w):
                if raw[y][x] == ch:
                    mp[x, y] = 255
                    any_px = True
        if not any_px:
            continue
        m = m.filter(ImageFilter.MaxFilter(5)).filter(ImageFilter.MinFilter(5))
        mp = m.load()
        for y in range(h):
            for x in range(w):
                if mp[x, y] > 0 and seg[y][x] and out[y][x] == 0:
                    out[y][x] = ch
    return out


def grey(img: Image.Image) -> Image.Image:
    """The figure's own light in grey: definition kept, the colour gone, the glow outside the body cut."""
    w, h = img.size
    px = img.load()
    out = Image.new("RGBA", (w, h))
    op = out.load()
    for y in range(h):
        for x in range(w):
            r, g, b, a = px[x, y]
            if a < 110:
                continue
            l = int(0.30 * r + 0.59 * g + 0.11 * b)
            hh, ss, vv = colorsys.rgb_to_hsv(r / 255, g / 255, b / 255)
            if ss > 0.38:
                l = int(l * 0.62 + vv * 255 * 0.38)   # coloured muscle: brightness of the colour, not its hue
            op[x, y] = (l, l, l, 255)
    return out


def main() -> int:
    debug = Path(sys.argv[sys.argv.index("--debug") + 1]) if "--debug" in sys.argv else None
    for sex in ("male", "female"):
        src = Image.open(DIR / "src" / f"{sex}.png").convert("RGBA")
        for side, img in zip(("front", "back"), split(src)):
            front = side == "front"
            seg, y_crotch = segments(img.getchannel("A"), front)
            ch = channels(img, seg, front, y_crotch)
            w, h = img.size
            m = Image.new("RGB", (w, h))
            mp = m.load()
            for y in range(h):
                for x in range(w):
                    mp[x, y] = (seg[y][x], ch[y][x], 0)
            key = f"{sex}_{side}"
            m.save(DIR / f"{key}-map.webp", "WEBP", lossless=True, method=6)
            art = grey(img)
            art.save(DIR / f"{key}-art.webp", "WEBP", quality=90, method=6)
            if debug:
                debug.mkdir(parents=True, exist_ok=True)
                for kind in ("seg", "ch"):
                    col = Image.new("RGBA", (w, h))
                    cp = col.load()
                    for y in range(h):
                        for x in range(w):
                            v = seg[y][x] if kind == "seg" else ch[y][x]
                            if v:
                                c = DEBUG_SEG[v] if kind == "seg" else DEBUG_CH[v - 1]
                                cp[x, y] = (*c, 150)
                    Image.alpha_composite(art, col).save(debug / f"{key}-{kind}.png")
            print(f"{key}: {w}×{h}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
