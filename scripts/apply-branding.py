#!/usr/bin/env python3
"""Apply branding images to decompiled APK resources."""

from pathlib import Path
from PIL import Image

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
ICON_SRC = ROOT / "assets" / "icon.png"
SPLASH_SRC = ROOT / "assets" / "splash.jpg"
AVATAR_SRC = ROOT / "assets" / "default-avatar.png"
FLAG_SIZE = (79, 129)
FLAG_COLORS = ((255, 255, 255), (0, 150, 110), (214, 38, 18))

ICON_SIZES = {
    "mipmap-mdpi": 48,
    "mipmap-hdpi": 72,
    "mipmap-xhdpi": 96,
    "mipmap-xxhdpi": 144,
    "mipmap-xxxhdpi": 192,
}


def save_jpg(path: Path, image: Image.Image, size: tuple[int, int]) -> None:
    img = image.convert("RGB").resize(size, Image.Resampling.LANCZOS)
    path.parent.mkdir(parents=True, exist_ok=True)
    img.save(path, "JPEG", quality=92)


def save_png(path: Path, image: Image.Image, size: tuple[int, int]) -> None:
    img = image.resize(size, Image.Resampling.LANCZOS)
    path.parent.mkdir(parents=True, exist_ok=True)
    img.save(path, "PNG")


def apply_splash(splash: Image.Image) -> None:
    splash_size = (1920, 1080)
    for name in ("loginback.jpg", "loginback2.jpg", "loginback3.jpg"):
        save_jpg(DECOMPILED / "res" / "mipmap-hdpi" / name, splash, splash_size)


def apply_icon(icon: Image.Image) -> None:
    for folder, px in ICON_SIZES.items():
        for name in ("ic_launcher.png", "ic_launcher_xems.png", "ic_launcher2.png"):
            target = DECOMPILED / "res" / folder / name
            if target.parent.exists() or folder == "mipmap-hdpi":
                save_png(target, icon, (px, px))


def _make_bulgarian_flag(selected: bool) -> Image.Image:
    width, height = FLAG_SIZE
    stripe_h = height // 3
    img = Image.new("RGBA", FLAG_SIZE, (0, 0, 0, 0))
    pixels = img.load()
    for y in range(height):
        if y < stripe_h:
            color = FLAG_COLORS[0]
        elif y < stripe_h * 2:
            color = FLAG_COLORS[1]
        else:
            color = FLAG_COLORS[2]
        if not selected:
            color = tuple(int(c * 0.72) for c in color)
        for x in range(width):
            pixels[x, y] = color + (255,)
    return img


def apply_bulgarian_flag() -> None:
    # The Bulgarian language button reuses the legacy "chinese" mipmap IDs.
    selected = _make_bulgarian_flag(True)
    unselected = _make_bulgarian_flag(False)
    for folder in ("mipmap-hdpi", "mipmap-mdpi", "mipmap-xhdpi", "mipmap-xxhdpi", "mipmap-xxxhdpi"):
        target_dir = DECOMPILED / "res" / folder
        if not target_dir.exists():
            continue
        selected.save(target_dir / "chinese.png", "PNG")
        unselected.save(target_dir / "chinese1.png", "PNG")


def dark_avatar(avatar: Image.Image) -> Image.Image:
    """The same avatar for the dark theme: graphite circle, darker figure, light outline (by luminance,
    so the anti-aliased edges stay smooth)."""
    anchors = [(74, (132, 140, 156)), (199, (70, 76, 90)), (236, (38, 42, 50))]
    out = avatar.copy()
    px = out.load()
    w, h = out.size
    for y in range(h):
        for x in range(w):
            r, g, b, a = px[x, y]
            if a == 0:
                continue
            lum = 0.299 * r + 0.587 * g + 0.114 * b
            if lum <= anchors[0][0]:
                c = anchors[0][1]
            elif lum >= anchors[-1][0]:
                c = anchors[-1][1]
            else:
                for i in range(1, len(anchors)):
                    if lum <= anchors[i][0]:
                        (l0, c0), (l1, c1) = anchors[i - 1], anchors[i]
                        k = (lum - l0) / (l1 - l0)
                        c = tuple(int(round(c0[j] + (c1[j] - c0[j]) * k)) for j in range(3))
                        break
            px[x, y] = (c[0], c[1], c[2], a)
    return out


def apply_default_avatar(avatar: Image.Image) -> None:
    dark = dark_avatar(avatar)
    for name in ("icon_sample.png", "icon_sample2.png", "icon_sample3.png"):
        target = DECOMPILED / "res" / "mipmap-hdpi" / name
        if target.parent.exists():
            avatar.save(target, "PNG")
            night = DECOMPILED / "res" / "mipmap-night-hdpi" / name
            night.parent.mkdir(parents=True, exist_ok=True)
            dark.save(night, "PNG")      # the dark theme picks it by itself (-night qualifier)


def _plain(size, top, bottom, line=None):
    """A calm fill in the app's theme: a soft vertical gradient, an optional hairline at the bottom."""
    w, h = size
    im = Image.new("RGB", (w, h))
    px = im.load()
    for y in range(h):
        k = y / max(1, h - 1)
        c = tuple(int(round(top[i] + (bottom[i] - top[i]) * k)) for i in range(3))
        for x in range(w):
            px[x, y] = c
    if line is not None:
        for x in range(w):
            px[x, h - 1] = line
            px[x, h - 2] = line
    return im


def apply_theme_backgrounds() -> None:
    """The vendor's colourful title bars and screen backgrounds (rainbow waves) → the app's own calm
    surfaces: graphite for the light theme (mipmap-hdpi), near-black for the dark one (mipmap-night-hdpi)."""
    res = DECOMPILED / "res"
    sets = {
        # the icons on these bars are white in both themes: graphite, lighter for the light theme
        "titlebar.png": ((2134, 120), ((58, 62, 70), (48, 51, 58), (72, 76, 86)),
                         ((30, 31, 35), (26, 27, 31), (44, 46, 52))),
        "titlebar2.png": ((2134, 120), ((58, 62, 70), (48, 51, 58), (72, 76, 86)),
                          ((30, 31, 35), (26, 27, 31), (44, 46, 52))),
        "background.jpg": ((1280, 720), ((44, 47, 54), (30, 32, 37), None),
                           ((22, 23, 27), (14, 15, 18), None)),
        "background3.jpg": ((1280, 720), ((44, 47, 54), (30, 32, 37), None),
                            ((22, 23, 27), (14, 15, 18), None)),
    }
    for name, (size, light, dark) in sets.items():
        if not (res / "mipmap-hdpi" / name).exists():
            continue
        for folder, (top, bottom, line) in (("mipmap-hdpi", light), ("mipmap-night-hdpi", dark)):
            out = res / folder / name
            out.parent.mkdir(parents=True, exist_ok=True)
            im = _plain(size, top, bottom, line)
            if name.endswith(".jpg"):
                im.save(out, "JPEG", quality=92)
            else:
                im.save(out, "PNG", optimize=True)
    print("theme backgrounds: title bars and screen backgrounds without the old colours")


def apply_logo(icon: Image.Image) -> None:
    # Logo uses the same X icon asset as the app icon.
    logo = icon.resize((200, 200), Image.Resampling.LANCZOS)

    targets = [
        DECOMPILED / "res" / "mipmap-hdpi" / "logo2.png",
        DECOMPILED / "res" / "mipmap-hdpi" / "logo22.png",
        DECOMPILED / "res" / "mipmap-hdpi" / "logo.png",
        DECOMPILED / "assets" / "logo2.png",
        DECOMPILED / "assets" / "logo22.png",
    ]
    for target in targets:
        target.parent.mkdir(parents=True, exist_ok=True)
        logo.save(target, "PNG")


def main() -> None:
    icon = Image.open(ICON_SRC).convert("RGBA")
    avatar = Image.open(AVATAR_SRC).convert("RGBA")
    splash = Image.open(SPLASH_SRC)
    apply_splash(splash)
    apply_icon(icon)
    apply_logo(icon)
    apply_default_avatar(avatar)
    apply_theme_backgrounds()
    apply_bulgarian_flag()
    print("Branding applied.")


if __name__ == "__main__":
    main()
