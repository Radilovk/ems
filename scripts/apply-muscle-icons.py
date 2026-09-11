#!/usr/bin/env python3
"""Standardize and apply muscle group icons to decompiled APK resources."""

from pathlib import Path

from PIL import Image

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
MUSCLE_SRC_DIR = ROOT / "assets" / "muscles"
TARGET_SIZE = (81, 86)

MUSCLE_FILES = (
    "xiaotui.png",
    "xiazhi.png",
    "tui.png",
    "bibu.png",
    "fubu.png",
    "yao.png",
    "bei.png",
    "houxie.png",
    "xiong.png",
    "shoubi.png",
)


def standardize_icon(image: Image.Image, size: tuple[int, int]) -> Image.Image:
    rgba = image.convert("RGBA")
    width, height = rgba.size
    side = min(width, height)
    left = (width - side) // 2
    top = (height - side) // 2
    square = rgba.crop((left, top, left + side, top + side))
    return square.resize(size, Image.Resampling.LANCZOS)


def apply_muscle_icons() -> None:
    target_dir = DECOMPILED / "res" / "mipmap-hdpi"
    target_dir.mkdir(parents=True, exist_ok=True)

    for name in MUSCLE_FILES:
        source = MUSCLE_SRC_DIR / name
        if not source.exists():
            raise FileNotFoundError(f"missing muscle icon source: {source}")

        icon = standardize_icon(Image.open(source), TARGET_SIZE)
        icon.save(target_dir / name, "PNG")
        print(f"applied muscle icon {name} -> {TARGET_SIZE[0]}x{TARGET_SIZE[1]}")


def main() -> None:
    apply_muscle_icons()
    print("Muscle icons applied.")


if __name__ == "__main__":
    main()
