#!/usr/bin/env python3
"""Apply canonical train-screen layouts from branding/design/ at end of build.

Edit XML under branding/design/ to change train row and fragment layout without
touching patch scripts. Runs after incremental layout patches; BETA music player
still patches new_train_fragment_layout.xml afterward when enabled.
"""

from __future__ import annotations

import importlib.util
import shutil
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
DESIGN_DIR = ROOT / "branding" / "design"
LAYOUT_DIR = DECOMPILED / "res" / "layout"
LAYOUT_NIGHT_DIR = DECOMPILED / "res" / "layout-night"

TRAIN_LAYOUTS = (
    "new_user_train_control_item_layout.xml",
    "user_train_control_item_layout.xml",
    "new_train_fragment_layout.xml",
    "train_fragment_layout.xml",
)


def _load_ui_theme_module():
    path = ROOT / "scripts" / "apply-ui-theme.py"
    spec = importlib.util.spec_from_file_location("apply_ui_theme", path)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"cannot load {path}")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def copy_design_layouts() -> int:
    if not DESIGN_DIR.is_dir():
        print(f"branding/design/ missing — skipping train layout branding")
        return 0

    copied = 0
    LAYOUT_DIR.mkdir(parents=True, exist_ok=True)
    for name in TRAIN_LAYOUTS:
        src = DESIGN_DIR / name
        if not src.is_file():
            print(f"warn: missing branding/design/{name}")
            continue
        dest = LAYOUT_DIR / name
        shutil.copy2(src, dest)
        copied += 1
        print(f"copied branding/design/{name} -> res/layout/{name}")
    return copied


def refresh_train_layout_night(ui_theme) -> None:
    LAYOUT_NIGHT_DIR.mkdir(parents=True, exist_ok=True)
    sources = ui_theme.LAYOUT_NIGHT_SOURCES
    for name in TRAIN_LAYOUTS:
        replacements = sources.get(name)
        if not replacements:
            continue
        src = LAYOUT_DIR / name
        if not src.is_file():
            continue
        text = src.read_text(encoding="utf-8")
        for old, new in replacements:
            if old not in text:
                continue
            if '@id/ma"' in old and "ui_ma_text_size" in text:
                continue
            text = text.replace(old, new)
        dest = LAYOUT_NIGHT_DIR / name
        dest.write_text(text, encoding="utf-8")
        print(f"refreshed layout-night/{name}")


def main() -> None:
    if not DECOMPILED.is_dir():
        print("Decompiled APK not found; run build-apk.sh first.", file=sys.stderr)
        sys.exit(1)

    count = copy_design_layouts()
    if count == 0:
        return

    ui_theme = _load_ui_theme_module()
    refresh_train_layout_night(ui_theme)
    print(f"Branding train layouts applied ({count} files).")


if __name__ == "__main__":
    main()
