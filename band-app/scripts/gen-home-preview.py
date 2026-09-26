#!/usr/bin/env python3
"""Render the card-menu home (212×520) from layout constants — no emulator."""
from __future__ import annotations

import argparse
from pathlib import Path

from PIL import Image, ImageDraw, ImageFont

ROOT = Path(__file__).resolve().parent.parent
BG = ROOT / "src" / "common" / "bg" / "home.png"
ICONS = ROOT / "src" / "common" / "icons"
W, H = 212, 520


def font(size: int, bold: bool = False):
    paths = [
        "/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf" if bold else "/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf",
    ]
    for p in paths:
        if Path(p).is_file():
            return ImageFont.truetype(p, size)
    return ImageFont.load_default()


def paste_icon(base, name, x, y, size):
    path = ICONS / name
    if not path.is_file():
        return
    icon = Image.open(path).convert("RGBA").resize((size, size), Image.Resampling.LANCZOS)
    base.paste(icon, (x, y), icon)


def render() -> Image.Image:
    if BG.is_file():
        im = Image.open(BG).convert("RGB").resize((W, H), Image.Resampling.LANCZOS)
    else:
        im = Image.new("RGB", (W, H), (8, 6, 8))
    d = ImageDraw.Draw(im)
    f_hr = font(62, True)
    f_sub = font(22)
    f_ct = font(32, True)
    f_cs = font(24)
    tw = d.textlength("88", font=f_hr)
    d.text(((W - tw) / 2 + 16, 48), "88", fill="#FFD60A", font=f_hr)
    paste_icon(im, "heart.png", 28, 62, 34)
    tw = d.textlength("Z3 · лимит 170", font=f_sub)
    d.text(((W - tw) / 2, 118), "Z3 · лимит 170", fill="#C7C7CC", font=f_sub)
    zones = ["#5AC8FA", "#30D158", "#FFD60A", "#FF9F0A", "#FF453A"]
    zx = (W - (32 * 5 + 6 * 4)) // 2
    for i, col in enumerate(zones):
        d.rounded_rectangle((zx + i * 38, 148, zx + i * 38 + 32, 158), 5, fill=col if i < 3 else "#3A3A3C")
    # first card: Start
    d.rounded_rectangle((8, 178, 204, 374), 30, fill="#16171B", outline="#26272C", width=3)
    d.ellipse((70, 198, 142, 270), fill="#30D158")
    paste_icon(im, "bolt.png", 85, 213, 42)
    tw = d.textlength("Старт", font=f_ct)
    d.text(((W - tw) / 2, 278), "Старт", fill="#FFFFFF", font=f_ct)
    tw = d.textlength("ръчна тренировка", font=f_cs)
    d.text(((W - tw) / 2, 318), "ръчна тренировка", fill="#AEAEB2", font=f_cs)
    # peek of next card
    d.rounded_rectangle((8, 386, 204, 520), 30, fill="#16171B", outline="#26272C", width=3)
    return im


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("mode", choices=["idle", "running"], nargs="?", default="idle")
    ap.add_argument("out", type=Path)
    args = ap.parse_args()
    im = render()
    args.out.parent.mkdir(parents=True, exist_ok=True)
    im.save(args.out, optimize=True)
    print(f"gen-home-preview: {args.out} ({im.size[0]}×{im.size[1]}, cards)")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
