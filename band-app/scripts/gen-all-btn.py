#!/usr/bin/env python3
"""Green/red −/+ bar for the Start screen. PNG not CSS: Vela clips images reliably."""
from pathlib import Path

from PIL import Image, ImageDraw

OUT = Path(__file__).resolve().parent.parent / "src" / "common" / "ui"
W, H = 192, 72
R = 20
GREEN = (31, 157, 70)
RED = (224, 52, 43)


def main() -> None:
    OUT.mkdir(parents=True, exist_ok=True)
    mask = Image.new("L", (W, H), 0)
    ImageDraw.Draw(mask).rounded_rectangle((0, 0, W - 1, H - 1), radius=R, fill=255)

    bar = Image.new("RGB", (W, H))
    px = bar.load()
    for y in range(H):
        for x in range(W):
            if mask.getpixel((x, y)):
                px[x, y] = GREEN if x < W // 2 else RED

    path = OUT / "all-btn.png"
    bar.save(path, optimize=True)

    # Right half only (second stack child breaks cfill on Vela; image for this half).
    half = Image.new("RGB", (96, 72))
    hd = ImageDraw.Draw(half)
    hd.rounded_rectangle((0, 0, 95, 71), radius=R, fill=RED)
    half_path = OUT / "all-btn-r.png"
    half.save(half_path, optimize=True)

    print(f"gen-all-btn: {path.name} ({path.stat().st_size} B), {half_path.name}")


if __name__ == "__main__":
    main()
