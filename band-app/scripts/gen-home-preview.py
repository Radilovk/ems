#!/usr/bin/env python3
"""Render home dial preview PNG (212×520) from layout constants — no emulator.

Usage:
  python3 scripts/gen-home-preview.py idle /path/home_idle.png
  python3 scripts/gen-home-preview.py running /path/home_running.png
"""
from __future__ import annotations

import argparse
from pathlib import Path

from PIL import Image, ImageDraw, ImageFont

ROOT = Path(__file__).resolve().parent.parent
BG = ROOT / "src" / "common" / "bg" / "home.png"
ICONS = ROOT / "src" / "common" / "icons"

W, H = 212, 520
PLAY = 132
PLAY_X = (W - PLAY) // 2
# 40 pad + 22 clock + 4 + 64 HR + 18 sub + 10 + 8 dots + 12 rule + 10 row
PLAY_Y = 188


def font(size: int, bold: bool = False) -> ImageFont.FreeTypeFont | ImageFont.ImageFont:
    paths = [
        "/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf" if bold else "/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf",
        "/usr/share/fonts/truetype/liberation/LiberationSans-Bold.ttf" if bold else "/usr/share/fonts/truetype/liberation/LiberationSans-Regular.ttf",
    ]
    for p in paths:
        if Path(p).is_file():
            return ImageFont.truetype(p, size)
    return ImageFont.load_default()


def paste_icon(base: Image.Image, name: str, x: int, y: int, size: int) -> None:
    path = ICONS / name
    if not path.is_file():
        return
    icon = Image.open(path).convert("RGBA").resize((size, size), Image.Resampling.LANCZOS)
    base.paste(icon, (x, y), icon)


def render(running: bool) -> Image.Image:
    if BG.is_file():
        im = Image.open(BG).convert("RGB").resize((W, H), Image.Resampling.LANCZOS)
    else:
        im = Image.new("RGB", (W, H), (8, 6, 8))
    d = ImageDraw.Draw(im)
    f_clk = font(22, True)
    f_hr = font(64, True)
    f_sub = font(18)
    f_chip = font(20, True)
    clock = "0:42" if running else "XEMS"
    tw = d.textlength(clock, font=f_clk)
    d.text(((W - tw) / 2, 40), clock, fill="#D1D1D6" if running else "#636366", font=f_clk)
    hr = "88"
    tw = d.textlength(hr, font=f_hr)
    d.text(((W - tw) / 2, 66), hr, fill="#FFD60A", font=f_hr)
    sub = "Z3"
    tw = d.textlength(sub, font=f_sub)
    d.text(((W - tw) / 2, 136), sub, fill="#8E8E93", font=f_sub)
    zones = ["#5AC8FA", "#30D158", "#FFD60A", "#FF9F0A", "#FF453A"]
    zx = (W - (8 * 5 + 10 * 4)) // 2
    for i, col in enumerate(zones):
        on = i < 3
        x = zx + i * 18
        fill = col if on else (*tuple(int(c * 0.18) for c in (90, 90, 92)),)
        if not on:
            fill = "#3A3A3C"
        d.ellipse((x, 164, x + 8, 172), fill=fill)
    d.rounded_rectangle(((W - 40) // 2, 184, (W - 40) // 2 + 40, 186), 1, fill="#2C2C2E")
    ring = 152
    rx = (W - ring) // 2
    ry = PLAY_Y - 10
    rcol = "#FF9F0A" if running else "#30D158"
    d.ellipse((rx, ry, rx + ring, ry + ring), outline=rcol, width=2)
    d.rounded_rectangle((PLAY_X, PLAY_Y, PLAY_X + PLAY, PLAY_Y + PLAY), 66, fill=rcol)
    paste_icon(im, "pause.png" if running else "play.png", PLAY_X + (PLAY - 58) // 2, PLAY_Y + (PLAY - 58) // 2, 58)
    chips = [("Старт", running, "#30D158"), ("AI", False, "#FFD60A"), ("Таймер", False, "#FF9F0A"), ("Пулс", False, "#FF453A")]
    cy = PLAY_Y + PLAY + 16
    for i, (name, on, accent) in enumerate(chips):
        row, col_i = divmod(i, 2)
        x = 10 + col_i * 100
        y = cy + row * 56
        d.rounded_rectangle((x, y, x + 92, y + 48), 16, fill="#111114", outline=accent if on else "#3A3A3C", width=1)
        tw = d.textlength(name, font=f_chip)
        d.text((x + (92 - tw) / 2, y + 12), name, fill="#F2F2F7", font=f_chip)
    return im


def main() -> int:
    ap = argparse.ArgumentParser(description="Render home dial preview 212×520")
    ap.add_argument("mode", choices=["idle", "running"])
    ap.add_argument("out", type=Path)
    args = ap.parse_args()
    im = render(args.mode == "running")
    args.out.parent.mkdir(parents=True, exist_ok=True)
    im.save(args.out, optimize=True)
    print(f"gen-home-preview: {args.out} ({im.size[0]}×{im.size[1]}, {args.out.stat().st_size} B, {args.mode})")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
