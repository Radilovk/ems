#!/usr/bin/env python3
"""Green/red bar for Start screen (main − / +). Vela clips images, not stacked CSS fills."""
from pathlib import Path

from PIL import Image, ImageDraw

OUT = Path(__file__).resolve().parent.parent / "src" / "common" / "ui"
W, H = 196, 92
R = 22
BRIGHT_GREEN = (0, 245, 155)   # #30D158 — active training
BRIGHT_RED = (255, 69, 58)     # #FF453A
DIM_GREEN = (0, 178, 112)      # #1F9D46 — pause / before start
DIM_RED = (224, 52, 43)        # #E0342B


SS = 4


def shade(c, k):
    """k > 0 lighter, k < 0 darker."""
    return tuple(int(round(v + ((255 - v) if k > 0 else v) * k)) for v in c)


def write_bar(name: str, green: tuple[int, int, int], red: tuple[int, int, int]) -> None:
    """Two halves, each a soft top-light → deeper-bottom gradient, a thin dark seam between them
    and a faint light edge along the top — baked once, drawn as one image (cheap on the band)."""
    w, h, r = W * SS, H * SS, R * SS
    rgb = Image.new("RGB", (w, h))
    d = ImageDraw.Draw(rgb)
    for y in range(h):
        k = 0.14 - 0.30 * y / (h - 1)                 # +14 % at the top → −16 % at the bottom
        d.line((0, y, w // 2, y), fill=shade(green, k))
        d.line((w // 2, y, w, y), fill=shade(red, k))
    d.rectangle((w // 2 - SS, 0, w // 2 + SS, h), fill=(0, 0, 0))   # seam
    edge = Image.new("L", (w, h), 0)
    ImageDraw.Draw(edge).rounded_rectangle((0, 0, w - 1, h - 1), radius=r, outline=255, width=2 * SS)
    fade = Image.linear_gradient("L").resize((w, h)).point(lambda v: max(0, int((110 - v) * 0.8)))
    from PIL import ImageChops
    rgb = Image.composite(Image.new("RGB", (w, h), (255, 255, 255)), rgb, ImageChops.multiply(edge, fade))
    mask = Image.new("L", (w, h), 0)
    ImageDraw.Draw(mask).rounded_rectangle((0, 0, w - 1, h - 1), radius=r, fill=255)
    bar = rgb.convert("RGBA")
    bar.putalpha(mask)
    bar = bar.resize((W, H), Image.LANCZOS)

    path = OUT / name
    bar.save(path, optimize=True)
    print(f"gen-all-btn: {path.name} ({path.stat().st_size} B)")


def main() -> None:
    OUT.mkdir(parents=True, exist_ok=True)
    write_bar("all-btn.png", BRIGHT_GREEN, BRIGHT_RED)   # paused: same image, .cfill-dim opacity


if __name__ == "__main__":
    main()
