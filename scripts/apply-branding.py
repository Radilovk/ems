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


def apply_default_avatar(avatar: Image.Image) -> None:
    for name in ("icon_sample.png", "icon_sample2.png", "icon_sample3.png"):
        target = DECOMPILED / "res" / "mipmap-hdpi" / name
        if target.parent.exists():
            avatar.save(target, "PNG")


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
    apply_bulgarian_flag()
    print("Branding applied.")


if __name__ == "__main__":
    main()
