#!/usr/bin/env python3
"""Program pictures for the tablet (ai/ProgramArt): branding/programs/src/*.webp (full resolution, transparent)
→ branding/programs/<key>@<w>.webp, one per screen density, at the exact pixel size of the tile.

Why not one picture scaled by Android: the art is thin neon lines; a plain downscale (and Android's bilinear
scaling without mipmaps) averages a 1–2 px line into the dark and it breaks up. Here, per target size:
  1. crop tight to the figure and centre it in the tile's 4:3 frame (fills ~90 %),
  2. downscale in linear light, premultiplied alpha,
  3. line-preserving: mix the area average with an area average of a max-filtered copy (a max-pool the size of
     the scale step), so every line keeps at least one bright pixel,
  4. light unsharp mask; WebP q86.
Sizes: tile widths in px for densities 1.5 / 2 / 2.5 / 3 of TILE_DP (128×96 dp); the app picks the smallest
≥ what it needs and scales it by ≤ 1.33 with mipmaps.

  python3 scripts/gen-program-art.py            # all
  python3 scripts/gen-program-art.py --compare out.png   # naive vs this, 2× zoom
"""
from __future__ import annotations

import sys
from pathlib import Path

import numpy as np
from PIL import Image, ImageFilter

ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / "branding" / "programs" / "src"
OUT = ROOT / "branding" / "programs"
TILE_DP = (128, 96)
DENSITIES = (1.5, 2.0, 2.5, 3.0)
FILL = 0.90
TILE = (18, 20, 26)


def widths():
    return [int(round(TILE_DP[0] * d)) for d in DENSITIES]


def frame(im: Image.Image, w: int, h: int) -> tuple[Image.Image, float]:
    """Tight crop, then the scale that fits it in w×h at FILL; returns the crop and the scale."""
    bb = im.getchannel("A").point(lambda v: 255 if v > 6 else 0).getbbox() or (0, 0, im.width, im.height)
    im = im.crop(bb)
    s = min(w * FILL / im.width, h * FILL / im.height)
    return im, s


def to_lin(im: Image.Image) -> np.ndarray:
    a = np.asarray(im).astype(np.float32) / 255.0
    rgb = a[..., :3] ** 2.2
    al = a[..., 3:4]
    return np.concatenate([rgb * al, al], axis=2)          # premultiplied, linear


def from_lin(p: np.ndarray) -> Image.Image:
    al = np.clip(p[..., 3:4], 0, 1)
    rgb = np.where(al > 1e-4, p[..., :3] / np.maximum(al, 1e-4), 0)
    rgb = np.clip(rgb, 0, 1) ** (1 / 2.2)
    return Image.fromarray((np.concatenate([rgb, al], axis=2) * 255 + 0.5).astype(np.uint8), "RGBA")


def resize_f(p: np.ndarray, size: tuple[int, int]) -> np.ndarray:
    ch = [np.asarray(Image.fromarray(p[..., k], "F").resize(size, Image.BOX)) for k in range(p.shape[2])]
    return np.stack(ch, axis=2)


def maxf(p: np.ndarray, k: int) -> np.ndarray:
    if k < 2:
        return p
    k = k + 1 if k % 2 == 0 else k
    ch = [np.asarray(Image.fromarray(p[..., i], "F").filter(ImageFilter.MaxFilter(k))) for i in range(p.shape[2])]
    return np.stack(ch, axis=2)


def render(im: Image.Image, w: int, h: int) -> Image.Image:
    crop, s = frame(im, w, h)
    tw, th = max(1, round(crop.width * s)), max(1, round(crop.height * s))
    p = to_lin(crop)
    step = max(1, int(round(1 / s)))
    avg = resize_f(p, (tw, th))
    mx = resize_f(maxf(p, step), (tw, th))
    q = 0.55 * avg + 0.45 * mx
    fig = from_lin(q).filter(ImageFilter.UnsharpMask(radius=0.7, percent=55, threshold=1))
    out = Image.new("RGBA", (w, h), (0, 0, 0, 0))
    out.paste(fig, ((w - tw) // 2, (h - th) // 2), fig)
    return out


def naive(im: Image.Image, w: int, h: int) -> Image.Image:
    crop, s = frame(im, w, h)
    fig = crop.resize((max(1, round(crop.width * s)), max(1, round(crop.height * s))), Image.LANCZOS)
    out = Image.new("RGBA", (w, h), (0, 0, 0, 0))
    out.paste(fig, ((w - fig.width) // 2, (h - fig.height) // 2), fig)
    return out


def main() -> None:
    srcs = sorted(SRC.glob("*.webp"))
    if len(sys.argv) > 2 and sys.argv[1] == "--compare":
        w, h = int(TILE_DP[0] * 1.5), int(TILE_DP[1] * 1.5)
        pick = [p for p in srcs if p.stem.startswith("f-")][:6] + [p for p in srcs if p.stem.startswith("m-")][:2]
        sheet = Image.new("RGB", (len(pick) * (w * 2 + 8), 2 * (h * 2 + 8)), (40, 40, 40))
        for i, p in enumerate(pick):
            im = Image.open(p).convert("RGBA")
            for r, fn in enumerate((naive, render)):
                t = Image.new("RGBA", (w, h), TILE + (255,))
                t.alpha_composite(fn(im, w, h))
                sheet.paste(t.convert("RGB").resize((w * 2, h * 2), Image.NEAREST), (i * (w * 2 + 8), r * (h * 2 + 8)))
        sheet.save(sys.argv[2])
        print("top: plain Lanczos · bottom: line-preserving —", sys.argv[2])
        return
    for old in OUT.glob("*.webp"):
        old.unlink()
    total = 0
    for p in srcs:
        im = Image.open(p).convert("RGBA")
        for w in widths():
            h = round(w * TILE_DP[1] / TILE_DP[0])
            dst = OUT / f"{p.stem}@{w}.webp"
            render(im, w, h).save(dst, "WEBP", quality=86, method=6)
            total += dst.stat().st_size
    print(f"{len(srcs)} pictures × {len(DENSITIES)} sizes {widths()} → {OUT.relative_to(ROOT)} ({total // 1024} KB)")
    # the owner's square pictures (1.1.338) also go whole and square, transparent, for the Auto ring: the figure
    # fills the circle instead of a small 4:3 tile inside it
    for p in srcs:
        if not p.stem.startswith(("active-", "passive-")):
            continue
        im = Image.open(p).convert("RGBA")
        bb = im.getchannel("A").point(lambda v: 255 if v > 6 else 0).getbbox() or (0, 0, im.width, im.height)
        im = im.crop(bb)
        side = int(max(im.width, im.height) * 1.04)
        sq = Image.new("RGBA", (side, side), (0, 0, 0, 0))
        sq.paste(im, ((side - im.width) // 2, (side - im.height) // 2), im)
        dst = OUT / f"{p.stem}-sq@{SQ}.webp"
        render_sq(sq, SQ).save(dst, "WEBP", quality=88, method=6)
        print(f"{dst.relative_to(ROOT)} ({dst.stat().st_size // 1024} KB)")


SQ = 512


def render_sq(im: Image.Image, w: int) -> Image.Image:
    """Square, line-preserving downscale (as render, without the 4:3 frame)."""
    s = w / im.width
    p = to_lin(im)
    step = max(1, int(round(1 / s)))
    q = 0.55 * resize_f(p, (w, w)) + 0.45 * resize_f(maxf(p, step), (w, w))
    return from_lin(q).filter(ImageFilter.UnsharpMask(radius=0.7, percent=55, threshold=1))


if __name__ == "__main__":
    main()
