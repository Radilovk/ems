#!/usr/bin/env python3
"""Green/red bar for Start screen. Vela clips images, not stacked CSS fills."""
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

    rgb = Image.new("RGB", (W, H))
    px = rgb.load()
    for y in range(H):
        for x in range(W):
            if mask.getpixel((x, y)):
                px[x, y] = GREEN if x < W // 2 else RED

    bar = Image.new("RGBA", (W, H), (0, 0, 0, 0))
    bar.paste(rgb, mask=mask)

    path = OUT / "all-btn.png"
    bar.save(path, optimize=True)
    print(f"gen-all-btn: {path.name} ({path.stat().st_size} B)")


if __name__ == "__main__":
    main()
