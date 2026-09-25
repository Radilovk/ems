#!/usr/bin/env python3
"""Screen backgrounds for the band app (212 × 520): near-black with a soft glow of the module's
colour at the top and a faint one at the bottom. Images, not CSS gradients: Vela draws PNGs
reliably, gradients / layered glows poorly. 8-bit palette keeps each file a few KB."""
from pathlib import Path
import math

from PIL import Image

OUT = Path(__file__).resolve().parent.parent / "src" / "common" / "bg"
W, H = 212, 520

THEMES = {                     # (top glow, bottom glow)
    "home": ((10, 132, 255), (0, 199, 190)),     # electric blue / cyan
    "start": ((48, 209, 88), (0, 199, 190)),     # green
    "ai": ((94, 92, 230), (10, 132, 255)),       # indigo
    "timer": ((255, 159, 10), (255, 214, 10)),
    "music": ((191, 90, 242), (94, 92, 230)),
    "pulse": ((90, 200, 250), (10, 132, 255)),
    "summary": ((255, 214, 10), (48, 209, 88)),
}
BASE = (6, 7, 10)


def glow(cx, cy, rx, ry, x, y):
    d = math.sqrt(((x - cx) / rx) ** 2 + ((y - cy) / ry) ** 2)
    return max(0.0, 1.0 - d) ** 2


def make(colors):
    top, bottom = colors
    im = Image.new("RGB", (W, H))
    px = im.load()
    for y in range(H):
        for x in range(W):
            a = 0.95 * glow(W * 0.5, -60, 300, 360, x, y)
            b = 0.45 * glow(W * 0.95, H + 40, 230, 260, x, y)
            px[x, y] = tuple(min(255, int(BASE[i] + (top[i] - BASE[i]) * a * 0.62
                                          + (bottom[i] - BASE[i]) * b * 0.62)) for i in range(3))
    return im.quantize(colors=160, dither=Image.Dither.FLOYDSTEINBERG)


def main():
    OUT.mkdir(parents=True, exist_ok=True)
    for name, colors in THEMES.items():
        make(colors).save(OUT / f"{name}.png", optimize=True)
    total = sum(p.stat().st_size for p in OUT.glob("*.png"))
    print(f"gen-bg: {len(THEMES)} backgrounds, {total // 1024} KB")


if __name__ == "__main__":
    main()
