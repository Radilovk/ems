#!/usr/bin/env python3
"""Wrap avatar cluster in a square proportional stage (AvatarStageLayout)."""

from __future__ import annotations

import re
import shutil
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
SMALI_SRC = ROOT / "branding" / "smali" / "widget" / "AvatarStageLayout.smali"
SMALI_DEST = (
    DECOMPILED
    / "smali_classes2"
    / "com"
    / "isaigu"
    / "gymapp"
    / "widget"
    / "AvatarStageLayout.smali"
)

LAYOUT_NAMES = ("new_user_train_control_item_layout.xml", "user_train_control_item_layout.xml")

STAGE_OPEN = (
    '<com.isaigu.gymapp.widget.AvatarStageLayout '
    'android:layout_width="wrap_content" android:layout_height="wrap_content" '
    'android:layout_centerInParent="true">'
)

STAGE_CLOSE = "</com.isaigu.gymapp.widget.AvatarStageLayout>"

AVATAR_COLUMN = re.compile(
    r'(<RelativeLayout android:layout_width="0\.0dip" android:layout_height="fill_parent" '
    r'android:layout_weight="0\.6">)([\s\S]*?)(</RelativeLayout>)'
)


def install_smali() -> None:
    if not SMALI_SRC.is_file():
        raise FileNotFoundError(
            f"{SMALI_SRC} missing — run scripts/compile-avatar-stage-java.sh with Android SDK"
        )
    SMALI_DEST.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(SMALI_SRC, SMALI_DEST)
    print(f"installed {SMALI_DEST.relative_to(ROOT)}")


def wrap_avatar_column(text: str) -> tuple[str, bool]:
    if "AvatarStageLayout" in text:
        return text, False
    match = AVATAR_COLUMN.search(text)
    if not match or "@id/circleSeekBar" not in match.group(2):
        return text, False
    inner = match.group(2).strip()
    if not inner:
        return text, False
    wrapped = f"{match.group(1)}\n            {STAGE_OPEN}\n            {inner}\n            {STAGE_CLOSE}\n        {match.group(3)}"
    return text[: match.start()] + wrapped + text[match.end() :], True


def patch_layouts() -> None:
    for layout_dir in ("layout", "layout-night"):
        for name in LAYOUT_NAMES:
            path = DECOMPILED / "res" / layout_dir / name
            if not path.is_file():
                continue
            text = path.read_text(encoding="utf-8")
            text, changed = wrap_avatar_column(text)
            if changed:
                path.write_text(text, encoding="utf-8")
                print(f"patched {path.relative_to(ROOT)}: proportional avatar stage")
            else:
                print(f"{path.relative_to(ROOT)}: avatar stage already wrapped")


def main() -> None:
    install_smali()
    patch_layouts()
    print("Avatar proportional stage applied (170dp reference, scales to column).")


if __name__ == "__main__":
    main()
