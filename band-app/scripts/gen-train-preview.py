#!/usr/bin/env python3
"""Render train screen preview PNG (212×520) from layout constants — no emulator.

Usage:
  python3 scripts/gen-train-preview.py idle  /path/train_idle.png
  python3 scripts/gen-train-preview.py running /path/train_running.png
  python3 scripts/gen-train-preview.py multi /path/train_multi_click.png

Uses the same dimensions/CSS colours as src/pages/train/index.ux.
"""
from __future__ import annotations

import argparse
import math
import sys
from pathlib import Path

from PIL import Image, ImageDraw, ImageFont

ROOT = Path(__file__).resolve().parent.parent
BG = ROOT / "src" / "common" / "bg" / "start.png"
ICONS = ROOT / "src" / "common" / "icons"
UI = ROOT / "src" / "common" / "ui"

W, H = 212, 520
PLAY = 152
PLAY_X = (W - PLAY) // 2
CTL_H = 200
PLAY_ROW_H = 168
PLAY_Y = CTL_H + 16
MAIN_Y = CTL_H + PLAY_ROW_H + 16
CBOX_W, CBOX_H = 196, 92
CBOX_X = (W - CBOX_W) // 2

NAMES = ["Гърди", "Корем", "Предно бедро", "Прасец", "Ръце", "Трапец", "Гръб", "Кръст", "Глутеус", "Задно бедро"]
ORDER = [3, 2, 9, 8, 1, 7, 6, 5, 0, 4]
CH = [30, 20, 40, 55, 10, 0, 25, 15, 35, 45]
FILL_DIM = ["#17462A", "#5A3A0C", "#5C1A16"]
ACCENT = ["#30D158", "#FF9F0A", "#FF453A"]


def hex_rgb(h: str) -> tuple[int, int, int]:
    h = h.lstrip("#")
    return tuple(int(h[i : i + 2], 16) for i in (0, 2, 4))


def tier(pct: int) -> int:
    return 2 if pct >= 80 else 1 if pct >= 50 else 0


def font(size: int, bold: bool = False) -> ImageFont.FreeTypeFont | ImageFont.ImageFont:
    paths = [
        "/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf" if bold else "/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf",
        "/usr/share/fonts/truetype/liberation/LiberationSans-Bold.ttf" if bold else "/usr/share/fonts/truetype/liberation/LiberationSans-Regular.ttf",
    ]
    for p in paths:
        if Path(p).is_file():
            return ImageFont.truetype(p, size)
    return ImageFont.load_default()


def rounded_rect(d: ImageDraw.ImageDraw, xy, r: int, fill, outline=None, width: int = 0) -> None:
    d.rounded_rectangle(xy, radius=r, fill=fill, outline=outline, width=width)


def paste_icon(base: Image.Image, name: str, x: int, y: int, size: int) -> None:
    path = ICONS / name
    if not path.is_file():
        return
    icon = Image.open(path).convert("RGBA").resize((size, size), Image.Resampling.LANCZOS)
    base.paste(icon, (x, y), icon)


def draw_bg() -> Image.Image:
    if BG.is_file():
        im = Image.open(BG).convert("RGB").resize((W, H), Image.Resampling.LANCZOS)
    else:
        im = Image.new("RGB", (W, H), (6, 7, 10))
    return im


def draw_ctl(d: ImageDraw.ImageDraw, elapsed: str, ms: str, hr: str, zone: str, zc: str) -> None:
    f_big = font(60, True)
    f_kpi = font(34, True)
    f_lbl = font(18)
    tw = d.textlength(elapsed, font=f_big)
    d.text(((W - tw) / 2, 44), elapsed, fill="#FFFFFF", font=f_big)
    boxes = [(ms, "сила", "#FFFFFF"), (hr, zone, zc)]
    x0 = (W - 92 * 2 - 8) // 2
    for i, (num, lbl, col) in enumerate(boxes):
        x = x0 + i * (92 + 8)
        y = 44 + 70
        rounded_rect(d, (x, y, x + 92, y + 70), 20, "#1C1C1E", outline="#2C2C2E", width=1)
        nw = d.textlength(num, font=f_kpi)
        d.text((x + (92 - nw) / 2, y + 8), num, fill=col, font=f_kpi)
        lw = d.textlength(lbl, font=f_lbl)
        d.text((x + (92 - lw) / 2, y + 46), lbl, fill="#8E8E93", font=f_lbl)
    rule_w = 128
    rule_x = (W - rule_w) // 2
    rule_y = y + 70 + 10
    rounded_rect(d, (rule_x, rule_y, rule_x + rule_w, rule_y + 2), 1, "#2C2C2E")


def draw_play_glow(d: ImageDraw.ImageDraw, running: bool) -> None:
    glow = 168
    gx = PLAY_X - (glow - PLAY) // 2
    gy = PLAY_Y - (glow - PLAY) // 2
    col = "#FF9F0A" if running else "#30D158"
    rounded_rect(d, (gx, gy, gx + glow, gy + glow), 84, None, outline=col, width=3)


def draw_play(im: Image.Image, d: ImageDraw.ImageDraw, running: bool) -> None:
    draw_play_glow(d, running)
    col = "#FF9F0A" if running else "#30D158"
    rounded_rect(d, (PLAY_X, PLAY_Y, PLAY_X + PLAY, PLAY_Y + PLAY), 76, col)
    icon = "pause.png" if running else "play.png"
    paste_icon(im, icon, PLAY_X + (PLAY - 76) // 2, PLAY_Y + (PLAY - 76) // 2, 76)


def draw_main_bar(im: Image.Image, d: ImageDraw.ImageDraw, running: bool) -> None:
    png = UI / ("all-btn.png" if running else "all-btn-dim.png")
    if png.is_file():
        bar = Image.open(png).convert("RGBA").resize((CBOX_W, CBOX_H), Image.Resampling.LANCZOS)
        im.paste(bar, (CBOX_X, MAIN_Y), bar)
    else:
        rounded_rect(d, (CBOX_X, MAIN_Y, CBOX_X + CBOX_W, MAIN_Y + CBOX_H), 22, "#17462A")
    f = font(52, True)
    for sign, sx in [("-", CBOX_X + 48), ("+", CBOX_X + CBOX_W - 48)]:
        sw = d.textlength(sign, font=f)
        d.text((sx - sw / 2, MAIN_Y + 18), sign, fill="#FFFFFF", font=f)


def draw_channel(d: ImageDraw.ImageDraw, y: int, name: str, pct: int, live: bool) -> None:
    t = tier(pct)
    accent = ACCENT[t]
    fill = accent if live else FILL_DIM[t]
    border = "#636366" if live else "#3A3A3C"
    rounded_rect(d, (CBOX_X, y, CBOX_X + CBOX_W, y + CBOX_H), 22, "#000000")
    fw = int(192 * pct / 100)
    if fw > 0:
        rounded_rect(d, (CBOX_X + 2, y + 2, CBOX_X + 2 + fw, y + 2 + 88), 20, fill)
    rounded_rect(d, (CBOX_X, y, CBOX_X + CBOX_W, y + CBOX_H), 22, None, outline=border, width=2)
    f_sign = font(46, True)
    f_name = font(20, True)
    f_val = font(22, True)
    sign_col = "#FFFFFF" if live else "#AEAEB2"
    val_col = "#D1D1D6" if live else accent
    for sign, sx in [("-", CBOX_X + 23), ("+", CBOX_X + CBOX_W - 23)]:
        sw = d.textlength(sign, font=f_sign)
        d.text((sx - sw / 2, y + 20), sign, fill=sign_col, font=f_sign)
    nw = d.textlength(name, font=f_name)
    d.text((CBOX_X + (CBOX_W - nw) / 2, y + 22), name, fill="#FFFFFF", font=f_name)
    txt = str(pct)
    vw = d.textlength(txt, font=f_val)
    d.text((CBOX_X + (CBOX_W - vw) / 2, y + 50), txt, fill=val_col, font=f_val)


def render(running: bool, overlay_play_box: bool = False) -> Image.Image:
    im = draw_bg()
    d = ImageDraw.Draw(im)
    draw_ctl(d, "0:42", "42", "88", "пулс · Z3", "#FF9F0A")
    draw_play(im, d, running)
    draw_main_bar(im, d, running)
    y = MAIN_Y + CBOX_H + 22 + 10
    for idx in ORDER[:3]:
        draw_channel(d, y, NAMES[idx], CH[idx], running)
        y += 102
    if overlay_play_box:
        d.rounded_rectangle(
            (PLAY_X, PLAY_Y, PLAY_X + PLAY, PLAY_Y + PLAY),
            radius=76,
            outline="#FF375F",
            width=2,
        )
    return im


def render_multi_click() -> Image.Image:
    """Strip: start + 5 toggles — play button box must align on every frame."""
    labels = ["начало", "1 клик", "2 клика", "3 клика", "4 клика", "5 клика"]
    frames = [render(running=(i % 2 == 1), overlay_play_box=True) for i in range(len(labels))]
    gap = 12
    label_h = 28
    strip_w = len(frames) * W + (len(frames) - 1) * gap
    strip = Image.new("RGB", (strip_w, H + label_h), (12, 12, 14))
    d = ImageDraw.Draw(strip)
    f = font(16, True)
    for i, (frame, lbl) in enumerate(zip(frames, labels)):
        x = i * (W + gap)
        strip.paste(frame, (x, label_h))
        tw = d.textlength(lbl, font=f)
        d.text((x + (W - tw) / 2, 4), lbl, fill="#FFFFFF", font=f)
    return strip


def main() -> int:
    ap = argparse.ArgumentParser(description="Render train screen preview 212×520")
    ap.add_argument("mode", choices=["idle", "running", "multi"], help="idle/running single frame; multi=6-frame click strip")
    ap.add_argument("out", type=Path, help="output PNG path")
    args = ap.parse_args()
    UI.mkdir(parents=True, exist_ok=True)
    if not (UI / "all-btn.png").is_file():
        import subprocess
        subprocess.run([sys.executable, str(ROOT / "scripts" / "gen-all-btn.py")], check=True)
    if args.mode == "multi":
        im = render_multi_click()
    else:
        im = render(args.mode == "running")
    args.out.parent.mkdir(parents=True, exist_ok=True)
    im.save(args.out, optimize=True)
    sz = f"{im.size[0]}×{im.size[1]}"
    print(f"gen-train-preview: {args.out} ({sz}, {args.out.stat().st_size} B, {args.mode})")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
