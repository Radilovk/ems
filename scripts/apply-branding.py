#!/usr/bin/env python3
"""Apply branding images to decompiled APK resources."""

from pathlib import Path
from PIL import Image

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
ICON_SRC = ROOT / "assets" / "icon.png"
SPLASH_SRC = ROOT / "assets" / "splash.jpg"

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


def apply_logo(splash: Image.Image) -> None:
    # Crop the X EMS PRO branding from the horizontal splash art.
    w, h = splash.size
    logo = splash.crop((int(w * 0.42), int(h * 0.18), int(w * 0.98), int(h * 0.82)))
    logo = logo.resize((524, 200), Image.Resampling.LANCZOS)

    targets = [
        DECOMPILED / "res" / "mipmap-hdpi" / "logo2.png",
        DECOMPILED / "res" / "mipmap-hdpi" / "logo22.png",
        DECOMPILED / "assets" / "logo2.png",
        DECOMPILED / "assets" / "logo22.png",
    ]
    for target in targets:
        target.parent.mkdir(parents=True, exist_ok=True)
        logo.save(target, "PNG")


def main() -> None:
    icon = Image.open(ICON_SRC).convert("RGBA")
    splash = Image.open(SPLASH_SRC)
    apply_splash(splash)
    apply_icon(icon)
    apply_logo(splash)
    print("Branding applied.")


if __name__ == "__main__":
    main()
