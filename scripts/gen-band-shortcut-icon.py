#!/usr/bin/env python3
"""Icon of the "XEMS band" home-screen shortcut: the XEMS X on a band's screen.

Writes branding/shortcut/ (committed; the build only copies them, no Pillow needed there):
  xems_band_shortcut_fg.png  adaptive-icon foreground, 432 px (108 dp × 4), art inside the 66 dp safe zone
  xems_band_shortcut.png     legacy icon for Android 7 launchers, 192 px, background included
Run by hand after changing the design: python3 scripts/gen-band-shortcut-icon.py
"""
from pathlib import Path

from PIL import Image, ImageDraw, ImageFilter

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "branding" / "shortcut"
X_ICON = ROOT / "assets" / "icon.png"
BG = (16, 17, 22)
SS = 4


def band(size):
    """Band on transparent: body with a lit screen, strap stubs, the XEMS X on the screen."""
    d = size * SS
    im = Image.new("RGBA", (d, d), (0, 0, 0, 0))
    dr = ImageDraw.Draw(im)
    cx = d / 2
    bw, bh = d * 0.30, d * 0.52                       # body (pill), inside the 66/108 safe zone
    x0, y0, x1, y1 = cx - bw / 2, (d - bh) / 2, cx + bw / 2, (d + bh) / 2
    sw = bw * 0.62                                    # strap stubs above / below
    dr.rounded_rectangle((cx - sw / 2, y0 - d * 0.07, cx + sw / 2, y0 + bw * 0.4), radius=sw * 0.3,
                         fill=(58, 60, 68, 255))
    dr.rounded_rectangle((cx - sw / 2, y1 - bw * 0.4, cx + sw / 2, y1 + d * 0.07), radius=sw * 0.3,
                         fill=(58, 60, 68, 255))
    dr.rounded_rectangle((x0, y0, x1, y1), radius=bw / 2, fill=(92, 95, 106, 255))
    m = d * 0.012                                     # screen inset
    dr.rounded_rectangle((x0 + m, y0 + m, x1 - m, y1 - m), radius=bw / 2 - m, fill=(8, 8, 12, 255))
    # pink glow on the screen + the XEMS X
    glow = Image.new("RGBA", (d, d), (0, 0, 0, 0))
    ImageDraw.Draw(glow).ellipse((cx - bw * 0.42, cx - bw * 0.42, cx + bw * 0.42, cx + bw * 0.42),
                                 fill=(255, 40, 140, 150))
    glow = glow.filter(ImageFilter.GaussianBlur(bw * 0.18))
    screen = Image.new("L", (d, d), 0)
    ImageDraw.Draw(screen).rounded_rectangle((x0 + m, y0 + m, x1 - m, y1 - m), radius=bw / 2 - m, fill=255)
    im.alpha_composite(Image.composite(glow, Image.new("RGBA", (d, d), (0, 0, 0, 0)), screen))
    xs = int(bw * 0.86)
    x = Image.open(X_ICON).convert("RGBA").resize((xs, xs), Image.LANCZOS)
    im.alpha_composite(x, (int(cx - xs / 2), int(cx - xs / 2)))
    return im.resize((size, size), Image.LANCZOS)


def main():
    OUT.mkdir(parents=True, exist_ok=True)
    band(432).save(OUT / "xems_band_shortcut_fg.png", optimize=True)
    legacy = Image.new("RGBA", (192, 192), (0, 0, 0, 0))
    mask = Image.new("L", (192 * SS, 192 * SS), 0)
    ImageDraw.Draw(mask).rounded_rectangle((0, 0, 192 * SS - 1, 192 * SS - 1), radius=44 * SS, fill=255)
    tile = Image.new("RGBA", (192, 192), BG + (255,))
    tile.putalpha(mask.resize((192, 192), Image.LANCZOS))
    legacy.alpha_composite(tile)
    legacy.alpha_composite(band(192).resize((192, 192)))
    legacy.save(OUT / "xems_band_shortcut.png", optimize=True)
    print("gen-band-shortcut-icon:", ", ".join(p.name for p in sorted(OUT.glob("*.png"))))


if __name__ == "__main__":
    main()
