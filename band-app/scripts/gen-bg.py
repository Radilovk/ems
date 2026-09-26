#!/usr/bin/env python3
"""Screen backgrounds for the band app (212 × 520): near-black with a soft glow of the module's
colour at the top (with a second, shifted tone for depth) and a faint one at the bottom. Images, not CSS gradients: Vela draws PNGs
reliably, gradients / layered glows poorly. 256-colour palette + dithering: smooth, still small."""
from pathlib import Path
import math

from PIL import Image

OUT = Path(__file__).resolve().parent.parent / "src" / "common" / "bg"
W, H = 106, 260  # half size: 4× less memory; the band stretches it (background-size: cover)

THEMES = {
    "home": (255, 59, 92),     # XEMS red
    "start": (48, 209, 88),    # green
    "ai": (255, 190, 30),       # gold: pure yellow turns olive on black
    "timer": (255, 159, 10),
    "music": (191, 90, 242),
    "pulse": (255, 69, 58),
    "summary": (255, 190, 30),
}
BASE_TOP = (9, 10, 14)
BASE_BOTTOM = (4, 4, 6)


def glow(cx, cy, rx, ry, x, y):
    d = math.sqrt(((x - cx) / rx) ** 2 + ((y - cy) / ry) ** 2)
    return max(0.0, 1.0 - d) ** 2


def shift(c, k):
    """Neighbour hue for depth: the second glow is the same colour, warmer or cooler."""
    r, g, b = c
    return (min(255, int(r * (1 - k) + b * k)), g, min(255, int(b * (1 - k) + r * k)))


def make(color):
    im = Image.new("RGB", (W, H))
    px = im.load()
    alt = shift(color, 0.35)
    for y in range(H):
        v = y / (H - 1)
        base = tuple(BASE_TOP[i] + (BASE_BOTTOM[i] - BASE_TOP[i]) * v for i in range(3))
        for x in range(W):
            main_g = 0.95 * glow(W * 0.42, -34, 150, 190, x, y)       # big light from the top
            side_g = 0.45 * glow(W * 1.05, 20, 95, 150, x, y)         # second tone, upper right
            low_g = 0.30 * glow(W * 0.05, H + 30, 120, 140, x, y)     # faint answer at the bottom
            vign = 1.0 - 0.35 * (abs(x - W / 2) / (W / 2)) ** 3       # darker side edges
            rgb = []
            for i in range(3):
                c = base[i] + (color[i] - base[i]) * main_g * 0.60
                c += (alt[i] - base[i]) * side_g * 0.40
                c += (color[i] - base[i]) * low_g * 0.40
                rgb.append(max(0, min(255, int(round(c * vign)))))
            px[x, y] = tuple(rgb)
    # 256 colours + dithering: no visible rings; decoded size on the band is the same as before
    return im.quantize(colors=256, method=Image.Quantize.MEDIANCUT, dither=Image.Dither.FLOYDSTEINBERG)


def main():
    OUT.mkdir(parents=True, exist_ok=True)
    for name, color in THEMES.items():
        make(color).save(OUT / f"{name}.png", optimize=True)
    total = sum(p.stat().st_size for p in OUT.glob("*.png"))
    print(f"gen-bg: {len(THEMES)} backgrounds, {total // 1024} KB")


if __name__ == "__main__":
    main()
