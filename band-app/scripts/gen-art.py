#!/usr/bin/env python3
"""Baked artwork for the band app: module badges, glossy buttons ("orbs"), glows behind rings.

Why images: the band draws a PNG as one cheap copy, while gradients, shadows and glows in CSS
are drawn poorly (or not at all) and cost CPU on every frame. Everything here is rendered once,
4× supersampled for smooth edges, at the exact on-screen size (no scaling on the band) — except
glows, which are soft anyway and ship at half size. Palette PNGs keep the .rpk small.

Output: src/common/art/*.png. Budget is checked by scripts/check-art.py (run by test-band.sh).
"""
from __future__ import annotations

import math
from pathlib import Path

from PIL import Image, ImageChops, ImageDraw, ImageFilter

ROOT = Path(__file__).resolve().parent.parent
ICONS = ROOT / "src" / "common" / "icons"
OUT = ROOT / "src" / "common" / "art"
SS = 4  # supersampling

GREEN = (48, 209, 88)
AMBER = (255, 159, 10)
YELLOW = (255, 214, 10)
PURPLE = (191, 90, 242)
RED = (255, 69, 58)
DARK = (58, 58, 62)


def mix(a, b, t):
    return tuple(int(round(a[i] + (b[i] - a[i]) * t)) for i in range(3))


def lighten(c, t):
    return mix(c, (255, 255, 255), t)


def darken(c, t):
    return mix(c, (0, 0, 0), t)


def radial(size, center, radius, inner, outer, power=1.0):
    """RGB radial gradient, inner colour at center → outer at radius (and beyond)."""
    w, h = size
    im = Image.new("RGB", size)
    px = im.load()
    cx, cy = center
    for y in range(h):
        for x in range(w):
            t = min(1.0, math.hypot(x - cx, y - cy) / radius) ** power
            px[x, y] = mix(inner, outer, t)
    return im


def circle_mask(d, inset=0):
    m = Image.new("L", (d, d), 0)
    ImageDraw.Draw(m).ellipse((inset, inset, d - 1 - inset, d - 1 - inset), fill=255)
    return m


def orb(color, d):
    """Button face, d × d (supersampled): soft top light → deeper bottom, thin light edge on top.
    Deliberately calm (no glass ball): reads like the system watch UI."""
    top, bottom = lighten(color, 0.16), darken(color, 0.20)
    lin = Image.linear_gradient("L").resize((d, d))
    face = Image.composite(Image.new("RGB", (d, d), bottom), Image.new("RGB", (d, d), top), lin)
    # a little light from the upper left
    hl = radial((d, d), (d * 0.32, d * 0.22), d * 0.75, (255, 255, 255), (0, 0, 0), power=1.6).convert("L")
    face = Image.composite(Image.new("RGB", (d, d), lighten(color, 0.30)), face, hl.point(lambda v: int(v * 0.35)))
    im = face.convert("RGBA")
    # edge: brighter at the top, gone by the middle
    rim = Image.new("L", (d, d), 0)
    ImageDraw.Draw(rim).ellipse((0, 0, d - 1, d - 1), outline=255, width=max(2, d // 45))
    fade = Image.linear_gradient("L").resize((d, d)).point(lambda v: max(0, int((180 - v) * 0.9)))
    im = Image.composite(Image.new("RGBA", (d, d), lighten(color, 0.55) + (255,)), im, ImageChops.multiply(rim, fade))
    im.putalpha(circle_mask(d))
    return im


def glyph(name, size, shadow=True):
    """White glyph from src/common/icons, size × size, with a faint drop shadow."""
    src = Image.open(ICONS / f"{name}.png").convert("RGBA").resize((size, size), Image.LANCZOS)
    g = Image.new("RGBA", (size, size), (255, 255, 255, 0))
    g.putalpha(src.getchannel("A"))  # white from the shape: some source icons are dark
    if not shadow:
        return g
    sh = Image.new("RGBA", (size, size), (0, 0, 0, 0))
    a = g.getchannel("A").point(lambda v: int(v * 0.35))
    sh.putalpha(a)
    sh = sh.filter(ImageFilter.GaussianBlur(size / 40))
    out = Image.new("RGBA", (size, size), (0, 0, 0, 0))
    off = max(1, size // 32)
    out.alpha_composite(sh, (0, off))
    out.alpha_composite(g)
    return out


def finish(im, px, name, colors=256):
    """Downsample to the on-screen size and save. Palette PNG when it stays smooth (small file);
    colors=0 keeps full RGBA (soft alpha ramps band badly in a palette)."""
    im = im.resize((px, px) if isinstance(px, int) else px, Image.LANCZOS)
    OUT.mkdir(parents=True, exist_ok=True)
    if colors:
        im = im.quantize(colors=colors, method=Image.Quantize.FASTOCTREE, dither=Image.Dither.FLOYDSTEINBERG)
    im.save(OUT / f"{name}.png", optimize=True)


def badge(name, color, icon, px=72, icon_px=40):
    d = px * SS
    im = orb(color, d)
    g = glyph(icon, icon_px * SS)
    o = (d - g.width) // 2
    im.alpha_composite(g, (o, o))
    finish(im, px, name)


def button(name, color, px):
    finish(orb(color, px * SS), px, name, colors=0)  # big smooth gradient: a palette shows steps


def glow(name, color, px, ring_r, width):
    """Soft halo around a ring of radius ring_r (display px), shipped at half size."""
    h = px // 2
    d = h * SS
    m = Image.new("L", (d, d), 0)
    r = ring_r / 2 * SS
    w = width / 2 * SS
    c = d / 2
    ImageDraw.Draw(m).ellipse((c - r - w, c - r - w, c + r + w, c + r + w), outline=255, width=int(w * 2))
    m = m.filter(ImageFilter.GaussianBlur(w * 0.9)).point(lambda v: min(255, int(v * 1.15)))
    # fade to nothing before the image edge, so no square ever shows on the background
    edge = radial((d, d), (c, c), c, (255, 255, 255), (0, 0, 0), power=6).convert("L")
    m = ImageChops.multiply(m, edge)
    # outside only: the centre of the ring holds the numbers and stays clean black
    hole = Image.new("L", (d, d), 255)
    ri = r - w * 0.5
    ImageDraw.Draw(hole).ellipse((c - ri, c - ri, c + ri, c + ri), fill=0)
    m = ImageChops.multiply(m, hole.filter(ImageFilter.GaussianBlur(w * 0.25)))
    # One colour, so a palette of that colour × 256 alpha levels is exact (and ~3× smaller than RGBA):
    # pixel value = alpha.
    a = m.resize((h, h), Image.LANCZOS)
    im = Image.frombytes("P", a.size, a.tobytes())
    im.putpalette(list(color) * 256)
    OUT.mkdir(parents=True, exist_ok=True)
    im.save(OUT / f"{name}.png", optimize=True, transparency=bytes(range(256)))


def heart(name, px):
    d = px * SS
    g = Image.open(ICONS / "heart.png").convert("RGBA").resize((d, d), Image.LANCZOS)
    a = g.getchannel("A")
    face = radial((d, d), (d * 0.35, d * 0.25), d * 0.9, lighten(RED, 0.30), darken(RED, 0.25)).convert("RGBA")
    face.putalpha(a)
    finish(face, px, name)


def main():
    # home: one badge per module (replaces a coloured div + glyph: one element instead of two)
    badge("badge-train", GREEN, "bolt")
    badge("badge-ai", YELLOW, "ai")
    badge("badge-timer", AMBER, "timer")
    badge("badge-music", PURPLE, "music")
    badge("badge-pulse", RED, "heart")
    badge("badge-done", GREEN, "check", px=60, icon_px=34)
    # module play buttons: face only, the glyph stays an <image> on top (state changes it)
    for name, color, px in (("orb-ai", GREEN, 92), ("orb-ai-dark", DARK, 92),
                            ("orb-timer", AMBER, 112), ("orb-timer-dark", DARK, 112),
                            ("orb-music", PURPLE, 140), ("orb-music-dark", DARK, 140)):
        button(name, color, px)
    # glows behind the rings (radius / stroke from each page's ring CSS)
    glow("glow-ai", YELLOW, 172, 79, 14)
    glow("glow-timer", AMBER, 180, 83, 14)
    glow("glow-music", PURPLE, 196, 90, 12)
    heart("heart-34", 34)
    heart("heart-40", 40)
    total = sum(p.stat().st_size for p in OUT.glob("*.png"))
    print(f"gen-art: {len(list(OUT.glob('*.png')))} images, {total // 1024} KB")


if __name__ == "__main__":
    main()
