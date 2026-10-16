#!/usr/bin/env python3
"""XBody's OWN training-screen body pictures, redrawn from the XEMS figures (owner: "replace the human models there").
XBody draws BodyNormal.png (500×500, the figure front | back on its off-white) and one red overlay per lit zone
(BodyAbdomen.png … RGBA). Its config key `pixmaps_directory` makes it read every picture from a folder instead of
its binary: the unit exports its own pictures there and these files replace the body ones (opt/xems/bin/
xems-figures.sh, hooks/50-xbody-figures.sh). Same frame as XBody's: front centred at x 157, back at x 340, y 65..437.
Nothing of XBody's is used here — only our art (branding/body, scripts/gen-body-figures.py).
   python3 scripts/xbody/gen-xbody-body.py   → xbody/overlay/opt/xems/xbody-body/<female|male>/Body*.png"""
import random
from pathlib import Path

from PIL import Image

ROOT = Path(__file__).resolve().parents[2]
SRC = ROOT / "branding/body"
OUT = ROOT / "xbody/overlay/opt/xems/xbody-body"
SIZE, TOP, H, CX = 500, 65, 372, (157, 340)
RED = (0xE2, 0x1A, 0x22)
# XBody's overlay name → the XEMS zone-map channel (idx R − 1: Гърди 0, Корем 1, Предно бедро 2, Прасец 3, Ръце 4,
# Трапец 5, Гръб 6, Кръст 7, Седалище 8, Задно бедро 9)
ZONES = {"BodyChest": 0, "BodyAbdomen": 1, "BodyLegFront": 2, "BodyOptional": 3, "BodyArm": 4, "BodyTrapezius": 5,
         "BodyBack": 6, "BodyWaist": 7, "BodyBottom": 8, "BodyLegBack": 9}


def lift(v, blue=False):
    """The lighter grey the owner chose for the figures (85 + 0.65·v, a touch cool)."""
    return min(255, (91 if blue else 85) + v * 65 // 100)


def shade(c, l, a):
    """The tablet's recolour: the shade keeps the muscle's volume (dark → black, light → white)."""
    l = 0.22 + 0.78 * l
    if l < 0.5:
        rgb = tuple(int(x * 2 * l) for x in c)
    else:
        k = (2 * l - 1) * 0.55
        rgb = tuple(int(x + (255 - x) * k) for x in c)
    return rgb + (a,)


def grain():
    """An off-white grain like XBody's window (247..255), seeded: the same file every build."""
    rnd = random.Random(7)
    im = Image.new("RGB", (SIZE, SIZE))
    im.putdata([(g, g, g) for g in (250 + rnd.randrange(6) for _ in range(SIZE * SIZE))])
    return im


def build(sex):
    out = OUT / sex
    out.mkdir(parents=True, exist_ok=True)
    base = grain()
    overlays = {n: Image.new("RGBA", (SIZE, SIZE), (0, 0, 0, 0)) for n in ZONES}
    for side, cx in zip(("front", "back"), CX):
        art = Image.open(SRC / f"{sex}_{side}-art.webp").convert("RGBA")
        idx = Image.open(SRC / f"{sex}_{side}-idx.webp").convert("RGB")
        w = round(art.width * H / art.height)
        art = art.resize((w, H), Image.LANCZOS)
        r, g, b, a = art.split()
        art = Image.merge("RGBA", (r.point(lift), g.point(lift), b.point(lambda v: lift(v, True)), a))
        x0 = cx - w // 2
        base.paste(art, (x0, TOP), art)
        ir, ig, ib = idx.split()
        ir = ir.resize((w, H), Image.NEAREST).load()
        ig = ig.resize((w, H), Image.BILINEAR).load()
        ib = ib.resize((w, H), Image.BILINEAR).load()
        px = {n: overlays[n].load() for n in ZONES}
        for y in range(H):
            for x in range(w):
                cov = ib[x, y]
                if cov <= 8:
                    continue
                ch = ir[x, y] - 1
                for n, c in ZONES.items():
                    if c == ch:
                        px[n][x0 + x, TOP + y] = shade(RED, ig[x, y] / 255.0, cov)
    base.save(out / "BodyNormal.png", optimize=True)
    for n, im in overlays.items():
        im.save(out / f"{n}.png", optimize=True)
    print(f"  {sex}: BodyNormal + {len(overlays)} zones")


if __name__ == "__main__":
    for s in ("female", "male"):
        build(s)
