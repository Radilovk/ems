#!/usr/bin/env python3
"""Standardize and apply muscle group icons to decompiled APK resources."""

from pathlib import Path

from PIL import Image

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
MUSCLE_SRC_DIR = ROOT / "assets" / "muscles"
TARGET_SIZE = 86

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

LAYOUT_FILES = (
    "new_train_fragment_layout.xml",
    "train_fragment_layout.xml",
)

OLD_ICON_VIEW = 'android:layout_width="35.0dip" android:layout_height="38.0dip"'
NEW_ICON_VIEW = 'android:layout_width="36.0dip" android:layout_height="36.0dip"'


def standardize_icon(image: Image.Image, size: int) -> Image.Image:
    rgba = image.convert("RGBA")
    width, height = rgba.size
    if width != height:
        side = min(width, height)
        left = (width - side) // 2
        top = (height - side) // 2
        rgba = rgba.crop((left, top, left + side, top + side))
    return rgba.resize((size, size), Image.Resampling.LANCZOS)


def apply_muscle_icons() -> None:
    target_dir = DECOMPILED / "res" / "mipmap-hdpi"
    target_dir.mkdir(parents=True, exist_ok=True)

    for name in MUSCLE_FILES:
        source = MUSCLE_SRC_DIR / name
        if not source.exists():
            raise FileNotFoundError(f"missing muscle icon source: {source}")

        icon = standardize_icon(Image.open(source), TARGET_SIZE)
        icon.save(target_dir / name, "PNG")
        print(f"applied muscle icon {name} -> {TARGET_SIZE}x{TARGET_SIZE}")


def patch_muscle_icon_layouts() -> None:
    layout_dir = DECOMPILED / "res" / "layout"
    for name in LAYOUT_FILES:
        path = layout_dir / name
        if not path.exists():
            continue
        text = path.read_text(encoding="utf-8")
        updated = text.replace(OLD_ICON_VIEW, NEW_ICON_VIEW)
        if updated != text:
            path.write_text(updated, encoding="utf-8")
            print(f"patched square muscle icon views in {name}")


def main() -> None:
    apply_muscle_icons()
    patch_muscle_icon_layouts()
    print("Muscle icons applied.")


if __name__ == "__main__":
    main()
