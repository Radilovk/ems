#!/usr/bin/env python3
"""Green/red bar for Start screen. Vela clips images, not stacked CSS fills."""
from pathlib import Path

from PIL import Image, ImageDraw

OUT = Path(__file__).resolve().parent.parent / "src" / "common" / "ui"
W, H = 196, 76
R = 22
BRIGHT_GREEN = (48, 209, 88)   # #30D158 — active training
BRIGHT_RED = (255, 69, 58)     # #FF453A
DIM_GREEN = (31, 157, 70)      # #1F9D46 — pause / before start
DIM_RED = (224, 52, 43)        # #E0342B


def write_bar(name: str, green: tuple[int, int, int], red: tuple[int, int, int]) -> None:
    mask = Image.new("L", (W, H), 0)
    ImageDraw.Draw(mask).rounded_rectangle((0, 0, W - 1, H - 1), radius=R, fill=255)

    rgb = Image.new("RGB", (W, H))
    px = rgb.load()
    for y in range(H):
        for x in range(W):
            if mask.getpixel((x, y)):
                px[x, y] = green if x < W // 2 else red

    bar = Image.new("RGBA", (W, H), (0, 0, 0, 0))
    bar.paste(rgb, mask=mask)

    path = OUT / name
    bar.save(path, optimize=True)
    print(f"gen-all-btn: {path.name} ({path.stat().st_size} B)")


def main() -> None:
    OUT.mkdir(parents=True, exist_ok=True)
    write_bar("all-btn.png", BRIGHT_GREEN, BRIGHT_RED)
    write_bar("all-btn-dim.png", DIM_GREEN, DIM_RED)


if __name__ == "__main__":
    main()
