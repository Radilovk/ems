#!/usr/bin/env python3
"""Baked artwork for the band app: light layers for CSS circles (badges, buttons), glows behind rings.

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

GREEN = (0, 245, 155)
AMBER = (255, 138, 31)
YELLOW = (255, 234, 0)
PURPLE = (180, 77, 255)
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


def shine(d):
    """Light layer for a CSS circle (background-color + border-radius draw the circle itself, crisp
    and never clipped): soft light from the top-left, a touch of shade at the bottom, a thin lit
    edge on top. Translucent, so one image serves every colour — and start / pause only change the
    CSS colour, no image to decode at that moment."""
    lin = Image.linear_gradient("L").resize((d, d))
    im = Image.new("RGBA", (d, d), (0, 0, 0, 0))
    white = Image.new("RGBA", (d, d), (255, 255, 255, 0))
    white.putalpha(lin.point(lambda v: int(max(0.0, 1 - v / 140.0) * 58)))
    black = Image.new("RGBA", (d, d), (0, 0, 0, 0))
    black.putalpha(lin.point(lambda v: int(max(0.0, (v - 120) / 135.0) * 52)))
    im.alpha_composite(white)
    im.alpha_composite(black)
    hl = radial((d, d), (d * 0.32, d * 0.22), d * 0.55, (255, 255, 255), (0, 0, 0), power=1.4).convert("L")
    spot = Image.new("RGBA", (d, d), (255, 255, 255, 0))
    spot.putalpha(hl.point(lambda v: int(v * 0.16)))
    im.alpha_composite(spot)
    rim = Image.new("L", (d, d), 0)
    ImageDraw.Draw(rim).ellipse((0, 0, d - 1, d - 1), outline=255, width=max(2, d // 45))
    fade = lin.point(lambda v: max(0, int((150 - v) * 0.75)))
    edge = Image.new("RGBA", (d, d), (255, 255, 255, 0))
    edge.putalpha(ImageChops.multiply(rim, fade))
    im.alpha_composite(edge)
    a = ImageChops.multiply(im.getchannel("A"), circle_mask(d))
    im.putalpha(a)
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


def badge(name, icon, px=72, icon_px=40):
    """Light layer + glyph for a CSS circle of the module colour (see shine)."""
    d = px * SS
    im = shine(d)
    g = glyph(icon, icon_px * SS)
    o = (d - g.width) // 2
    im.alpha_composite(g, (o, o))
    finish(im, px, name, colors=0)


def button(name, px):
    finish(shine(px * SS), px, name, colors=0)  # soft alpha ramps: a palette shows steps


def glow(name, color, px, ring_r, width, dy=0):
    """Soft halo around a ring of radius ring_r (display px), shipped at half size.
    dy moves the centre down (display px) when the glow box and the ring are not concentric."""
    h = px // 2
    d = h * SS
    m = Image.new("L", (d, d), 0)
    r = ring_r / 2 * SS
    w = width / 2 * SS
    c = d / 2
    cy = c + dy / 2 * SS
    ImageDraw.Draw(m).ellipse((c - r - w, cy - r - w, c + r + w, cy + r + w), outline=255, width=int(w * 2))
    m = m.filter(ImageFilter.GaussianBlur(w * 0.9)).point(lambda v: min(255, int(v * 1.15)))
    # fade to nothing before the image edge, so no square ever shows on the background
    edge = radial((d, d), (c, cy), c, (255, 255, 255), (0, 0, 0), power=6).convert("L")
    m = ImageChops.multiply(m, edge)
    # outside only: the centre of the ring holds the numbers and stays clean black
    hole = Image.new("L", (d, d), 255)
    ri = r - w * 0.5
    ImageDraw.Draw(hole).ellipse((c - ri, cy - ri, c + ri, cy + ri), fill=0)
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
    for f in OUT.glob("*.png"):
        f.unlink()                                  # nothing stale stays in the app
    # home: glyph + light per module; the circle is the card's CSS colour
    badge("badge-train", "bolt")
    badge("badge-ai", "ai")
    badge("badge-timer", "timer")
    badge("badge-music", "music")
    badge("badge-pulse", "heart")
    badge("badge-done", "check", px=60, icon_px=34)
    # button light layers (AI 92, Timer 112, Music 140, Start 152): colour comes from CSS
    for px in (92, 112, 140, 152):
        button(f"shine-{px}", px)
    # glows behind the rings (radius / stroke from each page's ring CSS)
    glow("glow-ai", YELLOW, 172, 79, 14)
    glow("glow-timer", AMBER, 180, 83, 14)
    glow("glow-music", PURPLE, 196, 90, 12)
    # Start: aura while waiting for start only (none while running — nothing to swap at the start);
    # the 168 px glow box starts 16 px above the button (tr-play-row padding): centre 8 px lower
    glow("glow-train", GREEN, 168, 76, 7, dy=8)
    heart("heart-34", 34)
    heart("heart-40", 40)
    total = sum(p.stat().st_size for p in OUT.glob("*.png"))
    print(f"gen-art: {len(list(OUT.glob('*.png')))} images, {total // 1024} KB")


if __name__ == "__main__":
    main()
